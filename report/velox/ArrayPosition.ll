inline.NumInlined: 10110
inline.NumDeleted: 2827
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.sw = and i64 %i.sv, %i.sp
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %214, i32 noundef %i.sm, i64 noundef %i.sw)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %.not32.i.i.i.i.i.i.i = icmp eq i32 %i.se, %i.sj
  br i1 %.not32.i.i.i.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sx = sdiv i32 %i.se, 64
  %i.sy = sub nsw i32 %i.sj, %i.se                ; 2 uses
  %i.sz = zext nneg i32 %i.sy to i64
  %notmask.i.i35.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sz
  %i.ta = xor i64 %notmask.i.i35.i.i.i.i.i.i.i, -1
  %i.tb = sub nsw i32 64, %i.sy
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = shl i64 %i.ta, %i.tc
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %214, i32 noundef %i.sx, i64 noundef %i.td)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.te = add nsw i32 %i.sj, 64                   ; 2 uses
  %.not3354.i.i.i.i.i.i.i = icmp sgt i32 %i.te, %i.sk
  br i1 %.not3354.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i28.i

.lr.ph.i.i.i.i.i.i28.i:                           ; preds = %bb.bv
  %i.tf = getelementptr inbounds nuw i8, ptr %208, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %209, i64 16 ; 2 uses
  br label %bb.bw

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.bv
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.sg, %i.sk
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.ef

bb.bw:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i28.i
  %i.th = phi i32 [ %i.te, %.lr.ph.i.i.i.i.i.i28.i ], [ %i.agi, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.055.i.i.i.i.i.i.i = phi i32 [ %i.sj, %.lr.ph.i.i.i.i.i.i28.i ], [ %i.th, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ti = sdiv i32 %.055.i.i.i.i.i.i.i, 64        ; 3 uses
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.tj
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.tl, label %.lr.ph.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.bx
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bw
  %i.tm = shl nsw i32 %i.ti, 6
  br label %bb.do

bb.bx:                                            ; preds = %bb.bw
  %i.tn = shl nsw i32 %i.ti, 6                    ; 2 uses
  %i.to = add i32 %i.tn, 64
  %i.tp = sext i32 %i.to to i64
  %.0.off.i.i.i.i.i.i.i = add i32 %.055.i.i.i.i.i.i.i, 127
  %.not78.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i, 64
  br i1 %.not78.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E1_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph77.i.i.i.i.i.i.i.i

.lr.ph77.i.i.i.i.i.i.i.i:                         ; preds = %bb.bx
  %i.tq = sext i32 %i.tn to i64
  br label %bb.by

bb.by:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph77.i.i.i.i.i.i.i.i
  %.072.i.i.i.i.i.i.i.i = phi i64 [ %i.tq, %.lr.ph77.i.i.i.i.i.i.i.i ], [ %i.aev, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.tr = load ptr, ptr %218, align 8, !tbaa !2895, !nonnull !74, !align !275
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !329
  %i.tt = load ptr, ptr %.sroa.446.0..sroa_idx.i, align 8, !tbaa !2897, !nonnull !74, !align !275
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !329 ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %.072.i.i.i.i.i.i.i.i
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.ts, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !3  ; 3 uses
  %i.ua = load ptr, ptr %.sroa.547.0..sroa_idx.i, align 8, !tbaa !2898, !nonnull !74, !align !275 ; 5 uses
  %i.ub = trunc i64 %.072.i.i.i.i.i.i.i.i to i32  ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !487
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 58
  %i.uf = load i8, ptr %i.ue, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ua, i64 59
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !339, !range !73, !noundef !74
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ua, i64 64
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.um = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i = shl i64 %.072.i.i.i.i.i.i.i.i, 32
  %i.uo = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i, 30
  %i.up = getelementptr inbounds i8, ptr %i.un, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.by
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.uq, %bb.cb ], [ %i.ul, %bb.ca ], [ %i.ub, %bb.by ]
  %i.ur = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.us = lshr i64 %i.ur, 6
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.us
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !137
  %i.uv = and i64 %i.ur, 63
  %i.uw = lshr i64 %i.uu, %i.uv                   ; 4 uses
  %i.ux = load ptr, ptr %.sroa.648.0..sroa_idx.i, align 8, !tbaa !2899, !nonnull !74, !align !275 ; 5 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !487
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 58
  %i.vb = load i8, ptr %i.va, align 2, !tbaa !338, !range !73, !noundef !74
  %i.vc = trunc nuw i8 %i.vb to i1
  br i1 %i.vc, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 59
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !339, !range !73, !noundef !74
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ux, i64 64
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !331
  %sext37.i.i.i.i.i.i.i.i.i = shl i64 %.072.i.i.i.i.i.i.i.i, 32
  %i.vk = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i, 30
  %i.vl = getelementptr inbounds i8, ptr %i.vj, i64 %i.vk
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ce, %bb.cd, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i = phi i32 [ %i.vm, %bb.ce ], [ %i.vh, %bb.cd ], [ %i.ub, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.vn = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i to i64
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.uz, i64 %i.vn
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cf, label %bb.ci, !prof !48

bb.cf:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %208) #35, !noalias !2900
  store i64 0, ptr %208, align 16, !tbaa !30, !noalias !2900
  store i32 0, ptr %i.tf, align 16, !tbaa !30, !alias.scope !2903, !noalias !2900
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %209, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %208)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cy

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #35, !noalias !2900
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E1_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %209, ptr nonnull @.str.178) #38
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

bb.ch:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.vq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.vr = load ptr, ptr %209, align 8, !tbaa !49  ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.tg
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch
  %i.vt = load i64, ptr %i.tg, align 8, !tbaa !30
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #35
  br label %.body.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.vv = load ptr, ptr %.sroa.749.0..sroa_idx.i, align 8, !tbaa !2906, !nonnull !74, !align !275
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !329
  %i.vx = load ptr, ptr %.sroa.850.0..sroa_idx.i, align 8, !tbaa !2907, !nonnull !74, !align !497 ; 2 uses
  %i.vy = load ptr, ptr %.sroa.951.0..sroa_idx.i, align 8, !tbaa !2908, !nonnull !74, !align !497 ; 2 uses
  %i.vz = load ptr, ptr %.sroa.1052.0..sroa_idx.i, align 8, !tbaa !2909, !nonnull !74, !align !497
  %sext38.i.i.i.i.i.i.i.i.i = shl i64 %.072.i.i.i.i.i.i.i.i, 32
  %i.wa = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !3
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !3  ; 2 uses
  %i.wg = icmp sgt i64 %i.vp, 0                   ; 3 uses
  %i.wh = add nsw i32 %i.wf, -1
  %i.wi = select i1 %i.wg, i32 0, i32 %i.wh
  store i32 %i.wi, ptr %i.vx, align 4, !tbaa !3
  %i.wj = select i1 %i.wg, i32 %i.wf, i32 -1
  store i32 %i.wj, ptr %i.vy, align 4, !tbaa !3
  %i.wk = select i1 %i.wg, i32 1, i32 -1          ; 10 uses
  store i32 %i.wk, ptr %i.vz, align 4, !tbaa !3
  %i.wl = call noundef i64 @llvm.abs.i64(i64 %i.vp, i1 true) ; 6 uses
  %i.wm = load i32, ptr %i.vx, align 4, !tbaa !3  ; 9 uses
  %i.wn = load i32, ptr %i.vy, align 4, !tbaa !3  ; 13 uses
  %.not1641.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wm, %i.wn
  br i1 %.not1641.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ci
  %i.wo = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !2910, !nonnull !74, !align !275 ; 7 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wq, null
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 59 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 8 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wo, i64 16 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 58
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 64 ; 3 uses
  %i.ww = load i8, ptr %i.wu, align 2, !tbaa !338, !range !73, !noundef !74
  %i.wx = trunc nuw i8 %i.ww to i1                ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.wy = load ptr, ptr %i.wt, align 8, !tbaa !487
  %i.wz = sext i32 %i.wm to i64
  %i.xa = sext i32 %i.wk to i64
  %i.xb = sext i32 %i.tz to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i
  %indvars.iv108.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next109.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i ], [ %i.wz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i ], [ %i.wl, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xc = add nsw i64 %indvars.iv108.i.i.i.i.i.i.i.i.i, %i.xb ; 2 uses
  %i.xd = trunc nsw i64 %i.xc to i32
  br i1 %i.wx, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i
  %i.xe = load i8, ptr %i.wr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.xg = load ptr, ptr %i.ws, align 8, !tbaa !331
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.xc
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.xj = load i32, ptr %i.wv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.cl, %bb.ck, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i = phi i32 [ %i.xi, %bb.ck ], [ %i.xj, %bb.cl ], [ %i.xd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i ]
  %i.xk = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.xl = lshr i64 %i.xk, 6
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %i.xl
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !137
  %i.xo = and i64 %i.xk, 63
  %i.xp = lshr i64 %i.xn, %i.xo
  %i.xq = xor i64 %i.xp, %i.uw
  %i.xr = and i64 %i.xq, 1
  %i.xs = icmp eq i64 %i.xr, 0
  br i1 %i.xs, label %bb.cm, label %.critedge.us.i.i.i.i.i.i.i.i.i

bb.cm:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.xt = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.xu = icmp eq i64 %i.xt, 0
  br i1 %i.xu, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i

.critedge.us.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.cm, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.xt, %bb.cm ]
  %indvars.iv.next109.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv108.i.i.i.i.i.i.i.i.i, %i.xa ; 2 uses
  %i.xv = trunc nsw i64 %indvars.iv.next109.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %i.xv
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2911

.lr.ph.split.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wo, i64 57
  %i.xx = load i8, ptr %i.xw, align 1, !range !73
  %i.xy = trunc nuw i8 %i.xx to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.wx, i1 true, i1 %i.xy
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i
  %i.xz = sext i32 %i.wm to i64
  %i.ya = sext i32 %i.wk to i64
  %i.yb = sext i32 %i.tz to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv105.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xz, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next106.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wl, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.1.us51.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yc = add nsw i64 %indvars.iv105.i.i.i.i.i.i.i.i.i, %i.yb ; 4 uses
  %i.yd = lshr i64 %i.yc, 6
  %i.ye = and i64 %i.yd, 67108863
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.ye
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !137
  %i.yh = and i64 %i.yc, 63
  %i.yi = shl nuw i64 1, %i.yh
  %i.yj = and i64 %i.yi, %i.yg
  %.not.i.i.us.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.yj, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i, label %.critedge.us50.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i
  %i.yk = trunc nsw i64 %i.yc to i32
  %i.yl = load ptr, ptr %i.wt, align 8, !tbaa !487
  br i1 %i.wx, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i
  %i.ym = load i8, ptr %i.wr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.yn = trunc nuw i8 %i.ym to i1
  br i1 %i.yn, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.yo = load ptr, ptr %i.ws, align 8, !tbaa !331
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yo, i64 %i.yc
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.yr = load i32, ptr %i.wv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %bb.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yq, %bb.co ], [ %i.yr, %bb.cp ], [ %i.yk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i ]
  %i.ys = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.yt = lshr i64 %i.ys, 6
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %i.yt
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !137
  %i.yw = and i64 %i.ys, 63
  %i.yx = lshr i64 %i.yv, %i.yw
  %i.yy = xor i64 %i.yx, %i.uw
  %i.yz = and i64 %i.yy, 1
  %i.za = icmp eq i64 %i.yz, 0
  br i1 %i.za, label %bb.cq, label %.critedge.us50.i.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.zb = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.zc = icmp eq i64 %i.zb, 0
  br i1 %i.zc, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us50.i.i.i.i.i.i.i.i.i

.critedge.us50.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cq, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i
  %.1.us51.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.zb, %bb.cq ], [ %.03542.us46.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next106.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv105.i.i.i.i.i.i.i.i.i, %i.ya ; 2 uses
  %i.zd = trunc nsw i64 %indvars.iv.next106.i.i.i.i.i.i.i.i.i to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %i.zd
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2911

.lr.ph.split.split.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i
  %i.ze = load i8, ptr %i.wr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.zf = trunc nuw i8 %i.ze to i1
  br i1 %i.zf, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i
  %i.zg = load i64, ptr %i.wq, align 8, !tbaa !137
  %i.zh = and i64 %i.zg, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.zh, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i
  %i.zi = load ptr, ptr %i.wt, align 8, !tbaa !487
  %.0.i.i19.us61.i.i.i.i.i.i.i.i.i = load i32, ptr %i.wv, align 8, !tbaa !3
  %i.zj = sext i32 %.0.i.i19.us61.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.zk = lshr i64 %i.zj, 6
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %i.zk
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !137
  %i.zn = and i64 %i.zj, 63
  %i.zo = lshr i64 %i.zm, %i.zn
  %i.zp = xor i64 %i.zo, %i.uw
  %i.zq = and i64 %i.zp, 1
  %i.zr = icmp eq i64 %i.zq, 0
  br i1 %i.zr, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i
  %i.zs = zext i32 %i.wk to i64
  %i.zt = zext i32 %i.wm to i64
  %i.zu = add nsw i64 %i.wl, -1
  %i.zv = mul i64 %i.zu, %i.zs
  %i.zw = add i64 %i.zv, %i.zt                    ; 3 uses
  %i.zx = add nsw i64 %i.wl, -1                   ; 5 uses
  %i.zy = icmp eq i64 %i.zx, 0
  br i1 %i.zy, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph

.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph:        ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check5853 = icmp samesign ult i64 %i.wl, 33
  br i1 %min.iters.check5853, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader, label %vector.ph5854

vector.ph5854:                                    ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5856 = and i64 %i.zx, -32                 ; 3 uses
  %i.zz = and i64 %i.zx, 31
  %i.aaa = trunc i64 %n.vec5856 to i32
  %i.aab = mul i32 %i.wk, %i.aaa
  %i.aac = add i32 %i.wm, %i.aab
  %broadcast.splatinsert5857 = insertelement <32 x i32> poison, i32 %i.wk, i64 0
  %broadcast.splat5858 = shufflevector <32 x i32> %broadcast.splatinsert5857, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5859 = insertelement <32 x i32> poison, i32 %i.wn, i64 0
  %broadcast.splat5860 = shufflevector <32 x i32> %broadcast.splatinsert5859, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5861 = insertelement <32 x i32> poison, i32 %i.wm, i64 0
  %broadcast.splat5862 = shufflevector <32 x i32> %broadcast.splatinsert5861, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5863 = insertelement <32 x i32> poison, i32 %i.wk, i64 0
  %broadcast.splat5864 = shufflevector <32 x i32> %broadcast.splatinsert5863, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.aad = mul <32 x i32> %broadcast.splat5864, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5865 = add <32 x i32> %broadcast.splat5862, %i.aad
  %i.aae = shl nsw i32 %i.wk, 5
  %broadcast.splatinsert5866 = insertelement <32 x i32> poison, i32 %i.aae, i64 0
  %broadcast.splat5867 = shufflevector <32 x i32> %broadcast.splatinsert5866, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5868

vector.body5868:                                  ; preds = %vector.body.interim5873, %vector.ph5854
  %index5869 = phi i64 [ 0, %vector.ph5854 ], [ %index.next5871, %vector.body.interim5873 ]
  %vec.ind5870 = phi <32 x i32> [ %induction5865, %vector.ph5854 ], [ %vec.ind.next5872, %vector.body.interim5873 ] ; 2 uses
  %i.aaf = add <32 x i32> %vec.ind5870, %broadcast.splat5858
  %i.aag = icmp eq <32 x i32> %broadcast.splat5860, %i.aaf
  %i.aah = freeze <32 x i1> %i.aag
  %i.aai = bitcast <32 x i1> %i.aah to i32
  %.not5894 = icmp eq i32 %i.aai, 0
  br i1 %.not5894, label %vector.body.interim5873, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i

vector.body.interim5873:                          ; preds = %vector.body5868
  %vec.ind.next5872 = add <32 x i32> %vec.ind5870, %broadcast.splat5867
  %index.next5871 = add nuw i64 %index5869, 32    ; 2 uses
  %i.aaj = icmp eq i64 %index.next5871, %n.vec5856
  br i1 %i.aaj, label %middle.block5874, label %vector.body5868, !llvm.loop !2912

middle.block5874:                                 ; preds = %vector.body.interim5873
  %cmp.n5875 = icmp eq i64 %i.zx, %n.vec5856
  br i1 %cmp.n5875, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader

.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader:    ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph, %middle.block5874
  %.ph = phi i64 [ %i.zx, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.zz, %middle.block5874 ]
  %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434.ph = phi i32 [ %i.wm, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.aac, %middle.block5874 ]
  br label %.critedge.us62.i.us.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i: ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i
  %i.aak = add nsw i64 %i.aam, -1                 ; 2 uses
  %i.aal = icmp eq i64 %i.aak, 0
  br i1 %i.aal, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.us62.i.us.i.i.i.i.i.i.i.i, !llvm.loop !2913

.critedge.us62.i.us.i.i.i.i.i.i.i.i:              ; preds = %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i
  %i.aam = phi i64 [ %i.aak, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i ], [ %.ph, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434 = phi i32 [ %indvars.iv.next100.i.us.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i ], [ %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434.ph, %.critedge.us62.i.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next100.i.us.i.i.i.i.i.i.i.i = add i32 %indvars.iv99.i.us.i.i.i.i.i.i.i.i5434, %i.wk ; 2 uses
  %.not16.us64.i.us.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %indvars.iv.next100.i.us.i.i.i.i.i.i.i.i
  br i1 %.not16.us64.i.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i, !llvm.loop !2911

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i
  %i.aan = load ptr, ptr %i.ws, align 8, !tbaa !331
  %i.aao = sext i32 %i.wm to i64
  %i.aap = sext i32 %i.wk to i64
  %i.aaq = sext i32 %i.tz to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.aan, i64 %i.aaq
  br label %bb.cr

bb.cr:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aao, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wl, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i
  %i.aar = load i32, ptr %gep.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.aas = zext i32 %i.aar to i64                 ; 2 uses
  %i.aat = lshr i64 %i.aas, 6
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.aat
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !137
  %i.aaw = and i64 %i.aas, 63
  %i.aax = shl nuw i64 1, %i.aaw
  %i.aay = and i64 %i.aax, %i.aav
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aay, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr
  %i.aaz = load ptr, ptr %i.wt, align 8, !tbaa !487
  %i.aba = sext i32 %i.aar to i64                 ; 2 uses
  %i.abb = lshr i64 %i.aba, 6
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abb
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !137
  %i.abe = and i64 %i.aba, 63
  %i.abf = lshr i64 %i.abd, %i.abe
  %i.abg = xor i64 %i.abf, %i.uw
  %i.abh = and i64 %i.abg, 1
  %i.abi = icmp eq i64 %i.abh, 0
  br i1 %i.abi, label %bb.cs, label %.critedge.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.abj = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.abk = icmp eq i64 %i.abj, 0
  br i1 %i.abk, label %.split.us.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cs, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i, %bb.cq, %bb.cm, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i, %middle.block5874
  %.us-phi.in.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv105.i.i.i.i.i.i.i.i.i, %bb.cq ], [ %i.zw, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.preheader.i.i.i.i.i.i.i.i ], [ %i.zw, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.us60.i.us.i.i.i.i.i.i.i.i ], [ %i.zw, %middle.block5874 ], [ %indvars.iv108.i.i.i.i.i.i.i.i.i, %bb.cm ], [ %indvars.iv.i.i.i.i.i.i.i.i.i, %bb.cs ] ; 2 uses
  %.us-phi.i.i.i.i.i.i.i.i.i = trunc i64 %.us-phi.in.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.abl = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !2914, !nonnull !74, !align !275 ; 5 uses
  %i.abm = shl i64 %.us-phi.in.i.i.i.i.i.i.i.i.i, 32
  %sext124.i.i.i.i.i.i.i.i.i = add i64 %i.abm, 4294967296
  %i.abn = ashr exact i64 %sext124.i.i.i.i.i.i.i.i.i, 32
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 144 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !341 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, null
  br i1 %i.abq, label %bb.ct, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i
  %i.abr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.abl)
          to label %.noexc19.i.i.i.i.i.i.i.i unwind label %bb.cy ; 0 uses

.noexc19.i.i.i.i.i.i.i.i:                         ; preds = %bb.ct
  %.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.abo, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i
  %i.abs = phi ptr [ %i.abp, %.split.us.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i.i.i.i.i ]
  %i.abt = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.wa
  store i64 %i.abn, ptr %i.abt, align 8, !tbaa !137
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abl, i64 32 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abv, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abl, i64 56
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.abl, i32 noundef %i.abx, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i unwind label %bb.cy

.noexc20.i.i.i.i.i.i.i.i:                         ; preds = %bb.cu
  %i.aby = load ptr, ptr %i.abu, align 8, !tbaa !362 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 44
  %i.aca = load i8, ptr %i.abz, align 4, !tbaa !363
  %i.acb = and i8 %i.aca, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.acb, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i.i.i.i.i.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 16
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !368
  %i.ace = lshr i64 %.072.i.i.i.i.i.i.i.i, 3
  %i.acf = and i64 %i.ace, 536870911
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acf ; 2 uses
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !30
  %i.aci = trunc i64 %.072.i.i.i.i.i.i.i.i to i8
  %i.acj = and i8 %i.aci, 7
  %i.ack = shl nuw i8 1, %i.acj
  %i.acl = or i8 %i.ach, %i.ack
  store i8 %i.acl, ptr %i.acg, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cs, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.cr
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.abj, %bb.cs ], [ %.03542.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, %i.aap ; 2 uses
  %i.acm = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i to i32
  %.not16.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.wn, %i.acm
  br i1 %.not16.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i, label %bb.cr, !llvm.loop !2911

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i.i.i, %vector.body5868, %.critedge.us62.i.us.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i, %bb.ci
  %.040.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.us-phi.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.wm, %bb.ci ], [ %i.wn, %.critedge.us50.i.i.i.i.i.i.i.i.i ], [ %i.wn, %.lr.ph.split.split.split.us.split.split.i.i.i.i.i.i.i.i.i ], [ %i.wn, %vector.body5868 ], [ %i.wn, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.wn, %.critedge.us62.i.us.i.i.i.i.i.i.i.i ], [ %i.wn, %.critedge.us.i.i.i.i.i.i.i.i.i ], [ %i.wn, %.critedge.i.i.i.i.i.i.i.i.i ]
  %i.acn = load ptr, ptr %.sroa.951.0..sroa_idx.i, align 8, !tbaa !2908, !nonnull !74, !align !497
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !3
  %i.acp = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i, %i.aco
  br i1 %i.acp, label %bb.cv, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i
  %i.acq = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !2914, !nonnull !74, !align !275 ; 5 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 144 ; 2 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !341 ; 2 uses
  %i.act = icmp eq ptr %i.acs, null
  br i1 %i.act, label %bb.cw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.acu = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.acq)
          to label %.noexc22.i.i.i.i.i.i.i.i unwind label %bb.cy ; 0 uses

.noexc22.i.i.i.i.i.i.i.i:                         ; preds = %bb.cw
  %.pre.i26.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.acr, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i, %bb.cv
  %i.acv = phi ptr [ %i.acs, %bb.cv ], [ %.pre.i26.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i ]
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.acv, i64 %i.wa
  store i64 0, ptr %i.acw, align 8, !tbaa !137
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 32 ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acy, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE0ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E1_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acq, i64 56
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.acq, i32 noundef %i.ada, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i unwind label %bb.cy

.noexc23.i.i.i.i.i.i.i.i:                         ; preds = %bb.cx
  %i.adb = load ptr, ptr %i.acx, align 8, !tbaa !362 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 44
  %i.add = load i8, ptr %i.adc, align 4, !tbaa !363
  %i.ade = and i8 %i.add, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ade, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i, !prof !69

.invoke.i.i.i.i.i.i.i.i:                          ; preds = %.noexc23.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i unwind label %bb.cy

.cont.i.i.i.i.i.i.i.i:                            ; preds = %.invoke.i.i.i.i.i.i.i.i
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.avd = sub nsw i32 64, %i.ava
  %i.ave = zext nneg i32 %i.avd to i64
  %i.avf = shl i64 %i.avc, %i.ave
  %i.avg = and i64 %i.avf, %i.auz
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %197, i32 noundef %i.auw, i64 noundef %i.avg)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.gy:                                            ; preds = %bb.gw
  %.not32.i.i.i.i.i.i.i16 = icmp eq i32 %i.auo, %i.aut
  br i1 %.not32.i.i.i.i.i.i.i16, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.avh = sdiv i32 %i.auo, 64
  %i.avi = sub nsw i32 %i.aut, %i.auo             ; 2 uses
  %i.avj = zext nneg i32 %i.avi to i64
  %notmask.i.i35.i.i.i.i.i.i.i17 = shl nsw i64 -1, %i.avj
  %i.avk = xor i64 %notmask.i.i35.i.i.i.i.i.i.i17, -1
  %i.avl = sub nsw i32 64, %i.avi
  %i.avm = zext nneg i32 %i.avl to i64
  %i.avn = shl i64 %i.avk, %i.avm
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %197, i32 noundef %i.avh, i64 noundef %i.avn)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.avo = add nsw i32 %i.aut, 64                 ; 2 uses
  %.not3355.i.i.i.i.i.i.i = icmp sgt i32 %i.avo, %i.auu
  br i1 %.not3355.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i19, label %.lr.ph.i.i.i.i.i.i29.i

.lr.ph.i.i.i.i.i.i29.i:                           ; preds = %bb.ha
  %i.avp = getelementptr inbounds nuw i8, ptr %191, i64 16
  %i.avq = getelementptr inbounds nuw i8, ptr %192, i64 16 ; 2 uses
  br label %bb.hb

._crit_edge.i.i.i.i.i.i.i19:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.ha
  %.not34.i.i.i.i.i.i.i20 = icmp eq i32 %i.auq, %i.auu
  br i1 %.not34.i.i.i.i.i.i.i20, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.ji

bb.hb:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i
  %i.avr = phi i32 [ %i.avo, %.lr.ph.i.i.i.i.i.i29.i ], [ %i.bje, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i = phi i32 [ %i.aut, %.lr.ph.i.i.i.i.i.i29.i ], [ %i.avr, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.avs = sdiv i32 %.056.i.i.i.i.i.i.i, 64       ; 3 uses
  %i.avt = sext i32 %i.avs to i64
  %i.avu = getelementptr inbounds [8 x i8], ptr %i.aum, i64 %i.avt
  %i.avv = load i64, ptr %i.avu, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.avv, label %.lr.ph.i.i.i.i.i.i.i.i112 [
    i64 -1, label %bb.hc
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i112:                        ; preds = %bb.hb
  %i.avw = shl nsw i32 %i.avs, 6
  br label %bb.ir

bb.hc:                                            ; preds = %bb.hb
  %i.avx = shl nsw i32 %i.avs, 6                  ; 2 uses
  %i.avy = add i32 %i.avx, 64
  %i.avz = sext i32 %i.avy to i64
  %.0.off.i.i.i.i.i.i.i22 = add i32 %.056.i.i.i.i.i.i.i, 127
  %.not78.i.i.i.i.i.i.i.i23 = icmp ult i32 %.0.off.i.i.i.i.i.i.i22, 64
  br i1 %.not78.i.i.i.i.i.i.i.i23, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph77.i.i.i.i.i.i.i.i24

.lr.ph77.i.i.i.i.i.i.i.i24:                       ; preds = %bb.hc
  %i.awa = sext i32 %i.avx to i64
  br label %bb.hd

bb.hd:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph77.i.i.i.i.i.i.i.i24
  %.074.i.i.i.i.i.i.i.i = phi i64 [ %i.awa, %.lr.ph77.i.i.i.i.i.i.i.i24 ], [ %i.bhr, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.awb = load ptr, ptr %201, align 8, !tbaa !2931, !nonnull !74, !align !275
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !329
  %i.awd = load ptr, ptr %.sroa.447.0..sroa_idx.i, align 8, !tbaa !2933, !nonnull !74, !align !275
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !329 ; 2 uses
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.awe, i64 %.074.i.i.i.i.i.i.i.i
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !3
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds [4 x i8], ptr %i.awc, i64 %i.awh
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !3 ; 4 uses
  %i.awk = load ptr, ptr %.sroa.548.0..sroa_idx.i, align 8, !tbaa !2934, !nonnull !74, !align !275 ; 5 uses
  %i.awl = trunc i64 %.074.i.i.i.i.i.i.i.i to i32 ; 4 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !487
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awk, i64 58
  %i.awp = load i8, ptr %i.awo, align 2, !tbaa !338, !range !73, !noundef !74
  %i.awq = trunc nuw i8 %i.awp to i1
  br i1 %i.awq, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awk, i64 59
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.awt = trunc nuw i8 %i.aws to i1
  br i1 %i.awt, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awk, i64 64
  %i.awv = load i32, ptr %i.awu, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i

bb.hg:                                            ; preds = %bb.he
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awk, i64 8
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i25 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.awy = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i25, 30
  %i.awz = getelementptr inbounds i8, ptr %i.awx, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.hg, %bb.hf, %bb.hd
  %.0.i.i.i.i.i.i.i.i.i.i.i26 = phi i32 [ %i.axa, %bb.hg ], [ %i.awv, %bb.hf ], [ %i.awl, %bb.hd ]
  %i.axb = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i26 to i64
  %i.axc = getelementptr inbounds [4 x i8], ptr %i.awn, i64 %i.axb
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !3 ; 6 uses
  %i.axe = load ptr, ptr %.sroa.649.0..sroa_idx.i, align 8, !tbaa !2935, !nonnull !74, !align !275 ; 5 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !487
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axe, i64 58
  %i.axi = load i8, ptr %i.axh, align 2, !tbaa !338, !range !73, !noundef !74
  %i.axj = trunc nuw i8 %i.axi to i1
  br i1 %i.axj, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28, label %bb.hh

bb.hh:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axe, i64 59
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !339, !range !73, !noundef !74
  %i.axm = trunc nuw i8 %i.axl to i1
  br i1 %i.axm, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axe, i64 64
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28

bb.hj:                                            ; preds = %bb.hh
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !331
  %sext37.i.i.i.i.i.i.i.i.i27 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.axr = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i27, 30
  %i.axs = getelementptr inbounds i8, ptr %i.axq, i64 %i.axr
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28: ; preds = %bb.hj, %bb.hi, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i29 = phi i32 [ %i.axt, %bb.hj ], [ %i.axo, %bb.hi ], [ %i.awl, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.axu = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i29 to i64
  %i.axv = getelementptr inbounds [8 x i8], ptr %i.axg, i64 %i.axu
  %i.axw = load i64, ptr %i.axv, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i30 = icmp eq i64 %i.axw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i30, label %bb.hk, label %bb.hn, !prof !48

bb.hk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #35, !noalias !2936
  store i64 0, ptr %191, align 16, !tbaa !30, !noalias !2936
  store i32 0, ptr %i.avp, align 16, !tbaa !30, !alias.scope !2939, !noalias !2936
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %192, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %191)
          to label %.noexc.i.i.i.i.i.i.i.i108 unwind label %bb.ib

.noexc.i.i.i.i.i.i.i.i108:                        ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #35, !noalias !2936
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %192, ptr nonnull @.str.178) #38
          to label %bb.hl unwind label %bb.hm

bb.hl:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i108
  unreachable

bb.hm:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i108
  %i.axx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.axy = load ptr, ptr %192, align 8, !tbaa !49 ; 2 uses
  %i.axz = icmp eq ptr %i.axy, %i.avq
  br i1 %i.axz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109: ; preds = %bb.hm
  %i.aya = load i64, ptr %i.avq, align 8, !tbaa !30
  %i.ayb = add i64 %i.aya, 1
  call void @_ZdlPvm(ptr noundef %i.axy, i64 noundef %i.ayb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #35
  br label %.body.i.i.i.i.i.i.i.i52

bb.hn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i28
  %i.ayc = load ptr, ptr %.sroa.750.0..sroa_idx.i, align 8, !tbaa !2942, !nonnull !74, !align !275
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !329
  %i.aye = load ptr, ptr %.sroa.851.0..sroa_idx.i, align 8, !tbaa !2943, !nonnull !74, !align !497 ; 2 uses
  %i.ayf = load ptr, ptr %.sroa.952.0..sroa_idx.i, align 8, !tbaa !2944, !nonnull !74, !align !497 ; 2 uses
  %i.ayg = load ptr, ptr %.sroa.1053.0..sroa_idx.i, align 8, !tbaa !2945, !nonnull !74, !align !497
  %sext38.i.i.i.i.i.i.i.i.i31 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.ayh = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i31, 32 ; 3 uses
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.awe, i64 %i.ayh
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !3
  %i.ayk = sext i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds [4 x i8], ptr %i.ayd, i64 %i.ayk
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !3 ; 2 uses
  %i.ayn = icmp sgt i64 %i.axw, 0                 ; 3 uses
  %i.ayo = add nsw i32 %i.aym, -1
  %i.ayp = select i1 %i.ayn, i32 0, i32 %i.ayo
  store i32 %i.ayp, ptr %i.aye, align 4, !tbaa !3
  %i.ayq = select i1 %i.ayn, i32 %i.aym, i32 -1
  store i32 %i.ayq, ptr %i.ayf, align 4, !tbaa !3
  %i.ayr = select i1 %i.ayn, i32 1, i32 -1        ; 17 uses
  store i32 %i.ayr, ptr %i.ayg, align 4, !tbaa !3
  %i.ays = call noundef i64 @llvm.abs.i64(i64 %i.axw, i1 true) ; 10 uses
  %i.ayt = load i32, ptr %i.aye, align 4, !tbaa !3 ; 14 uses
  %i.ayu = load i32, ptr %i.ayf, align 4, !tbaa !3 ; 20 uses
  %.not1641.i.i.i.i.i.i.i.i.i32 = icmp eq i32 %i.ayt, %i.ayu
  br i1 %.not1641.i.i.i.i.i.i.i.i.i32, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i.i.i33:                       ; preds = %bb.hn
  %i.ayv = load ptr, ptr %.sroa.11.0..sroa_idx.i5, align 8, !tbaa !2946, !nonnull !74, !align !275 ; 7 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.ayx, null
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 59 ; 3 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8 ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayv, i64 16 ; 4 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayv, i64 58
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 64 ; 3 uses
  %i.azd = load i8, ptr %i.azb, align 2, !tbaa !338, !range !73, !noundef !74
  %i.aze = trunc nuw i8 %i.azd to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i34, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102, label %.lr.ph.split.i.i.i.i.i.i.i.i.i35

.lr.ph.split.us.i.i.i.i.i.i.i.i.i102:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i33
  %i.azf = load ptr, ptr %i.aza, align 8, !tbaa !487 ; 3 uses
  br i1 %i.aze, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102
  %i.azg = sext i32 %i.ayt to i64
  %i.azh = sext i32 %i.ayr to i64
  %i.azi = sext i32 %i.awj to i64
  %invariant.gep195.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.azf, i64 %i.azi
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv157.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ays, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.1.us.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %gep196.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep195.i.i.i.i.i.i.i.i.i, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i
  %i.azj = load i32, ptr %gep196.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.azk = icmp eq i32 %i.azj, %i.axd
  br i1 %i.azk, label %bb.ho, label %.critedge.us.us.i.i.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i
  %i.azl = add nsw i64 %.03542.us.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.azm = icmp eq i64 %i.azl, 0
  br i1 %i.azm, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i, label %.critedge.us.us.i.i.i.i.i.i.i.i.i

.critedge.us.us.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ho, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i
  %.1.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.03542.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i ], [ %i.azl, %bb.ho ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i, %i.azh ; 2 uses
  %i.azn = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ayu, %i.azn
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2947

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102
  %i.azo = load i8, ptr %i.ayy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.azp = trunc nuw i8 %i.azo to i1
  br i1 %i.azp, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i
  %i.azq = load i32, ptr %i.azc, align 8, !tbaa !488
  %i.azr = sext i32 %i.azq to i64
  %i.azs = getelementptr inbounds [4 x i8], ptr %i.azf, i64 %i.azr
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !3
  %i.azu = icmp eq i32 %i.azt, %i.axd
  br i1 %i.azu, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i
  %i.azv = trunc i64 %i.ays to i32
  %i.azw = add i32 %i.azv, -1
  %i.azx = mul i32 %i.azw, %i.ayr
  %i.azy = add i32 %i.ayt, %i.azx                 ; 3 uses
  %i.azz = add nsw i64 %i.ays, -1                 ; 5 uses
  %i.baa = icmp eq i64 %i.azz, 0
  br i1 %i.baa, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph:    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5799 = icmp samesign ult i64 %i.ays, 33
  br i1 %min.iters.check5799, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5800

vector.ph5800:                                    ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5802 = and i64 %i.azz, -32                ; 3 uses
  %i.bab = and i64 %i.azz, 31
  %i.bac = trunc i64 %n.vec5802 to i32
  %i.bad = mul i32 %i.ayr, %i.bac
  %i.bae = add i32 %i.ayt, %i.bad
  %broadcast.splatinsert5803 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5804 = shufflevector <32 x i32> %broadcast.splatinsert5803, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5805 = insertelement <32 x i32> poison, i32 %i.ayu, i64 0
  %broadcast.splat5806 = shufflevector <32 x i32> %broadcast.splatinsert5805, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5807.a = insertelement <32 x i32> poison, i32 %i.ayt, i64 0
  %broadcast.splat5808 = shufflevector <32 x i32> %broadcast.splatinsert5807.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5809 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5810 = shufflevector <32 x i32> %broadcast.splatinsert5809, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.baf = mul <32 x i32> %broadcast.splat5810, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5811 = add <32 x i32> %broadcast.splat5808, %i.baf
  %i.bag = shl nsw i32 %i.ayr, 5
  %broadcast.splatinsert5812 = insertelement <32 x i32> poison, i32 %i.bag, i64 0
  %broadcast.splat5813 = shufflevector <32 x i32> %broadcast.splatinsert5812, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5814

vector.body5814:                                  ; preds = %vector.body.interim5819, %vector.ph5800
  %index5815 = phi i64 [ 0, %vector.ph5800 ], [ %index.next5817, %vector.body.interim5819 ]
  %vec.ind5816 = phi <32 x i32> [ %induction5811, %vector.ph5800 ], [ %vec.ind.next5818, %vector.body.interim5819 ] ; 2 uses
  %i.bah = add nsw <32 x i32> %vec.ind5816, %broadcast.splat5804
  %i.bai = icmp eq <32 x i32> %i.bah, %broadcast.splat5806
  %i.baj = freeze <32 x i1> %i.bai
  %i.bak = bitcast <32 x i1> %i.baj to i32
  %.not5893 = icmp eq i32 %i.bak, 0
  br i1 %.not5893, label %vector.body.interim5819, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

vector.body.interim5819:                          ; preds = %vector.body5814
  %vec.ind.next5818 = add <32 x i32> %vec.ind5816, %broadcast.splat5813
  %index.next5817 = add nuw i64 %index5815, 32    ; 2 uses
  %i.bal = icmp eq i64 %index.next5817, %n.vec5802
  br i1 %i.bal, label %middle.block5820, label %vector.body5814, !llvm.loop !2948

middle.block5820:                                 ; preds = %vector.body.interim5819
  %cmp.n5821 = icmp eq i64 %i.azz, %n.vec5802
  br i1 %cmp.n5821, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5820
  %.ph5929 = phi i64 [ %i.azz, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bab, %middle.block5820 ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427.ph = phi i32 [ %i.ayt, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bae, %middle.block5820 ]
  br label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i
  %i.bam = add nsw i64 %i.bao, -1                 ; 2 uses
  %i.ban = icmp eq i64 %i.bam, 0
  br i1 %i.ban, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2949

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i
  %i.bao = phi i64 [ %i.bam, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i ], [ %.ph5929, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427 = phi i32 [ %i.bap, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i ], [ %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427.ph, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bap = add nsw i32 %.043.us.us96.us.i.i.i.i.i.i.i.i.i5427, %i.ayr ; 2 uses
  %.not16.us.us102.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bap, %i.ayu
  br i1 %.not16.us.us102.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2947

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i
  %i.baq = load ptr, ptr %i.ayz, align 8, !tbaa !331
  %i.bar = sext i32 %i.ayt to i64
  %i.bas = sext i32 %i.ayr to i64
  %i.bat = sext i32 %i.awj to i64
  %invariant.gep193.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.baq, i64 %i.bat
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i105, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i
  %indvars.iv154.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.bar, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i104 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i106, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.ays, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %gep194.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep193.i.i.i.i.i.i.i.i.i, i64 %indvars.iv154.i.i.i.i.i.i.i.i.i
  %i.bau = load i32, ptr %gep194.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.bav = sext i32 %i.bau to i64
  %i.baw = getelementptr inbounds [4 x i8], ptr %i.azf, i64 %i.bav
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !3
  %i.bay = icmp eq i32 %i.bax, %i.axd
  br i1 %i.bay, label %bb.hp, label %.critedge.us.i.i.i.i.i.i.i.i.i105

bb.hp:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103
  %i.baz = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i104, -1 ; 2 uses
  %i.bba = icmp eq i64 %i.baz, 0
  br i1 %i.bba, label %.split.us.loopexit112.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i105

.critedge.us.i.i.i.i.i.i.i.i.i105:                ; preds = %bb.hp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103
  %.1.us.i.i.i.i.i.i.i.i.i106 = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i104, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103 ], [ %i.baz, %bb.hp ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i, %i.bas ; 2 uses
  %i.bbb = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i107 = icmp eq i32 %i.ayu, %i.bbb
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i107, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103, !llvm.loop !2947

.lr.ph.split.i.i.i.i.i.i.i.i.i35:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i33
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.ayv, i64 57
  %i.bbd = load i8, ptr %i.bbc, align 1, !range !73
  %i.bbe = trunc nuw i8 %i.bbd to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i36 = select i1 %i.aze, i1 true, i1 %i.bbe
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i36, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i37

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i35
  %i.bbf = sext i32 %i.ayt to i64
  %i.bbg = sext i32 %i.ayr to i64
  %i.bbh = sext i32 %i.awj to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94:        ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i99, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93
  %indvars.iv151.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbf, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93 ], [ %indvars.iv.next152.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i99 ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i95 = phi i64 [ %i.ays, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i93 ], [ %.1.us51.i.i.i.i.i.i.i.i.i100, %.critedge.us50.i.i.i.i.i.i.i.i.i99 ] ; 3 uses
  %i.bbi = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i, %i.bbh ; 4 uses
  %i.bbj = lshr i64 %i.bbi, 6
  %i.bbk = and i64 %i.bbj, 67108863
  %i.bbl = getelementptr inbounds nuw [8 x i8], ptr %i.ayx, i64 %i.bbk
  %i.bbm = load i64, ptr %i.bbl, align 8, !tbaa !137
  %i.bbn = and i64 %i.bbi, 63
  %i.bbo = shl nuw i64 1, %i.bbn
  %i.bbp = and i64 %i.bbo, %i.bbm
  %.not.i.i.us.i.i.i.i.i.i.i.i.i96 = icmp eq i64 %i.bbp, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i96, label %.critedge.us50.i.i.i.i.i.i.i.i.i99, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94
  %i.bbq = trunc nsw i64 %i.bbi to i32
  %i.bbr = load ptr, ptr %i.aza, align 8, !tbaa !487
  br i1 %i.aze, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97
  %i.bbs = load i8, ptr %i.ayy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.bbt = trunc nuw i8 %i.bbs to i1
  br i1 %i.bbt, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bbu = load ptr, ptr %i.ayz, align 8, !tbaa !331
  %i.bbv = getelementptr inbounds [4 x i8], ptr %i.bbu, i64 %i.bbi
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hq
  %i.bbx = load i32, ptr %i.azc, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.hs, %bb.hr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i98 = phi i32 [ %i.bbw, %bb.hr ], [ %i.bbx, %bb.hs ], [ %i.bbq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i97 ]
  %i.bby = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i98 to i64
  %i.bbz = getelementptr inbounds [4 x i8], ptr %i.bbr, i64 %i.bby
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !3
  %i.bcb = icmp eq i32 %i.bca, %i.axd
  br i1 %i.bcb, label %bb.ht, label %.critedge.us50.i.i.i.i.i.i.i.i.i99

bb.ht:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.bcc = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i95, -1 ; 2 uses
  %i.bcd = icmp eq i64 %i.bcc, 0
  br i1 %i.bcd, label %.split.us.loopexit114.i.i.i.i.i.i.i.i.i, label %.critedge.us50.i.i.i.i.i.i.i.i.i99

.critedge.us50.i.i.i.i.i.i.i.i.i99:               ; preds = %bb.ht, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94
  %.1.us51.i.i.i.i.i.i.i.i.i100 = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i95, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.bcc, %bb.ht ], [ %.03542.us46.i.i.i.i.i.i.i.i.i95, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94 ]
  %indvars.iv.next152.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i, %i.bbg ; 2 uses
  %i.bce = trunc nsw i64 %indvars.iv.next152.i.i.i.i.i.i.i.i.i to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i101 = icmp eq i32 %i.ayu, %i.bce
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i101, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i94, !llvm.loop !2947

.lr.ph.split.split.i.i.i.i.i.i.i.i.i37:           ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i35
  %i.bcf = load i8, ptr %i.ayy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.bcg = trunc nuw i8 %i.bcf to i1
  br i1 %i.bcg, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91:  ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i37
  %i.bch = load i64, ptr %i.ayx, align 8, !tbaa !137
  %i.bci = and i64 %i.bch, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.bci, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i92, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91
  %i.bcj = load ptr, ptr %i.aza, align 8, !tbaa !487
  %i.bck = load i32, ptr %i.azc, align 8, !tbaa !488
  %i.bcl = sext i32 %i.bck to i64
  %i.bcm = getelementptr inbounds [4 x i8], ptr %i.bcj, i64 %i.bcl
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !3
  %i.bco = icmp eq i32 %i.bcn, %i.axd
  br i1 %i.bco, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i
  %i.bcp = trunc i64 %i.ays to i32
  %i.bcq = add i32 %i.bcp, -1
  %i.bcr = mul i32 %i.bcq, %i.ayr
  %i.bcs = add i32 %i.ayt, %i.bcr                 ; 3 uses
  %i.bct = add nsw i64 %i.ays, -1                 ; 5 uses
  %i.bcu = icmp eq i64 %i.bct, 0
  br i1 %i.bcu, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5826 = icmp samesign ult i64 %i.ays, 33
  br i1 %min.iters.check5826, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5827

vector.ph5827:                                    ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5829 = and i64 %i.bct, -32                ; 3 uses
  %i.bcv = and i64 %i.bct, 31
  %i.bcw = trunc i64 %n.vec5829 to i32
  %i.bcx = mul i32 %i.ayr, %i.bcw
  %i.bcy = add i32 %i.ayt, %i.bcx
  %broadcast.splatinsert5830 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5831 = shufflevector <32 x i32> %broadcast.splatinsert5830, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5832 = insertelement <32 x i32> poison, i32 %i.ayu, i64 0
  %broadcast.splat5833 = shufflevector <32 x i32> %broadcast.splatinsert5832, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5834 = insertelement <32 x i32> poison, i32 %i.ayt, i64 0
  %broadcast.splat5835 = shufflevector <32 x i32> %broadcast.splatinsert5834, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5836 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5837 = shufflevector <32 x i32> %broadcast.splatinsert5836, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.bcz = mul <32 x i32> %broadcast.splat5837, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5838 = add <32 x i32> %broadcast.splat5835, %i.bcz
  %i.bda = shl nsw i32 %i.ayr, 5
  %broadcast.splatinsert5839 = insertelement <32 x i32> poison, i32 %i.bda, i64 0
  %broadcast.splat5840 = shufflevector <32 x i32> %broadcast.splatinsert5839, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5841

vector.body5841:                                  ; preds = %vector.body.interim5846, %vector.ph5827
  %index5842 = phi i64 [ 0, %vector.ph5827 ], [ %index.next5844, %vector.body.interim5846 ]
  %vec.ind5843 = phi <32 x i32> [ %induction5838, %vector.ph5827 ], [ %vec.ind.next5845, %vector.body.interim5846 ] ; 2 uses
  %i.bdb = add nsw <32 x i32> %vec.ind5843, %broadcast.splat5831
  %i.bdc = icmp eq <32 x i32> %i.bdb, %broadcast.splat5833
  %i.bdd = freeze <32 x i1> %i.bdc
  %i.bde = bitcast <32 x i1> %i.bdd to i32
  %.not5892 = icmp eq i32 %i.bde, 0
  br i1 %.not5892, label %vector.body.interim5846, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

vector.body.interim5846:                          ; preds = %vector.body5841
  %vec.ind.next5845 = add <32 x i32> %vec.ind5843, %broadcast.splat5840
  %index.next5844 = add nuw i64 %index5842, 32    ; 2 uses
  %i.bdf = icmp eq i64 %index.next5844, %n.vec5829
  br i1 %i.bdf, label %middle.block5847, label %vector.body5841, !llvm.loop !2950

middle.block5847:                                 ; preds = %vector.body.interim5846
  %cmp.n5848 = icmp eq i64 %i.bct, %n.vec5829
  br i1 %cmp.n5848, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5847
  %.ph5934 = phi i64 [ %i.bct, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bcv, %middle.block5847 ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426.ph = phi i32 [ %i.ayt, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bcy, %middle.block5847 ]
  br label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i
  %i.bdg = add nsw i64 %i.bdi, -1                 ; 2 uses
  %i.bdh = icmp eq i64 %i.bdg, 0
  br i1 %i.bdh, label %.split.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2951

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i
  %i.bdi = phi i64 [ %i.bdg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i ], [ %.ph5934, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426 = phi i32 [ %i.bdj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i ], [ %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426.ph, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bdj = add nsw i32 %.043.us57.us80.us.i.i.i.i.i.i.i.i.i5426, %i.ayr ; 2 uses
  %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bdj, %i.ayu
  br i1 %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i, !llvm.loop !2947

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38:     ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i37
  %i.bdk = load ptr, ptr %i.ayz, align 8, !tbaa !331
  %i.bdl = sext i32 %i.ayt to i64
  %i.bdm = sext i32 %i.ayr to i64
  %i.bdn = sext i32 %i.awj to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i39 = getelementptr [4 x i8], ptr %i.bdk, i64 %i.bdn
  br label %bb.hu

bb.hu:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i44, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38
  %indvars.iv.i.i.i.i.i.i.i.i.i40 = phi i64 [ %i.bdl, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i46, %.critedge.i.i.i.i.i.i.i.i.i44 ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i41 = phi i64 [ %i.ays, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i38 ], [ %.1.i.i.i.i.i.i.i.i.i45, %.critedge.i.i.i.i.i.i.i.i.i44 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i42 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i39, i64 %indvars.iv.i.i.i.i.i.i.i.i.i40
  %i.bdo = load i32, ptr %gep.i.i.i.i.i.i.i.i.i42, align 4, !tbaa !3 ; 2 uses
  %i.bdp = zext i32 %i.bdo to i64                 ; 2 uses
  %i.bdq = lshr i64 %i.bdp, 6
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %i.ayx, i64 %i.bdq
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !137
  %i.bdt = and i64 %i.bdp, 63
  %i.bdu = shl nuw i64 1, %i.bdt
  %i.bdv = and i64 %i.bdu, %i.bds
  %.not.i7.i.i.i.i.i.i.i.i.i.i43 = icmp eq i64 %i.bdv, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i43, label %.critedge.i.i.i.i.i.i.i.i.i44, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.hu
  %i.bdw = load ptr, ptr %i.aza, align 8, !tbaa !487
  %i.bdx = sext i32 %i.bdo to i64
  %i.bdy = getelementptr inbounds [4 x i8], ptr %i.bdw, i64 %i.bdx
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !3
  %i.bea = icmp eq i32 %i.bdz, %i.axd
  br i1 %i.bea, label %bb.hv, label %.critedge.i.i.i.i.i.i.i.i.i44

bb.hv:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.beb = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i41, -1 ; 2 uses
  %i.bec = icmp eq i64 %i.beb, 0
  br i1 %i.bec, label %.split.us.loopexit124.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i44

.split.us.loopexit.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ho
  %i.bed = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.loopexit112.i.i.i.i.i.i.i.i.i:          ; preds = %bb.hp
  %i.bee = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.loopexit114.i.i.i.i.i.i.i.i.i:          ; preds = %bb.ht
  %i.bef = trunc nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.loopexit124.i.i.i.i.i.i.i.i.i:          ; preds = %bb.hv
  %i.beg = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i40 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i82

.split.us.i.i.i.i.i.i.i.i.i82:                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5847, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5820, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i.i83 = phi i32 [ %i.bef, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i ], [ %i.beg, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i ], [ %i.bed, %.split.us.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.bee, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i ], [ %i.azy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.azy, %middle.block5820 ], [ %i.bcs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.bcs, %middle.block5847 ], [ %i.azy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i ], [ %i.bcs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.beh = load ptr, ptr %.sroa.12.0..sroa_idx.i6, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.bei = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i83, 1
  %i.bej = sext i32 %i.bei to i64
  %i.bek = getelementptr inbounds nuw i8, ptr %i.beh, i64 144 ; 2 uses
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !341 ; 2 uses
  %i.bem = icmp eq ptr %i.bel, null
  br i1 %i.bem, label %bb.hw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84

bb.hw:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i82
  %i.ben = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.beh)
          to label %.noexc19.i.i.i.i.i.i.i.i89 unwind label %bb.ib ; 0 uses

.noexc19.i.i.i.i.i.i.i.i89:                       ; preds = %bb.hw
  %.pre.i.i.i.i.i.i.i.i.i.i90 = load ptr, ptr %i.bek, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84: ; preds = %.noexc19.i.i.i.i.i.i.i.i89, %.split.us.i.i.i.i.i.i.i.i.i82
  %i.beo = phi ptr [ %i.bel, %.split.us.i.i.i.i.i.i.i.i.i82 ], [ %.pre.i.i.i.i.i.i.i.i.i.i90, %.noexc19.i.i.i.i.i.i.i.i89 ]
  %i.bep = getelementptr inbounds [8 x i8], ptr %i.beo, i64 %i.ayh
  store i64 %i.bej, ptr %i.bep, align 8, !tbaa !137
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beh, i64 32 ; 2 uses
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.ber, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i85, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %bb.hx

bb.hx:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beh, i64 56
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.beh, i32 noundef %i.bet, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i86 unwind label %bb.ib

.noexc20.i.i.i.i.i.i.i.i86:                       ; preds = %bb.hx
  %i.beu = load ptr, ptr %i.beq, align 8, !tbaa !362 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 44
  %i.bew = load i8, ptr %i.bev, align 4, !tbaa !363
  %i.bex = and i8 %i.bew, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i87 = icmp eq i8 %i.bex, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i87, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88, label %.invoke.i.i.i.i.i.i.i.i77, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88: ; preds = %.noexc20.i.i.i.i.i.i.i.i86
  %i.bey = getelementptr inbounds nuw i8, ptr %i.beu, i64 16
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !368
  %i.bfa = lshr i64 %.074.i.i.i.i.i.i.i.i, 3
  %i.bfb = and i64 %i.bfa, 536870911
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bez, i64 %i.bfb ; 2 uses
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !30
  %i.bfe = trunc i64 %.074.i.i.i.i.i.i.i.i to i8
  %i.bff = and i8 %i.bfe, 7
  %i.bfg = shl nuw i8 1, %i.bff
  %i.bfh = or i8 %i.bfd, %i.bfg
  store i8 %i.bfh, ptr %i.bfc, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

.critedge.i.i.i.i.i.i.i.i.i44:                    ; preds = %bb.hv, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.hu
  %.1.i.i.i.i.i.i.i.i.i45 = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i41, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.beb, %bb.hv ], [ %.03542.i.i.i.i.i.i.i.i.i41, %bb.hu ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i46 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i40, %i.bdm ; 2 uses
  %i.bfi = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i46 to i32
  %.not16.i.i.i.i.i.i.i.i.i47 = icmp eq i32 %i.ayu, %i.bfi
  br i1 %.not16.i.i.i.i.i.i.i.i.i47, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %bb.hu, !llvm.loop !2947

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48: ; preds = %.critedge.i.i.i.i.i.i.i.i.i44, %vector.body5841, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i, %.critedge.us50.i.i.i.i.i.i.i.i.i99, %.critedge.us.i.i.i.i.i.i.i.i.i105, %vector.body5814, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i, %bb.hn
  %.040.i.i.i.i.i.i.i.i.i49 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i83, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84 ], [ %.us-phi.i.i.i.i.i.i.i.i.i83, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88 ], [ %i.ayt, %bb.hn ], [ %i.ayu, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.critedge.us50.i.i.i.i.i.i.i.i.i99 ], [ %i.ayu, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %vector.body5814 ], [ %i.ayu, %.critedge.us.us.i.i.i.i.i.i.i.i.i ], [ %i.ayu, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91 ], [ %i.ayu, %vector.body5841 ], [ %i.ayu, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.ayu, %.critedge.i.i.i.i.i.i.i.i.i44 ]
  %i.bfj = load ptr, ptr %.sroa.952.0..sroa_idx.i, align 8, !tbaa !2944, !nonnull !74, !align !497
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !3
  %i.bfl = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i49, %i.bfk
  br i1 %i.bfl, label %bb.hy, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.hy:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48
  %i.bfm = load ptr, ptr %.sroa.12.0..sroa_idx.i6, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 144 ; 2 uses
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !341 ; 2 uses
  %i.bfp = icmp eq ptr %i.bfo, null
  br i1 %i.bfp, label %bb.hz, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50

bb.hz:                                            ; preds = %bb.hy
  %i.bfq = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bfm)
          to label %.noexc22.i.i.i.i.i.i.i.i80 unwind label %bb.ib ; 0 uses

.noexc22.i.i.i.i.i.i.i.i80:                       ; preds = %bb.hz
  %.pre.i26.i.i.i.i.i.i.i.i.i81 = load ptr, ptr %i.bfn, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50: ; preds = %.noexc22.i.i.i.i.i.i.i.i80, %bb.hy
  %i.bfr = phi ptr [ %i.bfo, %bb.hy ], [ %.pre.i26.i.i.i.i.i.i.i.i.i81, %.noexc22.i.i.i.i.i.i.i.i80 ]
  %i.bfs = getelementptr inbounds [8 x i8], ptr %i.bfr, i64 %i.ayh
  store i64 0, ptr %i.bfs, align 8, !tbaa !137
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfm, i64 32 ; 2 uses
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.bfu, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i51, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfm, i64 56
  %i.bfw = load i32, ptr %i.bfv, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.bfm, i32 noundef %i.bfw, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i75 unwind label %bb.ib

.noexc23.i.i.i.i.i.i.i.i75:                       ; preds = %bb.ia
  %i.bfx = load ptr, ptr %i.bft, align 8, !tbaa !362 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 44
  %i.bfz = load i8, ptr %i.bfy, align 4, !tbaa !363
  %i.bga = and i8 %i.bfz, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i76 = icmp eq i8 %i.bga, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i76, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i79, label %.invoke.i.i.i.i.i.i.i.i77, !prof !69
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.bxz = sub nsw i32 64, %i.bxw
  %i.bya = zext nneg i32 %i.bxz to i64
  %i.byb = shl i64 %i.bxy, %i.bya
  %i.byc = and i64 %i.byb, %i.bxv
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %180, i32 noundef %i.bxs, i64 noundef %i.byc)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.mb:                                            ; preds = %bb.lz
  %.not32.i.i.i.i.i.i.i263 = icmp eq i32 %i.bxk, %i.bxp
  br i1 %.not32.i.i.i.i.i.i.i263, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.byd = sdiv i32 %i.bxk, 64
  %i.bye = sub nsw i32 %i.bxp, %i.bxk             ; 2 uses
  %i.byf = zext nneg i32 %i.bye to i64
  %notmask.i.i35.i.i.i.i.i.i.i264 = shl nsw i64 -1, %i.byf
  %i.byg = xor i64 %notmask.i.i35.i.i.i.i.i.i.i264, -1
  %i.byh = sub nsw i32 64, %i.bye
  %i.byi = zext nneg i32 %i.byh to i64
  %i.byj = shl i64 %i.byg, %i.byi
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %180, i32 noundef %i.byd, i64 noundef %i.byj)
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %i.byk = add nsw i32 %i.bxp, 64                 ; 2 uses
  %.not3355.i.i.i.i.i.i.i265 = icmp sgt i32 %i.byk, %i.bxq
  br i1 %.not3355.i.i.i.i.i.i.i265, label %._crit_edge.i.i.i.i.i.i.i269, label %.lr.ph.i.i.i.i.i.i29.i266

.lr.ph.i.i.i.i.i.i29.i266:                        ; preds = %bb.md
  %i.byl = getelementptr inbounds nuw i8, ptr %174, i64 16
  %i.bym = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 2 uses
  br label %bb.me

._crit_edge.i.i.i.i.i.i.i269:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.md
  %.not34.i.i.i.i.i.i.i270 = icmp eq i32 %i.bxm, %i.bxq
  br i1 %.not34.i.i.i.i.i.i.i270, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.ol

bb.me:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i266
  %i.byn = phi i32 [ %i.byk, %.lr.ph.i.i.i.i.i.i29.i266 ], [ %i.cma, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i267 = phi i32 [ %i.bxp, %.lr.ph.i.i.i.i.i.i29.i266 ], [ %i.byn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.byo = sdiv i32 %.056.i.i.i.i.i.i.i267, 64    ; 3 uses
  %i.byp = sext i32 %i.byo to i64
  %i.byq = getelementptr inbounds [8 x i8], ptr %i.bxi, i64 %i.byp
  %i.byr = load i64, ptr %i.byq, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.byr, label %.lr.ph.i.i.i.i.i.i.i.i399 [
    i64 -1, label %bb.mf
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i399:                        ; preds = %bb.me
  %i.bys = shl nsw i32 %i.byo, 6
  br label %bb.nu

bb.mf:                                            ; preds = %bb.me
  %i.byt = shl nsw i32 %i.byo, 6                  ; 2 uses
  %i.byu = add i32 %i.byt, 64
  %i.byv = sext i32 %i.byu to i64
  %.0.off.i.i.i.i.i.i.i272 = add i32 %.056.i.i.i.i.i.i.i267, 127
  %.not78.i.i.i.i.i.i.i.i273 = icmp ult i32 %.0.off.i.i.i.i.i.i.i272, 64
  br i1 %.not78.i.i.i.i.i.i.i.i273, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph77.i.i.i.i.i.i.i.i274

.lr.ph77.i.i.i.i.i.i.i.i274:                      ; preds = %bb.mf
  %i.byw = sext i32 %i.byt to i64
  br label %bb.mg

bb.mg:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph77.i.i.i.i.i.i.i.i274
  %.074.i.i.i.i.i.i.i.i275 = phi i64 [ %i.byw, %.lr.ph77.i.i.i.i.i.i.i.i274 ], [ %i.ckn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.byx = load ptr, ptr %184, align 8, !tbaa !2969, !nonnull !74, !align !275
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !329
  %i.byz = load ptr, ptr %.sroa.447.0..sroa_idx.i244, align 8, !tbaa !2971, !nonnull !74, !align !275
  %i.bza = load ptr, ptr %i.byz, align 8, !tbaa !329 ; 2 uses
  %i.bzb = getelementptr inbounds nuw [4 x i8], ptr %i.bza, i64 %.074.i.i.i.i.i.i.i.i275
  %i.bzc = load i32, ptr %i.bzb, align 4, !tbaa !3
  %i.bzd = sext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds [4 x i8], ptr %i.byy, i64 %i.bzd
  %i.bzf = load i32, ptr %i.bze, align 4, !tbaa !3 ; 4 uses
  %i.bzg = load ptr, ptr %.sroa.548.0..sroa_idx.i245, align 8, !tbaa !2972, !nonnull !74, !align !275 ; 5 uses
  %i.bzh = trunc i64 %.074.i.i.i.i.i.i.i.i275 to i32 ; 4 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzg, i64 16
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !487
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzg, i64 58
  %i.bzl = load i8, ptr %i.bzk, align 2, !tbaa !338, !range !73, !noundef !74
  %i.bzm = trunc nuw i8 %i.bzl to i1
  br i1 %i.bzm, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzg, i64 59
  %i.bzo = load i8, ptr %i.bzn, align 1, !tbaa !339, !range !73, !noundef !74
  %i.bzp = trunc nuw i8 %i.bzo to i1
  br i1 %i.bzp, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzg, i64 64
  %i.bzr = load i32, ptr %i.bzq, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i

bb.mj:                                            ; preds = %bb.mh
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzg, i64 8
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i276 = shl i64 %.074.i.i.i.i.i.i.i.i275, 32
  %i.bzu = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i276, 30
  %i.bzv = getelementptr inbounds i8, ptr %i.bzt, i64 %i.bzu
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.mj, %bb.mi, %bb.mg
  %.0.i.i.i.i.i.i.i.i.i.i.i277 = phi i32 [ %i.bzw, %bb.mj ], [ %i.bzr, %bb.mi ], [ %i.bzh, %bb.mg ]
  %i.bzx = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i277 to i64
  %i.bzy = getelementptr inbounds i8, ptr %i.bzj, i64 %i.bzx
  %i.bzz = load i8, ptr %i.bzy, align 1, !tbaa !30 ; 6 uses
  %i.caa = load ptr, ptr %.sroa.649.0..sroa_idx.i246, align 8, !tbaa !2973, !nonnull !74, !align !275 ; 5 uses
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 16
  %i.cac = load ptr, ptr %i.cab, align 8, !tbaa !487
  %i.cad = getelementptr inbounds nuw i8, ptr %i.caa, i64 58
  %i.cae = load i8, ptr %i.cad, align 2, !tbaa !338, !range !73, !noundef !74
  %i.caf = trunc nuw i8 %i.cae to i1
  br i1 %i.caf, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279, label %bb.mk

bb.mk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caa, i64 59
  %i.cah = load i8, ptr %i.cag, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cai = trunc nuw i8 %i.cah to i1
  br i1 %i.cai, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.caj = getelementptr inbounds nuw i8, ptr %i.caa, i64 64
  %i.cak = load i32, ptr %i.caj, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279

bb.mm:                                            ; preds = %bb.mk
  %i.cal = getelementptr inbounds nuw i8, ptr %i.caa, i64 8
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !331
  %sext37.i.i.i.i.i.i.i.i.i278 = shl i64 %.074.i.i.i.i.i.i.i.i275, 32
  %i.can = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i278, 30
  %i.cao = getelementptr inbounds i8, ptr %i.cam, i64 %i.can
  %i.cap = load i32, ptr %i.cao, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279: ; preds = %bb.mm, %bb.ml, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i280 = phi i32 [ %i.cap, %bb.mm ], [ %i.cak, %bb.ml ], [ %i.bzh, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.caq = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i280 to i64
  %i.car = getelementptr inbounds [8 x i8], ptr %i.cac, i64 %i.caq
  %i.cas = load i64, ptr %i.car, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i281 = icmp eq i64 %i.cas, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i281, label %bb.mn, label %bb.mq, !prof !48

bb.mn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #35, !noalias !2974
  store i64 0, ptr %174, align 16, !tbaa !30, !noalias !2974
  store i32 0, ptr %i.byl, align 16, !tbaa !30, !alias.scope !2977, !noalias !2974
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %175, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %174)
          to label %.noexc.i.i.i.i.i.i.i.i395 unwind label %bb.ne

.noexc.i.i.i.i.i.i.i.i395:                        ; preds = %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #35, !noalias !2974
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %175, ptr nonnull @.str.178) #38
          to label %bb.mo unwind label %bb.mp

bb.mo:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i395
  unreachable

bb.mp:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i395
  %i.cat = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cau = load ptr, ptr %175, align 8, !tbaa !49 ; 2 uses
  %i.cav = icmp eq ptr %i.cau, %i.bym
  br i1 %i.cav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i396: ; preds = %bb.mp
  %i.caw = load i64, ptr %i.bym, align 8, !tbaa !30
  %i.cax = add i64 %i.caw, 1
  call void @_ZdlPvm(ptr noundef %i.cau, i64 noundef %i.cax) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i397: ; preds = %bb.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #35
  br label %.body.i.i.i.i.i.i.i.i303

bb.mq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i279
  %i.cay = load ptr, ptr %.sroa.750.0..sroa_idx.i247, align 8, !tbaa !2980, !nonnull !74, !align !275
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !329
  %i.cba = load ptr, ptr %.sroa.851.0..sroa_idx.i248, align 8, !tbaa !2981, !nonnull !74, !align !497 ; 2 uses
  %i.cbb = load ptr, ptr %.sroa.952.0..sroa_idx.i249, align 8, !tbaa !2982, !nonnull !74, !align !497 ; 2 uses
  %i.cbc = load ptr, ptr %.sroa.1053.0..sroa_idx.i250, align 8, !tbaa !2983, !nonnull !74, !align !497
  %sext38.i.i.i.i.i.i.i.i.i282 = shl i64 %.074.i.i.i.i.i.i.i.i275, 32
  %i.cbd = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i282, 32 ; 3 uses
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.bza, i64 %i.cbd
  %i.cbf = load i32, ptr %i.cbe, align 4, !tbaa !3
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = getelementptr inbounds [4 x i8], ptr %i.caz, i64 %i.cbg
  %i.cbi = load i32, ptr %i.cbh, align 4, !tbaa !3 ; 2 uses
  %i.cbj = icmp sgt i64 %i.cas, 0                 ; 3 uses
  %i.cbk = add nsw i32 %i.cbi, -1
  %i.cbl = select i1 %i.cbj, i32 0, i32 %i.cbk
  store i32 %i.cbl, ptr %i.cba, align 4, !tbaa !3
  %i.cbm = select i1 %i.cbj, i32 %i.cbi, i32 -1
  store i32 %i.cbm, ptr %i.cbb, align 4, !tbaa !3
  %i.cbn = select i1 %i.cbj, i32 1, i32 -1        ; 17 uses
  store i32 %i.cbn, ptr %i.cbc, align 4, !tbaa !3
  %i.cbo = call noundef i64 @llvm.abs.i64(i64 %i.cas, i1 true) ; 10 uses
  %i.cbp = load i32, ptr %i.cba, align 4, !tbaa !3 ; 14 uses
  %i.cbq = load i32, ptr %i.cbb, align 4, !tbaa !3 ; 20 uses
  %.not1641.i.i.i.i.i.i.i.i.i283 = icmp eq i32 %i.cbp, %i.cbq
  br i1 %.not1641.i.i.i.i.i.i.i.i.i283, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %.lr.ph.i.i.i.i.i.i.i.i.i284

.lr.ph.i.i.i.i.i.i.i.i.i284:                      ; preds = %bb.mq
  %i.cbr = load ptr, ptr %.sroa.11.0..sroa_idx.i251, align 8, !tbaa !2984, !nonnull !74, !align !275 ; 7 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbr, i64 24
  %i.cbt = load ptr, ptr %i.cbs, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i285 = icmp eq ptr %i.cbt, null
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbr, i64 59 ; 3 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbr, i64 8 ; 3 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbr, i64 16 ; 4 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbr, i64 58
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbr, i64 64 ; 3 uses
  %i.cbz = load i8, ptr %i.cbx, align 2, !tbaa !338, !range !73, !noundef !74
  %i.cca = trunc nuw i8 %i.cbz to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i285, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i364, label %.lr.ph.split.i.i.i.i.i.i.i.i.i286

.lr.ph.split.us.i.i.i.i.i.i.i.i.i364:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i284
  %i.ccb = load ptr, ptr %i.cbw, align 8, !tbaa !487 ; 3 uses
  br i1 %i.cca, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i364
  %i.ccc = sext i32 %i.cbp to i64
  %i.ccd = sext i32 %i.cbn to i64
  %i.cce = sext i32 %i.bzf to i64
  %invariant.gep195.i.i.i.i.i.i.i.i.i385 = getelementptr i8, ptr %i.ccb, i64 %i.cce
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i390, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384
  %indvars.iv157.i.i.i.i.i.i.i.i.i387 = phi i64 [ %i.ccc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384 ], [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i392, %.critedge.us.us.i.i.i.i.i.i.i.i.i390 ] ; 3 uses
  %.03542.us.us.i.i.i.i.i.i.i.i.i388 = phi i64 [ %i.cbo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i384 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i391, %.critedge.us.us.i.i.i.i.i.i.i.i.i390 ] ; 2 uses
  %gep196.i.i.i.i.i.i.i.i.i389 = getelementptr i8, ptr %invariant.gep195.i.i.i.i.i.i.i.i.i385, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i387
  %i.ccf = load i8, ptr %gep196.i.i.i.i.i.i.i.i.i389, align 1, !tbaa !30
  %i.ccg = icmp eq i8 %i.ccf, %i.bzz
  br i1 %i.ccg, label %bb.mr, label %.critedge.us.us.i.i.i.i.i.i.i.i.i390

bb.mr:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386
  %i.cch = add nsw i64 %.03542.us.us.i.i.i.i.i.i.i.i.i388, -1 ; 2 uses
  %i.cci = icmp eq i64 %i.cch, 0
  br i1 %i.cci, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i394, label %.critedge.us.us.i.i.i.i.i.i.i.i.i390

.critedge.us.us.i.i.i.i.i.i.i.i.i390:             ; preds = %bb.mr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386
  %.1.us.us.i.i.i.i.i.i.i.i.i391 = phi i64 [ %.03542.us.us.i.i.i.i.i.i.i.i.i388, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386 ], [ %i.cch, %bb.mr ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i392 = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i387, %i.ccd ; 2 uses
  %i.ccj = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i392 to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i393 = icmp eq i32 %i.cbq, %i.ccj
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i393, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i386, !llvm.loop !2985

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i364
  %i.cck = load i8, ptr %i.cbu, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ccl = trunc nuw i8 %i.cck to i1
  br i1 %i.ccl, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365
  %i.ccm = load i32, ptr %i.cby, align 8, !tbaa !488
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds i8, ptr %i.ccb, i64 %i.ccn
  %i.ccp = load i8, ptr %i.cco, align 1, !tbaa !30
  %i.ccq = icmp eq i8 %i.ccp, %i.bzz
  br i1 %i.ccq, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377
  %i.ccr = trunc i64 %i.cbo to i32
  %i.ccs = add i32 %i.ccr, -1
  %i.cct = mul i32 %i.ccs, %i.cbn
  %i.ccu = add i32 %i.cbp, %i.cct                 ; 3 uses
  %i.ccv = add nsw i64 %i.cbo, -1                 ; 5 uses
  %i.ccw = icmp eq i64 %i.ccv, 0
  br i1 %i.ccw, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378
  %min.iters.check5745 = icmp samesign ult i64 %i.cbo, 33
  br i1 %min.iters.check5745, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader, label %vector.ph5746

vector.ph5746:                                    ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph
  %n.vec5748 = and i64 %i.ccv, -32                ; 3 uses
  %i.ccx = and i64 %i.ccv, 31
  %i.ccy = trunc i64 %n.vec5748 to i32
  %i.ccz = mul i32 %i.cbn, %i.ccy
  %i.cda = add i32 %i.cbp, %i.ccz
  %broadcast.splatinsert5749 = insertelement <32 x i32> poison, i32 %i.cbn, i64 0
  %broadcast.splat5750 = shufflevector <32 x i32> %broadcast.splatinsert5749, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5751 = insertelement <32 x i32> poison, i32 %i.cbq, i64 0
  %broadcast.splat5752 = shufflevector <32 x i32> %broadcast.splatinsert5751, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5753 = insertelement <32 x i32> poison, i32 %i.cbp, i64 0
  %broadcast.splat5754 = shufflevector <32 x i32> %broadcast.splatinsert5753, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5755 = insertelement <32 x i32> poison, i32 %i.cbn, i64 0
  %broadcast.splat5756 = shufflevector <32 x i32> %broadcast.splatinsert5755, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.cdb = mul <32 x i32> %broadcast.splat5756, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5757 = add <32 x i32> %broadcast.splat5754, %i.cdb
  %i.cdc = shl nsw i32 %i.cbn, 5
  %broadcast.splatinsert5758 = insertelement <32 x i32> poison, i32 %i.cdc, i64 0
  %broadcast.splat5759 = shufflevector <32 x i32> %broadcast.splatinsert5758, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5760

vector.body5760:                                  ; preds = %vector.body.interim5765, %vector.ph5746
  %index5761 = phi i64 [ 0, %vector.ph5746 ], [ %index.next5763, %vector.body.interim5765 ]
  %vec.ind5762 = phi <32 x i32> [ %induction5757, %vector.ph5746 ], [ %vec.ind.next5764, %vector.body.interim5765 ] ; 2 uses
  %i.cdd = add nsw <32 x i32> %vec.ind5762, %broadcast.splat5750
  %i.cde = icmp eq <32 x i32> %i.cdd, %broadcast.splat5752
  %i.cdf = freeze <32 x i1> %i.cde
  %i.cdg = bitcast <32 x i1> %i.cdf to i32
  %.not5891 = icmp eq i32 %i.cdg, 0
  br i1 %.not5891, label %vector.body.interim5765, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

vector.body.interim5765:                          ; preds = %vector.body5760
  %vec.ind.next5764 = add <32 x i32> %vec.ind5762, %broadcast.splat5759
  %index.next5763 = add nuw i64 %index5761, 32    ; 2 uses
  %i.cdh = icmp eq i64 %index.next5763, %n.vec5748
  br i1 %i.cdh, label %middle.block5766, label %vector.body5760, !llvm.loop !2986

middle.block5766:                                 ; preds = %vector.body.interim5765
  %cmp.n5767 = icmp eq i64 %i.ccv, %n.vec5748
  br i1 %cmp.n5767, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph, %middle.block5766
  %.ph5961 = phi i64 [ %i.ccv, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph ], [ %i.ccx, %middle.block5766 ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419.ph = phi i32 [ %i.cbp, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.lr.ph ], [ %i.cda, %middle.block5766 ]
  br label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382
  %i.cdi = add nsw i64 %i.cdk, -1                 ; 2 uses
  %i.cdj = icmp eq i64 %i.cdi, 0
  br i1 %i.cdj, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382, !llvm.loop !2987

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382:       ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379
  %i.cdk = phi i64 [ %i.cdi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379 ], [ %.ph5961, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419 = phi i32 [ %i.cdl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379 ], [ %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419.ph, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382.preheader ]
  %i.cdl = add nsw i32 %.043.us.us96.us.i.i.i.i.i.i.i.i.i3805419, %i.cbn ; 2 uses
  %.not16.us.us102.us.i.i.i.i.i.i.i.i.i383 = icmp eq i32 %i.cdl, %i.cbq
  br i1 %.not16.us.us102.us.i.i.i.i.i.i.i.i.i383, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379, !llvm.loop !2985

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i365
  %i.cdm = load ptr, ptr %i.cbv, align 8, !tbaa !331
  %i.cdn = sext i32 %i.cbp to i64
  %i.cdo = sext i32 %i.cbn to i64
  %i.cdp = sext i32 %i.bzf to i64
  %invariant.gep193.i.i.i.i.i.i.i.i.i367 = getelementptr [4 x i8], ptr %i.cdm, i64 %i.cdp
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i372, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366
  %indvars.iv154.i.i.i.i.i.i.i.i.i369 = phi i64 [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i374, %.critedge.us.i.i.i.i.i.i.i.i.i372 ], [ %i.cdn, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366 ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i370 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i373, %.critedge.us.i.i.i.i.i.i.i.i.i372 ], [ %i.cbo, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i366 ] ; 2 uses
  %gep194.i.i.i.i.i.i.i.i.i371 = getelementptr [4 x i8], ptr %invariant.gep193.i.i.i.i.i.i.i.i.i367, i64 %indvars.iv154.i.i.i.i.i.i.i.i.i369
  %i.cdq = load i32, ptr %gep194.i.i.i.i.i.i.i.i.i371, align 4, !tbaa !3
  %i.cdr = sext i32 %i.cdq to i64
  %i.cds = getelementptr inbounds i8, ptr %i.ccb, i64 %i.cdr
  %i.cdt = load i8, ptr %i.cds, align 1, !tbaa !30
  %i.cdu = icmp eq i8 %i.cdt, %i.bzz
  br i1 %i.cdu, label %bb.ms, label %.critedge.us.i.i.i.i.i.i.i.i.i372

bb.ms:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368
  %i.cdv = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i370, -1 ; 2 uses
  %i.cdw = icmp eq i64 %i.cdv, 0
  br i1 %i.cdw, label %.split.us.loopexit112.i.i.i.i.i.i.i.i.i376, label %.critedge.us.i.i.i.i.i.i.i.i.i372

.critedge.us.i.i.i.i.i.i.i.i.i372:                ; preds = %bb.ms, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368
  %.1.us.i.i.i.i.i.i.i.i.i373 = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i370, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368 ], [ %i.cdv, %bb.ms ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i374 = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i369, %i.cdo ; 2 uses
  %i.cdx = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i374 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i375 = icmp eq i32 %i.cbq, %i.cdx
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i375, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i368, !llvm.loop !2985

.lr.ph.split.i.i.i.i.i.i.i.i.i286:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i284
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cbr, i64 57
  %i.cdz = load i8, ptr %i.cdy, align 1, !range !73
  %i.cea = trunc nuw i8 %i.cdz to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i287 = select i1 %i.cca, i1 true, i1 %i.cea
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i287, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i288

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i286
  %i.ceb = sext i32 %i.cbp to i64
  %i.cec = sext i32 %i.cbn to i64
  %i.ced = sext i32 %i.bzf to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353:       ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i359, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352
  %indvars.iv151.i.i.i.i.i.i.i.i.i354 = phi i64 [ %i.ceb, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352 ], [ %indvars.iv.next152.i.i.i.i.i.i.i.i.i361, %.critedge.us50.i.i.i.i.i.i.i.i.i359 ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i355 = phi i64 [ %i.cbo, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i352 ], [ %.1.us51.i.i.i.i.i.i.i.i.i360, %.critedge.us50.i.i.i.i.i.i.i.i.i359 ] ; 3 uses
  %i.cee = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i354, %i.ced ; 4 uses
  %i.cef = lshr i64 %i.cee, 6
  %i.ceg = and i64 %i.cef, 67108863
  %i.ceh = getelementptr inbounds nuw [8 x i8], ptr %i.cbt, i64 %i.ceg
  %i.cei = load i64, ptr %i.ceh, align 8, !tbaa !137
  %i.cej = and i64 %i.cee, 63
  %i.cek = shl nuw i64 1, %i.cej
  %i.cel = and i64 %i.cek, %i.cei
  %.not.i.i.us.i.i.i.i.i.i.i.i.i356 = icmp eq i64 %i.cel, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i356, label %.critedge.us50.i.i.i.i.i.i.i.i.i359, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353
  %i.cem = trunc nsw i64 %i.cee to i32
  %i.cen = load ptr, ptr %i.cbw, align 8, !tbaa !487
  br i1 %i.cca, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.mt

bb.mt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357
  %i.ceo = load i8, ptr %i.cbu, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cep = trunc nuw i8 %i.ceo to i1
  br i1 %i.cep, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.ceq = load ptr, ptr %i.cbv, align 8, !tbaa !331
  %i.cer = getelementptr inbounds [4 x i8], ptr %i.ceq, i64 %i.cee
  %i.ces = load i32, ptr %i.cer, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.cet = load i32, ptr %i.cby, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.mv, %bb.mu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i358 = phi i32 [ %i.ces, %bb.mu ], [ %i.cet, %bb.mv ], [ %i.cem, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i357 ]
  %i.ceu = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i358 to i64
  %i.cev = getelementptr inbounds i8, ptr %i.cen, i64 %i.ceu
  %i.cew = load i8, ptr %i.cev, align 1, !tbaa !30
  %i.cex = icmp eq i8 %i.cew, %i.bzz
  br i1 %i.cex, label %bb.mw, label %.critedge.us50.i.i.i.i.i.i.i.i.i359

bb.mw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.cey = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i355, -1 ; 2 uses
  %i.cez = icmp eq i64 %i.cey, 0
  br i1 %i.cez, label %.split.us.loopexit114.i.i.i.i.i.i.i.i.i363, label %.critedge.us50.i.i.i.i.i.i.i.i.i359

.critedge.us50.i.i.i.i.i.i.i.i.i359:              ; preds = %bb.mw, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353
  %.1.us51.i.i.i.i.i.i.i.i.i360 = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i355, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.cey, %bb.mw ], [ %.03542.us46.i.i.i.i.i.i.i.i.i355, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353 ]
  %indvars.iv.next152.i.i.i.i.i.i.i.i.i361 = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i354, %i.cec ; 2 uses
  %i.cfa = trunc nsw i64 %indvars.iv.next152.i.i.i.i.i.i.i.i.i361 to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i362 = icmp eq i32 %i.cbq, %i.cfa
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i362, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i353, !llvm.loop !2985

.lr.ph.split.split.i.i.i.i.i.i.i.i.i288:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i286
  %i.cfb = load i8, ptr %i.cbu, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cfc = trunc nuw i8 %i.cfb to i1
  br i1 %i.cfc, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i288
  %i.cfd = load i64, ptr %i.cbt, align 8, !tbaa !137
  %i.cfe = and i64 %i.cfd, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i344 = icmp eq i64 %i.cfe, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i344, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343
  %i.cff = load ptr, ptr %i.cbw, align 8, !tbaa !487
  %i.cfg = load i32, ptr %i.cby, align 8, !tbaa !488
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = getelementptr inbounds i8, ptr %i.cff, i64 %i.cfh
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !30
  %i.cfk = icmp eq i8 %i.cfj, %i.bzz
  br i1 %i.cfk, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345
  %i.cfl = trunc i64 %i.cbo to i32
  %i.cfm = add i32 %i.cfl, -1
  %i.cfn = mul i32 %i.cfm, %i.cbn
  %i.cfo = add i32 %i.cbp, %i.cfn                 ; 3 uses
  %i.cfp = add nsw i64 %i.cbo, -1                 ; 5 uses
  %i.cfq = icmp eq i64 %i.cfp, 0
  br i1 %i.cfq, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346
  %min.iters.check5772 = icmp samesign ult i64 %i.cbo, 33
  br i1 %min.iters.check5772, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader, label %vector.ph5773

vector.ph5773:                                    ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph
  %n.vec5775 = and i64 %i.cfp, -32                ; 3 uses
  %i.cfr = and i64 %i.cfp, 31
  %i.cfs = trunc i64 %n.vec5775 to i32
  %i.cft = mul i32 %i.cbn, %i.cfs
  %i.cfu = add i32 %i.cbp, %i.cft
  %broadcast.splatinsert5776 = insertelement <32 x i32> poison, i32 %i.cbn, i64 0
  %broadcast.splat5777 = shufflevector <32 x i32> %broadcast.splatinsert5776, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5778 = insertelement <32 x i32> poison, i32 %i.cbq, i64 0
  %broadcast.splat5779 = shufflevector <32 x i32> %broadcast.splatinsert5778, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5780 = insertelement <32 x i32> poison, i32 %i.cbp, i64 0
  %broadcast.splat5781 = shufflevector <32 x i32> %broadcast.splatinsert5780, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5782 = insertelement <32 x i32> poison, i32 %i.cbn, i64 0
  %broadcast.splat5783 = shufflevector <32 x i32> %broadcast.splatinsert5782, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.cfv = mul <32 x i32> %broadcast.splat5783, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5784 = add <32 x i32> %broadcast.splat5781, %i.cfv
  %i.cfw = shl nsw i32 %i.cbn, 5
  %broadcast.splatinsert5785 = insertelement <32 x i32> poison, i32 %i.cfw, i64 0
  %broadcast.splat5786 = shufflevector <32 x i32> %broadcast.splatinsert5785, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5787

vector.body5787:                                  ; preds = %vector.body.interim5792, %vector.ph5773
  %index5788 = phi i64 [ 0, %vector.ph5773 ], [ %index.next5790, %vector.body.interim5792 ]
  %vec.ind5789 = phi <32 x i32> [ %induction5784, %vector.ph5773 ], [ %vec.ind.next5791, %vector.body.interim5792 ] ; 2 uses
  %i.cfx = add nsw <32 x i32> %vec.ind5789, %broadcast.splat5777
  %i.cfy = icmp eq <32 x i32> %i.cfx, %broadcast.splat5779
  %i.cfz = freeze <32 x i1> %i.cfy
  %i.cga = bitcast <32 x i1> %i.cfz to i32
  %.not5890 = icmp eq i32 %i.cga, 0
  br i1 %.not5890, label %vector.body.interim5792, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

vector.body.interim5792:                          ; preds = %vector.body5787
  %vec.ind.next5791 = add <32 x i32> %vec.ind5789, %broadcast.splat5786
  %index.next5790 = add nuw i64 %index5788, 32    ; 2 uses
  %i.cgb = icmp eq i64 %index.next5790, %n.vec5775
  br i1 %i.cgb, label %middle.block5793, label %vector.body5787, !llvm.loop !2988

middle.block5793:                                 ; preds = %vector.body.interim5792
  %cmp.n5794 = icmp eq i64 %i.cfp, %n.vec5775
  br i1 %cmp.n5794, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph, %middle.block5793
  %.ph5966 = phi i64 [ %i.cfp, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph ], [ %i.cfr, %middle.block5793 ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418.ph = phi i32 [ %i.cbp, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.lr.ph ], [ %i.cfu, %middle.block5793 ]
  br label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350
  %i.cgc = add nsw i64 %i.cge, -1                 ; 2 uses
  %i.cgd = icmp eq i64 %i.cgc, 0
  br i1 %i.cgd, label %.split.us.i.i.i.i.i.i.i.i.i334, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350, !llvm.loop !2989

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350:      ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347
  %i.cge = phi i64 [ %i.cgc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347 ], [ %.ph5966, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418 = phi i32 [ %i.cgf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347 ], [ %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418.ph, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350.preheader ]
  %i.cgf = add nsw i32 %.043.us57.us80.us.i.i.i.i.i.i.i.i.i3485418, %i.cbn ; 2 uses
  %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i351 = icmp eq i32 %i.cgf, %i.cbq
  br i1 %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i351, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347, !llvm.loop !2985

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i288
  %i.cgg = load ptr, ptr %i.cbv, align 8, !tbaa !331
  %i.cgh = sext i32 %i.cbp to i64
  %i.cgi = sext i32 %i.cbn to i64
  %i.cgj = sext i32 %i.bzf to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i290 = getelementptr [4 x i8], ptr %i.cgg, i64 %i.cgj
  br label %bb.mx

bb.mx:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i295, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289
  %indvars.iv.i.i.i.i.i.i.i.i.i291 = phi i64 [ %i.cgh, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i297, %.critedge.i.i.i.i.i.i.i.i.i295 ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i292 = phi i64 [ %i.cbo, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i289 ], [ %.1.i.i.i.i.i.i.i.i.i296, %.critedge.i.i.i.i.i.i.i.i.i295 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i293 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i290, i64 %indvars.iv.i.i.i.i.i.i.i.i.i291
  %i.cgk = load i32, ptr %gep.i.i.i.i.i.i.i.i.i293, align 4, !tbaa !3 ; 2 uses
  %i.cgl = zext i32 %i.cgk to i64                 ; 2 uses
  %i.cgm = lshr i64 %i.cgl, 6
  %i.cgn = getelementptr inbounds nuw [8 x i8], ptr %i.cbt, i64 %i.cgm
  %i.cgo = load i64, ptr %i.cgn, align 8, !tbaa !137
  %i.cgp = and i64 %i.cgl, 63
  %i.cgq = shl nuw i64 1, %i.cgp
  %i.cgr = and i64 %i.cgq, %i.cgo
  %.not.i7.i.i.i.i.i.i.i.i.i.i294 = icmp eq i64 %i.cgr, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i294, label %.critedge.i.i.i.i.i.i.i.i.i295, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.mx
  %i.cgs = load ptr, ptr %i.cbw, align 8, !tbaa !487
  %i.cgt = sext i32 %i.cgk to i64
  %i.cgu = getelementptr inbounds i8, ptr %i.cgs, i64 %i.cgt
  %i.cgv = load i8, ptr %i.cgu, align 1, !tbaa !30
  %i.cgw = icmp eq i8 %i.cgv, %i.bzz
  br i1 %i.cgw, label %bb.my, label %.critedge.i.i.i.i.i.i.i.i.i295

bb.my:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.cgx = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i292, -1 ; 2 uses
  %i.cgy = icmp eq i64 %i.cgx, 0
  br i1 %i.cgy, label %.split.us.loopexit124.i.i.i.i.i.i.i.i.i333, label %.critedge.i.i.i.i.i.i.i.i.i295

.split.us.loopexit.i.i.i.i.i.i.i.i.i394:          ; preds = %bb.mr
  %i.cgz = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i387 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.loopexit112.i.i.i.i.i.i.i.i.i376:       ; preds = %bb.ms
  %i.cha = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i369 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.loopexit114.i.i.i.i.i.i.i.i.i363:       ; preds = %bb.mw
  %i.chb = trunc nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i354 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.loopexit124.i.i.i.i.i.i.i.i.i333:       ; preds = %bb.my
  %i.chc = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i291 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i334

.split.us.i.i.i.i.i.i.i.i.i334:                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346, %middle.block5793, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378, %middle.block5766, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i333, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i363, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i376, %.split.us.loopexit.i.i.i.i.i.i.i.i.i394
  %.us-phi.i.i.i.i.i.i.i.i.i335 = phi i32 [ %i.chb, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i363 ], [ %i.chc, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i333 ], [ %i.cgz, %.split.us.loopexit.i.i.i.i.i.i.i.i.i394 ], [ %i.cha, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i376 ], [ %i.ccu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i378 ], [ %i.ccu, %middle.block5766 ], [ %i.cfo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i346 ], [ %i.cfo, %middle.block5793 ], [ %i.ccu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i379 ], [ %i.cfo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i347 ] ; 3 uses
  %i.chd = load ptr, ptr %.sroa.12.0..sroa_idx.i252, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.che = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i335, 1
  %i.chf = sext i32 %i.che to i64
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chd, i64 144 ; 2 uses
  %i.chh = load ptr, ptr %i.chg, align 8, !tbaa !341 ; 2 uses
  %i.chi = icmp eq ptr %i.chh, null
  br i1 %i.chi, label %bb.mz, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336

bb.mz:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i334
  %i.chj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.chd)
          to label %.noexc19.i.i.i.i.i.i.i.i341 unwind label %bb.ne ; 0 uses

.noexc19.i.i.i.i.i.i.i.i341:                      ; preds = %bb.mz
  %.pre.i.i.i.i.i.i.i.i.i.i342 = load ptr, ptr %i.chg, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336: ; preds = %.noexc19.i.i.i.i.i.i.i.i341, %.split.us.i.i.i.i.i.i.i.i.i334
  %i.chk = phi ptr [ %i.chh, %.split.us.i.i.i.i.i.i.i.i.i334 ], [ %.pre.i.i.i.i.i.i.i.i.i.i342, %.noexc19.i.i.i.i.i.i.i.i341 ]
  %i.chl = getelementptr inbounds [8 x i8], ptr %i.chk, i64 %i.cbd
  store i64 %i.chf, ptr %i.chl, align 8, !tbaa !137
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chd, i64 32 ; 2 uses
  %i.chn = load ptr, ptr %i.chm, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i337 = icmp eq ptr %i.chn, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i337, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %bb.na

bb.na:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chd, i64 56
  %i.chp = load i32, ptr %i.cho, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.chd, i32 noundef %i.chp, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i338 unwind label %bb.ne

.noexc20.i.i.i.i.i.i.i.i338:                      ; preds = %bb.na
  %i.chq = load ptr, ptr %i.chm, align 8, !tbaa !362 ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chq, i64 44
  %i.chs = load i8, ptr %i.chr, align 4, !tbaa !363
  %i.cht = and i8 %i.chs, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i339 = icmp eq i8 %i.cht, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i339, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340, label %.invoke.i.i.i.i.i.i.i.i328, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340: ; preds = %.noexc20.i.i.i.i.i.i.i.i338
  %i.chu = getelementptr inbounds nuw i8, ptr %i.chq, i64 16
  %i.chv = load ptr, ptr %i.chu, align 8, !tbaa !368
  %i.chw = lshr i64 %.074.i.i.i.i.i.i.i.i275, 3
  %i.chx = and i64 %i.chw, 536870911
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chv, i64 %i.chx ; 2 uses
  %i.chz = load i8, ptr %i.chy, align 1, !tbaa !30
  %i.cia = trunc i64 %.074.i.i.i.i.i.i.i.i275 to i8
  %i.cib = and i8 %i.cia, 7
  %i.cic = shl nuw i8 1, %i.cib
  %i.cid = or i8 %i.chz, %i.cic
  store i8 %i.cid, ptr %i.chy, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299

.critedge.i.i.i.i.i.i.i.i.i295:                   ; preds = %bb.my, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.mx
  %.1.i.i.i.i.i.i.i.i.i296 = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i292, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.cgx, %bb.my ], [ %.03542.i.i.i.i.i.i.i.i.i292, %bb.mx ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i297 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i291, %i.cgi ; 2 uses
  %i.cie = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i297 to i32
  %.not16.i.i.i.i.i.i.i.i.i298 = icmp eq i32 %i.cbq, %i.cie
  br i1 %.not16.i.i.i.i.i.i.i.i.i298, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299, label %bb.mx, !llvm.loop !2985

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299: ; preds = %.critedge.i.i.i.i.i.i.i.i.i295, %vector.body5787, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350, %.critedge.us50.i.i.i.i.i.i.i.i.i359, %.critedge.us.i.i.i.i.i.i.i.i.i372, %vector.body5760, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382, %.critedge.us.us.i.i.i.i.i.i.i.i.i390, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377, %bb.mq
  %.040.i.i.i.i.i.i.i.i.i300 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i335, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i336 ], [ %.us-phi.i.i.i.i.i.i.i.i.i335, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i340 ], [ %i.cbp, %bb.mq ], [ %i.cbq, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i350 ], [ %i.cbq, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i382 ], [ %i.cbq, %.critedge.us50.i.i.i.i.i.i.i.i.i359 ], [ %i.cbq, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i345 ], [ %i.cbq, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i377 ], [ %i.cbq, %vector.body5760 ], [ %i.cbq, %.critedge.us.us.i.i.i.i.i.i.i.i.i390 ], [ %i.cbq, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i343 ], [ %i.cbq, %vector.body5787 ], [ %i.cbq, %.critedge.us.i.i.i.i.i.i.i.i.i372 ], [ %i.cbq, %.critedge.i.i.i.i.i.i.i.i.i295 ]
  %i.cif = load ptr, ptr %.sroa.952.0..sroa_idx.i249, align 8, !tbaa !2982, !nonnull !74, !align !497
  %i.cig = load i32, ptr %i.cif, align 4, !tbaa !3
  %i.cih = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i300, %i.cig
  br i1 %i.cih, label %bb.nb, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.nb:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i299
  %i.cii = load ptr, ptr %.sroa.12.0..sroa_idx.i252, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cii, i64 144 ; 2 uses
  %i.cik = load ptr, ptr %i.cij, align 8, !tbaa !341 ; 2 uses
  %i.cil = icmp eq ptr %i.cik, null
  br i1 %i.cil, label %bb.nc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301

bb.nc:                                            ; preds = %bb.nb
  %i.cim = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cii)
          to label %.noexc22.i.i.i.i.i.i.i.i331 unwind label %bb.ne ; 0 uses

.noexc22.i.i.i.i.i.i.i.i331:                      ; preds = %bb.nc
  %.pre.i26.i.i.i.i.i.i.i.i.i332 = load ptr, ptr %i.cij, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301: ; preds = %.noexc22.i.i.i.i.i.i.i.i331, %bb.nb
  %i.cin = phi ptr [ %i.cik, %bb.nb ], [ %.pre.i26.i.i.i.i.i.i.i.i.i332, %.noexc22.i.i.i.i.i.i.i.i331 ]
  %i.cio = getelementptr inbounds [8 x i8], ptr %i.cin, i64 %i.cbd
  store i64 0, ptr %i.cio, align 8, !tbaa !137
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cii, i64 32 ; 2 uses
  %i.ciq = load ptr, ptr %i.cip, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i302 = icmp eq ptr %i.ciq, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i302, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.nd

bb.nd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i301
  %i.cir = getelementptr inbounds nuw i8, ptr %i.cii, i64 56
  %i.cis = load i32, ptr %i.cir, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.cii, i32 noundef %i.cis, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i326 unwind label %bb.ne

.noexc23.i.i.i.i.i.i.i.i326:                      ; preds = %bb.nd
  %i.cit = load ptr, ptr %i.cip, align 8, !tbaa !362 ; 2 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cit, i64 44
  %i.civ = load i8, ptr %i.ciu, align 4, !tbaa !363
  %i.ciw = and i8 %i.civ, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i327 = icmp eq i8 %i.ciw, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i327, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i330, label %.invoke.i.i.i.i.i.i.i.i328, !prof !69
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.dav = sub nsw i32 64, %i.das
  %i.daw = zext nneg i32 %i.dav to i64
  %i.dax = shl i64 %i.dau, %i.daw
  %i.day = and i64 %i.dax, %i.dar
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %163, i32 noundef %i.dao, i64 noundef %i.day)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.re:                                            ; preds = %bb.rc
  %.not32.i.i.i.i.i.i.i579 = icmp eq i32 %i.dag, %i.dal
  br i1 %.not32.i.i.i.i.i.i.i579, label %bb.rg, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.daz = sdiv i32 %i.dag, 64
  %i.dba = sub nsw i32 %i.dal, %i.dag             ; 2 uses
  %i.dbb = zext nneg i32 %i.dba to i64
  %notmask.i.i35.i.i.i.i.i.i.i580 = shl nsw i64 -1, %i.dbb
  %i.dbc = xor i64 %notmask.i.i35.i.i.i.i.i.i.i580, -1
  %i.dbd = sub nsw i32 64, %i.dba
  %i.dbe = zext nneg i32 %i.dbd to i64
  %i.dbf = shl i64 %i.dbc, %i.dbe
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %163, i32 noundef %i.daz, i64 noundef %i.dbf)
  br label %bb.rg

bb.rg:                                            ; preds = %bb.rf, %bb.re
  %i.dbg = add nsw i32 %i.dal, 64                 ; 2 uses
  %.not3355.i.i.i.i.i.i.i581 = icmp sgt i32 %i.dbg, %i.dam
  br i1 %.not3355.i.i.i.i.i.i.i581, label %._crit_edge.i.i.i.i.i.i.i585, label %.lr.ph.i.i.i.i.i.i29.i582

.lr.ph.i.i.i.i.i.i29.i582:                        ; preds = %bb.rg
  %i.dbh = getelementptr inbounds nuw i8, ptr %157, i64 16
  %i.dbi = getelementptr inbounds nuw i8, ptr %158, i64 16 ; 2 uses
  br label %bb.rh

._crit_edge.i.i.i.i.i.i.i585:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.rg
  %.not34.i.i.i.i.i.i.i586 = icmp eq i32 %i.dai, %i.dam
  br i1 %.not34.i.i.i.i.i.i.i586, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.to

bb.rh:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i582
  %i.dbj = phi i32 [ %i.dbg, %.lr.ph.i.i.i.i.i.i29.i582 ], [ %i.dow, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i583 = phi i32 [ %i.dal, %.lr.ph.i.i.i.i.i.i29.i582 ], [ %i.dbj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.dbk = sdiv i32 %.056.i.i.i.i.i.i.i583, 64    ; 3 uses
  %i.dbl = sext i32 %i.dbk to i64
  %i.dbm = getelementptr inbounds [8 x i8], ptr %i.dae, i64 %i.dbl
  %i.dbn = load i64, ptr %i.dbm, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.dbn, label %.lr.ph.i.i.i.i.i.i.i.i715 [
    i64 -1, label %bb.ri
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i715:                        ; preds = %bb.rh
  %i.dbo = shl nsw i32 %i.dbk, 6
  br label %bb.sx

bb.ri:                                            ; preds = %bb.rh
  %i.dbp = shl nsw i32 %i.dbk, 6                  ; 2 uses
  %i.dbq = add i32 %i.dbp, 64
  %i.dbr = sext i32 %i.dbq to i64
  %.0.off.i.i.i.i.i.i.i588 = add i32 %.056.i.i.i.i.i.i.i583, 127
  %.not78.i.i.i.i.i.i.i.i589 = icmp ult i32 %.0.off.i.i.i.i.i.i.i588, 64
  br i1 %.not78.i.i.i.i.i.i.i.i589, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph77.i.i.i.i.i.i.i.i590

.lr.ph77.i.i.i.i.i.i.i.i590:                      ; preds = %bb.ri
  %i.dbs = sext i32 %i.dbp to i64
  br label %bb.rj

bb.rj:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph77.i.i.i.i.i.i.i.i590
  %.074.i.i.i.i.i.i.i.i591 = phi i64 [ %i.dbs, %.lr.ph77.i.i.i.i.i.i.i.i590 ], [ %i.dnj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.dbt = load ptr, ptr %167, align 8, !tbaa !3007, !nonnull !74, !align !275
  %i.dbu = load ptr, ptr %i.dbt, align 8, !tbaa !329
  %i.dbv = load ptr, ptr %.sroa.447.0..sroa_idx.i560, align 8, !tbaa !3009, !nonnull !74, !align !275
  %i.dbw = load ptr, ptr %i.dbv, align 8, !tbaa !329 ; 2 uses
  %i.dbx = getelementptr inbounds nuw [4 x i8], ptr %i.dbw, i64 %.074.i.i.i.i.i.i.i.i591
  %i.dby = load i32, ptr %i.dbx, align 4, !tbaa !3
  %i.dbz = sext i32 %i.dby to i64
  %i.dca = getelementptr inbounds [4 x i8], ptr %i.dbu, i64 %i.dbz
  %i.dcb = load i32, ptr %i.dca, align 4, !tbaa !3 ; 4 uses
  %i.dcc = load ptr, ptr %.sroa.548.0..sroa_idx.i561, align 8, !tbaa !3010, !nonnull !74, !align !275 ; 5 uses
  %i.dcd = trunc i64 %.074.i.i.i.i.i.i.i.i591 to i32 ; 4 uses
  %i.dce = getelementptr inbounds nuw i8, ptr %i.dcc, i64 16
  %i.dcf = load ptr, ptr %i.dce, align 8, !tbaa !487
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dcc, i64 58
  %i.dch = load i8, ptr %i.dcg, align 2, !tbaa !338, !range !73, !noundef !74
  %i.dci = trunc nuw i8 %i.dch to i1
  br i1 %i.dci, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.dcj = getelementptr inbounds nuw i8, ptr %i.dcc, i64 59
  %i.dck = load i8, ptr %i.dcj, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dcl = trunc nuw i8 %i.dck to i1
  br i1 %i.dcl, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcc, i64 64
  %i.dcn = load i32, ptr %i.dcm, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i

bb.rm:                                            ; preds = %bb.rk
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcc, i64 8
  %i.dcp = load ptr, ptr %i.dco, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i592 = shl i64 %.074.i.i.i.i.i.i.i.i591, 32
  %i.dcq = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i592, 30
  %i.dcr = getelementptr inbounds i8, ptr %i.dcp, i64 %i.dcq
  %i.dcs = load i32, ptr %i.dcr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.rm, %bb.rl, %bb.rj
  %.0.i.i.i.i.i.i.i.i.i.i.i593 = phi i32 [ %i.dcs, %bb.rm ], [ %i.dcn, %bb.rl ], [ %i.dcd, %bb.rj ]
  %i.dct = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i593 to i64
  %i.dcu = getelementptr inbounds [2 x i8], ptr %i.dcf, i64 %i.dct
  %i.dcv = load i16, ptr %i.dcu, align 2, !tbaa !2009 ; 6 uses
  %i.dcw = load ptr, ptr %.sroa.649.0..sroa_idx.i562, align 8, !tbaa !3011, !nonnull !74, !align !275 ; 5 uses
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcw, i64 16
  %i.dcy = load ptr, ptr %i.dcx, align 8, !tbaa !487
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcw, i64 58
  %i.dda = load i8, ptr %i.dcz, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ddb = trunc nuw i8 %i.dda to i1
  br i1 %i.ddb, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595, label %bb.rn

bb.rn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.dcw, i64 59
  %i.ddd = load i8, ptr %i.ddc, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dde = trunc nuw i8 %i.ddd to i1
  br i1 %i.dde, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dcw, i64 64
  %i.ddg = load i32, ptr %i.ddf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595

bb.rp:                                            ; preds = %bb.rn
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dcw, i64 8
  %i.ddi = load ptr, ptr %i.ddh, align 8, !tbaa !331
  %sext37.i.i.i.i.i.i.i.i.i594 = shl i64 %.074.i.i.i.i.i.i.i.i591, 32
  %i.ddj = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i594, 30
  %i.ddk = getelementptr inbounds i8, ptr %i.ddi, i64 %i.ddj
  %i.ddl = load i32, ptr %i.ddk, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595: ; preds = %bb.rp, %bb.ro, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i596 = phi i32 [ %i.ddl, %bb.rp ], [ %i.ddg, %bb.ro ], [ %i.dcd, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.ddm = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i596 to i64
  %i.ddn = getelementptr inbounds [8 x i8], ptr %i.dcy, i64 %i.ddm
  %i.ddo = load i64, ptr %i.ddn, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i597 = icmp eq i64 %i.ddo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i597, label %bb.rq, label %bb.rt, !prof !48

bb.rq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #35, !noalias !3012
  store i64 0, ptr %157, align 16, !tbaa !30, !noalias !3012
  store i32 0, ptr %i.dbh, align 16, !tbaa !30, !alias.scope !3015, !noalias !3012
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %158, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %157)
          to label %.noexc.i.i.i.i.i.i.i.i711 unwind label %bb.sh

.noexc.i.i.i.i.i.i.i.i711:                        ; preds = %bb.rq
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #35, !noalias !3012
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %158, ptr nonnull @.str.178) #38
          to label %bb.rr unwind label %bb.rs

bb.rr:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i711
  unreachable

bb.rs:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i711
  %i.ddp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ddq = load ptr, ptr %158, align 8, !tbaa !49 ; 2 uses
  %i.ddr = icmp eq ptr %i.ddq, %i.dbi
  br i1 %i.ddr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i712: ; preds = %bb.rs
  %i.dds = load i64, ptr %i.dbi, align 8, !tbaa !30
  %i.ddt = add i64 %i.dds, 1
  call void @_ZdlPvm(ptr noundef %i.ddq, i64 noundef %i.ddt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i713

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i713: ; preds = %bb.rs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i712
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #35
  br label %.body.i.i.i.i.i.i.i.i619

bb.rt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i595
  %i.ddu = load ptr, ptr %.sroa.750.0..sroa_idx.i563, align 8, !tbaa !3018, !nonnull !74, !align !275
  %i.ddv = load ptr, ptr %i.ddu, align 8, !tbaa !329
  %i.ddw = load ptr, ptr %.sroa.851.0..sroa_idx.i564, align 8, !tbaa !3019, !nonnull !74, !align !497 ; 2 uses
  %i.ddx = load ptr, ptr %.sroa.952.0..sroa_idx.i565, align 8, !tbaa !3020, !nonnull !74, !align !497 ; 2 uses
  %i.ddy = load ptr, ptr %.sroa.1053.0..sroa_idx.i566, align 8, !tbaa !3021, !nonnull !74, !align !497
  %sext38.i.i.i.i.i.i.i.i.i598 = shl i64 %.074.i.i.i.i.i.i.i.i591, 32
  %i.ddz = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i598, 32 ; 3 uses
  %i.dea = getelementptr inbounds [4 x i8], ptr %i.dbw, i64 %i.ddz
  %i.deb = load i32, ptr %i.dea, align 4, !tbaa !3
  %i.dec = sext i32 %i.deb to i64
  %i.ded = getelementptr inbounds [4 x i8], ptr %i.ddv, i64 %i.dec
  %i.dee = load i32, ptr %i.ded, align 4, !tbaa !3 ; 2 uses
  %i.def = icmp sgt i64 %i.ddo, 0                 ; 3 uses
  %i.deg = add nsw i32 %i.dee, -1
  %i.deh = select i1 %i.def, i32 0, i32 %i.deg
  store i32 %i.deh, ptr %i.ddw, align 4, !tbaa !3
  %i.dei = select i1 %i.def, i32 %i.dee, i32 -1
  store i32 %i.dei, ptr %i.ddx, align 4, !tbaa !3
  %i.dej = select i1 %i.def, i32 1, i32 -1        ; 17 uses
  store i32 %i.dej, ptr %i.ddy, align 4, !tbaa !3
  %i.dek = call noundef i64 @llvm.abs.i64(i64 %i.ddo, i1 true) ; 10 uses
  %i.del = load i32, ptr %i.ddw, align 4, !tbaa !3 ; 14 uses
  %i.dem = load i32, ptr %i.ddx, align 4, !tbaa !3 ; 20 uses
  %.not1641.i.i.i.i.i.i.i.i.i599 = icmp eq i32 %i.del, %i.dem
  br i1 %.not1641.i.i.i.i.i.i.i.i.i599, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %.lr.ph.i.i.i.i.i.i.i.i.i600

.lr.ph.i.i.i.i.i.i.i.i.i600:                      ; preds = %bb.rt
  %i.den = load ptr, ptr %.sroa.11.0..sroa_idx.i567, align 8, !tbaa !3022, !nonnull !74, !align !275 ; 7 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 24
  %i.dep = load ptr, ptr %i.deo, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i601 = icmp eq ptr %i.dep, null
  %i.deq = getelementptr inbounds nuw i8, ptr %i.den, i64 59 ; 3 uses
  %i.der = getelementptr inbounds nuw i8, ptr %i.den, i64 8 ; 3 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.den, i64 16 ; 4 uses
  %i.det = getelementptr inbounds nuw i8, ptr %i.den, i64 58
  %i.deu = getelementptr inbounds nuw i8, ptr %i.den, i64 64 ; 3 uses
  %i.dev = load i8, ptr %i.det, align 2, !tbaa !338, !range !73, !noundef !74
  %i.dew = trunc nuw i8 %i.dev to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i601, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i680, label %.lr.ph.split.i.i.i.i.i.i.i.i.i602

.lr.ph.split.us.i.i.i.i.i.i.i.i.i680:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i600
  %i.dex = load ptr, ptr %i.des, align 8, !tbaa !487 ; 3 uses
  br i1 %i.dew, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i680
  %i.dey = sext i32 %i.del to i64
  %i.dez = sext i32 %i.dej to i64
  %i.dfa = sext i32 %i.dcb to i64
  %invariant.gep195.i.i.i.i.i.i.i.i.i701 = getelementptr [2 x i8], ptr %i.dex, i64 %i.dfa
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i706, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700
  %indvars.iv157.i.i.i.i.i.i.i.i.i703 = phi i64 [ %i.dey, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700 ], [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i708, %.critedge.us.us.i.i.i.i.i.i.i.i.i706 ] ; 3 uses
  %.03542.us.us.i.i.i.i.i.i.i.i.i704 = phi i64 [ %i.dek, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i700 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i707, %.critedge.us.us.i.i.i.i.i.i.i.i.i706 ] ; 2 uses
  %gep196.i.i.i.i.i.i.i.i.i705 = getelementptr [2 x i8], ptr %invariant.gep195.i.i.i.i.i.i.i.i.i701, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i703
  %i.dfb = load i16, ptr %gep196.i.i.i.i.i.i.i.i.i705, align 2, !tbaa !2009
  %i.dfc = icmp eq i16 %i.dfb, %i.dcv
  br i1 %i.dfc, label %bb.ru, label %.critedge.us.us.i.i.i.i.i.i.i.i.i706

bb.ru:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702
  %i.dfd = add nsw i64 %.03542.us.us.i.i.i.i.i.i.i.i.i704, -1 ; 2 uses
  %i.dfe = icmp eq i64 %i.dfd, 0
  br i1 %i.dfe, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i710, label %.critedge.us.us.i.i.i.i.i.i.i.i.i706

.critedge.us.us.i.i.i.i.i.i.i.i.i706:             ; preds = %bb.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702
  %.1.us.us.i.i.i.i.i.i.i.i.i707 = phi i64 [ %.03542.us.us.i.i.i.i.i.i.i.i.i704, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702 ], [ %i.dfd, %bb.ru ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i708 = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i703, %i.dez ; 2 uses
  %i.dff = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i708 to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i709 = icmp eq i32 %i.dem, %i.dff
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i709, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i702, !llvm.loop !3023

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i680
  %i.dfg = load i8, ptr %i.deq, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dfh = trunc nuw i8 %i.dfg to i1
  br i1 %i.dfh, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681
  %i.dfi = load i32, ptr %i.deu, align 8, !tbaa !488
  %i.dfj = sext i32 %i.dfi to i64
  %i.dfk = getelementptr inbounds [2 x i8], ptr %i.dex, i64 %i.dfj
  %i.dfl = load i16, ptr %i.dfk, align 2, !tbaa !2009
  %i.dfm = icmp eq i16 %i.dfl, %i.dcv
  br i1 %i.dfm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693
  %i.dfn = trunc i64 %i.dek to i32
  %i.dfo = add i32 %i.dfn, -1
  %i.dfp = mul i32 %i.dfo, %i.dej
  %i.dfq = add i32 %i.del, %i.dfp                 ; 3 uses
  %i.dfr = add nsw i64 %i.dek, -1                 ; 5 uses
  %i.dfs = icmp eq i64 %i.dfr, 0
  br i1 %i.dfs, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694
  %min.iters.check5691 = icmp samesign ult i64 %i.dek, 33
  br i1 %min.iters.check5691, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader, label %vector.ph5692

vector.ph5692:                                    ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph
  %n.vec5694 = and i64 %i.dfr, -32                ; 3 uses
  %i.dft = and i64 %i.dfr, 31
  %i.dfu = trunc i64 %n.vec5694 to i32
  %i.dfv = mul i32 %i.dej, %i.dfu
  %i.dfw = add i32 %i.del, %i.dfv
  %broadcast.splatinsert5695 = insertelement <32 x i32> poison, i32 %i.dej, i64 0
  %broadcast.splat5696 = shufflevector <32 x i32> %broadcast.splatinsert5695, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5697 = insertelement <32 x i32> poison, i32 %i.dem, i64 0
  %broadcast.splat5698 = shufflevector <32 x i32> %broadcast.splatinsert5697, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5699 = insertelement <32 x i32> poison, i32 %i.del, i64 0
  %broadcast.splat5700 = shufflevector <32 x i32> %broadcast.splatinsert5699, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5701 = insertelement <32 x i32> poison, i32 %i.dej, i64 0
  %broadcast.splat5702 = shufflevector <32 x i32> %broadcast.splatinsert5701, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.dfx = mul <32 x i32> %broadcast.splat5702, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5703 = add <32 x i32> %broadcast.splat5700, %i.dfx
  %i.dfy = shl nsw i32 %i.dej, 5
  %broadcast.splatinsert5704.a = insertelement <32 x i32> poison, i32 %i.dfy, i64 0
  %broadcast.splat5705.a = shufflevector <32 x i32> %broadcast.splatinsert5704.a, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5706

vector.body5706:                                  ; preds = %vector.body.interim5711, %vector.ph5692
  %index5707 = phi i64 [ 0, %vector.ph5692 ], [ %index.next5709, %vector.body.interim5711 ]
  %vec.ind5708 = phi <32 x i32> [ %induction5703, %vector.ph5692 ], [ %vec.ind.next5710, %vector.body.interim5711 ] ; 2 uses
  %i.dfz = add nsw <32 x i32> %vec.ind5708, %broadcast.splat5696
  %i.dga = icmp eq <32 x i32> %i.dfz, %broadcast.splat5698
  %i.dgb = freeze <32 x i1> %i.dga
  %i.dgc = bitcast <32 x i1> %i.dgb to i32
  %.not5889 = icmp eq i32 %i.dgc, 0
  br i1 %.not5889, label %vector.body.interim5711, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

vector.body.interim5711:                          ; preds = %vector.body5706
  %vec.ind.next5710 = add <32 x i32> %vec.ind5708, %broadcast.splat5705.a
  %index.next5709 = add nuw i64 %index5707, 32    ; 2 uses
  %i.dgd = icmp eq i64 %index.next5709, %n.vec5694
  br i1 %i.dgd, label %middle.block5712, label %vector.body5706, !llvm.loop !3024

middle.block5712:                                 ; preds = %vector.body.interim5711
  %cmp.n5713 = icmp eq i64 %i.dfr, %n.vec5694
  br i1 %cmp.n5713, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph, %middle.block5712
  %.ph5993 = phi i64 [ %i.dfr, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph ], [ %i.dft, %middle.block5712 ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411.ph = phi i32 [ %i.del, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.lr.ph ], [ %i.dfw, %middle.block5712 ]
  br label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695: ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698
  %i.dge = add nsw i64 %i.dgg, -1                 ; 2 uses
  %i.dgf = icmp eq i64 %i.dge, 0
  br i1 %i.dgf, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698, !llvm.loop !3025

.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698:       ; preds = %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695
  %i.dgg = phi i64 [ %i.dge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695 ], [ %.ph5993, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader ]
  %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411 = phi i32 [ %i.dgh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695 ], [ %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411.ph, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698.preheader ]
  %i.dgh = add nsw i32 %.043.us.us96.us.i.i.i.i.i.i.i.i.i6965411, %i.dej ; 2 uses
  %.not16.us.us102.us.i.i.i.i.i.i.i.i.i699 = icmp eq i32 %i.dgh, %i.dem
  br i1 %.not16.us.us102.us.i.i.i.i.i.i.i.i.i699, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695, !llvm.loop !3023

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i681
  %i.dgi = load ptr, ptr %i.der, align 8, !tbaa !331
  %i.dgj = sext i32 %i.del to i64
  %i.dgk = sext i32 %i.dej to i64
  %i.dgl = sext i32 %i.dcb to i64
  %invariant.gep193.i.i.i.i.i.i.i.i.i683 = getelementptr [4 x i8], ptr %i.dgi, i64 %i.dgl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i688, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682
  %indvars.iv154.i.i.i.i.i.i.i.i.i685 = phi i64 [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i690, %.critedge.us.i.i.i.i.i.i.i.i.i688 ], [ %i.dgj, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682 ] ; 3 uses
  %.03542.us.i.i.i.i.i.i.i.i.i686 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i689, %.critedge.us.i.i.i.i.i.i.i.i.i688 ], [ %i.dek, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i682 ] ; 2 uses
  %gep194.i.i.i.i.i.i.i.i.i687 = getelementptr [4 x i8], ptr %invariant.gep193.i.i.i.i.i.i.i.i.i683, i64 %indvars.iv154.i.i.i.i.i.i.i.i.i685
  %i.dgm = load i32, ptr %gep194.i.i.i.i.i.i.i.i.i687, align 4, !tbaa !3
  %i.dgn = sext i32 %i.dgm to i64
  %i.dgo = getelementptr inbounds [2 x i8], ptr %i.dex, i64 %i.dgn
  %i.dgp = load i16, ptr %i.dgo, align 2, !tbaa !2009
  %i.dgq = icmp eq i16 %i.dgp, %i.dcv
  br i1 %i.dgq, label %bb.rv, label %.critedge.us.i.i.i.i.i.i.i.i.i688

bb.rv:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684
  %i.dgr = add nsw i64 %.03542.us.i.i.i.i.i.i.i.i.i686, -1 ; 2 uses
  %i.dgs = icmp eq i64 %i.dgr, 0
  br i1 %i.dgs, label %.split.us.loopexit112.i.i.i.i.i.i.i.i.i692, label %.critedge.us.i.i.i.i.i.i.i.i.i688

.critedge.us.i.i.i.i.i.i.i.i.i688:                ; preds = %bb.rv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684
  %.1.us.i.i.i.i.i.i.i.i.i689 = phi i64 [ %.03542.us.i.i.i.i.i.i.i.i.i686, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684 ], [ %i.dgr, %bb.rv ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i690 = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i685, %i.dgk ; 2 uses
  %i.dgt = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i690 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i691 = icmp eq i32 %i.dem, %i.dgt
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i691, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i684, !llvm.loop !3023

.lr.ph.split.i.i.i.i.i.i.i.i.i602:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i600
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.den, i64 57
  %i.dgv = load i8, ptr %i.dgu, align 1, !range !73
  %i.dgw = trunc nuw i8 %i.dgv to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i603 = select i1 %i.dew, i1 true, i1 %i.dgw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i603, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i604

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i602
  %i.dgx = sext i32 %i.del to i64
  %i.dgy = sext i32 %i.dej to i64
  %i.dgz = sext i32 %i.dcb to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669:       ; preds = %.critedge.us50.i.i.i.i.i.i.i.i.i675, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668
  %indvars.iv151.i.i.i.i.i.i.i.i.i670 = phi i64 [ %i.dgx, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668 ], [ %indvars.iv.next152.i.i.i.i.i.i.i.i.i677, %.critedge.us50.i.i.i.i.i.i.i.i.i675 ] ; 3 uses
  %.03542.us46.i.i.i.i.i.i.i.i.i671 = phi i64 [ %i.dek, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i668 ], [ %.1.us51.i.i.i.i.i.i.i.i.i676, %.critedge.us50.i.i.i.i.i.i.i.i.i675 ] ; 3 uses
  %i.dha = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i670, %i.dgz ; 4 uses
  %i.dhb = lshr i64 %i.dha, 6
  %i.dhc = and i64 %i.dhb, 67108863
  %i.dhd = getelementptr inbounds nuw [8 x i8], ptr %i.dep, i64 %i.dhc
  %i.dhe = load i64, ptr %i.dhd, align 8, !tbaa !137
  %i.dhf = and i64 %i.dha, 63
  %i.dhg = shl nuw i64 1, %i.dhf
  %i.dhh = and i64 %i.dhg, %i.dhe
  %.not.i.i.us.i.i.i.i.i.i.i.i.i672 = icmp eq i64 %i.dhh, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i672, label %.critedge.us50.i.i.i.i.i.i.i.i.i675, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669
  %i.dhi = trunc nsw i64 %i.dha to i32
  %i.dhj = load ptr, ptr %i.des, align 8, !tbaa !487
  br i1 %i.dew, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, label %bb.rw

bb.rw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673
  %i.dhk = load i8, ptr %i.deq, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dhl = trunc nuw i8 %i.dhk to i1
  br i1 %i.dhl, label %bb.ry, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.dhm = load ptr, ptr %i.der, align 8, !tbaa !331
  %i.dhn = getelementptr inbounds [4 x i8], ptr %i.dhm, i64 %i.dha
  %i.dho = load i32, ptr %i.dhn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

bb.ry:                                            ; preds = %bb.rw
  %i.dhp = load i32, ptr %i.deu, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i: ; preds = %bb.ry, %bb.rx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673
  %.0.i.i19.us49.i.i.i.i.i.i.i.i.i674 = phi i32 [ %i.dho, %bb.rx ], [ %i.dhp, %bb.ry ], [ %i.dhi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47.i.i.i.i.i.i.i.i.i673 ]
  %i.dhq = sext i32 %.0.i.i19.us49.i.i.i.i.i.i.i.i.i674 to i64
  %i.dhr = getelementptr inbounds [2 x i8], ptr %i.dhj, i64 %i.dhq
  %i.dhs = load i16, ptr %i.dhr, align 2, !tbaa !2009
  %i.dht = icmp eq i16 %i.dhs, %i.dcv
  br i1 %i.dht, label %bb.rz, label %.critedge.us50.i.i.i.i.i.i.i.i.i675

bb.rz:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i
  %i.dhu = add nsw i64 %.03542.us46.i.i.i.i.i.i.i.i.i671, -1 ; 2 uses
  %i.dhv = icmp eq i64 %i.dhu, 0
  br i1 %i.dhv, label %.split.us.loopexit114.i.i.i.i.i.i.i.i.i679, label %.critedge.us50.i.i.i.i.i.i.i.i.i675

.critedge.us50.i.i.i.i.i.i.i.i.i675:              ; preds = %bb.rz, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669
  %.1.us51.i.i.i.i.i.i.i.i.i676 = phi i64 [ %.03542.us46.i.i.i.i.i.i.i.i.i671, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us48.i.i.i.i.i.i.i.i.i ], [ %i.dhu, %bb.rz ], [ %.03542.us46.i.i.i.i.i.i.i.i.i671, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669 ]
  %indvars.iv.next152.i.i.i.i.i.i.i.i.i677 = add nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i670, %i.dgy ; 2 uses
  %i.dhw = trunc nsw i64 %indvars.iv.next152.i.i.i.i.i.i.i.i.i677 to i32
  %.not16.us52.i.i.i.i.i.i.i.i.i678 = icmp eq i32 %i.dem, %i.dhw
  br i1 %.not16.us52.i.i.i.i.i.i.i.i.i678, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i669, !llvm.loop !3023

.lr.ph.split.split.i.i.i.i.i.i.i.i.i604:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i602
  %i.dhx = load i8, ptr %i.deq, align 1, !tbaa !339, !range !73, !noundef !74
  %i.dhy = trunc nuw i8 %i.dhx to i1
  br i1 %i.dhy, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i604
  %i.dhz = load i64, ptr %i.dep, align 8, !tbaa !137
  %i.dia = and i64 %i.dhz, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i660 = icmp eq i64 %i.dia, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i660, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659
  %i.dib = load ptr, ptr %i.des, align 8, !tbaa !487
  %i.dic = load i32, ptr %i.deu, align 8, !tbaa !488
  %i.did = sext i32 %i.dic to i64
  %i.die = getelementptr inbounds [2 x i8], ptr %i.dib, i64 %i.did
  %i.dif = load i16, ptr %i.die, align 2, !tbaa !2009
  %i.dig = icmp eq i16 %i.dif, %i.dcv
  br i1 %i.dig, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661
  %i.dih = trunc i64 %i.dek to i32
  %i.dii = add i32 %i.dih, -1
  %i.dij = mul i32 %i.dii, %i.dej
  %i.dik = add i32 %i.del, %i.dij                 ; 3 uses
  %i.dil = add nsw i64 %i.dek, -1                 ; 5 uses
  %i.dim = icmp eq i64 %i.dil, 0
  br i1 %i.dim, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662
  %min.iters.check5718 = icmp samesign ult i64 %i.dek, 33
  br i1 %min.iters.check5718, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader, label %vector.ph5719

vector.ph5719:                                    ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph
  %n.vec5721 = and i64 %i.dil, -32                ; 3 uses
  %i.din = and i64 %i.dil, 31
  %i.dio = trunc i64 %n.vec5721 to i32
  %i.dip = mul i32 %i.dej, %i.dio
  %i.diq = add i32 %i.del, %i.dip
  %broadcast.splatinsert5722 = insertelement <32 x i32> poison, i32 %i.dej, i64 0
  %broadcast.splat5723 = shufflevector <32 x i32> %broadcast.splatinsert5722, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5724 = insertelement <32 x i32> poison, i32 %i.dem, i64 0
  %broadcast.splat5725 = shufflevector <32 x i32> %broadcast.splatinsert5724, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5726 = insertelement <32 x i32> poison, i32 %i.del, i64 0
  %broadcast.splat5727 = shufflevector <32 x i32> %broadcast.splatinsert5726, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5728 = insertelement <32 x i32> poison, i32 %i.dej, i64 0
  %broadcast.splat5729 = shufflevector <32 x i32> %broadcast.splatinsert5728, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.dir = mul <32 x i32> %broadcast.splat5729, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5730 = add <32 x i32> %broadcast.splat5727, %i.dir
  %i.dis = shl nsw i32 %i.dej, 5
  %broadcast.splatinsert5731 = insertelement <32 x i32> poison, i32 %i.dis, i64 0
  %broadcast.splat5732 = shufflevector <32 x i32> %broadcast.splatinsert5731, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5733

vector.body5733:                                  ; preds = %vector.body.interim5738, %vector.ph5719
  %index5734 = phi i64 [ 0, %vector.ph5719 ], [ %index.next5736, %vector.body.interim5738 ]
  %vec.ind5735 = phi <32 x i32> [ %induction5730, %vector.ph5719 ], [ %vec.ind.next5737, %vector.body.interim5738 ] ; 2 uses
  %i.dit = add nsw <32 x i32> %vec.ind5735, %broadcast.splat5723
  %i.diu = icmp eq <32 x i32> %i.dit, %broadcast.splat5725
  %i.div = freeze <32 x i1> %i.diu
  %i.diw = bitcast <32 x i1> %i.div to i32
  %.not5888 = icmp eq i32 %i.diw, 0
  br i1 %.not5888, label %vector.body.interim5738, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

vector.body.interim5738:                          ; preds = %vector.body5733
  %vec.ind.next5737 = add <32 x i32> %vec.ind5735, %broadcast.splat5732
  %index.next5736 = add nuw i64 %index5734, 32    ; 2 uses
  %i.dix = icmp eq i64 %index.next5736, %n.vec5721
  br i1 %i.dix, label %middle.block5739, label %vector.body5733, !llvm.loop !3026

middle.block5739:                                 ; preds = %vector.body.interim5738
  %cmp.n5740 = icmp eq i64 %i.dil, %n.vec5721
  br i1 %cmp.n5740, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph, %middle.block5739
  %.ph5998 = phi i64 [ %i.dil, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph ], [ %i.din, %middle.block5739 ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410.ph = phi i32 [ %i.del, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.lr.ph ], [ %i.diq, %middle.block5739 ]
  br label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663: ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666
  %i.diy = add nsw i64 %i.dja, -1                 ; 2 uses
  %i.diz = icmp eq i64 %i.diy, 0
  br i1 %i.diz, label %.split.us.i.i.i.i.i.i.i.i.i650, label %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666, !llvm.loop !3027

.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666:      ; preds = %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663
  %i.dja = phi i64 [ %i.diy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663 ], [ %.ph5998, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader ]
  %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410 = phi i32 [ %i.djb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663 ], [ %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410.ph, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666.preheader ]
  %i.djb = add nsw i32 %.043.us57.us80.us.i.i.i.i.i.i.i.i.i6645410, %i.dej ; 2 uses
  %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i667 = icmp eq i32 %i.djb, %i.dem
  br i1 %.not16.us64.us86.us.i.i.i.i.i.i.i.i.i667, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663, !llvm.loop !3023

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i604
  %i.djc = load ptr, ptr %i.der, align 8, !tbaa !331
  %i.djd = sext i32 %i.del to i64
  %i.dje = sext i32 %i.dej to i64
  %i.djf = sext i32 %i.dcb to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i606 = getelementptr [4 x i8], ptr %i.djc, i64 %i.djf
  br label %bb.sa

bb.sa:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i611, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605
  %indvars.iv.i.i.i.i.i.i.i.i.i607 = phi i64 [ %i.djd, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i613, %.critedge.i.i.i.i.i.i.i.i.i611 ] ; 3 uses
  %.03542.i.i.i.i.i.i.i.i.i608 = phi i64 [ %i.dek, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i605 ], [ %.1.i.i.i.i.i.i.i.i.i612, %.critedge.i.i.i.i.i.i.i.i.i611 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i609 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i606, i64 %indvars.iv.i.i.i.i.i.i.i.i.i607
  %i.djg = load i32, ptr %gep.i.i.i.i.i.i.i.i.i609, align 4, !tbaa !3 ; 2 uses
  %i.djh = zext i32 %i.djg to i64                 ; 2 uses
  %i.dji = lshr i64 %i.djh, 6
  %i.djj = getelementptr inbounds nuw [8 x i8], ptr %i.dep, i64 %i.dji
  %i.djk = load i64, ptr %i.djj, align 8, !tbaa !137
  %i.djl = and i64 %i.djh, 63
  %i.djm = shl nuw i64 1, %i.djl
  %i.djn = and i64 %i.djm, %i.djk
  %.not.i7.i.i.i.i.i.i.i.i.i.i610 = icmp eq i64 %i.djn, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i610, label %.critedge.i.i.i.i.i.i.i.i.i611, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.sa
  %i.djo = load ptr, ptr %i.des, align 8, !tbaa !487
  %i.djp = sext i32 %i.djg to i64
  %i.djq = getelementptr inbounds [2 x i8], ptr %i.djo, i64 %i.djp
  %i.djr = load i16, ptr %i.djq, align 2, !tbaa !2009
  %i.djs = icmp eq i16 %i.djr, %i.dcv
  br i1 %i.djs, label %bb.sb, label %.critedge.i.i.i.i.i.i.i.i.i611

bb.sb:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.djt = add nsw i64 %.03542.i.i.i.i.i.i.i.i.i608, -1 ; 2 uses
  %i.dju = icmp eq i64 %i.djt, 0
  br i1 %i.dju, label %.split.us.loopexit124.i.i.i.i.i.i.i.i.i649, label %.critedge.i.i.i.i.i.i.i.i.i611

.split.us.loopexit.i.i.i.i.i.i.i.i.i710:          ; preds = %bb.ru
  %i.djv = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i703 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.loopexit112.i.i.i.i.i.i.i.i.i692:       ; preds = %bb.rv
  %i.djw = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i685 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.loopexit114.i.i.i.i.i.i.i.i.i679:       ; preds = %bb.rz
  %i.djx = trunc nsw i64 %indvars.iv151.i.i.i.i.i.i.i.i.i670 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.loopexit124.i.i.i.i.i.i.i.i.i649:       ; preds = %bb.sb
  %i.djy = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i607 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i650

.split.us.i.i.i.i.i.i.i.i.i650:                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662, %middle.block5739, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694, %middle.block5712, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i649, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i679, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i692, %.split.us.loopexit.i.i.i.i.i.i.i.i.i710
  %.us-phi.i.i.i.i.i.i.i.i.i651 = phi i32 [ %i.djx, %.split.us.loopexit114.i.i.i.i.i.i.i.i.i679 ], [ %i.djy, %.split.us.loopexit124.i.i.i.i.i.i.i.i.i649 ], [ %i.djv, %.split.us.loopexit.i.i.i.i.i.i.i.i.i710 ], [ %i.djw, %.split.us.loopexit112.i.i.i.i.i.i.i.i.i692 ], [ %i.dfq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.preheader.i.i.i.i.i.i.i.i.i694 ], [ %i.dfq, %middle.block5712 ], [ %i.dik, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.preheader.i.i.i.i.i.i.i.i.i662 ], [ %i.dik, %middle.block5739 ], [ %i.dfq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us95.us.i.i.i.i.i.i.i.i.i695 ], [ %i.dik, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us79.us.i.i.i.i.i.i.i.i.i663 ] ; 3 uses
  %i.djz = load ptr, ptr %.sroa.12.0..sroa_idx.i568, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.dka = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i651, 1
  %i.dkb = sext i32 %i.dka to i64
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.djz, i64 144 ; 2 uses
  %i.dkd = load ptr, ptr %i.dkc, align 8, !tbaa !341 ; 2 uses
  %i.dke = icmp eq ptr %i.dkd, null
  br i1 %i.dke, label %bb.sc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652

bb.sc:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i650
  %i.dkf = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.djz)
          to label %.noexc19.i.i.i.i.i.i.i.i657 unwind label %bb.sh ; 0 uses

.noexc19.i.i.i.i.i.i.i.i657:                      ; preds = %bb.sc
  %.pre.i.i.i.i.i.i.i.i.i.i658 = load ptr, ptr %i.dkc, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652: ; preds = %.noexc19.i.i.i.i.i.i.i.i657, %.split.us.i.i.i.i.i.i.i.i.i650
  %i.dkg = phi ptr [ %i.dkd, %.split.us.i.i.i.i.i.i.i.i.i650 ], [ %.pre.i.i.i.i.i.i.i.i.i.i658, %.noexc19.i.i.i.i.i.i.i.i657 ]
  %i.dkh = getelementptr inbounds [8 x i8], ptr %i.dkg, i64 %i.ddz
  store i64 %i.dkb, ptr %i.dkh, align 8, !tbaa !137
  %i.dki = getelementptr inbounds nuw i8, ptr %i.djz, i64 32 ; 2 uses
  %i.dkj = load ptr, ptr %i.dki, align 8, !tbaa !362
  %.not.i21.i.i.i.i.i.i.i.i.i653 = icmp eq ptr %i.dkj, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i653, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %bb.sd

bb.sd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.djz, i64 56
  %i.dkl = load i32, ptr %i.dkk, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.djz, i32 noundef %i.dkl, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i654 unwind label %bb.sh

.noexc20.i.i.i.i.i.i.i.i654:                      ; preds = %bb.sd
  %i.dkm = load ptr, ptr %i.dki, align 8, !tbaa !362 ; 2 uses
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 44
  %i.dko = load i8, ptr %i.dkn, align 4, !tbaa !363
  %i.dkp = and i8 %i.dko, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i655 = icmp eq i8 %i.dkp, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i655, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656, label %.invoke.i.i.i.i.i.i.i.i644, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656: ; preds = %.noexc20.i.i.i.i.i.i.i.i654
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dkm, i64 16
  %i.dkr = load ptr, ptr %i.dkq, align 8, !tbaa !368
  %i.dks = lshr i64 %.074.i.i.i.i.i.i.i.i591, 3
  %i.dkt = and i64 %i.dks, 536870911
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkr, i64 %i.dkt ; 2 uses
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !30
  %i.dkw = trunc i64 %.074.i.i.i.i.i.i.i.i591 to i8
  %i.dkx = and i8 %i.dkw, 7
  %i.dky = shl nuw i8 1, %i.dkx
  %i.dkz = or i8 %i.dkv, %i.dky
  store i8 %i.dkz, ptr %i.dku, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615

.critedge.i.i.i.i.i.i.i.i.i611:                   ; preds = %bb.sb, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.sa
  %.1.i.i.i.i.i.i.i.i.i612 = phi i64 [ %.03542.i.i.i.i.i.i.i.i.i608, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.djt, %bb.sb ], [ %.03542.i.i.i.i.i.i.i.i.i608, %bb.sa ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i613 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i607, %i.dje ; 2 uses
  %i.dla = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i613 to i32
  %.not16.i.i.i.i.i.i.i.i.i614 = icmp eq i32 %i.dem, %i.dla
  br i1 %.not16.i.i.i.i.i.i.i.i.i614, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615, label %bb.sa, !llvm.loop !3023

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615: ; preds = %.critedge.i.i.i.i.i.i.i.i.i611, %vector.body5733, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666, %.critedge.us50.i.i.i.i.i.i.i.i.i675, %.critedge.us.i.i.i.i.i.i.i.i.i688, %vector.body5706, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698, %.critedge.us.us.i.i.i.i.i.i.i.i.i706, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693, %bb.rt
  %.040.i.i.i.i.i.i.i.i.i616 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i651, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i652 ], [ %.us-phi.i.i.i.i.i.i.i.i.i651, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i656 ], [ %i.del, %bb.rt ], [ %i.dem, %.critedge.us62.us84.us.i.i.i.i.i.i.i.i.i666 ], [ %i.dem, %.critedge.us.us100.us.i.i.i.i.i.i.i.i.i698 ], [ %i.dem, %.critedge.us50.i.i.i.i.i.i.i.i.i675 ], [ %i.dem, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i661 ], [ %i.dem, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i693 ], [ %i.dem, %vector.body5706 ], [ %i.dem, %.critedge.us.us.i.i.i.i.i.i.i.i.i706 ], [ %i.dem, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i659 ], [ %i.dem, %vector.body5733 ], [ %i.dem, %.critedge.us.i.i.i.i.i.i.i.i.i688 ], [ %i.dem, %.critedge.i.i.i.i.i.i.i.i.i611 ]
  %i.dlb = load ptr, ptr %.sroa.952.0..sroa_idx.i565, align 8, !tbaa !3020, !nonnull !74, !align !497
  %i.dlc = load i32, ptr %i.dlb, align 4, !tbaa !3
  %i.dld = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i616, %i.dlc
  br i1 %i.dld, label %bb.se, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.se:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i615
  %i.dle = load ptr, ptr %.sroa.12.0..sroa_idx.i568, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 144 ; 2 uses
  %i.dlg = load ptr, ptr %i.dlf, align 8, !tbaa !341 ; 2 uses
  %i.dlh = icmp eq ptr %i.dlg, null
  br i1 %i.dlh, label %bb.sf, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617

bb.sf:                                            ; preds = %bb.se
  %i.dli = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.dle)
          to label %.noexc22.i.i.i.i.i.i.i.i647 unwind label %bb.sh ; 0 uses

.noexc22.i.i.i.i.i.i.i.i647:                      ; preds = %bb.sf
  %.pre.i26.i.i.i.i.i.i.i.i.i648 = load ptr, ptr %i.dlf, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617: ; preds = %.noexc22.i.i.i.i.i.i.i.i647, %bb.se
  %i.dlj = phi ptr [ %i.dlg, %bb.se ], [ %.pre.i26.i.i.i.i.i.i.i.i.i648, %.noexc22.i.i.i.i.i.i.i.i647 ]
  %i.dlk = getelementptr inbounds [8 x i8], ptr %i.dlj, i64 %i.ddz
  store i64 0, ptr %i.dlk, align 8, !tbaa !137
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dle, i64 32 ; 2 uses
  %i.dlm = load ptr, ptr %i.dll, align 8, !tbaa !362
  %.not.i23.i.i.i.i.i.i.i.i.i618 = icmp eq ptr %i.dlm, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i618, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.sg

bb.sg:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i617
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dle, i64 56
  %i.dlo = load i32, ptr %i.dln, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.dle, i32 noundef %i.dlo, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i642 unwind label %bb.sh

.noexc23.i.i.i.i.i.i.i.i642:                      ; preds = %bb.sg
  %i.dlp = load ptr, ptr %i.dll, align 8, !tbaa !362 ; 2 uses
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 44
  %i.dlr = load i8, ptr %i.dlq, align 4, !tbaa !363
  %i.dls = and i8 %i.dlr, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i643 = icmp eq i8 %i.dls, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i643, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i646, label %.invoke.i.i.i.i.i.i.i.i644, !prof !69
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.edr = sub nsw i32 64, %i.edo
  %i.eds = zext nneg i32 %i.edr to i64
  %i.edt = shl i64 %i.edq, %i.eds
  %i.edu = and i64 %i.edt, %i.edn
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %146, i32 noundef %i.edk, i64 noundef %i.edu)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.wh:                                            ; preds = %bb.wf
  %.not32.i.i.i.i.i.i.i884 = icmp eq i32 %i.edc, %i.edh
  br i1 %.not32.i.i.i.i.i.i.i884, label %bb.wj, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.edv = sdiv i32 %i.edc, 64
  %i.edw = sub nsw i32 %i.edh, %i.edc             ; 2 uses
  %i.edx = zext nneg i32 %i.edw to i64
  %notmask.i.i35.i.i.i.i.i.i.i885 = shl nsw i64 -1, %i.edx
  %i.edy = xor i64 %notmask.i.i35.i.i.i.i.i.i.i885, -1
  %i.edz = sub nsw i32 64, %i.edw
  %i.eea = zext nneg i32 %i.edz to i64
  %i.eeb = shl i64 %i.edy, %i.eea
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %146, i32 noundef %i.edv, i64 noundef %i.eeb)
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh
  %i.eec = add nsw i32 %i.edh, 64                 ; 2 uses
  %.not3355.i.i.i.i.i.i.i886 = icmp sgt i32 %i.eec, %i.edi
  br i1 %.not3355.i.i.i.i.i.i.i886, label %._crit_edge.i.i.i.i.i.i.i889, label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %bb.wj
  %i.eed = getelementptr inbounds nuw i8, ptr %140, i64 16
  %i.eee = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 2 uses
  br label %bb.wk

._crit_edge.i.i.i.i.i.i.i889:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.wj
  %.not34.i.i.i.i.i.i.i890 = icmp eq i32 %i.ede, %i.edi
  br i1 %.not34.i.i.i.i.i.i.i890, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.yr

bb.wk:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i30.i
  %i.eef = phi i32 [ %i.eec, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.ers, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i.i887 = phi i32 [ %i.edh, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.eef, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.eeg = sdiv i32 %.056.i.i.i.i.i.i.i887, 64    ; 3 uses
  %i.eeh = sext i32 %i.eeg to i64
  %i.eei = getelementptr inbounds [8 x i8], ptr %i.eda, i64 %i.eeh
  %i.eej = load i64, ptr %i.eei, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.eej, label %.lr.ph.i.i.i.i.i.i.i.i976 [
    i64 -1, label %bb.wl
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i976:                        ; preds = %bb.wk
  %i.eek = shl nsw i32 %i.eeg, 6
  br label %bb.ya

bb.wl:                                            ; preds = %bb.wk
  %i.eel = shl nsw i32 %i.eeg, 6                  ; 2 uses
  %i.eem = add i32 %i.eel, 64
  %i.een = sext i32 %i.eem to i64
  %.0.off.i.i.i.i.i.i.i892 = add i32 %.056.i.i.i.i.i.i.i887, 127
  %.not78.i.i.i.i.i.i.i.i893 = icmp ult i32 %.0.off.i.i.i.i.i.i.i892, 64
  br i1 %.not78.i.i.i.i.i.i.i.i893, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph77.i.i.i.i.i.i.i.i894

.lr.ph77.i.i.i.i.i.i.i.i894:                      ; preds = %bb.wl
  %i.eeo = sext i32 %i.eel to i64
  br label %bb.wm

bb.wm:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph77.i.i.i.i.i.i.i.i894
  %.074.i.i.i.i.i.i.i.i895 = phi i64 [ %i.eeo, %.lr.ph77.i.i.i.i.i.i.i.i894 ], [ %i.eqf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.eep = load ptr, ptr %150, align 8, !tbaa !3045, !nonnull !74, !align !275
  %i.eeq = load ptr, ptr %i.eep, align 8, !tbaa !329
  %i.eer = load ptr, ptr %.sroa.448.0..sroa_idx.i, align 8, !tbaa !3047, !nonnull !74, !align !275
  %i.ees = load ptr, ptr %i.eer, align 8, !tbaa !329 ; 2 uses
  %i.eet = getelementptr inbounds nuw [4 x i8], ptr %i.ees, i64 %.074.i.i.i.i.i.i.i.i895
  %i.eeu = load i32, ptr %i.eet, align 4, !tbaa !3
  %i.eev = sext i32 %i.eeu to i64
  %i.eew = getelementptr inbounds [4 x i8], ptr %i.eeq, i64 %i.eev
  %i.eex = load i32, ptr %i.eew, align 4, !tbaa !3 ; 4 uses
  %i.eey = load ptr, ptr %.sroa.549.0..sroa_idx.i, align 8, !tbaa !3048, !nonnull !74, !align !275 ; 5 uses
  %i.eez = trunc i64 %.074.i.i.i.i.i.i.i.i895 to i32 ; 4 uses
  %i.efa = getelementptr inbounds nuw i8, ptr %i.eey, i64 16
  %i.efb = load ptr, ptr %i.efa, align 8, !tbaa !487
  %i.efc = getelementptr inbounds nuw i8, ptr %i.eey, i64 58
  %i.efd = load i8, ptr %i.efc, align 2, !tbaa !338, !range !73, !noundef !74
  %i.efe = trunc nuw i8 %i.efd to i1
  br i1 %i.efe, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  %i.eff = getelementptr inbounds nuw i8, ptr %i.eey, i64 59
  %i.efg = load i8, ptr %i.eff, align 1, !tbaa !339, !range !73, !noundef !74
  %i.efh = trunc nuw i8 %i.efg to i1
  br i1 %i.efh, label %bb.wo, label %bb.wp

bb.wo:                                            ; preds = %bb.wn
  %i.efi = getelementptr inbounds nuw i8, ptr %i.eey, i64 64
  %i.efj = load i32, ptr %i.efi, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897

bb.wp:                                            ; preds = %bb.wn
  %i.efk = getelementptr inbounds nuw i8, ptr %i.eey, i64 8
  %i.efl = load ptr, ptr %i.efk, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i896 = shl i64 %.074.i.i.i.i.i.i.i.i895, 32
  %i.efm = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i896, 30
  %i.efn = getelementptr inbounds i8, ptr %i.efl, i64 %i.efm
  %i.efo = load i32, ptr %i.efn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897: ; preds = %bb.wp, %bb.wo, %bb.wm
  %.0.i.i.i.i.i.i.i.i.i.i.i898 = phi i32 [ %i.efo, %bb.wp ], [ %i.efj, %bb.wo ], [ %i.eez, %bb.wm ]
  %i.efp = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i898 to i64
  %i.efq = getelementptr inbounds [8 x i8], ptr %i.efb, i64 %i.efp
  %i.efr = load i64, ptr %i.efq, align 8, !tbaa !137 ; 6 uses
  %i.efs = load ptr, ptr %.sroa.650.0..sroa_idx.i, align 8, !tbaa !3049, !nonnull !74, !align !275 ; 5 uses
  %i.eft = getelementptr inbounds nuw i8, ptr %i.efs, i64 16
  %i.efu = load ptr, ptr %i.eft, align 8, !tbaa !487
  %i.efv = getelementptr inbounds nuw i8, ptr %i.efs, i64 58
  %i.efw = load i8, ptr %i.efv, align 2, !tbaa !338, !range !73, !noundef !74
  %i.efx = trunc nuw i8 %i.efw to i1
  br i1 %i.efx, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i, label %bb.wq

bb.wq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897
  %i.efy = getelementptr inbounds nuw i8, ptr %i.efs, i64 59
  %i.efz = load i8, ptr %i.efy, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ega = trunc nuw i8 %i.efz to i1
  br i1 %i.ega, label %bb.wr, label %bb.ws

bb.wr:                                            ; preds = %bb.wq
  %i.egb = getelementptr inbounds nuw i8, ptr %i.efs, i64 64
  %i.egc = load i32, ptr %i.egb, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i

bb.ws:                                            ; preds = %bb.wq
  %i.egd = getelementptr inbounds nuw i8, ptr %i.efs, i64 8
  %i.ege = load ptr, ptr %i.egd, align 8, !tbaa !331
  %sext38.i.i.i.i.i.i.i.i.i899 = shl i64 %.074.i.i.i.i.i.i.i.i895, 32
  %i.egf = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i899, 30
  %i.egg = getelementptr inbounds i8, ptr %i.ege, i64 %i.egf
  %i.egh = load i32, ptr %i.egg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i: ; preds = %bb.ws, %bb.wr, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897
  %.0.i.i18.i.i.i.i.i.i.i.i.i900 = phi i32 [ %i.egh, %bb.ws ], [ %i.egc, %bb.wr ], [ %i.eez, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i897 ]
  %i.egi = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i900 to i64
  %i.egj = getelementptr inbounds [8 x i8], ptr %i.efu, i64 %i.egi
  %i.egk = load i64, ptr %i.egj, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i901 = icmp eq i64 %i.egk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i901, label %bb.wt, label %bb.ww, !prof !48

bb.wt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #35, !noalias !3050
  store i64 0, ptr %140, align 16, !tbaa !30, !noalias !3050
  store i32 0, ptr %i.eed, align 16, !tbaa !30, !alias.scope !3053, !noalias !3050
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %141, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %140)
          to label %.noexc.i.i.i.i.i.i.i.i972 unwind label %bb.xk

.noexc.i.i.i.i.i.i.i.i972:                        ; preds = %bb.wt
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #35, !noalias !3050
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %141, ptr nonnull @.str.178) #38
          to label %bb.wu unwind label %bb.wv

bb.wu:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i972
  unreachable

bb.wv:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i972
  %i.egl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.egm = load ptr, ptr %141, align 8, !tbaa !49 ; 2 uses
  %i.egn = icmp eq ptr %i.egm, %i.eee
  br i1 %i.egn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i974, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i973

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i973: ; preds = %bb.wv
  %i.ego = load i64, ptr %i.eee, align 8, !tbaa !30
  %i.egp = add i64 %i.ego, 1
  call void @_ZdlPvm(ptr noundef %i.egm, i64 noundef %i.egp) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i974

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i974: ; preds = %bb.wv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i973
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #35
  br label %.body.i.i.i.i.i.i.i.i917

bb.ww:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i
  %i.egq = load ptr, ptr %.sroa.751.0..sroa_idx.i, align 8, !tbaa !3056, !nonnull !74, !align !275
  %i.egr = load ptr, ptr %i.egq, align 8, !tbaa !329
  %i.egs = load ptr, ptr %.sroa.852.0..sroa_idx.i, align 8, !tbaa !3057, !nonnull !74, !align !497 ; 2 uses
  %i.egt = load ptr, ptr %.sroa.953.0..sroa_idx.i, align 8, !tbaa !3058, !nonnull !74, !align !497 ; 2 uses
  %i.egu = load ptr, ptr %.sroa.1054.0..sroa_idx.i, align 8, !tbaa !3059, !nonnull !74, !align !497
  %sext39.i.i.i.i.i.i.i.i.i = shl i64 %.074.i.i.i.i.i.i.i.i895, 32
  %i.egv = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.egw = getelementptr inbounds [4 x i8], ptr %i.ees, i64 %i.egv
  %i.egx = load i32, ptr %i.egw, align 4, !tbaa !3
  %i.egy = sext i32 %i.egx to i64
  %i.egz = getelementptr inbounds [4 x i8], ptr %i.egr, i64 %i.egy
  %i.eha = load i32, ptr %i.egz, align 4, !tbaa !3 ; 2 uses
  %i.ehb = icmp sgt i64 %i.egk, 0                 ; 3 uses
  %i.ehc = add nsw i32 %i.eha, -1
  %i.ehd = select i1 %i.ehb, i32 0, i32 %i.ehc
  store i32 %i.ehd, ptr %i.egs, align 4, !tbaa !3
  %i.ehe = select i1 %i.ehb, i32 %i.eha, i32 -1
  store i32 %i.ehe, ptr %i.egt, align 4, !tbaa !3
  %i.ehf = select i1 %i.ehb, i32 1, i32 -1        ; 17 uses
  store i32 %i.ehf, ptr %i.egu, align 4, !tbaa !3
  %i.ehg = call noundef i64 @llvm.abs.i64(i64 %i.egk, i1 true) ; 10 uses
  %i.ehh = load i32, ptr %i.egs, align 4, !tbaa !3 ; 14 uses
  %i.ehi = load i32, ptr %i.egt, align 4, !tbaa !3 ; 20 uses
  %.not1642.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ehh, %i.ehi
  br i1 %.not1642.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %.lr.ph.i.i.i.i.i.i.i.i.i902

.lr.ph.i.i.i.i.i.i.i.i.i902:                      ; preds = %bb.ww
  %i.ehj = load ptr, ptr %.sroa.11.0..sroa_idx.i873, align 8, !tbaa !3060, !nonnull !74, !align !275 ; 7 uses
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.ehj, i64 24
  %i.ehl = load ptr, ptr %i.ehk, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i903 = icmp eq ptr %i.ehl, null
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ehj, i64 59 ; 3 uses
  %i.ehn = getelementptr inbounds nuw i8, ptr %i.ehj, i64 8 ; 3 uses
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehj, i64 16 ; 4 uses
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.ehj, i64 58
  %i.ehq = getelementptr inbounds nuw i8, ptr %i.ehj, i64 64 ; 3 uses
  %i.ehr = load i8, ptr %i.ehp, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ehs = trunc nuw i8 %i.ehr to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i903, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i958, label %.lr.ph.split.i.i.i.i.i.i.i.i.i904

.lr.ph.split.us.i.i.i.i.i.i.i.i.i958:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i902
  %i.eht = load ptr, ptr %i.eho, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ehs, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i958
  %i.ehu = sext i32 %i.ehh to i64
  %i.ehv = sext i32 %i.ehf to i64
  %i.ehw = sext i32 %i.eex to i64
  %invariant.gep196.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.eht, i64 %i.ehw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i968, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966
  %indvars.iv158.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966 ], [ %indvars.iv.next159.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i968 ] ; 3 uses
  %.03643.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i966 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i969, %.critedge.us.us.i.i.i.i.i.i.i.i.i968 ] ; 2 uses
  %gep197.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep196.i.i.i.i.i.i.i.i.i, i64 %indvars.iv158.i.i.i.i.i.i.i.i.i
  %i.ehx = load i64, ptr %gep197.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.ehy = icmp eq i64 %i.ehx, %i.efr
  br i1 %i.ehy, label %bb.wx, label %.critedge.us.us.i.i.i.i.i.i.i.i.i968

bb.wx:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967
  %i.ehz = add nsw i64 %.03643.us.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.eia = icmp eq i64 %i.ehz, 0
  br i1 %i.eia, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i971, label %.critedge.us.us.i.i.i.i.i.i.i.i.i968

.critedge.us.us.i.i.i.i.i.i.i.i.i968:             ; preds = %bb.wx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967
  %.1.us.us.i.i.i.i.i.i.i.i.i969 = phi i64 [ %.03643.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967 ], [ %i.ehz, %bb.wx ]
  %indvars.iv.next159.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv158.i.i.i.i.i.i.i.i.i, %i.ehv ; 2 uses
  %i.eib = trunc nsw i64 %indvars.iv.next159.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i970 = icmp eq i32 %i.ehi, %i.eib
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i970, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i967, !llvm.loop !3061

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i958
  %i.eic = load i8, ptr %i.ehm, align 1, !tbaa !339, !range !73, !noundef !74
  %i.eid = trunc nuw i8 %i.eic to i1
  br i1 %i.eid, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959
  %i.eie = load i32, ptr %i.ehq, align 8, !tbaa !488
  %i.eif = sext i32 %i.eie to i64
  %i.eig = getelementptr inbounds [8 x i8], ptr %i.eht, i64 %i.eif
  %i.eih = load i64, ptr %i.eig, align 8, !tbaa !137
  %i.eii = icmp eq i64 %i.eih, %i.efr
  br i1 %i.eii, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965
  %i.eij = trunc i64 %i.ehg to i32
  %i.eik = add i32 %i.eij, -1
  %i.eil = mul i32 %i.eik, %i.ehf
  %i.eim = add i32 %i.ehh, %i.eil                 ; 3 uses
  %i.ein = add nsw i64 %i.ehg, -1                 ; 5 uses
  %i.eio = icmp eq i64 %i.ein, 0
  br i1 %i.eio, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph:    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5637 = icmp samesign ult i64 %i.ehg, 33
  br i1 %min.iters.check5637, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5638

vector.ph5638:                                    ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5640 = and i64 %i.ein, -32                ; 3 uses
  %i.eip = and i64 %i.ein, 31
  %i.eiq = trunc i64 %n.vec5640 to i32
  %i.eir = mul i32 %i.ehf, %i.eiq
  %i.eis = add i32 %i.ehh, %i.eir
  %broadcast.splatinsert5641 = insertelement <32 x i32> poison, i32 %i.ehf, i64 0
  %broadcast.splat5642 = shufflevector <32 x i32> %broadcast.splatinsert5641, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5643 = insertelement <32 x i32> poison, i32 %i.ehi, i64 0
  %broadcast.splat5644 = shufflevector <32 x i32> %broadcast.splatinsert5643, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5645 = insertelement <32 x i32> poison, i32 %i.ehh, i64 0
  %broadcast.splat5646 = shufflevector <32 x i32> %broadcast.splatinsert5645, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5647 = insertelement <32 x i32> poison, i32 %i.ehf, i64 0
  %broadcast.splat5648 = shufflevector <32 x i32> %broadcast.splatinsert5647, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.eit = mul <32 x i32> %broadcast.splat5648, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5649 = add <32 x i32> %broadcast.splat5646, %i.eit
  %i.eiu = shl nsw i32 %i.ehf, 5
  %broadcast.splatinsert5650.a = insertelement <32 x i32> poison, i32 %i.eiu, i64 0
  %broadcast.splat5651.a = shufflevector <32 x i32> %broadcast.splatinsert5650.a, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5652

vector.body5652:                                  ; preds = %vector.body.interim5657, %vector.ph5638
  %index5653 = phi i64 [ 0, %vector.ph5638 ], [ %index.next5655, %vector.body.interim5657 ]
  %vec.ind5654 = phi <32 x i32> [ %induction5649, %vector.ph5638 ], [ %vec.ind.next5656, %vector.body.interim5657 ] ; 2 uses
  %i.eiv = add nsw <32 x i32> %vec.ind5654, %broadcast.splat5642
  %i.eiw = icmp eq <32 x i32> %i.eiv, %broadcast.splat5644
  %i.eix = freeze <32 x i1> %i.eiw
  %i.eiy = bitcast <32 x i1> %i.eix to i32
  %.not5887 = icmp eq i32 %i.eiy, 0
  br i1 %.not5887, label %vector.body.interim5657, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

vector.body.interim5657:                          ; preds = %vector.body5652
  %vec.ind.next5656 = add <32 x i32> %vec.ind5654, %broadcast.splat5651.a
  %index.next5655 = add nuw i64 %index5653, 32    ; 2 uses
  %i.eiz = icmp eq i64 %index.next5655, %n.vec5640
  br i1 %i.eiz, label %middle.block5658, label %vector.body5652, !llvm.loop !3062

middle.block5658:                                 ; preds = %vector.body.interim5657
  %cmp.n5659 = icmp eq i64 %i.ein, %n.vec5640
  br i1 %cmp.n5659, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5658
  %.ph6025 = phi i64 [ %i.ein, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.eip, %middle.block5658 ]
  %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403.ph = phi i32 [ %i.ehh, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.eis, %middle.block5658 ]
  br label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i
  %i.eja = add nsw i64 %i.ejc, -1                 ; 2 uses
  %i.ejb = icmp eq i64 %i.eja, 0
  br i1 %i.ejb, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3063

.critedge.us.us101.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i
  %i.ejc = phi i64 [ %i.eja, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %.ph6025, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403 = phi i32 [ %i.ejd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403.ph, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ejd = add nsw i32 %.044.us.us97.us.i.i.i.i.i.i.i.i.i5403, %i.ehf ; 2 uses
  %.not16.us.us103.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ejd, %i.ehi
  br i1 %.not16.us.us103.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3061

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i959
  %i.eje = load ptr, ptr %i.ehn, align 8, !tbaa !331
  %i.ejf = sext i32 %i.ehh to i64
  %i.ejg = sext i32 %i.ehf to i64
  %i.ejh = sext i32 %i.eex to i64
  %invariant.gep194.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.eje, i64 %i.ejh
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i962, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960
  %indvars.iv155.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next156.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i962 ], [ %i.ejf, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960 ] ; 3 uses
  %.03643.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i963, %.critedge.us.i.i.i.i.i.i.i.i.i962 ], [ %i.ehg, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i960 ] ; 2 uses
  %gep195.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep194.i.i.i.i.i.i.i.i.i, i64 %indvars.iv155.i.i.i.i.i.i.i.i.i
  %i.eji = load i32, ptr %gep195.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ejj = sext i32 %i.eji to i64
  %i.ejk = getelementptr inbounds [8 x i8], ptr %i.eht, i64 %i.ejj
  %i.ejl = load i64, ptr %i.ejk, align 8, !tbaa !137
  %i.ejm = icmp eq i64 %i.ejl, %i.efr
  br i1 %i.ejm, label %bb.wy, label %.critedge.us.i.i.i.i.i.i.i.i.i962

bb.wy:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961
  %i.ejn = add nsw i64 %.03643.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ejo = icmp eq i64 %i.ejn, 0
  br i1 %i.ejo, label %.split.us.loopexit113.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i962

.critedge.us.i.i.i.i.i.i.i.i.i962:                ; preds = %bb.wy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961
  %.1.us.i.i.i.i.i.i.i.i.i963 = phi i64 [ %.03643.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961 ], [ %i.ejn, %bb.wy ]
  %indvars.iv.next156.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv155.i.i.i.i.i.i.i.i.i, %i.ejg ; 2 uses
  %i.ejp = trunc nsw i64 %indvars.iv.next156.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i964 = icmp eq i32 %i.ehi, %i.ejp
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i964, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i961, !llvm.loop !3061

.lr.ph.split.i.i.i.i.i.i.i.i.i904:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i902
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ehj, i64 57
  %i.ejr = load i8, ptr %i.ejq, align 1, !range !73
  %i.ejs = trunc nuw i8 %i.ejr to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i905 = select i1 %i.ehs, i1 true, i1 %i.ejs
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i905, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i906

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i904
  %i.ejt = sext i32 %i.ehh to i64
  %i.eju = sext i32 %i.ehf to i64
  %i.ejv = sext i32 %i.eex to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956:       ; preds = %.critedge.us51.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955
  %indvars.iv152.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ejt, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955 ], [ %indvars.iv.next153.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03643.us47.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehg, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i955 ], [ %.1.us52.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ejw = add nsw i64 %indvars.iv152.i.i.i.i.i.i.i.i.i, %i.ejv ; 4 uses
  %i.ejx = lshr i64 %i.ejw, 6
  %i.ejy = and i64 %i.ejx, 67108863
  %i.ejz = getelementptr inbounds nuw [8 x i8], ptr %i.ehl, i64 %i.ejy
  %i.eka = load i64, ptr %i.ejz, align 8, !tbaa !137
  %i.ekb = and i64 %i.ejw, 63
  %i.ekc = shl nuw i64 1, %i.ekb
  %i.ekd = and i64 %i.ekc, %i.eka
  %.not.i.i.us.i.i.i.i.i.i.i.i.i957 = icmp eq i64 %i.ekd, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i957, label %.critedge.us51.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956
  %i.eke = trunc nsw i64 %i.ejw to i32
  %i.ekf = load ptr, ptr %i.eho, align 8, !tbaa !487
  br i1 %i.ehs, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, label %bb.wz

bb.wz:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i
  %i.ekg = load i8, ptr %i.ehm, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ekh = trunc nuw i8 %i.ekg to i1
  br i1 %i.ekh, label %bb.xb, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.eki = load ptr, ptr %i.ehn, align 8, !tbaa !331
  %i.ekj = getelementptr inbounds [4 x i8], ptr %i.eki, i64 %i.ejw
  %i.ekk = load i32, ptr %i.ekj, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

bb.xb:                                            ; preds = %bb.wz
  %i.ekl = load i32, ptr %i.ehq, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i: ; preds = %bb.xb, %bb.xa, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i
  %.0.i.i20.us50.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ekk, %bb.xa ], [ %i.ekl, %bb.xb ], [ %i.eke, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i ]
  %i.ekm = sext i32 %.0.i.i20.us50.i.i.i.i.i.i.i.i.i to i64
  %i.ekn = getelementptr inbounds [8 x i8], ptr %i.ekf, i64 %i.ekm
  %i.eko = load i64, ptr %i.ekn, align 8, !tbaa !137
  %i.ekp = icmp eq i64 %i.eko, %i.efr
  br i1 %i.ekp, label %bb.xc, label %.critedge.us51.i.i.i.i.i.i.i.i.i

bb.xc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i
  %i.ekq = add nsw i64 %.03643.us47.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ekr = icmp eq i64 %i.ekq, 0
  br i1 %i.ekr, label %.split.us.loopexit115.i.i.i.i.i.i.i.i.i, label %.critedge.us51.i.i.i.i.i.i.i.i.i

.critedge.us51.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.xc, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956
  %.1.us52.i.i.i.i.i.i.i.i.i = phi i64 [ %.03643.us47.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us49.i.i.i.i.i.i.i.i.i ], [ %i.ekq, %bb.xc ], [ %.03643.us47.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956 ]
  %indvars.iv.next153.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv152.i.i.i.i.i.i.i.i.i, %i.eju ; 2 uses
  %i.eks = trunc nsw i64 %indvars.iv.next153.i.i.i.i.i.i.i.i.i to i32
  %.not16.us53.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ehi, %i.eks
  br i1 %.not16.us53.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i956, !llvm.loop !3061

.lr.ph.split.split.i.i.i.i.i.i.i.i.i906:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i904
  %i.ekt = load i8, ptr %i.ehm, align 1, !tbaa !339, !range !73, !noundef !74
  %i.eku = trunc nuw i8 %i.ekt to i1
  br i1 %i.eku, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i906
  %i.ekv = load i64, ptr %i.ehl, align 8, !tbaa !137
  %i.ekw = and i64 %i.ekv, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i953 = icmp eq i64 %i.ekw, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i953, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952
  %i.ekx = load ptr, ptr %i.eho, align 8, !tbaa !487
  %i.eky = load i32, ptr %i.ehq, align 8, !tbaa !488
  %i.ekz = sext i32 %i.eky to i64
  %i.ela = getelementptr inbounds [8 x i8], ptr %i.ekx, i64 %i.ekz
  %i.elb = load i64, ptr %i.ela, align 8, !tbaa !137
  %i.elc = icmp eq i64 %i.elb, %i.efr
  br i1 %i.elc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954
  %i.eld = trunc i64 %i.ehg to i32
  %i.ele = add i32 %i.eld, -1
  %i.elf = mul i32 %i.ele, %i.ehf
  %i.elg = add i32 %i.ehh, %i.elf                 ; 3 uses
  %i.elh = add nsw i64 %i.ehg, -1                 ; 5 uses
  %i.eli = icmp eq i64 %i.elh, 0
  br i1 %i.eli, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5664 = icmp samesign ult i64 %i.ehg, 33
  br i1 %min.iters.check5664, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5665

vector.ph5665:                                    ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5667 = and i64 %i.elh, -32                ; 3 uses
  %i.elj = and i64 %i.elh, 31
  %i.elk = trunc i64 %n.vec5667 to i32
  %i.ell = mul i32 %i.ehf, %i.elk
  %i.elm = add i32 %i.ehh, %i.ell
  %broadcast.splatinsert5668 = insertelement <32 x i32> poison, i32 %i.ehf, i64 0
  %broadcast.splat5669 = shufflevector <32 x i32> %broadcast.splatinsert5668, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5670 = insertelement <32 x i32> poison, i32 %i.ehi, i64 0
  %broadcast.splat5671 = shufflevector <32 x i32> %broadcast.splatinsert5670, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5672 = insertelement <32 x i32> poison, i32 %i.ehh, i64 0
  %broadcast.splat5673 = shufflevector <32 x i32> %broadcast.splatinsert5672, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5674 = insertelement <32 x i32> poison, i32 %i.ehf, i64 0
  %broadcast.splat5675 = shufflevector <32 x i32> %broadcast.splatinsert5674, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.eln = mul <32 x i32> %broadcast.splat5675, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5676 = add <32 x i32> %broadcast.splat5673, %i.eln
  %i.elo = shl nsw i32 %i.ehf, 5
  %broadcast.splatinsert5677 = insertelement <32 x i32> poison, i32 %i.elo, i64 0
  %broadcast.splat5678 = shufflevector <32 x i32> %broadcast.splatinsert5677, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5679

vector.body5679:                                  ; preds = %vector.body.interim5684, %vector.ph5665
  %index5680 = phi i64 [ 0, %vector.ph5665 ], [ %index.next5682, %vector.body.interim5684 ]
  %vec.ind5681 = phi <32 x i32> [ %induction5676, %vector.ph5665 ], [ %vec.ind.next5683, %vector.body.interim5684 ] ; 2 uses
  %i.elp = add nsw <32 x i32> %vec.ind5681, %broadcast.splat5669
  %i.elq = icmp eq <32 x i32> %i.elp, %broadcast.splat5671
  %i.elr = freeze <32 x i1> %i.elq
  %i.els = bitcast <32 x i1> %i.elr to i32
  %.not5886 = icmp eq i32 %i.els, 0
  br i1 %.not5886, label %vector.body.interim5684, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

vector.body.interim5684:                          ; preds = %vector.body5679
  %vec.ind.next5683 = add <32 x i32> %vec.ind5681, %broadcast.splat5678
  %index.next5682 = add nuw i64 %index5680, 32    ; 2 uses
  %i.elt = icmp eq i64 %index.next5682, %n.vec5667
  br i1 %i.elt, label %middle.block5685, label %vector.body5679, !llvm.loop !3064

middle.block5685:                                 ; preds = %vector.body.interim5684
  %cmp.n5686 = icmp eq i64 %i.elh, %n.vec5667
  br i1 %cmp.n5686, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5685
  %.ph6030 = phi i64 [ %i.elh, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.elj, %middle.block5685 ]
  %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402.ph = phi i32 [ %i.ehh, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.elm, %middle.block5685 ]
  br label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i
  %i.elu = add nsw i64 %i.elw, -1                 ; 2 uses
  %i.elv = icmp eq i64 %i.elu, 0
  br i1 %i.elv, label %.split.us.i.i.i.i.i.i.i.i.i944, label %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3065

.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i
  %i.elw = phi i64 [ %i.elu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i ], [ %.ph6030, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402 = phi i32 [ %i.elx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i ], [ %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402.ph, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.elx = add nsw i32 %.044.us58.us81.us.i.i.i.i.i.i.i.i.i5402, %i.ehf ; 2 uses
  %.not16.us65.us87.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.elx, %i.ehi
  br i1 %.not16.us65.us87.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3061

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i906
  %i.ely = load ptr, ptr %i.ehn, align 8, !tbaa !331
  %i.elz = sext i32 %i.ehh to i64
  %i.ema = sext i32 %i.ehf to i64
  %i.emb = sext i32 %i.eex to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i908 = getelementptr [4 x i8], ptr %i.ely, i64 %i.emb
  br label %bb.xd

bb.xd:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i912, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907
  %indvars.iv.i.i.i.i.i.i.i.i.i909 = phi i64 [ %i.elz, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i914, %.critedge.i.i.i.i.i.i.i.i.i912 ] ; 3 uses
  %.03643.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehg, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i907 ], [ %.1.i.i.i.i.i.i.i.i.i913, %.critedge.i.i.i.i.i.i.i.i.i912 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i910 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i908, i64 %indvars.iv.i.i.i.i.i.i.i.i.i909
  %i.emc = load i32, ptr %gep.i.i.i.i.i.i.i.i.i910, align 4, !tbaa !3 ; 2 uses
  %i.emd = zext i32 %i.emc to i64                 ; 2 uses
  %i.eme = lshr i64 %i.emd, 6
  %i.emf = getelementptr inbounds nuw [8 x i8], ptr %i.ehl, i64 %i.eme
  %i.emg = load i64, ptr %i.emf, align 8, !tbaa !137
  %i.emh = and i64 %i.emd, 63
  %i.emi = shl nuw i64 1, %i.emh
  %i.emj = and i64 %i.emi, %i.emg
  %.not.i7.i.i.i.i.i.i.i.i.i.i911 = icmp eq i64 %i.emj, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i911, label %.critedge.i.i.i.i.i.i.i.i.i912, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i: ; preds = %bb.xd
  %i.emk = load ptr, ptr %i.eho, align 8, !tbaa !487
  %i.eml = sext i32 %i.emc to i64
  %i.emm = getelementptr inbounds [8 x i8], ptr %i.emk, i64 %i.eml
  %i.emn = load i64, ptr %i.emm, align 8, !tbaa !137
  %i.emo = icmp eq i64 %i.emn, %i.efr
  br i1 %i.emo, label %bb.xe, label %.critedge.i.i.i.i.i.i.i.i.i912

bb.xe:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i
  %i.emp = add nsw i64 %.03643.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.emq = icmp eq i64 %i.emp, 0
  br i1 %i.emq, label %.split.us.loopexit125.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i912

.split.us.loopexit.i.i.i.i.i.i.i.i.i971:          ; preds = %bb.wx
  %i.emr = trunc nsw i64 %indvars.iv158.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.loopexit113.i.i.i.i.i.i.i.i.i:          ; preds = %bb.wy
  %i.ems = trunc nsw i64 %indvars.iv155.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.loopexit115.i.i.i.i.i.i.i.i.i:          ; preds = %bb.xc
  %i.emt = trunc nsw i64 %indvars.iv152.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.loopexit125.i.i.i.i.i.i.i.i.i:          ; preds = %bb.xe
  %i.emu = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i909 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i944

.split.us.i.i.i.i.i.i.i.i.i944:                   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5685, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5658, %.split.us.loopexit125.i.i.i.i.i.i.i.i.i, %.split.us.loopexit115.i.i.i.i.i.i.i.i.i, %.split.us.loopexit113.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i971
  %.us-phi.i.i.i.i.i.i.i.i.i945 = phi i32 [ %i.emt, %.split.us.loopexit115.i.i.i.i.i.i.i.i.i ], [ %i.emu, %.split.us.loopexit125.i.i.i.i.i.i.i.i.i ], [ %i.emr, %.split.us.loopexit.i.i.i.i.i.i.i.i.i971 ], [ %i.ems, %.split.us.loopexit113.i.i.i.i.i.i.i.i.i ], [ %i.eim, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.eim, %middle.block5658 ], [ %i.elg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.elg, %middle.block5685 ], [ %i.eim, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %i.elg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.emv = load ptr, ptr %.sroa.12.0..sroa_idx.i874, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.emw = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i945, 1
  %i.emx = sext i32 %i.emw to i64
  %i.emy = getelementptr inbounds nuw i8, ptr %i.emv, i64 144 ; 2 uses
  %i.emz = load ptr, ptr %i.emy, align 8, !tbaa !341 ; 2 uses
  %i.ena = icmp eq ptr %i.emz, null
  br i1 %i.ena, label %bb.xf, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946

bb.xf:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i.i944
  %i.enb = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.emv)
          to label %.noexc19.i.i.i.i.i.i.i.i950 unwind label %bb.xk ; 0 uses

.noexc19.i.i.i.i.i.i.i.i950:                      ; preds = %bb.xf
  %.pre.i.i.i.i.i.i.i.i.i.i951 = load ptr, ptr %i.emy, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946: ; preds = %.noexc19.i.i.i.i.i.i.i.i950, %.split.us.i.i.i.i.i.i.i.i.i944
  %i.enc = phi ptr [ %i.emz, %.split.us.i.i.i.i.i.i.i.i.i944 ], [ %.pre.i.i.i.i.i.i.i.i.i.i951, %.noexc19.i.i.i.i.i.i.i.i950 ]
  %i.end = getelementptr inbounds [8 x i8], ptr %i.enc, i64 %i.egv
  store i64 %i.emx, ptr %i.end, align 8, !tbaa !137
  %i.ene = getelementptr inbounds nuw i8, ptr %i.emv, i64 32 ; 2 uses
  %i.enf = load ptr, ptr %i.ene, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.enf, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %bb.xg

bb.xg:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946
  %i.eng = getelementptr inbounds nuw i8, ptr %i.emv, i64 56
  %i.enh = load i32, ptr %i.eng, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.emv, i32 noundef %i.enh, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i947 unwind label %bb.xk

.noexc20.i.i.i.i.i.i.i.i947:                      ; preds = %bb.xg
  %i.eni = load ptr, ptr %i.ene, align 8, !tbaa !362 ; 2 uses
  %i.enj = getelementptr inbounds nuw i8, ptr %i.eni, i64 44
  %i.enk = load i8, ptr %i.enj, align 4, !tbaa !363
  %i.enl = and i8 %i.enk, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i948 = icmp eq i8 %i.enl, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i948, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949, label %.invoke.i.i.i.i.i.i.i.i941, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949: ; preds = %.noexc20.i.i.i.i.i.i.i.i947
  %i.enm = getelementptr inbounds nuw i8, ptr %i.eni, i64 16
  %i.enn = load ptr, ptr %i.enm, align 8, !tbaa !368
  %i.eno = lshr i64 %.074.i.i.i.i.i.i.i.i895, 3
  %i.enp = and i64 %i.eno, 536870911
  %i.enq = getelementptr inbounds nuw i8, ptr %i.enn, i64 %i.enp ; 2 uses
  %i.enr = load i8, ptr %i.enq, align 1, !tbaa !30
  %i.ens = trunc i64 %.074.i.i.i.i.i.i.i.i895 to i8
  %i.ent = and i8 %i.ens, 7
  %i.enu = shl nuw i8 1, %i.ent
  %i.env = or i8 %i.enr, %i.enu
  store i8 %i.env, ptr %i.enq, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916

.critedge.i.i.i.i.i.i.i.i.i912:                   ; preds = %bb.xe, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i, %bb.xd
  %.1.i.i.i.i.i.i.i.i.i913 = phi i64 [ %.03643.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i ], [ %i.emp, %bb.xe ], [ %.03643.i.i.i.i.i.i.i.i.i, %bb.xd ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i914 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i909, %i.ema ; 2 uses
  %i.enw = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i914 to i32
  %.not16.i.i.i.i.i.i.i.i.i915 = icmp eq i32 %i.ehi, %i.enw
  br i1 %.not16.i.i.i.i.i.i.i.i.i915, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916, label %bb.xd, !llvm.loop !3061

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916: ; preds = %.critedge.i.i.i.i.i.i.i.i.i912, %vector.body5679, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i962, %vector.body5652, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i968, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965, %bb.ww
  %.041.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i945, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i946 ], [ %.us-phi.i.i.i.i.i.i.i.i.i945, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i949 ], [ %i.ehh, %bb.ww ], [ %i.ehi, %.critedge.us63.us85.us.i.i.i.i.i.i.i.i.i ], [ %i.ehi, %.critedge.us.us101.us.i.i.i.i.i.i.i.i.i ], [ %i.ehi, %.critedge.us51.i.i.i.i.i.i.i.i.i ], [ %i.ehi, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i954 ], [ %i.ehi, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i965 ], [ %i.ehi, %vector.body5652 ], [ %i.ehi, %.critedge.us.us.i.i.i.i.i.i.i.i.i968 ], [ %i.ehi, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i952 ], [ %i.ehi, %vector.body5679 ], [ %i.ehi, %.critedge.us.i.i.i.i.i.i.i.i.i962 ], [ %i.ehi, %.critedge.i.i.i.i.i.i.i.i.i912 ]
  %i.enx = load ptr, ptr %.sroa.953.0..sroa_idx.i, align 8, !tbaa !3058, !nonnull !74, !align !497
  %i.eny = load i32, ptr %i.enx, align 4, !tbaa !3
  %i.enz = icmp eq i32 %.041.i.i.i.i.i.i.i.i.i, %i.eny
  br i1 %i.enz, label %bb.xh, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.xh:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i916
  %i.eoa = load ptr, ptr %.sroa.12.0..sroa_idx.i874, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.eob = getelementptr inbounds nuw i8, ptr %i.eoa, i64 144 ; 2 uses
  %i.eoc = load ptr, ptr %i.eob, align 8, !tbaa !341 ; 2 uses
  %i.eod = icmp eq ptr %i.eoc, null
  br i1 %i.eod, label %bb.xi, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i

bb.xi:                                            ; preds = %bb.xh
  %i.eoe = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.eoa)
          to label %.noexc22.i.i.i.i.i.i.i.i943 unwind label %bb.xk ; 0 uses

.noexc22.i.i.i.i.i.i.i.i943:                      ; preds = %bb.xi
  %.pre.i27.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eob, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i943, %bb.xh
  %i.eof = phi ptr [ %i.eoc, %bb.xh ], [ %.pre.i27.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i943 ]
  %i.eog = getelementptr inbounds [8 x i8], ptr %i.eof, i64 %i.egv
  store i64 0, ptr %i.eog, align 8, !tbaa !137
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.eoa, i64 32 ; 2 uses
  %i.eoi = load ptr, ptr %i.eoh, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eoi, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.xj

bb.xj:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoa, i64 56
  %i.eok = load i32, ptr %i.eoj, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.eoa, i32 noundef %i.eok, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i940 unwind label %bb.xk

.noexc23.i.i.i.i.i.i.i.i940:                      ; preds = %bb.xj
  %i.eol = load ptr, ptr %i.eoh, align 8, !tbaa !362 ; 2 uses
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eol, i64 44
  %i.eon = load i8, ptr %i.eom, align 4, !tbaa !363
  %i.eoo = and i8 %i.eon, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.eoo, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i941, !prof !69
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.fgo = zext nneg i32 %i.fgn to i64
  %i.fgp = shl i64 %i.fgm, %i.fgo
  %i.fgq = and i64 %i.fgp, %i.fgj
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %129, i32 noundef %i.fgg, i64 noundef %i.fgq)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.abk:                                           ; preds = %bb.abi
  %.not32.i.i.i.i.i.i.i1143 = icmp eq i32 %i.ffy, %i.fgd
  br i1 %.not32.i.i.i.i.i.i.i1143, label %bb.abm, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.fgr = sdiv i32 %i.ffy, 64
  %i.fgs = sub nsw i32 %i.fgd, %i.ffy             ; 2 uses
  %i.fgt = zext nneg i32 %i.fgs to i64
  %notmask.i.i35.i.i.i.i.i.i.i1144 = shl nsw i64 -1, %i.fgt
  %i.fgu = xor i64 %notmask.i.i35.i.i.i.i.i.i.i1144, -1
  %i.fgv = sub nsw i32 64, %i.fgs
  %i.fgw = zext nneg i32 %i.fgv to i64
  %i.fgx = shl i64 %i.fgu, %i.fgw
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %129, i32 noundef %i.fgr, i64 noundef %i.fgx)
  br label %bb.abm

bb.abm:                                           ; preds = %bb.abl, %bb.abk
  %i.fgy = add nsw i32 %i.fgd, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i = icmp sgt i32 %i.fgy, %i.fge
  br i1 %.not3351.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i1147, label %.lr.ph.i.i.i.i.i.i29.i1145

.lr.ph.i.i.i.i.i.i29.i1145:                       ; preds = %bb.abm
  %i.fgz = getelementptr inbounds nuw i8, ptr %123, i64 16
  %i.fha = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 2 uses
  br label %bb.abn

._crit_edge.i.i.i.i.i.i.i1147:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.abm
  %.not34.i.i.i.i.i.i.i1148 = icmp eq i32 %i.fga, %i.fge
  br i1 %.not34.i.i.i.i.i.i.i1148, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.adw

bb.abn:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i1145
  %i.fhb = phi i32 [ %i.fgy, %.lr.ph.i.i.i.i.i.i29.i1145 ], [ %i.ftj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i.i.i.i = phi i32 [ %i.fgd, %.lr.ph.i.i.i.i.i.i29.i1145 ], [ %i.fhb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.fhc = sdiv i32 %.052.i.i.i.i.i.i.i, 64       ; 3 uses
  %i.fhd = sext i32 %i.fhc to i64
  %i.fhe = getelementptr inbounds [8 x i8], ptr %i.ffw, i64 %i.fhd
  %i.fhf = load i64, ptr %i.fhe, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.fhf, label %.lr.ph.i.i.i.i.i.i.i.i1237 [
    i64 -1, label %bb.abo
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i1237:                       ; preds = %bb.abn
  %i.fhg = shl nsw i32 %i.fhc, 6
  br label %bb.adf

bb.abo:                                           ; preds = %bb.abn
  %i.fhh = shl nsw i32 %i.fhc, 6                  ; 2 uses
  %i.fhi = add i32 %i.fhh, 64
  %i.fhj = sext i32 %i.fhi to i64
  %.0.off.i.i.i.i.i.i.i1150 = add i32 %.052.i.i.i.i.i.i.i, 127
  %.not73.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i1150, 64
  br i1 %.not73.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph72.i.i.i.i.i.i.i.i

.lr.ph72.i.i.i.i.i.i.i.i:                         ; preds = %bb.abo
  %i.fhk = sext i32 %i.fhh to i64
  br label %bb.abp

bb.abp:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph72.i.i.i.i.i.i.i.i
  %.069.i.i.i.i.i.i.i.i = phi i64 [ %i.fhk, %.lr.ph72.i.i.i.i.i.i.i.i ], [ %i.frw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.fhl = load ptr, ptr %133, align 8, !tbaa !3083, !nonnull !74, !align !275
  %i.fhm = load ptr, ptr %i.fhl, align 8, !tbaa !329
  %i.fhn = load ptr, ptr %.sroa.447.0..sroa_idx.i1124, align 8, !tbaa !3085, !nonnull !74, !align !275
  %i.fho = load ptr, ptr %i.fhn, align 8, !tbaa !329 ; 2 uses
  %i.fhp = getelementptr inbounds nuw [4 x i8], ptr %i.fho, i64 %.069.i.i.i.i.i.i.i.i
  %i.fhq = load i32, ptr %i.fhp, align 4, !tbaa !3
  %i.fhr = sext i32 %i.fhq to i64
  %i.fhs = getelementptr inbounds [4 x i8], ptr %i.fhm, i64 %i.fhr
  %i.fht = load i32, ptr %i.fhs, align 4, !tbaa !3 ; 3 uses
  %i.fhu = load ptr, ptr %.sroa.548.0..sroa_idx.i1125, align 8, !tbaa !3086, !nonnull !74, !align !275 ; 5 uses
  %i.fhv = trunc i64 %.069.i.i.i.i.i.i.i.i to i32 ; 4 uses
  %i.fhw = getelementptr inbounds nuw i8, ptr %i.fhu, i64 16
  %i.fhx = load ptr, ptr %i.fhw, align 8, !tbaa !487
  %i.fhy = getelementptr inbounds nuw i8, ptr %i.fhu, i64 58
  %i.fhz = load i8, ptr %i.fhy, align 2, !tbaa !338, !range !73, !noundef !74
  %i.fia = trunc nuw i8 %i.fhz to i1
  br i1 %i.fia, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.fib = getelementptr inbounds nuw i8, ptr %i.fhu, i64 59
  %i.fic = load i8, ptr %i.fib, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fid = trunc nuw i8 %i.fic to i1
  br i1 %i.fid, label %bb.abr, label %bb.abs

bb.abr:                                           ; preds = %bb.abq
  %i.fie = getelementptr inbounds nuw i8, ptr %i.fhu, i64 64
  %i.fif = load i32, ptr %i.fie, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i.i.i.i.i.i.i.i.i

bb.abs:                                           ; preds = %bb.abq
  %i.fig = getelementptr inbounds nuw i8, ptr %i.fhu, i64 8
  %i.fih = load ptr, ptr %i.fig, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i1151 = shl i64 %.069.i.i.i.i.i.i.i.i, 32
  %i.fii = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i1151, 30
  %i.fij = getelementptr inbounds i8, ptr %i.fih, i64 %i.fii
  %i.fik = load i32, ptr %i.fij, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.abs, %bb.abr, %bb.abp
  %.0.i.i.i.i.i.i.i.i.i.i.i1152 = phi i32 [ %i.fik, %bb.abs ], [ %i.fif, %bb.abr ], [ %i.fhv, %bb.abp ]
  %i.fil = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i1152 to i64
  %i.fim = shl nsw i64 %i.fil, 4
  %i.fin = getelementptr inbounds nuw i8, ptr %i.fhx, i64 %i.fim
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fin, align 1 ; 4 uses
  %i.fio = load ptr, ptr %.sroa.649.0..sroa_idx.i1126, align 8, !tbaa !3087, !nonnull !74, !align !275 ; 5 uses
  %i.fip = getelementptr inbounds nuw i8, ptr %i.fio, i64 16
  %i.fiq = load ptr, ptr %i.fip, align 8, !tbaa !487
  %i.fir = getelementptr inbounds nuw i8, ptr %i.fio, i64 58
  %i.fis = load i8, ptr %i.fir, align 2, !tbaa !338, !range !73, !noundef !74
  %i.fit = trunc nuw i8 %i.fis to i1
  br i1 %i.fit, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1154, label %bb.abt

bb.abt:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.fiu = getelementptr inbounds nuw i8, ptr %i.fio, i64 59
  %i.fiv = load i8, ptr %i.fiu, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fiw = trunc nuw i8 %i.fiv to i1
  br i1 %i.fiw, label %bb.abu, label %bb.abv

bb.abu:                                           ; preds = %bb.abt
  %i.fix = getelementptr inbounds nuw i8, ptr %i.fio, i64 64
  %i.fiy = load i32, ptr %i.fix, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1154

bb.abv:                                           ; preds = %bb.abt
  %i.fiz = getelementptr inbounds nuw i8, ptr %i.fio, i64 8
  %i.fja = load ptr, ptr %i.fiz, align 8, !tbaa !331
  %sext38.i.i.i.i.i.i.i.i.i1153 = shl i64 %.069.i.i.i.i.i.i.i.i, 32
  %i.fjb = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i1153, 30
  %i.fjc = getelementptr inbounds i8, ptr %i.fja, i64 %i.fjb
  %i.fjd = load i32, ptr %i.fjc, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1154

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1154: ; preds = %bb.abv, %bb.abu, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i1155 = phi i32 [ %i.fjd, %bb.abv ], [ %i.fiy, %bb.abu ], [ %i.fhv, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.fje = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i1155 to i64
  %i.fjf = getelementptr inbounds [8 x i8], ptr %i.fiq, i64 %i.fje
  %i.fjg = load i64, ptr %i.fjf, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i1156 = icmp eq i64 %i.fjg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1156, label %bb.abw, label %bb.abz, !prof !48

bb.abw:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1154
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #35, !noalias !3088
  store i64 0, ptr %123, align 16, !tbaa !30, !noalias !3088
  store i32 0, ptr %i.fgz, align 16, !tbaa !30, !alias.scope !3091, !noalias !3088
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %124, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %123)
          to label %.noexc.i.i.i.i.i.i.i.i1233 unwind label %bb.acp

.noexc.i.i.i.i.i.i.i.i1233:                       ; preds = %bb.abw
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #35, !noalias !3088
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %124, ptr nonnull @.str.178) #38
          to label %bb.abx unwind label %bb.aby

bb.abx:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i1233
  unreachable

bb.aby:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i1233
  %i.fjh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.fji = load ptr, ptr %124, align 8, !tbaa !49 ; 2 uses
  %i.fjj = icmp eq ptr %i.fji, %i.fha
  br i1 %i.fjj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1234: ; preds = %bb.aby
  %i.fjk = load i64, ptr %i.fha, align 8, !tbaa !30
  %i.fjl = add i64 %i.fjk, 1
  call void @_ZdlPvm(ptr noundef %i.fji, i64 noundef %i.fjl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1235: ; preds = %bb.aby, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1234
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #35
  br label %.body.i.i.i.i.i.i.i.i1178

bb.abz:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1154
  %i.fjm = load ptr, ptr %.sroa.750.0..sroa_idx.i1127, align 8, !tbaa !3094, !nonnull !74, !align !275
  %i.fjn = load ptr, ptr %i.fjm, align 8, !tbaa !329
  %i.fjo = load ptr, ptr %.sroa.851.0..sroa_idx.i1128, align 8, !tbaa !3095, !nonnull !74, !align !497 ; 2 uses
  %i.fjp = load ptr, ptr %.sroa.952.0..sroa_idx.i1129, align 8, !tbaa !3096, !nonnull !74, !align !497 ; 2 uses
  %i.fjq = load ptr, ptr %.sroa.1053.0..sroa_idx.i1130, align 8, !tbaa !3097, !nonnull !74, !align !497
  %sext39.i.i.i.i.i.i.i.i.i1157 = shl i64 %.069.i.i.i.i.i.i.i.i, 32
  %i.fjr = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i1157, 32 ; 3 uses
  %i.fjs = getelementptr inbounds [4 x i8], ptr %i.fho, i64 %i.fjr
  %i.fjt = load i32, ptr %i.fjs, align 4, !tbaa !3
  %i.fju = sext i32 %i.fjt to i64
  %i.fjv = getelementptr inbounds [4 x i8], ptr %i.fjn, i64 %i.fju
  %i.fjw = load i32, ptr %i.fjv, align 4, !tbaa !3 ; 2 uses
  %i.fjx = icmp sgt i64 %i.fjg, 0                 ; 3 uses
  %i.fjy = add nsw i32 %i.fjw, -1
  %i.fjz = select i1 %i.fjx, i32 0, i32 %i.fjy
  store i32 %i.fjz, ptr %i.fjo, align 4, !tbaa !3
  %i.fka = select i1 %i.fjx, i32 %i.fjw, i32 -1
  store i32 %i.fka, ptr %i.fjp, align 4, !tbaa !3
  %i.fkb = select i1 %i.fjx, i32 1, i32 -1        ; 10 uses
  store i32 %i.fkb, ptr %i.fjq, align 4, !tbaa !3
  %i.fkc = call noundef i64 @llvm.abs.i64(i64 %i.fjg, i1 true) ; 6 uses
  %i.fkd = load i32, ptr %i.fjo, align 4, !tbaa !3 ; 9 uses
  %i.fke = load i32, ptr %i.fjp, align 4, !tbaa !3 ; 13 uses
  %.not1642.i.i.i.i.i.i.i.i.i1158 = icmp eq i32 %i.fkd, %i.fke
  br i1 %.not1642.i.i.i.i.i.i.i.i.i1158, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %.lr.ph.i.i.i.i.i.i.i.i.i1159

.lr.ph.i.i.i.i.i.i.i.i.i1159:                     ; preds = %bb.abz
  %i.fkf = load ptr, ptr %.sroa.11.0..sroa_idx.i1131, align 8, !tbaa !3098, !nonnull !74, !align !275 ; 7 uses
  %i.fkg = getelementptr inbounds nuw i8, ptr %i.fkf, i64 24
  %i.fkh = load ptr, ptr %i.fkg, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1160 = icmp eq ptr %i.fkh, null
  %i.fki = getelementptr inbounds nuw i8, ptr %i.fkf, i64 59 ; 3 uses
  %i.fkj = getelementptr inbounds nuw i8, ptr %i.fkf, i64 8 ; 3 uses
  %i.fkk = getelementptr inbounds nuw i8, ptr %i.fkf, i64 16 ; 4 uses
  %i.fkl = getelementptr inbounds nuw i8, ptr %i.fkf, i64 58
  %i.fkm = getelementptr inbounds nuw i8, ptr %i.fkf, i64 64 ; 3 uses
  %i.fkn = load i8, ptr %i.fkl, align 2, !tbaa !338, !range !73, !noundef !74
  %i.fko = trunc nuw i8 %i.fkn to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1160, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1161

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1159
  %i.fkp = load ptr, ptr %i.fkk, align 8, !tbaa !487
  %i.fkq = sext i32 %i.fkd to i64
  %i.fkr = sext i32 %i.fkb to i64
  %i.fks = sext i32 %i.fht to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1229, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225
  %indvars.iv132.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next133.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1229 ], [ %i.fkq, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225 ] ; 3 uses
  %.03643.us.i.i.i.i.i.i.i.i.i1227 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1230, %.critedge.us.i.i.i.i.i.i.i.i.i1229 ], [ %i.fkc, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1225 ] ; 2 uses
  %i.fkt = add nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i, %i.fks ; 2 uses
  %i.fku = trunc nsw i64 %i.fkt to i32
  br i1 %i.fko, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i, label %bb.aca

bb.aca:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226
  %i.fkv = load i8, ptr %i.fki, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fkw = trunc nuw i8 %i.fkv to i1
  br i1 %i.fkw, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.fkx = load ptr, ptr %i.fkj, align 8, !tbaa !331
  %i.fky = getelementptr inbounds [4 x i8], ptr %i.fkx, i64 %i.fkt
  %i.fkz = load i32, ptr %i.fky, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i

bb.acc:                                           ; preds = %bb.aca
  %i.fla = load i32, ptr %i.fkm, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.acc, %bb.acb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1228 = phi i32 [ %i.fkz, %bb.acb ], [ %i.fla, %bb.acc ], [ %i.fku, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226 ]
  %i.flb = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1228 to i64
  %i.flc = shl nsw i64 %i.flb, 4
  %i.fld = getelementptr inbounds nuw i8, ptr %i.fkp, i64 %i.flc
  %.0.copyload.i.i20.us.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fld, align 1
  %i.fle = icmp eq i128 %.0.copyload.i.i20.us.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fle, label %bb.acd, label %.critedge.us.i.i.i.i.i.i.i.i.i1229

bb.acd:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i
  %i.flf = add nsw i64 %.03643.us.i.i.i.i.i.i.i.i.i1227, -1 ; 2 uses
  %i.flg = icmp eq i64 %i.flf, 0
  br i1 %i.flg, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i1232, label %.critedge.us.i.i.i.i.i.i.i.i.i1229

.critedge.us.i.i.i.i.i.i.i.i.i1229:               ; preds = %bb.acd, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1230 = phi i64 [ %.03643.us.i.i.i.i.i.i.i.i.i1227, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i ], [ %i.flf, %bb.acd ]
  %indvars.iv.next133.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i, %i.fkr ; 2 uses
  %i.flh = trunc nsw i64 %indvars.iv.next133.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1231 = icmp eq i32 %i.fke, %i.flh
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1231, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1226, !llvm.loop !3099

.lr.ph.split.i.i.i.i.i.i.i.i.i1161:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1159
  %i.fli = getelementptr inbounds nuw i8, ptr %i.fkf, i64 57
  %i.flj = load i8, ptr %i.fli, align 1, !range !73
  %i.flk = trunc nuw i8 %i.flj to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1162 = select i1 %i.fko, i1 true, i1 %i.flk
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1162, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1161
  %i.fll = sext i32 %i.fkd to i64
  %i.flm = sext i32 %i.fkb to i64
  %i.fln = sext i32 %i.fht to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221:      ; preds = %.critedge.us52.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220
  %indvars.iv129.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fll, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220 ], [ %indvars.iv.next130.i.i.i.i.i.i.i.i.i, %.critedge.us52.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03643.us47.i.i.i.i.i.i.i.i.i1222 = phi i64 [ %i.fkc, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1220 ], [ %.1.us53.i.i.i.i.i.i.i.i.i, %.critedge.us52.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.flo = add nsw i64 %indvars.iv129.i.i.i.i.i.i.i.i.i, %i.fln ; 4 uses
  %i.flp = lshr i64 %i.flo, 6
  %i.flq = and i64 %i.flp, 67108863
  %i.flr = getelementptr inbounds nuw [8 x i8], ptr %i.fkh, i64 %i.flq
  %i.fls = load i64, ptr %i.flr, align 8, !tbaa !137
  %i.flt = and i64 %i.flo, 63
  %i.flu = shl nuw i64 1, %i.flt
  %i.flv = and i64 %i.flu, %i.fls
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1223 = icmp eq i64 %i.flv, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1223, label %.critedge.us52.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221
  %i.flw = trunc nsw i64 %i.flo to i32
  %i.flx = load ptr, ptr %i.fkk, align 8, !tbaa !487
  br i1 %i.fko, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, label %bb.ace

bb.ace:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224
  %i.fly = load i8, ptr %i.fki, align 1, !tbaa !339, !range !73, !noundef !74
  %i.flz = trunc nuw i8 %i.fly to i1
  br i1 %i.flz, label %bb.acg, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.fma = load ptr, ptr %i.fkj, align 8, !tbaa !331
  %i.fmb = getelementptr inbounds [4 x i8], ptr %i.fma, i64 %i.flo
  %i.fmc = load i32, ptr %i.fmb, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

bb.acg:                                           ; preds = %bb.ace
  %i.fmd = load i32, ptr %i.fkm, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i: ; preds = %bb.acg, %bb.acf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224
  %.0.i.i19.us50.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fmc, %bb.acf ], [ %i.fmd, %bb.acg ], [ %i.flw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48.i.i.i.i.i.i.i.i.i1224 ]
  %i.fme = sext i32 %.0.i.i19.us50.i.i.i.i.i.i.i.i.i to i64
  %i.fmf = shl nsw i64 %i.fme, 4
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.flx, i64 %i.fmf
  %.0.copyload.i.i20.us51.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fmg, align 1
  %i.fmh = icmp eq i128 %.0.copyload.i.i20.us51.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fmh, label %bb.ach, label %.critedge.us52.i.i.i.i.i.i.i.i.i

bb.ach:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i
  %i.fmi = add nsw i64 %.03643.us47.i.i.i.i.i.i.i.i.i1222, -1 ; 2 uses
  %i.fmj = icmp eq i64 %i.fmi, 0
  br i1 %i.fmj, label %.split.us.loopexit97.i.i.i.i.i.i.i.i.i, label %.critedge.us52.i.i.i.i.i.i.i.i.i

.critedge.us52.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ach, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221
  %.1.us53.i.i.i.i.i.i.i.i.i = phi i64 [ %.03643.us47.i.i.i.i.i.i.i.i.i1222, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us49.i.i.i.i.i.i.i.i.i ], [ %i.fmi, %bb.ach ], [ %.03643.us47.i.i.i.i.i.i.i.i.i1222, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221 ]
  %indvars.iv.next130.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv129.i.i.i.i.i.i.i.i.i, %i.flm ; 2 uses
  %i.fmk = trunc nsw i64 %indvars.iv.next130.i.i.i.i.i.i.i.i.i to i32
  %.not16.us54.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fke, %i.fmk
  br i1 %.not16.us54.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1221, !llvm.loop !3099

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1161
  %i.fml = load i8, ptr %i.fki, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fmm = trunc nuw i8 %i.fml to i1
  br i1 %i.fmm, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163
  %i.fmn = load i64, ptr %i.fkh, align 8, !tbaa !137
  %i.fmo = and i64 %i.fmn, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1218 = icmp eq i64 %i.fmo, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1218, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217
  %i.fmp = load ptr, ptr %i.fkk, align 8, !tbaa !487
  %i.fmq = load i32, ptr %i.fkm, align 8, !tbaa !488
  %i.fmr = sext i32 %i.fmq to i64
  %i.fms = shl nsw i64 %i.fmr, 4
  %i.fmt = getelementptr inbounds nuw i8, ptr %i.fmp, i64 %i.fms
  %.0.copyload.i.i20.us64.us87.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fmt, align 1
  %i.fmu = icmp eq i128 %.0.copyload.i.i20.us64.us87.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fmu, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219
  %i.fmv = trunc i64 %i.fkc to i32
  %i.fmw = add i32 %i.fmv, -1
  %i.fmx = mul i32 %i.fmw, %i.fkb
  %i.fmy = add i32 %i.fkd, %i.fmx                 ; 3 uses
  %i.fmz = add nsw i64 %i.fkc, -1                 ; 5 uses
  %i.fna = icmp eq i64 %i.fmz, 0
  br i1 %i.fna, label %.split.us.i.i.i.i.i.i.i.i.i1208, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5610 = icmp samesign ult i64 %i.fkc, 33
  br i1 %min.iters.check5610, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5611

vector.ph5611:                                    ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5613 = and i64 %i.fmz, -32                ; 3 uses
  %i.fnb = and i64 %i.fmz, 31
  %i.fnc = trunc i64 %n.vec5613 to i32
  %i.fnd = mul i32 %i.fkb, %i.fnc
  %i.fne = add i32 %i.fkd, %i.fnd
  %broadcast.splatinsert5614 = insertelement <32 x i32> poison, i32 %i.fkb, i64 0
  %broadcast.splat5615 = shufflevector <32 x i32> %broadcast.splatinsert5614, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5616 = insertelement <32 x i32> poison, i32 %i.fke, i64 0
  %broadcast.splat5617 = shufflevector <32 x i32> %broadcast.splatinsert5616, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5618 = insertelement <32 x i32> poison, i32 %i.fkd, i64 0
  %broadcast.splat5619 = shufflevector <32 x i32> %broadcast.splatinsert5618, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5620 = insertelement <32 x i32> poison, i32 %i.fkb, i64 0
  %broadcast.splat5621 = shufflevector <32 x i32> %broadcast.splatinsert5620, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fnf = mul <32 x i32> %broadcast.splat5621, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5622 = add <32 x i32> %broadcast.splat5619, %i.fnf
  %i.fng = shl nsw i32 %i.fkb, 5
  %broadcast.splatinsert5623 = insertelement <32 x i32> poison, i32 %i.fng, i64 0
  %broadcast.splat5624 = shufflevector <32 x i32> %broadcast.splatinsert5623, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5625

vector.body5625:                                  ; preds = %vector.body.interim5630, %vector.ph5611
  %index5626 = phi i64 [ 0, %vector.ph5611 ], [ %index.next5628, %vector.body.interim5630 ]
  %vec.ind5627 = phi <32 x i32> [ %induction5622, %vector.ph5611 ], [ %vec.ind.next5629, %vector.body.interim5630 ] ; 2 uses
  %i.fnh = add nsw <32 x i32> %vec.ind5627, %broadcast.splat5615
  %i.fni = icmp eq <32 x i32> %i.fnh, %broadcast.splat5617
  %i.fnj = freeze <32 x i1> %i.fni
  %i.fnk = bitcast <32 x i1> %i.fnj to i32
  %.not5885 = icmp eq i32 %i.fnk, 0
  br i1 %.not5885, label %vector.body.interim5630, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174

vector.body.interim5630:                          ; preds = %vector.body5625
  %vec.ind.next5629 = add <32 x i32> %vec.ind5627, %broadcast.splat5624
  %index.next5628 = add nuw i64 %index5626, 32    ; 2 uses
  %i.fnl = icmp eq i64 %index.next5628, %n.vec5613
  br i1 %i.fnl, label %middle.block5631, label %vector.body5625, !llvm.loop !3100

middle.block5631:                                 ; preds = %vector.body.interim5630
  %cmp.n5632 = icmp eq i64 %i.fmz, %n.vec5613
  br i1 %cmp.n5632, label %.split.us.i.i.i.i.i.i.i.i.i1208, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5631
  %.ph6058 = phi i64 [ %i.fmz, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.fnb, %middle.block5631 ]
  %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395.ph = phi i32 [ %i.fkd, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.fne, %middle.block5631 ]
  br label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i
  %i.fnm = add nsw i64 %i.fno, -1                 ; 2 uses
  %i.fnn = icmp eq i64 %i.fnm, 0
  br i1 %i.fnn, label %.split.us.i.i.i.i.i.i.i.i.i1208, label %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3101

.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i
  %i.fno = phi i64 [ %i.fnm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ], [ %.ph6058, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395 = phi i32 [ %i.fnp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ], [ %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395.ph, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.fnp = add nsw i32 %.044.us59.us83.us.i.i.i.i.i.i.i.i.i5395, %i.fkb ; 2 uses
  %.not16.us67.us90.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fnp, %i.fke
  br i1 %.not16.us67.us90.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3099

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1163
  %i.fnq = load ptr, ptr %i.fkj, align 8, !tbaa !331
  %i.fnr = sext i32 %i.fkd to i64
  %i.fns = sext i32 %i.fkb to i64
  %i.fnt = sext i32 %i.fht to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1165 = getelementptr [4 x i8], ptr %i.fnq, i64 %i.fnt
  br label %bb.aci

bb.aci:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i1170, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164
  %indvars.iv.i.i.i.i.i.i.i.i.i1166 = phi i64 [ %i.fnr, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1172, %.critedge.i.i.i.i.i.i.i.i.i1170 ] ; 3 uses
  %.03643.i.i.i.i.i.i.i.i.i1167 = phi i64 [ %i.fkc, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1164 ], [ %.1.i.i.i.i.i.i.i.i.i1171, %.critedge.i.i.i.i.i.i.i.i.i1170 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1168 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1165, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1166
  %i.fnu = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1168, align 4, !tbaa !3 ; 2 uses
  %i.fnv = zext i32 %i.fnu to i64                 ; 2 uses
  %i.fnw = lshr i64 %i.fnv, 6
  %i.fnx = getelementptr inbounds nuw [8 x i8], ptr %i.fkh, i64 %i.fnw
  %i.fny = load i64, ptr %i.fnx, align 8, !tbaa !137
  %i.fnz = and i64 %i.fnv, 63
  %i.foa = shl nuw i64 1, %i.fnz
  %i.fob = and i64 %i.foa, %i.fny
  %.not.i7.i.i.i.i.i.i.i.i.i.i1169 = icmp eq i64 %i.fob, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1169, label %.critedge.i.i.i.i.i.i.i.i.i1170, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i: ; preds = %bb.aci
  %i.foc = load ptr, ptr %i.fkk, align 8, !tbaa !487
  %i.fod = sext i32 %i.fnu to i64
  %i.foe = shl nsw i64 %i.fod, 4
  %i.fof = getelementptr inbounds nuw i8, ptr %i.foc, i64 %i.foe
  %.0.copyload.i.i20.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fof, align 1
  %i.fog = icmp eq i128 %.0.copyload.i.i20.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fog, label %bb.acj, label %.critedge.i.i.i.i.i.i.i.i.i1170

bb.acj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i
  %i.foh = add nsw i64 %.03643.i.i.i.i.i.i.i.i.i1167, -1 ; 2 uses
  %i.foi = icmp eq i64 %i.foh, 0
  br i1 %i.foi, label %.split.us.loopexit107.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i1170

.split.us.loopexit.i.i.i.i.i.i.i.i.i1232:         ; preds = %bb.acd
  %i.foj = trunc nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1208

.split.us.loopexit97.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ach
  %i.fok = trunc nsw i64 %indvars.iv129.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1208

.split.us.loopexit107.i.i.i.i.i.i.i.i.i:          ; preds = %bb.acj
  %i.fol = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1166 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1208

.split.us.i.i.i.i.i.i.i.i.i1208:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5631, %.split.us.loopexit107.i.i.i.i.i.i.i.i.i, %.split.us.loopexit97.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1232
  %.us-phi.i.i.i.i.i.i.i.i.i1209 = phi i32 [ %i.fol, %.split.us.loopexit107.i.i.i.i.i.i.i.i.i ], [ %i.foj, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1232 ], [ %i.fok, %.split.us.loopexit97.i.i.i.i.i.i.i.i.i ], [ %i.fmy, %middle.block5631 ], [ %i.fmy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.fmy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fom = load ptr, ptr %.sroa.12.0..sroa_idx.i1132, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.fon = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1209, 1
  %i.foo = sext i32 %i.fon to i64
  %i.fop = getelementptr inbounds nuw i8, ptr %i.fom, i64 144 ; 2 uses
  %i.foq = load ptr, ptr %i.fop, align 8, !tbaa !341 ; 2 uses
  %i.for = icmp eq ptr %i.foq, null
  br i1 %i.for, label %bb.ack, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210

bb.ack:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i1208
  %i.fos = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fom)
          to label %.noexc19.i.i.i.i.i.i.i.i1215 unwind label %bb.acp ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1215:                     ; preds = %bb.ack
  %.pre.i.i.i.i.i.i.i.i.i.i1216 = load ptr, ptr %i.fop, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210: ; preds = %.noexc19.i.i.i.i.i.i.i.i1215, %.split.us.i.i.i.i.i.i.i.i.i1208
  %i.fot = phi ptr [ %i.foq, %.split.us.i.i.i.i.i.i.i.i.i1208 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1216, %.noexc19.i.i.i.i.i.i.i.i1215 ]
  %i.fou = getelementptr inbounds [8 x i8], ptr %i.fot, i64 %i.fjr
  store i64 %i.foo, ptr %i.fou, align 8, !tbaa !137
  %i.fov = getelementptr inbounds nuw i8, ptr %i.fom, i64 32 ; 2 uses
  %i.fow = load ptr, ptr %i.fov, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i1211 = icmp eq ptr %i.fow, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1211, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %bb.acl

bb.acl:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210
  %i.fox = getelementptr inbounds nuw i8, ptr %i.fom, i64 56
  %i.foy = load i32, ptr %i.fox, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fom, i32 noundef %i.foy, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1212 unwind label %bb.acp

.noexc20.i.i.i.i.i.i.i.i1212:                     ; preds = %bb.acl
  %i.foz = load ptr, ptr %i.fov, align 8, !tbaa !362 ; 2 uses
  %i.fpa = getelementptr inbounds nuw i8, ptr %i.foz, i64 44
  %i.fpb = load i8, ptr %i.fpa, align 4, !tbaa !363
  %i.fpc = and i8 %i.fpb, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1213 = icmp eq i8 %i.fpc, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1213, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214, label %.invoke.i.i.i.i.i.i.i.i1203, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214: ; preds = %.noexc20.i.i.i.i.i.i.i.i1212
  %i.fpd = getelementptr inbounds nuw i8, ptr %i.foz, i64 16
  %i.fpe = load ptr, ptr %i.fpd, align 8, !tbaa !368
  %i.fpf = lshr i64 %.069.i.i.i.i.i.i.i.i, 3
  %i.fpg = and i64 %i.fpf, 536870911
  %i.fph = getelementptr inbounds nuw i8, ptr %i.fpe, i64 %i.fpg ; 2 uses
  %i.fpi = load i8, ptr %i.fph, align 1, !tbaa !30
  %i.fpj = trunc i64 %.069.i.i.i.i.i.i.i.i to i8
  %i.fpk = and i8 %i.fpj, 7
  %i.fpl = shl nuw i8 1, %i.fpk
  %i.fpm = or i8 %i.fpi, %i.fpl
  store i8 %i.fpm, ptr %i.fph, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174

.critedge.i.i.i.i.i.i.i.i.i1170:                  ; preds = %bb.acj, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i, %bb.aci
  %.1.i.i.i.i.i.i.i.i.i1171 = phi i64 [ %.03643.i.i.i.i.i.i.i.i.i1167, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i ], [ %i.foh, %bb.acj ], [ %.03643.i.i.i.i.i.i.i.i.i1167, %bb.aci ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1172 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1166, %i.fns ; 2 uses
  %i.fpn = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1172 to i32
  %.not16.i.i.i.i.i.i.i.i.i1173 = icmp eq i32 %i.fke, %i.fpn
  br i1 %.not16.i.i.i.i.i.i.i.i.i1173, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174, label %bb.aci, !llvm.loop !3099

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1170, %vector.body5625, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i, %.critedge.us52.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1229, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217, %bb.abz
  %.041.i.i.i.i.i.i.i.i.i1175 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1209, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1210 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1209, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1214 ], [ %i.fkd, %bb.abz ], [ %i.fke, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1217 ], [ %i.fke, %vector.body5625 ], [ %i.fke, %.critedge.us65.us88.us.i.i.i.i.i.i.i.i.i ], [ %i.fke, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1219 ], [ %i.fke, %.critedge.us52.i.i.i.i.i.i.i.i.i ], [ %i.fke, %.critedge.us.i.i.i.i.i.i.i.i.i1229 ], [ %i.fke, %.critedge.i.i.i.i.i.i.i.i.i1170 ]
  %i.fpo = load ptr, ptr %.sroa.952.0..sroa_idx.i1129, align 8, !tbaa !3096, !nonnull !74, !align !497
  %i.fpp = load i32, ptr %i.fpo, align 4, !tbaa !3
  %i.fpq = icmp eq i32 %.041.i.i.i.i.i.i.i.i.i1175, %i.fpp
  br i1 %i.fpq, label %bb.acm, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.acm:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1174
  %i.fpr = load ptr, ptr %.sroa.12.0..sroa_idx.i1132, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.fps = getelementptr inbounds nuw i8, ptr %i.fpr, i64 144 ; 2 uses
  %i.fpt = load ptr, ptr %i.fps, align 8, !tbaa !341 ; 2 uses
  %i.fpu = icmp eq ptr %i.fpt, null
  br i1 %i.fpu, label %bb.acn, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176

bb.acn:                                           ; preds = %bb.acm
  %i.fpv = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fpr)
          to label %.noexc22.i.i.i.i.i.i.i.i1206 unwind label %bb.acp ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1206:                     ; preds = %bb.acn
  %.pre.i27.i.i.i.i.i.i.i.i.i1207 = load ptr, ptr %i.fps, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176: ; preds = %.noexc22.i.i.i.i.i.i.i.i1206, %bb.acm
  %i.fpw = phi ptr [ %i.fpt, %bb.acm ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1207, %.noexc22.i.i.i.i.i.i.i.i1206 ]
  %i.fpx = getelementptr inbounds [8 x i8], ptr %i.fpw, i64 %i.fjr
  store i64 0, ptr %i.fpx, align 8, !tbaa !137
  %i.fpy = getelementptr inbounds nuw i8, ptr %i.fpr, i64 32 ; 2 uses
  %i.fpz = load ptr, ptr %i.fpy, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i1177 = icmp eq ptr %i.fpz, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1177, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.aco

bb.aco:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1176
  %i.fqa = getelementptr inbounds nuw i8, ptr %i.fpr, i64 56
  %i.fqb = load i32, ptr %i.fqa, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fpr, i32 noundef %i.fqb, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1201 unwind label %bb.acp

.noexc23.i.i.i.i.i.i.i.i1201:                     ; preds = %bb.aco
  %i.fqc = load ptr, ptr %i.fpy, align 8, !tbaa !362 ; 2 uses
  %i.fqd = getelementptr inbounds nuw i8, ptr %i.fqc, i64 44
  %i.fqe = load i8, ptr %i.fqd, align 4, !tbaa !363
  %i.fqf = and i8 %i.fqe, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1202 = icmp eq i8 %i.fqf, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1202, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1205, label %.invoke.i.i.i.i.i.i.i.i1203, !prof !69

.invoke.i.i.i.i.i.i.i.i1203:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i1201, %.noexc20.i.i.i.i.i.i.i.i1212
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.gig = sub nsw i32 64, %i.gid
  %i.gih = zext nneg i32 %i.gig to i64
  %i.gii = shl i64 %i.gif, %i.gih
  %i.gij = and i64 %i.gii, %i.gic
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %112, i32 noundef %i.ghz, i64 noundef %i.gij)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.agp:                                           ; preds = %bb.agn
  %.not32.i.i.i.i.i.i.i1414 = icmp eq i32 %i.ghr, %i.ghw
  br i1 %.not32.i.i.i.i.i.i.i1414, label %bb.agr, label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  %i.gik = sdiv i32 %i.ghr, 64
  %i.gil = sub nsw i32 %i.ghw, %i.ghr             ; 2 uses
  %i.gim = zext nneg i32 %i.gil to i64
  %notmask.i.i35.i.i.i.i.i.i.i1415 = shl nsw i64 -1, %i.gim
  %i.gin = xor i64 %notmask.i.i35.i.i.i.i.i.i.i1415, -1
  %i.gio = sub nsw i32 64, %i.gil
  %i.gip = zext nneg i32 %i.gio to i64
  %i.giq = shl i64 %i.gin, %i.gip
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %112, i32 noundef %i.gik, i64 noundef %i.giq)
  br label %bb.agr

bb.agr:                                           ; preds = %bb.agq, %bb.agp
  %i.gir = add nsw i32 %i.ghw, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i1416 = icmp sgt i32 %i.gir, %i.ghx
  br i1 %.not3351.i.i.i.i.i.i.i1416, label %._crit_edge.i.i.i.i.i.i.i1420, label %.lr.ph.i.i.i.i.i.i29.i1417

.lr.ph.i.i.i.i.i.i29.i1417:                       ; preds = %bb.agr
  %i.gis = getelementptr inbounds nuw i8, ptr %106, i64 16
  %i.git = getelementptr inbounds nuw i8, ptr %107, i64 16 ; 2 uses
  br label %bb.ags

._crit_edge.i.i.i.i.i.i.i1420:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.agr
  %.not34.i.i.i.i.i.i.i1421 = icmp eq i32 %i.ght, %i.ghx
  br i1 %.not34.i.i.i.i.i.i.i1421, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.ajb

bb.ags:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i1417
  %i.giu = phi i32 [ %i.gir, %.lr.ph.i.i.i.i.i.i29.i1417 ], [ %i.gvh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i.i.i.i1418 = phi i32 [ %i.ghw, %.lr.ph.i.i.i.i.i.i29.i1417 ], [ %i.giu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.giv = sdiv i32 %.052.i.i.i.i.i.i.i1418, 64   ; 3 uses
  %i.giw = sext i32 %i.giv to i64
  %i.gix = getelementptr inbounds [8 x i8], ptr %i.ghp, i64 %i.giw
  %i.giy = load i64, ptr %i.gix, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.giy, label %.lr.ph.i.i.i.i.i.i.i.i1511 [
    i64 -1, label %bb.agt
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i1511:                       ; preds = %bb.ags
  %i.giz = shl nsw i32 %i.giv, 6
  br label %bb.aik

bb.agt:                                           ; preds = %bb.ags
  %i.gja = shl nsw i32 %i.giv, 6                  ; 2 uses
  %i.gjb = add i32 %i.gja, 64
  %i.gjc = sext i32 %i.gjb to i64
  %.0.off.i.i.i.i.i.i.i1423 = add i32 %.052.i.i.i.i.i.i.i1418, 127
  %.not73.i.i.i.i.i.i.i.i1424 = icmp ult i32 %.0.off.i.i.i.i.i.i.i1423, 64
  br i1 %.not73.i.i.i.i.i.i.i.i1424, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph72.i.i.i.i.i.i.i.i1425

.lr.ph72.i.i.i.i.i.i.i.i1425:                     ; preds = %bb.agt
  %i.gjd = sext i32 %i.gja to i64
  br label %bb.agu

bb.agu:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph72.i.i.i.i.i.i.i.i1425
  %.069.i.i.i.i.i.i.i.i1426 = phi i64 [ %i.gjd, %.lr.ph72.i.i.i.i.i.i.i.i1425 ], [ %i.gtu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.gje = load ptr, ptr %116, align 8, !tbaa !3119, !nonnull !74, !align !275
  %i.gjf = load ptr, ptr %i.gje, align 8, !tbaa !329
  %i.gjg = load ptr, ptr %.sroa.447.0..sroa_idx.i1395, align 8, !tbaa !3121, !nonnull !74, !align !275
  %i.gjh = load ptr, ptr %i.gjg, align 8, !tbaa !329 ; 2 uses
  %i.gji = getelementptr inbounds nuw [4 x i8], ptr %i.gjh, i64 %.069.i.i.i.i.i.i.i.i1426
  %i.gjj = load i32, ptr %i.gji, align 4, !tbaa !3
  %i.gjk = sext i32 %i.gjj to i64
  %i.gjl = getelementptr inbounds [4 x i8], ptr %i.gjf, i64 %i.gjk
  %i.gjm = load i32, ptr %i.gjl, align 4, !tbaa !3 ; 3 uses
  %i.gjn = load ptr, ptr %.sroa.548.0..sroa_idx.i1396, align 8, !tbaa !3122, !nonnull !74, !align !275 ; 5 uses
  %i.gjo = trunc i64 %.069.i.i.i.i.i.i.i.i1426 to i32 ; 4 uses
  %i.gjp = getelementptr inbounds nuw i8, ptr %i.gjn, i64 16
  %i.gjq = load ptr, ptr %i.gjp, align 8, !tbaa !487
  %i.gjr = getelementptr inbounds nuw i8, ptr %i.gjn, i64 58
  %i.gjs = load i8, ptr %i.gjr, align 2, !tbaa !338, !range !73, !noundef !74
  %i.gjt = trunc nuw i8 %i.gjs to i1
  br i1 %i.gjt, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.agv

bb.agv:                                           ; preds = %bb.agu
  %i.gju = getelementptr inbounds nuw i8, ptr %i.gjn, i64 59
  %i.gjv = load i8, ptr %i.gju, align 1, !tbaa !339, !range !73, !noundef !74
  %i.gjw = trunc nuw i8 %i.gjv to i1
  br i1 %i.gjw, label %bb.agw, label %bb.agx

bb.agw:                                           ; preds = %bb.agv
  %i.gjx = getelementptr inbounds nuw i8, ptr %i.gjn, i64 64
  %i.gjy = load i32, ptr %i.gjx, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i.i.i.i.i

bb.agx:                                           ; preds = %bb.agv
  %i.gjz = getelementptr inbounds nuw i8, ptr %i.gjn, i64 8
  %i.gka = load ptr, ptr %i.gjz, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i1427 = shl i64 %.069.i.i.i.i.i.i.i.i1426, 32
  %i.gkb = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i1427, 30
  %i.gkc = getelementptr inbounds i8, ptr %i.gka, i64 %i.gkb
  %i.gkd = load i32, ptr %i.gkc, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.agx, %bb.agw, %bb.agu
  %.0.i.i.i.i.i.i.i.i.i.i.i1428 = phi i32 [ %i.gkd, %bb.agx ], [ %i.gjy, %bb.agw ], [ %i.gjo, %bb.agu ]
  %i.gke = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i1428 to i64
  %i.gkf = getelementptr inbounds [4 x i8], ptr %i.gjq, i64 %i.gke
  %i.gkg = load float, ptr %i.gkf, align 4, !tbaa !2782 ; 5 uses
  %i.gkh = load ptr, ptr %.sroa.649.0..sroa_idx.i1397, align 8, !tbaa !3123, !nonnull !74, !align !275 ; 5 uses
  %i.gki = getelementptr inbounds nuw i8, ptr %i.gkh, i64 16
  %i.gkj = load ptr, ptr %i.gki, align 8, !tbaa !487
  %i.gkk = getelementptr inbounds nuw i8, ptr %i.gkh, i64 58
  %i.gkl = load i8, ptr %i.gkk, align 2, !tbaa !338, !range !73, !noundef !74
  %i.gkm = trunc nuw i8 %i.gkl to i1
  br i1 %i.gkm, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1429, label %bb.agy

bb.agy:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.gkn = getelementptr inbounds nuw i8, ptr %i.gkh, i64 59
  %i.gko = load i8, ptr %i.gkn, align 1, !tbaa !339, !range !73, !noundef !74
  %i.gkp = trunc nuw i8 %i.gko to i1
  br i1 %i.gkp, label %bb.agz, label %bb.aha

bb.agz:                                           ; preds = %bb.agy
  %i.gkq = getelementptr inbounds nuw i8, ptr %i.gkh, i64 64
  %i.gkr = load i32, ptr %i.gkq, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1429

bb.aha:                                           ; preds = %bb.agy
  %i.gks = getelementptr inbounds nuw i8, ptr %i.gkh, i64 8
  %i.gkt = load ptr, ptr %i.gks, align 8, !tbaa !331
  %sext36.i.i.i.i.i.i.i.i.i = shl i64 %.069.i.i.i.i.i.i.i.i1426, 32
  %i.gku = ashr exact i64 %sext36.i.i.i.i.i.i.i.i.i, 30
  %i.gkv = getelementptr inbounds i8, ptr %i.gkt, i64 %i.gku
  %i.gkw = load i32, ptr %i.gkv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1429

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1429: ; preds = %bb.aha, %bb.agz, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i1430 = phi i32 [ %i.gkw, %bb.aha ], [ %i.gkr, %bb.agz ], [ %i.gjo, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.gkx = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i1430 to i64
  %i.gky = getelementptr inbounds [8 x i8], ptr %i.gkj, i64 %i.gkx
  %i.gkz = load i64, ptr %i.gky, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i1431 = icmp eq i64 %i.gkz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1431, label %bb.ahb, label %bb.ahe, !prof !48

bb.ahb:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1429
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #35, !noalias !3124
  store i64 0, ptr %106, align 16, !tbaa !30, !noalias !3124
  store i32 0, ptr %i.gis, align 16, !tbaa !30, !alias.scope !3127, !noalias !3124
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %107, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %106)
          to label %.noexc.i.i.i.i.i.i.i.i1507 unwind label %bb.ahu

.noexc.i.i.i.i.i.i.i.i1507:                       ; preds = %bb.ahb
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #35, !noalias !3124
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %107, ptr nonnull @.str.178) #38
          to label %bb.ahc unwind label %bb.ahd

bb.ahc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i1507
  unreachable

bb.ahd:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i1507
  %i.gla = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.glb = load ptr, ptr %107, align 8, !tbaa !49 ; 2 uses
  %i.glc = icmp eq ptr %i.glb, %i.git
  br i1 %i.glc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1508: ; preds = %bb.ahd
  %i.gld = load i64, ptr %i.git, align 8, !tbaa !30
  %i.gle = add i64 %i.gld, 1
  call void @_ZdlPvm(ptr noundef %i.glb, i64 noundef %i.gle) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1509

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1509: ; preds = %bb.ahd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1508
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #35
  br label %.body.i.i.i.i.i.i.i.i1450

bb.ahe:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1429
  %i.glf = load ptr, ptr %.sroa.750.0..sroa_idx.i1398, align 8, !tbaa !3130, !nonnull !74, !align !275
  %i.glg = load ptr, ptr %i.glf, align 8, !tbaa !329
  %i.glh = load ptr, ptr %.sroa.851.0..sroa_idx.i1399, align 8, !tbaa !3131, !nonnull !74, !align !497 ; 2 uses
  %i.gli = load ptr, ptr %.sroa.952.0..sroa_idx.i1400, align 8, !tbaa !3132, !nonnull !74, !align !497 ; 2 uses
  %i.glj = load ptr, ptr %.sroa.1053.0..sroa_idx.i1401, align 8, !tbaa !3133, !nonnull !74, !align !497
  %sext37.i.i.i.i.i.i.i.i.i1432 = shl i64 %.069.i.i.i.i.i.i.i.i1426, 32
  %i.glk = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i1432, 32 ; 3 uses
  %i.gll = getelementptr inbounds [4 x i8], ptr %i.gjh, i64 %i.glk
  %i.glm = load i32, ptr %i.gll, align 4, !tbaa !3
  %i.gln = sext i32 %i.glm to i64
  %i.glo = getelementptr inbounds [4 x i8], ptr %i.glg, i64 %i.gln
  %i.glp = load i32, ptr %i.glo, align 4, !tbaa !3 ; 2 uses
  %i.glq = icmp sgt i64 %i.gkz, 0                 ; 3 uses
  %i.glr = add nsw i32 %i.glp, -1
  %i.gls = select i1 %i.glq, i32 0, i32 %i.glr
  store i32 %i.gls, ptr %i.glh, align 4, !tbaa !3
  %i.glt = select i1 %i.glq, i32 %i.glp, i32 -1
  store i32 %i.glt, ptr %i.gli, align 4, !tbaa !3
  %i.glu = select i1 %i.glq, i32 1, i32 -1        ; 10 uses
  store i32 %i.glu, ptr %i.glj, align 4, !tbaa !3
  %i.glv = call noundef i64 @llvm.abs.i64(i64 %i.gkz, i1 true) ; 6 uses
  %i.glw = load i32, ptr %i.glh, align 4, !tbaa !3 ; 9 uses
  %i.glx = load i32, ptr %i.gli, align 4, !tbaa !3 ; 13 uses
  %.not1640.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.glw, %i.glx
  br i1 %.not1640.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %.lr.ph.i.i.i.i.i.i.i.i.i1433

.lr.ph.i.i.i.i.i.i.i.i.i1433:                     ; preds = %bb.ahe
  %i.gly = load ptr, ptr %.sroa.11.0..sroa_idx.i1402, align 8, !tbaa !3134, !nonnull !74, !align !275 ; 7 uses
  %i.glz = getelementptr inbounds nuw i8, ptr %i.gly, i64 24
  %i.gma = load ptr, ptr %i.glz, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1434 = icmp eq ptr %i.gma, null
  %i.gmb = getelementptr inbounds nuw i8, ptr %i.gly, i64 59 ; 3 uses
  %i.gmc = getelementptr inbounds nuw i8, ptr %i.gly, i64 8 ; 3 uses
  %i.gmd = getelementptr inbounds nuw i8, ptr %i.gly, i64 16 ; 4 uses
  %i.gme = getelementptr inbounds nuw i8, ptr %i.gly, i64 58
  %i.gmf = getelementptr inbounds nuw i8, ptr %i.gly, i64 64 ; 3 uses
  %i.gmg = fcmp uno float %i.gkg, 0.000000e+00    ; 4 uses
  %i.gmh = load i8, ptr %i.gme, align 2, !tbaa !338, !range !73, !noundef !74
  %i.gmi = trunc nuw i8 %i.gmh to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1434, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1435

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1433
  %i.gmj = load ptr, ptr %i.gmd, align 8, !tbaa !487
  %i.gmk = sext i32 %i.glw to i64
  %i.gml = sext i32 %i.glu to i64
  %i.gmm = sext i32 %i.gjm to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1503, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500
  %indvars.iv133.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next134.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1503 ], [ %i.gmk, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500 ] ; 3 uses
  %.03441.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1504, %.critedge.us.i.i.i.i.i.i.i.i.i1503 ], [ %i.glv, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1500 ] ; 2 uses
  %i.gmn = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i, %i.gmm ; 2 uses
  %i.gmo = trunc nsw i64 %i.gmn to i32
  br i1 %i.gmi, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.ahf

bb.ahf:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501
  %i.gmp = load i8, ptr %i.gmb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.gmq = trunc nuw i8 %i.gmp to i1
  br i1 %i.gmq, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.gmr = load ptr, ptr %i.gmc, align 8, !tbaa !331
  %i.gms = getelementptr inbounds [4 x i8], ptr %i.gmr, i64 %i.gmn
  %i.gmt = load i32, ptr %i.gms, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.ahh:                                           ; preds = %bb.ahf
  %i.gmu = load i32, ptr %i.gmf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.ahh, %bb.ahg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1502 = phi i32 [ %i.gmt, %bb.ahg ], [ %i.gmu, %bb.ahh ], [ %i.gmo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501 ]
  %i.gmv = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1502 to i64
  %i.gmw = getelementptr inbounds [4 x i8], ptr %i.gmj, i64 %i.gmv
  %i.gmx = load float, ptr %i.gmw, align 4, !tbaa !2782 ; 2 uses
  %i.gmy = fcmp uno float %i.gmx, 0.000000e+00
  %or.cond.i.i.us.i.i.i.i.i.i.i.i.i = select i1 %i.gmy, i1 %i.gmg, i1 false
  %i.gmz = fcmp oeq float %i.gmx, %i.gkg
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gmz
  br i1 %.0.i.i21.us.i.i.i.i.i.i.i.i.i, label %bb.ahi, label %.critedge.us.i.i.i.i.i.i.i.i.i1503

bb.ahi:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.gna = add nsw i64 %.03441.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gnb = icmp eq i64 %i.gna, 0
  br i1 %i.gnb, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i1506, label %.critedge.us.i.i.i.i.i.i.i.i.i1503

.critedge.us.i.i.i.i.i.i.i.i.i1503:               ; preds = %bb.ahi, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1504 = phi i64 [ %.03441.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.gna, %bb.ahi ]
  %indvars.iv.next134.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i, %i.gml ; 2 uses
  %i.gnc = trunc nsw i64 %indvars.iv.next134.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1505 = icmp eq i32 %i.glx, %i.gnc
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1505, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1501, !llvm.loop !3135

.lr.ph.split.i.i.i.i.i.i.i.i.i1435:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1433
  %i.gnd = getelementptr inbounds nuw i8, ptr %i.gly, i64 57
  %i.gne = load i8, ptr %i.gnd, align 1, !range !73
  %i.gnf = trunc nuw i8 %i.gne to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1436 = select i1 %i.gmi, i1 true, i1 %i.gnf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1436, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1435
  %i.gng = sext i32 %i.glw to i64
  %i.gnh = sext i32 %i.glu to i64
  %i.gni = sext i32 %i.gjm to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495:      ; preds = %.critedge.us51.i.i.i.i.i.i.i.i.i1497, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494
  %indvars.iv130.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gng, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494 ], [ %indvars.iv.next131.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i1497 ] ; 3 uses
  %.03441.us45.i.i.i.i.i.i.i.i.i = phi i64 [ %i.glv, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1494 ], [ %.1.us52.i.i.i.i.i.i.i.i.i1498, %.critedge.us51.i.i.i.i.i.i.i.i.i1497 ] ; 3 uses
  %i.gnj = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i, %i.gni ; 4 uses
  %i.gnk = lshr i64 %i.gnj, 6
  %i.gnl = and i64 %i.gnk, 67108863
  %i.gnm = getelementptr inbounds nuw [8 x i8], ptr %i.gma, i64 %i.gnl
  %i.gnn = load i64, ptr %i.gnm, align 8, !tbaa !137
  %i.gno = and i64 %i.gnj, 63
  %i.gnp = shl nuw i64 1, %i.gno
  %i.gnq = and i64 %i.gnp, %i.gnn
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1496 = icmp eq i64 %i.gnq, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1496, label %.critedge.us51.i.i.i.i.i.i.i.i.i1497, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495
  %i.gnr = trunc nsw i64 %i.gnj to i32
  %i.gns = load ptr, ptr %i.gmd, align 8, !tbaa !487
  br i1 %i.gmi, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, label %bb.ahj

bb.ahj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i
  %i.gnt = load i8, ptr %i.gmb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.gnu = trunc nuw i8 %i.gnt to i1
  br i1 %i.gnu, label %bb.ahl, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.gnv = load ptr, ptr %i.gmc, align 8, !tbaa !331
  %i.gnw = getelementptr inbounds [4 x i8], ptr %i.gnv, i64 %i.gnj
  %i.gnx = load i32, ptr %i.gnw, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

bb.ahl:                                           ; preds = %bb.ahj
  %i.gny = load i32, ptr %i.gmf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i: ; preds = %bb.ahl, %bb.ahk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i
  %.0.i.i19.us48.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gnx, %bb.ahk ], [ %i.gny, %bb.ahl ], [ %i.gnr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i ]
  %i.gnz = sext i32 %.0.i.i19.us48.i.i.i.i.i.i.i.i.i to i64
  %i.goa = getelementptr inbounds [4 x i8], ptr %i.gns, i64 %i.gnz
  %i.gob = load float, ptr %i.goa, align 4, !tbaa !2782 ; 2 uses
  %i.goc = fcmp uno float %i.gob, 0.000000e+00
  %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i = select i1 %i.goc, i1 %i.gmg, i1 false
  %i.god = fcmp oeq float %i.gob, %i.gkg
  %.0.i.i21.us50.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.god
  br i1 %.0.i.i21.us50.i.i.i.i.i.i.i.i.i, label %bb.ahm, label %.critedge.us51.i.i.i.i.i.i.i.i.i1497

bb.ahm:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i
  %i.goe = add nsw i64 %.03441.us45.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gof = icmp eq i64 %i.goe, 0
  br i1 %i.gof, label %.split.us.loopexit98.i.i.i.i.i.i.i.i.i, label %.critedge.us51.i.i.i.i.i.i.i.i.i1497

.critedge.us51.i.i.i.i.i.i.i.i.i1497:             ; preds = %bb.ahm, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495
  %.1.us52.i.i.i.i.i.i.i.i.i1498 = phi i64 [ %.03441.us45.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us47.i.i.i.i.i.i.i.i.i ], [ %i.goe, %bb.ahm ], [ %.03441.us45.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495 ]
  %indvars.iv.next131.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i, %i.gnh ; 2 uses
  %i.gog = trunc nsw i64 %indvars.iv.next131.i.i.i.i.i.i.i.i.i to i32
  %.not16.us53.i.i.i.i.i.i.i.i.i1499 = icmp eq i32 %i.glx, %i.gog
  br i1 %.not16.us53.i.i.i.i.i.i.i.i.i1499, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1495, !llvm.loop !3135

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1435
  %i.goh = load i8, ptr %i.gmb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.goi = trunc nuw i8 %i.goh to i1
  br i1 %i.goi, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437
  %i.goj = load i64, ptr %i.gma, align 8, !tbaa !137
  %i.gok = and i64 %i.goj, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1490 = icmp eq i64 %i.gok, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1490, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489
  %i.gol = load ptr, ptr %i.gmd, align 8, !tbaa !487
  %i.gom = load i32, ptr %i.gmf, align 8, !tbaa !488
  %i.gon = sext i32 %i.gom to i64
  %i.goo = getelementptr inbounds [4 x i8], ptr %i.gol, i64 %i.gon
  %i.gop = load float, ptr %i.goo, align 4, !tbaa !2782 ; 2 uses
  %i.goq = fcmp uno float %i.gop, 0.000000e+00
  %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i = select i1 %i.goq, i1 %i.gmg, i1 false
  %i.gor = fcmp oeq float %i.gop, %i.gkg
  %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gor
  br i1 %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491
  %i.gos = trunc i64 %i.glv to i32
  %i.got = add i32 %i.gos, -1
  %i.gou = mul i32 %i.got, %i.glu
  %i.gov = add i32 %i.glw, %i.gou                 ; 3 uses
  %i.gow = add nsw i64 %i.glv, -1                 ; 5 uses
  %i.gox = icmp eq i64 %i.gow, 0
  br i1 %i.gox, label %.split.us.i.i.i.i.i.i.i.i.i1480, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492
  %min.iters.check5583 = icmp samesign ult i64 %i.glv, 33
  br i1 %min.iters.check5583, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5584

vector.ph5584:                                    ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5586 = and i64 %i.gow, -32                ; 3 uses
  %i.goy = and i64 %i.gow, 31
  %i.goz = trunc i64 %n.vec5586 to i32
  %i.gpa = mul i32 %i.glu, %i.goz
  %i.gpb = add i32 %i.glw, %i.gpa
  %broadcast.splatinsert5587 = insertelement <32 x i32> poison, i32 %i.glu, i64 0
  %broadcast.splat5588 = shufflevector <32 x i32> %broadcast.splatinsert5587, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5589 = insertelement <32 x i32> poison, i32 %i.glx, i64 0
  %broadcast.splat5590 = shufflevector <32 x i32> %broadcast.splatinsert5589, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5591 = insertelement <32 x i32> poison, i32 %i.glw, i64 0
  %broadcast.splat5592 = shufflevector <32 x i32> %broadcast.splatinsert5591, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5593 = insertelement <32 x i32> poison, i32 %i.glu, i64 0
  %broadcast.splat5594 = shufflevector <32 x i32> %broadcast.splatinsert5593, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gpc = mul <32 x i32> %broadcast.splat5594, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5595 = add <32 x i32> %broadcast.splat5592, %i.gpc
  %i.gpd = shl nsw i32 %i.glu, 5
  %broadcast.splatinsert5596 = insertelement <32 x i32> poison, i32 %i.gpd, i64 0
  %broadcast.splat5597 = shufflevector <32 x i32> %broadcast.splatinsert5596, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5598

vector.body5598:                                  ; preds = %vector.body.interim5603, %vector.ph5584
  %index5599 = phi i64 [ 0, %vector.ph5584 ], [ %index.next5601, %vector.body.interim5603 ]
  %vec.ind5600 = phi <32 x i32> [ %induction5595, %vector.ph5584 ], [ %vec.ind.next5602, %vector.body.interim5603 ] ; 2 uses
  %i.gpe = add nsw <32 x i32> %vec.ind5600, %broadcast.splat5588
  %i.gpf = icmp eq <32 x i32> %i.gpe, %broadcast.splat5590
  %i.gpg = freeze <32 x i1> %i.gpf
  %i.gph = bitcast <32 x i1> %i.gpg to i32
  %.not5884 = icmp eq i32 %i.gph, 0
  br i1 %.not5884, label %vector.body.interim5603, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447

vector.body.interim5603:                          ; preds = %vector.body5598
  %vec.ind.next5602 = add <32 x i32> %vec.ind5600, %broadcast.splat5597
  %index.next5601 = add nuw i64 %index5599, 32    ; 2 uses
  %i.gpi = icmp eq i64 %index.next5601, %n.vec5586
  br i1 %i.gpi, label %middle.block5604, label %vector.body5598, !llvm.loop !3136

middle.block5604:                                 ; preds = %vector.body.interim5603
  %cmp.n5605 = icmp eq i64 %i.gow, %n.vec5586
  br i1 %cmp.n5605, label %.split.us.i.i.i.i.i.i.i.i.i1480, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5604
  %.ph6084 = phi i64 [ %i.gow, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.goy, %middle.block5604 ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388.ph = phi i32 [ %i.glw, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.gpb, %middle.block5604 ]
  br label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i
  %i.gpj = add nsw i64 %i.gpl, -1                 ; 2 uses
  %i.gpk = icmp eq i64 %i.gpj, 0
  br i1 %i.gpk, label %.split.us.i.i.i.i.i.i.i.i.i1480, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3137

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493
  %i.gpl = phi i64 [ %i.gpj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493 ], [ %.ph6084, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388 = phi i32 [ %i.gpm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493 ], [ %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388.ph, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.gpm = add nsw i32 %.042.us58.us83.us.i.i.i.i.i.i.i.i.i5388, %i.glu ; 2 uses
  %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gpm, %i.glx
  br i1 %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493, !llvm.loop !3135

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1437
  %i.gpn = load ptr, ptr %i.gmc, align 8, !tbaa !331
  %i.gpo = sext i32 %i.glw to i64
  %i.gpp = sext i32 %i.glu to i64
  %i.gpq = sext i32 %i.gjm to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1439 = getelementptr [4 x i8], ptr %i.gpn, i64 %i.gpq
  br label %bb.ahn

bb.ahn:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i1443, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438
  %indvars.iv.i.i.i.i.i.i.i.i.i1440 = phi i64 [ %i.gpo, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1445, %.critedge.i.i.i.i.i.i.i.i.i1443 ] ; 3 uses
  %.03441.i.i.i.i.i.i.i.i.i = phi i64 [ %i.glv, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1438 ], [ %.1.i.i.i.i.i.i.i.i.i1444, %.critedge.i.i.i.i.i.i.i.i.i1443 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1441 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1439, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1440
  %i.gpr = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1441, align 4, !tbaa !3 ; 2 uses
  %i.gps = zext i32 %i.gpr to i64                 ; 2 uses
  %i.gpt = lshr i64 %i.gps, 6
  %i.gpu = getelementptr inbounds nuw [8 x i8], ptr %i.gma, i64 %i.gpt
  %i.gpv = load i64, ptr %i.gpu, align 8, !tbaa !137
  %i.gpw = and i64 %i.gps, 63
  %i.gpx = shl nuw i64 1, %i.gpw
  %i.gpy = and i64 %i.gpx, %i.gpv
  %.not.i7.i.i.i.i.i.i.i.i.i.i1442 = icmp eq i64 %i.gpy, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1442, label %.critedge.i.i.i.i.i.i.i.i.i1443, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.ahn
  %i.gpz = load ptr, ptr %i.gmd, align 8, !tbaa !487
  %i.gqa = sext i32 %i.gpr to i64
  %i.gqb = getelementptr inbounds [4 x i8], ptr %i.gpz, i64 %i.gqa
  %i.gqc = load float, ptr %i.gqb, align 4, !tbaa !2782 ; 2 uses
  %i.gqd = fcmp uno float %i.gqc, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gqd, i1 %i.gmg, i1 false
  %i.gqe = fcmp oeq float %i.gqc, %i.gkg
  %.0.i.i21.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gqe
  br i1 %.0.i.i21.i.i.i.i.i.i.i.i.i, label %bb.aho, label %.critedge.i.i.i.i.i.i.i.i.i1443

bb.aho:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.gqf = add nsw i64 %.03441.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gqg = icmp eq i64 %i.gqf, 0
  br i1 %i.gqg, label %.split.us.loopexit108.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i1443

.split.us.loopexit.i.i.i.i.i.i.i.i.i1506:         ; preds = %bb.ahi
  %i.gqh = trunc nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1480

.split.us.loopexit98.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ahm
  %i.gqi = trunc nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1480

.split.us.loopexit108.i.i.i.i.i.i.i.i.i:          ; preds = %bb.aho
  %i.gqj = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1440 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1480

.split.us.i.i.i.i.i.i.i.i.i1480:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492, %middle.block5604, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1506
  %.us-phi.i.i.i.i.i.i.i.i.i1481 = phi i32 [ %i.gqj, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i ], [ %i.gqh, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1506 ], [ %i.gqi, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i ], [ %i.gov, %middle.block5604 ], [ %i.gov, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1492 ], [ %i.gov, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1493 ] ; 3 uses
  %i.gqk = load ptr, ptr %.sroa.12.0..sroa_idx.i1403, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.gql = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1481, 1
  %i.gqm = sext i32 %i.gql to i64
  %i.gqn = getelementptr inbounds nuw i8, ptr %i.gqk, i64 144 ; 2 uses
  %i.gqo = load ptr, ptr %i.gqn, align 8, !tbaa !341 ; 2 uses
  %i.gqp = icmp eq ptr %i.gqo, null
  br i1 %i.gqp, label %bb.ahp, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482

bb.ahp:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i1480
  %i.gqq = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gqk)
          to label %.noexc19.i.i.i.i.i.i.i.i1487 unwind label %bb.ahu ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1487:                     ; preds = %bb.ahp
  %.pre.i.i.i.i.i.i.i.i.i.i1488 = load ptr, ptr %i.gqn, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482: ; preds = %.noexc19.i.i.i.i.i.i.i.i1487, %.split.us.i.i.i.i.i.i.i.i.i1480
  %i.gqr = phi ptr [ %i.gqo, %.split.us.i.i.i.i.i.i.i.i.i1480 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1488, %.noexc19.i.i.i.i.i.i.i.i1487 ]
  %i.gqs = getelementptr inbounds [8 x i8], ptr %i.gqr, i64 %i.glk
  store i64 %i.gqm, ptr %i.gqs, align 8, !tbaa !137
  %i.gqt = getelementptr inbounds nuw i8, ptr %i.gqk, i64 32 ; 2 uses
  %i.gqu = load ptr, ptr %i.gqt, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i1483 = icmp eq ptr %i.gqu, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1483, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %bb.ahq

bb.ahq:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482
  %i.gqv = getelementptr inbounds nuw i8, ptr %i.gqk, i64 56
  %i.gqw = load i32, ptr %i.gqv, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gqk, i32 noundef %i.gqw, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1484 unwind label %bb.ahu

.noexc20.i.i.i.i.i.i.i.i1484:                     ; preds = %bb.ahq
  %i.gqx = load ptr, ptr %i.gqt, align 8, !tbaa !362 ; 2 uses
  %i.gqy = getelementptr inbounds nuw i8, ptr %i.gqx, i64 44
  %i.gqz = load i8, ptr %i.gqy, align 4, !tbaa !363
  %i.gra = and i8 %i.gqz, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1485 = icmp eq i8 %i.gra, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1485, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486, label %.invoke.i.i.i.i.i.i.i.i1475, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486: ; preds = %.noexc20.i.i.i.i.i.i.i.i1484
  %i.grb = getelementptr inbounds nuw i8, ptr %i.gqx, i64 16
  %i.grc = load ptr, ptr %i.grb, align 8, !tbaa !368
  %i.grd = lshr i64 %.069.i.i.i.i.i.i.i.i1426, 3
  %i.gre = and i64 %i.grd, 536870911
  %i.grf = getelementptr inbounds nuw i8, ptr %i.grc, i64 %i.gre ; 2 uses
  %i.grg = load i8, ptr %i.grf, align 1, !tbaa !30
  %i.grh = trunc i64 %.069.i.i.i.i.i.i.i.i1426 to i8
  %i.gri = and i8 %i.grh, 7
  %i.grj = shl nuw i8 1, %i.gri
  %i.grk = or i8 %i.grg, %i.grj
  store i8 %i.grk, ptr %i.grf, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447

.critedge.i.i.i.i.i.i.i.i.i1443:                  ; preds = %bb.aho, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.ahn
  %.1.i.i.i.i.i.i.i.i.i1444 = phi i64 [ %.03441.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.gqf, %bb.aho ], [ %.03441.i.i.i.i.i.i.i.i.i, %bb.ahn ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1445 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1440, %i.gpp ; 2 uses
  %i.grl = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1445 to i32
  %.not16.i.i.i.i.i.i.i.i.i1446 = icmp eq i32 %i.glx, %i.grl
  br i1 %.not16.i.i.i.i.i.i.i.i.i1446, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447, label %bb.ahn, !llvm.loop !3135

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1443, %vector.body5598, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i, %.critedge.us51.i.i.i.i.i.i.i.i.i1497, %.critedge.us.i.i.i.i.i.i.i.i.i1503, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489, %bb.ahe
  %.039.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1481, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1482 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1481, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1486 ], [ %i.glw, %bb.ahe ], [ %i.glx, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1489 ], [ %i.glx, %vector.body5598 ], [ %i.glx, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i ], [ %i.glx, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1491 ], [ %i.glx, %.critedge.us51.i.i.i.i.i.i.i.i.i1497 ], [ %i.glx, %.critedge.us.i.i.i.i.i.i.i.i.i1503 ], [ %i.glx, %.critedge.i.i.i.i.i.i.i.i.i1443 ]
  %i.grm = load ptr, ptr %.sroa.952.0..sroa_idx.i1400, align 8, !tbaa !3132, !nonnull !74, !align !497
  %i.grn = load i32, ptr %i.grm, align 4, !tbaa !3
  %i.gro = icmp eq i32 %.039.i.i.i.i.i.i.i.i.i, %i.grn
  br i1 %i.gro, label %bb.ahr, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.ahr:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1447
  %i.grp = load ptr, ptr %.sroa.12.0..sroa_idx.i1403, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.grq = getelementptr inbounds nuw i8, ptr %i.grp, i64 144 ; 2 uses
  %i.grr = load ptr, ptr %i.grq, align 8, !tbaa !341 ; 2 uses
  %i.grs = icmp eq ptr %i.grr, null
  br i1 %i.grs, label %bb.ahs, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448

bb.ahs:                                           ; preds = %bb.ahr
  %i.grt = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.grp)
          to label %.noexc22.i.i.i.i.i.i.i.i1478 unwind label %bb.ahu ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1478:                     ; preds = %bb.ahs
  %.pre.i27.i.i.i.i.i.i.i.i.i1479 = load ptr, ptr %i.grq, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448: ; preds = %.noexc22.i.i.i.i.i.i.i.i1478, %bb.ahr
  %i.gru = phi ptr [ %i.grr, %bb.ahr ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1479, %.noexc22.i.i.i.i.i.i.i.i1478 ]
  %i.grv = getelementptr inbounds [8 x i8], ptr %i.gru, i64 %i.glk
  store i64 0, ptr %i.grv, align 8, !tbaa !137
  %i.grw = getelementptr inbounds nuw i8, ptr %i.grp, i64 32 ; 2 uses
  %i.grx = load ptr, ptr %i.grw, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i1449 = icmp eq ptr %i.grx, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1449, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.aht

bb.aht:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1448
  %i.gry = getelementptr inbounds nuw i8, ptr %i.grp, i64 56
  %i.grz = load i32, ptr %i.gry, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.grp, i32 noundef %i.grz, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1473 unwind label %bb.ahu

.noexc23.i.i.i.i.i.i.i.i1473:                     ; preds = %bb.aht
  %i.gsa = load ptr, ptr %i.grw, align 8, !tbaa !362 ; 2 uses
  %i.gsb = getelementptr inbounds nuw i8, ptr %i.gsa, i64 44
  %i.gsc = load i8, ptr %i.gsb, align 4, !tbaa !363
  %i.gsd = and i8 %i.gsc, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1474 = icmp eq i8 %i.gsd, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1474, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1477, label %.invoke.i.i.i.i.i.i.i.i1475, !prof !69

end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.hke = sub nsw i32 64, %i.hkb
  %i.hkf = zext nneg i32 %i.hke to i64
  %i.hkg = shl i64 %i.hkd, %i.hkf
  %i.hkh = and i64 %i.hkg, %i.hka
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %95, i32 noundef %i.hjx, i64 noundef %i.hkh)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.alu:                                           ; preds = %bb.als
  %.not32.i.i.i.i.i.i.i1691 = icmp eq i32 %i.hjp, %i.hju
  br i1 %.not32.i.i.i.i.i.i.i1691, label %bb.alw, label %bb.alv

bb.alv:                                           ; preds = %bb.alu
  %i.hki = sdiv i32 %i.hjp, 64
  %i.hkj = sub nsw i32 %i.hju, %i.hjp             ; 2 uses
  %i.hkk = zext nneg i32 %i.hkj to i64
  %notmask.i.i35.i.i.i.i.i.i.i1692 = shl nsw i64 -1, %i.hkk
  %i.hkl = xor i64 %notmask.i.i35.i.i.i.i.i.i.i1692, -1
  %i.hkm = sub nsw i32 64, %i.hkj
  %i.hkn = zext nneg i32 %i.hkm to i64
  %i.hko = shl i64 %i.hkl, %i.hkn
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %95, i32 noundef %i.hki, i64 noundef %i.hko)
  br label %bb.alw

bb.alw:                                           ; preds = %bb.alv, %bb.alu
  %i.hkp = add nsw i32 %i.hju, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i1693 = icmp sgt i32 %i.hkp, %i.hjv
  br i1 %.not3351.i.i.i.i.i.i.i1693, label %._crit_edge.i.i.i.i.i.i.i1697, label %.lr.ph.i.i.i.i.i.i29.i1694

.lr.ph.i.i.i.i.i.i29.i1694:                       ; preds = %bb.alw
  %i.hkq = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.hkr = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  br label %bb.alx

._crit_edge.i.i.i.i.i.i.i1697:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.alw
  %.not34.i.i.i.i.i.i.i1698 = icmp eq i32 %i.hjr, %i.hjv
  br i1 %.not34.i.i.i.i.i.i.i1698, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.aog

bb.alx:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i1694
  %i.hks = phi i32 [ %i.hkp, %.lr.ph.i.i.i.i.i.i29.i1694 ], [ %i.hxf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i.i.i.i1695 = phi i32 [ %i.hju, %.lr.ph.i.i.i.i.i.i29.i1694 ], [ %i.hks, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.hkt = sdiv i32 %.052.i.i.i.i.i.i.i1695, 64   ; 3 uses
  %i.hku = sext i32 %i.hkt to i64
  %i.hkv = getelementptr inbounds [8 x i8], ptr %i.hjn, i64 %i.hku
  %i.hkw = load i64, ptr %i.hkv, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.hkw, label %.lr.ph.i.i.i.i.i.i.i.i1814 [
    i64 -1, label %bb.aly
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i1814:                       ; preds = %bb.alx
  %i.hkx = shl nsw i32 %i.hkt, 6
  br label %bb.anp

bb.aly:                                           ; preds = %bb.alx
  %i.hky = shl nsw i32 %i.hkt, 6                  ; 2 uses
  %i.hkz = add i32 %i.hky, 64
  %i.hla = sext i32 %i.hkz to i64
  %.0.off.i.i.i.i.i.i.i1700 = add i32 %.052.i.i.i.i.i.i.i1695, 127
  %.not73.i.i.i.i.i.i.i.i1701 = icmp ult i32 %.0.off.i.i.i.i.i.i.i1700, 64
  br i1 %.not73.i.i.i.i.i.i.i.i1701, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph72.i.i.i.i.i.i.i.i1702

.lr.ph72.i.i.i.i.i.i.i.i1702:                     ; preds = %bb.aly
  %i.hlb = sext i32 %i.hky to i64
  br label %bb.alz

bb.alz:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph72.i.i.i.i.i.i.i.i1702
  %.069.i.i.i.i.i.i.i.i1703 = phi i64 [ %i.hlb, %.lr.ph72.i.i.i.i.i.i.i.i1702 ], [ %i.hvs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.hlc = load ptr, ptr %99, align 8, !tbaa !3155, !nonnull !74, !align !275
  %i.hld = load ptr, ptr %i.hlc, align 8, !tbaa !329
  %i.hle = load ptr, ptr %.sroa.447.0..sroa_idx.i1672, align 8, !tbaa !3157, !nonnull !74, !align !275
  %i.hlf = load ptr, ptr %i.hle, align 8, !tbaa !329 ; 2 uses
  %i.hlg = getelementptr inbounds nuw [4 x i8], ptr %i.hlf, i64 %.069.i.i.i.i.i.i.i.i1703
  %i.hlh = load i32, ptr %i.hlg, align 4, !tbaa !3
  %i.hli = sext i32 %i.hlh to i64
  %i.hlj = getelementptr inbounds [4 x i8], ptr %i.hld, i64 %i.hli
  %i.hlk = load i32, ptr %i.hlj, align 4, !tbaa !3 ; 3 uses
  %i.hll = load ptr, ptr %.sroa.548.0..sroa_idx.i1673, align 8, !tbaa !3158, !nonnull !74, !align !275 ; 5 uses
  %i.hlm = trunc i64 %.069.i.i.i.i.i.i.i.i1703 to i32 ; 4 uses
  %i.hln = getelementptr inbounds nuw i8, ptr %i.hll, i64 16
  %i.hlo = load ptr, ptr %i.hln, align 8, !tbaa !487
  %i.hlp = getelementptr inbounds nuw i8, ptr %i.hll, i64 58
  %i.hlq = load i8, ptr %i.hlp, align 2, !tbaa !338, !range !73, !noundef !74
  %i.hlr = trunc nuw i8 %i.hlq to i1
  br i1 %i.hlr, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.ama

bb.ama:                                           ; preds = %bb.alz
  %i.hls = getelementptr inbounds nuw i8, ptr %i.hll, i64 59
  %i.hlt = load i8, ptr %i.hls, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hlu = trunc nuw i8 %i.hlt to i1
  br i1 %i.hlu, label %bb.amb, label %bb.amc

bb.amb:                                           ; preds = %bb.ama
  %i.hlv = getelementptr inbounds nuw i8, ptr %i.hll, i64 64
  %i.hlw = load i32, ptr %i.hlv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i.i.i.i.i

bb.amc:                                           ; preds = %bb.ama
  %i.hlx = getelementptr inbounds nuw i8, ptr %i.hll, i64 8
  %i.hly = load ptr, ptr %i.hlx, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i1704 = shl i64 %.069.i.i.i.i.i.i.i.i1703, 32
  %i.hlz = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i1704, 30
  %i.hma = getelementptr inbounds i8, ptr %i.hly, i64 %i.hlz
  %i.hmb = load i32, ptr %i.hma, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.amc, %bb.amb, %bb.alz
  %.0.i.i.i.i.i.i.i.i.i.i.i1705 = phi i32 [ %i.hmb, %bb.amc ], [ %i.hlw, %bb.amb ], [ %i.hlm, %bb.alz ]
  %i.hmc = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i1705 to i64
  %i.hmd = getelementptr inbounds [8 x i8], ptr %i.hlo, i64 %i.hmc
  %i.hme = load double, ptr %i.hmd, align 8, !tbaa !2797 ; 5 uses
  %i.hmf = load ptr, ptr %.sroa.649.0..sroa_idx.i1674, align 8, !tbaa !3159, !nonnull !74, !align !275 ; 5 uses
  %i.hmg = getelementptr inbounds nuw i8, ptr %i.hmf, i64 16
  %i.hmh = load ptr, ptr %i.hmg, align 8, !tbaa !487
  %i.hmi = getelementptr inbounds nuw i8, ptr %i.hmf, i64 58
  %i.hmj = load i8, ptr %i.hmi, align 2, !tbaa !338, !range !73, !noundef !74
  %i.hmk = trunc nuw i8 %i.hmj to i1
  br i1 %i.hmk, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1707, label %bb.amd

bb.amd:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.hml = getelementptr inbounds nuw i8, ptr %i.hmf, i64 59
  %i.hmm = load i8, ptr %i.hml, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hmn = trunc nuw i8 %i.hmm to i1
  br i1 %i.hmn, label %bb.ame, label %bb.amf

bb.ame:                                           ; preds = %bb.amd
  %i.hmo = getelementptr inbounds nuw i8, ptr %i.hmf, i64 64
  %i.hmp = load i32, ptr %i.hmo, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1707

bb.amf:                                           ; preds = %bb.amd
  %i.hmq = getelementptr inbounds nuw i8, ptr %i.hmf, i64 8
  %i.hmr = load ptr, ptr %i.hmq, align 8, !tbaa !331
  %sext36.i.i.i.i.i.i.i.i.i1706 = shl i64 %.069.i.i.i.i.i.i.i.i1703, 32
  %i.hms = ashr exact i64 %sext36.i.i.i.i.i.i.i.i.i1706, 30
  %i.hmt = getelementptr inbounds i8, ptr %i.hmr, i64 %i.hms
  %i.hmu = load i32, ptr %i.hmt, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1707

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1707: ; preds = %bb.amf, %bb.ame, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i1708 = phi i32 [ %i.hmu, %bb.amf ], [ %i.hmp, %bb.ame ], [ %i.hlm, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.hmv = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i1708 to i64
  %i.hmw = getelementptr inbounds [8 x i8], ptr %i.hmh, i64 %i.hmv
  %i.hmx = load i64, ptr %i.hmw, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i1709 = icmp eq i64 %i.hmx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1709, label %bb.amg, label %bb.amj, !prof !48

bb.amg:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1707
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #35, !noalias !3160
  store i64 0, ptr %89, align 16, !tbaa !30, !noalias !3160
  store i32 0, ptr %i.hkq, align 16, !tbaa !30, !alias.scope !3163, !noalias !3160
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %90, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %89)
          to label %.noexc.i.i.i.i.i.i.i.i1810 unwind label %bb.amz

.noexc.i.i.i.i.i.i.i.i1810:                       ; preds = %bb.amg
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #35, !noalias !3160
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %90, ptr nonnull @.str.178) #38
          to label %bb.amh unwind label %bb.ami

bb.amh:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i1810
  unreachable

bb.ami:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i1810
  %i.hmy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.hmz = load ptr, ptr %90, align 8, !tbaa !49  ; 2 uses
  %i.hna = icmp eq ptr %i.hmz, %i.hkr
  br i1 %i.hna, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1811

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1811: ; preds = %bb.ami
  %i.hnb = load i64, ptr %i.hkr, align 8, !tbaa !30
  %i.hnc = add i64 %i.hnb, 1
  call void @_ZdlPvm(ptr noundef %i.hmz, i64 noundef %i.hnc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i1812: ; preds = %bb.ami, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i1811
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #35
  br label %.body.i.i.i.i.i.i.i.i1733

bb.amj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i1707
  %i.hnd = load ptr, ptr %.sroa.750.0..sroa_idx.i1675, align 8, !tbaa !3166, !nonnull !74, !align !275
  %i.hne = load ptr, ptr %i.hnd, align 8, !tbaa !329
  %i.hnf = load ptr, ptr %.sroa.851.0..sroa_idx.i1676, align 8, !tbaa !3167, !nonnull !74, !align !497 ; 2 uses
  %i.hng = load ptr, ptr %.sroa.952.0..sroa_idx.i1677, align 8, !tbaa !3168, !nonnull !74, !align !497 ; 2 uses
  %i.hnh = load ptr, ptr %.sroa.1053.0..sroa_idx.i1678, align 8, !tbaa !3169, !nonnull !74, !align !497
  %sext37.i.i.i.i.i.i.i.i.i1710 = shl i64 %.069.i.i.i.i.i.i.i.i1703, 32
  %i.hni = ashr exact i64 %sext37.i.i.i.i.i.i.i.i.i1710, 32 ; 3 uses
  %i.hnj = getelementptr inbounds [4 x i8], ptr %i.hlf, i64 %i.hni
  %i.hnk = load i32, ptr %i.hnj, align 4, !tbaa !3
  %i.hnl = sext i32 %i.hnk to i64
  %i.hnm = getelementptr inbounds [4 x i8], ptr %i.hne, i64 %i.hnl
  %i.hnn = load i32, ptr %i.hnm, align 4, !tbaa !3 ; 2 uses
  %i.hno = icmp sgt i64 %i.hmx, 0                 ; 3 uses
  %i.hnp = add nsw i32 %i.hnn, -1
  %i.hnq = select i1 %i.hno, i32 0, i32 %i.hnp
  store i32 %i.hnq, ptr %i.hnf, align 4, !tbaa !3
  %i.hnr = select i1 %i.hno, i32 %i.hnn, i32 -1
  store i32 %i.hnr, ptr %i.hng, align 4, !tbaa !3
  %i.hns = select i1 %i.hno, i32 1, i32 -1        ; 10 uses
  store i32 %i.hns, ptr %i.hnh, align 4, !tbaa !3
  %i.hnt = call noundef i64 @llvm.abs.i64(i64 %i.hmx, i1 true) ; 6 uses
  %i.hnu = load i32, ptr %i.hnf, align 4, !tbaa !3 ; 9 uses
  %i.hnv = load i32, ptr %i.hng, align 4, !tbaa !3 ; 13 uses
  %.not1640.i.i.i.i.i.i.i.i.i1711 = icmp eq i32 %i.hnu, %i.hnv
  br i1 %.not1640.i.i.i.i.i.i.i.i.i1711, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %.lr.ph.i.i.i.i.i.i.i.i.i1712

.lr.ph.i.i.i.i.i.i.i.i.i1712:                     ; preds = %bb.amj
  %i.hnw = load ptr, ptr %.sroa.11.0..sroa_idx.i1679, align 8, !tbaa !3170, !nonnull !74, !align !275 ; 7 uses
  %i.hnx = getelementptr inbounds nuw i8, ptr %i.hnw, i64 24
  %i.hny = load ptr, ptr %i.hnx, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1713 = icmp eq ptr %i.hny, null
  %i.hnz = getelementptr inbounds nuw i8, ptr %i.hnw, i64 59 ; 3 uses
  %i.hoa = getelementptr inbounds nuw i8, ptr %i.hnw, i64 8 ; 3 uses
  %i.hob = getelementptr inbounds nuw i8, ptr %i.hnw, i64 16 ; 4 uses
  %i.hoc = getelementptr inbounds nuw i8, ptr %i.hnw, i64 58
  %i.hod = getelementptr inbounds nuw i8, ptr %i.hnw, i64 64 ; 3 uses
  %i.hoe = fcmp uno double %i.hme, 0.000000e+00   ; 4 uses
  %i.hof = load i8, ptr %i.hoc, align 2, !tbaa !338, !range !73, !noundef !74
  %i.hog = trunc nuw i8 %i.hof to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1713, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1714

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1712
  %i.hoh = load ptr, ptr %i.hob, align 8, !tbaa !487
  %i.hoi = sext i32 %i.hnu to i64
  %i.hoj = sext i32 %i.hns to i64
  %i.hok = sext i32 %i.hlk to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1805, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798
  %indvars.iv133.i.i.i.i.i.i.i.i.i1800 = phi i64 [ %indvars.iv.next134.i.i.i.i.i.i.i.i.i1807, %.critedge.us.i.i.i.i.i.i.i.i.i1805 ], [ %i.hoi, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798 ] ; 3 uses
  %.03441.us.i.i.i.i.i.i.i.i.i1801 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1806, %.critedge.us.i.i.i.i.i.i.i.i.i1805 ], [ %i.hnt, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1798 ] ; 2 uses
  %i.hol = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1800, %i.hok ; 2 uses
  %i.hom = trunc nsw i64 %i.hol to i32
  br i1 %i.hog, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.amk

bb.amk:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799
  %i.hon = load i8, ptr %i.hnz, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hoo = trunc nuw i8 %i.hon to i1
  br i1 %i.hoo, label %bb.amm, label %bb.aml

bb.aml:                                           ; preds = %bb.amk
  %i.hop = load ptr, ptr %i.hoa, align 8, !tbaa !331
  %i.hoq = getelementptr inbounds [4 x i8], ptr %i.hop, i64 %i.hol
  %i.hor = load i32, ptr %i.hoq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.amm:                                           ; preds = %bb.amk
  %i.hos = load i32, ptr %i.hod, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.amm, %bb.aml, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1802 = phi i32 [ %i.hor, %bb.aml ], [ %i.hos, %bb.amm ], [ %i.hom, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799 ]
  %i.hot = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1802 to i64
  %i.hou = getelementptr inbounds [8 x i8], ptr %i.hoh, i64 %i.hot
  %i.hov = load double, ptr %i.hou, align 8, !tbaa !2797 ; 2 uses
  %i.how = fcmp uno double %i.hov, 0.000000e+00
  %or.cond.i.i.us.i.i.i.i.i.i.i.i.i1803 = select i1 %i.how, i1 %i.hoe, i1 false
  %i.hox = fcmp oeq double %i.hov, %i.hme
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i1804 = select i1 %or.cond.i.i.us.i.i.i.i.i.i.i.i.i1803, i1 true, i1 %i.hox
  br i1 %.0.i.i21.us.i.i.i.i.i.i.i.i.i1804, label %bb.amn, label %.critedge.us.i.i.i.i.i.i.i.i.i1805

bb.amn:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.hoy = add nsw i64 %.03441.us.i.i.i.i.i.i.i.i.i1801, -1 ; 2 uses
  %i.hoz = icmp eq i64 %i.hoy, 0
  br i1 %i.hoz, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i1809, label %.critedge.us.i.i.i.i.i.i.i.i.i1805

.critedge.us.i.i.i.i.i.i.i.i.i1805:               ; preds = %bb.amn, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1806 = phi i64 [ %.03441.us.i.i.i.i.i.i.i.i.i1801, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.hoy, %bb.amn ]
  %indvars.iv.next134.i.i.i.i.i.i.i.i.i1807 = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1800, %i.hoj ; 2 uses
  %i.hpa = trunc nsw i64 %indvars.iv.next134.i.i.i.i.i.i.i.i.i1807 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1808 = icmp eq i32 %i.hnv, %i.hpa
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1808, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1799, !llvm.loop !3171

.lr.ph.split.i.i.i.i.i.i.i.i.i1714:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1712
  %i.hpb = getelementptr inbounds nuw i8, ptr %i.hnw, i64 57
  %i.hpc = load i8, ptr %i.hpb, align 1, !range !73
  %i.hpd = trunc nuw i8 %i.hpc to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1715 = select i1 %i.hog, i1 true, i1 %i.hpd
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1715, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1714
  %i.hpe = sext i32 %i.hnu to i64
  %i.hpf = sext i32 %i.hns to i64
  %i.hpg = sext i32 %i.hlk to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785:      ; preds = %.critedge.us51.i.i.i.i.i.i.i.i.i1793, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784
  %indvars.iv130.i.i.i.i.i.i.i.i.i1786 = phi i64 [ %i.hpe, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784 ], [ %indvars.iv.next131.i.i.i.i.i.i.i.i.i1795, %.critedge.us51.i.i.i.i.i.i.i.i.i1793 ] ; 3 uses
  %.03441.us45.i.i.i.i.i.i.i.i.i1787 = phi i64 [ %i.hnt, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i1784 ], [ %.1.us52.i.i.i.i.i.i.i.i.i1794, %.critedge.us51.i.i.i.i.i.i.i.i.i1793 ] ; 3 uses
  %i.hph = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i1786, %i.hpg ; 4 uses
  %i.hpi = lshr i64 %i.hph, 6
  %i.hpj = and i64 %i.hpi, 67108863
  %i.hpk = getelementptr inbounds nuw [8 x i8], ptr %i.hny, i64 %i.hpj
  %i.hpl = load i64, ptr %i.hpk, align 8, !tbaa !137
  %i.hpm = and i64 %i.hph, 63
  %i.hpn = shl nuw i64 1, %i.hpm
  %i.hpo = and i64 %i.hpn, %i.hpl
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1788 = icmp eq i64 %i.hpo, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1788, label %.critedge.us51.i.i.i.i.i.i.i.i.i1793, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785
  %i.hpp = trunc nsw i64 %i.hph to i32
  %i.hpq = load ptr, ptr %i.hob, align 8, !tbaa !487
  br i1 %i.hog, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, label %bb.amo

bb.amo:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789
  %i.hpr = load i8, ptr %i.hnz, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hps = trunc nuw i8 %i.hpr to i1
  br i1 %i.hps, label %bb.amq, label %bb.amp

bb.amp:                                           ; preds = %bb.amo
  %i.hpt = load ptr, ptr %i.hoa, align 8, !tbaa !331
  %i.hpu = getelementptr inbounds [4 x i8], ptr %i.hpt, i64 %i.hph
  %i.hpv = load i32, ptr %i.hpu, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

bb.amq:                                           ; preds = %bb.amo
  %i.hpw = load i32, ptr %i.hod, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i: ; preds = %bb.amq, %bb.amp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789
  %.0.i.i19.us48.i.i.i.i.i.i.i.i.i1790 = phi i32 [ %i.hpv, %bb.amp ], [ %i.hpw, %bb.amq ], [ %i.hpp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46.i.i.i.i.i.i.i.i.i1789 ]
  %i.hpx = sext i32 %.0.i.i19.us48.i.i.i.i.i.i.i.i.i1790 to i64
  %i.hpy = getelementptr inbounds [8 x i8], ptr %i.hpq, i64 %i.hpx
  %i.hpz = load double, ptr %i.hpy, align 8, !tbaa !2797 ; 2 uses
  %i.hqa = fcmp uno double %i.hpz, 0.000000e+00
  %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i1791 = select i1 %i.hqa, i1 %i.hoe, i1 false
  %i.hqb = fcmp oeq double %i.hpz, %i.hme
  %.0.i.i21.us50.i.i.i.i.i.i.i.i.i1792 = select i1 %or.cond.i.i.us49.i.i.i.i.i.i.i.i.i1791, i1 true, i1 %i.hqb
  br i1 %.0.i.i21.us50.i.i.i.i.i.i.i.i.i1792, label %bb.amr, label %.critedge.us51.i.i.i.i.i.i.i.i.i1793

bb.amr:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i
  %i.hqc = add nsw i64 %.03441.us45.i.i.i.i.i.i.i.i.i1787, -1 ; 2 uses
  %i.hqd = icmp eq i64 %i.hqc, 0
  br i1 %i.hqd, label %.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797, label %.critedge.us51.i.i.i.i.i.i.i.i.i1793

.critedge.us51.i.i.i.i.i.i.i.i.i1793:             ; preds = %bb.amr, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785
  %.1.us52.i.i.i.i.i.i.i.i.i1794 = phi i64 [ %.03441.us45.i.i.i.i.i.i.i.i.i1787, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us47.i.i.i.i.i.i.i.i.i ], [ %i.hqc, %bb.amr ], [ %.03441.us45.i.i.i.i.i.i.i.i.i1787, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785 ]
  %indvars.iv.next131.i.i.i.i.i.i.i.i.i1795 = add nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i1786, %i.hpf ; 2 uses
  %i.hqe = trunc nsw i64 %indvars.iv.next131.i.i.i.i.i.i.i.i.i1795 to i32
  %.not16.us53.i.i.i.i.i.i.i.i.i1796 = icmp eq i32 %i.hnv, %i.hqe
  br i1 %.not16.us53.i.i.i.i.i.i.i.i.i1796, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i1785, !llvm.loop !3171

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1714
  %i.hqf = load i8, ptr %i.hnz, align 1, !tbaa !339, !range !73, !noundef !74
  %i.hqg = trunc nuw i8 %i.hqf to i1
  br i1 %i.hqg, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716
  %i.hqh = load i64, ptr %i.hny, align 8, !tbaa !137
  %i.hqi = and i64 %i.hqh, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1774 = icmp eq i64 %i.hqi, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1774, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773
  %i.hqj = load ptr, ptr %i.hob, align 8, !tbaa !487
  %i.hqk = load i32, ptr %i.hod, align 8, !tbaa !488
  %i.hql = sext i32 %i.hqk to i64
  %i.hqm = getelementptr inbounds [8 x i8], ptr %i.hqj, i64 %i.hql
  %i.hqn = load double, ptr %i.hqm, align 8, !tbaa !2797 ; 2 uses
  %i.hqo = fcmp uno double %i.hqn, 0.000000e+00
  %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i1776 = select i1 %i.hqo, i1 %i.hoe, i1 false
  %i.hqp = fcmp oeq double %i.hqn, %i.hme
  %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i1777 = select i1 %or.cond.i.i.us63.us87.i.i.i.i.i.i.i.i.i1776, i1 true, i1 %i.hqp
  br i1 %.0.i.i21.us64.us88.i.i.i.i.i.i.i.i.i1777, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775
  %i.hqq = trunc i64 %i.hnt to i32
  %i.hqr = add i32 %i.hqq, -1
  %i.hqs = mul i32 %i.hqr, %i.hns
  %i.hqt = add i32 %i.hnu, %i.hqs                 ; 3 uses
  %i.hqu = add nsw i64 %i.hnt, -1                 ; 5 uses
  %i.hqv = icmp eq i64 %i.hqu, 0
  br i1 %i.hqv, label %.split.us.i.i.i.i.i.i.i.i.i1764, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778
  %min.iters.check5556 = icmp samesign ult i64 %i.hnt, 33
  br i1 %min.iters.check5556, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader, label %vector.ph5557

vector.ph5557:                                    ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph
  %n.vec5559 = and i64 %i.hqu, -32                ; 3 uses
  %i.hqw = and i64 %i.hqu, 31
  %i.hqx = trunc i64 %n.vec5559 to i32
  %i.hqy = mul i32 %i.hns, %i.hqx
  %i.hqz = add i32 %i.hnu, %i.hqy
  %broadcast.splatinsert5560 = insertelement <32 x i32> poison, i32 %i.hns, i64 0
  %broadcast.splat5561 = shufflevector <32 x i32> %broadcast.splatinsert5560, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5562 = insertelement <32 x i32> poison, i32 %i.hnv, i64 0
  %broadcast.splat5563 = shufflevector <32 x i32> %broadcast.splatinsert5562, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5564 = insertelement <32 x i32> poison, i32 %i.hnu, i64 0
  %broadcast.splat5565 = shufflevector <32 x i32> %broadcast.splatinsert5564, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5566 = insertelement <32 x i32> poison, i32 %i.hns, i64 0
  %broadcast.splat5567 = shufflevector <32 x i32> %broadcast.splatinsert5566, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.hra = mul <32 x i32> %broadcast.splat5567, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5568 = add <32 x i32> %broadcast.splat5565, %i.hra
  %i.hrb = shl nsw i32 %i.hns, 5
  %broadcast.splatinsert5569 = insertelement <32 x i32> poison, i32 %i.hrb, i64 0
  %broadcast.splat5570 = shufflevector <32 x i32> %broadcast.splatinsert5569, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5571

vector.body5571:                                  ; preds = %vector.body.interim5576, %vector.ph5557
  %index5572 = phi i64 [ 0, %vector.ph5557 ], [ %index.next5574, %vector.body.interim5576 ]
  %vec.ind5573 = phi <32 x i32> [ %induction5568, %vector.ph5557 ], [ %vec.ind.next5575, %vector.body.interim5576 ] ; 2 uses
  %i.hrc = add nsw <32 x i32> %vec.ind5573, %broadcast.splat5561
  %i.hrd = icmp eq <32 x i32> %i.hrc, %broadcast.splat5563
  %i.hre = freeze <32 x i1> %i.hrd
  %i.hrf = bitcast <32 x i1> %i.hre to i32
  %.not5883 = icmp eq i32 %i.hrf, 0
  br i1 %.not5883, label %vector.body.interim5576, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729

vector.body.interim5576:                          ; preds = %vector.body5571
  %vec.ind.next5575 = add <32 x i32> %vec.ind5573, %broadcast.splat5570
  %index.next5574 = add nuw i64 %index5572, 32    ; 2 uses
  %i.hrg = icmp eq i64 %index.next5574, %n.vec5559
  br i1 %i.hrg, label %middle.block5577, label %vector.body5571, !llvm.loop !3172

middle.block5577:                                 ; preds = %vector.body.interim5576
  %cmp.n5578 = icmp eq i64 %i.hqu, %n.vec5559
  br i1 %cmp.n5578, label %.split.us.i.i.i.i.i.i.i.i.i1764, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph, %middle.block5577
  %.ph6110 = phi i64 [ %i.hqu, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph ], [ %i.hqw, %middle.block5577 ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381.ph = phi i32 [ %i.hnu, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.lr.ph ], [ %i.hqz, %middle.block5577 ]
  br label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779: ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782
  %i.hrh = add nsw i64 %i.hrj, -1                 ; 2 uses
  %i.hri = icmp eq i64 %i.hrh, 0
  br i1 %i.hri, label %.split.us.i.i.i.i.i.i.i.i.i1764, label %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782, !llvm.loop !3173

.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782:     ; preds = %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779
  %i.hrj = phi i64 [ %i.hrh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779 ], [ %.ph6110, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader ]
  %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381 = phi i32 [ %i.hrk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779 ], [ %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381.ph, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782.preheader ]
  %i.hrk = add nsw i32 %.042.us58.us83.us.i.i.i.i.i.i.i.i.i17805381, %i.hns ; 2 uses
  %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i1783 = icmp eq i32 %i.hrk, %i.hnv
  br i1 %.not16.us67.us91.us.i.i.i.i.i.i.i.i.i1783, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779, !llvm.loop !3171

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1716
  %i.hrl = load ptr, ptr %i.hoa, align 8, !tbaa !331
  %i.hrm = sext i32 %i.hnu to i64
  %i.hrn = sext i32 %i.hns to i64
  %i.hro = sext i32 %i.hlk to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1718 = getelementptr [4 x i8], ptr %i.hrl, i64 %i.hro
  br label %bb.ams

bb.ams:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i1725, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717
  %indvars.iv.i.i.i.i.i.i.i.i.i1719 = phi i64 [ %i.hrm, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1727, %.critedge.i.i.i.i.i.i.i.i.i1725 ] ; 3 uses
  %.03441.i.i.i.i.i.i.i.i.i1720 = phi i64 [ %i.hnt, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1717 ], [ %.1.i.i.i.i.i.i.i.i.i1726, %.critedge.i.i.i.i.i.i.i.i.i1725 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1721 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1718, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1719
  %i.hrp = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1721, align 4, !tbaa !3 ; 2 uses
  %i.hrq = zext i32 %i.hrp to i64                 ; 2 uses
  %i.hrr = lshr i64 %i.hrq, 6
  %i.hrs = getelementptr inbounds nuw [8 x i8], ptr %i.hny, i64 %i.hrr
  %i.hrt = load i64, ptr %i.hrs, align 8, !tbaa !137
  %i.hru = and i64 %i.hrq, 63
  %i.hrv = shl nuw i64 1, %i.hru
  %i.hrw = and i64 %i.hrv, %i.hrt
  %.not.i7.i.i.i.i.i.i.i.i.i.i1722 = icmp eq i64 %i.hrw, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1722, label %.critedge.i.i.i.i.i.i.i.i.i1725, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %bb.ams
  %i.hrx = load ptr, ptr %i.hob, align 8, !tbaa !487
  %i.hry = sext i32 %i.hrp to i64
  %i.hrz = getelementptr inbounds [8 x i8], ptr %i.hrx, i64 %i.hry
  %i.hsa = load double, ptr %i.hrz, align 8, !tbaa !2797 ; 2 uses
  %i.hsb = fcmp uno double %i.hsa, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i1723 = select i1 %i.hsb, i1 %i.hoe, i1 false
  %i.hsc = fcmp oeq double %i.hsa, %i.hme
  %.0.i.i21.i.i.i.i.i.i.i.i.i1724 = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i1723, i1 true, i1 %i.hsc
  br i1 %.0.i.i21.i.i.i.i.i.i.i.i.i1724, label %bb.amt, label %.critedge.i.i.i.i.i.i.i.i.i1725

bb.amt:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.hsd = add nsw i64 %.03441.i.i.i.i.i.i.i.i.i1720, -1 ; 2 uses
  %i.hse = icmp eq i64 %i.hsd, 0
  br i1 %i.hse, label %.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763, label %.critedge.i.i.i.i.i.i.i.i.i1725

.split.us.loopexit.i.i.i.i.i.i.i.i.i1809:         ; preds = %bb.amn
  %i.hsf = trunc nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1800 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1764

.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797:       ; preds = %bb.amr
  %i.hsg = trunc nsw i64 %indvars.iv130.i.i.i.i.i.i.i.i.i1786 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1764

.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763:      ; preds = %bb.amt
  %i.hsh = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1719 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i1764

.split.us.i.i.i.i.i.i.i.i.i1764:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778, %middle.block5577, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1809
  %.us-phi.i.i.i.i.i.i.i.i.i1765 = phi i32 [ %i.hsh, %.split.us.loopexit108.i.i.i.i.i.i.i.i.i1763 ], [ %i.hsf, %.split.us.loopexit.i.i.i.i.i.i.i.i.i1809 ], [ %i.hsg, %.split.us.loopexit98.i.i.i.i.i.i.i.i.i1797 ], [ %i.hqt, %middle.block5577 ], [ %i.hqt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i1778 ], [ %i.hqt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i1779 ] ; 3 uses
  %i.hsi = load ptr, ptr %.sroa.12.0..sroa_idx.i1680, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.hsj = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1765, 1
  %i.hsk = sext i32 %i.hsj to i64
  %i.hsl = getelementptr inbounds nuw i8, ptr %i.hsi, i64 144 ; 2 uses
  %i.hsm = load ptr, ptr %i.hsl, align 8, !tbaa !341 ; 2 uses
  %i.hsn = icmp eq ptr %i.hsm, null
  br i1 %i.hsn, label %bb.amu, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766

bb.amu:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i1764
  %i.hso = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hsi)
          to label %.noexc19.i.i.i.i.i.i.i.i1771 unwind label %bb.amz ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1771:                     ; preds = %bb.amu
  %.pre.i.i.i.i.i.i.i.i.i.i1772 = load ptr, ptr %i.hsl, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766: ; preds = %.noexc19.i.i.i.i.i.i.i.i1771, %.split.us.i.i.i.i.i.i.i.i.i1764
  %i.hsp = phi ptr [ %i.hsm, %.split.us.i.i.i.i.i.i.i.i.i1764 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1772, %.noexc19.i.i.i.i.i.i.i.i1771 ]
  %i.hsq = getelementptr inbounds [8 x i8], ptr %i.hsp, i64 %i.hni
  store i64 %i.hsk, ptr %i.hsq, align 8, !tbaa !137
  %i.hsr = getelementptr inbounds nuw i8, ptr %i.hsi, i64 32 ; 2 uses
  %i.hss = load ptr, ptr %i.hsr, align 8, !tbaa !362
  %.not.i22.i.i.i.i.i.i.i.i.i1767 = icmp eq ptr %i.hss, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1767, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %bb.amv

bb.amv:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766
  %i.hst = getelementptr inbounds nuw i8, ptr %i.hsi, i64 56
  %i.hsu = load i32, ptr %i.hst, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hsi, i32 noundef %i.hsu, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1768 unwind label %bb.amz

.noexc20.i.i.i.i.i.i.i.i1768:                     ; preds = %bb.amv
  %i.hsv = load ptr, ptr %i.hsr, align 8, !tbaa !362 ; 2 uses
  %i.hsw = getelementptr inbounds nuw i8, ptr %i.hsv, i64 44
  %i.hsx = load i8, ptr %i.hsw, align 4, !tbaa !363
  %i.hsy = and i8 %i.hsx, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1769 = icmp eq i8 %i.hsy, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1769, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770, label %.invoke.i.i.i.i.i.i.i.i1758, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770: ; preds = %.noexc20.i.i.i.i.i.i.i.i1768
  %i.hsz = getelementptr inbounds nuw i8, ptr %i.hsv, i64 16
  %i.hta = load ptr, ptr %i.hsz, align 8, !tbaa !368
  %i.htb = lshr i64 %.069.i.i.i.i.i.i.i.i1703, 3
  %i.htc = and i64 %i.htb, 536870911
  %i.htd = getelementptr inbounds nuw i8, ptr %i.hta, i64 %i.htc ; 2 uses
  %i.hte = load i8, ptr %i.htd, align 1, !tbaa !30
  %i.htf = trunc i64 %.069.i.i.i.i.i.i.i.i1703 to i8
  %i.htg = and i8 %i.htf, 7
  %i.hth = shl nuw i8 1, %i.htg
  %i.hti = or i8 %i.hte, %i.hth
  store i8 %i.hti, ptr %i.htd, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729

.critedge.i.i.i.i.i.i.i.i.i1725:                  ; preds = %bb.amt, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i, %bb.ams
  %.1.i.i.i.i.i.i.i.i.i1726 = phi i64 [ %.03441.i.i.i.i.i.i.i.i.i1720, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.hsd, %bb.amt ], [ %.03441.i.i.i.i.i.i.i.i.i1720, %bb.ams ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1727 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1719, %i.hrn ; 2 uses
  %i.htj = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1727 to i32
  %.not16.i.i.i.i.i.i.i.i.i1728 = icmp eq i32 %i.hnv, %i.htj
  br i1 %.not16.i.i.i.i.i.i.i.i.i1728, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729, label %bb.ams, !llvm.loop !3171

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1725, %vector.body5571, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782, %.critedge.us51.i.i.i.i.i.i.i.i.i1793, %.critedge.us.i.i.i.i.i.i.i.i.i1805, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773, %bb.amj
  %.039.i.i.i.i.i.i.i.i.i1730 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1765, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1766 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1765, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1770 ], [ %i.hnu, %bb.amj ], [ %i.hnv, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1773 ], [ %i.hnv, %vector.body5571 ], [ %i.hnv, %.critedge.us65.us89.us.i.i.i.i.i.i.i.i.i1782 ], [ %i.hnv, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1775 ], [ %i.hnv, %.critedge.us51.i.i.i.i.i.i.i.i.i1793 ], [ %i.hnv, %.critedge.us.i.i.i.i.i.i.i.i.i1805 ], [ %i.hnv, %.critedge.i.i.i.i.i.i.i.i.i1725 ]
  %i.htk = load ptr, ptr %.sroa.952.0..sroa_idx.i1677, align 8, !tbaa !3168, !nonnull !74, !align !497
  %i.htl = load i32, ptr %i.htk, align 4, !tbaa !3
  %i.htm = icmp eq i32 %.039.i.i.i.i.i.i.i.i.i1730, %i.htl
  br i1 %i.htm, label %bb.amw, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.amw:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1729
  %i.htn = load ptr, ptr %.sroa.12.0..sroa_idx.i1680, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.hto = getelementptr inbounds nuw i8, ptr %i.htn, i64 144 ; 2 uses
  %i.htp = load ptr, ptr %i.hto, align 8, !tbaa !341 ; 2 uses
  %i.htq = icmp eq ptr %i.htp, null
  br i1 %i.htq, label %bb.amx, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731

bb.amx:                                           ; preds = %bb.amw
  %i.htr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.htn)
          to label %.noexc22.i.i.i.i.i.i.i.i1761 unwind label %bb.amz ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1761:                     ; preds = %bb.amx
  %.pre.i27.i.i.i.i.i.i.i.i.i1762 = load ptr, ptr %i.hto, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731: ; preds = %.noexc22.i.i.i.i.i.i.i.i1761, %bb.amw
  %i.hts = phi ptr [ %i.htp, %bb.amw ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1762, %.noexc22.i.i.i.i.i.i.i.i1761 ]
  %i.htt = getelementptr inbounds [8 x i8], ptr %i.hts, i64 %i.hni
  store i64 0, ptr %i.htt, align 8, !tbaa !137
  %i.htu = getelementptr inbounds nuw i8, ptr %i.htn, i64 32 ; 2 uses
  %i.htv = load ptr, ptr %i.htu, align 8, !tbaa !362
  %.not.i24.i.i.i.i.i.i.i.i.i1732 = icmp eq ptr %i.htv, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1732, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.amy

bb.amy:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1731
  %i.htw = getelementptr inbounds nuw i8, ptr %i.htn, i64 56
  %i.htx = load i32, ptr %i.htw, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.htn, i32 noundef %i.htx, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1756 unwind label %bb.amz

.noexc23.i.i.i.i.i.i.i.i1756:                     ; preds = %bb.amy
  %i.hty = load ptr, ptr %i.htu, align 8, !tbaa !362 ; 2 uses
  %i.htz = getelementptr inbounds nuw i8, ptr %i.hty, i64 44
  %i.hua = load i8, ptr %i.htz, align 4, !tbaa !363
  %i.hub = and i8 %i.hua, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1757 = icmp eq i8 %i.hub, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1757, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1760, label %.invoke.i.i.i.i.i.i.i.i1758, !prof !69

end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.imt = shl i64 %i.imq, %i.ims
  %i.imu = and i64 %i.imt, %i.imn
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %77, i32 noundef %i.imk, i64 noundef %i.imu)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.ara:                                           ; preds = %bb.aqy
  %.not32.i.i.i.i.i.i.i1996 = icmp eq i32 %i.imc, %i.imh
  br i1 %.not32.i.i.i.i.i.i.i1996, label %bb.arc, label %bb.arb

bb.arb:                                           ; preds = %bb.ara
  %i.imv = sdiv i32 %i.imc, 64
  %i.imw = sub nsw i32 %i.imh, %i.imc             ; 2 uses
  %i.imx = zext nneg i32 %i.imw to i64
  %notmask.i.i35.i.i.i.i.i.i.i1997 = shl nsw i64 -1, %i.imx
  %i.imy = xor i64 %notmask.i.i35.i.i.i.i.i.i.i1997, -1
  %i.imz = sub nsw i32 64, %i.imw
  %i.ina = zext nneg i32 %i.imz to i64
  %i.inb = shl i64 %i.imy, %i.ina
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %77, i32 noundef %i.imv, i64 noundef %i.inb)
  br label %bb.arc

bb.arc:                                           ; preds = %bb.arb, %bb.ara
  %i.inc = add nsw i32 %i.imh, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i = icmp sgt i32 %i.inc, %i.imi
  br i1 %.not3356.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i2000, label %.lr.ph.i.i.i.i.i.i29.i1998

.lr.ph.i.i.i.i.i.i29.i1998:                       ; preds = %bb.arc
  %i.ind = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.ine = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  br label %bb.ard

._crit_edge.i.i.i.i.i.i.i2000:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.arc
  %.not34.i.i.i.i.i.i.i2001 = icmp eq i32 %i.ime, %i.imi
  br i1 %.not34.i.i.i.i.i.i.i2001, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.ats

bb.ard:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i1998
  %i.inf = phi i32 [ %i.inc, %.lr.ph.i.i.i.i.i.i29.i1998 ], [ %i.jbb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i = phi i32 [ %i.imh, %.lr.ph.i.i.i.i.i.i29.i1998 ], [ %i.inf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ing = sdiv i32 %.057.i.i.i.i.i.i.i, 64       ; 3 uses
  %i.inh = sext i32 %i.ing to i64
  %i.ini = getelementptr inbounds [8 x i8], ptr %i.ima, i64 %i.inh
  %i.inj = load i64, ptr %i.ini, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.inj, label %.lr.ph.i.i.i.i.i.i.i.i2073 [
    i64 -1, label %bb.are
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i2073:                       ; preds = %bb.ard
  %i.ink = shl nsw i32 %i.ing, 6
  br label %bb.atb

bb.are:                                           ; preds = %bb.ard
  %i.inl = shl nsw i32 %i.ing, 6                  ; 2 uses
  %i.inm = add i32 %i.inl, 64
  %i.inn = sext i32 %i.inm to i64
  %.0.off.i.i.i.i.i.i.i2003 = add i32 %.057.i.i.i.i.i.i.i, 127
  %.not91.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i2003, 64
  br i1 %.not91.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph90.i.i.i.i.i.i.i.i

.lr.ph90.i.i.i.i.i.i.i.i:                         ; preds = %bb.are
  %i.ino = sext i32 %i.inl to i64
  br label %bb.arf

bb.arf:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph90.i.i.i.i.i.i.i.i
  %.083.i.i.i.i.i.i.i.i = phi i64 [ %i.ino, %.lr.ph90.i.i.i.i.i.i.i.i ], [ %i.izo, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.inp = load ptr, ptr %81, align 8, !tbaa !3191, !nonnull !74, !align !275
  %i.inq = load ptr, ptr %i.inp, align 8, !tbaa !329
  %i.inr = load ptr, ptr %.sroa.448.0..sroa_idx.i1977, align 8, !tbaa !3193, !nonnull !74, !align !275
  %i.ins = load ptr, ptr %i.inr, align 8, !tbaa !329 ; 2 uses
  %i.int = getelementptr inbounds nuw [4 x i8], ptr %i.ins, i64 %.083.i.i.i.i.i.i.i.i
  %i.inu = load i32, ptr %i.int, align 4, !tbaa !3
  %i.inv = sext i32 %i.inu to i64
  %i.inw = getelementptr inbounds [4 x i8], ptr %i.inq, i64 %i.inv
  %i.inx = load i32, ptr %i.inw, align 4, !tbaa !3 ; 3 uses
  %i.iny = load ptr, ptr %.sroa.549.0..sroa_idx.i1978, align 8, !tbaa !3194, !nonnull !74, !align !275 ; 5 uses
  %i.inz = trunc i64 %.083.i.i.i.i.i.i.i.i to i32 ; 4 uses
  %i.ioa = getelementptr inbounds nuw i8, ptr %i.iny, i64 16
  %i.iob = load ptr, ptr %i.ioa, align 8, !tbaa !487
  %i.ioc = getelementptr inbounds nuw i8, ptr %i.iny, i64 58
  %i.iod = load i8, ptr %i.ioc, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ioe = trunc nuw i8 %i.iod to i1
  br i1 %i.ioe, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.arg

bb.arg:                                           ; preds = %bb.arf
  %i.iof = getelementptr inbounds nuw i8, ptr %i.iny, i64 59
  %i.iog = load i8, ptr %i.iof, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ioh = trunc nuw i8 %i.iog to i1
  br i1 %i.ioh, label %bb.arh, label %bb.ari

bb.arh:                                           ; preds = %bb.arg
  %i.ioi = getelementptr inbounds nuw i8, ptr %i.iny, i64 64
  %i.ioj = load i32, ptr %i.ioi, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i

bb.ari:                                           ; preds = %bb.arg
  %i.iok = getelementptr inbounds nuw i8, ptr %i.iny, i64 8
  %i.iol = load ptr, ptr %i.iok, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i2004 = shl i64 %.083.i.i.i.i.i.i.i.i, 32
  %i.iom = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i2004, 30
  %i.ion = getelementptr inbounds i8, ptr %i.iol, i64 %i.iom
  %i.ioo = load i32, ptr %i.ion, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ari, %bb.arh, %bb.arf
  %.0.i.i.i.i.i.i.i.i.i.i.i2005 = phi i32 [ %i.ioo, %bb.ari ], [ %i.ioj, %bb.arh ], [ %i.inz, %bb.arf ]
  %i.iop = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i2005 to i64
  %i.ioq = getelementptr inbounds [16 x i8], ptr %i.iob, i64 %i.iop ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ioq, align 8 ; 8 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ioq, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 5 uses
  %i.ior = load ptr, ptr %.sroa.650.0..sroa_idx.i1979, align 8, !tbaa !3195, !nonnull !74, !align !275 ; 5 uses
  %i.ios = getelementptr inbounds nuw i8, ptr %i.ior, i64 16
  %i.iot = load ptr, ptr %i.ios, align 8, !tbaa !487
  %i.iou = getelementptr inbounds nuw i8, ptr %i.ior, i64 58
  %i.iov = load i8, ptr %i.iou, align 2, !tbaa !338, !range !73, !noundef !74
  %i.iow = trunc nuw i8 %i.iov to i1
  br i1 %i.iow, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2006, label %bb.arj

bb.arj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.iox = getelementptr inbounds nuw i8, ptr %i.ior, i64 59
  %i.ioy = load i8, ptr %i.iox, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ioz = trunc nuw i8 %i.ioy to i1
  br i1 %i.ioz, label %bb.ark, label %bb.arl

bb.ark:                                           ; preds = %bb.arj
  %i.ipa = getelementptr inbounds nuw i8, ptr %i.ior, i64 64
  %i.ipb = load i32, ptr %i.ipa, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2006

bb.arl:                                           ; preds = %bb.arj
  %i.ipc = getelementptr inbounds nuw i8, ptr %i.ior, i64 8
  %i.ipd = load ptr, ptr %i.ipc, align 8, !tbaa !331
  %sext49.i.i.i.i.i.i.i.i.i = shl i64 %.083.i.i.i.i.i.i.i.i, 32
  %i.ipe = ashr exact i64 %sext49.i.i.i.i.i.i.i.i.i, 30
  %i.ipf = getelementptr inbounds i8, ptr %i.ipd, i64 %i.ipe
  %i.ipg = load i32, ptr %i.ipf, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2006

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2006: ; preds = %bb.arl, %bb.ark, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i17.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ipg, %bb.arl ], [ %i.ipb, %bb.ark ], [ %i.inz, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.iph = sext i32 %.0.i.i17.i.i.i.i.i.i.i.i.i to i64
  %i.ipi = getelementptr inbounds [8 x i8], ptr %i.iot, i64 %i.iph
  %i.ipj = load i64, ptr %i.ipi, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i30.i = icmp eq i64 %i.ipj, 0
  br i1 %.not.i.i.i.i.i.i.i.i30.i, label %bb.arm, label %bb.arp, !prof !48

bb.arm:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2006
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #35, !noalias !3196
  store i64 0, ptr %71, align 16, !tbaa !30, !noalias !3196
  store i32 0, ptr %i.ind, align 16, !tbaa !30, !alias.scope !3199, !noalias !3196
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %71)
          to label %.noexc.i.i.i.i.i.i.i.i2069 unwind label %bb.asl

.noexc.i.i.i.i.i.i.i.i2069:                       ; preds = %bb.arm
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35, !noalias !3196
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %72, ptr nonnull @.str.178) #38
          to label %bb.arn unwind label %bb.aro

bb.arn:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i2069
  unreachable

bb.aro:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i2069
  %i.ipk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ipl = load ptr, ptr %72, align 8, !tbaa !49  ; 2 uses
  %i.ipm = icmp eq ptr %i.ipl, %i.ine
  br i1 %i.ipm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2071, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2070

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2070: ; preds = %bb.aro
  %i.ipn = load i64, ptr %i.ine, align 8, !tbaa !30
  %i.ipo = add i64 %i.ipn, 1
  call void @_ZdlPvm(ptr noundef %i.ipl, i64 noundef %i.ipo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2071

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2071: ; preds = %bb.aro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2070
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  br label %.body.i.i.i.i.i.i.i.i2022

bb.arp:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2006
  %i.ipp = load ptr, ptr %.sroa.751.0..sroa_idx.i1980, align 8, !tbaa !3202, !nonnull !74, !align !275
  %i.ipq = load ptr, ptr %i.ipp, align 8, !tbaa !329
  %i.ipr = load ptr, ptr %.sroa.852.0..sroa_idx.i1981, align 8, !tbaa !3203, !nonnull !74, !align !497 ; 2 uses
  %i.ips = load ptr, ptr %.sroa.953.0..sroa_idx.i1982, align 8, !tbaa !3204, !nonnull !74, !align !497 ; 2 uses
  %i.ipt = load ptr, ptr %.sroa.1054.0..sroa_idx.i1983, align 8, !tbaa !3205, !nonnull !74, !align !497
  %sext50.i.i.i.i.i.i.i.i.i = shl i64 %.083.i.i.i.i.i.i.i.i, 32
  %i.ipu = ashr exact i64 %sext50.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.ipv = getelementptr inbounds [4 x i8], ptr %i.ins, i64 %i.ipu
  %i.ipw = load i32, ptr %i.ipv, align 4, !tbaa !3
  %i.ipx = sext i32 %i.ipw to i64
  %i.ipy = getelementptr inbounds [4 x i8], ptr %i.ipq, i64 %i.ipx
  %i.ipz = load i32, ptr %i.ipy, align 4, !tbaa !3 ; 2 uses
  %i.iqa = icmp sgt i64 %i.ipj, 0                 ; 3 uses
  %i.iqb = add nsw i32 %i.ipz, -1
  %i.iqc = select i1 %i.iqa, i32 0, i32 %i.iqb
  store i32 %i.iqc, ptr %i.ipr, align 4, !tbaa !3
  %i.iqd = select i1 %i.iqa, i32 %i.ipz, i32 -1
  store i32 %i.iqd, ptr %i.ips, align 4, !tbaa !3
  %i.iqe = select i1 %i.iqa, i32 1, i32 -1        ; 15 uses
  store i32 %i.iqe, ptr %i.ipt, align 4, !tbaa !3
  %i.iqf = call noundef i64 @llvm.abs.i64(i64 %i.ipj, i1 true) ; 9 uses
  %i.iqg = load i32, ptr %i.ipr, align 4, !tbaa !3 ; 12 uses
  %i.iqh = load i32, ptr %i.ips, align 4, !tbaa !3 ; 19 uses
  %.not1653.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.iqg, %i.iqh
  br i1 %.not1653.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %.lr.ph.i.i.i.i.i.i.i.i.i2007

.lr.ph.i.i.i.i.i.i.i.i.i2007:                     ; preds = %bb.arp
  %i.iqi = load ptr, ptr %.sroa.11.0..sroa_idx.i1984, align 8, !tbaa !3206, !nonnull !74, !align !275 ; 7 uses
  %i.iqj = getelementptr inbounds nuw i8, ptr %i.iqi, i64 24
  %i.iqk = load ptr, ptr %i.iqj, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i2008 = icmp eq ptr %i.iqk, null
  %i.iql = getelementptr inbounds nuw i8, ptr %i.iqi, i64 59 ; 3 uses
  %i.iqm = getelementptr inbounds nuw i8, ptr %i.iqi, i64 8 ; 3 uses
  %i.iqn = getelementptr inbounds nuw i8, ptr %i.iqi, i64 16 ; 4 uses
  %i.iqo = getelementptr inbounds nuw i8, ptr %i.iqi, i64 58
  %i.iqp = getelementptr inbounds nuw i8, ptr %i.iqi, i64 64 ; 3 uses
  %i.iqq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  %i.iqr = load i8, ptr %i.iqo, align 2, !tbaa !338, !range !73, !noundef !74
  %i.iqs = trunc nuw i8 %i.iqr to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2008, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2064, label %.lr.ph.split.i.i.i.i.i.i.i.i.i2009

.lr.ph.split.us.i.i.i.i.i.i.i.i.i2064:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2007
  %i.iqt = load ptr, ptr %i.iqn, align 8, !tbaa !487
  %i.iqu = sext i32 %i.iqg to i64
  %i.iqv = sext i32 %i.iqe to i64
  %i.iqw = sext i32 %i.inx to i64
  %i.iqx = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.iqy = add nsw i64 %i.iqx, -4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i2066, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2064
  %indvars.iv118.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2066 ], [ %i.iqu, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2064 ] ; 3 uses
  %.04254.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i2067, %.critedge.us.i.i.i.i.i.i.i.i.i2066 ], [ %i.iqf, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2064 ] ; 4 uses
  %i.iqz = add nsw i64 %indvars.iv118.i.i.i.i.i.i.i.i.i, %i.iqw ; 2 uses
  %i.ira = trunc nsw i64 %i.iqz to i32
  br i1 %i.iqs, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i, label %bb.arq

bb.arq:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065
  %i.irb = load i8, ptr %i.iql, align 1, !tbaa !339, !range !73, !noundef !74
  %i.irc = trunc nuw i8 %i.irb to i1
  br i1 %i.irc, label %bb.ars, label %bb.arr

bb.arr:                                           ; preds = %bb.arq
  %i.ird = load ptr, ptr %i.iqm, align 8, !tbaa !331
  %i.ire = getelementptr inbounds [4 x i8], ptr %i.ird, i64 %i.iqz
  %i.irf = load i32, ptr %i.ire, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i

bb.ars:                                           ; preds = %bb.arq
  %i.irg = load i32, ptr %i.iqp, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.ars, %bb.arr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065
  %.0.i.i18.us.i.i.i.i.i.i.i.i.i = phi i32 [ %i.irf, %bb.arr ], [ %i.irg, %bb.ars ], [ %i.ira, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065 ]
  %i.irh = sext i32 %.0.i.i18.us.i.i.i.i.i.i.i.i.i to i64
  %i.iri = getelementptr inbounds [16 x i8], ptr %i.iqt, i64 %i.irh ; 2 uses
  %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iri, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iri, i64 8
  %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.irj = trunc i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %.not.i.i25.us.i.i.i.i.i.i.i.i.i, label %bb.art, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

bb.art:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i
  %i.irk = icmp ult i32 %i.irj, 13
  br i1 %i.irk, label %bb.arv, label %bb.aru

bb.aru:                                           ; preds = %bb.art
  %i.irl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i, i64 4
  %bcmp.i.i.us.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.irl, ptr nonnull %i.iqq, i64 %i.iqy)
  %i.irm = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.irm, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

bb.arv:                                           ; preds = %bb.art
  %i.irn = icmp samesign ult i32 %i.irj, 5
  %i.iro = icmp eq ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.us.i.i.i.i.i.i.i.i.i = select i1 %i.irn, i1 true, i1 %i.iro
  br i1 %or.cond.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.arv, %bb.aru
  %i.irp = add nsw i64 %.04254.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.irq = icmp eq i64 %i.irp, 0
  br i1 %i.irq, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us.i.i.i.i.i.i.i.i.i2066

.critedge.us.i.i.i.i.i.i.i.i.i2066:               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, %bb.arv, %bb.aru, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i2067 = phi i64 [ %.04254.us.i.i.i.i.i.i.i.i.i, %bb.aru ], [ %i.irp, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i ], [ %.04254.us.i.i.i.i.i.i.i.i.i, %bb.arv ], [ %.04254.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next119.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i.i.i.i.i.i, %i.iqv ; 2 uses
  %i.irr = trunc nsw i64 %indvars.iv.next119.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i2068 = icmp eq i32 %i.iqh, %i.irr
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i2068, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2065, !llvm.loop !3207

.lr.ph.split.i.i.i.i.i.i.i.i.i2009:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2007
  %i.irs = getelementptr inbounds nuw i8, ptr %i.iqi, i64 57
  %i.irt = load i8, ptr %i.irs, align 1, !range !73
  %i.iru = trunc nuw i8 %i.irt to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i2010 = select i1 %i.iqs, i1 true, i1 %i.iru
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i2010, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2009
  %i.irv = sext i32 %i.iqg to i64
  %i.irw = sext i32 %i.iqe to i64
  %i.irx = sext i32 %i.inx to i64
  %i.iry = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.irz = add nsw i64 %i.iry, -4
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062:      ; preds = %.critedge.us69.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061
  %indvars.iv115.i.i.i.i.i.i.i.i.i = phi i64 [ %i.irv, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061 ], [ %indvars.iv.next116.i.i.i.i.i.i.i.i.i, %.critedge.us69.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.04254.us58.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iqf, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2061 ], [ %.1.us70.i.i.i.i.i.i.i.i.i, %.critedge.us69.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.isa = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i, %i.irx ; 4 uses
  %i.isb = lshr i64 %i.isa, 6
  %i.isc = and i64 %i.isb, 67108863
  %i.isd = getelementptr inbounds nuw [8 x i8], ptr %i.iqk, i64 %i.isc
  %i.ise = load i64, ptr %i.isd, align 8, !tbaa !137
  %i.isf = and i64 %i.isa, 63
  %i.isg = shl nuw i64 1, %i.isf
  %i.ish = and i64 %i.isg, %i.ise
  %.not.i.i.us.i.i.i.i.i.i.i.i.i2063 = icmp eq i64 %i.ish, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i2063, label %.critedge.us69.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062
  %i.isi = trunc nsw i64 %i.isa to i32
  %i.isj = load ptr, ptr %i.iqn, align 8, !tbaa !487
  br i1 %i.iqs, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i, label %bb.arw

bb.arw:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i
  %i.isk = load i8, ptr %i.iql, align 1, !tbaa !339, !range !73, !noundef !74
  %i.isl = trunc nuw i8 %i.isk to i1
  br i1 %i.isl, label %bb.ary, label %bb.arx

bb.arx:                                           ; preds = %bb.arw
  %i.ism = load ptr, ptr %i.iqm, align 8, !tbaa !331
  %i.isn = getelementptr inbounds [4 x i8], ptr %i.ism, i64 %i.isa
  %i.iso = load i32, ptr %i.isn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i

bb.ary:                                           ; preds = %bb.arw
  %i.isp = load i32, ptr %i.iqp, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i: ; preds = %bb.ary, %bb.arx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i
  %.0.i.i18.us61.i.i.i.i.i.i.i.i.i = phi i32 [ %i.iso, %bb.arx ], [ %i.isp, %bb.ary ], [ %i.isi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i ]
  %i.isq = sext i32 %.0.i.i18.us61.i.i.i.i.i.i.i.i.i to i64
  %i.isr = getelementptr inbounds [16 x i8], ptr %i.isj, i64 %i.isq ; 2 uses
  %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i = load i64, ptr %i.isr, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.isr, i64 8
  %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us65.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.iss = trunc i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %.not.i.i25.us65.i.i.i.i.i.i.i.i.i, label %bb.arz, label %.critedge.us69.i.i.i.i.i.i.i.i.i

bb.arz:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i
  %i.ist = icmp ult i32 %i.iss, 13
  br i1 %i.ist, label %bb.asb, label %bb.asa

bb.asa:                                           ; preds = %bb.arz
  %i.isu = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i, i64 4
  %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.isu, ptr nonnull %i.iqq, i64 %i.irz)
  %i.isv = icmp eq i32 %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.isv, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, label %.critedge.us69.i.i.i.i.i.i.i.i.i

bb.asb:                                           ; preds = %bb.arz
  %i.isw = icmp samesign ult i32 %i.iss, 5
  %i.isx = icmp eq ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.us67.i.i.i.i.i.i.i.i.i = select i1 %i.isw, i1 true, i1 %i.isx
  br i1 %or.cond.us67.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, label %.critedge.us69.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i: ; preds = %bb.asb, %bb.asa
  %i.isy = add nsw i64 %.04254.us58.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.isz = icmp eq i64 %i.isy, 0
  br i1 %i.isz, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us69.i.i.i.i.i.i.i.i.i

.critedge.us69.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, %bb.asb, %bb.asa, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062
  %.1.us70.i.i.i.i.i.i.i.i.i = phi i64 [ %.04254.us58.i.i.i.i.i.i.i.i.i, %bb.asa ], [ %i.isy, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i ], [ %.04254.us58.i.i.i.i.i.i.i.i.i, %bb.asb ], [ %.04254.us58.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062 ], [ %.04254.us58.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next116.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i, %i.irw ; 2 uses
  %i.ita = trunc nsw i64 %indvars.iv.next116.i.i.i.i.i.i.i.i.i to i32
  %.not16.us71.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.iqh, %i.ita
  br i1 %.not16.us71.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2062, !llvm.loop !3207

.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2009
  %i.itb = load i8, ptr %i.iql, align 1, !tbaa !339, !range !73, !noundef !74
  %i.itc = trunc nuw i8 %i.itb to i1
  br i1 %i.itc, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011
  %i.itd = load i64, ptr %i.iqk, align 8, !tbaa !137
  %i.ite = and i64 %i.itd, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i2060 = icmp eq i64 %i.ite, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i2060, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059
  %i.itf = load ptr, ptr %i.iqn, align 8, !tbaa !487
  %i.itg = zext i32 %i.iqg to i64                 ; 2 uses
  %i.ith = zext i32 %i.iqe to i64                 ; 2 uses
  %i.iti = load i32, ptr %i.iqp, align 8, !tbaa !488
  %i.itj = sext i32 %i.iti to i64
  %i.itk = getelementptr inbounds [16 x i8], ptr %i.itf, i64 %i.itj ; 2 uses
  %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i = load i64, ptr %i.itk, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.itk, i64 8
  %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us84.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.itl = trunc i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.itm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i, i64 4
  %i.itn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.ito = add nsw i64 %i.itn, -4
  %i.itp = icmp samesign ult i32 %i.itl, 5
  %i.itq = icmp eq ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.us86.i.i.i.i.i.i.i.i.i = select i1 %i.itp, i1 true, i1 %i.itq
  br i1 %.not.i.i25.us84.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i
  %i.itr = icmp ult i32 %i.itl, 13
  br i1 %i.itr, label %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i
  br i1 %or.cond.us86.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i
  %i.its = add nsw i64 %i.iqf, -1
  %i.itt = mul i64 %i.its, %i.ith
  %i.itu = add i64 %i.itt, %i.itg                 ; 3 uses
  %i.itv = add nsw i64 %i.iqf, -1                 ; 5 uses
  %i.itw = icmp eq i64 %i.itv, 0
  br i1 %i.itw, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph:  ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check5502 = icmp samesign ult i64 %i.iqf, 33
  br i1 %min.iters.check5502, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader, label %vector.ph5503

vector.ph5503:                                    ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5505 = and i64 %i.itv, -32                ; 3 uses
  %i.itx = and i64 %i.itv, 31
  %i.ity = trunc i64 %n.vec5505 to i32
  %i.itz = mul i32 %i.iqe, %i.ity
  %i.iua = add i32 %i.iqg, %i.itz
  %broadcast.splatinsert5506 = insertelement <32 x i32> poison, i32 %i.iqe, i64 0
  %broadcast.splat5507 = shufflevector <32 x i32> %broadcast.splatinsert5506, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5508 = insertelement <32 x i32> poison, i32 %i.iqh, i64 0
  %broadcast.splat5509 = shufflevector <32 x i32> %broadcast.splatinsert5508, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5510 = insertelement <32 x i32> poison, i32 %i.iqg, i64 0
  %broadcast.splat5511 = shufflevector <32 x i32> %broadcast.splatinsert5510, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5512 = insertelement <32 x i32> poison, i32 %i.iqe, i64 0
  %broadcast.splat5513 = shufflevector <32 x i32> %broadcast.splatinsert5512, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.iub = mul <32 x i32> %broadcast.splat5513, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5514 = add <32 x i32> %broadcast.splat5511, %i.iub
  %i.iuc = shl nsw i32 %i.iqe, 5
  %broadcast.splatinsert5515 = insertelement <32 x i32> poison, i32 %i.iuc, i64 0
  %broadcast.splat5516 = shufflevector <32 x i32> %broadcast.splatinsert5515, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5517

vector.body5517:                                  ; preds = %vector.body.interim5522, %vector.ph5503
  %index5518 = phi i64 [ 0, %vector.ph5503 ], [ %index.next5520, %vector.body.interim5522 ]
  %vec.ind5519 = phi <32 x i32> [ %induction5514, %vector.ph5503 ], [ %vec.ind.next5521, %vector.body.interim5522 ] ; 2 uses
  %i.iud = add <32 x i32> %vec.ind5519, %broadcast.splat5507
  %i.iue = icmp eq <32 x i32> %broadcast.splat5509, %i.iud
  %i.iuf = freeze <32 x i1> %i.iue
  %i.iug = bitcast <32 x i1> %i.iuf to i32
  %.not5882 = icmp eq i32 %i.iug, 0
  br i1 %.not5882, label %vector.body.interim5522, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

vector.body.interim5522:                          ; preds = %vector.body5517
  %vec.ind.next5521 = add <32 x i32> %vec.ind5519, %broadcast.splat5516
  %index.next5520 = add nuw i64 %index5518, 32    ; 2 uses
  %i.iuh = icmp eq i64 %index.next5520, %n.vec5505
  br i1 %i.iuh, label %middle.block5523, label %vector.body5517, !llvm.loop !3208

middle.block5523:                                 ; preds = %vector.body.interim5522
  %cmp.n5524 = icmp eq i64 %i.itv, %n.vec5505
  br i1 %cmp.n5524, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph, %middle.block5523
  %.ph6137 = phi i64 [ %i.itv, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.itx, %middle.block5523 ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374.ph = phi i32 [ %i.iqg, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.lr.ph ], [ %i.iua, %middle.block5523 ]
  br label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i
  %i.iui = add nsw i64 %i.iuk, -1                 ; 2 uses
  %i.iuj = icmp eq i64 %i.iui, 0
  br i1 %i.iuj, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i, !llvm.loop !3209

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i:        ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i
  %i.iuk = phi i64 [ %i.iui, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i ], [ %.ph6137, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374 = phi i32 [ %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i ], [ %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374.ph, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i = add i32 %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i5374, %i.iqe ; 2 uses
  %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i = icmp eq i32 %i.iqh, %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i
  br i1 %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i, !llvm.loop !3207

.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i
  %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.itm, ptr nonnull %i.iqq, i64 %i.ito)
  %i.iul = icmp eq i32 %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i, 0
  br i1 %i.iul, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i
  %i.ium = add nsw i64 %i.iqf, -1
  %i.iun = mul i64 %i.ium, %i.ith
  %i.iuo = add i64 %i.iun, %i.itg                 ; 3 uses
  %i.iup = add nsw i64 %i.iqf, -1                 ; 5 uses
  %i.iuq = icmp eq i64 %i.iup, 0
  br i1 %i.iuq, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i
  %min.iters.check5529 = icmp samesign ult i64 %i.iqf, 33
  br i1 %min.iters.check5529, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader, label %vector.ph5530

vector.ph5530:                                    ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5532 = and i64 %i.iup, -32                ; 3 uses
  %i.iur = and i64 %i.iup, 31
  %i.ius = trunc i64 %n.vec5532 to i32
  %i.iut = mul i32 %i.iqe, %i.ius
  %i.iuu = add i32 %i.iqg, %i.iut
  %broadcast.splatinsert5533 = insertelement <32 x i32> poison, i32 %i.iqe, i64 0
  %broadcast.splat5534 = shufflevector <32 x i32> %broadcast.splatinsert5533, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5535 = insertelement <32 x i32> poison, i32 %i.iqh, i64 0
  %broadcast.splat5536 = shufflevector <32 x i32> %broadcast.splatinsert5535, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5537 = insertelement <32 x i32> poison, i32 %i.iqg, i64 0
  %broadcast.splat5538 = shufflevector <32 x i32> %broadcast.splatinsert5537, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5539 = insertelement <32 x i32> poison, i32 %i.iqe, i64 0
  %broadcast.splat5540 = shufflevector <32 x i32> %broadcast.splatinsert5539, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.iuv = mul <32 x i32> %broadcast.splat5540, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5541 = add <32 x i32> %broadcast.splat5538, %i.iuv
  %i.iuw = shl nsw i32 %i.iqe, 5
  %broadcast.splatinsert5542 = insertelement <32 x i32> poison, i32 %i.iuw, i64 0
  %broadcast.splat5543 = shufflevector <32 x i32> %broadcast.splatinsert5542, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5544

vector.body5544:                                  ; preds = %vector.body.interim5549, %vector.ph5530
  %index5545 = phi i64 [ 0, %vector.ph5530 ], [ %index.next5547, %vector.body.interim5549 ]
  %vec.ind5546 = phi <32 x i32> [ %induction5541, %vector.ph5530 ], [ %vec.ind.next5548, %vector.body.interim5549 ] ; 2 uses
  %i.iux = add <32 x i32> %vec.ind5546, %broadcast.splat5534
  %i.iuy = icmp eq <32 x i32> %broadcast.splat5536, %i.iux
  %i.iuz = freeze <32 x i1> %i.iuy
  %i.iva = bitcast <32 x i1> %i.iuz to i32
  %.not5881 = icmp eq i32 %i.iva, 0
  br i1 %.not5881, label %vector.body.interim5549, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

vector.body.interim5549:                          ; preds = %vector.body5544
  %vec.ind.next5548 = add <32 x i32> %vec.ind5546, %broadcast.splat5543
  %index.next5547 = add nuw i64 %index5545, 32    ; 2 uses
  %i.ivb = icmp eq i64 %index.next5547, %n.vec5532
  br i1 %i.ivb, label %middle.block5550, label %vector.body5544, !llvm.loop !3210

middle.block5550:                                 ; preds = %vector.body.interim5549
  %cmp.n5551 = icmp eq i64 %i.iup, %n.vec5532
  br i1 %cmp.n5551, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph, %middle.block5550
  %.ph6141 = phi i64 [ %i.iup, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph ], [ %i.iur, %middle.block5550 ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373.ph = phi i32 [ %i.iqg, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.lr.ph ], [ %i.iuu, %middle.block5550 ]
  br label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i
  %i.ivc = add nsw i64 %i.ive, -1                 ; 2 uses
  %i.ivd = icmp eq i64 %i.ivc, 0
  br i1 %i.ivd, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i, !llvm.loop !3211

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i
  %i.ive = phi i64 [ %i.ivc, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i ], [ %.ph6141, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373 = phi i32 [ %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i ], [ %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373.ph, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i = add i32 %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i5373, %i.iqe ; 2 uses
  %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i = icmp eq i32 %i.iqh, %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i
  br i1 %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i, !llvm.loop !3207

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2011
  %i.ivf = load ptr, ptr %i.iqm, align 8, !tbaa !331
  %i.ivg = sext i32 %i.iqg to i64
  %i.ivh = sext i32 %i.iqe to i64
  %i.ivi = sext i32 %i.inx to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i2013 = getelementptr [4 x i8], ptr %i.ivf, i64 %i.ivi
  %i.ivj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.ivk = add nsw i64 %i.ivj, -4
  br label %bb.asc

bb.asc:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i2017, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012
  %indvars.iv.i.i.i.i.i.i.i.i.i2014 = phi i64 [ %i.ivg, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i2019, %.critedge.i.i.i.i.i.i.i.i.i2017 ] ; 3 uses
  %.04254.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iqf, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2012 ], [ %.1.i.i.i.i.i.i.i.i.i2018, %.critedge.i.i.i.i.i.i.i.i.i2017 ] ; 5 uses
  %gep.i.i.i.i.i.i.i.i.i2015 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i2013, i64 %indvars.iv.i.i.i.i.i.i.i.i.i2014
  %i.ivl = load i32, ptr %gep.i.i.i.i.i.i.i.i.i2015, align 4, !tbaa !3 ; 2 uses
  %i.ivm = zext i32 %i.ivl to i64                 ; 2 uses
  %i.ivn = lshr i64 %i.ivm, 6
  %i.ivo = getelementptr inbounds nuw [8 x i8], ptr %i.iqk, i64 %i.ivn
  %i.ivp = load i64, ptr %i.ivo, align 8, !tbaa !137
  %i.ivq = and i64 %i.ivm, 63
  %i.ivr = shl nuw i64 1, %i.ivq
  %i.ivs = and i64 %i.ivr, %i.ivp
  %.not.i7.i.i.i.i.i.i.i.i.i.i2016 = icmp eq i64 %i.ivs, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i2016, label %.critedge.i.i.i.i.i.i.i.i.i2017, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i: ; preds = %bb.asc
  %i.ivt = load ptr, ptr %i.iqn, align 8, !tbaa !487
  %i.ivu = sext i32 %i.ivl to i64
  %i.ivv = getelementptr inbounds [16 x i8], ptr %i.ivt, i64 %i.ivu ; 2 uses
  %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ivv, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ivv, i64 8
  %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.ivw = trunc i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  br i1 %.not.i.i25.i.i.i.i.i.i.i.i.i, label %bb.asd, label %.critedge.i.i.i.i.i.i.i.i.i2017

bb.asd:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i
  %i.ivx = icmp ult i32 %i.ivw, 13
  br i1 %i.ivx, label %bb.ase, label %bb.asf

bb.ase:                                           ; preds = %bb.asd
  %i.ivy = icmp samesign ult i32 %i.ivw, 5
  %i.ivz = icmp eq ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i2058 = select i1 %i.ivy, i1 true, i1 %i.ivz
  br i1 %or.cond.i.i.i.i.i.i.i.i.i2058, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i2017

bb.asf:                                           ; preds = %bb.asd
  %i.iwa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i, i64 4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.iwa, ptr nonnull %i.iqq, i64 %i.ivk)
  %i.iwb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iwb, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i2017

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.asf, %bb.ase
  %i.iwc = add nsw i64 %.04254.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.iwd = icmp eq i64 %i.iwc, 0
  br i1 %i.iwd, label %.split.us.i.i.i.i.i.i.i.i.i2049, label %.critedge.i.i.i.i.i.i.i.i.i2017

.split.us.i.i.i.i.i.i.i.i.i2049:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i, %middle.block5550, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i, %middle.block5523
  %.us-phi.in.i.i.i.i.i.i.i.i.i2050 = phi i64 [ %i.itu, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i ], [ %i.iuo, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i ], [ %i.iuo, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i ], [ %i.itu, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i ], [ %i.itu, %middle.block5523 ], [ %indvars.iv118.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i ], [ %i.iuo, %middle.block5550 ], [ %indvars.iv115.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i2014, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.us-phi.i.i.i.i.i.i.i.i.i2051 = trunc i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2050 to i32 ; 2 uses
  %i.iwe = load ptr, ptr %.sroa.12.0..sroa_idx.i1985, align 8, !tbaa !3212, !nonnull !74, !align !275 ; 5 uses
  %i.iwf = shl i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2050, 32
  %sext137.i.i.i.i.i.i.i.i.i = add i64 %i.iwf, 4294967296
  %i.iwg = ashr exact i64 %sext137.i.i.i.i.i.i.i.i.i, 32
  %i.iwh = getelementptr inbounds nuw i8, ptr %i.iwe, i64 144 ; 2 uses
  %i.iwi = load ptr, ptr %i.iwh, align 8, !tbaa !341 ; 2 uses
  %i.iwj = icmp eq ptr %i.iwi, null
  br i1 %i.iwj, label %bb.asg, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052

bb.asg:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i2049
  %i.iwk = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.iwe)
          to label %.noexc19.i.i.i.i.i.i.i.i2056 unwind label %bb.asl ; 0 uses

.noexc19.i.i.i.i.i.i.i.i2056:                     ; preds = %bb.asg
  %.pre.i.i.i.i.i.i.i.i.i.i2057 = load ptr, ptr %i.iwh, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052: ; preds = %.noexc19.i.i.i.i.i.i.i.i2056, %.split.us.i.i.i.i.i.i.i.i.i2049
  %i.iwl = phi ptr [ %i.iwi, %.split.us.i.i.i.i.i.i.i.i.i2049 ], [ %.pre.i.i.i.i.i.i.i.i.i.i2057, %.noexc19.i.i.i.i.i.i.i.i2056 ]
  %i.iwm = getelementptr inbounds [8 x i8], ptr %i.iwl, i64 %i.ipu
  store i64 %i.iwg, ptr %i.iwm, align 8, !tbaa !137
  %i.iwn = getelementptr inbounds nuw i8, ptr %i.iwe, i64 32 ; 2 uses
  %i.iwo = load ptr, ptr %i.iwn, align 8, !tbaa !362
  %.not.i27.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iwo, null
  br i1 %.not.i27.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %bb.ash

bb.ash:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052
  %i.iwp = getelementptr inbounds nuw i8, ptr %i.iwe, i64 56
  %i.iwq = load i32, ptr %i.iwp, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.iwe, i32 noundef %i.iwq, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i2053 unwind label %bb.asl

.noexc20.i.i.i.i.i.i.i.i2053:                     ; preds = %bb.ash
  %i.iwr = load ptr, ptr %i.iwn, align 8, !tbaa !362 ; 2 uses
  %i.iws = getelementptr inbounds nuw i8, ptr %i.iwr, i64 44
  %i.iwt = load i8, ptr %i.iws, align 4, !tbaa !363
  %i.iwu = and i8 %i.iwt, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i2054 = icmp eq i8 %i.iwu, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i2054, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055, label %.invoke.i.i.i.i.i.i.i.i2046, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055: ; preds = %.noexc20.i.i.i.i.i.i.i.i2053
  %i.iwv = getelementptr inbounds nuw i8, ptr %i.iwr, i64 16
  %i.iww = load ptr, ptr %i.iwv, align 8, !tbaa !368
  %i.iwx = lshr i64 %.083.i.i.i.i.i.i.i.i, 3
  %i.iwy = and i64 %i.iwx, 536870911
  %i.iwz = getelementptr inbounds nuw i8, ptr %i.iww, i64 %i.iwy ; 2 uses
  %i.ixa = load i8, ptr %i.iwz, align 1, !tbaa !30
  %i.ixb = trunc i64 %.083.i.i.i.i.i.i.i.i to i8
  %i.ixc = and i8 %i.ixb, 7
  %i.ixd = shl nuw i8 1, %i.ixc
  %i.ixe = or i8 %i.ixa, %i.ixd
  store i8 %i.ixe, ptr %i.iwz, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021

.critedge.i.i.i.i.i.i.i.i.i2017:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i, %bb.asf, %bb.ase, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i, %bb.asc
  %.1.i.i.i.i.i.i.i.i.i2018 = phi i64 [ %.04254.i.i.i.i.i.i.i.i.i, %bb.asf ], [ %i.iwc, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i ], [ %.04254.i.i.i.i.i.i.i.i.i, %bb.ase ], [ %.04254.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i ], [ %.04254.i.i.i.i.i.i.i.i.i, %bb.asc ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i2019 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2014, %i.ivh ; 2 uses
  %i.ixf = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i2019 to i32
  %.not16.i.i.i.i.i.i.i.i.i2020 = icmp eq i32 %i.iqh, %i.ixf
  br i1 %.not16.i.i.i.i.i.i.i.i.i2020, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021, label %bb.asc, !llvm.loop !3207

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021: ; preds = %.critedge.i.i.i.i.i.i.i.i.i2017, %vector.body5544, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i, %vector.body5517, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i, %.critedge.us69.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2066, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059, %bb.arp
  %.052.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i2051, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2052 ], [ %.us-phi.i.i.i.i.i.i.i.i.i2051, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2055 ], [ %i.iqg, %bb.arp ], [ %i.iqh, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i ], [ %i.iqh, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i ], [ %i.iqh, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i ], [ %i.iqh, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2059 ], [ %i.iqh, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i ], [ %i.iqh, %vector.body5544 ], [ %i.iqh, %vector.body5517 ], [ %i.iqh, %.critedge.us69.i.i.i.i.i.i.i.i.i ], [ %i.iqh, %.critedge.us.i.i.i.i.i.i.i.i.i2066 ], [ %i.iqh, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i ], [ %i.iqh, %.critedge.i.i.i.i.i.i.i.i.i2017 ]
  %i.ixg = load ptr, ptr %.sroa.953.0..sroa_idx.i1982, align 8, !tbaa !3204, !nonnull !74, !align !497
  %i.ixh = load i32, ptr %i.ixg, align 4, !tbaa !3
  %i.ixi = icmp eq i32 %.052.i.i.i.i.i.i.i.i.i, %i.ixh
  br i1 %i.ixi, label %bb.asi, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.asi:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2021
  %i.ixj = load ptr, ptr %.sroa.12.0..sroa_idx.i1985, align 8, !tbaa !3212, !nonnull !74, !align !275 ; 5 uses
  %i.ixk = getelementptr inbounds nuw i8, ptr %i.ixj, i64 144 ; 2 uses
  %i.ixl = load ptr, ptr %i.ixk, align 8, !tbaa !341 ; 2 uses
  %i.ixm = icmp eq ptr %i.ixl, null
  br i1 %i.ixm, label %bb.asj, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i

bb.asj:                                           ; preds = %bb.asi
  %i.ixn = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ixj)
          to label %.noexc22.i.i.i.i.i.i.i.i2048 unwind label %bb.asl ; 0 uses

.noexc22.i.i.i.i.i.i.i.i2048:                     ; preds = %bb.asj
  %.pre.i32.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ixk, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i2048, %bb.asi
  %i.ixo = phi ptr [ %i.ixl, %bb.asi ], [ %.pre.i32.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i2048 ]
  %i.ixp = getelementptr inbounds [8 x i8], ptr %i.ixo, i64 %i.ipu
  store i64 0, ptr %i.ixp, align 8, !tbaa !137
  %i.ixq = getelementptr inbounds nuw i8, ptr %i.ixj, i64 32 ; 2 uses
  %i.ixr = load ptr, ptr %i.ixq, align 8, !tbaa !362
  %.not.i29.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ixr, null
  br i1 %.not.i29.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE7ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.ask

bb.ask:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i
  %i.ixs = getelementptr inbounds nuw i8, ptr %i.ixj, i64 56
  %i.ixt = load i32, ptr %i.ixs, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ixj, i32 noundef %i.ixt, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i2045 unwind label %bb.asl

end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.jqp = shl i64 %i.jqm, %i.jqo
  %i.jqq = and i64 %i.jqp, %i.jqj
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %59, i32 noundef %i.jqg, i64 noundef %i.jqq)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.awm:                                           ; preds = %bb.awk
  %.not32.i.i.i.i.i.i.i2247 = icmp eq i32 %i.jpy, %i.jqd
  br i1 %.not32.i.i.i.i.i.i.i2247, label %bb.awo, label %bb.awn

bb.awn:                                           ; preds = %bb.awm
  %i.jqr = sdiv i32 %i.jpy, 64
  %i.jqs = sub nsw i32 %i.jqd, %i.jpy             ; 2 uses
  %i.jqt = zext nneg i32 %i.jqs to i64
  %notmask.i.i35.i.i.i.i.i.i.i2248 = shl nsw i64 -1, %i.jqt
  %i.jqu = xor i64 %notmask.i.i35.i.i.i.i.i.i.i2248, -1
  %i.jqv = sub nsw i32 64, %i.jqs
  %i.jqw = zext nneg i32 %i.jqv to i64
  %i.jqx = shl i64 %i.jqu, %i.jqw
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %59, i32 noundef %i.jqr, i64 noundef %i.jqx)
  br label %bb.awo

bb.awo:                                           ; preds = %bb.awn, %bb.awm
  %i.jqy = add nsw i32 %i.jqd, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i2249 = icmp sgt i32 %i.jqy, %i.jqe
  br i1 %.not3356.i.i.i.i.i.i.i2249, label %._crit_edge.i.i.i.i.i.i.i2253, label %.lr.ph.i.i.i.i.i.i29.i2250

.lr.ph.i.i.i.i.i.i29.i2250:                       ; preds = %bb.awo
  %i.jqz = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.jra = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  br label %bb.awp

._crit_edge.i.i.i.i.i.i.i2253:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.awo
  %.not34.i.i.i.i.i.i.i2254 = icmp eq i32 %i.jqa, %i.jqe
  br i1 %.not34.i.i.i.i.i.i.i2254, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.aze

bb.awp:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i2250
  %i.jrb = phi i32 [ %i.jqy, %.lr.ph.i.i.i.i.i.i29.i2250 ], [ %i.kex, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i2251 = phi i32 [ %i.jqd, %.lr.ph.i.i.i.i.i.i29.i2250 ], [ %i.jrb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.jrc = sdiv i32 %.057.i.i.i.i.i.i.i2251, 64   ; 3 uses
  %i.jrd = sext i32 %i.jrc to i64
  %i.jre = getelementptr inbounds [8 x i8], ptr %i.jpw, i64 %i.jrd
  %i.jrf = load i64, ptr %i.jre, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.jrf, label %.lr.ph.i.i.i.i.i.i.i.i2406 [
    i64 -1, label %bb.awq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i2406:                       ; preds = %bb.awp
  %i.jrg = shl nsw i32 %i.jrc, 6
  br label %bb.ayn

bb.awq:                                           ; preds = %bb.awp
  %i.jrh = shl nsw i32 %i.jrc, 6                  ; 2 uses
  %i.jri = add i32 %i.jrh, 64
  %i.jrj = sext i32 %i.jri to i64
  %.0.off.i.i.i.i.i.i.i2256 = add i32 %.057.i.i.i.i.i.i.i2251, 127
  %.not91.i.i.i.i.i.i.i.i2257 = icmp ult i32 %.0.off.i.i.i.i.i.i.i2256, 64
  br i1 %.not91.i.i.i.i.i.i.i.i2257, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph90.i.i.i.i.i.i.i.i2258

.lr.ph90.i.i.i.i.i.i.i.i2258:                     ; preds = %bb.awq
  %i.jrk = sext i32 %i.jrh to i64
  br label %bb.awr

bb.awr:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph90.i.i.i.i.i.i.i.i2258
  %.083.i.i.i.i.i.i.i.i2259 = phi i64 [ %i.jrk, %.lr.ph90.i.i.i.i.i.i.i.i2258 ], [ %i.kdk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.jrl = load ptr, ptr %63, align 8, !tbaa !3229, !nonnull !74, !align !275
  %i.jrm = load ptr, ptr %i.jrl, align 8, !tbaa !329
  %i.jrn = load ptr, ptr %.sroa.448.0..sroa_idx.i2228, align 8, !tbaa !3231, !nonnull !74, !align !275
  %i.jro = load ptr, ptr %i.jrn, align 8, !tbaa !329 ; 2 uses
  %i.jrp = getelementptr inbounds nuw [4 x i8], ptr %i.jro, i64 %.083.i.i.i.i.i.i.i.i2259
  %i.jrq = load i32, ptr %i.jrp, align 4, !tbaa !3
  %i.jrr = sext i32 %i.jrq to i64
  %i.jrs = getelementptr inbounds [4 x i8], ptr %i.jrm, i64 %i.jrr
  %i.jrt = load i32, ptr %i.jrs, align 4, !tbaa !3 ; 3 uses
  %i.jru = load ptr, ptr %.sroa.549.0..sroa_idx.i2229, align 8, !tbaa !3232, !nonnull !74, !align !275 ; 5 uses
  %i.jrv = trunc i64 %.083.i.i.i.i.i.i.i.i2259 to i32 ; 4 uses
  %i.jrw = getelementptr inbounds nuw i8, ptr %i.jru, i64 16
  %i.jrx = load ptr, ptr %i.jrw, align 8, !tbaa !487
  %i.jry = getelementptr inbounds nuw i8, ptr %i.jru, i64 58
  %i.jrz = load i8, ptr %i.jry, align 2, !tbaa !338, !range !73, !noundef !74
  %i.jsa = trunc nuw i8 %i.jrz to i1
  br i1 %i.jsa, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i2261, label %bb.aws

bb.aws:                                           ; preds = %bb.awr
  %i.jsb = getelementptr inbounds nuw i8, ptr %i.jru, i64 59
  %i.jsc = load i8, ptr %i.jsb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.jsd = trunc nuw i8 %i.jsc to i1
  br i1 %i.jsd, label %bb.awt, label %bb.awu

bb.awt:                                           ; preds = %bb.aws
  %i.jse = getelementptr inbounds nuw i8, ptr %i.jru, i64 64
  %i.jsf = load i32, ptr %i.jse, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i2261

bb.awu:                                           ; preds = %bb.aws
  %i.jsg = getelementptr inbounds nuw i8, ptr %i.jru, i64 8
  %i.jsh = load ptr, ptr %i.jsg, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i2260 = shl i64 %.083.i.i.i.i.i.i.i.i2259, 32
  %i.jsi = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i2260, 30
  %i.jsj = getelementptr inbounds i8, ptr %i.jsh, i64 %i.jsi
  %i.jsk = load i32, ptr %i.jsj, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i2261

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i2261: ; preds = %bb.awu, %bb.awt, %bb.awr
  %.0.i.i.i.i.i.i.i.i.i.i.i2262 = phi i32 [ %i.jsk, %bb.awu ], [ %i.jsf, %bb.awt ], [ %i.jrv, %bb.awr ]
  %i.jsl = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i2262 to i64
  %i.jsm = getelementptr inbounds [16 x i8], ptr %i.jrx, i64 %i.jsl ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263 = load i64, ptr %i.jsm, align 8 ; 8 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i2264 = getelementptr inbounds nuw i8, ptr %i.jsm, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i2264, align 8, !tbaa !30 ; 5 uses
  %i.jsn = load ptr, ptr %.sroa.650.0..sroa_idx.i2230, align 8, !tbaa !3233, !nonnull !74, !align !275 ; 5 uses
  %i.jso = getelementptr inbounds nuw i8, ptr %i.jsn, i64 16
  %i.jsp = load ptr, ptr %i.jso, align 8, !tbaa !487
  %i.jsq = getelementptr inbounds nuw i8, ptr %i.jsn, i64 58
  %i.jsr = load i8, ptr %i.jsq, align 2, !tbaa !338, !range !73, !noundef !74
  %i.jss = trunc nuw i8 %i.jsr to i1
  br i1 %i.jss, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2267, label %bb.awv

bb.awv:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i2261
  %i.jst = getelementptr inbounds nuw i8, ptr %i.jsn, i64 59
  %i.jsu = load i8, ptr %i.jst, align 1, !tbaa !339, !range !73, !noundef !74
  %i.jsv = trunc nuw i8 %i.jsu to i1
  br i1 %i.jsv, label %bb.aww, label %bb.awx

bb.aww:                                           ; preds = %bb.awv
  %i.jsw = getelementptr inbounds nuw i8, ptr %i.jsn, i64 64
  %i.jsx = load i32, ptr %i.jsw, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2267

bb.awx:                                           ; preds = %bb.awv
  %i.jsy = getelementptr inbounds nuw i8, ptr %i.jsn, i64 8
  %i.jsz = load ptr, ptr %i.jsy, align 8, !tbaa !331
  %sext49.i.i.i.i.i.i.i.i.i2266 = shl i64 %.083.i.i.i.i.i.i.i.i2259, 32
  %i.jta = ashr exact i64 %sext49.i.i.i.i.i.i.i.i.i2266, 30
  %i.jtb = getelementptr inbounds i8, ptr %i.jsz, i64 %i.jta
  %i.jtc = load i32, ptr %i.jtb, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2267

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2267: ; preds = %bb.awx, %bb.aww, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i2261
  %.0.i.i17.i.i.i.i.i.i.i.i.i2268 = phi i32 [ %i.jtc, %bb.awx ], [ %i.jsx, %bb.aww ], [ %i.jrv, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i.i.i2261 ]
  %i.jtd = sext i32 %.0.i.i17.i.i.i.i.i.i.i.i.i2268 to i64
  %i.jte = getelementptr inbounds [8 x i8], ptr %i.jsp, i64 %i.jtd
  %i.jtf = load i64, ptr %i.jte, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i30.i2269 = icmp eq i64 %i.jtf, 0
  br i1 %.not.i.i.i.i.i.i.i.i30.i2269, label %bb.awy, label %bb.axb, !prof !48

bb.awy:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2267
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #35, !noalias !3234
  store i64 0, ptr %53, align 16, !tbaa !30, !noalias !3234
  store i32 0, ptr %i.jqz, align 16, !tbaa !30, !alias.scope !3237, !noalias !3234
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %54, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %53)
          to label %.noexc.i.i.i.i.i.i.i.i2402 unwind label %bb.axx

.noexc.i.i.i.i.i.i.i.i2402:                       ; preds = %bb.awy
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35, !noalias !3234
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr nonnull @.str.178) #38
          to label %bb.awz unwind label %bb.axa

bb.awz:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i2402
  unreachable

bb.axa:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i2402
  %i.jtg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.jth = load ptr, ptr %54, align 8, !tbaa !49  ; 2 uses
  %i.jti = icmp eq ptr %i.jth, %i.jra
  br i1 %i.jti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2403: ; preds = %bb.axa
  %i.jtj = load i64, ptr %i.jra, align 8, !tbaa !30
  %i.jtk = add i64 %i.jtj, 1
  call void @_ZdlPvm(ptr noundef %i.jth, i64 noundef %i.jtk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2404: ; preds = %bb.axa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2403
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #35
  br label %.body.i.i.i.i.i.i.i.i2296

bb.axb:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2267
  %i.jtl = load ptr, ptr %.sroa.751.0..sroa_idx.i2231, align 8, !tbaa !3240, !nonnull !74, !align !275
  %i.jtm = load ptr, ptr %i.jtl, align 8, !tbaa !329
  %i.jtn = load ptr, ptr %.sroa.852.0..sroa_idx.i2232, align 8, !tbaa !3241, !nonnull !74, !align !497 ; 2 uses
  %i.jto = load ptr, ptr %.sroa.953.0..sroa_idx.i2233, align 8, !tbaa !3242, !nonnull !74, !align !497 ; 2 uses
  %i.jtp = load ptr, ptr %.sroa.1054.0..sroa_idx.i2234, align 8, !tbaa !3243, !nonnull !74, !align !497
  %sext50.i.i.i.i.i.i.i.i.i2270 = shl i64 %.083.i.i.i.i.i.i.i.i2259, 32
  %i.jtq = ashr exact i64 %sext50.i.i.i.i.i.i.i.i.i2270, 32 ; 3 uses
  %i.jtr = getelementptr inbounds [4 x i8], ptr %i.jro, i64 %i.jtq
  %i.jts = load i32, ptr %i.jtr, align 4, !tbaa !3
  %i.jtt = sext i32 %i.jts to i64
  %i.jtu = getelementptr inbounds [4 x i8], ptr %i.jtm, i64 %i.jtt
  %i.jtv = load i32, ptr %i.jtu, align 4, !tbaa !3 ; 2 uses
  %i.jtw = icmp sgt i64 %i.jtf, 0                 ; 3 uses
  %i.jtx = add nsw i32 %i.jtv, -1
  %i.jty = select i1 %i.jtw, i32 0, i32 %i.jtx
  store i32 %i.jty, ptr %i.jtn, align 4, !tbaa !3
  %i.jtz = select i1 %i.jtw, i32 %i.jtv, i32 -1
  store i32 %i.jtz, ptr %i.jto, align 4, !tbaa !3
  %i.jua = select i1 %i.jtw, i32 1, i32 -1        ; 15 uses
  store i32 %i.jua, ptr %i.jtp, align 4, !tbaa !3
  %i.jub = call noundef i64 @llvm.abs.i64(i64 %i.jtf, i1 true) ; 9 uses
  %i.juc = load i32, ptr %i.jtn, align 4, !tbaa !3 ; 12 uses
  %i.jud = load i32, ptr %i.jto, align 4, !tbaa !3 ; 19 uses
  %.not1653.i.i.i.i.i.i.i.i.i2271 = icmp eq i32 %i.juc, %i.jud
  br i1 %.not1653.i.i.i.i.i.i.i.i.i2271, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %.lr.ph.i.i.i.i.i.i.i.i.i2272

.lr.ph.i.i.i.i.i.i.i.i.i2272:                     ; preds = %bb.axb
  %i.jue = load ptr, ptr %.sroa.11.0..sroa_idx.i2235, align 8, !tbaa !3244, !nonnull !74, !align !275 ; 7 uses
  %i.juf = getelementptr inbounds nuw i8, ptr %i.jue, i64 24
  %i.jug = load ptr, ptr %i.juf, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i2273 = icmp eq ptr %i.jug, null
  %i.juh = getelementptr inbounds nuw i8, ptr %i.jue, i64 59 ; 3 uses
  %i.jui = getelementptr inbounds nuw i8, ptr %i.jue, i64 8 ; 3 uses
  %i.juj = getelementptr inbounds nuw i8, ptr %i.jue, i64 16 ; 4 uses
  %i.juk = getelementptr inbounds nuw i8, ptr %i.jue, i64 58
  %i.jul = getelementptr inbounds nuw i8, ptr %i.jue, i64 64 ; 3 uses
  %i.jum = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265, i64 4 ; 4 uses
  %i.jun = load i8, ptr %i.juk, align 2, !tbaa !338, !range !73, !noundef !74
  %i.juo = trunc nuw i8 %i.jun to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2273, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2385, label %.lr.ph.split.i.i.i.i.i.i.i.i.i2274

.lr.ph.split.us.i.i.i.i.i.i.i.i.i2385:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2272
  %i.jup = load ptr, ptr %i.juj, align 8, !tbaa !487
  %i.juq = sext i32 %i.juc to i64
  %i.jur = sext i32 %i.jua to i64
  %i.jus = sext i32 %i.jrt to i64
  %i.jut = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263, 4294967295
  %i.juu = add nsw i64 %i.jut, -4
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i2395, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2385
  %indvars.iv118.i.i.i.i.i.i.i.i.i2387 = phi i64 [ %indvars.iv.next119.i.i.i.i.i.i.i.i.i2397, %.critedge.us.i.i.i.i.i.i.i.i.i2395 ], [ %i.juq, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2385 ] ; 3 uses
  %.04254.us.i.i.i.i.i.i.i.i.i2388 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i2396, %.critedge.us.i.i.i.i.i.i.i.i.i2395 ], [ %i.jub, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2385 ] ; 4 uses
  %i.juv = add nsw i64 %indvars.iv118.i.i.i.i.i.i.i.i.i2387, %i.jus ; 2 uses
  %i.juw = trunc nsw i64 %i.juv to i32
  br i1 %i.juo, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389, label %bb.axc

bb.axc:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386
  %i.jux = load i8, ptr %i.juh, align 1, !tbaa !339, !range !73, !noundef !74
  %i.juy = trunc nuw i8 %i.jux to i1
  br i1 %i.juy, label %bb.axe, label %bb.axd

bb.axd:                                           ; preds = %bb.axc
  %i.juz = load ptr, ptr %i.jui, align 8, !tbaa !331
  %i.jva = getelementptr inbounds [4 x i8], ptr %i.juz, i64 %i.juv
  %i.jvb = load i32, ptr %i.jva, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389

bb.axe:                                           ; preds = %bb.axc
  %i.jvc = load i32, ptr %i.jul, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389: ; preds = %bb.axe, %bb.axd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386
  %.0.i.i18.us.i.i.i.i.i.i.i.i.i2390 = phi i32 [ %i.jvb, %bb.axd ], [ %i.jvc, %bb.axe ], [ %i.juw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386 ]
  %i.jvd = sext i32 %.0.i.i18.us.i.i.i.i.i.i.i.i.i2390 to i64
  %i.jve = getelementptr inbounds [16 x i8], ptr %i.jup, i64 %i.jvd ; 2 uses
  %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i2391 = load i64, ptr %i.jve, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i2392 = getelementptr inbounds nuw i8, ptr %i.jve, i64 8
  %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i2393 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us.i.i.i.i.i.i.i.i.i2392, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us.i.i.i.i.i.i.i.i.i2394 = icmp eq i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i2391, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jvf = trunc i64 %.sroa.0.0.copyload.i19.us.i.i.i.i.i.i.i.i.i2391 to i32 ; 2 uses
  br i1 %.not.i.i25.us.i.i.i.i.i.i.i.i.i2394, label %bb.axf, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

bb.axf:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389
  %i.jvg = icmp ult i32 %i.jvf, 13
  br i1 %i.jvg, label %bb.axh, label %bb.axg

bb.axg:                                           ; preds = %bb.axf
  %i.jvh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i2393, i64 4
  %bcmp.i.i.us.i.i.i.i.i.i.i.i.i2399 = call i32 @bcmp(ptr nonnull %i.jvh, ptr nonnull %i.jum, i64 %i.juu)
  %i.jvi = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i.i.i.i.i2399, 0
  br i1 %i.jvi, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

bb.axh:                                           ; preds = %bb.axf
  %i.jvj = icmp samesign ult i32 %i.jvf, 5
  %i.jvk = icmp eq ptr %.sroa.2.0.copyload.i21.us.i.i.i.i.i.i.i.i.i2393, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.us.i.i.i.i.i.i.i.i.i2401 = select i1 %i.jvj, i1 true, i1 %i.jvk
  br i1 %or.cond.us.i.i.i.i.i.i.i.i.i2401, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400: ; preds = %bb.axh, %bb.axg
  %i.jvl = add nsw i64 %.04254.us.i.i.i.i.i.i.i.i.i2388, -1 ; 2 uses
  %i.jvm = icmp eq i64 %i.jvl, 0
  br i1 %i.jvm, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us.i.i.i.i.i.i.i.i.i2395

.critedge.us.i.i.i.i.i.i.i.i.i2395:               ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, %bb.axh, %bb.axg, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389
  %.1.us.i.i.i.i.i.i.i.i.i2396 = phi i64 [ %.04254.us.i.i.i.i.i.i.i.i.i2388, %bb.axg ], [ %i.jvl, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400 ], [ %.04254.us.i.i.i.i.i.i.i.i.i2388, %bb.axh ], [ %.04254.us.i.i.i.i.i.i.i.i.i2388, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us.i.i.i.i.i.i.i.i.i2389 ]
  %indvars.iv.next119.i.i.i.i.i.i.i.i.i2397 = add nsw i64 %indvars.iv118.i.i.i.i.i.i.i.i.i2387, %i.jur ; 2 uses
  %i.jvn = trunc nsw i64 %indvars.iv.next119.i.i.i.i.i.i.i.i.i2397 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i2398 = icmp eq i32 %i.jud, %i.jvn
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i2398, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2386, !llvm.loop !3245

.lr.ph.split.i.i.i.i.i.i.i.i.i2274:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2272
  %i.jvo = getelementptr inbounds nuw i8, ptr %i.jue, i64 57
  %i.jvp = load i8, ptr %i.jvo, align 1, !range !73
  %i.jvq = trunc nuw i8 %i.jvp to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i2275 = select i1 %i.juo, i1 true, i1 %i.jvq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i2275, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2274
  %i.jvr = sext i32 %i.juc to i64
  %i.jvs = sext i32 %i.jua to i64
  %i.jvt = sext i32 %i.jrt to i64
  %i.jvu = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263, 4294967295
  %i.jvv = add nsw i64 %i.jvu, -4
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367:      ; preds = %.critedge.us69.i.i.i.i.i.i.i.i.i2378, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366
  %indvars.iv115.i.i.i.i.i.i.i.i.i2368 = phi i64 [ %i.jvr, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366 ], [ %indvars.iv.next116.i.i.i.i.i.i.i.i.i2380, %.critedge.us69.i.i.i.i.i.i.i.i.i2378 ] ; 3 uses
  %.04254.us58.i.i.i.i.i.i.i.i.i2369 = phi i64 [ %i.jub, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2366 ], [ %.1.us70.i.i.i.i.i.i.i.i.i2379, %.critedge.us69.i.i.i.i.i.i.i.i.i2378 ] ; 5 uses
  %i.jvw = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i2368, %i.jvt ; 4 uses
  %i.jvx = lshr i64 %i.jvw, 6
  %i.jvy = and i64 %i.jvx, 67108863
  %i.jvz = getelementptr inbounds nuw [8 x i8], ptr %i.jug, i64 %i.jvy
  %i.jwa = load i64, ptr %i.jvz, align 8, !tbaa !137
  %i.jwb = and i64 %i.jvw, 63
  %i.jwc = shl nuw i64 1, %i.jwb
  %i.jwd = and i64 %i.jwc, %i.jwa
  %.not.i.i.us.i.i.i.i.i.i.i.i.i2370 = icmp eq i64 %i.jwd, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i2370, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367
  %i.jwe = trunc nsw i64 %i.jvw to i32
  %i.jwf = load ptr, ptr %i.juj, align 8, !tbaa !487
  br i1 %i.juo, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372, label %bb.axi

bb.axi:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371
  %i.jwg = load i8, ptr %i.juh, align 1, !tbaa !339, !range !73, !noundef !74
  %i.jwh = trunc nuw i8 %i.jwg to i1
  br i1 %i.jwh, label %bb.axk, label %bb.axj

bb.axj:                                           ; preds = %bb.axi
  %i.jwi = load ptr, ptr %i.jui, align 8, !tbaa !331
  %i.jwj = getelementptr inbounds [4 x i8], ptr %i.jwi, i64 %i.jvw
  %i.jwk = load i32, ptr %i.jwj, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372

bb.axk:                                           ; preds = %bb.axi
  %i.jwl = load i32, ptr %i.jul, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372: ; preds = %bb.axk, %bb.axj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371
  %.0.i.i18.us61.i.i.i.i.i.i.i.i.i2373 = phi i32 [ %i.jwk, %bb.axj ], [ %i.jwl, %bb.axk ], [ %i.jwe, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us59.i.i.i.i.i.i.i.i.i2371 ]
  %i.jwm = sext i32 %.0.i.i18.us61.i.i.i.i.i.i.i.i.i2373 to i64
  %i.jwn = getelementptr inbounds [16 x i8], ptr %i.jwf, i64 %i.jwm ; 2 uses
  %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i2374 = load i64, ptr %i.jwn, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i2375 = getelementptr inbounds nuw i8, ptr %i.jwn, i64 8
  %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i2376 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us63.i.i.i.i.i.i.i.i.i2375, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us65.i.i.i.i.i.i.i.i.i2377 = icmp eq i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i2374, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jwo = trunc i64 %.sroa.0.0.copyload.i19.us62.i.i.i.i.i.i.i.i.i2374 to i32 ; 2 uses
  br i1 %.not.i.i25.us65.i.i.i.i.i.i.i.i.i2377, label %bb.axl, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

bb.axl:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372
  %i.jwp = icmp ult i32 %i.jwo, 13
  br i1 %i.jwp, label %bb.axn, label %bb.axm

bb.axm:                                           ; preds = %bb.axl
  %i.jwq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i2376, i64 4
  %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i2382 = call i32 @bcmp(ptr nonnull %i.jwq, ptr nonnull %i.jum, i64 %i.jvv)
  %i.jwr = icmp eq i32 %bcmp.i.i.us66.i.i.i.i.i.i.i.i.i2382, 0
  br i1 %i.jwr, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

bb.axn:                                           ; preds = %bb.axl
  %i.jws = icmp samesign ult i32 %i.jwo, 5
  %i.jwt = icmp eq ptr %.sroa.2.0.copyload.i21.us64.i.i.i.i.i.i.i.i.i2376, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.us67.i.i.i.i.i.i.i.i.i2384 = select i1 %i.jws, i1 true, i1 %i.jwt
  br i1 %or.cond.us67.i.i.i.i.i.i.i.i.i2384, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383: ; preds = %bb.axn, %bb.axm
  %i.jwu = add nsw i64 %.04254.us58.i.i.i.i.i.i.i.i.i2369, -1 ; 2 uses
  %i.jwv = icmp eq i64 %i.jwu, 0
  br i1 %i.jwv, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us69.i.i.i.i.i.i.i.i.i2378

.critedge.us69.i.i.i.i.i.i.i.i.i2378:             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, %bb.axn, %bb.axm, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367
  %.1.us70.i.i.i.i.i.i.i.i.i2379 = phi i64 [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %bb.axm ], [ %i.jwu, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383 ], [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %bb.axn ], [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367 ], [ %.04254.us58.i.i.i.i.i.i.i.i.i2369, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us60.i.i.i.i.i.i.i.i.i2372 ]
  %indvars.iv.next116.i.i.i.i.i.i.i.i.i2380 = add nsw i64 %indvars.iv115.i.i.i.i.i.i.i.i.i2368, %i.jvs ; 2 uses
  %i.jww = trunc nsw i64 %indvars.iv.next116.i.i.i.i.i.i.i.i.i2380 to i32
  %.not16.us71.i.i.i.i.i.i.i.i.i2381 = icmp eq i32 %i.jud, %i.jww
  br i1 %.not16.us71.i.i.i.i.i.i.i.i.i2381, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2367, !llvm.loop !3245

.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2274
  %i.jwx = load i8, ptr %i.juh, align 1, !tbaa !339, !range !73, !noundef !74
  %i.jwy = trunc nuw i8 %i.jwx to i1
  br i1 %i.jwy, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276
  %i.jwz = load i64, ptr %i.jug, align 8, !tbaa !137
  %i.jxa = and i64 %i.jwz, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i2341 = icmp eq i64 %i.jxa, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i2341, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342

.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340
  %i.jxb = load ptr, ptr %i.juj, align 8, !tbaa !487
  %i.jxc = zext i32 %i.juc to i64                 ; 2 uses
  %i.jxd = zext i32 %i.jua to i64                 ; 2 uses
  %i.jxe = load i32, ptr %i.jul, align 8, !tbaa !488
  %i.jxf = sext i32 %i.jxe to i64
  %i.jxg = getelementptr inbounds [16 x i8], ptr %i.jxb, i64 %i.jxf ; 2 uses
  %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i2343 = load i64, ptr %i.jxg, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i2344 = getelementptr inbounds nuw i8, ptr %i.jxg, i64 8
  %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i2345 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.us82.i.i.i.i.i.i.i.i.i2344, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.us84.i.i.i.i.i.i.i.i.i2346 = icmp eq i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i2343, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jxh = trunc i64 %.sroa.0.0.copyload.i19.us81.i.i.i.i.i.i.i.i.i2343 to i32 ; 2 uses
  %i.jxi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i2345, i64 4
  %i.jxj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263, 4294967295
  %i.jxk = add nsw i64 %i.jxj, -4
  %i.jxl = icmp samesign ult i32 %i.jxh, 5
  %i.jxm = icmp eq ptr %.sroa.2.0.copyload.i21.us83.i.i.i.i.i.i.i.i.i2345, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.us86.i.i.i.i.i.i.i.i.i2347 = select i1 %i.jxl, i1 true, i1 %i.jxm
  br i1 %.not.i.i25.us84.i.i.i.i.i.i.i.i.i2346, label %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348: ; preds = %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342
  %i.jxn = icmp ult i32 %i.jxh, 13
  br i1 %i.jxn, label %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358, label %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349

.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348
  br i1 %or.cond.us86.i.i.i.i.i.i.i.i.i2347, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358
  %i.jxo = add nsw i64 %i.jub, -1
  %i.jxp = mul i64 %i.jxo, %i.jxd
  %i.jxq = add i64 %i.jxp, %i.jxc                 ; 3 uses
  %i.jxr = add nsw i64 %i.jub, -1                 ; 5 uses
  %i.jxs = icmp eq i64 %i.jxr, 0
  br i1 %i.jxs, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359
  %min.iters.check5448 = icmp samesign ult i64 %i.jub, 33
  br i1 %min.iters.check5448, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader, label %vector.ph5449

vector.ph5449:                                    ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph
  %n.vec5451 = and i64 %i.jxr, -32                ; 3 uses
  %i.jxt = and i64 %i.jxr, 31
  %i.jxu = trunc i64 %n.vec5451 to i32
  %i.jxv = mul i32 %i.jua, %i.jxu
  %i.jxw = add i32 %i.juc, %i.jxv
  %broadcast.splatinsert5452.a = insertelement <32 x i32> poison, i32 %i.jua, i64 0
  %broadcast.splat5453.a = shufflevector <32 x i32> %broadcast.splatinsert5452.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5454.a = insertelement <32 x i32> poison, i32 %i.jud, i64 0
  %broadcast.splat5455.a = shufflevector <32 x i32> %broadcast.splatinsert5454.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5456 = insertelement <32 x i32> poison, i32 %i.juc, i64 0
  %broadcast.splat5457 = shufflevector <32 x i32> %broadcast.splatinsert5456, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5458 = insertelement <32 x i32> poison, i32 %i.jua, i64 0
  %broadcast.splat5459 = shufflevector <32 x i32> %broadcast.splatinsert5458, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.jxx = mul <32 x i32> %broadcast.splat5459, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5460 = add <32 x i32> %broadcast.splat5457, %i.jxx
  %i.jxy = shl nsw i32 %i.jua, 5
  %broadcast.splatinsert5461 = insertelement <32 x i32> poison, i32 %i.jxy, i64 0
  %broadcast.splat5462 = shufflevector <32 x i32> %broadcast.splatinsert5461, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5463

vector.body5463:                                  ; preds = %vector.body.interim5468, %vector.ph5449
  %index5464 = phi i64 [ 0, %vector.ph5449 ], [ %index.next5466, %vector.body.interim5468 ]
  %vec.ind5465 = phi <32 x i32> [ %induction5460, %vector.ph5449 ], [ %vec.ind.next5467, %vector.body.interim5468 ] ; 2 uses
  %i.jxz = add <32 x i32> %vec.ind5465, %broadcast.splat5453.a
  %i.jya = icmp eq <32 x i32> %broadcast.splat5455.a, %i.jxz
  %i.jyb = freeze <32 x i1> %i.jya
  %i.jyc = bitcast <32 x i1> %i.jyb to i32
  %.not5880 = icmp eq i32 %i.jyc, 0
  br i1 %.not5880, label %vector.body.interim5468, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

vector.body.interim5468:                          ; preds = %vector.body5463
  %vec.ind.next5467 = add <32 x i32> %vec.ind5465, %broadcast.splat5462
  %index.next5466 = add nuw i64 %index5464, 32    ; 2 uses
  %i.jyd = icmp eq i64 %index.next5466, %n.vec5451
  br i1 %i.jyd, label %middle.block5469, label %vector.body5463, !llvm.loop !3246

middle.block5469:                                 ; preds = %vector.body.interim5468
  %cmp.n5470 = icmp eq i64 %i.jxr, %n.vec5451
  br i1 %cmp.n5470, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph, %middle.block5469
  %.ph6170 = phi i64 [ %i.jxr, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph ], [ %i.jxt, %middle.block5469 ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366.ph = phi i32 [ %i.juc, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.lr.ph ], [ %i.jxw, %middle.block5469 ]
  br label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360: ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363
  %i.jye = add nsw i64 %i.jyg, -1                 ; 2 uses
  %i.jyf = icmp eq i64 %i.jye, 0
  br i1 %i.jyf, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363, !llvm.loop !3247

.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363:    ; preds = %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360
  %i.jyg = phi i64 [ %i.jye, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360 ], [ %.ph6170, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader ]
  %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366 = phi i32 [ %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i2364, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360 ], [ %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366.ph, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363.preheader ]
  %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i2364 = add i32 %indvars.iv112.i.us.us.us.i.i.i.i.i.i.i.i23615366, %i.jua ; 2 uses
  %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i2365 = icmp eq i32 %i.jud, %indvars.iv.next113.i.us.us.us.i.i.i.i.i.i.i.i2364
  br i1 %.not16.us90.i.us.us.us.i.i.i.i.i.i.i.i2365, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360, !llvm.loop !3245

.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.i.i.i.i.i.i.i.i2348
  %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i2350 = call i32 @bcmp(ptr nonnull %i.jxi, ptr nonnull %i.jum, i64 %i.jxk)
  %i.jyh = icmp eq i32 %bcmp.i.i.us85.i.us.i.i.i.i.i.i.i.i2350, 0
  br i1 %i.jyh, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351: ; preds = %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349
  %i.jyi = add nsw i64 %i.jub, -1
  %i.jyj = mul i64 %i.jyi, %i.jxd
  %i.jyk = add i64 %i.jyj, %i.jxc                 ; 3 uses
  %i.jyl = add nsw i64 %i.jub, -1                 ; 5 uses
  %i.jym = icmp eq i64 %i.jyl, 0
  br i1 %i.jym, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351
  %min.iters.check5475 = icmp samesign ult i64 %i.jub, 33
  br i1 %min.iters.check5475, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader, label %vector.ph5476

vector.ph5476:                                    ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph
  %n.vec5478 = and i64 %i.jyl, -32                ; 3 uses
  %i.jyn = and i64 %i.jyl, 31
  %i.jyo = trunc i64 %n.vec5478 to i32
  %i.jyp = mul i32 %i.jua, %i.jyo
  %i.jyq = add i32 %i.juc, %i.jyp
  %broadcast.splatinsert5479.a = insertelement <32 x i32> poison, i32 %i.jua, i64 0
  %broadcast.splat5480.a = shufflevector <32 x i32> %broadcast.splatinsert5479.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5481 = insertelement <32 x i32> poison, i32 %i.jud, i64 0
  %broadcast.splat5482 = shufflevector <32 x i32> %broadcast.splatinsert5481, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5483 = insertelement <32 x i32> poison, i32 %i.juc, i64 0
  %broadcast.splat5484 = shufflevector <32 x i32> %broadcast.splatinsert5483, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5485 = insertelement <32 x i32> poison, i32 %i.jua, i64 0
  %broadcast.splat5486 = shufflevector <32 x i32> %broadcast.splatinsert5485, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.jyr = mul <32 x i32> %broadcast.splat5486, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5487 = add <32 x i32> %broadcast.splat5484, %i.jyr
  %i.jys = shl nsw i32 %i.jua, 5
  %broadcast.splatinsert5488 = insertelement <32 x i32> poison, i32 %i.jys, i64 0
  %broadcast.splat5489 = shufflevector <32 x i32> %broadcast.splatinsert5488, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5490

vector.body5490:                                  ; preds = %vector.body.interim5495, %vector.ph5476
  %index5491 = phi i64 [ 0, %vector.ph5476 ], [ %index.next5493, %vector.body.interim5495 ]
  %vec.ind5492 = phi <32 x i32> [ %induction5487, %vector.ph5476 ], [ %vec.ind.next5494, %vector.body.interim5495 ] ; 2 uses
  %i.jyt = add <32 x i32> %vec.ind5492, %broadcast.splat5480.a
  %i.jyu = icmp eq <32 x i32> %broadcast.splat5482, %i.jyt
  %i.jyv = freeze <32 x i1> %i.jyu
  %i.jyw = bitcast <32 x i1> %i.jyv to i32
  %.not5879 = icmp eq i32 %i.jyw, 0
  br i1 %.not5879, label %vector.body.interim5495, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

vector.body.interim5495:                          ; preds = %vector.body5490
  %vec.ind.next5494 = add <32 x i32> %vec.ind5492, %broadcast.splat5489
  %index.next5493 = add nuw i64 %index5491, 32    ; 2 uses
  %i.jyx = icmp eq i64 %index.next5493, %n.vec5478
  br i1 %i.jyx, label %middle.block5496, label %vector.body5490, !llvm.loop !3248

middle.block5496:                                 ; preds = %vector.body.interim5495
  %cmp.n5497 = icmp eq i64 %i.jyl, %n.vec5478
  br i1 %cmp.n5497, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph, %middle.block5496
  %.ph6174 = phi i64 [ %i.jyl, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph ], [ %i.jyn, %middle.block5496 ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365.ph = phi i32 [ %i.juc, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.lr.ph ], [ %i.jyq, %middle.block5496 ]
  br label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352: ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355
  %i.jyy = add nsw i64 %i.jza, -1                 ; 2 uses
  %i.jyz = icmp eq i64 %i.jyy, 0
  br i1 %i.jyz, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355, !llvm.loop !3249

.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355:     ; preds = %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352
  %i.jza = phi i64 [ %i.jyy, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352 ], [ %.ph6174, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader ]
  %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365 = phi i32 [ %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i2356, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352 ], [ %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365.ph, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355.preheader ]
  %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i2356 = add i32 %indvars.iv112.i.us.us73.i.i.i.i.i.i.i.i23535365, %i.jua ; 2 uses
  %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i2357 = icmp eq i32 %i.jud, %indvars.iv.next113.i.us.us78.i.i.i.i.i.i.i.i2356
  br i1 %.not16.us90.i.us.us79.i.i.i.i.i.i.i.i2357, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352, !llvm.loop !3245

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2276
  %i.jzb = load ptr, ptr %i.jui, align 8, !tbaa !331
  %i.jzc = sext i32 %i.juc to i64
  %i.jzd = sext i32 %i.jua to i64
  %i.jze = sext i32 %i.jrt to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i2278 = getelementptr [4 x i8], ptr %i.jzb, i64 %i.jze
  %i.jzf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263, 4294967295
  %i.jzg = add nsw i64 %i.jzf, -4
  br label %bb.axo

bb.axo:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i2288, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277
  %indvars.iv.i.i.i.i.i.i.i.i.i2279 = phi i64 [ %i.jzc, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i2290, %.critedge.i.i.i.i.i.i.i.i.i2288 ] ; 3 uses
  %.04254.i.i.i.i.i.i.i.i.i2280 = phi i64 [ %i.jub, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2277 ], [ %.1.i.i.i.i.i.i.i.i.i2289, %.critedge.i.i.i.i.i.i.i.i.i2288 ] ; 5 uses
  %gep.i.i.i.i.i.i.i.i.i2281 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i2278, i64 %indvars.iv.i.i.i.i.i.i.i.i.i2279
  %i.jzh = load i32, ptr %gep.i.i.i.i.i.i.i.i.i2281, align 4, !tbaa !3 ; 2 uses
  %i.jzi = zext i32 %i.jzh to i64                 ; 2 uses
  %i.jzj = lshr i64 %i.jzi, 6
  %i.jzk = getelementptr inbounds nuw [8 x i8], ptr %i.jug, i64 %i.jzj
  %i.jzl = load i64, ptr %i.jzk, align 8, !tbaa !137
  %i.jzm = and i64 %i.jzi, 63
  %i.jzn = shl nuw i64 1, %i.jzm
  %i.jzo = and i64 %i.jzn, %i.jzl
  %.not.i7.i.i.i.i.i.i.i.i.i.i2282 = icmp eq i64 %i.jzo, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i2282, label %.critedge.i.i.i.i.i.i.i.i.i2288, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283: ; preds = %bb.axo
  %i.jzp = load ptr, ptr %i.juj, align 8, !tbaa !487
  %i.jzq = sext i32 %i.jzh to i64
  %i.jzr = getelementptr inbounds [16 x i8], ptr %i.jzp, i64 %i.jzq ; 2 uses
  %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i2284 = load i64, ptr %i.jzr, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i2285 = getelementptr inbounds nuw i8, ptr %i.jzr, i64 8
  %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i2286 = load ptr, ptr %.sroa.2.0..sroa_idx.i20.i.i.i.i.i.i.i.i.i2285, align 8, !tbaa !30 ; 2 uses
  %.not.i.i25.i.i.i.i.i.i.i.i.i2287 = icmp eq i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i2284, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2263
  %i.jzs = trunc i64 %.sroa.0.0.copyload.i19.i.i.i.i.i.i.i.i.i2284 to i32 ; 2 uses
  br i1 %.not.i.i25.i.i.i.i.i.i.i.i.i2287, label %bb.axp, label %.critedge.i.i.i.i.i.i.i.i.i2288

bb.axp:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283
  %i.jzt = icmp ult i32 %i.jzs, 13
  br i1 %i.jzt, label %bb.axq, label %bb.axr

bb.axq:                                           ; preds = %bb.axp
  %i.jzu = icmp samesign ult i32 %i.jzs, 5
  %i.jzv = icmp eq ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i2286, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2265
  %or.cond.i.i.i.i.i.i.i.i.i2339 = select i1 %i.jzu, i1 true, i1 %i.jzv
  br i1 %or.cond.i.i.i.i.i.i.i.i.i2339, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, label %.critedge.i.i.i.i.i.i.i.i.i2288

bb.axr:                                           ; preds = %bb.axp
  %i.jzw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i21.i.i.i.i.i.i.i.i.i2286, i64 4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i2326 = call i32 @bcmp(ptr nonnull %i.jzw, ptr nonnull %i.jum, i64 %i.jzg)
  %i.jzx = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i2326, 0
  br i1 %i.jzx, label %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, label %.critedge.i.i.i.i.i.i.i.i.i2288

_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327: ; preds = %bb.axr, %bb.axq
  %i.jzy = add nsw i64 %.04254.i.i.i.i.i.i.i.i.i2280, -1 ; 2 uses
  %i.jzz = icmp eq i64 %i.jzy, 0
  br i1 %i.jzz, label %.split.us.i.i.i.i.i.i.i.i.i2328, label %.critedge.i.i.i.i.i.i.i.i.i2288

.split.us.i.i.i.i.i.i.i.i.i2328:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351, %middle.block5496, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359, %middle.block5469
  %.us-phi.in.i.i.i.i.i.i.i.i.i2329 = phi i64 [ %i.jxq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.preheader.i.i.i.i.i.i.i.i2359 ], [ %i.jyk, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.preheader.i.i.i.i.i.i.i.i2351 ], [ %i.jyk, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us72.i.i.i.i.i.i.i.i2352 ], [ %i.jxq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.us79.i.us.us.us.i.i.i.i.i.i.i.i2360 ], [ %i.jxq, %middle.block5469 ], [ %indvars.iv118.i.i.i.i.i.i.i.i.i2387, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us.i.i.i.i.i.i.i.i.i2400 ], [ %i.jyk, %middle.block5496 ], [ %indvars.iv115.i.i.i.i.i.i.i.i.i2368, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.us68.i.i.i.i.i.i.i.i.i2383 ], [ %indvars.iv.i.i.i.i.i.i.i.i.i2279, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327 ] ; 2 uses
  %.us-phi.i.i.i.i.i.i.i.i.i2330 = trunc i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2329 to i32 ; 2 uses
  %i.kaa = load ptr, ptr %.sroa.12.0..sroa_idx.i2236, align 8, !tbaa !3250, !nonnull !74, !align !275 ; 5 uses
  %i.kab = shl i64 %.us-phi.in.i.i.i.i.i.i.i.i.i2329, 32
  %sext137.i.i.i.i.i.i.i.i.i2331 = add i64 %i.kab, 4294967296
  %i.kac = ashr exact i64 %sext137.i.i.i.i.i.i.i.i.i2331, 32
  %i.kad = getelementptr inbounds nuw i8, ptr %i.kaa, i64 144 ; 2 uses
  %i.kae = load ptr, ptr %i.kad, align 8, !tbaa !341 ; 2 uses
  %i.kaf = icmp eq ptr %i.kae, null
  br i1 %i.kaf, label %bb.axs, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332

bb.axs:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i2328
  %i.kag = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.kaa)
          to label %.noexc19.i.i.i.i.i.i.i.i2337 unwind label %bb.axx ; 0 uses

.noexc19.i.i.i.i.i.i.i.i2337:                     ; preds = %bb.axs
  %.pre.i.i.i.i.i.i.i.i.i.i2338 = load ptr, ptr %i.kad, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332: ; preds = %.noexc19.i.i.i.i.i.i.i.i2337, %.split.us.i.i.i.i.i.i.i.i.i2328
  %i.kah = phi ptr [ %i.kae, %.split.us.i.i.i.i.i.i.i.i.i2328 ], [ %.pre.i.i.i.i.i.i.i.i.i.i2338, %.noexc19.i.i.i.i.i.i.i.i2337 ]
  %i.kai = getelementptr inbounds [8 x i8], ptr %i.kah, i64 %i.jtq
  store i64 %i.kac, ptr %i.kai, align 8, !tbaa !137
  %i.kaj = getelementptr inbounds nuw i8, ptr %i.kaa, i64 32 ; 2 uses
  %i.kak = load ptr, ptr %i.kaj, align 8, !tbaa !362
  %.not.i27.i.i.i.i.i.i.i.i.i2333 = icmp eq ptr %i.kak, null
  br i1 %.not.i27.i.i.i.i.i.i.i.i.i2333, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %bb.axt

bb.axt:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332
  %i.kal = getelementptr inbounds nuw i8, ptr %i.kaa, i64 56
  %i.kam = load i32, ptr %i.kal, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.kaa, i32 noundef %i.kam, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i2334 unwind label %bb.axx

.noexc20.i.i.i.i.i.i.i.i2334:                     ; preds = %bb.axt
  %i.kan = load ptr, ptr %i.kaj, align 8, !tbaa !362 ; 2 uses
  %i.kao = getelementptr inbounds nuw i8, ptr %i.kan, i64 44
  %i.kap = load i8, ptr %i.kao, align 4, !tbaa !363
  %i.kaq = and i8 %i.kap, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i2335 = icmp eq i8 %i.kaq, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i2335, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336, label %.invoke.i.i.i.i.i.i.i.i2321, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336: ; preds = %.noexc20.i.i.i.i.i.i.i.i2334
  %i.kar = getelementptr inbounds nuw i8, ptr %i.kan, i64 16
  %i.kas = load ptr, ptr %i.kar, align 8, !tbaa !368
  %i.kat = lshr i64 %.083.i.i.i.i.i.i.i.i2259, 3
  %i.kau = and i64 %i.kat, 536870911
  %i.kav = getelementptr inbounds nuw i8, ptr %i.kas, i64 %i.kau ; 2 uses
  %i.kaw = load i8, ptr %i.kav, align 1, !tbaa !30
  %i.kax = trunc i64 %.083.i.i.i.i.i.i.i.i2259 to i8
  %i.kay = and i8 %i.kax, 7
  %i.kaz = shl nuw i8 1, %i.kay
  %i.kba = or i8 %i.kaw, %i.kaz
  store i8 %i.kba, ptr %i.kav, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292

.critedge.i.i.i.i.i.i.i.i.i2288:                  ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327, %bb.axr, %bb.axq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283, %bb.axo
  %.1.i.i.i.i.i.i.i.i.i2289 = phi i64 [ %.04254.i.i.i.i.i.i.i.i.i2280, %bb.axr ], [ %i.jzy, %_ZN8facebook5velox9functions12_GLOBAL__N_116isPrimitiveEqualINS0_10StringViewEEEbRKT_S7_.exit.thread.i.i.i.i.i.i.i.i.i2327 ], [ %.04254.i.i.i.i.i.i.i.i.i2280, %bb.axq ], [ %.04254.i.i.i.i.i.i.i.i.i2280, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit24.i.i.i.i.i.i.i.i.i2283 ], [ %.04254.i.i.i.i.i.i.i.i.i2280, %bb.axo ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i2290 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2279, %i.jzd ; 2 uses
  %i.kbb = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i2290 to i32
  %.not16.i.i.i.i.i.i.i.i.i2291 = icmp eq i32 %i.jud, %i.kbb
  br i1 %.not16.i.i.i.i.i.i.i.i.i2291, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292, label %bb.axo, !llvm.loop !3245

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292: ; preds = %.critedge.i.i.i.i.i.i.i.i.i2288, %vector.body5490, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355, %vector.body5463, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363, %.critedge.us69.i.i.i.i.i.i.i.i.i2378, %.critedge.us.i.i.i.i.i.i.i.i.i2395, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340, %bb.axb
  %.052.i.i.i.i.i.i.i.i.i2293 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i2330, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2332 ], [ %.us-phi.i.i.i.i.i.i.i.i.i2330, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2336 ], [ %i.juc, %bb.axb ], [ %i.jud, %.critedge.us88.i.us.us76.i.i.i.i.i.i.i.i2355 ], [ %i.jud, %.lr.ph.split.split.split.us.split.i.i.i.i.i.i.i.i.i2342 ], [ %i.jud, %.lr.ph.split.split.split.us.split.i.split.us.split.i.i.i.i.i.i.i.i2349 ], [ %i.jud, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2340 ], [ %i.jud, %.lr.ph.split.split.split.us.split.i.split.us.split.us.i.i.i.i.i.i.i.i2358 ], [ %i.jud, %vector.body5490 ], [ %i.jud, %vector.body5463 ], [ %i.jud, %.critedge.us69.i.i.i.i.i.i.i.i.i2378 ], [ %i.jud, %.critedge.us.i.i.i.i.i.i.i.i.i2395 ], [ %i.jud, %.critedge.us88.i.us.us.us.i.i.i.i.i.i.i.i2363 ], [ %i.jud, %.critedge.i.i.i.i.i.i.i.i.i2288 ]
  %i.kbc = load ptr, ptr %.sroa.953.0..sroa_idx.i2233, align 8, !tbaa !3242, !nonnull !74, !align !497
  %i.kbd = load i32, ptr %i.kbc, align 4, !tbaa !3
  %i.kbe = icmp eq i32 %.052.i.i.i.i.i.i.i.i.i2293, %i.kbd
  br i1 %i.kbe, label %bb.axu, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.axu:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2292
  %i.kbf = load ptr, ptr %.sroa.12.0..sroa_idx.i2236, align 8, !tbaa !3250, !nonnull !74, !align !275 ; 5 uses
  %i.kbg = getelementptr inbounds nuw i8, ptr %i.kbf, i64 144 ; 2 uses
  %i.kbh = load ptr, ptr %i.kbg, align 8, !tbaa !341 ; 2 uses
  %i.kbi = icmp eq ptr %i.kbh, null
  br i1 %i.kbi, label %bb.axv, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294

bb.axv:                                           ; preds = %bb.axu
  %i.kbj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.kbf)
          to label %.noexc22.i.i.i.i.i.i.i.i2324 unwind label %bb.axx ; 0 uses

.noexc22.i.i.i.i.i.i.i.i2324:                     ; preds = %bb.axv
  %.pre.i32.i.i.i.i.i.i.i.i.i2325 = load ptr, ptr %i.kbg, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294: ; preds = %.noexc22.i.i.i.i.i.i.i.i2324, %bb.axu
  %i.kbk = phi ptr [ %i.kbh, %bb.axu ], [ %.pre.i32.i.i.i.i.i.i.i.i.i2325, %.noexc22.i.i.i.i.i.i.i.i2324 ]
  %i.kbl = getelementptr inbounds [8 x i8], ptr %i.kbk, i64 %i.jtq
  store i64 0, ptr %i.kbl, align 8, !tbaa !137
  %i.kbm = getelementptr inbounds nuw i8, ptr %i.kbf, i64 32 ; 2 uses
  %i.kbn = load ptr, ptr %i.kbm, align 8, !tbaa !362
  %.not.i29.i.i.i.i.i.i.i.i.i2295 = icmp eq ptr %i.kbn, null
  br i1 %.not.i29.i.i.i.i.i.i.i.i.i2295, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE8ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.axw

bb.axw:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i28.i.i.i.i.i.i.i.i.i2294
  %i.kbo = getelementptr inbounds nuw i8, ptr %i.kbf, i64 56
  %i.kbp = load i32, ptr %i.kbo, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.kbf, i32 noundef %i.kbp, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i2319 unwind label %bb.axx

end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.ktz = shl i64 %i.ktw, %i.kty
  %i.kua = and i64 %i.ktz, %i.ktt
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %41, i32 noundef %i.ktq, i64 noundef %i.kua)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i

bb.bbx:                                           ; preds = %bb.bbv
  %.not32.i.i.i.i.i.i.i2593 = icmp eq i32 %i.kti, %i.ktn
  br i1 %.not32.i.i.i.i.i.i.i2593, label %bb.bbz, label %bb.bby

bb.bby:                                           ; preds = %bb.bbx
  %i.kub = sdiv i32 %i.kti, 64
  %i.kuc = sub nsw i32 %i.ktn, %i.kti             ; 2 uses
  %i.kud = zext nneg i32 %i.kuc to i64
  %notmask.i.i35.i.i.i.i.i.i.i2594 = shl nsw i64 -1, %i.kud
  %i.kue = xor i64 %notmask.i.i35.i.i.i.i.i.i.i2594, -1
  %i.kuf = sub nsw i32 64, %i.kuc
  %i.kug = zext nneg i32 %i.kuf to i64
  %i.kuh = shl i64 %i.kue, %i.kug
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %41, i32 noundef %i.kub, i64 noundef %i.kuh)
  br label %bb.bbz

bb.bbz:                                           ; preds = %bb.bby, %bb.bbx
  %i.kui = add nsw i32 %i.ktn, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i2595 = icmp sgt i32 %i.kui, %i.kto
  br i1 %.not3351.i.i.i.i.i.i.i2595, label %._crit_edge.i.i.i.i.i.i.i2599, label %.lr.ph.i.i.i.i.i.i29.i2596

.lr.ph.i.i.i.i.i.i29.i2596:                       ; preds = %bb.bbz
  %i.kuj = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.kuk = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  br label %bb.bca

._crit_edge.i.i.i.i.i.i.i2599:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.bbz
  %.not34.i.i.i.i.i.i.i2600 = icmp eq i32 %i.ktk, %i.kto
  br i1 %.not34.i.i.i.i.i.i.i2600, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiiSO_.exit.i.i.i.i, label %bb.bej

bb.bca:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i29.i2596
  %i.kul = phi i32 [ %i.kui, %.lr.ph.i.i.i.i.i.i29.i2596 ], [ %i.lgw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i.i.i.i2597 = phi i32 [ %i.ktn, %.lr.ph.i.i.i.i.i.i29.i2596 ], [ %i.kul, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.kum = sdiv i32 %.052.i.i.i.i.i.i.i2597, 64   ; 3 uses
  %i.kun = sext i32 %i.kum to i64
  %i.kuo = getelementptr inbounds [8 x i8], ptr %i.ktg, i64 %i.kun
  %i.kup = load i64, ptr %i.kuo, align 8, !tbaa !137 ; 2 uses
  switch i64 %i.kup, label %.lr.ph.i.i.i.i.i.i.i.i2680 [
    i64 -1, label %bb.bcb
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i2680:                       ; preds = %bb.bca
  %i.kuq = shl nsw i32 %i.kum, 6
  br label %bb.bds

bb.bcb:                                           ; preds = %bb.bca
  %i.kur = shl nsw i32 %i.kum, 6                  ; 2 uses
  %i.kus = add i32 %i.kur, 64
  %i.kut = sext i32 %i.kus to i64
  %.0.off.i.i.i.i.i.i.i2602 = add i32 %.052.i.i.i.i.i.i.i2597, 127
  %.not73.i.i.i.i.i.i.i.i2603 = icmp ult i32 %.0.off.i.i.i.i.i.i.i2602, 64
  br i1 %.not73.i.i.i.i.i.i.i.i2603, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph72.i.i.i.i.i.i.i.i2604

.lr.ph72.i.i.i.i.i.i.i.i2604:                     ; preds = %bb.bcb
  %i.kuu = sext i32 %i.kur to i64
  br label %bb.bcc

bb.bcc:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, %.lr.ph72.i.i.i.i.i.i.i.i2604
  %.069.i.i.i.i.i.i.i.i2605 = phi i64 [ %i.kuu, %.lr.ph72.i.i.i.i.i.i.i.i2604 ], [ %i.lfj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.kuv = load ptr, ptr %45, align 8, !tbaa !3267, !nonnull !74, !align !275
  %i.kuw = load ptr, ptr %i.kuv, align 8, !tbaa !329
  %i.kux = load ptr, ptr %.sroa.447.0..sroa_idx.i2574, align 8, !tbaa !3269, !nonnull !74, !align !275
  %i.kuy = load ptr, ptr %i.kux, align 8, !tbaa !329 ; 2 uses
  %i.kuz = getelementptr inbounds nuw [4 x i8], ptr %i.kuy, i64 %.069.i.i.i.i.i.i.i.i2605
  %i.kva = load i32, ptr %i.kuz, align 4, !tbaa !3
  %i.kvb = sext i32 %i.kva to i64
  %i.kvc = getelementptr inbounds [4 x i8], ptr %i.kuw, i64 %i.kvb
  %i.kvd = load i32, ptr %i.kvc, align 4, !tbaa !3 ; 3 uses
  %i.kve = load ptr, ptr %.sroa.548.0..sroa_idx.i2575, align 8, !tbaa !3270, !nonnull !74, !align !275 ; 5 uses
  %i.kvf = trunc i64 %.069.i.i.i.i.i.i.i.i2605 to i32 ; 4 uses
  %i.kvg = getelementptr inbounds nuw i8, ptr %i.kve, i64 16
  %i.kvh = load ptr, ptr %i.kvg, align 8, !tbaa !487
  %i.kvi = getelementptr inbounds nuw i8, ptr %i.kve, i64 58
  %i.kvj = load i8, ptr %i.kvi, align 2, !tbaa !338, !range !73, !noundef !74
  %i.kvk = trunc nuw i8 %i.kvj to i1
  br i1 %i.kvk, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i.i.i.i.i.i.i.i.i, label %bb.bcd

bb.bcd:                                           ; preds = %bb.bcc
  %i.kvl = getelementptr inbounds nuw i8, ptr %i.kve, i64 59
  %i.kvm = load i8, ptr %i.kvl, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kvn = trunc nuw i8 %i.kvm to i1
  br i1 %i.kvn, label %bb.bce, label %bb.bcf

bb.bce:                                           ; preds = %bb.bcd
  %i.kvo = getelementptr inbounds nuw i8, ptr %i.kve, i64 64
  %i.kvp = load i32, ptr %i.kvo, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i.i.i.i.i.i.i.i.i

bb.bcf:                                           ; preds = %bb.bcd
  %i.kvq = getelementptr inbounds nuw i8, ptr %i.kve, i64 8
  %i.kvr = load ptr, ptr %i.kvq, align 8, !tbaa !331
  %sext.i.i.i.i.i.i.i.i.i2606 = shl i64 %.069.i.i.i.i.i.i.i.i2605, 32
  %i.kvs = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i2606, 30
  %i.kvt = getelementptr inbounds i8, ptr %i.kvr, i64 %i.kvs
  %i.kvu = load i32, ptr %i.kvt, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bcf, %bb.bce, %bb.bcc
  %.0.i.i.i.i.i.i.i.i.i.i.i2607 = phi i32 [ %i.kvu, %bb.bcf ], [ %i.kvp, %bb.bce ], [ %i.kvf, %bb.bcc ]
  %i.kvv = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i2607 to i64
  %i.kvw = getelementptr inbounds [16 x i8], ptr %i.kvh, i64 %i.kvv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608 = load i64, ptr %i.kvw, align 8, !tbaa !137 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i2609 = getelementptr inbounds nuw i8, ptr %i.kvw, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i2609, align 8, !tbaa !137 ; 4 uses
  %i.kvx = load ptr, ptr %.sroa.649.0..sroa_idx.i2576, align 8, !tbaa !3271, !nonnull !74, !align !275 ; 5 uses
  %i.kvy = getelementptr inbounds nuw i8, ptr %i.kvx, i64 16
  %i.kvz = load ptr, ptr %i.kvy, align 8, !tbaa !487
  %i.kwa = getelementptr inbounds nuw i8, ptr %i.kvx, i64 58
  %i.kwb = load i8, ptr %i.kwa, align 2, !tbaa !338, !range !73, !noundef !74
  %i.kwc = trunc nuw i8 %i.kwb to i1
  br i1 %i.kwc, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2611, label %bb.bcg

bb.bcg:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.kwd = getelementptr inbounds nuw i8, ptr %i.kvx, i64 59
  %i.kwe = load i8, ptr %i.kwd, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kwf = trunc nuw i8 %i.kwe to i1
  br i1 %i.kwf, label %bb.bch, label %bb.bci

bb.bch:                                           ; preds = %bb.bcg
  %i.kwg = getelementptr inbounds nuw i8, ptr %i.kvx, i64 64
  %i.kwh = load i32, ptr %i.kwg, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2611

bb.bci:                                           ; preds = %bb.bcg
  %i.kwi = getelementptr inbounds nuw i8, ptr %i.kvx, i64 8
  %i.kwj = load ptr, ptr %i.kwi, align 8, !tbaa !331
  %sext45.i.i.i.i.i.i.i.i.i = shl i64 %.069.i.i.i.i.i.i.i.i2605, 32
  %i.kwk = ashr exact i64 %sext45.i.i.i.i.i.i.i.i.i, 30
  %i.kwl = getelementptr inbounds i8, ptr %i.kwj, i64 %i.kwk
  %i.kwm = load i32, ptr %i.kwl, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2611

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2611: ; preds = %bb.bci, %bb.bch, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i20.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kwm, %bb.bci ], [ %i.kwh, %bb.bch ], [ %i.kvf, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.kwn = sext i32 %.0.i.i20.i.i.i.i.i.i.i.i.i to i64
  %i.kwo = getelementptr inbounds [8 x i8], ptr %i.kvz, i64 %i.kwn
  %i.kwp = load i64, ptr %i.kwo, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i2612 = icmp eq i64 %i.kwp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i2612, label %bb.bcj, label %bb.bcm, !prof !48

bb.bcj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2611
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #35, !noalias !3272
  store i64 0, ptr %35, align 16, !tbaa !30, !noalias !3272
  store i32 0, ptr %i.kuj, align 16, !tbaa !30, !alias.scope !3275, !noalias !3272
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %35)
          to label %.noexc.i.i.i.i.i.i.i.i2676 unwind label %bb.bdc

.noexc.i.i.i.i.i.i.i.i2676:                       ; preds = %bb.bcj
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35, !noalias !3272
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr nonnull @.str.178) #38
          to label %bb.bck unwind label %bb.bcl

bb.bck:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i2676
  unreachable

bb.bcl:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i2676
  %i.kwq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.kwr = load ptr, ptr %36, align 8, !tbaa !49  ; 2 uses
  %i.kws = icmp eq ptr %i.kwr, %i.kuk
  br i1 %i.kws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2677

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2677: ; preds = %bb.bcl
  %i.kwt = load i64, ptr %i.kuk, align 8, !tbaa !30
  %i.kwu = add i64 %i.kwt, 1
  call void @_ZdlPvm(ptr noundef %i.kwr, i64 noundef %i.kwu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i2678: ; preds = %bb.bcl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i2677
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  br label %.body.i.i.i.i.i.i.i.i2628

bb.bcm:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i2611
  %i.kwv = load ptr, ptr %.sroa.750.0..sroa_idx.i2577, align 8, !tbaa !3278, !nonnull !74, !align !275
  %i.kww = load ptr, ptr %i.kwv, align 8, !tbaa !329
  %i.kwx = load ptr, ptr %.sroa.851.0..sroa_idx.i2578, align 8, !tbaa !3279, !nonnull !74, !align !497 ; 2 uses
  %i.kwy = load ptr, ptr %.sroa.952.0..sroa_idx.i2579, align 8, !tbaa !3280, !nonnull !74, !align !497 ; 2 uses
  %i.kwz = load ptr, ptr %.sroa.1053.0..sroa_idx.i2580, align 8, !tbaa !3281, !nonnull !74, !align !497
  %sext46.i.i.i.i.i.i.i.i.i = shl i64 %.069.i.i.i.i.i.i.i.i2605, 32
  %i.kxa = ashr exact i64 %sext46.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.kxb = getelementptr inbounds [4 x i8], ptr %i.kuy, i64 %i.kxa
  %i.kxc = load i32, ptr %i.kxb, align 4, !tbaa !3
  %i.kxd = sext i32 %i.kxc to i64
  %i.kxe = getelementptr inbounds [4 x i8], ptr %i.kww, i64 %i.kxd
  %i.kxf = load i32, ptr %i.kxe, align 4, !tbaa !3 ; 2 uses
  %i.kxg = icmp sgt i64 %i.kwp, 0                 ; 3 uses
  %i.kxh = add nsw i32 %i.kxf, -1
  %i.kxi = select i1 %i.kxg, i32 0, i32 %i.kxh
  store i32 %i.kxi, ptr %i.kwx, align 4, !tbaa !3
  %i.kxj = select i1 %i.kxg, i32 %i.kxf, i32 -1
  store i32 %i.kxj, ptr %i.kwy, align 4, !tbaa !3
  %i.kxk = select i1 %i.kxg, i32 1, i32 -1        ; 10 uses
  store i32 %i.kxk, ptr %i.kwz, align 4, !tbaa !3
  %i.kxl = call noundef i64 @llvm.abs.i64(i64 %i.kwp, i1 true) ; 6 uses
  %i.kxm = load i32, ptr %i.kwx, align 4, !tbaa !3 ; 9 uses
  %i.kxn = load i32, ptr %i.kwy, align 4, !tbaa !3 ; 13 uses
  %.not1649.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kxm, %i.kxn
  br i1 %.not1649.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %.lr.ph.i.i.i.i.i.i.i.i.i2613

.lr.ph.i.i.i.i.i.i.i.i.i2613:                     ; preds = %bb.bcm
  %i.kxo = load ptr, ptr %.sroa.11.0..sroa_idx.i2581, align 8, !tbaa !3282, !nonnull !74, !align !275 ; 7 uses
  %i.kxp = getelementptr inbounds nuw i8, ptr %i.kxo, i64 24
  %i.kxq = load ptr, ptr %i.kxp, align 8, !tbaa !337 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i2614 = icmp eq ptr %i.kxq, null
  %i.kxr = getelementptr inbounds nuw i8, ptr %i.kxo, i64 59 ; 3 uses
  %i.kxs = getelementptr inbounds nuw i8, ptr %i.kxo, i64 8 ; 3 uses
  %i.kxt = getelementptr inbounds nuw i8, ptr %i.kxo, i64 16 ; 4 uses
  %i.kxu = getelementptr inbounds nuw i8, ptr %i.kxo, i64 58
  %i.kxv = getelementptr inbounds nuw i8, ptr %i.kxo, i64 64 ; 3 uses
  %i.kxw = load i8, ptr %i.kxu, align 2, !tbaa !338, !range !73, !noundef !74
  %i.kxx = trunc nuw i8 %i.kxw to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2614, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669, label %.lr.ph.split.i.i.i.i.i.i.i.i.i2615

.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2613
  %i.kxy = load ptr, ptr %i.kxt, align 8, !tbaa !487
  %i.kxz = sext i32 %i.kxm to i64
  %i.kya = sext i32 %i.kxk to i64
  %i.kyb = sext i32 %i.kvd to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i2672, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669
  %indvars.iv145.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next146.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2672 ], [ %i.kxz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669 ] ; 3 uses
  %.04350.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i2673, %.critedge.us.i.i.i.i.i.i.i.i.i2672 ], [ %i.kxl, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2669 ] ; 2 uses
  %i.kyc = add nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i, %i.kyb ; 2 uses
  %i.kyd = trunc nsw i64 %i.kyc to i32
  br i1 %i.kxx, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i, label %bb.bcn

bb.bcn:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670
  %i.kye = load i8, ptr %i.kxr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kyf = trunc nuw i8 %i.kye to i1
  br i1 %i.kyf, label %bb.bcp, label %bb.bco

bb.bco:                                           ; preds = %bb.bcn
  %i.kyg = load ptr, ptr %i.kxs, align 8, !tbaa !331
  %i.kyh = getelementptr inbounds [4 x i8], ptr %i.kyg, i64 %i.kyc
  %i.kyi = load i32, ptr %i.kyh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i

bb.bcp:                                           ; preds = %bb.bcn
  %i.kyj = load i32, ptr %i.kxv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.bcp, %bb.bco, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i2671 = phi i32 [ %i.kyi, %bb.bco ], [ %i.kyj, %bb.bcp ], [ %i.kyd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670 ]
  %i.kyk = sext i32 %.0.i.i21.us.i.i.i.i.i.i.i.i.i2671 to i64
  %i.kyl = getelementptr inbounds [16 x i8], ptr %i.kxy, i64 %i.kyk ; 2 uses
  %.sroa.0.0.copyload.i22.us.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kyl, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kyl, i64 8
  %.sroa.2.0.copyload.i24.us.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.kym = icmp eq i64 %.sroa.0.0.copyload.i22.us.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.kyn = icmp eq i64 %.sroa.2.0.copyload.i24.us.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.kyo = select i1 %i.kym, i1 %i.kyn, i1 false
  br i1 %i.kyo, label %bb.bcq, label %.critedge.us.i.i.i.i.i.i.i.i.i2672

bb.bcq:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i
  %i.kyp = add nsw i64 %.04350.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kyq = icmp eq i64 %i.kyp, 0
  br i1 %i.kyq, label %.split.us.loopexit.i.i.i.i.i.i.i.i.i2675, label %.critedge.us.i.i.i.i.i.i.i.i.i2672

.critedge.us.i.i.i.i.i.i.i.i.i2672:               ; preds = %bb.bcq, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i2673 = phi i64 [ %.04350.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i ], [ %i.kyp, %bb.bcq ]
  %indvars.iv.next146.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i, %i.kya ; 2 uses
  %i.kyr = trunc nsw i64 %indvars.iv.next146.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i2674 = icmp eq i32 %i.kxn, %i.kyr
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i2674, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2670, !llvm.loop !3283

.lr.ph.split.i.i.i.i.i.i.i.i.i2615:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2613
  %i.kys = getelementptr inbounds nuw i8, ptr %i.kxo, i64 57
  %i.kyt = load i8, ptr %i.kys, align 1, !range !73
  %i.kyu = trunc nuw i8 %i.kyt to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i2616 = select i1 %i.kxx, i1 true, i1 %i.kyu
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i2616, label %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617

.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666: ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2615
  %i.kyv = sext i32 %i.kxm to i64
  %i.kyw = sext i32 %i.kxk to i64
  %i.kyx = sext i32 %i.kvd to i64
  br label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667:      ; preds = %.critedge.us61.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666
  %indvars.iv142.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kyv, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666 ], [ %indvars.iv.next143.i.i.i.i.i.i.i.i.i, %.critedge.us61.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.04350.us54.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kxl, %.lr.ph.split.split.us.preheader.i.i.i.i.i.i.i.i.i2666 ], [ %.1.us62.i.i.i.i.i.i.i.i.i, %.critedge.us61.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kyy = add nsw i64 %indvars.iv142.i.i.i.i.i.i.i.i.i, %i.kyx ; 4 uses
  %i.kyz = lshr i64 %i.kyy, 6
  %i.kza = and i64 %i.kyz, 67108863
  %i.kzb = getelementptr inbounds nuw [8 x i8], ptr %i.kxq, i64 %i.kza
  %i.kzc = load i64, ptr %i.kzb, align 8, !tbaa !137
  %i.kzd = and i64 %i.kyy, 63
  %i.kze = shl nuw i64 1, %i.kzd
  %i.kzf = and i64 %i.kze, %i.kzc
  %.not.i.i.us.i.i.i.i.i.i.i.i.i2668 = icmp eq i64 %i.kzf, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i2668, label %.critedge.us61.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667
  %i.kzg = trunc nsw i64 %i.kyy to i32
  %i.kzh = load ptr, ptr %i.kxt, align 8, !tbaa !487
  br i1 %i.kxx, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i, label %bb.bcr

bb.bcr:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i
  %i.kzi = load i8, ptr %i.kxr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kzj = trunc nuw i8 %i.kzi to i1
  br i1 %i.kzj, label %bb.bct, label %bb.bcs

bb.bcs:                                           ; preds = %bb.bcr
  %i.kzk = load ptr, ptr %i.kxs, align 8, !tbaa !331
  %i.kzl = getelementptr inbounds [4 x i8], ptr %i.kzk, i64 %i.kyy
  %i.kzm = load i32, ptr %i.kzl, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i

bb.bct:                                           ; preds = %bb.bcr
  %i.kzn = load i32, ptr %i.kxv, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i: ; preds = %bb.bct, %bb.bcs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i
  %.0.i.i21.us57.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kzm, %bb.bcs ], [ %i.kzn, %bb.bct ], [ %i.kzg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us55.i.i.i.i.i.i.i.i.i ]
  %i.kzo = sext i32 %.0.i.i21.us57.i.i.i.i.i.i.i.i.i to i64
  %i.kzp = getelementptr inbounds [16 x i8], ptr %i.kzh, i64 %i.kzo ; 2 uses
  %.sroa.0.0.copyload.i22.us58.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kzp, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us59.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kzp, i64 8
  %.sroa.2.0.copyload.i24.us60.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us59.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.kzq = icmp eq i64 %.sroa.0.0.copyload.i22.us58.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.kzr = icmp eq i64 %.sroa.2.0.copyload.i24.us60.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.kzs = select i1 %i.kzq, i1 %i.kzr, i1 false
  br i1 %i.kzs, label %bb.bcu, label %.critedge.us61.i.i.i.i.i.i.i.i.i

bb.bcu:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i
  %i.kzt = add nsw i64 %.04350.us54.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kzu = icmp eq i64 %i.kzt, 0
  br i1 %i.kzu, label %.split.us.loopexit110.i.i.i.i.i.i.i.i.i, label %.critedge.us61.i.i.i.i.i.i.i.i.i

.critedge.us61.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.bcu, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667
  %.1.us62.i.i.i.i.i.i.i.i.i = phi i64 [ %.04350.us54.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us56.i.i.i.i.i.i.i.i.i ], [ %i.kzt, %bb.bcu ], [ %.04350.us54.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667 ]
  %indvars.iv.next143.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv142.i.i.i.i.i.i.i.i.i, %i.kyw ; 2 uses
  %i.kzv = trunc nsw i64 %indvars.iv.next143.i.i.i.i.i.i.i.i.i to i32
  %.not16.us63.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kxn, %i.kzv
  br i1 %.not16.us63.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i2667, !llvm.loop !3283

.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2615
  %i.kzw = load i8, ptr %i.kxr, align 1, !tbaa !339, !range !73, !noundef !74
  %i.kzx = trunc nuw i8 %i.kzw to i1
  br i1 %i.kzx, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617
  %i.kzy = load i64, ptr %i.kxq, align 8, !tbaa !137
  %i.kzz = and i64 %i.kzy, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i2664 = icmp eq i64 %i.kzz, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i2664, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663
  %i.laa = load ptr, ptr %i.kxt, align 8, !tbaa !487
  %i.lab = load i32, ptr %i.kxv, align 8, !tbaa !488
  %i.lac = sext i32 %i.lab to i64
  %i.lad = getelementptr inbounds [16 x i8], ptr %i.laa, i64 %i.lac ; 2 uses
  %.sroa.0.0.copyload.i22.us73.us98.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lad, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us74.us99.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lad, i64 8
  %.sroa.2.0.copyload.i24.us75.us100.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us74.us99.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.lae = icmp eq i64 %.sroa.0.0.copyload.i22.us73.us98.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.laf = icmp eq i64 %.sroa.2.0.copyload.i24.us75.us100.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.lag = select i1 %i.lae, i1 %i.laf, i1 false
  br i1 %i.lag, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665
  %i.lah = trunc i64 %i.kxl to i32
  %i.lai = add i32 %i.lah, -1
  %i.laj = mul i32 %i.lai, %i.kxk
  %i.lak = add i32 %i.kxm, %i.laj                 ; 3 uses
  %i.lal = add nsw i64 %i.kxl, -1                 ; 5 uses
  %i.lam = icmp eq i64 %i.lal, 0
  br i1 %i.lam, label %.split.us.i.i.i.i.i.i.i.i.i2655, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp samesign ult i64 %i.kxl, 33
  br i1 %min.iters.check, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec = and i64 %i.lal, -32                    ; 3 uses
  %i.lan = and i64 %i.lal, 31
  %i.lao = trunc i64 %n.vec to i32
  %i.lap = mul i32 %i.kxk, %i.lao
  %i.laq = add i32 %i.kxm, %i.lap
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.kxk, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5438 = insertelement <32 x i32> poison, i32 %i.kxn, i64 0
  %broadcast.splat5439 = shufflevector <32 x i32> %broadcast.splatinsert5438, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5440 = insertelement <32 x i32> poison, i32 %i.kxm, i64 0
  %broadcast.splat5441 = shufflevector <32 x i32> %broadcast.splatinsert5440, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5442 = insertelement <32 x i32> poison, i32 %i.kxk, i64 0
  %broadcast.splat5443.a = shufflevector <32 x i32> %broadcast.splatinsert5442, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.lar = mul <32 x i32> %broadcast.splat5443.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat5441, %i.lar
  %i.las = shl nsw i32 %i.kxk, 5
  %broadcast.splatinsert5444 = insertelement <32 x i32> poison, i32 %i.las, i64 0
  %broadcast.splat5445 = shufflevector <32 x i32> %broadcast.splatinsert5444, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.lat = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.lau = icmp eq <32 x i32> %i.lat, %broadcast.splat5439
  %i.lav = freeze <32 x i1> %i.lau
  %i.law = bitcast <32 x i1> %i.lav to i32
  %.not = icmp eq i32 %i.law, 0
  br i1 %.not, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat5445
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lax = icmp eq i64 %index.next, %n.vec
  br i1 %i.lax, label %middle.block, label %vector.body, !llvm.loop !3284

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.lal, %n.vec
  br i1 %cmp.n, label %.split.us.i.i.i.i.i.i.i.i.i2655, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block
  %.ph6202 = phi i64 [ %i.lal, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.lan, %middle.block ]
  %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358.ph = phi i32 [ %i.kxm, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.laq, %middle.block ]
  br label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i
  %i.lay = add nsw i64 %i.lba, -1                 ; 2 uses
  %i.laz = icmp eq i64 %i.lay, 0
  br i1 %i.laz, label %.split.us.i.i.i.i.i.i.i.i.i2655, label %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3285

.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i:        ; preds = %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i
  %i.lba = phi i64 [ %i.lay, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i ], [ %.ph6202, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358 = phi i32 [ %i.lbb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i ], [ %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358.ph, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.lbb = add nsw i32 %.051.us68.us94.us.i.i.i.i.i.i.i.i.i5358, %i.kxk ; 2 uses
  %.not16.us78.us103.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.lbb, %i.kxn
  br i1 %.not16.us78.us103.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3283

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2617
  %i.lbc = load ptr, ptr %i.kxs, align 8, !tbaa !331
  %i.lbd = sext i32 %i.kxm to i64
  %i.lbe = sext i32 %i.kxk to i64
  %i.lbf = sext i32 %i.kvd to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i2619 = getelementptr [4 x i8], ptr %i.lbc, i64 %i.lbf
  br label %bb.bcv

bb.bcv:                                           ; preds = %.critedge.i.i.i.i.i.i.i.i.i2623, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618
  %indvars.iv.i.i.i.i.i.i.i.i.i2620 = phi i64 [ %i.lbd, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i2625, %.critedge.i.i.i.i.i.i.i.i.i2623 ] ; 3 uses
  %.04350.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kxl, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2618 ], [ %.1.i.i.i.i.i.i.i.i.i2624, %.critedge.i.i.i.i.i.i.i.i.i2623 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i2621 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i2619, i64 %indvars.iv.i.i.i.i.i.i.i.i.i2620
  %i.lbg = load i32, ptr %gep.i.i.i.i.i.i.i.i.i2621, align 4, !tbaa !3 ; 2 uses
  %i.lbh = zext i32 %i.lbg to i64                 ; 2 uses
  %i.lbi = lshr i64 %i.lbh, 6
  %i.lbj = getelementptr inbounds nuw [8 x i8], ptr %i.kxq, i64 %i.lbi
  %i.lbk = load i64, ptr %i.lbj, align 8, !tbaa !137
  %i.lbl = and i64 %i.lbh, 63
  %i.lbm = shl nuw i64 1, %i.lbl
  %i.lbn = and i64 %i.lbm, %i.lbk
  %.not.i7.i.i.i.i.i.i.i.i.i.i2622 = icmp eq i64 %i.lbn, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i2622, label %.critedge.i.i.i.i.i.i.i.i.i2623, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i: ; preds = %bb.bcv
  %i.lbo = load ptr, ptr %i.kxt, align 8, !tbaa !487
  %i.lbp = sext i32 %i.lbg to i64
  %i.lbq = getelementptr inbounds [16 x i8], ptr %i.lbo, i64 %i.lbp ; 2 uses
  %.sroa.0.0.copyload.i22.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lbq, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lbq, i64 8
  %.sroa.2.0.copyload.i24.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.i.i.i.i.i.i.i.i.i, align 8, !tbaa !137
  %i.lbr = icmp eq i64 %.sroa.0.0.copyload.i22.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2608
  %i.lbs = icmp eq i64 %.sroa.2.0.copyload.i24.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2610
  %i.lbt = select i1 %i.lbr, i1 %i.lbs, i1 false
  br i1 %i.lbt, label %bb.bcw, label %.critedge.i.i.i.i.i.i.i.i.i2623

bb.bcw:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i
  %i.lbu = add nsw i64 %.04350.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.lbv = icmp eq i64 %i.lbu, 0
  br i1 %i.lbv, label %.split.us.loopexit120.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i2623

.split.us.loopexit.i.i.i.i.i.i.i.i.i2675:         ; preds = %bb.bcq
  %i.lbw = trunc nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i2655

.split.us.loopexit110.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bcu
  %i.lbx = trunc nsw i64 %indvars.iv142.i.i.i.i.i.i.i.i.i to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i2655

.split.us.loopexit120.i.i.i.i.i.i.i.i.i:          ; preds = %bb.bcw
  %i.lby = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2620 to i32
  br label %.split.us.i.i.i.i.i.i.i.i.i2655

.split.us.i.i.i.i.i.i.i.i.i2655:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block, %.split.us.loopexit120.i.i.i.i.i.i.i.i.i, %.split.us.loopexit110.i.i.i.i.i.i.i.i.i, %.split.us.loopexit.i.i.i.i.i.i.i.i.i2675
  %.us-phi.i.i.i.i.i.i.i.i.i2656 = phi i32 [ %i.lby, %.split.us.loopexit120.i.i.i.i.i.i.i.i.i ], [ %i.lbw, %.split.us.loopexit.i.i.i.i.i.i.i.i.i2675 ], [ %i.lbx, %.split.us.loopexit110.i.i.i.i.i.i.i.i.i ], [ %i.lak, %middle.block ], [ %i.lak, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.lak, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us93.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lbz = load ptr, ptr %.sroa.12.0..sroa_idx.i2582, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.lca = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i2656, 1
  %i.lcb = sext i32 %i.lca to i64
  %i.lcc = getelementptr inbounds nuw i8, ptr %i.lbz, i64 144 ; 2 uses
  %i.lcd = load ptr, ptr %i.lcc, align 8, !tbaa !341 ; 2 uses
  %i.lce = icmp eq ptr %i.lcd, null
  br i1 %i.lce, label %bb.bcx, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657

bb.bcx:                                           ; preds = %.split.us.i.i.i.i.i.i.i.i.i2655
  %i.lcf = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.lbz)
          to label %.noexc19.i.i.i.i.i.i.i.i2661 unwind label %bb.bdc ; 0 uses

.noexc19.i.i.i.i.i.i.i.i2661:                     ; preds = %bb.bcx
  %.pre.i.i.i.i.i.i.i.i.i.i2662 = load ptr, ptr %i.lcc, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657: ; preds = %.noexc19.i.i.i.i.i.i.i.i2661, %.split.us.i.i.i.i.i.i.i.i.i2655
  %i.lcg = phi ptr [ %i.lcd, %.split.us.i.i.i.i.i.i.i.i.i2655 ], [ %.pre.i.i.i.i.i.i.i.i.i.i2662, %.noexc19.i.i.i.i.i.i.i.i2661 ]
  %i.lch = getelementptr inbounds [8 x i8], ptr %i.lcg, i64 %i.kxa
  store i64 %i.lcb, ptr %i.lch, align 8, !tbaa !137
  %i.lci = getelementptr inbounds nuw i8, ptr %i.lbz, i64 32 ; 2 uses
  %i.lcj = load ptr, ptr %i.lci, align 8, !tbaa !362
  %.not.i28.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lcj, null
  br i1 %.not.i28.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %bb.bcy

bb.bcy:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657
  %i.lck = getelementptr inbounds nuw i8, ptr %i.lbz, i64 56
  %i.lcl = load i32, ptr %i.lck, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.lbz, i32 noundef %i.lcl, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i2658 unwind label %bb.bdc

.noexc20.i.i.i.i.i.i.i.i2658:                     ; preds = %bb.bcy
  %i.lcm = load ptr, ptr %i.lci, align 8, !tbaa !362 ; 2 uses
  %i.lcn = getelementptr inbounds nuw i8, ptr %i.lcm, i64 44
  %i.lco = load i8, ptr %i.lcn, align 4, !tbaa !363
  %i.lcp = and i8 %i.lco, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i2659 = icmp eq i8 %i.lcp, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i2659, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660, label %.invoke.i.i.i.i.i.i.i.i2652, !prof !69

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660: ; preds = %.noexc20.i.i.i.i.i.i.i.i2658
  %i.lcq = getelementptr inbounds nuw i8, ptr %i.lcm, i64 16
  %i.lcr = load ptr, ptr %i.lcq, align 8, !tbaa !368
  %i.lcs = lshr i64 %.069.i.i.i.i.i.i.i.i2605, 3
  %i.lct = and i64 %i.lcs, 536870911
  %i.lcu = getelementptr inbounds nuw i8, ptr %i.lcr, i64 %i.lct ; 2 uses
  %i.lcv = load i8, ptr %i.lcu, align 1, !tbaa !30
  %i.lcw = trunc i64 %.069.i.i.i.i.i.i.i.i2605 to i8
  %i.lcx = and i8 %i.lcw, 7
  %i.lcy = shl nuw i8 1, %i.lcx
  %i.lcz = or i8 %i.lcv, %i.lcy
  store i8 %i.lcz, ptr %i.lcu, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627

.critedge.i.i.i.i.i.i.i.i.i2623:                  ; preds = %bb.bcw, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i, %bb.bcv
  %.1.i.i.i.i.i.i.i.i.i2624 = phi i64 [ %.04350.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i ], [ %i.lbu, %bb.bcw ], [ %.04350.i.i.i.i.i.i.i.i.i, %bb.bcv ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i2625 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2620, %i.lbe ; 2 uses
  %i.lda = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i2625 to i32
  %.not16.i.i.i.i.i.i.i.i.i2626 = icmp eq i32 %i.kxn, %i.lda
  br i1 %.not16.i.i.i.i.i.i.i.i.i2626, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627, label %bb.bcv, !llvm.loop !3283

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627: ; preds = %.critedge.i.i.i.i.i.i.i.i.i2623, %vector.body, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i, %.critedge.us61.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2672, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663, %bb.bcm
  %.048.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i2656, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2657 ], [ %.us-phi.i.i.i.i.i.i.i.i.i2656, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2660 ], [ %i.kxm, %bb.bcm ], [ %i.kxn, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2663 ], [ %i.kxn, %vector.body ], [ %i.kxn, %.critedge.us76.us101.us.i.i.i.i.i.i.i.i.i ], [ %i.kxn, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2665 ], [ %i.kxn, %.critedge.us61.i.i.i.i.i.i.i.i.i ], [ %i.kxn, %.critedge.us.i.i.i.i.i.i.i.i.i2672 ], [ %i.kxn, %.critedge.i.i.i.i.i.i.i.i.i2623 ]
  %i.ldb = load ptr, ptr %.sroa.952.0..sroa_idx.i2579, align 8, !tbaa !3280, !nonnull !74, !align !497
  %i.ldc = load i32, ptr %i.ldb, align 4, !tbaa !3
  %i.ldd = icmp eq i32 %.048.i.i.i.i.i.i.i.i.i, %i.ldc
  br i1 %i.ldd, label %bb.bcz, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.bcz:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2627
  %i.lde = load ptr, ptr %.sroa.12.0..sroa_idx.i2582, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.ldf = getelementptr inbounds nuw i8, ptr %i.lde, i64 144 ; 2 uses
  %i.ldg = load ptr, ptr %i.ldf, align 8, !tbaa !341 ; 2 uses
  %i.ldh = icmp eq ptr %i.ldg, null
  br i1 %i.ldh, label %bb.bda, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i

bb.bda:                                           ; preds = %bb.bcz
  %i.ldi = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.lde)
          to label %.noexc22.i.i.i.i.i.i.i.i2654 unwind label %bb.bdc ; 0 uses

.noexc22.i.i.i.i.i.i.i.i2654:                     ; preds = %bb.bda
  %.pre.i33.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ldf, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i2654, %bb.bcz
  %i.ldj = phi ptr [ %i.ldg, %bb.bcz ], [ %.pre.i33.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i2654 ]
  %i.ldk = getelementptr inbounds [8 x i8], ptr %i.ldj, i64 %i.kxa
  store i64 0, ptr %i.ldk, align 8, !tbaa !137
  %i.ldl = getelementptr inbounds nuw i8, ptr %i.lde, i64 32 ; 2 uses
  %i.ldm = load ptr, ptr %i.ldl, align 8, !tbaa !362
  %.not.i30.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ldm, null
  br i1 %.not.i30.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.bdb

bb.bdb:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i
  %i.ldn = getelementptr inbounds nuw i8, ptr %i.lde, i64 56
  %i.ldo = load i32, ptr %i.ldn, align 8, !tbaa !224
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.lde, i32 noundef %i.ldo, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i2651 unwind label %bb.bdc

.noexc23.i.i.i.i.i.i.i.i2651:                     ; preds = %bb.bdb
  %i.ldp = load ptr, ptr %i.ldl, align 8, !tbaa !362 ; 2 uses
  %i.ldq = getelementptr inbounds nuw i8, ptr %i.ldp, i64 44
  %i.ldr = load i8, ptr %i.ldq, align 4, !tbaa !363
  %i.lds = and i8 %i.ldr, 2
  %.not.i3.i31.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lds, 0
  br i1 %.not.i3.i31.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i2652, !prof !69
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.an ; 2 uses
  %i.bv = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.af, %i.bv
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3623

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.021 = phi i32 [ %i.as, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.as, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !3618, !nonnull !74, !align !497
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = icmp eq i32 %.021, %i.bx
  br i1 %i.by, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !3622, !nonnull !74, !align !275 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 144 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !341 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ca) ; 0 uses
  %.pre.i15 = load ptr, ptr %i.cb, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11: ; preds = %bb.j, %bb.i
  %i.cf = phi ptr [ %i.cc, %bb.i ], [ %.pre.i15, %bb.j ]
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.f
  store i64 0, ptr %i.cg, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !362
  %.not.i12 = icmp eq ptr %i.ci, null
  br i1 %.not.i12, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, i32 noundef %i.ck, i1 noundef zeroext true)
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !362 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !363
  %i.co = and i8 %i.cn, 2
  %.not.i3.i13 = icmp eq i8 %i.co, 0
  br i1 %.not.i3.i13, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i14: ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !368
  %i.cr = lshr i32 %1, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !30
  %i.cv = trunc i32 %1 to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = shl nuw i8 1, %i.cw
  %i.cy = or i8 %i.cu, %i.cx
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

_ZN8facebook5velox10FlatVectorIlE3setEil.exit16:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2931, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2933, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2934, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2935, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3624
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3624
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3627, !noalias !3624
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3624
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2942, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2943, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2944, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2945, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 17 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2946, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep193 = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv155 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next156, %.critedge.us.us ] ; 3 uses
  %.03540.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep194 = getelementptr [4 x i8], ptr %invariant.gep193, i64 %indvars.iv155
  %i.cm = load i32, ptr %gep194, align 4, !tbaa !3
  %i.cn = icmp eq i32 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03540.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03540.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3630

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = icmp eq i32 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us98.us.lr.ph

.critedge.us.us98.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader
  %min.iters.check221 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check221, label %.critedge.us.us98.us.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %.critedge.us.us98.us.lr.ph
  %n.vec224 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec224 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert225.a = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat226.a = shufflevector <32 x i32> %broadcast.splatinsert225.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227.a = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat228.a = shufflevector <32 x i32> %broadcast.splatinsert227.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat230 = shufflevector <32 x i32> %broadcast.splatinsert229, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat232 = shufflevector <32 x i32> %broadcast.splatinsert231, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat232, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction233 = add <32 x i32> %broadcast.splat230, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert234 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat235 = shufflevector <32 x i32> %broadcast.splatinsert234, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body.interim241, %vector.ph222
  %index237 = phi i64 [ 0, %vector.ph222 ], [ %index.next239, %vector.body.interim241 ]
  %vec.ind238 = phi <32 x i32> [ %induction233, %vector.ph222 ], [ %vec.ind.next240, %vector.body.interim241 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind238, %broadcast.splat226.a
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat228.a
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not248 = icmp eq i32 %i.dn, 0
  br i1 %.not248, label %vector.body.interim241, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim241:                           ; preds = %vector.body236
  %vec.ind.next240 = add <32 x i32> %vec.ind238, %broadcast.splat235
  %index.next239 = add nuw i64 %index237, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next239, %n.vec224
  br i1 %i.do, label %middle.block242, label %vector.body236, !llvm.loop !3631

middle.block242:                                  ; preds = %vector.body.interim241
  %cmp.n243 = icmp eq i64 %i.dc, %n.vec224
  br i1 %cmp.n243, label %.split.us, label %.critedge.us.us98.us.preheader

.critedge.us.us98.us.preheader:                   ; preds = %.critedge.us.us98.us.lr.ph, %middle.block242
  %.ph = phi i64 [ %i.dc, %.critedge.us.us98.us.lr.ph ], [ %i.de, %middle.block242 ]
  %.041.us.us94.us210.ph = phi i32 [ %i.bv, %.critedge.us.us98.us.lr.ph ], [ %i.dh, %middle.block242 ]
  br label %.critedge.us.us98.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us: ; preds = %.critedge.us.us98.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us98.us, !llvm.loop !3632

.critedge.us.us98.us:                             ; preds = %.critedge.us.us98.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.ph, %.critedge.us.us98.us.preheader ]
  %.041.us.us94.us210 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.041.us.us94.us210.ph, %.critedge.us.us98.us.preheader ]
  %i.ds = add nsw i32 %.041.us.us94.us210, %i.bt  ; 2 uses
  %.not16.us.us100.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us100.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, !llvm.loop !3630

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep191 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03540.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep192 = getelementptr [4 x i8], ptr %invariant.gep191, i64 %indvars.iv152
  %i.dx = load i32, ptr %gep192, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = icmp eq i32 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03540.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit110, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03540.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3630

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us48
  %indvars.iv149 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next150, %.critedge.us48 ] ; 3 uses
  %.03540.us44 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us49, %.critedge.us48 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv149, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i19.us47 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.fb = sext i32 %.0.i.i19.us47 to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = icmp eq i32 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us48

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46
  %i.ff = add nsw i64 %.03540.us44, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit112, label %.critedge.us48

.critedge.us48:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46, %.lr.ph.split.split.us
  %.1.us49 = phi i64 [ %.03540.us44, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us46 ], [ %i.ff, %bb.q ], [ %.03540.us44, %.lr.ph.split.split.us ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next150 to i32
  %.not16.us50 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us50, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3630

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = icmp eq i32 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us60.us82.us.lr.ph

.critedge.us60.us82.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us60.us82.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us60.us82.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert211 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat212 = shufflevector <32 x i32> %broadcast.splatinsert211, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat214 = shufflevector <32 x i32> %broadcast.splatinsert213, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat216.a = shufflevector <32 x i32> %broadcast.splatinsert215, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat216.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat214, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert217 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat218 = shufflevector <32 x i32> %broadcast.splatinsert217, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat212
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not247 = icmp eq i32 %i.gh, 0
  br i1 %.not247, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat218
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3633

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us60.us82.us.preheader

.critedge.us60.us82.us.preheader:                 ; preds = %.critedge.us60.us82.us.lr.ph, %middle.block
  %.ph257 = phi i64 [ %i.fw, %.critedge.us60.us82.us.lr.ph ], [ %i.fy, %middle.block ]
  %.041.us55.us78.us209.ph = phi i32 [ %i.bv, %.critedge.us60.us82.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us60.us82.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us: ; preds = %.critedge.us60.us82.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us60.us82.us, !llvm.loop !3634

.critedge.us60.us82.us:                           ; preds = %.critedge.us60.us82.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.ph257, %.critedge.us60.us82.us.preheader ]
  %.041.us55.us78.us209 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.041.us55.us78.us209.ph, %.critedge.us60.us82.us.preheader ]
  %i.gm = add nsw i32 %.041.us55.us78.us209, %i.bt ; 2 uses
  %.not16.us62.us84.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us62.us84.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, !llvm.loop !3630

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03540 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = icmp eq i32 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20
  %i.he = add nsw i64 %.03540, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit122, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv155 to i32
  br label %.split.us

.split.us.loopexit110:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv152 to i32
  br label %.split.us

.split.us.loopexit112:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv149 to i32
  br label %.split.us

.split.us.loopexit122:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, %middle.block242, %.split.us.loopexit122, %.split.us.loopexit112, %.split.us.loopexit110, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit112 ], [ %i.hj, %.split.us.loopexit122 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit110 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader ], [ %i.db, %middle.block242 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20, %bb.s
  %.1 = phi i64 [ %.03540, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20 ], [ %i.he, %bb.s ], [ %.03540, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3630

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us60.us82.us, %.critedge.us48, %.critedge.us, %vector.body236, %.critedge.us.us98.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us98.us ], [ %i.bw, %vector.body236 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us48 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us60.us82.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !2944, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.038, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2952, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i26, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.y
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.an ; 2 uses
  %i.bv = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.af, %i.bv
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3653

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.021 = phi i32 [ %i.as, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.as, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !3648, !nonnull !74, !align !497
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = icmp eq i32 %.021, %i.bx
  br i1 %i.by, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !3652, !nonnull !74, !align !275 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 144 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !341 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ca) ; 0 uses
  %.pre.i15 = load ptr, ptr %i.cb, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11: ; preds = %bb.j, %bb.i
  %i.cf = phi ptr [ %i.cc, %bb.i ], [ %.pre.i15, %bb.j ]
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.f
  store i64 0, ptr %i.cg, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !362
  %.not.i12 = icmp eq ptr %i.ci, null
  br i1 %.not.i12, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, i32 noundef %i.ck, i1 noundef zeroext true)
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !362 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !363
  %i.co = and i8 %i.cn, 2
  %.not.i3.i13 = icmp eq i8 %i.co, 0
  br i1 %.not.i3.i13, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i14: ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !368
  %i.cr = lshr i32 %1, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !30
  %i.cv = trunc i32 %1 to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = shl nuw i8 1, %i.cw
  %i.cy = or i8 %i.cu, %i.cx
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

_ZN8facebook5velox10FlatVectorIlE3setEil.exit16:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2969, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2971, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2972, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !30  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2973, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3654
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3654
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3657, !noalias !3654
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3654
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2980, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2981, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2982, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2983, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 17 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2984, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep193 = getelementptr i8, ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv155 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next156, %.critedge.us.us ] ; 3 uses
  %.03540.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep194 = getelementptr i8, ptr %invariant.gep193, i64 %indvars.iv155
  %i.cm = load i8, ptr %gep194, align 1, !tbaa !30
  %i.cn = icmp eq i8 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03540.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03540.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3660

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.ci, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.cx = icmp eq i8 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us98.us.lr.ph

.critedge.us.us98.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader
  %min.iters.check221 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check221, label %.critedge.us.us98.us.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %.critedge.us.us98.us.lr.ph
  %n.vec224 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec224 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert225.a = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat226.a = shufflevector <32 x i32> %broadcast.splatinsert225.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227.a = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat228.a = shufflevector <32 x i32> %broadcast.splatinsert227.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat230 = shufflevector <32 x i32> %broadcast.splatinsert229, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat232 = shufflevector <32 x i32> %broadcast.splatinsert231, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat232, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction233 = add <32 x i32> %broadcast.splat230, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert234 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat235 = shufflevector <32 x i32> %broadcast.splatinsert234, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body.interim241, %vector.ph222
  %index237 = phi i64 [ 0, %vector.ph222 ], [ %index.next239, %vector.body.interim241 ]
  %vec.ind238 = phi <32 x i32> [ %induction233, %vector.ph222 ], [ %vec.ind.next240, %vector.body.interim241 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind238, %broadcast.splat226.a
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat228.a
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not248 = icmp eq i32 %i.dn, 0
  br i1 %.not248, label %vector.body.interim241, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim241:                           ; preds = %vector.body236
  %vec.ind.next240 = add <32 x i32> %vec.ind238, %broadcast.splat235
  %index.next239 = add nuw i64 %index237, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next239, %n.vec224
  br i1 %i.do, label %middle.block242, label %vector.body236, !llvm.loop !3661

middle.block242:                                  ; preds = %vector.body.interim241
  %cmp.n243 = icmp eq i64 %i.dc, %n.vec224
  br i1 %cmp.n243, label %.split.us, label %.critedge.us.us98.us.preheader

.critedge.us.us98.us.preheader:                   ; preds = %.critedge.us.us98.us.lr.ph, %middle.block242
  %.ph = phi i64 [ %i.dc, %.critedge.us.us98.us.lr.ph ], [ %i.de, %middle.block242 ]
  %.041.us.us94.us210.ph = phi i32 [ %i.bv, %.critedge.us.us98.us.lr.ph ], [ %i.dh, %middle.block242 ]
  br label %.critedge.us.us98.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us: ; preds = %.critedge.us.us98.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us98.us, !llvm.loop !3662

.critedge.us.us98.us:                             ; preds = %.critedge.us.us98.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.ph, %.critedge.us.us98.us.preheader ]
  %.041.us.us94.us210 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.041.us.us94.us210.ph, %.critedge.us.us98.us.preheader ]
  %i.ds = add nsw i32 %.041.us.us94.us210, %i.bt  ; 2 uses
  %.not16.us.us100.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us100.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, !llvm.loop !3660

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep191 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03540.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep192 = getelementptr [4 x i8], ptr %invariant.gep191, i64 %indvars.iv152
  %i.dx = load i32, ptr %gep192, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.ci, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !30
  %i.eb = icmp eq i8 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03540.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit110, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03540.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3660

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us48
  %indvars.iv149 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next150, %.critedge.us48 ] ; 3 uses
  %.03540.us44 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us49, %.critedge.us48 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv149, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i19.us47 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.fb = sext i32 %.0.i.i19.us47 to i64
  %i.fc = getelementptr inbounds i8, ptr %i.eu, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !30
  %i.fe = icmp eq i8 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us48

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46
  %i.ff = add nsw i64 %.03540.us44, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit112, label %.critedge.us48

.critedge.us48:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46, %.lr.ph.split.split.us
  %.1.us49 = phi i64 [ %.03540.us44, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us46 ], [ %i.ff, %bb.q ], [ %.03540.us44, %.lr.ph.split.split.us ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next150 to i32
  %.not16.us50 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us50, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3660

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.fm, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !30
  %i.fr = icmp eq i8 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us60.us82.us.lr.ph

.critedge.us60.us82.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us60.us82.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us60.us82.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert211 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat212 = shufflevector <32 x i32> %broadcast.splatinsert211, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat214 = shufflevector <32 x i32> %broadcast.splatinsert213, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat216.a = shufflevector <32 x i32> %broadcast.splatinsert215, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat216.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat214, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert217 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat218 = shufflevector <32 x i32> %broadcast.splatinsert217, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat212
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not247 = icmp eq i32 %i.gh, 0
  br i1 %.not247, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat218
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3663

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us60.us82.us.preheader

.critedge.us60.us82.us.preheader:                 ; preds = %.critedge.us60.us82.us.lr.ph, %middle.block
  %.ph257 = phi i64 [ %i.fw, %.critedge.us60.us82.us.lr.ph ], [ %i.fy, %middle.block ]
  %.041.us55.us78.us209.ph = phi i32 [ %i.bv, %.critedge.us60.us82.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us60.us82.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us: ; preds = %.critedge.us60.us82.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us60.us82.us, !llvm.loop !3664

.critedge.us60.us82.us:                           ; preds = %.critedge.us60.us82.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.ph257, %.critedge.us60.us82.us.preheader ]
  %.041.us55.us78.us209 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.041.us55.us78.us209.ph, %.critedge.us60.us82.us.preheader ]
  %i.gm = add nsw i32 %.041.us55.us78.us209, %i.bt ; 2 uses
  %.not16.us62.us84.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us62.us84.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, !llvm.loop !3660

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03540 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !30
  %i.hd = icmp eq i8 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20
  %i.he = add nsw i64 %.03540, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit122, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv155 to i32
  br label %.split.us

.split.us.loopexit110:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv152 to i32
  br label %.split.us

.split.us.loopexit112:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv149 to i32
  br label %.split.us

.split.us.loopexit122:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, %middle.block242, %.split.us.loopexit122, %.split.us.loopexit112, %.split.us.loopexit110, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit112 ], [ %i.hj, %.split.us.loopexit122 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit110 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader ], [ %i.db, %middle.block242 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20, %bb.s
  %.1 = phi i64 [ %.03540, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20 ], [ %i.he, %bb.s ], [ %.03540, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3660

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us60.us82.us, %.critedge.us48, %.critedge.us, %vector.body236, %.critedge.us.us98.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us98.us ], [ %i.bw, %vector.body236 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us48 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us60.us82.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !2982, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.038, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !2990, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i26, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.y
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.an ; 2 uses
  %i.bv = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.af, %i.bv
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3683

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.021 = phi i32 [ %i.as, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.as, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !3678, !nonnull !74, !align !497
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = icmp eq i32 %.021, %i.bx
  br i1 %i.by, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !3682, !nonnull !74, !align !275 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 144 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !341 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ca) ; 0 uses
  %.pre.i15 = load ptr, ptr %i.cb, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11: ; preds = %bb.j, %bb.i
  %i.cf = phi ptr [ %i.cc, %bb.i ], [ %.pre.i15, %bb.j ]
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.f
  store i64 0, ptr %i.cg, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !362
  %.not.i12 = icmp eq ptr %i.ci, null
  br i1 %.not.i12, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, i32 noundef %i.ck, i1 noundef zeroext true)
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !362 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !363
  %i.co = and i8 %i.cn, 2
  %.not.i3.i13 = icmp eq i8 %i.co, 0
  br i1 %.not.i3.i13, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i14: ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !368
  %i.cr = lshr i32 %1, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !30
  %i.cv = trunc i32 %1 to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = shl nuw i8 1, %i.cw
  %i.cy = or i8 %i.cu, %i.cx
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

_ZN8facebook5velox10FlatVectorIlE3setEil.exit16:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3007, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3009, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3010, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !2009 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3011, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3684
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3684
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3687, !noalias !3684
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3684
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3018, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3019, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3020, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3021, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 17 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3022, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep193 = getelementptr [2 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv155 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next156, %.critedge.us.us ] ; 3 uses
  %.03540.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep194 = getelementptr [2 x i8], ptr %invariant.gep193, i64 %indvars.iv155
  %i.cm = load i16, ptr %gep194, align 2, !tbaa !2009
  %i.cn = icmp eq i16 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03540.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03540.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3690

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !2009
  %i.cx = icmp eq i16 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us98.us.lr.ph

.critedge.us.us98.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader
  %min.iters.check221 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check221, label %.critedge.us.us98.us.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %.critedge.us.us98.us.lr.ph
  %n.vec224 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec224 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert225.a = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat226.a = shufflevector <32 x i32> %broadcast.splatinsert225.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227.a = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat228.a = shufflevector <32 x i32> %broadcast.splatinsert227.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat230 = shufflevector <32 x i32> %broadcast.splatinsert229, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat232 = shufflevector <32 x i32> %broadcast.splatinsert231, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat232, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction233 = add <32 x i32> %broadcast.splat230, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert234 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat235 = shufflevector <32 x i32> %broadcast.splatinsert234, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body.interim241, %vector.ph222
  %index237 = phi i64 [ 0, %vector.ph222 ], [ %index.next239, %vector.body.interim241 ]
  %vec.ind238 = phi <32 x i32> [ %induction233, %vector.ph222 ], [ %vec.ind.next240, %vector.body.interim241 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind238, %broadcast.splat226.a
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat228.a
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not248 = icmp eq i32 %i.dn, 0
  br i1 %.not248, label %vector.body.interim241, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim241:                           ; preds = %vector.body236
  %vec.ind.next240 = add <32 x i32> %vec.ind238, %broadcast.splat235
  %index.next239 = add nuw i64 %index237, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next239, %n.vec224
  br i1 %i.do, label %middle.block242, label %vector.body236, !llvm.loop !3691

middle.block242:                                  ; preds = %vector.body.interim241
  %cmp.n243 = icmp eq i64 %i.dc, %n.vec224
  br i1 %cmp.n243, label %.split.us, label %.critedge.us.us98.us.preheader

.critedge.us.us98.us.preheader:                   ; preds = %.critedge.us.us98.us.lr.ph, %middle.block242
  %.ph = phi i64 [ %i.dc, %.critedge.us.us98.us.lr.ph ], [ %i.de, %middle.block242 ]
  %.041.us.us94.us210.ph = phi i32 [ %i.bv, %.critedge.us.us98.us.lr.ph ], [ %i.dh, %middle.block242 ]
  br label %.critedge.us.us98.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us: ; preds = %.critedge.us.us98.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us98.us, !llvm.loop !3692

.critedge.us.us98.us:                             ; preds = %.critedge.us.us98.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.ph, %.critedge.us.us98.us.preheader ]
  %.041.us.us94.us210 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %.041.us.us94.us210.ph, %.critedge.us.us98.us.preheader ]
  %i.ds = add nsw i32 %.041.us.us94.us210, %i.bt  ; 2 uses
  %.not16.us.us100.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us100.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, !llvm.loop !3690

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep191 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03540.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep192 = getelementptr [4 x i8], ptr %invariant.gep191, i64 %indvars.iv152
  %i.dx = load i32, ptr %gep192, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !2009
  %i.eb = icmp eq i16 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03540.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit110, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03540.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3690

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us48
  %indvars.iv149 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next150, %.critedge.us48 ] ; 3 uses
  %.03540.us44 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us49, %.critedge.us48 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv149, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45
  %.0.i.i19.us47 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us45 ]
  %i.fb = sext i32 %.0.i.i19.us47 to i64
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !2009
  %i.fe = icmp eq i16 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us48

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46
  %i.ff = add nsw i64 %.03540.us44, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit112, label %.critedge.us48

.critedge.us48:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46, %.lr.ph.split.split.us
  %.1.us49 = phi i64 [ %.03540.us44, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us46 ], [ %i.ff, %bb.q ], [ %.03540.us44, %.lr.ph.split.split.us ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next150 to i32
  %.not16.us50 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us50, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3690

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !2009
  %i.fr = icmp eq i16 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us60.us82.us.lr.ph

.critedge.us60.us82.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us60.us82.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us60.us82.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert211 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat212 = shufflevector <32 x i32> %broadcast.splatinsert211, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat214 = shufflevector <32 x i32> %broadcast.splatinsert213, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat216.a = shufflevector <32 x i32> %broadcast.splatinsert215, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat216.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat214, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert217 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat218 = shufflevector <32 x i32> %broadcast.splatinsert217, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat212
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not247 = icmp eq i32 %i.gh, 0
  br i1 %.not247, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat218
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3693

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us60.us82.us.preheader

.critedge.us60.us82.us.preheader:                 ; preds = %.critedge.us60.us82.us.lr.ph, %middle.block
  %.ph257 = phi i64 [ %i.fw, %.critedge.us60.us82.us.lr.ph ], [ %i.fy, %middle.block ]
  %.041.us55.us78.us209.ph = phi i32 [ %i.bv, %.critedge.us60.us82.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us60.us82.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us: ; preds = %.critedge.us60.us82.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us60.us82.us, !llvm.loop !3694

.critedge.us60.us82.us:                           ; preds = %.critedge.us60.us82.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.ph257, %.critedge.us60.us82.us.preheader ]
  %.041.us55.us78.us209 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ], [ %.041.us55.us78.us209.ph, %.critedge.us60.us82.us.preheader ]
  %i.gm = add nsw i32 %.041.us55.us78.us209, %i.bt ; 2 uses
  %.not16.us62.us84.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us62.us84.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, !llvm.loop !3690

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03540 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !2009
  %i.hd = icmp eq i16 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20
  %i.he = add nsw i64 %.03540, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit122, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv155 to i32
  br label %.split.us

.split.us.loopexit110:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv152 to i32
  br label %.split.us

.split.us.loopexit112:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv149 to i32
  br label %.split.us

.split.us.loopexit122:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader, %middle.block242, %.split.us.loopexit122, %.split.us.loopexit112, %.split.us.loopexit110, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit112 ], [ %i.hj, %.split.us.loopexit122 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit110 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us.preheader ], [ %i.db, %middle.block242 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us93.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us77.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20, %bb.s
  %.1 = phi i64 [ %.03540, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20 ], [ %i.he, %bb.s ], [ %.03540, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3690

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us60.us82.us, %.critedge.us48, %.critedge.us, %vector.body236, %.critedge.us.us98.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us98.us ], [ %i.bw, %vector.body236 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us48 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us60.us82.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !3020, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.038, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !3028, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i26, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.y
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.an ; 2 uses
  %i.bv = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.af, %i.bv
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3713

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.021 = phi i32 [ %i.as, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.as, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !3708, !nonnull !74, !align !497
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = icmp eq i32 %.021, %i.bx
  br i1 %i.by, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !3712, !nonnull !74, !align !275 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 144 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !341 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ca) ; 0 uses
  %.pre.i15 = load ptr, ptr %i.cb, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11: ; preds = %bb.j, %bb.i
  %i.cf = phi ptr [ %i.cc, %bb.i ], [ %.pre.i15, %bb.j ]
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.f
  store i64 0, ptr %i.cg, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !362
  %.not.i12 = icmp eq ptr %i.ci, null
  br i1 %.not.i12, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, i32 noundef %i.ck, i1 noundef zeroext true)
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !362 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !363
  %i.co = and i8 %i.cn, 2
  %.not.i3.i13 = icmp eq i8 %i.co, 0
  br i1 %.not.i3.i13, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i14: ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !368
  %i.cr = lshr i32 %1, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !30
  %i.cv = trunc i32 %1 to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = shl nuw i8 1, %i.cw
  %i.cy = or i8 %i.cu, %i.cx
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

_ZN8facebook5velox10FlatVectorIlE3setEil.exit16:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3045, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3047, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3048, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !137 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3049, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3714
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3714
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3717, !noalias !3714
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3714
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3056, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3057, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3058, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3059, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 17 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 20 uses
  %.not1640 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1640, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3060, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep194 = getelementptr [8 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv156 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next157, %.critedge.us.us ] ; 3 uses
  %.03641.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep195 = getelementptr [8 x i8], ptr %invariant.gep194, i64 %indvars.iv156
  %i.cm = load i64, ptr %gep195, align 8, !tbaa !137
  %i.cn = icmp eq i64 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03641.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03641.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next157 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3720

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !137
  %i.cx = icmp eq i64 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split.us, label %.critedge.us.us99.us.lr.ph

.critedge.us.us99.us.lr.ph:                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader
  %min.iters.check222 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check222, label %.critedge.us.us99.us.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %.critedge.us.us99.us.lr.ph
  %n.vec225 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec225 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert226.a = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat227.a = shufflevector <32 x i32> %broadcast.splatinsert226.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert228.a = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat229.a = shufflevector <32 x i32> %broadcast.splatinsert228.a, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat231 = shufflevector <32 x i32> %broadcast.splatinsert230, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat233 = shufflevector <32 x i32> %broadcast.splatinsert232, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul <32 x i32> %broadcast.splat233, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction234 = add <32 x i32> %broadcast.splat231, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert235 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat236 = shufflevector <32 x i32> %broadcast.splatinsert235, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body.interim242, %vector.ph223
  %index238 = phi i64 [ 0, %vector.ph223 ], [ %index.next240, %vector.body.interim242 ]
  %vec.ind239 = phi <32 x i32> [ %induction234, %vector.ph223 ], [ %vec.ind.next241, %vector.body.interim242 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind239, %broadcast.splat227.a
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat229.a
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not249 = icmp eq i32 %i.dn, 0
  br i1 %.not249, label %vector.body.interim242, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim242:                           ; preds = %vector.body237
  %vec.ind.next241 = add <32 x i32> %vec.ind239, %broadcast.splat236
  %index.next240 = add nuw i64 %index238, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next240, %n.vec225
  br i1 %i.do, label %middle.block243, label %vector.body237, !llvm.loop !3721

middle.block243:                                  ; preds = %vector.body.interim242
  %cmp.n244 = icmp eq i64 %i.dc, %n.vec225
  br i1 %cmp.n244, label %.split.us, label %.critedge.us.us99.us.preheader

.critedge.us.us99.us.preheader:                   ; preds = %.critedge.us.us99.us.lr.ph, %middle.block243
  %.ph = phi i64 [ %i.dc, %.critedge.us.us99.us.lr.ph ], [ %i.de, %middle.block243 ]
  %.042.us.us95.us211.ph = phi i32 [ %i.bv, %.critedge.us.us99.us.lr.ph ], [ %i.dh, %middle.block243 ]
  br label %.critedge.us.us99.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us: ; preds = %.critedge.us.us99.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split.us, label %.critedge.us.us99.us, !llvm.loop !3722

.critedge.us.us99.us:                             ; preds = %.critedge.us.us99.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us ], [ %.ph, %.critedge.us.us99.us.preheader ]
  %.042.us.us95.us211 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us ], [ %.042.us.us95.us211.ph, %.critedge.us.us99.us.preheader ]
  %i.ds = add nsw i32 %.042.us.us95.us211, %i.bt  ; 2 uses
  %.not16.us.us101.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us101.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us, !llvm.loop !3720

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep192 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03641.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep193 = getelementptr [4 x i8], ptr %invariant.gep192, i64 %indvars.iv153
  %i.dx = load i32, ptr %gep193, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !137
  %i.eb = icmp eq i64 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03641.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit111, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03641.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next154 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3720

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !73
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us49
  %indvars.iv150 = phi i64 [ %i.ei, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next151, %.critedge.us49 ] ; 3 uses
  %.03641.us45 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us50, %.critedge.us49 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv150, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !137
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us49, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46: ; preds = %.lr.ph.split.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %.0.i.i20.us48 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46 ]
  %i.fb = sext i32 %.0.i.i20.us48 to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !137
  %i.fe = icmp eq i64 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us49

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47
  %i.ff = add nsw i64 %.03641.us45, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us.loopexit113, label %.critedge.us49

.critedge.us49:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47, %.lr.ph.split.split.us
  %.1.us50 = phi i64 [ %.03641.us45, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us47 ], [ %i.ff, %bb.q ], [ %.03641.us45, %.lr.ph.split.split.us ]
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next151 to i32
  %.not16.us51 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us51, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3720

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !137
  %i.fr = icmp eq i64 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split.us, label %.critedge.us61.us83.us.lr.ph

.critedge.us61.us83.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us61.us83.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us61.us83.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat213 = shufflevector <32 x i32> %broadcast.splatinsert212, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat215 = shufflevector <32 x i32> %broadcast.splatinsert214, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert216 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat217.a = shufflevector <32 x i32> %broadcast.splatinsert216, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul <32 x i32> %broadcast.splat217.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat215, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert218 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat219 = shufflevector <32 x i32> %broadcast.splatinsert218, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat213
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not248 = icmp eq i32 %i.gh, 0
  br i1 %.not248, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat219
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3723

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us61.us83.us.preheader

.critedge.us61.us83.us.preheader:                 ; preds = %.critedge.us61.us83.us.lr.ph, %middle.block
  %.ph258 = phi i64 [ %i.fw, %.critedge.us61.us83.us.lr.ph ], [ %i.fy, %middle.block ]
  %.042.us56.us79.us210.ph = phi i32 [ %i.bv, %.critedge.us61.us83.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us61.us83.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us: ; preds = %.critedge.us61.us83.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split.us, label %.critedge.us61.us83.us, !llvm.loop !3724

.critedge.us61.us83.us:                           ; preds = %.critedge.us61.us83.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us ], [ %.ph258, %.critedge.us61.us83.us.preheader ]
  %.042.us56.us79.us210 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us ], [ %.042.us56.us79.us210.ph, %.critedge.us61.us83.us.preheader ]
  %i.gm = add nsw i32 %.042.us56.us79.us210, %i.bt ; 2 uses
  %.not16.us63.us85.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us63.us85.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us, !llvm.loop !3720

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03641 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !137
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21: ; preds = %bb.r
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !137
  %i.hd = icmp eq i64 %i.hc, %i.ad
  br i1 %i.hd, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21
  %i.he = add nsw i64 %.03641, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split.us.loopexit123, label %.critedge

.split.us.loopexit:                               ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv156 to i32
  br label %.split.us

.split.us.loopexit111:                            ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv153 to i32
  br label %.split.us

.split.us.loopexit113:                            ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv150 to i32
  br label %.split.us

.split.us.loopexit123:                            ; preds = %bb.s
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader, %middle.block243, %.split.us.loopexit123, %.split.us.loopexit113, %.split.us.loopexit111, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split.us.loopexit113 ], [ %i.hj, %.split.us.loopexit123 ], [ %i.hg, %.split.us.loopexit ], [ %i.hh, %.split.us.loopexit111 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us.preheader ], [ %i.db, %middle.block243 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us94.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us78.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !341 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.t, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.t:                                             ; preds = %.split.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.t, %.split.us
  %i.hs = phi ptr [ %i.hp, %.split.us ], [ %.pre.i, %bb.t ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !137
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.hv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !362 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !363
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.v, !prof !69

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !368
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.r, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21, %bb.s
  %.1 = phi i64 [ %.03641, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21 ], [ %i.he, %bb.s ], [ %.03641, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.r, !llvm.loop !3720

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us61.us83.us, %.critedge.us49, %.critedge.us, %vector.body237, %.critedge.us.us99.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.039 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us99.us ], [ %i.bw, %vector.body237 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us49 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us61.us83.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !3058, !nonnull !74, !align !497
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = icmp eq i32 %.039, %i.io
  br i1 %i.ip, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !3066, !nonnull !74, !align !275 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !341 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.x:                                             ; preds = %bb.w
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.is, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.x, %bb.w
  %i.iw = phi ptr [ %i.it, %bb.w ], [ %.pre.i27, %bb.x ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.iz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !362 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !363
  %i.jf = and i8 %i.je, 2
  %.not.i3.i25 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.z, !prof !69

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.y
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %i.bv = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.af, %i.bv
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3743

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.021 = phi i32 [ %i.as, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.as, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !3738, !nonnull !74, !align !497
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = icmp eq i32 %.021, %i.bx
  br i1 %i.by, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !3742, !nonnull !74, !align !275 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 144 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !341 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ca) ; 0 uses
  %.pre.i15 = load ptr, ptr %i.cb, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11: ; preds = %bb.j, %bb.i
  %i.cf = phi ptr [ %i.cc, %bb.i ], [ %.pre.i15, %bb.j ]
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.f
  store i64 0, ptr %i.cg, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !362
  %.not.i12 = icmp eq ptr %i.ci, null
  br i1 %.not.i12, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, i32 noundef %i.ck, i1 noundef zeroext true)
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !362 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !363
  %i.co = and i8 %i.cn, 2
  %.not.i3.i13 = icmp eq i8 %i.co, 0
  br i1 %.not.i3.i13, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i14: ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !368
  %i.cr = lshr i32 %1, 3
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !30
  %i.cv = trunc i32 %1 to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = shl nuw i8 1, %i.cw
  %i.cy = or i8 %i.cu, %i.cx
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

_ZN8facebook5velox10FlatVectorIlE3setEil.exit16:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3083, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3085, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3086, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = shl nsw i64 %i.ab, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  %.0.copyload.i.i = load i128, ptr %i.ad, align 1 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3087, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3744
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3744
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3747, !noalias !3744
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3744
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3094, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3095, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3096, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3097, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 10 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 13 uses
  %.not1640 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1640, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3098, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.critedge.us ], [ %i.cj, %.lr.ph.split.us ] ; 3 uses
  %.03641.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cm = add nsw i64 %indvars.iv130, %i.cl       ; 2 uses
  %i.cn = trunc nsw i64 %i.cm to i32
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.co = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cm
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us

bb.n:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.cs, %bb.m ], [ %i.ct, %bb.n ], [ %i.cn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cu = sext i32 %.0.i.i19.us to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cv
  %.0.copyload.i.i20.us = load i128, ptr %i.cw, align 1
  %i.cx = icmp eq i128 %.0.copyload.i.i20.us, %.0.copyload.i.i
  br i1 %i.cx, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us
  %i.cy = add nsw i64 %.03641.us, -1              ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us
  %.1.us = phi i64 [ %.03641.us, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us ], [ %i.cy, %bb.o ]
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, %i.ck ; 2 uses
  %i.da = trunc nsw i64 %indvars.iv.next131 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.da
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3750

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !73
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.dd
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.de = sext i32 %i.bv to i64
  %i.df = sext i32 %i.bt to i64
  %i.dg = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us50
  %indvars.iv127 = phi i64 [ %i.de, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next128, %.critedge.us50 ] ; 3 uses
  %.03641.us45 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us51, %.critedge.us50 ] ; 3 uses
  %i.dh = add nsw i64 %indvars.iv127, %i.dg       ; 4 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = and i64 %i.di, 67108863
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !137
  %i.dm = and i64 %i.dh, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %.not.i.i.us = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.us, label %.critedge.us50, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46: ; preds = %.lr.ph.split.split.us
  %i.dp = trunc nsw i64 %i.dh to i32
  %i.dq = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %i.dr = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dh
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47

bb.r:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46
  %.0.i.i19.us48 = phi i32 [ %i.dv, %bb.q ], [ %i.dw, %bb.r ], [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us46 ]
  %i.dx = sext i32 %.0.i.i19.us48 to i64
  %i.dy = shl nsw i64 %i.dx, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dy
  %.0.copyload.i.i20.us49 = load i128, ptr %i.dz, align 1
  %i.ea = icmp eq i128 %.0.copyload.i.i20.us49, %.0.copyload.i.i
  br i1 %i.ea, label %bb.s, label %.critedge.us50

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47
  %i.eb = add nsw i64 %.03641.us45, -1            ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.split.us.loopexit95, label %.critedge.us50

.critedge.us50:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47, %.lr.ph.split.split.us
  %.1.us51 = phi i64 [ %.03641.us45, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us47 ], [ %i.eb, %bb.s ], [ %.03641.us45, %.lr.ph.split.split.us ]
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, %i.df ; 2 uses
  %i.ed = trunc nsw i64 %indvars.iv.next128 to i32
  %.not16.us52 = icmp eq i32 %i.bw, %i.ed
  br i1 %.not16.us52, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3750

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ee = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.eg = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.eh = and i64 %i.eg, 1
  %.not.i6.i.us = icmp eq i64 %i.eh, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.ei = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ej = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  %.0.copyload.i.i20.us62.us85 = load i128, ptr %i.em, align 1
  %i.en = icmp eq i128 %.0.copyload.i.i20.us62.us85, %.0.copyload.i.i
  br i1 %i.en, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.eo = trunc i64 %i.bu to i32
  %i.ep = add i32 %i.eo, -1
  %i.eq = mul i32 %i.bt, %i.ep
  %i.er = add i32 %i.bv, %i.eq                    ; 3 uses
  %i.es = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.split.us, label %.critedge.us63.us86.us.lr.ph

.critedge.us63.us86.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us86.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us86.us.lr.ph
  %n.vec = and i64 %i.es, -32                     ; 3 uses
  %i.eu = and i64 %i.es, 31
  %i.ev = trunc i64 %n.vec to i32
  %i.ew = mul i32 %i.bt, %i.ev
  %i.ex = add i32 %i.bv, %i.ew
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat169 = shufflevector <32 x i32> %broadcast.splatinsert168, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert170 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat171 = shufflevector <32 x i32> %broadcast.splatinsert170, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat173.a = shufflevector <32 x i32> %broadcast.splatinsert172, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ey = mul <32 x i32> %broadcast.splat173.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat171, %i.ey
  %i.ez = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert174 = insertelement <32 x i32> poison, i32 %i.ez, i64 0
  %broadcast.splat175 = shufflevector <32 x i32> %broadcast.splatinsert174, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fa = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.fb = icmp eq <32 x i32> %i.fa, %broadcast.splat169
  %i.fc = freeze <32 x i1> %i.fb
  %i.fd = bitcast <32 x i1> %i.fc to i32
  %.not177 = icmp eq i32 %i.fd, 0
  br i1 %.not177, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat175
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !3751

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us63.us86.us.preheader

.critedge.us63.us86.us.preheader:                 ; preds = %.critedge.us63.us86.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.es, %.critedge.us63.us86.us.lr.ph ], [ %i.eu, %middle.block ]
  %.042.us57.us81.us167.ph = phi i32 [ %i.bv, %.critedge.us63.us86.us.lr.ph ], [ %i.ex, %middle.block ]
  br label %.critedge.us63.us86.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us86.us
  %i.ff = add nsw i64 %i.fh, -1                   ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split.us, label %.critedge.us63.us86.us, !llvm.loop !3752

.critedge.us63.us86.us:                           ; preds = %.critedge.us63.us86.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.fh = phi i64 [ %i.ff, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph, %.critedge.us63.us86.us.preheader ]
  %.042.us57.us81.us167 = phi i32 [ %i.fi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.042.us57.us81.us167.ph, %.critedge.us63.us86.us.preheader ]
  %i.fi = add nsw i32 %.042.us57.us81.us167, %i.bt ; 2 uses
  %.not16.us65.us88.us = icmp eq i32 %i.fi, %i.bw
  br i1 %.not16.us65.us88.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3750

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fj = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.fk = sext i32 %i.bv to i64
  %i.fl = sext i32 %i.bt to i64
  %i.fm = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fj, i64 %i.fm
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fk, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03641 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fn = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !137
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  %.not.i7.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21: ; preds = %bb.t
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.fw = sext i32 %i.fn to i64
  %i.fx = shl nsw i64 %i.fw, 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx
  %.0.copyload.i.i20 = load i128, ptr %i.fy, align 1
  %i.fz = icmp eq i128 %.0.copyload.i.i20, %.0.copyload.i.i
  br i1 %i.fz, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21
  %i.ga = add nsw i64 %.03641, -1                 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %.split.us.loopexit105, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gc = trunc nsw i64 %indvars.iv130 to i32
  br label %.split.us

.split.us.loopexit95:                             ; preds = %bb.s
  %i.gd = trunc nsw i64 %indvars.iv127 to i32
  br label %.split.us

.split.us.loopexit105:                            ; preds = %bb.u
  %i.ge = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %.split.us.loopexit105, %.split.us.loopexit95, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.ge, %.split.us.loopexit105 ], [ %i.gc, %.split.us.loopexit ], [ %i.gd, %.split.us.loopexit95 ], [ %i.er, %middle.block ], [ %i.er, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.er, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.gh = add nsw i32 %.us-phi, 1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 144 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !341 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gg) ; 0 uses
  %.pre.i = load ptr, ptr %i.gj, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gn = phi ptr [ %i.gk, %.split.us ], [ %.pre.i, %bb.v ]
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.f
  store i64 %i.gi, ptr %i.go, align 8, !tbaa !137
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.gq, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gg, i32 noundef %i.gs, i1 noundef zeroext true)
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !362 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 44
  %i.gv = load i8, ptr %i.gu, align 4, !tbaa !363
  %i.gw = and i8 %i.gv, 2
  %.not.i3.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !368
  %i.gz = lshr i32 %1, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !30
  %i.hd = trunc i32 %1 to i8
  %i.he = and i8 %i.hd, 7
  %i.hf = shl nuw i8 1, %i.he
  %i.hg = or i8 %i.hc, %i.hf
  store i8 %i.hg, ptr %i.hb, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21, %bb.u
  %.1 = phi i64 [ %.03641, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21 ], [ %i.ga, %bb.u ], [ %.03641, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fl ; 2 uses
  %i.hh = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hh
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3750

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us86.us, %.critedge.us50, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.039 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us63.us86.us ], [ %i.bw, %.critedge.us50 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hi = load ptr, ptr %i.bj, align 8, !tbaa !3096, !nonnull !74, !align !497
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = icmp eq i32 %.039, %i.hj
  br i1 %i.hk, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !3102, !nonnull !74, !align !275 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 144 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !341 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.z:                                             ; preds = %bb.y
  %i.hq = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hm) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hn, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.z, %bb.y
  %i.hr = phi ptr [ %i.ho, %bb.y ], [ %.pre.i27, %bb.z ]
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.f
  store i64 0, ptr %i.hs, align 8, !tbaa !137
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.hu, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hm, i32 noundef %i.hw, i1 noundef zeroext true)
  %i.hx = load ptr, ptr %i.ht, align 8, !tbaa !362 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 44
  %i.hz = load i8, ptr %i.hy, align 4, !tbaa !363
  %i.ia = and i8 %i.hz, 2
  %.not.i3.i25 = icmp eq i8 %i.ia, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.aa
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !368
  %i.id = lshr i32 %1, 3
end_hunk_15
begin_hunk_16_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ao ; 2 uses
  %i.bx = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.af, %i.bx
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3771

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.021 = phi i32 [ %i.au, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.au, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !3766, !nonnull !74, !align !497
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = icmp eq i32 %.021, %i.bz
  br i1 %i.ca, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !3770, !nonnull !74, !align !275 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 144 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !341 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

bb.j:                                             ; preds = %bb.i
  %i.cg = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cc) ; 0 uses
  %.pre.i15 = load ptr, ptr %i.cd, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11: ; preds = %bb.j, %bb.i
  %i.ch = phi ptr [ %i.ce, %bb.i ], [ %.pre.i15, %bb.j ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.f
  store i64 0, ptr %i.ci, align 8, !tbaa !137
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !362
  %.not.i12 = icmp eq ptr %i.ck, null
  br i1 %.not.i12, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.cc, i32 noundef %i.cm, i1 noundef zeroext true)
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !362 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !363
  %i.cq = and i8 %i.cp, 2
  %.not.i3.i13 = icmp eq i8 %i.cq, 0
  br i1 %.not.i3.i13, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i14: ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !368
  %i.ct = lshr i32 %1, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.cx = trunc i32 %1 to i8
  %i.cy = and i8 %i.cx, 7
  %i.cz = shl nuw i8 1, %i.cy
  %i.da = or i8 %i.cw, %i.cz
  store i8 %i.da, ptr %i.cv, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

_ZN8facebook5velox10FlatVectorIlE3setEil.exit16:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3119, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3121, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3122, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !2782 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3123, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3772
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3772
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3775, !noalias !3772
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3772
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3130, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3131, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3132, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3133, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 10 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 13 uses
  %.not1638 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1638, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3134, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = fcmp uno float %i.ad, 0.000000e+00      ; 4 uses
  %i.ch = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ci = trunc nuw i8 %i.ch to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ck = sext i32 %i.bv to i64
  %i.cl = sext i32 %i.bt to i64
  %i.cm = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.critedge.us ], [ %i.ck, %.lr.ph.split.us ] ; 3 uses
  %.03439.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cn = add nsw i64 %indvars.iv131, %i.cm       ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us

bb.n:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.ct, %bb.m ], [ %i.cu, %bb.n ], [ %i.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cv = sext i32 %.0.i.i19.us to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !2782 ; 2 uses
  %i.cy = fcmp uno float %i.cx, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cg, i1 false
  %i.cz = fcmp oeq float %i.cx, %i.ad
  %.0.i.i21.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cz
  br i1 %.0.i.i21.us, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us
  %i.da = add nsw i64 %.03439.us, -1              ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us
  %.1.us = phi i64 [ %.03439.us, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us ], [ %i.da, %bb.o ]
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, %i.cl ; 2 uses
  %i.dc = trunc nsw i64 %indvars.iv.next132 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.dc
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3778

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.de = load i8, ptr %i.dd, align 1, !range !73
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.dg = sext i32 %i.bv to i64
  %i.dh = sext i32 %i.bt to i64
  %i.di = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us49
  %indvars.iv128 = phi i64 [ %i.dg, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next129, %.critedge.us49 ] ; 3 uses
  %.03439.us43 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us50, %.critedge.us49 ] ; 3 uses
  %i.dj = add nsw i64 %indvars.iv128, %i.di       ; 4 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = and i64 %i.dk, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !137
  %i.do = and i64 %i.dj, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.us = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.us, label %.critedge.us49, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44: ; preds = %.lr.ph.split.split.us
  %i.dr = trunc nsw i64 %i.dj to i32
  %i.ds = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %i.dt = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dj
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45

bb.r:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %.0.i.i19.us46 = phi i32 [ %i.dx, %bb.q ], [ %i.dy, %bb.r ], [ %i.dr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44 ]
  %i.dz = sext i32 %.0.i.i19.us46 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !2782 ; 2 uses
  %i.ec = fcmp uno float %i.eb, 0.000000e+00
  %or.cond.i.i.us47 = select i1 %i.ec, i1 %i.cg, i1 false
  %i.ed = fcmp oeq float %i.eb, %i.ad
  %.0.i.i21.us48 = select i1 %or.cond.i.i.us47, i1 true, i1 %i.ed
  br i1 %.0.i.i21.us48, label %bb.s, label %.critedge.us49

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45
  %i.ee = add nsw i64 %.03439.us43, -1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.split.us.loopexit96, label %.critedge.us49

.critedge.us49:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45, %.lr.ph.split.split.us
  %.1.us50 = phi i64 [ %.03439.us43, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us45 ], [ %i.ee, %bb.s ], [ %.03439.us43, %.lr.ph.split.split.us ]
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, %i.dh ; 2 uses
  %i.eg = trunc nsw i64 %indvars.iv.next129 to i32
  %.not16.us51 = icmp eq i32 %i.bw, %i.eg
  br i1 %.not16.us51, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3778

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.eh = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.ek = and i64 %i.ej, 1
  %.not.i6.i.us = icmp eq i64 %i.ek, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !2782 ; 2 uses
  %i.eq = fcmp uno float %i.ep, 0.000000e+00
  %or.cond.i.i.us61.us85 = select i1 %i.eq, i1 %i.cg, i1 false
  %i.er = fcmp oeq float %i.ep, %i.ad
  %.0.i.i21.us62.us86 = select i1 %or.cond.i.i.us61.us85, i1 true, i1 %i.er
  br i1 %.0.i.i21.us62.us86, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.es = trunc i64 %i.bu to i32
  %i.et = add i32 %i.es, -1
  %i.eu = mul i32 %i.bt, %i.et
  %i.ev = add i32 %i.bv, %i.eu                    ; 3 uses
  %i.ew = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.split.us, label %.critedge.us63.us87.us.lr.ph

.critedge.us63.us87.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us87.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us87.us.lr.ph
  %n.vec = and i64 %i.ew, -32                     ; 3 uses
  %i.ey = and i64 %i.ew, 31
  %i.ez = trunc i64 %n.vec to i32
  %i.fa = mul i32 %i.bt, %i.ez
  %i.fb = add i32 %i.bv, %i.fa
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat170 = shufflevector <32 x i32> %broadcast.splatinsert169, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat172 = shufflevector <32 x i32> %broadcast.splatinsert171, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert173 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat174.a = shufflevector <32 x i32> %broadcast.splatinsert173, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fc = mul <32 x i32> %broadcast.splat174.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat172, %i.fc
  %i.fd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert175 = insertelement <32 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat176 = shufflevector <32 x i32> %broadcast.splatinsert175, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fe = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.ff = icmp eq <32 x i32> %i.fe, %broadcast.splat170
  %i.fg = freeze <32 x i1> %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not178 = icmp eq i32 %i.fh, 0
  br i1 %.not178, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat176
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !3779

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us63.us87.us.preheader

.critedge.us63.us87.us.preheader:                 ; preds = %.critedge.us63.us87.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.ew, %.critedge.us63.us87.us.lr.ph ], [ %i.ey, %middle.block ]
  %.040.us56.us81.us168.ph = phi i32 [ %i.bv, %.critedge.us63.us87.us.lr.ph ], [ %i.fb, %middle.block ]
  br label %.critedge.us63.us87.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us87.us
  %i.fj = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.split.us, label %.critedge.us63.us87.us, !llvm.loop !3780

.critedge.us63.us87.us:                           ; preds = %.critedge.us63.us87.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.fl = phi i64 [ %i.fj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph, %.critedge.us63.us87.us.preheader ]
  %.040.us56.us81.us168 = phi i32 [ %i.fm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.040.us56.us81.us168.ph, %.critedge.us63.us87.us.preheader ]
  %i.fm = add nsw i32 %.040.us56.us81.us168, %i.bt ; 2 uses
  %.not16.us65.us89.us = icmp eq i32 %i.fm, %i.bw
  br i1 %.not16.us65.us89.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3778

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.fo = sext i32 %i.bv to i64
  %i.fp = sext i32 %i.bt to i64
  %i.fq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03439 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = lshr i64 %i.fs, 6
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !137
  %i.fw = and i64 %i.fs, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fv
  %.not.i7.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20: ; preds = %bb.t
  %i.fz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ga = sext i32 %i.fr to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !2782 ; 2 uses
  %i.gd = fcmp uno float %i.gc, 0.000000e+00
  %or.cond.i.i = select i1 %i.gd, i1 %i.cg, i1 false
  %i.ge = fcmp oeq float %i.gc, %i.ad
  %.0.i.i21 = select i1 %or.cond.i.i, i1 true, i1 %i.ge
  br i1 %.0.i.i21, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20
  %i.gf = add nsw i64 %.03439, -1                 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.split.us.loopexit106, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gh = trunc nsw i64 %indvars.iv131 to i32
  br label %.split.us

.split.us.loopexit96:                             ; preds = %bb.s
  %i.gi = trunc nsw i64 %indvars.iv128 to i32
  br label %.split.us

.split.us.loopexit106:                            ; preds = %bb.u
  %i.gj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %.split.us.loopexit106, %.split.us.loopexit96, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.gj, %.split.us.loopexit106 ], [ %i.gh, %.split.us.loopexit ], [ %i.gi, %.split.us.loopexit96 ], [ %i.ev, %middle.block ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.gm = add nsw i32 %.us-phi, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 144 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !341 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gl) ; 0 uses
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gs = phi ptr [ %i.gp, %.split.us ], [ %.pre.i, %bb.v ]
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.f
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !137
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.gv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gl, i32 noundef %i.gx, i1 noundef zeroext true)
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !362 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !363
  %i.hb = and i8 %i.ha, 2
  %.not.i3.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !368
  %i.he = lshr i32 %1, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !30
  %i.hi = trunc i32 %1 to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = shl nuw i8 1, %i.hj
  %i.hl = or i8 %i.hh, %i.hk
  store i8 %i.hl, ptr %i.hg, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20, %bb.u
  %.1 = phi i64 [ %.03439, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20 ], [ %i.gf, %bb.u ], [ %.03439, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fp ; 2 uses
  %i.hm = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hm
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3778

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us87.us, %.critedge.us49, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.037 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us63.us87.us ], [ %i.bw, %.critedge.us49 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hn = load ptr, ptr %i.bj, align 8, !tbaa !3132, !nonnull !74, !align !497
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = icmp eq i32 %.037, %i.ho
  br i1 %i.hp, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !3138, !nonnull !74, !align !275 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 144 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !341 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.z:                                             ; preds = %bb.y
  %i.hv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hr) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hs, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.z, %bb.y
  %i.hw = phi ptr [ %i.ht, %bb.y ], [ %.pre.i27, %bb.z ]
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.f
  store i64 0, ptr %i.hx, align 8, !tbaa !137
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.hz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hr, i32 noundef %i.ib, i1 noundef zeroext true)
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !362 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !363
  %i.if = and i8 %i.ie, 2
  %.not.i3.i25 = icmp eq i8 %i.if, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.aa
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
end_hunk_16
begin_hunk_17_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ao ; 2 uses
  %i.bx = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.af, %i.bx
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3799

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.021 = phi i32 [ %i.au, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.au, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !3794, !nonnull !74, !align !497
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = icmp eq i32 %.021, %i.bz
  br i1 %i.ca, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !3798, !nonnull !74, !align !275 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 144 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !341 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

bb.j:                                             ; preds = %bb.i
  %i.cg = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cc) ; 0 uses
  %.pre.i15 = load ptr, ptr %i.cd, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11: ; preds = %bb.j, %bb.i
  %i.ch = phi ptr [ %i.ce, %bb.i ], [ %.pre.i15, %bb.j ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.f
  store i64 0, ptr %i.ci, align 8, !tbaa !137
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !362
  %.not.i12 = icmp eq ptr %i.ck, null
  br i1 %.not.i12, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.cc, i32 noundef %i.cm, i1 noundef zeroext true)
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !362 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !363
  %i.cq = and i8 %i.cp, 2
  %.not.i3.i13 = icmp eq i8 %i.cq, 0
  br i1 %.not.i3.i13, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i14: ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !368
  %i.ct = lshr i32 %1, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !30
  %i.cx = trunc i32 %1 to i8
  %i.cy = and i8 %i.cx, 7
  %i.cz = shl nuw i8 1, %i.cy
  %i.da = or i8 %i.cw, %i.cz
  store i8 %i.da, ptr %i.cv, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit16

_ZN8facebook5velox10FlatVectorIlE3setEil.exit16:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i14, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i11, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3155, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3157, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3158, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !2797 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3159, !nonnull !74, !align !275 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !339, !range !73, !noundef !74
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !331
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3800
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3800
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !30, !alias.scope !3803, !noalias !3800
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3800
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !30
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3166, !nonnull !74, !align !275
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !329
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !3167, !nonnull !74, !align !497 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !3168, !nonnull !74, !align !497 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3169, !nonnull !74, !align !497
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !3
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !3
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 10 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !3  ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !3  ; 13 uses
  %.not1638 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1638, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3170, !nonnull !74, !align !275 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = fcmp uno double %i.ad, 0.000000e+00     ; 4 uses
  %i.ch = load i8, ptr %i.ce, align 2, !tbaa !338, !range !73, !noundef !74
  %i.ci = trunc nuw i8 %i.ch to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ck = sext i32 %i.bv to i64
  %i.cl = sext i32 %i.bt to i64
  %i.cm = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %.critedge.us ], [ %i.ck, %.lr.ph.split.us ] ; 3 uses
  %.03439.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cn = add nsw i64 %indvars.iv131, %i.cm       ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us

bb.n:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.ct, %bb.m ], [ %i.cu, %bb.n ], [ %i.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cv = sext i32 %.0.i.i19.us to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !2797 ; 2 uses
  %i.cy = fcmp uno double %i.cx, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cg, i1 false
  %i.cz = fcmp oeq double %i.cx, %i.ad
  %.0.i.i21.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cz
  br i1 %.0.i.i21.us, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us
  %i.da = add nsw i64 %.03439.us, -1              ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us
  %.1.us = phi i64 [ %.03439.us, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us ], [ %i.da, %bb.o ]
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, %i.cl ; 2 uses
  %i.dc = trunc nsw i64 %indvars.iv.next132 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.dc
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3806

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.de = load i8, ptr %i.dd, align 1, !range !73
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.dg = sext i32 %i.bv to i64
  %i.dh = sext i32 %i.bt to i64
  %i.di = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us49
  %indvars.iv128 = phi i64 [ %i.dg, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next129, %.critedge.us49 ] ; 3 uses
  %.03439.us43 = phi i64 [ %i.bu, %.lr.ph.split.split.us.preheader ], [ %.1.us50, %.critedge.us49 ] ; 3 uses
  %i.dj = add nsw i64 %indvars.iv128, %i.di       ; 4 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = and i64 %i.dk, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !137
  %i.do = and i64 %i.dj, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.us = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.us, label %.critedge.us49, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44: ; preds = %.lr.ph.split.split.us
  %i.dr = trunc nsw i64 %i.dj to i32
  %i.ds = load ptr, ptr %i.cd, align 8, !tbaa !487
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %i.dt = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dj
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45

bb.r:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %i.cf, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44
  %.0.i.i19.us46 = phi i32 [ %i.dx, %bb.q ], [ %i.dy, %bb.r ], [ %i.dr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us44 ]
  %i.dz = sext i32 %.0.i.i19.us46 to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !2797 ; 2 uses
  %i.ec = fcmp uno double %i.eb, 0.000000e+00
  %or.cond.i.i.us47 = select i1 %i.ec, i1 %i.cg, i1 false
  %i.ed = fcmp oeq double %i.eb, %i.ad
  %.0.i.i21.us48 = select i1 %or.cond.i.i.us47, i1 true, i1 %i.ed
  br i1 %.0.i.i21.us48, label %bb.s, label %.critedge.us49

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45
  %i.ee = add nsw i64 %.03439.us43, -1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.split.us.loopexit96, label %.critedge.us49

.critedge.us49:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45, %.lr.ph.split.split.us
  %.1.us50 = phi i64 [ %.03439.us43, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us45 ], [ %i.ee, %bb.s ], [ %.03439.us43, %.lr.ph.split.split.us ]
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, %i.dh ; 2 uses
  %i.eg = trunc nsw i64 %indvars.iv.next129 to i32
  %.not16.us51 = icmp eq i32 %i.bw, %i.eg
  br i1 %.not16.us51, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3806

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.eh = load i8, ptr %i.cb, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !137
  %i.ek = and i64 %i.ej, 1
  %.not.i6.i.us = icmp eq i64 %i.ek, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !488
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !2797 ; 2 uses
  %i.eq = fcmp uno double %i.ep, 0.000000e+00
  %or.cond.i.i.us61.us85 = select i1 %i.eq, i1 %i.cg, i1 false
  %i.er = fcmp oeq double %i.ep, %i.ad
  %.0.i.i21.us62.us86 = select i1 %or.cond.i.i.us61.us85, i1 true, i1 %i.er
  br i1 %.0.i.i21.us62.us86, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.es = trunc i64 %i.bu to i32
  %i.et = add i32 %i.es, -1
  %i.eu = mul i32 %i.bt, %i.et
  %i.ev = add i32 %i.bv, %i.eu                    ; 3 uses
  %i.ew = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.split.us, label %.critedge.us63.us87.us.lr.ph

.critedge.us63.us87.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us87.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us87.us.lr.ph
  %n.vec = and i64 %i.ew, -32                     ; 3 uses
  %i.ey = and i64 %i.ew, 31
  %i.ez = trunc i64 %n.vec to i32
  %i.fa = mul i32 %i.bt, %i.ez
  %i.fb = add i32 %i.bv, %i.fa
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat170 = shufflevector <32 x i32> %broadcast.splatinsert169, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat172 = shufflevector <32 x i32> %broadcast.splatinsert171, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert173 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat174.a = shufflevector <32 x i32> %broadcast.splatinsert173, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fc = mul <32 x i32> %broadcast.splat174.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat172, %i.fc
  %i.fd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert175 = insertelement <32 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat176 = shufflevector <32 x i32> %broadcast.splatinsert175, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fe = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.ff = icmp eq <32 x i32> %i.fe, %broadcast.splat170
  %i.fg = freeze <32 x i1> %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not178 = icmp eq i32 %i.fh, 0
  br i1 %.not178, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat176
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !3807

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us63.us87.us.preheader

.critedge.us63.us87.us.preheader:                 ; preds = %.critedge.us63.us87.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.ew, %.critedge.us63.us87.us.lr.ph ], [ %i.ey, %middle.block ]
  %.040.us56.us81.us168.ph = phi i32 [ %i.bv, %.critedge.us63.us87.us.lr.ph ], [ %i.fb, %middle.block ]
  br label %.critedge.us63.us87.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us87.us
  %i.fj = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.split.us, label %.critedge.us63.us87.us, !llvm.loop !3808

.critedge.us63.us87.us:                           ; preds = %.critedge.us63.us87.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.fl = phi i64 [ %i.fj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph, %.critedge.us63.us87.us.preheader ]
  %.040.us56.us81.us168 = phi i32 [ %i.fm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.040.us56.us81.us168.ph, %.critedge.us63.us87.us.preheader ]
  %i.fm = add nsw i32 %.040.us56.us81.us168, %i.bt ; 2 uses
  %.not16.us65.us89.us = icmp eq i32 %i.fm, %i.bw
  br i1 %.not16.us65.us89.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3806

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fn = load ptr, ptr %i.cc, align 8, !tbaa !331
  %i.fo = sext i32 %i.bv to i64
  %i.fp = sext i32 %i.bt to i64
  %i.fq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03439 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fr = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = lshr i64 %i.fs, 6
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !137
  %i.fw = and i64 %i.fs, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fv
  %.not.i7.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20: ; preds = %bb.t
  %i.fz = load ptr, ptr %i.cd, align 8, !tbaa !487
  %i.ga = sext i32 %i.fr to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !2797 ; 2 uses
  %i.gd = fcmp uno double %i.gc, 0.000000e+00
  %or.cond.i.i = select i1 %i.gd, i1 %i.cg, i1 false
  %i.ge = fcmp oeq double %i.gc, %i.ad
  %.0.i.i21 = select i1 %or.cond.i.i, i1 true, i1 %i.ge
  br i1 %.0.i.i21, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20
  %i.gf = add nsw i64 %.03439, -1                 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.split.us.loopexit106, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gh = trunc nsw i64 %indvars.iv131 to i32
  br label %.split.us

.split.us.loopexit96:                             ; preds = %bb.s
  %i.gi = trunc nsw i64 %indvars.iv128 to i32
  br label %.split.us

.split.us.loopexit106:                            ; preds = %bb.u
  %i.gj = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %.split.us.loopexit106, %.split.us.loopexit96, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.gj, %.split.us.loopexit106 ], [ %i.gh, %.split.us.loopexit ], [ %i.gi, %.split.us.loopexit96 ], [ %i.ev, %middle.block ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.gm = add nsw i32 %.us-phi, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 144 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !341 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gl) ; 0 uses
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gs = phi ptr [ %i.gp, %.split.us ], [ %.pre.i, %bb.v ]
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.f
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !137
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !362
  %.not.i22 = icmp eq ptr %i.gv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gl, i32 noundef %i.gx, i1 noundef zeroext true)
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !362 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !363
  %i.hb = and i8 %i.ha, 2
  %.not.i3.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !368
  %i.he = lshr i32 %1, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !30
  %i.hi = trunc i32 %1 to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = shl nuw i8 1, %i.hj
  %i.hl = or i8 %i.hh, %i.hk
  store i8 %i.hl, ptr %i.hg, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20, %bb.u
  %.1 = phi i64 [ %.03439, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20 ], [ %i.gf, %bb.u ], [ %.03439, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fp ; 2 uses
  %i.hm = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hm
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3806

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us87.us, %.critedge.us49, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.037 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us63.us87.us ], [ %i.bw, %.critedge.us49 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hn = load ptr, ptr %i.bj, align 8, !tbaa !3168, !nonnull !74, !align !497
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = icmp eq i32 %.037, %i.ho
  br i1 %i.hp, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !3174, !nonnull !74, !align !275 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 144 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !341 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.z:                                             ; preds = %bb.y
  %i.hv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hr) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hs, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.z, %bb.y
  %i.hw = phi ptr [ %i.ht, %bb.y ], [ %.pre.i27, %bb.z ]
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.f
  store i64 0, ptr %i.hx, align 8, !tbaa !137
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !362
  %.not.i24 = icmp eq ptr %i.hz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hr, i32 noundef %i.ib, i1 noundef zeroext true)
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !362 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !363
  %i.if = and i8 %i.ie, 2
  %.not.i3.i25 = icmp eq i8 %i.if, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.aa
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
end_hunk_17
begin_hunk_18_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E_clIiEEDaSL_:bb.a
  %.not = icmp eq i32 %i.af, %i.ca
  br i1 %.not, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.b, !llvm.loop !3879

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %bb.h, %bb.a, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.023 = phi i32 [ %i.ax, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %i.ax, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.ae, %bb.a ], [ %i.af, %bb.h ]
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !3874, !nonnull !74, !align !497
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = icmp eq i32 %.023, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit18

bb.i:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !3878, !nonnull !74, !align !275 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 144 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !341 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.j, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i13

bb.j:                                             ; preds = %bb.i
  %i.cj = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cf) ; 0 uses
  %.pre.i17 = load ptr, ptr %i.cg, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i13

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i13: ; preds = %bb.j, %bb.i
  %i.ck = phi ptr [ %i.ch, %bb.i ], [ %.pre.i17, %bb.j ]
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.f
  store i64 0, ptr %i.cl, align 8, !tbaa !137
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !362
  %.not.i14 = icmp eq ptr %i.cn, null
  br i1 %.not.i14, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit18, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.cf, i32 noundef %i.cp, i1 noundef zeroext true)
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !362 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !363
  %i.ct = and i8 %i.cs, 2
  %.not.i3.i15 = icmp eq i8 %i.ct, 0
  br i1 %.not.i3.i15, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i16, label %bb.l, !prof !69

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i16: ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !368
  %i.cw = lshr i32 %1, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !30
  %i.da = trunc i32 %1 to i8
  %i.db = and i8 %i.da, 7
  %i.dc = shl nuw i8 1, %i.db
  %i.dd = or i8 %i.cz, %i.dc
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit18

_ZN8facebook5velox10FlatVectorIlE3setEil.exit18:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i16, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i13, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.644", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3267, !nonnull !74, !align !275
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3269, !nonnull !74, !align !275
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = sext i32 %1 to i64                       ; 5 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3270, !nonnull !74, !align !275 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !487
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !338, !range !73, !noundef !74
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !339, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8, !tbaa !137 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !137 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3271, !nonnull !74, !align !275 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !487
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 58
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !338, !range !73, !noundef !74
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 59
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !339, !range !73, !noundef !74
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !331
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.f
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit, %bb.f, %bb.g
  %.0.i.i20 = phi i32 [ %i.as, %bb.g ], [ %i.ao, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit ]
  %i.at = sext i32 %.0.i.i20 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !48

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3880
  store i64 0, ptr %2, align 16, !tbaa !30, !noalias !3880
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.aw, align 16, !tbaa !30, !alias.scope !3883, !noalias !3880
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3880
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ax

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !3278, !nonnull !74, !align !275
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !329
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3279, !nonnull !74, !align !497 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3280, !nonnull !74, !align !497 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !3281, !nonnull !74, !align !497
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 2 uses
  %i.bo = icmp sgt i64 %i.av, 0                   ; 3 uses
  %i.bp = add nsw i32 %i.bn, -1
  %i.bq = select i1 %i.bo, i32 0, i32 %i.bp
  store i32 %i.bq, ptr %i.bh, align 4, !tbaa !3
  %i.br = select i1 %i.bo, i32 %i.bn, i32 -1
  store i32 %i.br, ptr %i.bj, align 4, !tbaa !3
  %i.bs = select i1 %i.bo, i32 1, i32 -1          ; 10 uses
  store i32 %i.bs, ptr %i.bl, align 4, !tbaa !3
  %i.bt = tail call noundef i64 @llvm.abs.i64(i64 %i.av, i1 true) ; 6 uses
  %i.bu = load i32, ptr %i.bh, align 4, !tbaa !3  ; 9 uses
  %i.bv = load i32, ptr %i.bj, align 4, !tbaa !3  ; 13 uses
  %.not1647 = icmp eq i32 %i.bu, %i.bv
  br i1 %.not1647, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !3282, !nonnull !74, !align !275 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !337 ; 4 uses
  %.not.i = icmp eq ptr %i.bz, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 59 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 3 uses
  %i.cf = load i8, ptr %i.cd, align 2, !tbaa !338, !range !73, !noundef !74
  %i.cg = trunc nuw i8 %i.cf to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !487
  %i.ci = sext i32 %i.bu to i64
  %i.cj = sext i32 %i.bs to i64
  %i.ck = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.critedge.us ], [ %i.ci, %.lr.ph.split.us ] ; 3 uses
  %.04348.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bt, %.lr.ph.split.us ] ; 2 uses
  %i.cl = add nsw i64 %indvars.iv143, %i.ck       ; 2 uses
  %i.cm = trunc nsw i64 %i.cl to i32
  br i1 %i.cg, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !339, !range !73, !noundef !74
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !331
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cl
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us

bb.n:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.ce, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i21.us = phi i32 [ %i.cr, %bb.m ], [ %i.cs, %bb.n ], [ %i.cm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.ct = sext i32 %.0.i.i21.us to i64
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.ct ; 2 uses
  %.sroa.0.0.copyload.i22.us = load i64, ptr %i.cu, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.2.0.copyload.i24.us = load i64, ptr %.sroa.2.0..sroa_idx.i23.us, align 8, !tbaa !137
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i22.us, %.sroa.0.0.copyload.i
  %i.cw = icmp eq i64 %.sroa.2.0.copyload.i24.us, %.sroa.2.0.copyload.i
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %i.cx, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us
  %i.cy = add nsw i64 %.04348.us, -1              ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.split.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us
  %.1.us = phi i64 [ %.04348.us, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us ], [ %i.cy, %bb.o ]
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, %i.cj ; 2 uses
  %i.da = trunc nsw i64 %indvars.iv.next144 to i32
  %.not16.us = icmp eq i32 %i.bv, %i.da
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3886

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !73
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.dd
  br i1 %or.cond.i, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.de = sext i32 %i.bu to i64
  %i.df = sext i32 %i.bs to i64
  %i.dg = sext i32 %i.k to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.critedge.us59
  %indvars.iv140 = phi i64 [ %i.de, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next141, %.critedge.us59 ] ; 3 uses
  %.04348.us52 = phi i64 [ %i.bt, %.lr.ph.split.split.us.preheader ], [ %.1.us60, %.critedge.us59 ] ; 3 uses
  %i.dh = add nsw i64 %indvars.iv140, %i.dg       ; 4 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = and i64 %i.di, 67108863
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !137
  %i.dm = and i64 %i.dh, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %.not.i.i.us = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.us, label %.critedge.us59, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53: ; preds = %.lr.ph.split.split.us
  %i.dp = trunc nsw i64 %i.dh to i32
  %i.dq = load ptr, ptr %i.cc, align 8, !tbaa !487
  br i1 %i.cg, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53
  %i.dr = load i8, ptr %i.ca, align 1, !tbaa !339, !range !73, !noundef !74
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.cb, align 8, !tbaa !331
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dh
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54

bb.r:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.ce, align 8, !tbaa !488
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53
  %.0.i.i21.us55 = phi i32 [ %i.dv, %bb.q ], [ %i.dw, %bb.r ], [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us53 ]
  %i.dx = sext i32 %.0.i.i21.us55 to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dx ; 2 uses
  %.sroa.0.0.copyload.i22.us56 = load i64, ptr %i.dy, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us57 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.2.0.copyload.i24.us58 = load i64, ptr %.sroa.2.0..sroa_idx.i23.us57, align 8, !tbaa !137
  %i.dz = icmp eq i64 %.sroa.0.0.copyload.i22.us56, %.sroa.0.0.copyload.i
  %i.ea = icmp eq i64 %.sroa.2.0.copyload.i24.us58, %.sroa.2.0.copyload.i
  %i.eb = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %i.eb, label %bb.s, label %.critedge.us59

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54
  %i.ec = add nsw i64 %.04348.us52, -1            ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split.us.loopexit108, label %.critedge.us59

.critedge.us59:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54, %.lr.ph.split.split.us
  %.1.us60 = phi i64 [ %.04348.us52, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us54 ], [ %i.ec, %bb.s ], [ %.04348.us52, %.lr.ph.split.split.us ]
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, %i.df ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next141 to i32
  %.not16.us61 = icmp eq i32 %i.bv, %i.ee
  br i1 %.not16.us61, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.us, !llvm.loop !3886

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ef = load i8, ptr %i.ca, align 1, !tbaa !339, !range !73, !noundef !74
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.eh = load i64, ptr %i.bz, align 8, !tbaa !137
  %i.ei = and i64 %i.eh, 1
  %.not.i6.i.us = icmp eq i64 %i.ei, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.ej = load ptr, ptr %i.cc, align 8, !tbaa !487
  %i.ek = load i32, ptr %i.ce, align 8, !tbaa !488
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.el ; 2 uses
  %.sroa.0.0.copyload.i22.us71.us96 = load i64, ptr %i.em, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23.us72.us97 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.2.0.copyload.i24.us73.us98 = load i64, ptr %.sroa.2.0..sroa_idx.i23.us72.us97, align 8, !tbaa !137
  %i.en = icmp eq i64 %.sroa.0.0.copyload.i22.us71.us96, %.sroa.0.0.copyload.i
  %i.eo = icmp eq i64 %.sroa.2.0.copyload.i24.us73.us98, %.sroa.2.0.copyload.i
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.eq = trunc i64 %i.bt to i32
  %i.er = add i32 %i.eq, -1
  %i.es = mul i32 %i.bs, %i.er
  %i.et = add i32 %i.bu, %i.es                    ; 3 uses
  %i.eu = add nsw i64 %i.bt, -1                   ; 5 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.split.us, label %.critedge.us74.us99.us.lr.ph

.critedge.us74.us99.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bt, 33
  br i1 %min.iters.check, label %.critedge.us74.us99.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us74.us99.us.lr.ph
  %n.vec = and i64 %i.eu, -32                     ; 3 uses
  %i.ew = and i64 %i.eu, 31
  %i.ex = trunc i64 %n.vec to i32
  %i.ey = mul i32 %i.bs, %i.ex
  %i.ez = add i32 %i.bu, %i.ey
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert181 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat182 = shufflevector <32 x i32> %broadcast.splatinsert181, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <32 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat184 = shufflevector <32 x i32> %broadcast.splatinsert183, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert185 = insertelement <32 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat186.a = shufflevector <32 x i32> %broadcast.splatinsert185, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fa = mul <32 x i32> %broadcast.splat186.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add <32 x i32> %broadcast.splat184, %i.fa
  %i.fb = shl nsw i32 %i.bs, 5
  %broadcast.splatinsert187 = insertelement <32 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat188 = shufflevector <32 x i32> %broadcast.splatinsert187, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fc = add nsw <32 x i32> %vec.ind, %broadcast.splat
  %i.fd = icmp eq <32 x i32> %i.fc, %broadcast.splat182
  %i.fe = freeze <32 x i1> %i.fd
  %i.ff = bitcast <32 x i1> %i.fe to i32
  %.not190 = icmp eq i32 %i.ff, 0
  br i1 %.not190, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <32 x i32> %vec.ind, %broadcast.splat188
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !3887

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.split.us, label %.critedge.us74.us99.us.preheader

.critedge.us74.us99.us.preheader:                 ; preds = %.critedge.us74.us99.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.eu, %.critedge.us74.us99.us.lr.ph ], [ %i.ew, %middle.block ]
  %.049.us66.us92.us180.ph = phi i32 [ %i.bu, %.critedge.us74.us99.us.lr.ph ], [ %i.ez, %middle.block ]
  br label %.critedge.us74.us99.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us: ; preds = %.critedge.us74.us99.us
  %i.fh = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %.split.us, label %.critedge.us74.us99.us, !llvm.loop !3888

.critedge.us74.us99.us:                           ; preds = %.critedge.us74.us99.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us
  %i.fj = phi i64 [ %i.fh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us ], [ %.ph, %.critedge.us74.us99.us.preheader ]
  %.049.us66.us92.us180 = phi i32 [ %i.fk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us ], [ %.049.us66.us92.us180.ph, %.critedge.us74.us99.us.preheader ]
  %i.fk = add nsw i32 %.049.us66.us92.us180, %i.bs ; 2 uses
  %.not16.us76.us101.us = icmp eq i32 %i.fk, %i.bv
  br i1 %.not16.us76.us101.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us, !llvm.loop !3886

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fl = load ptr, ptr %i.cb, align 8, !tbaa !331
  %i.fm = sext i32 %i.bu to i64
  %i.fn = sext i32 %i.bs to i64
  %i.fo = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fl, i64 %i.fo
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fm, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.04348 = phi i64 [ %i.bt, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fp = load i32, ptr %gep, align 4, !tbaa !3   ; 2 uses
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = lshr i64 %i.fq, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !137
  %i.fu = and i64 %i.fq, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  %.not.i7.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27: ; preds = %bb.t
  %i.fx = load ptr, ptr %i.cc, align 8, !tbaa !487
  %i.fy = sext i32 %i.fp to i64
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.fz, align 8, !tbaa !137
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !137
  %i.ga = icmp eq i64 %.sroa.0.0.copyload.i22, %.sroa.0.0.copyload.i
  %i.gb = icmp eq i64 %.sroa.2.0.copyload.i24, %.sroa.2.0.copyload.i
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %i.gc, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27
  %i.gd = add nsw i64 %.04348, -1                 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.split.us.loopexit118, label %.critedge

.split.us.loopexit:                               ; preds = %bb.o
  %i.gf = trunc nsw i64 %indvars.iv143 to i32
  br label %.split.us

.split.us.loopexit108:                            ; preds = %bb.s
  %i.gg = trunc nsw i64 %indvars.iv140 to i32
  br label %.split.us

.split.us.loopexit118:                            ; preds = %bb.u
  %i.gh = trunc nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader, %middle.block, %.split.us.loopexit118, %.split.us.loopexit108, %.split.us.loopexit
  %.us-phi = phi i32 [ %i.gh, %.split.us.loopexit118 ], [ %i.gf, %.split.us.loopexit ], [ %i.gg, %.split.us.loopexit108 ], [ %i.et, %middle.block ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us.preheader ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us91.us ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.gk = add nsw i32 %.us-phi, 1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 144 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !341 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.v:                                             ; preds = %.split.us
  %i.gp = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gj) ; 0 uses
  %.pre.i = load ptr, ptr %i.gm, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.v, %.split.us
  %i.gq = phi ptr [ %i.gn, %.split.us ], [ %.pre.i, %bb.v ]
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.f
  store i64 %i.gl, ptr %i.gr, align 8, !tbaa !137
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !362
  %.not.i28 = icmp eq ptr %i.gt, null
  br i1 %.not.i28, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gj, i32 noundef %i.gv, i1 noundef zeroext true)
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !362 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !363
  %i.gz = and i8 %i.gy, 2
  %.not.i3.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.x, !prof !69

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.w
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !368
  %i.hc = lshr i32 %1, 3
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !30
  %i.hg = trunc i32 %1 to i8
  %i.hh = and i8 %i.hg, 7
  %i.hi = shl nuw i8 1, %i.hh
  %i.hj = or i8 %i.hf, %i.hi
  store i8 %i.hj, ptr %i.he, align 1, !tbaa !30
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %bb.t, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27, %bb.u
  %.1 = phi i64 [ %.04348, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27 ], [ %i.gd, %bb.u ], [ %.04348, %bb.t ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fn ; 2 uses
  %i.hk = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bv, %i.hk
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t, !llvm.loop !3886

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us74.us99.us, %.critedge.us59, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.046 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bu, %bb.k ], [ %i.bv, %.critedge.us74.us99.us ], [ %i.bv, %.critedge.us59 ], [ %i.bv, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bv, %vector.body ], [ %i.bv, %.lr.ph.split.split.split.us ], [ %i.bv, %.critedge.us ], [ %i.bv, %.critedge ]
  %i.hl = load ptr, ptr %i.bi, align 8, !tbaa !3280, !nonnull !74, !align !497
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = icmp eq i32 %.046, %i.hm
  br i1 %i.hn, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit34

bb.y:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !3286, !nonnull !74, !align !275 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 144 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !341 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.z, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29

bb.z:                                             ; preds = %bb.y
  %i.ht = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hp) ; 0 uses
  %.pre.i33 = load ptr, ptr %i.hq, align 8, !tbaa !341
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29: ; preds = %bb.z, %bb.y
  %i.hu = phi ptr [ %i.hr, %bb.y ], [ %.pre.i33, %bb.z ]
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.f
  store i64 0, ptr %i.hv, align 8, !tbaa !137
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !362
  %.not.i30 = icmp eq ptr %i.hx, null
  br i1 %.not.i30, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit34, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !224
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hp, i32 noundef %i.hz, i1 noundef zeroext true)
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !362 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 44
  %i.ic = load i8, ptr %i.ib, align 4, !tbaa !363
  %i.id = and i8 %i.ic, 2
  %.not.i3.i31 = icmp eq i8 %i.id, 0
  br i1 %.not.i3.i31, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32, label %bb.ab, !prof !69

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i32: ; preds = %bb.aa
end_hunk_18
