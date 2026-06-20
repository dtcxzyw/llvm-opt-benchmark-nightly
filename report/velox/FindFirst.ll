inline.NumInlined: 6938
inline.NumDeleted: 2274
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not.i.i.i.i142.i = icmp eq ptr %i.tt, null
  %i.tu = load ptr, ptr %i.tl, align 8, !tbaa !46
  %..i.i.i.i143.i = select i1 %.not.i.i.i.i142.i, i64 8, i64 48
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %..i.i.i.i143.i
  %i.tw = load ptr, ptr %i.tv, align 8
  invoke void %i.tw(ptr noundef nonnull align 8 dereferenceable(64) %i.tl)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i131.i unwind label %bb.do, !inline_history !324

bb.do:                                            ; preds = %.noexc.i.i.i141.i, %.sink.split.i.i.i.i140.i
  %i.tx = landingpad { ptr, i32 }
          catch ptr null
  %i.ty = extractvalue { ptr, i32 } %i.tx, 0
  call void @__clang_call_terminate(ptr %i.ty) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i131.i: ; preds = %.noexc.i.i.i141.i, %bb.dn, %.noexc144.i
  %i.tz = load ptr, ptr %7, align 8, !tbaa !268   ; 7 uses
  %.not.i.i132.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i132.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i133.i, label %bb.dp

bb.dp:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i131.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.ub = atomicrmw sub ptr %i.ua, i32 1 acq_rel, align 4
  %i.uc = icmp eq i32 %i.ub, 1
  br i1 %i.uc, label %.sink.split.i.i.i136.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i133.i

.sink.split.i.i.i136.i:                           ; preds = %bb.dp
  %i.ud = load ptr, ptr %i.tz, align 8, !tbaa !46
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  %i.uf = load ptr, ptr %i.ue, align 8
  invoke void %i.uf(ptr noundef nonnull align 8 dereferenceable(64) %i.tz)
          to label %.noexc.i.i137.i unwind label %bb.dq, !inline_history !324

.noexc.i.i137.i:                                  ; preds = %.sink.split.i.i.i136.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !325
  %.not.i.i1.i138.i = icmp eq ptr %i.uh, null
  %i.ui = load ptr, ptr %i.tz, align 8, !tbaa !46
  %..i.i.i139.i = select i1 %.not.i.i1.i138.i, i64 8, i64 48
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 %..i.i.i139.i
  %i.uk = load ptr, ptr %i.uj, align 8
  invoke void %i.uk(ptr noundef nonnull align 8 dereferenceable(64) %i.tz)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i133.i unwind label %bb.dq, !inline_history !324

bb.dq:                                            ; preds = %.noexc.i.i137.i, %.sink.split.i.i.i136.i
  %i.ul = landingpad { ptr, i32 }
          catch ptr null
  %i.um = extractvalue { ptr, i32 } %i.ul, 0
  call void @__clang_call_terminate(ptr %i.um) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i133.i: ; preds = %.noexc.i.i137.i, %bb.dp, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.un = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !323, !nonnull !81, !align !298
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !268 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 44
  %i.uq = load i8, ptr %i.up, align 4, !tbaa !269
  %i.ur = and i8 %i.uq, 2
  %.not.i2.i134.i = icmp eq i8 %i.ur, 0
  br i1 %.not.i2.i134.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i135.i, label %.invoke.i, !prof !76

.invoke.i:                                        ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i133.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i122.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i135.i: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i133.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !274 ; 2 uses
  %i.uu = load ptr, ptr %24, align 8, !tbaa !309, !nonnull !81, !align !298
  store ptr %i.ut, ptr %i.uu, align 8, !tbaa !276
  br label %.noexc45.i

.noexc45.i:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i135.i, %.lr.ph.i43.i
  %i.uv = phi ptr [ %i.ut, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i135.i ], [ %i.sy, %.lr.ph.i43.i ]
  %i.uw = zext i32 %.07.i.i to i64                ; 2 uses
  %i.ux = and i64 %i.uw, 7
  %i.uy = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !30
  %i.va = lshr i64 %i.uw, 3
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.va ; 2 uses
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !30
  %i.vd = and i8 %i.vc, %i.uz
  store i8 %i.vd, ptr %i.vb, align 1, !tbaa !30
  %i.ve = add i32 %.07.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ve, %i.sv
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.lr.ph.i43.i, !llvm.loop !326

bb.dr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.vf = load ptr, ptr %i.oj, align 8, !tbaa !217 ; 4 uses
  %i.vg = load i32, ptr %i.or, align 8, !tbaa !215 ; 7 uses
  %.not.i.i.i.i41.i = icmp slt i32 %i.su, %i.vg
  br i1 %.not.i.i.i.i41.i, label %bb.ds, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i

bb.ds:                                            ; preds = %bb.dr
  %i.vh = add i32 %i.su, 63                       ; 2 uses
  %i.vi = srem i32 %i.vh, 64
  %i.vj = sub nsw i32 %i.vh, %i.vi                ; 6 uses
  %i.vk = and i32 %i.vg, -64                      ; 6 uses
  %i.vl = icmp slt i32 %i.vk, %i.vj
  br i1 %i.vl, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.vm = ashr i32 %i.vg, 6
  %i.vn = and i32 %i.vg, 63
  %i.vo = zext nneg i32 %i.vn to i64
  %notmask.i.i.i.i.i.i70 = shl nsw i64 -1, %i.vo
  %i.vp = xor i64 %notmask.i.i.i.i.i.i70, -1
  %i.vq = sub nsw i32 %i.vj, %i.su                ; 2 uses
  %i.vr = zext nneg i32 %i.vq to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.vr
  %i.vs = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.vt = sub nsw i32 64, %i.vq
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = shl i64 %i.vs, %i.vu
  %i.vw = and i64 %i.vv, %i.vp
  %i.vx = sext i32 %i.vm to i64
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.vf, i64 %i.vx
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !144
  %i.wa = and i64 %i.vw, %i.vz                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.wa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.dt, %.noexc46.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.wf, %.noexc46.i ], [ %i.wa, %bb.dt ] ; 3 uses
  %i.wb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.wc = trunc nuw nsw i64 %i.wb to i32
  %i.wd = or disjoint i32 %i.vk, %i.wc
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %24, i32 noundef %i.wd)
          to label %.noexc46.i unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc46.i:                                       ; preds = %.preheader.i.i.i.i.i.i
  %i.we = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.wf = and i64 %i.we, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.wf, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !327

bb.du:                                            ; preds = %bb.ds
  %.not32.i.i.i.i.i = icmp eq i32 %i.su, %i.vj
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wg = sdiv i32 %i.su, 64                      ; 2 uses
  %i.wh = sub nsw i32 %i.vj, %i.su                ; 2 uses
  %i.wi = zext nneg i32 %i.wh to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.wi
  %i.wj = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.wk = sub nsw i32 64, %i.wh
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = shl i64 %i.wj, %i.wl
  %i.wn = sext i32 %i.wg to i64
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.vf, i64 %i.wn
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !144
  %i.wq = and i64 %i.wp, %i.wm                    ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.wq, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.dv
  %i.wr = shl nsw i32 %i.wg, 6
  br label %bb.dw

bb.dw:                                            ; preds = %.noexc47.i, %.preheader.i37.i.i.i.i.i
  %.011.i38.i.i.i.i.i = phi i64 [ %i.wq, %.preheader.i37.i.i.i.i.i ], [ %i.ww, %.noexc47.i ] ; 3 uses
  %i.ws = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i, i1 true)
  %i.wt = trunc nuw nsw i64 %i.ws to i32
  %i.wu = or disjoint i32 %i.wr, %i.wt
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %24, i32 noundef %i.wu)
          to label %.noexc47.i unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc47.i:                                       ; preds = %bb.dw
  %i.wv = add i64 %.011.i38.i.i.i.i.i, -1
  %i.ww = and i64 %i.wv, %.011.i38.i.i.i.i.i      ; 2 uses
  %.not10.i40.i.i.i.i.i = icmp eq i64 %i.ww, 0
  br i1 %.not10.i40.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i, label %bb.dw, !llvm.loop !327

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i: ; preds = %.noexc47.i, %bb.dv, %bb.du
  %i.wx = add nsw i32 %i.vj, 64                   ; 2 uses
  %.not3353.i.i.i.i.i = icmp sgt i32 %i.wx, %i.vk
  br i1 %.not3353.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i68

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.vg, %i.vk
  br i1 %.not34.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %bb.ek

.lr.ph.i.i.i.i.i68:                               ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i
  %i.wy = phi i32 [ %i.aca, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.wx, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i ] ; 2 uses
  %.054.i.i.i.i.i = phi i32 [ %i.wy, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.vj, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit41.i.i.i.i.i ] ; 2 uses
  %i.wz = sdiv i32 %.054.i.i.i.i.i, 64            ; 3 uses
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.vf, i64 %i.xa
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !144 ; 2 uses
  switch i64 %i.xc, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.dx
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i68
  %i.xd = shl nsw i32 %i.wz, 6
  br label %bb.ee

bb.dx:                                            ; preds = %.lr.ph.i.i.i.i.i68
  %i.xe = shl nsw i32 %i.wz, 6                    ; 2 uses
  %i.xf = add i32 %i.xe, 64
  %i.xg = sext i32 %i.xf to i64
  %.0.off.i.i.i.i.i = add i32 %.054.i.i.i.i.i, 127
  %.not23.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not23.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %bb.dx
  %i.xh = sext i32 %i.xe to i64
  br label %bb.dy

bb.dy:                                            ; preds = %.noexc48.i, %.lr.ph22.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.xh, %.lr.ph22.i.i.i.i.i.i ], [ %i.zp, %.noexc48.i ] ; 3 uses
  %i.xi = load ptr, ptr %24, align 8, !tbaa !309, !nonnull !81, !align !298
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !276 ; 2 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.dz, label %.noexc48.i

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.xl = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !314, !nonnull !81, !align !298
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !215
  %i.xo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !315, !nonnull !81, !align !298
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !156
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !241
  %i.xr = sext i32 %i.xn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35, !noalias !328
  store i8 -1, ptr %8, align 1, !tbaa !30, !noalias !328
  store i8 1, ptr %i.ox, align 1, !tbaa !321, !noalias !328
  %i.xs = add nsw i64 %i.xr, 7
  %i.xt = lshr i64 %i.xs, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %9, i64 noundef %i.xt, ptr noundef %i.xq, ptr noundef nonnull align 1 dereferenceable(2) %8, i1 noundef zeroext false)
          to label %.noexc128.i unwind label %.loopexit.split-lp169.loopexit.i

.noexc128.i:                                      ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !328
  %i.xu = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !323, !nonnull !81, !align !298 ; 2 uses
  %i.xv = load ptr, ptr %9, align 8, !tbaa !268
  store ptr null, ptr %9, align 8, !tbaa !268
  %i.xw = load ptr, ptr %i.xu, align 8, !tbaa !268 ; 7 uses
  store ptr %i.xv, ptr %i.xu, align 8, !tbaa !268
  %.not.i.i.i120.i = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.i120.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i, label %bb.ea

bb.ea:                                            ; preds = %.noexc128.i
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 40
  %i.xy = atomicrmw sub ptr %i.xx, i32 1 acq_rel, align 4
  %i.xz = icmp eq i32 %i.xy, 1
  br i1 %i.xz, label %.sink.split.i.i.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.ea
  %i.ya = load ptr, ptr %i.xw, align 8, !tbaa !46
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 64
  %i.yc = load ptr, ptr %i.yb, align 8
  invoke void %i.yc(ptr noundef nonnull align 8 dereferenceable(64) %i.xw)
          to label %.noexc.i.i.i.i unwind label %bb.eb, !inline_history !324

.noexc.i.i.i.i:                                   ; preds = %.sink.split.i.i.i.i.i
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !325
  %.not.i.i.i.i127.i = icmp eq ptr %i.ye, null
  %i.yf = load ptr, ptr %i.xw, align 8, !tbaa !46
  %..i.i.i.i.i = select i1 %.not.i.i.i.i127.i, i64 8, i64 48
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %..i.i.i.i.i
  %i.yh = load ptr, ptr %i.yg, align 8
  invoke void %i.yh(ptr noundef nonnull align 8 dereferenceable(64) %i.xw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i unwind label %bb.eb, !inline_history !324

bb.eb:                                            ; preds = %.noexc.i.i.i.i, %.sink.split.i.i.i.i.i
  %i.yi = landingpad { ptr, i32 }
          catch ptr null
  %i.yj = extractvalue { ptr, i32 } %i.yi, 0
  call void @__clang_call_terminate(ptr %i.yj) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i: ; preds = %.noexc.i.i.i.i, %bb.ea, %.noexc128.i
  %i.yk = load ptr, ptr %9, align 8, !tbaa !268   ; 7 uses
  %.not.i.i121.i = icmp eq ptr %i.yk, null
  br i1 %.not.i.i121.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i122.i, label %bb.ec

bb.ec:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 40
  %i.ym = atomicrmw sub ptr %i.yl, i32 1 acq_rel, align 4
  %i.yn = icmp eq i32 %i.ym, 1
  br i1 %i.yn, label %.sink.split.i.i.i123.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i122.i

.sink.split.i.i.i123.i:                           ; preds = %bb.ec
  %i.yo = load ptr, ptr %i.yk, align 8, !tbaa !46
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 64
  %i.yq = load ptr, ptr %i.yp, align 8
  invoke void %i.yq(ptr noundef nonnull align 8 dereferenceable(64) %i.yk)
          to label %.noexc.i.i124.i unwind label %bb.ed, !inline_history !324

.noexc.i.i124.i:                                  ; preds = %.sink.split.i.i.i123.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !325
  %.not.i.i1.i125.i = icmp eq ptr %i.ys, null
  %i.yt = load ptr, ptr %i.yk, align 8, !tbaa !46
  %..i.i.i126.i = select i1 %.not.i.i1.i125.i, i64 8, i64 48
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 %..i.i.i126.i
  %i.yv = load ptr, ptr %i.yu, align 8
  invoke void %i.yv(ptr noundef nonnull align 8 dereferenceable(64) %i.yk)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i122.i unwind label %bb.ed, !inline_history !324

bb.ed:                                            ; preds = %.noexc.i.i124.i, %.sink.split.i.i.i123.i
  %i.yw = landingpad { ptr, i32 }
          catch ptr null
  %i.yx = extractvalue { ptr, i32 } %i.yw, 0
  call void @__clang_call_terminate(ptr %i.yx) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i122.i: ; preds = %.noexc.i.i124.i, %bb.ec, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.yy = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !323, !nonnull !81, !align !298
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !268 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 44
  %i.zb = load i8, ptr %i.za, align 4, !tbaa !269
  %i.zc = and i8 %i.zb, 2
  %.not.i2.i.i = icmp eq i8 %i.zc, 0
  br i1 %.not.i2.i.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, label %.invoke.i, !prof !76

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i122.i
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !274 ; 2 uses
  %i.zf = load ptr, ptr %24, align 8, !tbaa !309, !nonnull !81, !align !298
  store ptr %i.ze, ptr %i.zf, align 8, !tbaa !276
  br label %.noexc48.i

.noexc48.i:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, %bb.dy
  %i.zg = phi ptr [ %i.ze, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i ], [ %i.xj, %bb.dy ]
  %i.zh = and i64 %.021.i.i.i.i.i.i, 7
  %i.zi = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !30
  %i.zk = lshr i64 %.021.i.i.i.i.i.i, 3
  %i.zl = and i64 %i.zk, 536870911
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zl ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !30
  %i.zo = and i8 %i.zn, %i.zj
  store i8 %i.zo, ptr %i.zm, align 1, !tbaa !30
  %i.zp = add nuw i64 %.021.i.i.i.i.i.i, 1        ; 2 uses
  %i.zq = icmp ult i64 %i.zp, %i.xg
  br i1 %i.zq, label %bb.dy, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !333

bb.ee:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.01520.i.i.i.i.i.i = phi i64 [ %i.xc, %.lr.ph.i.i.i.i.i.i ], [ %i.abz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.zr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i, i1 true)
  %38 = trunc nuw nsw i64 %i.zr to i32
  %39 = or disjoint i32 %i.xd, %38
  %i.zs = load ptr, ptr %24, align 8, !tbaa !309, !nonnull !81, !align !298
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !276 ; 2 uses
  %i.zu = icmp eq ptr %i.zt, null
  br i1 %i.zu, label %bb.ef, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.zv = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !314, !nonnull !81, !align !298
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 32
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !215
  %i.zy = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !315, !nonnull !81, !align !298
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !156
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !241
  %i.aab = sext i32 %i.zx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35, !noalias !334
  store i8 -1, ptr %13, align 1, !tbaa !30, !noalias !334
  store i8 1, ptr %i.ow, align 1, !tbaa !321, !noalias !334
  %i.aac = add nsw i64 %i.aab, 7
  %i.aad = lshr i64 %i.aac, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %14, i64 noundef %i.aad, ptr noundef %i.aaa, ptr noundef nonnull align 1 dereferenceable(2) %13, i1 noundef zeroext false)
          to label %.noexc49.i unwind label %.loopexit168.i

.noexc49.i:                                       ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35, !noalias !334
  %i.aae = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !323, !nonnull !81, !align !298 ; 2 uses
  %i.aaf = load ptr, ptr %14, align 8, !tbaa !268
  store ptr null, ptr %14, align 8, !tbaa !268
  %i.aag = load ptr, ptr %i.aae, align 8, !tbaa !268 ; 7 uses
  store ptr %i.aaf, ptr %i.aae, align 8, !tbaa !268
  %.not.i.i.i.i.i.i.i.i69 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i.i.i.i.i.i.i69, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %.noexc49.i
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 40
  %i.aai = atomicrmw sub ptr %i.aah, i32 1 acq_rel, align 4
  %i.aaj = icmp eq i32 %i.aai, 1
  br i1 %i.aaj, label %.sink.split.i.i.i.i.i.i.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.eg
  %i.aak = load ptr, ptr %i.aag, align 8, !tbaa !46
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 64
  %i.aam = load ptr, ptr %i.aal, align 8
  invoke void %i.aam(ptr noundef nonnull align 8 dereferenceable(64) %i.aag)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.eh, !inline_history !324

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.sink.split.i.i.i.i.i.i.i.i.i
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !325
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aao, null
  %i.aap = load ptr, ptr %i.aag, align 8, !tbaa !46
  %..i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 8, i64 48
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %..i.i.i.i.i.i.i.i.i
  %i.aar = load ptr, ptr %i.aaq, align 8
  invoke void %i.aar(ptr noundef nonnull align 8 dereferenceable(64) %i.aag)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i.i.i.i.i unwind label %bb.eh, !inline_history !324

bb.eh:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i
  %i.aas = landingpad { ptr, i32 }
          catch ptr null
  %i.aat = extractvalue { ptr, i32 } %i.aas, 0
  call void @__clang_call_terminate(ptr %i.aat) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.eg, %.noexc49.i
  %i.aau = load ptr, ptr %14, align 8, !tbaa !268 ; 7 uses
  %.not.i.i.i.i.i.i42.i = icmp eq ptr %i.aau, null
  br i1 %.not.i.i.i.i.i.i42.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i.i.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i.i.i.i.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 40
  %i.aaw = atomicrmw sub ptr %i.aav, i32 1 acq_rel, align 4
  %i.aax = icmp eq i32 %i.aaw, 1
  br i1 %i.aax, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.ei
  %i.aay = load ptr, ptr %i.aau, align 8, !tbaa !46
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 64
  %i.aba = load ptr, ptr %i.aaz, align 8
  invoke void %i.aba(ptr noundef nonnull align 8 dereferenceable(64) %i.aau)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ej, !inline_history !324

.noexc.i.i.i.i.i.i.i:                             ; preds = %.sink.split.i.i.i.i.i.i.i.i
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !325
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.abc, null
  %i.abd = load ptr, ptr %i.aau, align 8, !tbaa !46
  %..i.i.i.i.i.i.i.i = select i1 %.not.i.i1.i.i.i.i.i.i, i64 8, i64 48
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 %..i.i.i.i.i.i.i.i
  %i.abf = load ptr, ptr %i.abe, align 8
  invoke void %i.abf(ptr noundef nonnull align 8 dereferenceable(64) %i.aau)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i.i.i.i.i.i unwind label %bb.ej, !inline_history !324

bb.ej:                                            ; preds = %.noexc.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i
  %i.abg = landingpad { ptr, i32 }
          catch ptr null
  %i.abh = extractvalue { ptr, i32 } %i.abg, 0
  call void @__clang_call_terminate(ptr %i.abh) #39
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %bb.ei, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.abi = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !323, !nonnull !81, !align !298
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !268 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 44
  %i.abl = load i8, ptr %i.abk, align 4, !tbaa !269
  %i.abm = and i8 %i.abl, 2
  %.not.i2.i.i.i.i.i.i = icmp eq i8 %i.abm, 0
  br i1 %.not.i2.i.i.i.i.i.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i.i.i.i.i, label %.invoke.i, !prof !76

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i.i.i.i.i: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i.i.i.i.i.i
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !274 ; 2 uses
  %i.abp = load ptr, ptr %24, align 8, !tbaa !309, !nonnull !81, !align !298
  store ptr %i.abo, ptr %i.abp, align 8, !tbaa !276
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i.i.i.i.i, %bb.ee
  %i.abq = phi ptr [ %i.abo, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i.i.i.i.i ], [ %i.zt, %bb.ee ]
  %40 = zext i32 %39 to i64                       ; 2 uses
  %i.abr = and i64 %40, 7
  %i.abs = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.abr
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !30
  %i.abu = lshr i64 %40, 3
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.abu ; 2 uses
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !30
  %i.abx = and i8 %i.abw, %i.abt
  store i8 %i.abx, ptr %i.abv, align 1, !tbaa !30
  %i.aby = add i64 %.01520.i.i.i.i.i.i, -1
  %i.abz = and i64 %i.aby, %.01520.i.i.i.i.i.i    ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.abz, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.ee, !llvm.loop !339

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.noexc48.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi.exit.i.i.i.i.i, %bb.dx, %.lr.ph.i.i.i.i.i68
  %i.aca = add nsw i32 %i.wy, 64                  ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.aca, %i.vk
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i68, !llvm.loop !340

bb.ek:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.acb = ashr i32 %i.vg, 6
  %i.acc = and i32 %i.vg, 63
  %i.acd = zext nneg i32 %i.acc to i64
  %notmask.i44.i.i.i.i.i = shl nsw i64 -1, %i.acd
  %i.ace = xor i64 %notmask.i44.i.i.i.i.i, -1
  %i.acf = sext i32 %i.acb to i64
  %i.acg = getelementptr inbounds [8 x i8], ptr %i.vf, i64 %i.acf
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !144
  %i.aci = and i64 %i.ach, %i.ace                 ; 2 uses
  %.not.i45.i.i.i.i.i = icmp eq i64 %i.aci, 0
  br i1 %.not.i45.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i46.i.i.i.i.i

.preheader.i46.i.i.i.i.i:                         ; preds = %bb.ek, %.noexc51.i
  %.011.i47.i.i.i.i.i = phi i64 [ %i.acn, %.noexc51.i ], [ %i.aci, %bb.ek ] ; 3 uses
  %i.acj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47.i.i.i.i.i, i1 true)
  %i.ack = trunc nuw nsw i64 %i.acj to i32
  %i.acl = or disjoint i32 %i.vk, %i.ack
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(32) %24, i32 noundef %i.acl)
          to label %.noexc51.i unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc51.i:                                       ; preds = %.preheader.i46.i.i.i.i.i
  %i.acm = add nsw i64 %.011.i47.i.i.i.i.i, -1
  %i.acn = and i64 %i.acm, %.011.i47.i.i.i.i.i    ; 2 uses
  %.not10.i49.i.i.i.i.i = icmp eq i64 %i.acn, 0
  br i1 %.not10.i49.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_17FindFirstFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i46.i.i.i.i.i, !llvm.loop !327

bb.el:                                            ; preds = %bb.dc
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit102.i

.loopexit168.i:                                   ; preds = %bb.ef
  %lpad.loopexit170.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp169.i

.loopexit.split-lp169.loopexit.i:                 ; preds = %bb.dz
  %lpad.loopexit172.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp169.i

.loopexit.split-lp169.loopexit.split-lp.loopexit.i: ; preds = %bb.dm
  %lpad.loopexit188.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp169.i

.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.preheader.i.i.i.i.i.i
  %lpad.loopexit190.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp169.i

.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.preheader.i46.i.i.i.i.i
  %lpad.loopexit194.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp169.i

.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.dw
  %lpad.loopexit197.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp169.i

.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i
  %lpad.loopexit.split-lp198.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp169.i

bb.em:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35
  invoke void @_ZN8facebook5velox9functions13toWrapCaptureINS0_11ArrayVectorEEEN5boost13intrusive_ptrINS0_6BufferEEEiPKNS0_8CallableERKNS0_17SelectivityVectorERKSt10shared_ptrIT_E(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %22, i32 noundef %i.no, ptr noundef nonnull %i.ro, ptr noundef nonnull align 8 dereferenceable(38) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.en unwind label %bb.fs

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.acp = load ptr, ptr %i.ro, align 8, !tbaa !46
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 32
  %i.acr = load ptr, ptr %i.acq, align 8
  invoke void %i.acr(ptr noundef nonnull align 8 dereferenceable(8) %i.ro, ptr noundef nonnull align 8 dereferenceable(38) %21, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %17)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.eo:                                            ; preds = %bb.en
  %i.acs = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.ep:                                            ; preds = %bb.eo
  %i.act = load ptr, ptr %17, align 8, !tbaa !175
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.acs, ptr noundef nonnull align 8 dereferenceable(94) %i.act, ptr noundef nonnull align 8 dereferenceable(38) %21, i1 noundef zeroext true)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.a, ptr %12, align 8
  store ptr %24, ptr %.sroa.2.0..sroa_idx.i64, align 8
  store ptr %0, ptr %.sroa.3.0..sroa_idx.i65, align 8
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr %23, ptr %.sroa.7.0..sroa_idx.i, align 8
  store ptr %18, ptr %.sroa.8.0..sroa_idx.i, align 8
  store ptr %25, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.acu = load i8, ptr %i.ok, align 1, !tbaa !204, !range !80, !noundef !81
  %i.acv = trunc nuw i8 %i.acu to i1
  br i1 %i.acv, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i86.i, label %bb.er

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i86.i: ; preds = %bb.eq
  %.0.in.pre.i.i87.i = load i8, ptr %i.op, align 4, !tbaa !56, !range !80
  %.pre154 = load i32, ptr %i.oq, align 4, !tbaa !206
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i54.i

bb.er:                                            ; preds = %bb.eq
  %i.acw = load i32, ptr %i.oq, align 4, !tbaa !206 ; 2 uses
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.es, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i

bb.es:                                            ; preds = %bb.er
  %i.acy = load i32, ptr %i.or, align 8, !tbaa !215 ; 6 uses
  %i.acz = load i32, ptr %i.oo, align 8, !tbaa !216
  %i.ada = icmp eq i32 %i.acy, %i.acz
  br i1 %i.ada, label %bb.et, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i

bb.et:                                            ; preds = %bb.es
  %i.adb = load ptr, ptr %i.oj, align 8, !tbaa !217 ; 2 uses
  %.not.i.i.i78.i = icmp sgt i32 %i.acy, 0
  br i1 %.not.i.i.i78.i, label %bb.eu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i

bb.eu:                                            ; preds = %bb.et
  %i.adc = and i32 %i.acy, 2147483584             ; 3 uses
  %i.add = zext nneg i32 %i.adc to i64
  %.not37.i.i.not.i.i80.i279.not = icmp eq i32 %i.adc, 0
  br i1 %.not37.i.i.not.i.i80.i279.not, label %.critedge.i.i.i.i81.i, label %.lr.ph281

bb.ev:                                            ; preds = %.lr.ph281
  %indvars.iv.next.i.i85.i = add nuw nsw i64 %indvars.iv.i.i79.i280, 64 ; 2 uses
  %.not37.i.i.not.i.i80.i = icmp samesign ult i64 %indvars.iv.next.i.i85.i, %i.add
  br i1 %.not37.i.i.not.i.i80.i, label %.lr.ph281, label %.critedge.i.i.i.i81.i, !llvm.loop !218

.lr.ph281:                                        ; preds = %bb.eu, %bb.ev
  %indvars.iv.i.i79.i280 = phi i64 [ %indvars.iv.next.i.i85.i, %bb.ev ], [ 0, %bb.eu ] ; 2 uses
  %i.ade = lshr exact i64 %indvars.iv.i.i79.i280, 3
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ade
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !144
  %i.adh = icmp eq i64 %i.adg, -1
  br i1 %i.adh, label %bb.ev, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i, !llvm.loop !218

.critedge.i.i.i.i81.i:                            ; preds = %bb.ev, %bb.eu
  %.not38.i.i.i.i82.i = icmp eq i32 %i.acy, %i.adc
  br i1 %.not38.i.i.i.i82.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i, label %bb.ew

bb.ew:                                            ; preds = %.critedge.i.i.i.i81.i
  %i.adi = lshr i32 %i.acy, 6
  %i.adj = and i32 %i.acy, 63
  %i.adk = zext nneg i32 %i.adj to i64
  %notmask.i40.i.i.i.i83.i = shl nsw i64 -1, %i.adk
  %i.adl = zext nneg i32 %i.adi to i64
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.adl
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !144
  %.demorgan.i.i84.i = or i64 %i.adn, %notmask.i40.i.i.i.i83.i
  %i.ado = icmp eq i64 %.demorgan.i.i84.i, -1
  %i.adp = zext i1 %i.ado to i16
  %i.adq = or disjoint i16 %i.adp, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i: ; preds = %.lr.ph281, %bb.ew, %.critedge.i.i.i.i81.i, %bb.et, %bb.es, %bb.er
  %.sroa.0.0.insert.ext.i.i53.i = phi i16 [ 256, %bb.es ], [ 256, %bb.er ], [ 257, %bb.et ], [ 257, %.critedge.i.i.i.i81.i ], [ %i.adq, %bb.ew ], [ 256, %.lr.ph281 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i53.i, ptr %i.op, align 4
  %i.adr = trunc i16 %.sroa.0.0.insert.ext.i.i53.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i54.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i54.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i86.i
  %i.ads = phi i32 [ %.pre154, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i86.i ], [ %i.acw, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i ] ; 8 uses
  %.0.in.i.i55.i = phi i8 [ %.0.in.pre.i.i87.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i86.i ], [ %i.adr, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i52.i ]
  %.0.i.i56.i = trunc nuw i8 %.0.in.i.i55.i to i1
  br i1 %.0.i.i56.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i54.i
  %i.adt = load i32, ptr %i.or, align 8, !tbaa !215 ; 2 uses
  %i.adu = icmp slt i32 %i.ads, %i.adt
  br i1 %i.adu, label %.lr.ph.i76.i, label %.loopexit178.i

.lr.ph.i76.i:                                     ; preds = %bb.ex, %.noexc88.i
  %.06.i.i = phi i32 [ %i.adv, %.noexc88.i ], [ %i.ads, %bb.ex ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_17FindFirstFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(72) %12, i32 noundef %.06.i.i)
          to label %.noexc88.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc88.i:                                       ; preds = %.lr.ph.i76.i
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_122FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  store i32 %i.gx, ptr %i.ek, align 8, !tbaa !291
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = load ptr, ptr %i.eg, align 8, !tbaa !304, !nonnull !81, !align !298 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !293
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !296
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = ashr exact i64 %i.hf, 4
  %i.hh = icmp ugt i64 %i.hg, %i.gy
  br i1 %i.hh, label %.lr.ph.i.i.backedge, label %.thread.i

.lr.ph.i.i.backedge:                              ; preds = %bb.bb, %bb.dd
  %.be = phi i64 [ %i.gy, %bb.bb ], [ %i.uy, %bb.dd ]
  br label %.lr.ph.i.i, !llvm.loop !305

bb.bc:                                            ; preds = %.noexc40.i
  %i.hi = load ptr, ptr %i.eg, align 8, !tbaa !304, !nonnull !81, !align !298
  %i.hj = load i32, ptr %i.ek, align 8, !tbaa !291 ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !296
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !306 ; 4 uses
  %i.ho = add nsw i32 %i.hj, 1
  store i32 %i.ho, ptr %i.ek, align 8, !tbaa !291
  %.not.i = icmp eq ptr %i.hn, null
  br i1 %.not.i, label %.thread.i, label %bb.bd

.loopexit174.i:                                   ; preds = %.noexc39.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i
  %lpad.loopexit176.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

.loopexit.split-lp175.i:                          ; preds = %bb.ak
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.hq = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.hr = load ptr, ptr %i.c, align 8, !tbaa !275
  invoke fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase13toElementRowsEiRKNS0_17SelectivityVectorEPKmPKiSA_(ptr dead_on_unwind noalias writable align 8 %16, i32 noundef %i.dq, ptr noundef nonnull align 8 dereferenceable(38) %i.el, ptr noundef %i.hp, ptr noundef %i.hq, ptr noundef %i.hr)
          to label %bb.be unwind label %bb.bx

bb.be:                                            ; preds = %bb.bd
  %i.hs = load i32, ptr %i.ew, align 4, !tbaa !206
  %i.ht = load i32, ptr %i.ex, align 8, !tbaa !215
  %i.hu = icmp slt i32 %i.hs, %i.ht
  br i1 %i.hu, label %bb.by, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hv = load i8, ptr %i.em, align 1, !tbaa !204, !range !80, !noundef !81
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.bg

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %bb.bf
  %.0.in.pre.i.i.i = load i8, ptr %i.er, align 4, !tbaa !56, !range !80
  %.pre = load i32, ptr %i.es, align 4, !tbaa !206
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.hx = load i32, ptr %i.es, align 4, !tbaa !206 ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.bh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.hz = load i32, ptr %i.et, align 8, !tbaa !215 ; 6 uses
  %i.ia = load i32, ptr %i.eq, align 8, !tbaa !216
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.bi, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.ic = load ptr, ptr %i.el, align 8, !tbaa !217 ; 2 uses
  %.not.i.i.i43.i = icmp sgt i32 %i.hz, 0
  br i1 %.not.i.i.i43.i, label %bb.bj, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.id = and i32 %i.hz, 2147483584               ; 3 uses
  %i.ie = zext nneg i32 %i.id to i64
  %.not37.i.i.not.i.i.i153.not = icmp eq i32 %i.id, 0
  br i1 %.not37.i.i.not.i.i.i153.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.bk:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i154, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.ie
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !218

.lr.ph:                                           ; preds = %bb.bj, %bb.bk
  %indvars.iv.i.i.i154 = phi i64 [ %indvars.iv.next.i.i.i, %bb.bk ], [ 0, %bb.bj ] ; 2 uses
  %i.if = lshr exact i64 %indvars.iv.i.i.i154, 3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !144
  %i.ii = icmp eq i64 %i.ih, -1
  br i1 %i.ii, label %bb.bk, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !218

.critedge.i.i.i.i.i:                              ; preds = %bb.bk, %bb.bj
  %.not38.i.i.i.i.i = icmp eq i32 %i.hz, %i.id
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.critedge.i.i.i.i.i
  %i.ij = lshr i32 %i.hz, 6
  %i.ik = and i32 %i.hz, 63
  %i.il = zext nneg i32 %i.ik to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.il
  %i.im = zext nneg i32 %i.ij to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !144
  %.demorgan.i.i.i = or i64 %i.io, %notmask.i40.i.i.i.i.i
  %i.ip = icmp eq i64 %.demorgan.i.i.i, -1
  %i.iq = zext i1 %i.ip to i16
  %i.ir = or disjoint i16 %i.iq, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.bl, %.critedge.i.i.i.i.i, %bb.bi, %bb.bh, %bb.bg
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.bh ], [ 256, %bb.bg ], [ 257, %bb.bi ], [ 257, %.critedge.i.i.i.i.i ], [ %i.ir, %bb.bl ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.er, align 4
  %i.is = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %i.it = phi i32 [ %.pre, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.hx, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ] ; 8 uses
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.is, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  br i1 %.0.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.iu = load i32, ptr %i.et, align 8, !tbaa !215 ; 2 uses
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.lr.ph.i42.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i

.lr.ph.i42.i:                                     ; preds = %bb.bm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i
  %.07.i.i = phi i32 [ %i.jn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i ], [ %i.it, %bb.bm ] ; 2 uses
  %.val.val.i.i = load ptr, ptr %9, align 8, !tbaa !740
  %.val.val.val.i.i = load ptr, ptr %.val.val.i.i, align 8, !tbaa !734 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.val.val.i.i, i64 56
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !178
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %.val.val.val.i.i, i32 noundef %i.ix, i1 noundef zeroext true)
          to label %.noexc44.i unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.i

.noexc44.i:                                       ; preds = %.lr.ph.i42.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.val.val.val.i.i, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !268 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 44
  %i.jb = load i8, ptr %i.ja, align 4, !tbaa !269
  %i.jc = and i8 %i.jb, 2
  %.not.i3.i.i.i.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i3.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i, label %.invoke.i, !prof !76

_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i: ; preds = %.noexc44.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !274
  %i.jf = zext i32 %.07.i.i to i64                ; 2 uses
  %i.jg = lshr i64 %i.jf, 3
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jg ; 2 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !30
  %i.jj = and i64 %i.jf, 7
  %i.jk = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !30
  %i.jm = and i8 %i.jl, %i.ji
  store i8 %i.jm, ptr %i.jh, align 1, !tbaa !30
  %i.jn = add i32 %.07.i.i, 1                     ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jn, %i.iu
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.lr.ph.i42.i, !llvm.loop !743

bb.bn:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.jo = load ptr, ptr %i.el, align 8, !tbaa !217 ; 4 uses
  %i.jp = load i32, ptr %i.et, align 8, !tbaa !215 ; 7 uses
  %.not.i.i.i.i41.i = icmp slt i32 %i.it, %i.jp
  br i1 %.not.i.i.i.i41.i, label %bb.bo, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.jq = add i32 %i.it, 63                       ; 2 uses
  %i.jr = srem i32 %i.jq, 64
  %i.js = sub nsw i32 %i.jq, %i.jr                ; 6 uses
  %i.jt = and i32 %i.jp, -64                      ; 6 uses
  %i.ju = icmp slt i32 %i.jt, %i.js
  br i1 %i.ju, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jv = ashr i32 %i.jp, 6
  %i.jw = and i32 %i.jp, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.jx
  %i.jy = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.jz = sub nsw i32 %i.js, %i.it                ; 2 uses
  %i.ka = zext nneg i32 %i.jz to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ka
  %i.kb = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.kc = sub nsw i32 64, %i.jz
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl i64 %i.kb, %i.kd
  %i.kf = and i64 %i.ke, %i.jy
  %i.kg = sext i32 %i.jv to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !144
  %i.kj = and i64 %i.kf, %i.ki                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.kj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i.i.i.i.i.i.a

.preheader.i.i.i.i.i.i.a:                         ; preds = %bb.bp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.lc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.kj, %bb.bp ] ; 3 uses
  %.val.val.i.i.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !740
  %.val.val.val.i.i.i.i.i.i = load ptr, ptr %.val.val.i.i.i.i.i.i, align 8, !tbaa !734 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.val.val.i.i.i.i.i.i, i64 56
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !178
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %.val.val.val.i.i.i.i.i.i, i32 noundef %i.kl, i1 noundef zeroext true)
          to label %.noexc46.i unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc46.i:                                       ; preds = %.preheader.i.i.i.i.i.i.a
  %i.km = getelementptr inbounds nuw i8, ptr %.val.val.val.i.i.i.i.i.i, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !268 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 44
  %i.kp = load i8, ptr %i.ko, align 4, !tbaa !269
  %i.kq = and i8 %i.kp, 2
  %.not.i3.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.kq, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.invoke.i, !prof !76

_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %.noexc46.i
  %i.kr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %24 = trunc nuw nsw i64 %i.kr to i32
  %25 = or disjoint i32 %i.jt, %24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !274
  %26 = zext i32 %25 to i64                       ; 2 uses
  %i.ku = lshr i64 %26, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ku ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !30
  %i.kx = and i64 %26, 7
  %i.ky = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !30
  %i.la = and i8 %i.kz, %i.kw
  store i8 %i.la, ptr %i.kv, align 1, !tbaa !30
  %i.lb = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.lc = and i64 %i.lb, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.lc, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i.i.i.i.i.i.a, !llvm.loop !744

bb.bq:                                            ; preds = %bb.bo
  %.not32.i.i.i.i.i = icmp eq i32 %i.it, %i.js
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ld = sdiv i32 %i.it, 64                      ; 2 uses
  %i.le = sub nsw i32 %i.js, %i.it                ; 2 uses
  %i.lf = zext nneg i32 %i.le to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.lf
  %i.lg = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.lh = sub nsw i32 64, %i.le
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl i64 %i.lg, %i.li
  %i.lk = sext i32 %i.ld to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.lk
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !144
  %i.ln = and i64 %i.lm, %i.lj                    ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.ln, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.br
  %i.lo = shl nsw i32 %i.ld, 6
  br label %bb.bs

bb.bs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i43.i.i.i.i.i, %.preheader.i37.i.i.i.i.i
  %.011.i38.i.i.i.i.i = phi i64 [ %i.ln, %.preheader.i37.i.i.i.i.i ], [ %i.mh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i43.i.i.i.i.i ] ; 3 uses
  %.val.val.i40.i.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !740
  %.val.val.val.i41.i.i.i.i.i = load ptr, ptr %.val.val.i40.i.i.i.i.i, align 8, !tbaa !734 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val.val.val.i41.i.i.i.i.i, i64 56
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !178
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %.val.val.val.i41.i.i.i.i.i, i32 noundef %i.lq, i1 noundef zeroext true)
          to label %.noexc48.i unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc48.i:                                       ; preds = %bb.bs
  %i.lr = getelementptr inbounds nuw i8, ptr %.val.val.val.i41.i.i.i.i.i, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !268 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 44
  %i.lu = load i8, ptr %i.lt, align 4, !tbaa !269
  %i.lv = and i8 %i.lu, 2
  %.not.i3.i.i.i.i42.i.i.i.i.i = icmp eq i8 %i.lv, 0
  br i1 %.not.i3.i.i.i.i42.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i43.i.i.i.i.i, label %.invoke.i, !prof !76

_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i43.i.i.i.i.i: ; preds = %.noexc48.i
  %i.lw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i, i1 true)
  %27 = trunc nuw nsw i64 %i.lw to i32
  %28 = or disjoint i32 %i.lo, %27
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !274
  %29 = zext i32 %28 to i64                       ; 2 uses
  %i.lz = lshr i64 %29, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lz ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !30
  %i.mc = and i64 %29, 7
  %i.md = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !30
  %i.mf = and i8 %i.me, %i.mb
  store i8 %i.mf, ptr %i.ma, align 1, !tbaa !30
  %i.mg = add i64 %.011.i38.i.i.i.i.i, -1
  %i.mh = and i64 %i.mg, %.011.i38.i.i.i.i.i      ; 2 uses
  %.not10.i44.i.i.i.i.i = icmp eq i64 %i.mh, 0
  br i1 %.not10.i44.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i, label %bb.bs, !llvm.loop !744

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i43.i.i.i.i.i, %bb.br, %bb.bq
  %i.mi = add nsw i32 %i.js, 64                   ; 2 uses
  %.not3365.i.i.i.i.i = icmp sgt i32 %i.mi, %i.jt
  br i1 %.not3365.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.jp, %i.jt
  br i1 %.not34.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %bb.bw

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i
  %i.mj = phi i32 [ %i.of, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.mi, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i ] ; 2 uses
  %.066.i.i.i.i.i = phi i32 [ %i.mj, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.js, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUlimE_clEim.exit45.i.i.i.i.i ] ; 2 uses
  %i.mk = sdiv i32 %.066.i.i.i.i.i, 64            ; 3 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !144 ; 2 uses
  switch i64 %i.mn, label %.lr.ph.i.i.i.i.i.i [
    i64 -1, label %bb.bt
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.mo = shl nsw i32 %i.mk, 6
  br label %bb.bv

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.mp = shl nsw i32 %i.mk, 6                    ; 2 uses
  %i.mq = add i32 %i.mp, 64
  %i.mr = sext i32 %i.mq to i64
  %.0.off.i.i.i.i.i = add i32 %.066.i.i.i.i.i, 127
  %.not25.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i.i

.lr.ph24.i.i.i.i.i.i:                             ; preds = %bb.bt
  %i.ms = sext i32 %i.mp to i64
  br label %bb.bu

bb.bu:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i47.i.i.i.i.i, %.lr.ph24.i.i.i.i.i.i
  %.023.i.i.i.i.i.i = phi i64 [ %i.ms, %.lr.ph24.i.i.i.i.i.i ], [ %i.nk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i47.i.i.i.i.i ] ; 3 uses
  %.val17.val.i.i.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !740
  %.val17.val.val.i.i.i.i.i.i = load ptr, ptr %.val17.val.i.i.i.i.i.i, align 8, !tbaa !734 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.val17.val.val.i.i.i.i.i.i, i64 56
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !178
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %.val17.val.val.i.i.i.i.i.i, i32 noundef %i.mu, i1 noundef zeroext true)
          to label %.noexc50.i unwind label %.loopexit.split-lp143.loopexit.i

.noexc50.i:                                       ; preds = %bb.bu
  %i.mv = getelementptr inbounds nuw i8, ptr %.val17.val.val.i.i.i.i.i.i, i64 32
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !268 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 44
  %i.my = load i8, ptr %i.mx, align 4, !tbaa !269
  %i.mz = and i8 %i.my, 2
  %.not.i3.i.i.i.i46.i.i.i.i.i = icmp eq i8 %i.mz, 0
  br i1 %.not.i3.i.i.i.i46.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i47.i.i.i.i.i, label %.invoke.i, !prof !76

_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i47.i.i.i.i.i: ; preds = %.noexc50.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !274
  %i.nc = lshr i64 %.023.i.i.i.i.i.i, 3
  %i.nd = and i64 %i.nc, 536870911
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nd ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !30
  %i.ng = and i64 %.023.i.i.i.i.i.i, 7
  %i.nh = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !30
  %i.nj = and i8 %i.ni, %i.nf
  store i8 %i.nj, ptr %i.ne, align 1, !tbaa !30
  %i.nk = add nuw i64 %.023.i.i.i.i.i.i, 1        ; 2 uses
  %i.nl = icmp ult i64 %i.nk, %i.mr
  br i1 %i.nl, label %bb.bu, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !745

bb.bv:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.01522.i.i.i.i.i.i = phi i64 [ %i.mn, %.lr.ph.i.i.i.i.i.i ], [ %i.oe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit19.i.i.i.i.i.i ] ; 3 uses
  %.val.val.i49.i.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !740
  %.val.val.val.i50.i.i.i.i.i = load ptr, ptr %.val.val.i49.i.i.i.i.i, align 8, !tbaa !734 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.val.val.val.i50.i.i.i.i.i, i64 56
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !178
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %.val.val.val.i50.i.i.i.i.i, i32 noundef %i.nn, i1 noundef zeroext true)
          to label %.noexc52.i unwind label %.loopexit142.i

.noexc52.i:                                       ; preds = %bb.bv
  %i.no = getelementptr inbounds nuw i8, ptr %.val.val.val.i50.i.i.i.i.i, i64 32
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !268 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 44
  %i.nr = load i8, ptr %i.nq, align 4, !tbaa !269
  %i.ns = and i8 %i.nr, 2
  %.not.i3.i.i.i18.i.i.i.i.i.i = icmp eq i8 %i.ns, 0
  br i1 %.not.i3.i.i.i18.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit19.i.i.i.i.i.i, label %.invoke.i, !prof !76

_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit19.i.i.i.i.i.i: ; preds = %.noexc52.i
  %i.nt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i.i, i1 true)
  %30 = trunc nuw nsw i64 %i.nt to i32
  %31 = or disjoint i32 %i.mo, %30
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !274
  %32 = zext i32 %31 to i64                       ; 2 uses
  %i.nw = lshr i64 %32, 3
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.nw ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !30
  %i.nz = and i64 %32, 7
  %i.oa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !30
  %i.oc = and i8 %i.ob, %i.ny
  store i8 %i.oc, ptr %i.nx, align 1, !tbaa !30
  %i.od = add i64 %.01522.i.i.i.i.i.i, -1
  %i.oe = and i64 %i.od, %.01522.i.i.i.i.i.i      ; 2 uses
  %.not.i51.i.i.i.i.i = icmp eq i64 %i.oe, 0
  br i1 %.not.i51.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.bv, !llvm.loop !746

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE_EEvPKmiibS11_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i47.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit19.i.i.i.i.i.i, %bb.bt, %.lr.ph.i.i.i.i.i
  %i.of = add nsw i32 %i.mj, 64                   ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.of, %i.jt
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !747

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.og = ashr i32 %i.jp, 6
  %i.oh = and i32 %i.jp, 63
  %i.oi = zext nneg i32 %i.oh to i64
  %notmask.i52.i.i.i.i.i = shl nsw i64 -1, %i.oi
  %i.oj = xor i64 %notmask.i52.i.i.i.i.i, -1
  %i.ok = sext i32 %i.og to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.ok
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !144
  %i.on = and i64 %i.om, %i.oj                    ; 2 uses
  %.not.i53.i.i.i.i.i = icmp eq i64 %i.on, 0
  br i1 %.not.i53.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i54.i.i.i.i.i.a

.preheader.i54.i.i.i.i.i.a:                       ; preds = %bb.bw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i60.i.i.i.i.i
  %.011.i55.i.i.i.i.i = phi i64 [ %i.pg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i60.i.i.i.i.i ], [ %i.on, %bb.bw ] ; 3 uses
  %.val.val.i57.i.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !740
  %.val.val.val.i58.i.i.i.i.i = load ptr, ptr %.val.val.i57.i.i.i.i.i, align 8, !tbaa !734 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.val.val.val.i58.i.i.i.i.i, i64 56
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !178
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %.val.val.val.i58.i.i.i.i.i, i32 noundef %i.op, i1 noundef zeroext true)
          to label %.noexc54.i unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc54.i:                                       ; preds = %.preheader.i54.i.i.i.i.i.a
  %i.oq = getelementptr inbounds nuw i8, ptr %.val.val.val.i58.i.i.i.i.i, i64 32
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !268 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 44
  %i.ot = load i8, ptr %i.os, align 4, !tbaa !269
  %i.ou = and i8 %i.ot, 2
  %.not.i3.i.i.i.i59.i.i.i.i.i = icmp eq i8 %i.ou, 0
  br i1 %.not.i3.i.i.i.i59.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i60.i.i.i.i.i, label %.invoke.i, !prof !76

.invoke.i:                                        ; preds = %.noexc48.i, %.noexc54.i, %.noexc46.i, %.noexc44.i, %.noexc50.i, %.noexc52.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i unwind label %.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE_clEi.exit.i60.i.i.i.i.i: ; preds = %.noexc54.i
  %i.ov = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i55.i.i.i.i.i, i1 true)
  %33 = trunc nuw nsw i64 %i.ov to i32
  %34 = or disjoint i32 %i.jt, %33
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !274
  %35 = zext i32 %34 to i64                       ; 2 uses
  %i.oy = lshr i64 %35, 3
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !30
  %i.pb = and i64 %35, 7
  %i.pc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !30
  %i.pe = and i8 %i.pd, %i.pa
  store i8 %i.pe, ptr %i.oz, align 1, !tbaa !30
  %i.pf = add nsw i64 %.011.i55.i.i.i.i.i, -1
  %i.pg = and i64 %i.pf, %.011.i55.i.i.i.i.i      ; 2 uses
  %.not10.i61.i.i.i.i.i = icmp eq i64 %i.pg, 0
  br i1 %.not10.i61.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliiE_ZNKS7_5applyES9_SG_SL_SO_SP_EUliE_EEvS9_RKSB_INS0_11ArrayVectorEERKSD_RNS0_14FunctionVectorESO_T_T0_EUliE_EEvS10_.exit.i, label %.preheader.i54.i.i.i.i.i.a, !llvm.loop !744

bb.bx:                                            ; preds = %bb.bd
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit105.i

.loopexit142.i:                                   ; preds = %bb.bv
  %lpad.loopexit144.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp143.i

.loopexit.split-lp143.loopexit.i:                 ; preds = %bb.bu
  %lpad.loopexit146.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp143.i

.loopexit.split-lp143.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.i42.i
  %lpad.loopexit162.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp143.i

.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.preheader.i.i.i.i.i.i.a
  %lpad.loopexit164.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp143.i

.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.preheader.i54.i.i.i.i.i.a
  %lpad.loopexit168.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp143.i

.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bs
  %lpad.loopexit171.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp143.i

.loopexit.split-lp143.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i
  %lpad.loopexit.split-lp172.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp143.i

bb.by:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  invoke void @_ZN8facebook5velox9functions13toWrapCaptureINS0_11ArrayVectorEEEN5boost13intrusive_ptrINS0_6BufferEEEiPKNS0_8CallableERKNS0_17SelectivityVectorERKSt10shared_ptrIT_E(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %17, i32 noundef %i.dq, ptr noundef nonnull %i.hn, ptr noundef nonnull align 8 dereferenceable(38) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.bz unwind label %bb.de

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.pi = load ptr, ptr %i.hn, align 8, !tbaa !46
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.pk = load ptr, ptr %i.pj, align 8
  invoke void %i.pk(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull align 8 dereferenceable(38) %16, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %12)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.ca:                                            ; preds = %bb.bz
  %i.pl = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.cb:                                            ; preds = %bb.ca
  %i.pm = load ptr, ptr %12, align 8, !tbaa !175
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.pl, ptr noundef nonnull align 8 dereferenceable(94) %i.pm, ptr noundef nonnull align 8 dereferenceable(38) %16, i1 noundef zeroext true)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.a, ptr %8, align 8
  store ptr %9, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %0, ptr %.sroa.3.0..sroa_idx.i, align 8
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr %18, ptr %.sroa.7.0..sroa_idx.i, align 8
  store ptr %13, ptr %.sroa.8.0..sroa_idx.i, align 8
  store ptr %19, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.pn = load i8, ptr %i.em, align 1, !tbaa !204, !range !80, !noundef !81
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i89.i, label %bb.cd

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i89.i: ; preds = %bb.cc
  %.0.in.pre.i.i90.i = load i8, ptr %i.er, align 4, !tbaa !56, !range !80
  %.pre59 = load i32, ptr %i.es, align 4, !tbaa !206
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i58.i

bb.cd:                                            ; preds = %bb.cc
  %i.pp = load i32, ptr %i.es, align 4, !tbaa !206 ; 2 uses
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %bb.ce, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i

bb.ce:                                            ; preds = %bb.cd
  %i.pr = load i32, ptr %i.et, align 8, !tbaa !215 ; 6 uses
  %i.ps = load i32, ptr %i.eq, align 8, !tbaa !216
  %i.pt = icmp eq i32 %i.pr, %i.ps
  br i1 %i.pt, label %bb.cf, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i

bb.cf:                                            ; preds = %bb.ce
  %i.pu = load ptr, ptr %i.el, align 8, !tbaa !217 ; 2 uses
  %.not.i.i.i81.i = icmp sgt i32 %i.pr, 0
  br i1 %.not.i.i.i81.i, label %bb.cg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i

bb.cg:                                            ; preds = %bb.cf
  %i.pv = and i32 %i.pr, 2147483584               ; 3 uses
  %i.pw = zext nneg i32 %i.pv to i64
  %.not37.i.i.not.i.i83.i155.not = icmp eq i32 %i.pv, 0
  br i1 %.not37.i.i.not.i.i83.i155.not, label %.critedge.i.i.i.i84.i, label %.lr.ph157

bb.ch:                                            ; preds = %.lr.ph157
  %indvars.iv.next.i.i88.i = add nuw nsw i64 %indvars.iv.i.i82.i156, 64 ; 2 uses
  %.not37.i.i.not.i.i83.i = icmp samesign ult i64 %indvars.iv.next.i.i88.i, %i.pw
  br i1 %.not37.i.i.not.i.i83.i, label %.lr.ph157, label %.critedge.i.i.i.i84.i, !llvm.loop !218

.lr.ph157:                                        ; preds = %bb.cg, %bb.ch
  %indvars.iv.i.i82.i156 = phi i64 [ %indvars.iv.next.i.i88.i, %bb.ch ], [ 0, %bb.cg ] ; 2 uses
  %i.px = lshr exact i64 %indvars.iv.i.i82.i156, 3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.px
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !144
  %i.qa = icmp eq i64 %i.pz, -1
  br i1 %i.qa, label %bb.ch, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i, !llvm.loop !218

.critedge.i.i.i.i84.i:                            ; preds = %bb.ch, %bb.cg
  %.not38.i.i.i.i85.i = icmp eq i32 %i.pr, %i.pv
  br i1 %.not38.i.i.i.i85.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i, label %bb.ci

bb.ci:                                            ; preds = %.critedge.i.i.i.i84.i
  %i.qb = lshr i32 %i.pr, 6
  %i.qc = and i32 %i.pr, 63
  %i.qd = zext nneg i32 %i.qc to i64
  %notmask.i40.i.i.i.i86.i = shl nsw i64 -1, %i.qd
  %i.qe = zext nneg i32 %i.qb to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !144
  %.demorgan.i.i87.i = or i64 %i.qg, %notmask.i40.i.i.i.i86.i
  %i.qh = icmp eq i64 %.demorgan.i.i87.i, -1
  %i.qi = zext i1 %i.qh to i16
  %i.qj = or disjoint i16 %i.qi, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i: ; preds = %.lr.ph157, %bb.ci, %.critedge.i.i.i.i84.i, %bb.cf, %bb.ce, %bb.cd
  %.sroa.0.0.insert.ext.i.i57.i = phi i16 [ 256, %bb.ce ], [ 256, %bb.cd ], [ 257, %bb.cf ], [ 257, %.critedge.i.i.i.i84.i ], [ %i.qj, %bb.ci ], [ 256, %.lr.ph157 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i57.i, ptr %i.er, align 4
  %i.qk = trunc i16 %.sroa.0.0.insert.ext.i.i57.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i58.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i58.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i89.i
  %i.ql = phi i32 [ %.pre59, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i89.i ], [ %i.pp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i ] ; 8 uses
  %.0.in.i.i59.i = phi i8 [ %.0.in.pre.i.i90.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i89.i ], [ %i.qk, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i56.i ]
  %.0.i.i60.i = trunc nuw i8 %.0.in.i.i59.i to i1
  br i1 %.0.i.i60.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i58.i
  %i.qm = load i32, ptr %i.et, align 8, !tbaa !215 ; 2 uses
  %i.qn = icmp slt i32 %i.ql, %i.qm
  br i1 %i.qn, label %.lr.ph.i79.i, label %.loopexit152.i

.lr.ph.i79.i:                                     ; preds = %bb.cj, %.noexc91.i
  %.06.i.i = phi i32 [ %i.qo, %.noexc91.i ], [ %i.ql, %bb.cj ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS2_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliiE_ZNKS5_5applyES8_SF_SK_SN_SO_EUliE_EEvS8_RKSA_INS0_11ArrayVectorEERKSC_RNS0_14FunctionVectorESN_T_T0_ENKUliE0_clEi(ptr noundef nonnull readonly align 8 dereferenceable(72) %8, i32 noundef %.06.i.i)
          to label %.noexc91.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc91.i:                                       ; preds = %.lr.ph.i79.i
  %i.qo = add i32 %.06.i.i, 1                     ; 2 uses
  %exitcond.not.i80.i = icmp eq i32 %i.qo, %i.qm
  br i1 %exitcond.not.i80.i, label %.loopexit152.i, label %.lr.ph.i79.i, !llvm.loop !748

bb.ck:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i58.i
  %i.qp = load ptr, ptr %i.el, align 8, !tbaa !217 ; 6 uses
  %i.qq = load i32, ptr %i.et, align 8, !tbaa !215 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.39.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %8, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %8, i64 72, i1 false)
  store i8 1, ptr %6, align 8
  store ptr %i.qp, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %7, align 8
  store ptr %i.qp, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i61.i = icmp slt i32 %i.ql, %i.qq
  br i1 %.not.i.i.i.i61.i, label %bb.cl, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_121FindFirstFunctionBase7doApplyIZNKS4_22FindFirstIndexFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliiE_ZNKS7_5applyESA_SH_SM_SP_SQ_EUliE_EEvSA_RKSC_INS0_11ArrayVectorEERKSE_RNS0_14FunctionVectorESP_T_T0_EUliE0_EEvPKmiiS11_.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.qr = add i32 %i.ql, 63                       ; 2 uses
  %i.qs = srem i32 %i.qr, 64
  %i.qt = sub nsw i32 %i.qr, %i.qs                ; 6 uses
  %i.qu = and i32 %i.qq, -64                      ; 6 uses
  %i.qv = icmp slt i32 %i.qu, %i.qt
  br i1 %i.qv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.qw = ashr i32 %i.qq, 6
  %i.qx = and i32 %i.qq, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %notmask.i.i.i.i.i73.i = shl nsw i64 -1, %i.qy
  %i.qz = xor i64 %notmask.i.i.i.i.i73.i, -1
end_hunk_1
