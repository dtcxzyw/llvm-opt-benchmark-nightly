Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/xml_wgrammar?download=true
inline.NumInlined: 2679
inline.NumDeleted: 1453
begin_hunk_0_@_ZN5boost7archive17basic_xml_grammarIwEC2Ev:bb.a
  br label %bb.hw

bb.gq:                                            ; preds = %.noexc309, %bb.ce
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %.body311

bb.gr:                                            ; preds = %_ZN5boost6spirit7classic7chset_pEPKw.exit313
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gs:                                            ; preds = %_ZN5boost6spirit7classicmiIwEENS1_5chsetIT_EENS1_14anychar_parserERKS5_.exit315
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gt:                                            ; preds = %bb.cg
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gu:                                            ; preds = %_ZN5boost6spirit7classicorINS1_11alternativeINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS1_6actionINS1_5chsetIwEENS_7archive3xml11append_charISE_EEEEEENS3_IT_T0_EERKNS1_6parserISY_EERKNS11_ISZ_EE.exit
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %.body319

.body319:                                         ; preds = %bb.cj, %bb.gu
  %eh.lpad-body320 = phi { ptr, i32 } [ %i.xp, %bb.gu ], [ %i.mp, %bb.cj ]
  call void @_ZN5boost6spirit7classic6binaryINS1_11alternativeINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS1_6actionINS1_5chsetIwEENS_7archive3xml11append_charISE_EEEENS1_6parserINS3_ISP_SX_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #20
  br label %bb.gv

bb.gv:                                            ; preds = %.body319, %bb.gt
  %.pn113 = phi { ptr, i32 } [ %eh.lpad-body320, %.body319 ], [ %i.xo, %bb.gt ]
  call void @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #20
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gs
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %bb.gv ], [ %i.xn, %bb.gs ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #20
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gr
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %bb.gw ], [ %i.xm, %bb.gr ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #20
  br label %.body311

.body311:                                         ; preds = %bb.gq, %bb.cf, %bb.gx
  %.pn113.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn, %bb.gx ], [ %i.xl, %bb.gq ], [ %i.mh, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.hw

bb.gy:                                            ; preds = %bb.cw
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.gz:                                            ; preds = %bb.cy, %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_EaSINS1_11kleene_starISL_EEEERSL_RKT_.exit
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.ha:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_EaSINS1_8sequenceINSN_INSN_INSN_INS1_6strlitIPKcEESL_EENS1_5chlitIwEEEESL_EESU_EEEERSL_RKT_.exit
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hb:                                            ; preds = %bb.da
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hc:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_EaSINS1_8sequenceINSN_INSN_INSN_INS1_6strlitIPKcEESL_EENS1_5chlitIwEEEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml12assign_levelEEEEESU_EEEERSL_RKT_.exit
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hd:                                            ; preds = %bb.dc
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.he:                                            ; preds = %bb.de
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hf:                                            ; preds = %bb.dg
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hg:                                            ; preds = %.noexc349, %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_EaSINS1_11alternativeINSN_INSN_INSN_INSN_ISL_SL_EESL_EESL_EESL_EESL_EEEERSL_RKT_.exit348
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %.body351

bb.hh:                                            ; preds = %_ZN5boost6spirit7classic7chset_pEPKw.exit353
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hi:                                            ; preds = %_ZN5boost6spirit7classicmiIwEENS1_5chsetIT_EENS1_14anychar_parserERKS5_.exit355
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hj:                                            ; preds = %_ZN5boost6spirit7classicdeINS1_5chsetIwEEEENS1_11kleene_starIT_EERKNS1_6parserIS6_EE.exit357
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %.body359

.body359:                                         ; preds = %bb.dl, %bb.hj
  %eh.lpad-body360 = phi { ptr, i32 } [ %i.yb, %bb.hj ], [ %i.qz, %bb.dl ]
  call void @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #20
  br label %bb.hk

bb.hk:                                            ; preds = %.body359, %bb.hi
  %.pn125 = phi { ptr, i32 } [ %eh.lpad-body360, %.body359 ], [ %i.ya, %bb.hi ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #20
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hh
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %bb.hk ], [ %i.xz, %bb.hh ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #20
  br label %.body351

.body351:                                         ; preds = %bb.hg, %bb.di, %bb.hl
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %bb.hl ], [ %i.xy, %bb.hg ], [ %i.qs, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.hw

bb.hm:                                            ; preds = %bb.dv
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hn:                                            ; preds = %.noexc381, %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_EaSINS1_8sequenceINSN_INSN_INSN_INSN_INSN_INSN_INSN_INS1_8optionalISL_EENS1_6strlitIPKwEEEESL_EEST_EESL_EEST_EESL_EESP_EEST_EEEERSL_RKT_.exit
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %.body383

bb.ho:                                            ; preds = %_ZN5boost6spirit7classic7chset_pEPKw.exit385
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.hp:                                            ; preds = %_ZN5boost6spirit7classicmiIwEENS1_5chsetIT_EENS1_14anychar_parserERKS5_.exit387
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hq:                                            ; preds = %_ZN5boost6spirit7classicdeINS1_5chsetIwEEEENS1_11kleene_starIT_EERKNS1_6parserIS6_EE.exit389
  %i.yg = landingpad { ptr, i32 }
          cleanup
  br label %.body391

.body391:                                         ; preds = %bb.ea, %bb.hq
  %eh.lpad-body392 = phi { ptr, i32 } [ %i.yg, %bb.hq ], [ %i.tf, %bb.ea ]
  call void @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #20
  br label %bb.hr

bb.hr:                                            ; preds = %.body391, %bb.hp
  %.pn135 = phi { ptr, i32 } [ %eh.lpad-body392, %.body391 ], [ %i.yf, %bb.hp ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #20
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.ho
  %.pn135.pn = phi { ptr, i32 } [ %.pn135, %bb.hr ], [ %i.ye, %bb.ho ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #20
  br label %.body383

.body383:                                         ; preds = %bb.hn, %bb.dx, %bb.hs
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.hs ], [ %i.yd, %bb.hn ], [ %i.sy, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.hw

bb.ht:                                            ; preds = %bb.ek
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hu:                                            ; preds = %bb.em
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hv:                                            ; preds = %bb.eo
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hc, %bb.hd, %bb.ha, %bb.hb, %bb.gk, %bb.gm, %bb.gl, %bb.gi, %bb.gj, %bb.hm, %bb.gp, %bb.go, %bb.gn, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.hv, %bb.hu, %bb.ht, %.body383, %.body351, %bb.hf, %bb.he, %bb.gz, %bb.gy, %.body311, %bb.gh, %bb.gg, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %.body215, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fi, %bb.fd, %bb.fa
  %.pn143.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yj, %bb.hv ], [ %i.yi, %bb.hu ], [ %i.yh, %bb.ht ], [ %.pn135.pn.pn, %.body383 ], [ %i.xj, %bb.go ], [ %.pn125.pn.pn, %.body351 ], [ %i.xx, %bb.hf ], [ %i.xw, %bb.he ], [ %i.xs, %bb.ha ], [ %i.xg, %bb.gl ], [ %i.xr, %bb.gz ], [ %i.xq, %bb.gy ], [ %.pn113.pn.pn.pn, %.body311 ], [ %i.xk, %bb.gp ], [ %i.xi, %bb.gn ], [ %i.xa, %bb.gf ], [ %i.xd, %bb.gi ], [ %i.ww, %bb.gb ], [ %i.xc, %bb.gh ], [ %i.xb, %bb.gg ], [ %i.wz, %bb.ge ], [ %i.wy, %bb.gd ], [ %i.yc, %bb.hm ], [ %i.wx, %bb.gc ], [ %i.wb, %bb.fa ], [ %i.wv, %bb.ga ], [ %i.wu, %bb.fz ], [ %i.wt, %bb.fy ], [ %i.ws, %bb.fx ], [ %.pn84.pn.pn, %.body215 ], [ %i.wn, %bb.fq ], [ %i.wm, %bb.fp ], [ %i.wl, %bb.fo ], [ %i.wk, %bb.fn ], [ %i.wj, %bb.fm ], [ %.pn74, %bb.fl ], [ %.pn71.pn, %bb.fi ], [ %.pn, %bb.fd ], [ %i.xe, %bb.gj ], [ %i.xf, %bb.gk ], [ %i.xh, %bb.gm ], [ %i.xt, %bb.hb ], [ %i.xv, %bb.hd ], [ %i.xu, %bb.hc ]
  call void @_ZN5boost7archive17basic_xml_grammarIwE13return_valuesD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.bf) #20
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.ez
  %.pn143.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn, %bb.hw ], [ %i.wa, %bb.ez ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bd) #20
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.ey
  %.pn143.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn, %bb.hx ], [ %i.vz, %bb.ey ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bb) #20
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.ex
  %.pn143.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn, %bb.hy ], [ %i.vy, %bb.ex ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.az) #20
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.ew
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn, %bb.hz ], [ %i.vx, %bb.ew ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ax) #20
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.ev
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ia ], [ %i.vw, %bb.ev ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.av) #20
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.eu
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ib ], [ %i.vv, %bb.eu ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.at) #20
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.et
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ic ], [ %i.vu, %bb.et ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ar) #20
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.es
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.id ], [ %i.vt, %bb.es ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ap) #20
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.er
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ie ], [ %i.vs, %bb.er ]
  call void @_ZN5boost6spirit7classic5chsetIwED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.an) #20
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.eq
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.if ], [ %i.vr, %bb.eq ]
  %i.yk = load ptr, ptr %i.am, align 8, !tbaa !89 ; 3 uses
  %i.yl = icmp eq ptr %i.yk, null
  br i1 %i.yl, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.ym = load ptr, ptr %i.yk, align 8, !tbaa !21
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8
  call void %i.yo(ptr noundef nonnull align 8 dereferenceable(8) %i.yk) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit: ; preds = %bb.ig, %bb.ih
  %i.yp = load ptr, ptr %i.al, align 8, !tbaa !89 ; 3 uses
  %i.yq = icmp eq ptr %i.yp, null
  br i1 %i.yq, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit418, label %bb.ii

bb.ii:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit
  %i.yr = load ptr, ptr %i.yp, align 8, !tbaa !21
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yt = load ptr, ptr %i.ys, align 8
  call void %i.yt(ptr noundef nonnull align 8 dereferenceable(8) %i.yp) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit418

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit418: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit, %bb.ii
  %i.yu = load ptr, ptr %i.ak, align 8, !tbaa !89 ; 3 uses
  %i.yv = icmp eq ptr %i.yu, null
  br i1 %i.yv, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit419, label %bb.ij

bb.ij:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit418
  %i.yw = load ptr, ptr %i.yu, align 8, !tbaa !21
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = load ptr, ptr %i.yx, align 8
  call void %i.yy(ptr noundef nonnull align 8 dereferenceable(8) %i.yu) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit419

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit419: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit418, %bb.ij
  %i.yz = load ptr, ptr %i.aj, align 8, !tbaa !89 ; 3 uses
  %i.za = icmp eq ptr %i.yz, null
  br i1 %i.za, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit420, label %bb.ik

bb.ik:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit419
  %i.zb = load ptr, ptr %i.yz, align 8, !tbaa !21
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8
  call void %i.zd(ptr noundef nonnull align 8 dereferenceable(8) %i.yz) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit420

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit420: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit419, %bb.ik
  %i.ze = load ptr, ptr %i.ai, align 8, !tbaa !89 ; 3 uses
  %i.zf = icmp eq ptr %i.ze, null
  br i1 %i.zf, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit421, label %bb.il

bb.il:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit420
  %i.zg = load ptr, ptr %i.ze, align 8, !tbaa !21
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8
  call void %i.zi(ptr noundef nonnull align 8 dereferenceable(8) %i.ze) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit421

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit421: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit420, %bb.il
  %i.zj = load ptr, ptr %i.ah, align 8, !tbaa !89 ; 3 uses
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit422, label %bb.im

bb.im:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit421
  %i.zl = load ptr, ptr %i.zj, align 8, !tbaa !21
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load ptr, ptr %i.zm, align 8
  call void %i.zn(ptr noundef nonnull align 8 dereferenceable(8) %i.zj) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit422

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit422: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit421, %bb.im
  %i.zo = load ptr, ptr %i.ag, align 8, !tbaa !89 ; 3 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit423, label %bb.in

bb.in:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit422
  %i.zq = load ptr, ptr %i.zo, align 8, !tbaa !21
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zs = load ptr, ptr %i.zr, align 8
  call void %i.zs(ptr noundef nonnull align 8 dereferenceable(8) %i.zo) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit423

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit423: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit422, %bb.in
  %i.zt = load ptr, ptr %i.af, align 8, !tbaa !89 ; 3 uses
  %i.zu = icmp eq ptr %i.zt, null
  br i1 %i.zu, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit424, label %bb.io

bb.io:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit423
  %i.zv = load ptr, ptr %i.zt, align 8, !tbaa !21
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8
  call void %i.zx(ptr noundef nonnull align 8 dereferenceable(8) %i.zt) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit424

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit424: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit423, %bb.io
  %i.zy = load ptr, ptr %i.ae, align 8, !tbaa !89 ; 3 uses
  %i.zz = icmp eq ptr %i.zy, null
  br i1 %i.zz, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit425, label %bb.ip

bb.ip:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit424
  %i.aaa = load ptr, ptr %i.zy, align 8, !tbaa !21
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load ptr, ptr %i.aab, align 8
  call void %i.aac(ptr noundef nonnull align 8 dereferenceable(8) %i.zy) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit425

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit425: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit424, %bb.ip
  %i.aad = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 3 uses
  %i.aae = icmp eq ptr %i.aad, null
  br i1 %i.aae, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit426, label %bb.iq

bb.iq:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit425
  %i.aaf = load ptr, ptr %i.aad, align 8, !tbaa !21
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aah = load ptr, ptr %i.aag, align 8
  call void %i.aah(ptr noundef nonnull align 8 dereferenceable(8) %i.aad) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit426

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit426: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit425, %bb.iq
  %i.aai = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 3 uses
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit427, label %bb.ir

bb.ir:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit426
  %i.aak = load ptr, ptr %i.aai, align 8, !tbaa !21
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8
  call void %i.aam(ptr noundef nonnull align 8 dereferenceable(8) %i.aai) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit427

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit427: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit426, %bb.ir
  %i.aan = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 3 uses
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit428, label %bb.is

bb.is:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit427
  %i.aap = load ptr, ptr %i.aan, align 8, !tbaa !21
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8
  call void %i.aar(ptr noundef nonnull align 8 dereferenceable(8) %i.aan) #20, !inline_history !167
  br label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit428

_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit428: ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit427, %bb.is
  %i.aas = load ptr, ptr %i.aa, align 8, !tbaa !89 ; 3 uses
  %i.aat = icmp eq ptr %i.aas, null
  br i1 %i.aat, label %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit429, label %bb.it

bb.it:                                            ; preds = %_ZN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_ED2Ev.exit428
  %i.aau = load ptr, ptr %i.aas, align 8, !tbaa !21
end_hunk_0
