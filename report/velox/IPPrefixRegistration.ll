Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IPPrefixRegistration?download=true
inline.NumInlined: 11021
inline.NumDeleted: 3133
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator6castToERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_E:bb.a
          to label %.body.i54 unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i.i
  %i.xh = landingpad { ptr, i32 }
          catch ptr null
  %i.xi = extractvalue { ptr, i32 } %i.xh, 0
  call void @__clang_call_terminate(ptr %i.xi) #43
  unreachable

bb.fr:                                            ; preds = %.loopexit40.i.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i102

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i.i.i.i.i, %bb.fb
  %i.xj = add i64 %.01553.i.i.i.i.i.i.i.i, -1
  %i.xk = and i64 %i.xj, %.01553.i.i.i.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i.i.i.i104 = icmp eq i64 %i.xk, 0
  br i1 %.not.i.i.i.i.i.i.i.i104, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.fb, !llvm.loop !1055

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clImEEDaSE_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.i.i.i.i.i.i.i.i, %bb.dv, %bb.du
  %i.xl = add nsw i32 %i.rc, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i.i60 = icmp sgt i32 %i.xl, %i.qf
  br i1 %.not33.i.i.i.i.i.i.i60, label %._crit_edge.i.i.i.i.i.i.i61, label %bb.du, !llvm.loop !1056

bb.fs:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i61
  %i.xm = and i32 %i.qb, 63
  %i.xn = zext nneg i32 %i.xm to i64
  %notmask.i36.i.i.i.i.i.i.i63 = shl nsw i64 -1, %i.xn
  %i.xo = xor i64 %notmask.i36.i.i.i.i.i.i.i63, -1
  br label %.invoke.i64

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiiSG_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i61, %.invoke.i64, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit23.i46

.loopexit23.i46:                                  ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiiSG_.exit.i.i.i.i, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.xp = getelementptr inbounds nuw i8, ptr %21, i64 96
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !270 ; 3 uses
  %.not.i.i.i.i20.i47 = icmp eq ptr %i.xq, null
  br i1 %.not.i.i.i.i20.i47, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i48, label %bb.ft

bb.ft:                                            ; preds = %.loopexit23.i46
  %i.xr = getelementptr inbounds nuw i8, ptr %21, i64 112
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !347
  %i.xt = ptrtoint ptr %i.xs to i64
  %i.xu = ptrtoint ptr %i.xq to i64
  %i.xv = sub i64 %i.xt, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %i.xq, i64 noundef %i.xv) #42
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i48

_ZNSt6vectorImSaImEED2Ev.exit.i.i48:              ; preds = %bb.ft, %.loopexit23.i46
  %i.xw = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !348 ; 3 uses
  %.not.i.i.i1.i.i49 = icmp eq ptr %i.xx, null
  br i1 %.not.i.i.i1.i.i49, label %_ZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i48
  %i.xy = getelementptr inbounds nuw i8, ptr %21, i64 88
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !349
  %i.ya = ptrtoint ptr %i.xz to i64
  %i.yb = ptrtoint ptr %i.xx to i64
  %i.yc = sub i64 %i.ya, %i.yb
  call void @_ZdlPvm(ptr noundef nonnull %i.xx, i64 noundef %i.yc) #42
  br label %_ZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_.exit

.loopexit.i114:                                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i
  %lpad.loopexit.i115 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54

.loopexit.split-lp.loopexit.i102:                 ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i.i.i.i.i
  %lpad.loopexit25.i103 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54

.loopexit.split-lp.loopexit.split-lp.loopexit.i73: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke.i72
  %lpad.loopexit29.i74 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i52: ; preds = %bb.dt, %.invoke.i64
  %lpad.loopexit.split-lp.i53 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i54

.body.i54:                                        ; preds = %bb.en, %bb.fe, %bb.db, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i52, %.loopexit.split-lp.loopexit.split-lp.loopexit.i73, %.loopexit.split-lp.loopexit.i102, %.loopexit.i114, %bb.fp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i.i, %bb.ey, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i, %bb.dm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i111
  %eh.lpad-body.i55 = phi { ptr, i32 } [ %i.wd, %bb.fe ], [ %.pn.i.i.i.i.i118, %bb.dm ], [ %i.po, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i111 ], [ %i.oq, %bb.db ], [ %.pn.i18.i.i.i.i.i.i.i.i76, %bb.ey ], [ %i.vq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i105, %bb.fp ], [ %i.xb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i53, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i52 ], [ %lpad.loopexit.i115, %.loopexit.i114 ], [ %lpad.loopexit25.i103, %.loopexit.split-lp.loopexit.i102 ], [ %lpad.loopexit29.i74, %.loopexit.split-lp.loopexit.split-lp.loopexit.i73 ], [ %eh.lpad-body.i.i.i.i.i.i.i.i69, %bb.en ]
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %21) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %common.resume

_ZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i48, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %bb.ga

bb.fv:                                            ; preds = %._crit_edge, %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.yd = phi ptr [ %.pre, %._crit_edge ], [ %i.lw, %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #35
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !118
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 80
  %i.yg = load ptr, ptr %i.yf, align 8
  call void %i.yg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(18) %i.yd)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !1067
  %i.yh = load ptr, ptr %39, align 8, !tbaa !119, !noalias !1067
  %i.yi = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !115, !noalias !1067
  %i.yk = ptrtoint ptr %i.yh to i64
  store i64 %i.yk, ptr %6, align 16, !noalias !1067
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.yj, ptr %.sroa_idx3.i, align 8, !noalias !1067
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr nonnull @.str.29, i64 42, i64 13, ptr nonnull %6)
          to label %bb.fw unwind label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !1067
  %i.yl = load ptr, ptr %39, align 8, !tbaa !119  ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.fw
  %i.yo = load i64, ptr %i.ym, align 8, !tbaa !116
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yp) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #35
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator6castToERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr nonnull @.str.29) #44
          to label %bb.fx unwind label %bb.fz

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable

bb.fy:                                            ; preds = %bb.fv
  %i.yq = landingpad { ptr, i32 }
          cleanup
  %i.yr = load ptr, ptr %39, align 8, !tbaa !119  ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.yt = icmp eq ptr %i.yr, %i.ys
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.fy
  %i.yu = load i64, ptr %i.ys, align 8, !tbaa !116
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.yr, i64 noundef %i.yv) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.yw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yx = load ptr, ptr %38, align 8, !tbaa !119  ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.yz = icmp eq ptr %i.yx, %i.yy
  br i1 %i.yz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.fz
  %i.za = load i64, ptr %i.yy, align 8, !tbaa !116
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.zb) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.pn = phi { ptr, i32 } [ %i.yq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.yw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.yw, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  br label %common.resume

bb.ga:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator17castFromIpAddressERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_.exit, %_ZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator14castFromStringERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4exec12CastOperator6castToERKNS0_10BaseVectorERNS1_7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSB_IS3_ERKSB_INS1_9CastHooksEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(94) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(38) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(94) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(38) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator8castFromERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_E(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(94) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(38) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.195", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %8 = alloca %"struct.std::array", align 1       ; 20 uses
  %9 = alloca %"class.folly::IPAddressV6", align 4 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.folly::IPAddressV4", align 4 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 17 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %18 = alloca %class.anon.847, align 8           ; 10 uses
  %19 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %20 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %21 = alloca %class.anon.842, align 1           ; 3 uses
  %22 = alloca %class.anon.726, align 8           ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !211    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !234
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.g)
  %i.h = load ptr, ptr %4, align 8, !tbaa !126    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !194
  %cond = icmp eq i8 %i.j, 7
  br i1 %cond, label %bb.b, label %bb.ch

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %5, align 8, !tbaa !249    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.m = icmp eq ptr %i.l, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  %i.n = select i1 %i.m, ptr %i.k, ptr null
  store ptr %i.n, ptr %i.a, align 8, !tbaa !359
  %i.o = tail call noundef ptr @__dynamic_cast(ptr nonnull readonly align 8 dereferenceable(94) %1, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9RowVectorE, i64 0) #35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.p, ptr %23, align 8, !tbaa !112
  store i16 28777, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 2, ptr %i.q, align 8, !tbaa !115
  %i.r = getelementptr inbounds nuw i8, ptr %23, i64 18
  store i8 0, ptr %i.r, align 2, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !126
  %i.u = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.t, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #35 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %_ZNK8facebook5velox4Type5asRowEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_bad_cast() #44
          to label %.noexc16.i unwind label %bb.ce

.noexc16.i:                                       ; preds = %bb.c
  unreachable

_ZNK8facebook5velox4Type5asRowEv.exit.i.i:        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.x = invoke noundef i32 @_ZNK8facebook5velox7RowType11getChildIdxESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i64 2, ptr nonnull %i.p)
          to label %bb.d unwind label %bb.ce

bb.d:                                             ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit.i.i
  %i.y = zext i32 %i.x to i64
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !360
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !249
  %i.ac = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ab, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorInEE, i64 0) #35
  %i.ad = load ptr, ptr %23, align 8, !tbaa !119  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.p, align 8, !tbaa !116
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #35
  %i.ah = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.ah, ptr %24, align 8, !tbaa !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 6, ptr %i.ai, align 8, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 22
  store i8 0, ptr %i.aj, align 2, !tbaa !116
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !126
  %i.al = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.ak, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #35 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %_ZNK8facebook5velox4Type5asRowEv.exit.i26.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void @__cxa_bad_cast() #44
          to label %.noexc27.i unwind label %bb.cf

.noexc27.i:                                       ; preds = %bb.e
  unreachable

_ZNK8facebook5velox4Type5asRowEv.exit.i26.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.an = invoke noundef i32 @_ZNK8facebook5velox7RowType11getChildIdxESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(96) %i.al, i64 6, ptr nonnull %i.ah)
          to label %bb.f unwind label %bb.cf

bb.f:                                             ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit.i26.i
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !360
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !249
  %i.as = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ar, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox12SimpleVectorIaEE, i64 0) #35
  %i.at = load ptr, ptr %24, align 8, !tbaa !119  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ah
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i: ; preds = %bb.f
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !116
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  store ptr %i.as, ptr %i.c, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %i.b, ptr %22, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !255, !range !256, !noundef !257
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i, label %bb.g

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i
  %.0.in.pre.i.i.i.i.i = load i8, ptr %i.ax, align 4, !tbaa !258, !range !256
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !267
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !268 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !269
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %3, align 8, !tbaa !270   ; 2 uses
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bk = and i32 %i.bf, 2147483584               ; 3 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %.not37.i.i.not.i.i.i.i.i116.not = icmp eq i32 %i.bk, 0
  br i1 %.not37.i.i.not.i.i.i.i.i116.not, label %.critedge.i.i.i.i.i.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i117, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i, %i.bl
  br i1 %.not37.i.i.not.i.i.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i.i.i, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %indvars.iv.i.i.i.i.i117 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bm = lshr exact i64 %indvars.iv.i.i.i.i.i117, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !141
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %bb.k, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, !llvm.loop !7

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.j
  %.not38.i.i.i.i.i.i.i = icmp eq i32 %i.bf, %i.bk
  br i1 %.not38.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.critedge.i.i.i.i.i.i.i
  %i.bq = lshr i32 %i.bf, 6
  %i.br = and i32 %i.bf, 63
  %i.bs = zext nneg i32 %i.br to i64
  %notmask.i40.i.i.i.i.i.i.i = shl nsw i64 -1, %i.bs
  %i.bt = zext nneg i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !141
  %.demorgan.i.i.i.i.i = or i64 %i.bv, %notmask.i40.i.i.i.i.i.i.i
  %i.bw = icmp eq i64 %.demorgan.i.i.i.i.i, -1
  %i.bx = zext i1 %i.bw to i16
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator8castFromERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEERSC_IS3_E:bb.a
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !116
  %or.cond.not.i.i.i.i.i.i.i = icmp eq i8 %i.cs, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !116
  %or.cond.not.i.i.i.1.i.i.i.i = icmp eq i8 %i.cu, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i:                    ; preds = %tailrecurse.i.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !116
  %or.cond.not.i.i.i.2.i.i.i.i = icmp eq i8 %i.cw, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i:                    ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !116
  %or.cond.not.i.i.i.3.i.i.i.i = icmp eq i8 %i.cy, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %.028.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.w unwind label %bb.y

.loopexit.i.i.i.i:                                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i, %bb.o
  invoke void @__cxa_rethrow() #44
          to label %bb.ac unwind label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.cz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #35
  %i.da = icmp eq i32 %i.ch, %i.cz
  br i1 %i.da, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  %i.db = call ptr @__cxa_begin_catch(ptr %i.cg) #35 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #35
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %.028.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dc = load ptr, ptr %19, align 8, !tbaa !275
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i

bb.t:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %19, align 8, !tbaa !275
  %.not.i4.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i4.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

bb.v:                                             ; preds = %.loopexit.i.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i
  %i.dg = load ptr, ptr %20, align 8, !tbaa !275
  %.not.i6.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i6.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i

bb.y:                                             ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %20, align 8, !tbaa !275
  %.not.i8.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i8.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #35
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i, %bb.v
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.dh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i ], [ %i.df, %bb.v ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ab

common.resume:                                    ; preds = %bb.ay, %bb.bp, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i, %bb.aa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27.i.i.i.i.i.i.i.i, %bb.bj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40.i.i.i.i.i.i.i.i, %bb.ca, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn11.pn.i, %bb.cg ], [ %.pn.i.i.i.i.i, %bb.aa ], [ %i.dd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i ], [ %i.cf, %bb.p ], [ %.pn.i18.i.i.i.i.i.i.i.i, %bb.bj ], [ %i.ix, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.ca ], [ %i.ki, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40.i.i.i.i.i.i.i.i ], [ %i.jk, %bb.bp ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.aa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #43
  unreachable

bb.ac:                                            ; preds = %.loopexit.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clIiEEDaSE_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dl = add i32 %.028.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.dl, %i.cb
  br i1 %exitcond.not.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1068

bb.ad:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i
  %i.dm = load ptr, ptr %3, align 8, !tbaa !270   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !267 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !268 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %22, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %21, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %2, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  store i8 1, ptr %18, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.dm, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i = icmp slt i32 %i.do, %i.dq
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ae, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiiSG_.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dr = add i32 %i.do, 63                       ; 2 uses
  %i.ds = srem i32 %i.dr, 64
  %i.dt = sub nsw i32 %i.dr, %i.ds                ; 6 uses
  %i.du = and i32 %i.dq, -64                      ; 4 uses
  %i.dv = icmp slt i32 %i.du, %i.dt
  br i1 %i.dv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dw = ashr i32 %i.dq, 6
  %i.dx = and i32 %i.dq, 63
  %i.dy = zext nneg i32 %i.dx to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.ea = sub nsw i32 %i.dt, %i.do                ; 2 uses
  %i.eb = zext nneg i32 %i.ea to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.eb
  %i.ec = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.ed = sub nsw i32 64, %i.ea
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl i64 %i.ec, %i.ee
  %i.eg = and i64 %i.ef, %i.dz
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %18, i32 noundef %i.dw, i64 noundef %i.eg)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiiSG_.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %.not32.i.i.i.i.i.i.i = icmp eq i32 %i.do, %i.dt
  br i1 %.not32.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = sdiv i32 %i.do, 64
  %i.ei = sub nsw i32 %i.dt, %i.do                ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i.i35.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i.i35.i.i.i.i.i.i.i, -1
  %i.el = sub nsw i32 64, %i.ei
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl i64 %i.ek, %i.em
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %18, i32 noundef %i.eh, i64 noundef %i.en)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eo = add nsw i32 %i.dt, 64                   ; 2 uses
  %.not3345.i.i.i.i.i.i.i = icmp sgt i32 %i.eo, %i.du
  br i1 %.not3345.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ai
  %.012.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 15
  %27 = getelementptr inbounds nuw i8, ptr %8, i64 1
  %.0.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 14
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 2
  %.0.i.i.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 13
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 3
  %.0.i.i.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.0.i.i.3.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 11
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 5
  %.0.i.i.4.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 10
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 6
  %.0.i.i.5.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 9
  %33 = getelementptr inbounds nuw i8, ptr %8, i64 7
  %.0.i.i.6.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.aj

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.ai
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.dq, %i.du
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiiSG_.exit.i.i.i.i, label %bb.cd

bb.aj:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ff = phi i32 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ks, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.046.i.i.i.i.i.i.i = phi i32 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ff, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.fg = sdiv i32 %.046.i.i.i.i.i.i.i, 64        ; 3 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !141 ; 2 uses
  switch i64 %i.fj, label %.lr.ph.i.i.i.i10.i.i.i.i [
    i64 -1, label %bb.ak
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i:                         ; preds = %bb.aj
  %i.fk = shl nsw i32 %i.fg, 6
  br label %bb.bm

bb.ak:                                            ; preds = %bb.aj
  %i.fl = shl nsw i32 %i.fg, 6                    ; 2 uses
  %i.fm = add i32 %i.fl, 64
  %i.fn = sext i32 %i.fm to i64
  %.0.off.i.i.i.i.i.i.i = add i32 %.046.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i, 64
  br i1 %.not63.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERS8_EUlT_E_ZNS4_22applyToSelectedNoThrowISH_EEvSE_SG_EUlSG_E_EEvSE_SG_T0_EUlSG_E_EEvPKmiibSG_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i

.lr.ph62.i.i.i.i.i.i.i.i:                         ; preds = %bb.ak
  %i.fo = sext i32 %i.fl to i64
  br label %bb.al

bb.al:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clImEEDaSE_.exit.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i = phi i64 [ %i.fo, %.lr.ph62.i.i.i.i.i.i.i.i ], [ %i.jf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERS6_EUlT_E_ZNS2_22applyToSelectedNoThrowISF_EEvSC_SE_EUlSE_E_EEvSC_SE_T0_ENKUlSE_E_clImEEDaSE_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fp = load ptr, ptr %22, align 8, !tbaa !369, !nonnull !257, !align !283
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !362 ; 2 uses
  %i.fr = trunc i64 %.061.i.i.i.i.i.i.i.i to i32  ; 5 uses
  %i.fs = load ptr, ptr %i.fq, align 16, !tbaa !118
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 384
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef nonnull align 16 dereferenceable(16) ptr %i.fu(ptr noundef nonnull align 16 dereferenceable(176) %i.fq, i32 noundef %i.fr)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aw, !inline_history !1069

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.al
  %34 = load i128, ptr %i.fv, align 16, !tbaa !186 ; 16 uses
  %i.fw = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !370, !nonnull !257, !align !283
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !364 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !118
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 384
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef signext i8 %i.ga(ptr noundef nonnull align 8 dereferenceable(108) %i.fx, i32 noundef %i.fr)
          to label %.noexc20.i.i.i.i.i.i.i.i unwind label %bb.aw, !inline_history !1069

.noexc20.i.i.i.i.i.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %35 = trunc i128 %34 to i8
  %36 = lshr i128 %34, 120
  %37 = trunc nuw i128 %36 to i8
  store i8 %37, ptr %8, align 1, !tbaa !116
  store i8 %35, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  %38 = lshr i128 %34, 8
  %39 = trunc i128 %38 to i8
  %40 = lshr i128 %34, 112
  %41 = trunc i128 %40 to i8
  store i8 %41, ptr %27, align 1, !tbaa !116
  store i8 %39, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  %42 = lshr i128 %34, 16
  %43 = trunc i128 %42 to i8
  %44 = lshr i128 %34, 104
  %45 = trunc i128 %44 to i8
  store i8 %45, ptr %28, align 1, !tbaa !116
  store i8 %43, ptr %.0.i.i.1.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  %46 = lshr i128 %34, 24
  %47 = trunc i128 %46 to i8
  %48 = lshr i128 %34, 96
  %49 = trunc i128 %48 to i8
  store i8 %49, ptr %29, align 1, !tbaa !116
  store i8 %47, ptr %.0.i.i.2.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  %50 = lshr i128 %34, 32
  %51 = trunc i128 %50 to i8
  %52 = lshr i128 %34, 88
  %53 = trunc i128 %52 to i8
  store i8 %53, ptr %30, align 1, !tbaa !116
  store i8 %51, ptr %.0.i.i.3.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  %54 = lshr i128 %34, 40
  %55 = trunc i128 %54 to i8
  %56 = lshr i128 %34, 80
  %57 = trunc i128 %56 to i8
  store i8 %57, ptr %31, align 1, !tbaa !116
  store i8 %55, ptr %.0.i.i.4.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  %58 = lshr i128 %34, 48
  %59 = trunc i128 %58 to i8
  %60 = lshr i128 %34, 72
  %61 = trunc i128 %60 to i8
  store i8 %61, ptr %32, align 1, !tbaa !116
  store i8 %59, ptr %.0.i.i.5.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  %62 = lshr i128 %34, 56
  %63 = trunc i128 %62 to i8
  %64 = lshr i128 %34, 64
  %65 = trunc i128 %64 to i8
  store i8 %65, ptr %33, align 1, !tbaa !116
  store i8 %63, ptr %.0.i.i.6.i.i.i.i.i.i.i.i.i, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %9, ptr noundef nonnull align 1 dereferenceable(16) %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.gc = invoke noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(18) %9)
          to label %.noexc21.i.i.i.i.i.i.i.i unwind label %bb.aw

.noexc21.i.i.i.i.i.i.i.i:                         ; preds = %.noexc20.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  br i1 %i.gc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i
  %i.gd = invoke i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(18) %9)
          to label %.noexc22.i.i.i.i.i.i.i.i unwind label %bb.aw

.noexc22.i.i.i.i.i.i.i.i:                         ; preds = %bb.am
  store i32 %i.gd, ptr %11, align 4
  invoke void @_ZNK5folly11IPAddressV43strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.aw

bb.an:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i
  invoke void @_ZNK5folly11IPAddressV63strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(18) %9)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.aw

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.an, %.noexc22.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !1077
  %i.ge = load ptr, ptr %10, align 8, !tbaa !119
  %i.gf = load i64, ptr %i.ep, align 8, !tbaa !115
  store ptr %i.ge, ptr %7, align 16, !tbaa !116
  store i64 %i.gf, ptr %i.eq, align 8, !tbaa !116
  %i.gg = zext i8 %i.gb to i32
  store i32 %i.gg, ptr %i.er, align 16, !tbaa !116, !noalias !1077
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.180, i64 5, i64 45, ptr nonnull %7)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1077
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.gh = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !371, !nonnull !257, !align !283
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !359 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %13, align 8, !tbaa !118
  store i8 0, ptr %i.et, align 8, !tbaa !374
  store ptr null, ptr %i.eu, align 8, !tbaa !375
  store ptr %i.gi, ptr %i.ev, align 8, !tbaa !376
  store i32 %i.fr, ptr %i.ew, align 8, !tbaa !377
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !112
  store i64 0, ptr %i.ez, align 8, !tbaa !115
  store i8 0, ptr %i.ey, align 8, !tbaa !116
  %i.gj = load i64, ptr %i.fb, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gk = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.gi, i64 noundef %i.gj, i1 noundef zeroext false)
          to label %.noexc36.i.i.i.i.i.i.i.i.i unwind label %bb.av ; 5 uses

.noexc36.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ap
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !378
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !379 ; 2 uses
  %i.gp = sub i64 %i.gm, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !334
  %i.gs = and i8 %i.gr, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i.i.i.i, label %bb.aq, !prof !120

bb.aq:                                            ; preds = %.noexc36.i.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #44
          to label %.noexc37.i.i.i.i.i.i.i.i.i unwind label %bb.av

.noexc37.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.aq
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc36.i.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !335
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.go ; 3 uses
  %i.gw = load i64, ptr %i.fa, align 8, !tbaa !380 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i.i.i.i
  %i.gx = load ptr, ptr %i.es, align 8, !tbaa !381
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gx, i64 %i.gw, i1 false)
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %i.gp, ptr %i.fc, align 8, !tbaa !382
  store ptr %i.gv, ptr %i.es, align 8, !tbaa !381
  store ptr %i.gk, ptr %i.eu, align 8, !tbaa !375
  %.pr.i.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fb, align 8, !tbaa !115 ; 2 uses
  store i64 %i.gj, ptr %i.fa, align 8, !tbaa !380
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.pre.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i.i.i.i
  %i.gy = load ptr, ptr %12, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gy, i64 %.pr.i.pre.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.as, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i.i.i.i.i.i.i.i.i, %bb.ao
  invoke void @_ZN8facebook5velox4exec12StringWriter8finalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %13, align 8, !tbaa !118
  %i.gz = load ptr, ptr %i.ex, align 8, !tbaa !119 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ey
  br i1 %i.ha, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.hb = load i64, ptr %i.ey, align 8, !tbaa !116
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #42, !inline_history !383
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  %i.hd = load ptr, ptr %12, align 8, !tbaa !119  ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.fd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.hf = load i64, ptr %i.fd, align 8, !tbaa !116
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %i.hh = load ptr, ptr %10, align 8, !tbaa !119  ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.fe
  br i1 %i.hi, label %_ZZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_ENKUlT_E_clImEEDaSD_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.hj = load i64, ptr %i.fe, align 8, !tbaa !116
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #42
  br label %_ZZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_ENKUlT_E_clImEEDaSD_.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i.i.i.i.i, %bb.aq, %bb.ap
  %i.hm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %13, align 8, !tbaa !118
  %i.hn = load ptr, ptr %i.ex, align 8, !tbaa !119 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ey
  br i1 %i.ho, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.hp = load i64, ptr %i.ey, align 8, !tbaa !116
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #42, !inline_history !383
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox4exec12StringWriterD2Ev.exit14.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  %i.hr = load ptr, ptr %12, align 8, !tbaa !119  ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.fd
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14.i.i.i.i.i.i.i.i.i
  %i.ht = load i64, ptr %i.fd, align 8, !tbaa !116
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i.i.i.i.i.i.i.i, %bb.au
  %.pn.i19.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hl, %bb.au ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i.i.i.i.i.i.i.i ], [ %i.hm, %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %i.hv = load ptr, ptr %10, align 8, !tbaa !119  ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.fe
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i.i.i.i.i.i.i
  %i.hx = load i64, ptr %i.fe, align 8, !tbaa !116
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %.body.i.i.i.i.i.i.i.i

_ZZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_ENKUlT_E_clImEEDaSD_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_ISA_EEvSC_iibSD_EUliE_EEviiSD_T0_:bb.a
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !838
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !859
  %i.an = add nsw i64 %.011.i, -1
  %i.ao = and i64 %i.an, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !3126

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sdiv i32 %0, 64                         ; 2 uses
  %i.aq = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i35, -1
  %i.at = sub nsw i32 64, %i.aq
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl i64 %i.as, %i.au
  %i.aw = load i8, ptr %2, align 8, !tbaa !863, !range !256, !noundef !257
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !864
  %i.az = sext i32 %i.ap to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !141
  %i.bc = xor i8 %i.aw, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, %i.av                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bg, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = shl nsw i32 %i.ap, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = sext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !3130
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !3131, !nonnull !257, !align !283
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bg, %.preheader.i37 ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !851
  %i.bq = or disjoint i64 %i.bo, %i.bk            ; 2 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !838
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !859
  %i.bu = add i64 %.011.i38, -1
  %i.bv = and i64 %i.bu, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bv, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !3126

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.bw = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.bw, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bx = load i8, ptr %3, align 8, !tbaa !866, !range !256, !noundef !257
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !867
  %i.ca = xor i8 %i.bx, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 216 ; 2 uses
  %i.ch = load ptr, ptr %i.cd, align 8, !nonnull !257, !align !283 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ci = phi i32 [ %i.bw, %.lr.ph ], [ %i.dj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ci, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cj = sdiv i32 %.051, 64                      ; 3 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !141
  %i.cn = xor i64 %i.cm, %i.cc                    ; 2 uses
  switch i64 %i.cn, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.co = shl nsw i32 %i.cj, 6
  %i.cp = sext i32 %i.co to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cj, 6                    ; 2 uses
  %i.cr = add nuw i32 %i.cq, 64
  %i.cs = sext i32 %i.cr to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.ct = sext i32 %i.cq to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.ct, %.lr.ph21.i ], [ %i.cz, %bb.j ] ; 2 uses
  %i.cu = load ptr, ptr %i.cg, align 8, !tbaa !851
  %sext.i = shl i64 %.020.i, 32
  %i.cv = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !838
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !859
  %i.cz = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !3127

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.di, %bb.k ] ; 3 uses
  %i.db = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dc = load ptr, ptr %i.cg, align 8, !tbaa !851
  %i.dd = or disjoint i64 %i.db, %i.cp            ; 2 uses
  %i.de = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !838
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !859
  %i.dh = add i64 %.01519.i, -1
  %i.di = and i64 %i.dh, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.di, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !3128

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.dj = add nsw i32 %i.ci, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dj, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !3129

bb.l:                                             ; preds = %._crit_edge
  %i.dk = ashr i32 %1, 6
  %i.dl = and i32 %1, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i42 = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i42, -1
  %i.do = load i8, ptr %2, align 8, !tbaa !863, !range !256, !noundef !257
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !864
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !141
  %i.du = xor i8 %i.do, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.dy, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eb = sext i32 %i.d to i64
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !3130
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 216
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !3131, !nonnull !257, !align !283
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.dy, %.preheader.i44 ], [ %i.em, %bb.m ] ; 3 uses
  %i.ef = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !851
  %i.eh = or disjoint i64 %i.ef, %i.eb            ; 2 uses
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !838
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !859
  %i.el = add nsw i64 %.011.i45, -1
  %i.em = and i64 %i.el, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.em, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !3126

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorINS0_10StringViewEE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

declare noundef i32 @_ZNK8facebook5velox7RowType11getChildIdxESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(96), i64, ptr) local_unnamed_addr #1

declare void @__cxa_bad_cast() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox12_GLOBAL__N_120IPPrefixCastOperator12castToStringERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERS3_ENKUlT_E_clIiEEDaSD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %3 = alloca %"struct.std::array", align 1       ; 20 uses
  %4 = alloca %"class.folly::IPAddressV6", align 4 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.folly::IPAddressV4", align 4 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !369, !nonnull !257, !align !283
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 16 dereferenceable(16) ptr %i.e(ptr noundef nonnull align 16 dereferenceable(176) %i.b, i32 noundef %1)
  %9 = load i128, ptr %i.f, align 16, !tbaa !186  ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !370, !nonnull !257, !align !283
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !364  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.l = load ptr, ptr %i.k, align 8
  %10 = tail call noundef signext i8 %i.l(ptr noundef nonnull align 8 dereferenceable(108) %i.i, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %.012.i.i = getelementptr inbounds nuw i8, ptr %3, i64 15
  %11 = trunc i128 %9 to i8
  %12 = lshr i128 %9, 120
  %13 = trunc nuw i128 %12 to i8
  store i8 %13, ptr %3, align 1, !tbaa !116
  store i8 %11, ptr %.012.i.i, align 1, !tbaa !116
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.0.i.i = getelementptr inbounds nuw i8, ptr %3, i64 14
  %15 = lshr i128 %9, 8
  %16 = trunc i128 %15 to i8
  %17 = lshr i128 %9, 112
  %18 = trunc i128 %17 to i8
  store i8 %18, ptr %14, align 1, !tbaa !116
  store i8 %16, ptr %.0.i.i, align 1, !tbaa !116
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.0.i.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 13
  %20 = lshr i128 %9, 16
  %21 = trunc i128 %20 to i8
  %22 = lshr i128 %9, 104
  %23 = trunc i128 %22 to i8
  store i8 %23, ptr %19, align 1, !tbaa !116
  store i8 %21, ptr %.0.i.i.1, align 1, !tbaa !116
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.0.i.i.2 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %25 = lshr i128 %9, 24
  %26 = trunc i128 %25 to i8
  %27 = lshr i128 %9, 96
  %28 = trunc i128 %27 to i8
  store i8 %28, ptr %24, align 1, !tbaa !116
  store i8 %26, ptr %.0.i.i.2, align 1, !tbaa !116
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.0.i.i.3 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %30 = lshr i128 %9, 32
  %31 = trunc i128 %30 to i8
  %32 = lshr i128 %9, 88
  %33 = trunc i128 %32 to i8
  store i8 %33, ptr %29, align 1, !tbaa !116
  store i8 %31, ptr %.0.i.i.3, align 1, !tbaa !116
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.0.i.i.4 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %35 = lshr i128 %9, 40
  %36 = trunc i128 %35 to i8
  %37 = lshr i128 %9, 80
  %38 = trunc i128 %37 to i8
  store i8 %38, ptr %34, align 1, !tbaa !116
  store i8 %36, ptr %.0.i.i.4, align 1, !tbaa !116
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.0.i.i.5 = getelementptr inbounds nuw i8, ptr %3, i64 9
  %40 = lshr i128 %9, 48
  %41 = trunc i128 %40 to i8
  %42 = lshr i128 %9, 72
  %43 = trunc i128 %42 to i8
  store i8 %43, ptr %39, align 1, !tbaa !116
  store i8 %41, ptr %.0.i.i.5, align 1, !tbaa !116
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 7
  %.0.i.i.6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %45 = lshr i128 %9, 56
  %46 = trunc i128 %45 to i8
  %47 = lshr i128 %9, 64
  %48 = trunc i128 %47 to i8
  store i8 %48, ptr %44, align 1, !tbaa !116
  store i8 %46, ptr %.0.i.i.6, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(16) %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.m = call noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(18) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  br i1 %i.m, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.n = call i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(18) %4)
  store i32 %i.n, ptr %6, align 4
  call void @_ZNK5folly11IPAddressV43strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %.noexc

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @_ZNK5folly11IPAddressV63strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(18) %4)
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3134
  %i.o = load ptr, ptr %5, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !115
  store ptr %i.o, ptr %2, align 16, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = zext i8 %10 to i32
  store i32 %i.t, ptr %i.s, align 16, !tbaa !116, !noalias !3134
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.180, i64 5, i64 45, ptr nonnull %2)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3134
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !371, !nonnull !257, !align !283
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !359  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %8, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 0, ptr %i.y, align 8, !tbaa !374
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !375
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !376
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 %1, ptr %i.ab, align 8, !tbaa !377
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 6 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 0, ptr %i.ae, align 8, !tbaa !115
  store i8 0, ptr %i.ad, align 8, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !115 ; 3 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.w, i64 noundef %i.ah, i1 noundef zeroext false)
          to label %.noexc36 unwind label %bb.j   ; 5 uses

.noexc36:                                         ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !378
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !379 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !334
  %i.ar = and i8 %i.aq, 2
  %.not.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.e, !prof !120

bb.e:                                             ; preds = %.noexc36
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #44
          to label %.noexc37 unwind label %bb.j

.noexc37:                                         ; preds = %bb.e
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i: ; preds = %.noexc36
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !335
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 3 uses
  %i.av = load i64, ptr %i.af, align 8, !tbaa !380 ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !381
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.aw, i64 %i.av, i1 false)
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, %bb.f
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !382
  store ptr %i.au, ptr %i.x, align 8, !tbaa !381
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !375
  %.pr.i.pre = load i64, ptr %i.ag, align 8, !tbaa !115 ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !380
  %.not.i = icmp eq i64 %.pr.i.pre, 0
  br i1 %.not.i, label %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i
  %i.ax = load ptr, ptr %7, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %.pr.i.pre, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit

_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit: ; preds = %bb.c, %bb.g, %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i
  invoke void @_ZN8facebook5velox4exec12StringWriter8finalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %8, align 8, !tbaa !118
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !119 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !116
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #42, !inline_history !383
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit

_ZN8facebook5velox4exec12StringWriterD2Ev.exit:   ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.bc = load ptr, ptr %7, align 8, !tbaa !119   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !116
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.bh = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !116
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

bb.i:                                             ; preds = %.noexc
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.e, %bb.d, %_ZN8facebook5velox4exec12StringWriter6appendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %8, align 8, !tbaa !118
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !119 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ad
  br i1 %i.bp, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.j
  %i.bq = load i64, ptr %i.ad, align 8, !tbaa !116
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #42, !inline_history !383
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14

_ZN8facebook5velox4exec12StringWriterD2Ev.exit14: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.bs = load ptr, ptr %7, align 8, !tbaa !119   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !116
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.bn, %_ZN8facebook5velox4exec12StringWriterD2Ev.exit14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.bx = load ptr, ptr %5, align 8, !tbaa !119   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
end_hunk_2
