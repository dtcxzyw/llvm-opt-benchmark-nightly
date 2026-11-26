Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Cmd?download=true
inline.NumInlined: 4253
inline.NumDeleted: 716
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2PP3Cmd19check_for_dimensionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ji, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ja, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %i.jd = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !236 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !206
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ji, %i.jc
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.iz, align 8, !tbaa !237
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.jj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ja, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !240
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.au, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.jp = load ptr, ptr %6, align 8, !tbaa !236   ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZN2PP8VariableD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !206
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #21
  br label %_ZN2PP8VariableD2Ev.exit

_ZN2PP8VariableD2Ev.exit:                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pre262 = load ptr, ptr %i.fu, align 8, !tbaa !247 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre262, i64 16
  %.pre263 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !315
  br label %bb.az

bb.av:                                            ; preds = %.noexc.i
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.aw:                                            ; preds = %bb.al
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %7, align 8, !tbaa !236   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.gq
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.aw
  %i.jy = load i64, ptr %i.gq, align 8, !tbaa !206
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ax:                                            ; preds = %.noexc.i.i89
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ay:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableEEC2IS5_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableEED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %8) #22
  br label %.body

.body:                                            ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ay
  %.pn44 = phi { ptr, i32 } [ %i.kb, %bb.ay ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ic, %bb.ar ] ; 2 uses
  %i.kc = load ptr, ptr %9, align 8, !tbaa !236   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.hf
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %.body
  %i.ke = load i64, ptr %i.hf, align 8, !tbaa !206
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ax
  %.pn44.pn = phi { ptr, i32 } [ %i.ka, %bb.ax ], [ %.pn44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn44, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2PP8VariableD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.av
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.ju, %bb.av ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.jv, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.dm

bb.az:                                            ; preds = %_ZN2PP8VariableD2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.kg = phi ptr [ %.pre263, %_ZN2PP8VariableD2Ev.exit ], [ %i.fx, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit ] ; 2 uses
  %i.kh = phi ptr [ %.pre262, %_ZN2PP8VariableD2Ev.exit ], [ %i.fv, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 5 uses
  %.not10.i.i.i104 = icmp eq ptr %i.kg, null
  br i1 %.not10.i.i.i104, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134, label %.lr.ph.i.i.i105

.lr.ph.i.i.i105:                                  ; preds = %bb.az
  %i.kj = load i64, ptr %i.ao, align 8, !tbaa !205 ; 4 uses
  %i.kk = load ptr, ptr %3, align 8               ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111, %.lr.ph.i.i.i105
  %.012.i.i.i106 = phi ptr [ %i.kg, %.lr.ph.i.i.i105 ], [ %.1.i.i.i116, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111 ] ; 4 uses
  %.0811.i.i.i107 = phi ptr [ %i.ki, %.lr.ph.i.i.i105 ], [ %.19.i.i.i113, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111 ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.012.i.i.i106, i64 40
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !205 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i108 = call i64 @llvm.umin.i64(i64 %i.kj, i64 %i.km) ; 2 uses
  %i.kn = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i108, 0
  br i1 %i.kn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109: ; preds = %bb.ba
  %i.ko = getelementptr inbounds nuw i8, ptr %.012.i.i.i106, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !236
  %i.kq = call i32 @memcmp(ptr noundef %i.kp, ptr noundef %i.kk, i64 noundef %.sroa.speculated.i.i.i.i.i.i108) #22 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i.i.i.i.i110, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109, %bb.ba
  %i.kr = sub i64 %i.km, %i.kj
  %spec.select7.i.i.i.i.i.i.i131 = call i64 @llvm.smax.i64(i64 %i.kr, i64 -2147483648)
  %.08.i.i.i.i.i.i.i132 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i131, i64 2147483647)
  %.0.i6.i.i.i.i.i.i133 = trunc nsw i64 %.08.i.i.i.i.i.i.i132 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109
  %.0.i.i.i.i.i.i112 = phi i32 [ %i.kq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i109 ], [ %.0.i6.i.i.i.i.i.i133, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i130 ]
  %i.ks = icmp slt i32 %.0.i.i.i.i.i.i112, 0      ; 2 uses
  %.19.i.i.i113 = select i1 %i.ks, ptr %.0811.i.i.i107, ptr %.012.i.i.i106 ; 5 uses
  %.1.in.v.i.i.i114 = select i1 %i.ks, i64 24, i64 16
  %.1.in.i.i.i115 = getelementptr inbounds nuw i8, ptr %.012.i.i.i106, i64 %.1.in.v.i.i.i114
  %.1.i.i.i116 = load ptr, ptr %.1.in.i.i.i115, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %.1.i.i.i116, null
  br i1 %.not.i.i.i117, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118, label %bb.ba, !llvm.loop !4

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i111
  %i.kt = icmp eq ptr %.19.i.i.i113, %i.ki
  br i1 %i.kt, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118
  %i.ku = getelementptr inbounds nuw i8, ptr %.19.i.i.i113, i64 40
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !205 ; 2 uses
  %.sroa.speculated.i.i.i.i.i119 = call i64 @llvm.umin.i64(i64 %i.kv, i64 %i.kj) ; 2 uses
  %i.kw = icmp eq i64 %.sroa.speculated.i.i.i.i.i119, 0
  br i1 %i.kw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120: ; preds = %bb.bb
  %i.kx = getelementptr inbounds nuw i8, ptr %.19.i.i.i113, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !236
  %i.kz = call i32 @memcmp(ptr noundef %i.kk, ptr noundef %i.ky, i64 noundef %.sroa.speculated.i.i.i.i.i119) #22 ; 2 uses
  %.not.i.i.i.i.i121 = icmp eq i32 %i.kz, 0
  br i1 %.not.i.i.i.i.i121, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120, %bb.bb
  %i.la = sub i64 %i.kj, %i.kv
  %spec.select7.i.i.i.i.i.i127 = call i64 @llvm.smax.i64(i64 %i.la, i64 -2147483648)
  %.08.i.i.i.i.i.i128 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i127, i64 2147483647)
  %.0.i6.i.i.i.i.i129 = trunc nsw i64 %.08.i.i.i.i.i.i128 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120
  %.0.i.i.i.i.i123 = phi i32 [ %i.kz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i120 ], [ %.0.i6.i.i.i.i.i129, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i126 ]
  %i.lb = icmp slt i32 %.0.i.i.i.i.i123, 0
  %spec.select.i.i124 = select i1 %i.lb, ptr %i.ki, ptr %.19.i.i.i113
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118, %bb.az
  %.sroa.0.0.i.i125 = phi ptr [ %i.ki, %bb.az ], [ %i.ki, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i118 ], [ %spec.select.i.i124, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i122 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134
  %i.lk = phi ptr [ %i.st, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 8 uses
  %i.ll = phi ptr [ %i.su, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 8 uses
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 2, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 10 uses
  %i.lm = phi ptr [ %i.sv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ null, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit134 ] ; 21 uses
  %i.ln = load ptr, ptr %i.bm, align 8, !tbaa !255 ; 2 uses
  %i.lo = load ptr, ptr %i.o, align 8, !tbaa !255 ; 3 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = ashr exact i64 %i.lr, 3
  %i.lt = icmp ne ptr %i.ln, null
  %.neg.i.i135 = sext i1 %i.lt to i64
  %i.lu = add nsw i64 %i.ls, %.neg.i.i135
  %i.lv = shl nsw i64 %i.lu, 2
  %i.lw = load ptr, ptr %i.bl, align 8, !tbaa !253
  %i.lx = load ptr, ptr %i.bn, align 8, !tbaa !254
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = lshr exact i64 %i.ma, 7
  %i.mc = add nsw i64 %i.lv, %i.mb
  %i.md = load ptr, ptr %i.bo, align 8, !tbaa !256
  %i.me = load ptr, ptr %i.k, align 8, !tbaa !253 ; 3 uses
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = ptrtoint ptr %i.me to i64               ; 3 uses
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = lshr exact i64 %i.mh, 7
  %i.mj = add nsw i64 %i.mc, %i.mi
  %i.mk = shl i64 %i.mj, 32
  %i.ml = ashr exact i64 %i.mk, 32
  %i.mm = icmp slt i64 %indvars.iv256, %i.ml
  %.pre269 = load ptr, ptr %i.m, align 8, !tbaa !254, !noalias !263 ; 2 uses
  br i1 %i.mm, label %bb.bd, label %split

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.mn = ptrtoint ptr %.pre269 to i64
  %i.mo = sub i64 %i.mg, %i.mn
  %i.mp = ashr exact i64 %i.mo, 7
  %i.mq = add nsw i64 %i.mp, %indvars.iv256       ; 5 uses
  %i.mr = icmp sgt i64 %i.mq, -1
  br i1 %i.mr, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.ms = icmp samesign ult i64 %i.mq, 4
  br i1 %i.ms, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mt = getelementptr inbounds nuw [128 x i8], ptr %i.me, i64 %indvars.iv256
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137

bb.bg:                                            ; preds = %bb.be
  %i.mu = lshr i64 %i.mq, 2
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.mv = ashr i64 %i.mq, 2
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.mw = phi i64 [ %i.mu, %bb.bg ], [ %i.mv, %bb.bh ] ; 2 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.mw
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !241, !noalias !860
  %i.mz = shl nsw i64 %i.mw, 2
  %i.na = sub nsw i64 %i.mq, %i.mz
  %i.nb = getelementptr inbounds [128 x i8], ptr %i.my, i64 %i.na
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137:       ; preds = %bb.bf, %bb.bi
  %storemerge.i.i.i.i136 = phi ptr [ %i.nb, %bb.bi ], [ %i.mt, %bb.bf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  store ptr %i.lc, ptr %11, align 8, !tbaa !202, !alias.scope !861
  %i.nc = load ptr, ptr %storemerge.i.i.i.i136, align 8, !tbaa !236, !noalias !861 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i136, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !205, !noalias !861 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22, !noalias !861
  store i64 %i.ne, ptr %i.e, align 8, !tbaa !250, !noalias !861
  %i.nf = icmp ugt i64 %i.ne, 15
  br i1 %i.nf, label %.noexc.i.i139, label %._crit_edge.i.i.i138

.noexc.i.i139:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137
  %i.ng = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bn ; 2 uses

.noexc140:                                        ; preds = %.noexc.i.i139
  store ptr %i.ng, ptr %11, align 8, !tbaa !236, !alias.scope !861
  %i.nh = load i64, ptr %i.e, align 8, !tbaa !250, !noalias !861
  store i64 %i.nh, ptr %i.lc, align 8, !tbaa !206, !alias.scope !861
  br label %._crit_edge.i.i.i138

._crit_edge.i.i.i138:                             ; preds = %.noexc140, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137
  %i.ni = phi ptr [ %i.ng, %.noexc140 ], [ %i.lc, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit137 ] ; 2 uses
  switch i64 %i.ne, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i.i138
  %i.nj = load i8, ptr %i.nc, align 1, !tbaa !206
  store i8 %i.nj, ptr %i.ni, align 1, !tbaa !206
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ni, ptr align 1 %i.nc, i64 %i.ne, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i.i.i138
  %i.nk = load i64, ptr %i.e, align 8, !tbaa !250, !noalias !861 ; 2 uses
  store i64 %i.nk, ptr %i.ld, align 8, !tbaa !205, !alias.scope !861
  %i.nl = load ptr, ptr %11, align 8, !tbaa !236, !alias.scope !861
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nk
  store i8 0, ptr %i.nm, align 1, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22, !noalias !861
  %i.nn = load i64, ptr %i.ld, align 8, !tbaa !205 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 1
  %.pre264 = load ptr, ptr %11, align 8, !tbaa !236 ; 3 uses
  br i1 %i.no, label %bb.bm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143

bb.bm:                                            ; preds = %bb.bl
  %lhsc = load i8, ptr %.pre264, align 1
  %i.np = icmp eq i8 %lhsc, 40
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143: ; preds = %bb.bm, %bb.bl
  %i.nq = phi i1 [ false, %bb.bl ], [ %i.np, %bb.bm ]
  %i.nr = icmp eq ptr %.pre264, %i.lc
  br i1 %i.nr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143
  %i.ns = icmp ult i64 %i.nn, 16
  call void @llvm.assume(i1 %i.ns)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143
  %i.nt = load i64, ptr %i.lc, align 8, !tbaa !206
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %.pre264, i64 noundef %i.nu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %i.nq, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.bo

bb.bn:                                            ; preds = %.noexc.i.i139
  %i.nv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lm, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dk

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.nw = load ptr, ptr %i.k, align 8, !tbaa !253, !noalias !862 ; 2 uses
  %i.nx = load ptr, ptr %i.m, align 8, !tbaa !254, !noalias !862
  %i.ny = load ptr, ptr %i.o, align 8, !tbaa !255, !noalias !862 ; 3 uses
  %i.nz = ptrtoint ptr %i.nw to i64
  %i.oa = ptrtoint ptr %i.nx to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = ashr exact i64 %i.ob, 7
  %i.od = add nsw i64 %i.oc, %indvars.iv256       ; 7 uses
  %i.oe = icmp sgt i64 %i.od, -1
  br i1 %i.oe, label %bb.bp, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231

bb.bp:                                            ; preds = %bb.bo
  %i.of = icmp samesign ult i64 %i.od, 4
  br i1 %i.of, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread, label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151:       ; preds = %bb.bp
  %i.og = lshr i64 %i.od, 2                       ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !241, !noalias !862
  %i.oj = and i64 %i.od, 3
  %i.ok = getelementptr inbounds nuw [128 x i8], ptr %i.oi, i64 %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !260
  %i.on = icmp eq i32 %i.om, 12
  br i1 %i.on, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.br

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231: ; preds = %bb.bo
  %i.oo = ashr i64 %i.od, 2                       ; 2 uses
  %i.op = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !241, !noalias !862
  %i.or = and i64 %i.od, 3
  %i.os = getelementptr inbounds nuw [128 x i8], ptr %i.oq, i64 %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !260
  %i.ov = icmp eq i32 %i.ou, 12
  br i1 %i.ov, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.br

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread: ; preds = %bb.bp
  %i.ow = getelementptr inbounds nuw [128 x i8], ptr %i.nw, i64 %indvars.iv256 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !260
  %i.oz = icmp eq i32 %i.oy, 12
  br i1 %i.oz, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit153

bb.br:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151
  %i.pa = phi i64 [ %i.og, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.oo, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
end_hunk_0
begin_hunk_1_@_ZN2PP3Cmd19check_for_dimensionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %bb.bv, %bb.bu
  %i.pu = phi i1 [ false, %bb.bu ], [ %i.pt, %bb.bv ]
  %i.pv = icmp eq ptr %.pre265, %i.le
  br i1 %i.pv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i161: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %i.pw = icmp ult i64 %i.pr, 16
  call void @llvm.assume(i1 %i.pw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %i.px = load i64, ptr %i.le, align 8, !tbaa !206
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %.pre265, i64 noundef %i.py) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %i.pu, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, label %bb.bx

bb.bw:                                            ; preds = %.noexc.i.i155
  %i.pz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lm, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.dk

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.qa = load ptr, ptr %i.k, align 8, !tbaa !253, !noalias !865 ; 2 uses
  %i.qb = load ptr, ptr %i.m, align 8, !tbaa !254, !noalias !865
  %i.qc = load ptr, ptr %i.o, align 8, !tbaa !255, !noalias !865
  %i.qd = ptrtoint ptr %i.qa to i64
  %i.qe = ptrtoint ptr %i.qb to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = ashr exact i64 %i.qf, 7
  %i.qh = add nsw i64 %i.qg, %indvars.iv256       ; 5 uses
  %i.qi = icmp sgt i64 %i.qh, -1
  br i1 %i.qi, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.qj = icmp samesign ult i64 %i.qh, 4
  br i1 %i.qj, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.qk = getelementptr inbounds nuw [128 x i8], ptr %i.qa, i64 %indvars.iv256
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167

bb.ca:                                            ; preds = %bb.by
  %i.ql = lshr i64 %i.qh, 2
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.qm = ashr i64 %i.qh, 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.qn = phi i64 [ %i.ql, %bb.ca ], [ %i.qm, %bb.cb ] ; 2 uses
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.qn
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !241, !noalias !865
  %i.qq = shl nsw i64 %i.qn, 2
  %i.qr = sub nsw i64 %i.qh, %i.qq
  %i.qs = getelementptr inbounds [128 x i8], ptr %i.qp, i64 %i.qr
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167:       ; preds = %bb.bz, %bb.cc
  %storemerge.i.i.i.i166 = phi ptr [ %i.qs, %bb.cc ], [ %i.qk, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  store ptr %i.lg, ptr %13, align 8, !tbaa !202, !alias.scope !866
  %i.qt = load ptr, ptr %storemerge.i.i.i.i166, align 8, !tbaa !236, !noalias !866 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i166, i64 8
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !205, !noalias !866 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !866
  store i64 %i.qv, ptr %i.c, align 8, !tbaa !250, !noalias !866
  %i.qw = icmp ugt i64 %i.qv, 15
  br i1 %i.qw, label %.noexc.i.i169, label %._crit_edge.i.i.i168

.noexc.i.i169:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167
  %i.qx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc170 unwind label %bb.ch ; 2 uses

.noexc170:                                        ; preds = %.noexc.i.i169
  store ptr %i.qx, ptr %13, align 8, !tbaa !236, !alias.scope !866
  %i.qy = load i64, ptr %i.c, align 8, !tbaa !250, !noalias !866
  store i64 %i.qy, ptr %i.lg, align 8, !tbaa !206, !alias.scope !866
  br label %._crit_edge.i.i.i168

._crit_edge.i.i.i168:                             ; preds = %.noexc170, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167
  %i.qz = phi ptr [ %i.qx, %.noexc170 ], [ %i.lg, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit167 ] ; 2 uses
  switch i64 %i.qv, label %bb.ce [
    i64 1, label %bb.cd
    i64 0, label %bb.cf
  ]

bb.cd:                                            ; preds = %._crit_edge.i.i.i168
  %i.ra = load i8, ptr %i.qt, align 1, !tbaa !206
  store i8 %i.ra, ptr %i.qz, align 1, !tbaa !206
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge.i.i.i168
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qz, ptr align 1 %i.qt, i64 %i.qv, i1 false)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge.i.i.i168
  %i.rb = load i64, ptr %i.c, align 8, !tbaa !250, !noalias !866 ; 2 uses
  store i64 %i.rb, ptr %i.lh, align 8, !tbaa !205, !alias.scope !866
  %i.rc = load ptr, ptr %13, align 8, !tbaa !236, !alias.scope !866
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rb
  store i8 0, ptr %i.rd, align 1, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !866
  %i.re = load i64, ptr %i.lh, align 8, !tbaa !205 ; 2 uses
  %i.rf = icmp eq i64 %i.re, 1
  %.pre266 = load ptr, ptr %13, align 8, !tbaa !236 ; 3 uses
  br i1 %i.rf, label %bb.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173

bb.cg:                                            ; preds = %bb.cf
  %lhsc348 = load i8, ptr %.pre266, align 1
  %i.rg = icmp eq i8 %lhsc348, 41
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173: ; preds = %bb.cg, %bb.cf
  %i.rh = phi i1 [ false, %bb.cf ], [ %i.rg, %bb.cg ]
  %i.ri = icmp eq ptr %.pre266, %i.lg
  br i1 %i.ri, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173
  %i.rj = icmp ult i64 %i.re, 16
  call void @llvm.assume(i1 %i.rj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit173
  %i.rk = load i64, ptr %i.lg, align 8, !tbaa !206
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %.pre266, i64 noundef %i.rl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.pre267 = load ptr, ptr %i.k, align 8, !tbaa !253, !noalias !263 ; 3 uses
  %.pre268 = load ptr, ptr %i.m, align 8, !tbaa !254, !noalias !263 ; 2 uses
  %.pre270 = load ptr, ptr %i.o, align 8, !tbaa !255, !noalias !263 ; 2 uses
  %.pre276 = ptrtoint ptr %.pre267 to i64         ; 2 uses
  br i1 %i.rh, label %split, label %bb.ci

bb.ch:                                            ; preds = %.noexc.i.i169
  %i.rm = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lm, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dk

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.rn = ptrtoint ptr %.pre268 to i64
  %i.ro = sub i64 %.pre276, %i.rn
  %i.rp = ashr exact i64 %i.ro, 7
  %i.rq = add nsw i64 %i.rp, %indvars.iv256       ; 5 uses
  %i.rr = icmp sgt i64 %i.rq, -1
  br i1 %i.rr, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.rs = icmp samesign ult i64 %i.rq, 4
  br i1 %i.rs, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.rt = getelementptr inbounds nuw [128 x i8], ptr %.pre267, i64 %indvars.iv256
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181

bb.cl:                                            ; preds = %bb.cj
  %i.ru = lshr i64 %i.rq, 2
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.rv = ashr i64 %i.rq, 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rw = phi i64 [ %i.ru, %bb.cl ], [ %i.rv, %bb.cm ] ; 2 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %.pre270, i64 %i.rw
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !241, !noalias !867
  %i.rz = shl nsw i64 %i.rw, 2
  %i.sa = sub nsw i64 %i.rq, %i.rz
  %i.sb = getelementptr inbounds [128 x i8], ptr %i.ry, i64 %i.sa
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181:       ; preds = %bb.ck, %bb.cn
  %storemerge.i.i.i.i180 = phi ptr [ %i.sb, %bb.cn ], [ %i.rt, %bb.ck ]
  %i.sc = invoke noundef i32 @_ZN2PP4Word7get_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(128) %storemerge.i.i.i.i180, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.co unwind label %.loopexit ; 2 uses

bb.co:                                            ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181
  %.not.i.i = icmp eq ptr %i.ll, %i.lk
  br i1 %.not.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 %i.sc, ptr %i.ll, align 4, !tbaa !16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ll, i64 4 ; 2 uses
  store ptr %i.sd, ptr %i.li, align 8, !tbaa !300
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.cq:                                            ; preds = %bb.co
  %i.se = ptrtoint ptr %i.lk to i64
  %i.sf = ptrtoint ptr %i.lm to i64
  %i.sg = sub i64 %i.se, %i.sf                    ; 6 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775804
  br i1 %i.sh, label %bb.cr, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.cr:                                            ; preds = %bb.cq
  store ptr %i.lm, ptr %10, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #24
          to label %.noexc183 unwind label %.loopexit.split-lp

.noexc183:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cq
  %i.si = ashr exact i64 %i.sg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %i.sj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.si ; 2 uses
  %i.sk = icmp ult i64 %i.sj, %i.si
  %i.sl = call i64 @llvm.umin.i64(i64 %i.sj, i64 2305843009213693951)
  %i.sm = select i1 %i.sk, i64 2305843009213693951, i64 %i.sl ; 3 uses
  %.not.i.i.i.i182 = icmp ne i64 %i.sm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i182)
  %i.sn = shl nuw nsw i64 %i.sm, 2
  %i.so = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sn) #25
          to label %.noexc184 unwind label %.loopexit ; 4 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 %i.sg ; 2 uses
  store i32 %i.sc, ptr %i.sp, align 4, !tbaa !16
  %i.sq = icmp sgt i64 %i.sg, 0
  br i1 %i.sq, label %bb.cs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cs:                                            ; preds = %.noexc184
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.so, ptr align 4 %i.lm, i64 %i.sg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cs, %.noexc184
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.lm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.sg) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ct, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.sr, ptr %i.li, align 8, !tbaa !300
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sm ; 2 uses
  store ptr %i.ss, ptr %i.lj, align 8, !tbaa !302
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231, %bb.cp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.st = phi ptr [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.lk, %bb.cp ], [ %i.ss, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.lk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %i.su = phi ptr [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.sd, %bb.cp ], [ %i.sr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.ll, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %i.sv = phi ptr [ %i.lm, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread231 ], [ %i.lm, %bb.cp ], [ %i.so, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.lm, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151.thread ], [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.lm, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit151 ], [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1
  br label %bb.bc, !llvm.loop !844

.loopexit:                                        ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit181, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lm, ptr %10, align 8
  br label %bb.dk

.loopexit.split-lp:                               ; preds = %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

split:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pre-phi277 = phi i64 [ %.pre276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.mg, %bb.bc ]
  %i.sw = phi ptr [ %.pre270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.lo, %bb.bc ] ; 3 uses
  %i.sx = phi ptr [ %.pre268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pre269, %bb.bc ]
  %i.sy = phi ptr [ %.pre267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.me, %bb.bc ] ; 3 uses
  store ptr %i.lm, ptr %10, align 8
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = sub i64 %.pre-phi277, %i.sz             ; 2 uses
  %i.tb = ashr exact i64 %i.ta, 7                 ; 6 uses
  %i.tc = icmp sgt i64 %i.tb, -1
  br i1 %i.tc, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %split
  %i.td = icmp samesign ult i64 %i.tb, 4
  br i1 %i.td, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.te = getelementptr inbounds nuw i8, ptr %i.sy, i64 80
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !307
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sy, i64 84
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190

bb.cw:                                            ; preds = %bb.cu
  %i.ti = lshr i64 %i.tb, 2                       ; 2 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !241, !noalias !868
  %i.tl = and i64 %i.tb, 3
  %i.tm = getelementptr inbounds nuw [128 x i8], ptr %i.tk, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 80
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !307
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 84
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %.pre274 = and i64 %i.tb, 3
  br label %bb.cy

bb.cx:                                            ; preds = %split
  %i.tr = ashr i64 %i.ta, 9                       ; 3 uses
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.sw, i64 %i.tr
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !241, !noalias !868
  %i.tu = shl nsw i64 %i.tr, 2
  %i.tv = sub nsw i64 %i.tb, %i.tu                ; 2 uses
  %i.tw = getelementptr inbounds [128 x i8], ptr %i.tt, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 80
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !307
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 84
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pre-phi275 = phi i64 [ %i.tv, %bb.cx ], [ %.pre274, %bb.cw ]
  %i.ub = phi i32 [ %i.ua, %bb.cx ], [ %i.tq, %bb.cw ]
  %i.uc = phi i32 [ %i.ty, %bb.cx ], [ %i.to, %bb.cw ]
  %i.ud = phi i64 [ %i.tr, %bb.cx ], [ %i.ti, %bb.cw ]
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.sw, i64 %i.ud
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !241, !noalias !869
  %i.ug = getelementptr inbounds [128 x i8], ptr %i.uf, i64 %.pre-phi275
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190:       ; preds = %bb.cv, %bb.cy
  %i.uh = phi i32 [ %i.ub, %bb.cy ], [ %i.th, %bb.cv ]
  %i.ui = phi i32 [ %i.uc, %bb.cy ], [ %i.tf, %bb.cv ]
  %storemerge.i.i.i.i189 = phi ptr [ %i.ug, %bb.cy ], [ %i.sy, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.uj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i189, i64 88
  %i.uk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.uk, ptr %14, align 8, !tbaa !202, !alias.scope !870
  %i.ul = load ptr, ptr %i.uj, align 8, !tbaa !236, !noalias !870 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i189, i64 96
  %i.un = load i64, ptr %i.um, align 8, !tbaa !205, !noalias !870 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !870
  store i64 %i.un, ptr %i.b, align 8, !tbaa !250, !noalias !870
  %i.uo = icmp ugt i64 %i.un, 15
  br i1 %i.uo, label %.noexc.i.i192, label %._crit_edge.i.i.i191

.noexc.i.i192:                                    ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190
  %i.up = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc193 unwind label %bb.dh ; 2 uses

.noexc193:                                        ; preds = %.noexc.i.i192
  store ptr %i.up, ptr %14, align 8, !tbaa !236, !alias.scope !870
  %i.uq = load i64, ptr %i.b, align 8, !tbaa !250, !noalias !870
  store i64 %i.uq, ptr %i.uk, align 8, !tbaa !206, !alias.scope !870
  br label %._crit_edge.i.i.i191

._crit_edge.i.i.i191:                             ; preds = %.noexc193, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190
  %i.ur = phi ptr [ %i.up, %.noexc193 ], [ %i.uk, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit190 ] ; 2 uses
  switch i64 %i.un, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %bb.db
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i191
  %i.us = load i8, ptr %i.ul, align 1, !tbaa !206
  store i8 %i.us, ptr %i.ur, align 1, !tbaa !206
  br label %bb.db

bb.da:                                            ; preds = %._crit_edge.i.i.i191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ur, ptr align 1 %i.ul, i64 %i.un, i1 false)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i191
  %i.ut = load i64, ptr %i.b, align 8, !tbaa !250, !noalias !870 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.ut, ptr %i.uu, align 8, !tbaa !205, !alias.scope !870
  %i.uv = load ptr, ptr %14, align 8, !tbaa !236, !alias.scope !870
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.ut
  store i8 0, ptr %i.uw, align 1, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !870
  %i.ux = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.ux, ptr %15, align 8, !tbaa !202
  %i.uy = load ptr, ptr %14, align 8, !tbaa !236  ; 2 uses
  %i.uz = load i64, ptr %i.uu, align 8, !tbaa !205 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.uz, ptr %i.a, align 8, !tbaa !250
  %i.va = icmp ugt i64 %i.uz, 15
  br i1 %i.va, label %.noexc.i195, label %._crit_edge.i.i194

.noexc.i195:                                      ; preds = %bb.db
  %i.vb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc196 unwind label %bb.di ; 2 uses

.noexc196:                                        ; preds = %.noexc.i195
  store ptr %i.vb, ptr %15, align 8, !tbaa !236
  %i.vc = load i64, ptr %i.a, align 8, !tbaa !250
  store i64 %i.vc, ptr %i.ux, align 8, !tbaa !206
  br label %._crit_edge.i.i194

._crit_edge.i.i194:                               ; preds = %.noexc196, %bb.db
  %i.vd = phi ptr [ %i.vb, %.noexc196 ], [ %i.ux, %bb.db ] ; 2 uses
  switch i64 %i.uz, label %bb.dd [
    i64 1, label %bb.dc
    i64 0, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i194
  %i.ve = load i8, ptr %i.uy, align 1, !tbaa !206
  store i8 %i.ve, ptr %i.vd, align 1, !tbaa !206
  br label %bb.de

bb.dd:                                            ; preds = %._crit_edge.i.i194
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vd, ptr align 1 %i.uy, i64 %i.uz, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %._crit_edge.i.i194
  %i.vf = load i64, ptr %i.a, align 8, !tbaa !250 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.vf, ptr %i.vg, align 8, !tbaa !205
  %i.vh = load ptr, ptr %15, align 8, !tbaa !236
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vf
  store i8 0, ptr %i.vi, align 1, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i125, i64 64
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !249
  invoke void @_ZN2PP8Variable10set_boundsERSt6vectorIiSaIiEEiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeISA_SaISA_EERNS5_18basic_stringstreamIcS8_S9_EERi(ptr noundef nonnull align 8 dereferenceable(136) %i.vj, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.ui, i32 noundef %i.uh, ptr noundef nonnull %15, ptr noundef %i.vl, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.vm = load ptr, ptr %15, align 8, !tbaa !236  ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.ux
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.df
  %i.vo = load i64, ptr %i.ux, align 8, !tbaa !206
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  %i.vq = load ptr, ptr %14, align 8, !tbaa !236  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2PP3Cmd10handle_opsEv:bb.a
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = shl i64 %i.og, 27
  %i.oi = ashr i64 %i.oh, 32
  %i.oj = icmp slt i64 %indvars.iv.next608, %i.oi
  br i1 %i.oj, label %.lr.ph602, label %._crit_edge603, !llvm.loop !1176

bb.bs:                                            ; preds = %.noexc.i.i
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

.lr.ph602:                                        ; preds = %_ZN2PP4Word10get_stringB5cxx11Ev.exit, %bb.br
  %indvars.iv607 = phi i64 [ %indvars.iv.next608, %bb.br ], [ 0, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ] ; 2 uses
  %i.ol = phi ptr [ %i.od, %bb.br ], [ %i.nv, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ]
  %.1600 = phi i32 [ %.2, %bb.br ], [ %.023, %_ZN2PP4Word10get_stringB5cxx11Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.om = getelementptr inbounds nuw [32 x i8], ptr %i.ol, i64 %indvars.iv607
  %i.on = invoke noundef zeroext i1 @_ZN2PP3Cmd12separate_strERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RSt6vectorIS6_SaIS6_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.om, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.bt unwind label %bb.ed     ; 2 uses

bb.bt:                                            ; preds = %.lr.ph602
  br i1 %i.on, label %bb.bu, label %bb.fc

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %i.oo = load ptr, ptr %i.hk, align 8, !tbaa !238
  %i.op = load ptr, ptr %23, align 8, !tbaa !237
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = lshr exact i64 %i.os, 5
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = icmp sgt i32 %i.ou, 0
  %i.ow = sext i32 %.1600 to i64                  ; 6 uses
  br i1 %i.ov, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %bb.bu
  %i.ox = load ptr, ptr %i.hc, align 8, !tbaa !253, !noalias !1208 ; 2 uses
  %i.oy = load ptr, ptr %i.hh, align 8, !tbaa !254, !noalias !1208
  %i.oz = load ptr, ptr %i.he, align 8, !tbaa !255, !noalias !1208 ; 4 uses
  %i.pa = ptrtoint ptr %i.ox to i64
  %i.pb = ptrtoint ptr %i.oy to i64               ; 2 uses
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = ashr exact i64 %i.pc, 7
  %i.pe = add nsw i64 %i.pd, %i.ow                ; 6 uses
  %i.pf = icmp sgt i64 %i.pe, -1
  br i1 %i.pf, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %._crit_edge
  %i.pg = icmp samesign ult i64 %i.pe, 4
  br i1 %i.pg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ph = getelementptr inbounds [128 x i8], ptr %i.ox, i64 %i.ow ; 2 uses
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i

bb.bx:                                            ; preds = %bb.bv
  %i.pi = lshr i64 %i.pe, 2
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge
  %i.pj = ashr i64 %i.pe, 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink = phi i64 [ %i.pj, %bb.by ], [ %i.pi, %bb.bx ] ; 3 uses
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %.sink ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !241, !noalias !1209 ; 3 uses
  %i.pm = and i64 %i.pe, 3
  %i.pn = getelementptr inbounds nuw [128 x i8], ptr %i.pl, i64 %i.pm
  %i.po = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %.sink
  %i.pp = shl nsw i64 %.sink, 2
  %i.pq = sub nsw i64 %i.pe, %i.pp
  %i.pr = getelementptr inbounds [128 x i8], ptr %i.pl, i64 %i.pq
  %.pre.i406 = ptrtoint ptr %i.pl to i64
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i: ; preds = %bb.bz, %bb.bw
  %storemerge.i.i.i405453 = phi ptr [ %i.ph, %bb.bw ], [ %i.pn, %bb.bz ]
  %.sroa.1015.0.i450 = phi ptr [ %i.oz, %bb.bw ], [ %i.pk, %bb.bz ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.pb, %bb.bw ], [ %.pre.i406, %bb.bz ]
  %.sroa.10.0.i407 = phi ptr [ %i.oz, %bb.bw ], [ %i.po, %bb.bz ] ; 2 uses
  %storemerge.i.i2.i = phi ptr [ %i.ph, %bb.bw ], [ %i.pr, %bb.bz ] ; 2 uses
  %i.ps = ptrtoint ptr %storemerge.i.i2.i to i64
  %i.pt = sub i64 %i.ps, %.pre-phi.i
  %i.pu = ashr exact i64 %i.pt, 7                 ; 3 uses
  %i.pv = add nsw i64 %i.pu, 1                    ; 3 uses
  %i.pw = icmp sgt i64 %i.pu, -2
  br i1 %i.pw, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i
  %i.px = icmp slt i64 %i.pu, 3
  br i1 %i.px, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.py = getelementptr inbounds nuw i8, ptr %storemerge.i.i2.i, i64 128
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i

bb.cc:                                            ; preds = %bb.ca
  %i.pz = lshr i64 %i.pv, 2
  br label %bb.ce

bb.cd:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit3.i
  %i.qa = ashr i64 %i.pv, 2
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.qb = phi i64 [ %i.pz, %bb.cc ], [ %i.qa, %bb.cd ] ; 2 uses
  %i.qc = getelementptr inbounds [8 x i8], ptr %.sroa.10.0.i407, i64 %i.qb ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !241, !noalias !1210
  %i.qe = shl nsw i64 %i.qb, 2
  %i.qf = sub nsw i64 %i.pv, %i.qe
  %i.qg = getelementptr inbounds [128 x i8], ptr %i.qd, i64 %i.qf
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i: ; preds = %bb.ce, %bb.cb
  %.sroa.109.0.i = phi ptr [ %.sroa.10.0.i407, %bb.cb ], [ %i.qc, %bb.ce ] ; 2 uses
  %storemerge.i.i4.i = phi ptr [ %i.py, %bb.cb ], [ %i.qg, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  store ptr %storemerge.i.i.i405453, ptr %1, align 8, !tbaa !253, !alias.scope !1211, !noalias !1212
  %i.qh = load ptr, ptr %.sroa.1015.0.i450, align 8, !tbaa !241, !noalias !1213 ; 2 uses
  store ptr %i.qh, ptr %i.hu, align 8, !tbaa !254, !alias.scope !1211, !noalias !1212
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 512
  store ptr %i.qi, ptr %i.hv, align 8, !tbaa !256, !alias.scope !1211, !noalias !1212
  store ptr %.sroa.1015.0.i450, ptr %i.hw, align 8, !tbaa !255, !alias.scope !1211, !noalias !1212
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  store ptr %storemerge.i.i4.i, ptr %2, align 8, !tbaa !253, !alias.scope !1214, !noalias !1212
  %i.qj = load ptr, ptr %.sroa.109.0.i, align 8, !tbaa !241, !noalias !1215 ; 2 uses
  store ptr %i.qj, ptr %i.hx, align 8, !tbaa !254, !alias.scope !1214, !noalias !1212
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 512
  store ptr %i.qk, ptr %i.hy, align 8, !tbaa !256, !alias.scope !1214, !noalias !1212
  store ptr %.sroa.109.0.i, ptr %i.hz, align 8, !tbaa !255, !alias.scope !1214, !noalias !1212
  invoke void @_ZNSt5dequeIN2PP4WordESaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_ES7_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %i.ha, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
          to label %.noexc303 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc303:                                        ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ql = load ptr, ptr %i.hs, align 8, !tbaa !319 ; 2 uses
  %i.qm = load ptr, ptr %24, align 8, !tbaa !320  ; 2 uses
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = lshr exact i64 %i.qp, 7                 ; 2 uses
  %i.qr = trunc i64 %i.qq to i32
  %i.qs = icmp sgt i32 %i.qr, 0
  br i1 %i.qs, label %.lr.ph.i, label %_ZN2PP3Cmd13replace_wordsEiiRSt6vectorINS_4WordESaIS2_EE.exit

.lr.ph.i:                                         ; preds = %.noexc303
  %i.qt = and i64 %i.qq, 2147483647
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc304, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.qt, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc304 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.qu = load ptr, ptr %i.hc, align 8, !tbaa !253, !noalias !1216 ; 5 uses
  %i.qv = load ptr, ptr %i.hh, align 8, !tbaa !254, !noalias !1216 ; 2 uses
  %i.qw = load ptr, ptr %i.he, align 8, !tbaa !255, !noalias !1216 ; 12 uses
  %i.qx = ptrtoint ptr %i.qu to i64               ; 3 uses
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = sub i64 %i.qx, %i.qy
  %i.ra = ashr exact i64 %i.qz, 7
  %i.rb = add nsw i64 %i.ra, %i.ow                ; 5 uses
  %i.rc = icmp sgt i64 %i.rb, -1
  br i1 %i.rc, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.rd = icmp samesign ult i64 %i.rb, 4
  br i1 %i.rd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.re = getelementptr inbounds [128 x i8], ptr %i.qu, i64 %i.ow
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.rf = lshr i64 %i.rb, 2
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.rg = ashr i64 %i.rb, 2
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.rh = phi i64 [ %i.rf, %bb.ci ], [ %i.rg, %bb.cj ] ; 2 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.qw, i64 %i.rh ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !241, !noalias !1217
  %i.rk = shl nsw i64 %i.rh, 2
  %i.rl = sub nsw i64 %i.rb, %i.rk
  %i.rm = getelementptr inbounds [128 x i8], ptr %i.rj, i64 %i.rl
  br label %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i

_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i: ; preds = %bb.ck, %bb.ch
  %.sroa.10.0.i = phi ptr [ %i.qw, %bb.ch ], [ %i.ri, %bb.ck ] ; 2 uses
  %storemerge.i.i.i = phi ptr [ %i.re, %bb.ch ], [ %i.rm, %bb.ck ] ; 5 uses
  %i.rn = load ptr, ptr %24, align 8, !tbaa !320
  %i.ro = getelementptr inbounds nuw [128 x i8], ptr %i.rn, i64 %indvars.iv.next.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.rp = icmp eq ptr %storemerge.i.i.i, %i.qu
  br i1 %i.rp, label %bb.cl, label %bb.de

bb.cl:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i
  %.not.i.i398 = icmp eq ptr %i.qu, %i.qv
  br i1 %.not.i.i398, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.rq = getelementptr inbounds i8, ptr %i.qu, i64 -128
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.rq, ptr noundef nonnull align 8 dereferenceable(128) %i.ro)
          to label %.noexc399 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218

.noexc399:                                        ; preds = %bb.cm
  %i.rr = load ptr, ptr %i.hc, align 8, !tbaa !321, !noalias !1218
  %i.rs = getelementptr inbounds i8, ptr %i.rr, i64 -128
  store ptr %i.rs, ptr %i.hc, align 8, !tbaa !321, !noalias !1218
  br label %.noexc304

bb.cn:                                            ; preds = %bb.cl
  %i.rt = load ptr, ptr %i.hd, align 8, !tbaa !255, !noalias !1218 ; 3 uses
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = ashr exact i64 %i.rw, 3                 ; 3 uses
  %i.ry = icmp ne ptr %i.rt, null
  %.neg.i.i.i412 = sext i1 %i.ry to i64
  %i.rz = add nsw i64 %i.rx, %.neg.i.i.i412
  %i.sa = shl nsw i64 %i.rz, 2
  %i.sb = load ptr, ptr %i.hb, align 8, !tbaa !253, !noalias !1218
  %i.sc = load ptr, ptr %i.hf, align 8, !tbaa !254, !noalias !1218
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = ashr exact i64 %i.sf, 7
  %i.sh = add nsw i64 %i.sa, %i.sg
  %i.si = load ptr, ptr %i.hg, align 8, !tbaa !256, !noalias !1218
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = sub i64 %i.sj, %i.qx
  %i.sl = ashr exact i64 %i.sk, 7
  %i.sm = add nsw i64 %i.sh, %i.sl
  %i.sn = icmp eq i64 %i.sm, 72057594037927935
  br i1 %i.sn, label %.invoke, label %bb.co

.invoke:                                          ; preds = %bb.dh, %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.220) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218

.cont:                                            ; preds = %.invoke
  unreachable

bb.co:                                            ; preds = %bb.cn
  %i.so = load ptr, ptr %i.ha, align 8, !tbaa !243, !noalias !1218 ; 2 uses
  %i.sp = icmp eq ptr %i.qw, %i.so
  br i1 %i.sp, label %bb.cp, label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.sq = add nsw i64 %i.rx, 1                    ; 2 uses
  %i.sr = add nsw i64 %i.rx, 2                    ; 3 uses
  %i.ss = load i64, ptr %i.ie, align 8, !tbaa !246, !noalias !1218 ; 4 uses
  %i.st = shl nsw i64 %i.sr, 1
  %i.su = icmp ugt i64 %i.ss, %i.st
  br i1 %i.su, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.sv = sub i64 %i.ss, %i.sr
  %i.sw = lshr i64 %i.sv, 1
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.sq ; 2 uses
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = sub i64 %i.tb, %i.rv                    ; 3 uses
  %i.td = ashr exact i64 %i.tc, 3                 ; 2 uses
  %i.te = icmp sgt i64 %i.td, 1
  br i1 %i.te, label %bb.cr, label %bb.cs, !prof !322

bb.cr:                                            ; preds = %bb.cq
  %i.tf = sub nsw i64 0, %i.td
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.ta, i64 %i.tf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tg, ptr align 8 %i.qw, i64 %i.tc, i1 false), !noalias !1218
  br label %.noexc415

bb.cs:                                            ; preds = %bb.cq
  %i.th = icmp eq i64 %i.tc, 8
  br i1 %i.th, label %bb.ct, label %.noexc415

bb.ct:                                            ; preds = %bb.cs
  %i.ti = getelementptr inbounds i8, ptr %i.ta, i64 -8
  %i.tj = load ptr, ptr %i.qw, align 8, !tbaa !241, !noalias !1218
  store ptr %i.tj, ptr %i.ti, align 8, !tbaa !241, !noalias !1218
  br label %.noexc415

bb.cu:                                            ; preds = %bb.cp
  %.sroa.speculated.i423 = call i64 @llvm.umax.i64(i64 %i.ss, i64 1)
  %i.tk = add i64 %i.ss, 2
  %i.tl = add i64 %i.tk, %.sroa.speculated.i423   ; 5 uses
  %i.tm = icmp ugt i64 %i.tl, 1152921504606846975
  br i1 %i.tm, label %bb.cv, label %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i424, !prof !310

bb.cv:                                            ; preds = %bb.cu
  %i.tn = icmp ugt i64 %i.tl, 2305843009213693951
  br i1 %i.tn, label %.noexc.i.i428.invoke, label %.noexc3.i.i427.invoke

.noexc.i.i428.invoke:                             ; preds = %bb.du, %bb.cv
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i428.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218

.noexc.i.i428.cont:                               ; preds = %.noexc.i.i428.invoke
  unreachable

.noexc3.i.i427.invoke:                            ; preds = %bb.du, %bb.cv
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i427.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218

.noexc3.i.i427.cont:                              ; preds = %.noexc3.i.i427.invoke
  unreachable

_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i424: ; preds = %bb.cu
  %i.to = shl nuw nsw i64 %i.tl, 3
  %i.tp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.to) #25
          to label %.noexc431 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218 ; 2 uses

.noexc431:                                        ; preds = %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i424
  %i.tq = sub nsw i64 %i.tl, %i.sr
  %i.tr = lshr i64 %i.tq, 1
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 3 uses
  %i.tu = load ptr, ptr %i.he, align 8, !tbaa !244, !noalias !1218 ; 3 uses
  %i.tv = load ptr, ptr %i.hd, align 8, !tbaa !245, !noalias !1218
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = ptrtoint ptr %i.tu to i64
  %i.tz = sub i64 %i.tx, %i.ty                    ; 3 uses
  %i.ua = icmp sgt i64 %i.tz, 8
  br i1 %i.ua, label %bb.cw, label %bb.cx, !prof !322

bb.cw:                                            ; preds = %.noexc431
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tt, ptr align 8 %i.tu, i64 %i.tz, i1 false), !noalias !1218
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425

bb.cx:                                            ; preds = %.noexc431
  %i.ub = icmp eq i64 %i.tz, 8
  br i1 %i.ub, label %bb.cy, label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425

bb.cy:                                            ; preds = %bb.cx
  %i.uc = load ptr, ptr %i.tu, align 8, !tbaa !241, !noalias !1218
  store ptr %i.uc, ptr %i.tt, align 8, !tbaa !241, !noalias !1218
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425

_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425: ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.ud = load ptr, ptr %i.ha, align 8, !tbaa !243, !noalias !1218
  %i.ue = load i64, ptr %i.ie, align 8, !tbaa !246, !noalias !1218
  %i.uf = shl i64 %i.ue, 3
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.uf) #21, !noalias !1218
  store ptr %i.tp, ptr %i.ha, align 8, !tbaa !243, !noalias !1218
  store i64 %i.tl, ptr %i.ie, align 8, !tbaa !246, !noalias !1218
  br label %.noexc415

.noexc415:                                        ; preds = %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425, %bb.ct, %bb.cs, %bb.cr
  %.0.i426 = phi ptr [ %i.tt, %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i425 ], [ %i.sy, %bb.cs ], [ %i.sy, %bb.cr ], [ %i.sy, %bb.ct ] ; 3 uses
  store ptr %.0.i426, ptr %i.he, align 8, !tbaa !255, !noalias !1218
  %i.ug = load ptr, ptr %.0.i426, align 8, !tbaa !241, !noalias !1218 ; 2 uses
  store ptr %i.ug, ptr %i.hh, align 8, !tbaa !254, !noalias !1218
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 512
  store ptr %i.uh, ptr %i.hg, align 8, !tbaa !256, !noalias !1218
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.0.i426, i64 %i.sq
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 -8 ; 2 uses
  store ptr %i.uj, ptr %i.hd, align 8, !tbaa !255, !noalias !1218
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !241, !noalias !1218 ; 2 uses
  store ptr %i.uk, ptr %i.hf, align 8, !tbaa !254, !noalias !1218
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 512
  store ptr %i.ul, ptr %i.id, align 8, !tbaa !256, !noalias !1218
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i

_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i: ; preds = %.noexc415, %bb.co
  %i.um = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc416 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218 ; 4 uses

.noexc416:                                        ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE23_M_reserve_map_at_frontEm.exit.i
  %i.un = load ptr, ptr %i.he, align 8, !tbaa !244, !noalias !1218
  %i.uo = getelementptr inbounds i8, ptr %i.un, i64 -8 ; 2 uses
  store ptr %i.um, ptr %i.uo, align 8, !tbaa !241, !noalias !1218
  store ptr %i.uo, ptr %i.he, align 8, !tbaa !255, !noalias !1218
  store ptr %i.um, ptr %i.hh, align 8, !tbaa !254, !noalias !1218
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 512
  store ptr %i.up, ptr %i.hg, align 8, !tbaa !256, !noalias !1218
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 384 ; 2 uses
  store ptr %i.uq, ptr %i.hc, align 8, !tbaa !321, !noalias !1218
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.uq, ptr noundef nonnull align 8 dereferenceable(128) %i.ro)
          to label %.noexc304 unwind label %bb.cz, !noalias !1218

bb.cz:                                            ; preds = %.noexc416
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  %i.ut = call ptr @__cxa_begin_catch(ptr %i.us) #22, !noalias !1218 ; 0 uses
  %i.uu = load ptr, ptr %i.hc, align 8, !tbaa !253, !noalias !1218
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 128 ; 2 uses
  store ptr %i.uv, ptr %i.hc, align 8, !tbaa !253, !noalias !1218
  %i.uw = load ptr, ptr %i.hg, align 8, !tbaa !256, !noalias !1218
  %i.ux = icmp eq ptr %i.uv, %i.uw
  %.pre.i413 = load ptr, ptr %i.he, align 8, !tbaa !255, !noalias !1218 ; 2 uses
  br i1 %i.ux, label %bb.da, label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i

bb.da:                                            ; preds = %bb.cz
  %i.uy = getelementptr inbounds nuw i8, ptr %.pre.i413, i64 8 ; 3 uses
  store ptr %i.uy, ptr %i.he, align 8, !tbaa !255, !noalias !1218
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !241, !noalias !1218 ; 3 uses
  store ptr %i.uz, ptr %i.hh, align 8, !tbaa !254, !noalias !1218
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 512
  store ptr %i.va, ptr %i.hg, align 8, !tbaa !256, !noalias !1218
  store ptr %i.uz, ptr %i.hc, align 8, !tbaa !253, !noalias !1218
  br label %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i

_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i: ; preds = %bb.da, %bb.cz
  %i.vb = phi ptr [ %.pre.i413, %bb.cz ], [ %i.uy, %bb.da ]
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !241, !noalias !1218
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef 512) #21, !noalias !1218
  invoke void @__cxa_rethrow() #24
          to label %bb.dd unwind label %bb.db, !noalias !1218

bb.db:                                            ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i
  %i.ve = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dc, !noalias !1218

bb.dc:                                            ; preds = %bb.db
  %i.vf = landingpad { ptr, i32 }
          catch ptr null
  %i.vg = extractvalue { ptr, i32 } %i.vf, 0
  call void @__clang_call_terminate(ptr %i.vg) #23, !noalias !1218
  unreachable

bb.dd:                                            ; preds = %_ZNSt15_Deque_iteratorIN2PP4WordERS1_PS1_EppEv.exit.i
  unreachable

bb.de:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN2PP4WordERS1_PS1_El.exit.i
  %i.vh = load ptr, ptr %i.hb, align 8, !tbaa !251, !noalias !1218 ; 2 uses
  %i.vi = icmp eq ptr %storemerge.i.i.i, %i.vh
  br i1 %i.vi, label %bb.df, label %bb.ec

bb.df:                                            ; preds = %bb.de
  %i.vj = load ptr, ptr %i.id, align 8, !tbaa !252, !noalias !1218
  %i.vk = getelementptr inbounds i8, ptr %i.vj, i64 -128
  %.not.i4.i = icmp eq ptr %storemerge.i.i.i, %i.vk
  br i1 %.not.i4.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.vh, ptr noundef nonnull align 8 dereferenceable(128) %i.ro)
          to label %_ZNSt5dequeIN2PP4WordESaIS1_EE9push_backERKS1_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218

bb.dh:                                            ; preds = %bb.df
  %i.vl = load ptr, ptr %i.hd, align 8, !tbaa !255, !noalias !1218 ; 3 uses
  %i.vm = ptrtoint ptr %i.vl to i64               ; 2 uses
  %i.vn = ptrtoint ptr %i.qw to i64               ; 3 uses
  %i.vo = sub i64 %i.vm, %i.vn
  %i.vp = ashr exact i64 %i.vo, 3                 ; 3 uses
  %i.vq = icmp ne ptr %i.vl, null
  %.neg.i.i.i = sext i1 %i.vq to i64
  %i.vr = add nsw i64 %i.vp, %.neg.i.i.i
  %i.vs = shl nsw i64 %i.vr, 2
  %i.vt = load ptr, ptr %i.hf, align 8, !tbaa !254, !noalias !1218
  %i.vu = ptrtoint ptr %storemerge.i.i.i to i64
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = ashr exact i64 %i.vw, 7
  %i.vy = add nsw i64 %i.vs, %i.vx
  %i.vz = load ptr, ptr %i.hg, align 8, !tbaa !256, !noalias !1218
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = sub i64 %i.wa, %i.qx
  %i.wc = ashr exact i64 %i.wb, 7
  %i.wd = add nsw i64 %i.vy, %i.wc
  %i.we = icmp eq i64 %i.wd, 72057594037927935
  br i1 %i.we, label %.invoke, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wf = load i64, ptr %i.ie, align 8, !tbaa !246, !noalias !1218 ; 5 uses
  %i.wg = load ptr, ptr %i.ha, align 8, !tbaa !243, !noalias !1218 ; 2 uses
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = sub i64 %i.vm, %i.wh
  %i.wj = ashr exact i64 %i.wi, 3
  %i.wk = sub i64 %i.wf, %i.wj
  %i.wl = icmp ult i64 %i.wk, 2
  br i1 %i.wl, label %bb.dj, label %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit.i

bb.dj:                                            ; preds = %bb.di
  %i.wm = add nsw i64 %i.vp, 1                    ; 2 uses
  %i.wn = add nsw i64 %i.vp, 2                    ; 3 uses
  %i.wo = shl nsw i64 %i.wn, 1
  %i.wp = icmp ugt i64 %i.wf, %i.wo
  br i1 %i.wp, label %bb.dk, label %bb.dt

bb.dk:                                            ; preds = %bb.dj
  %i.wq = sub i64 %i.wf, %i.wn
  %i.wr = lshr i64 %i.wq, 1
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wr ; 10 uses
  %i.wt = icmp ult ptr %i.ws, %i.qw
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  br i1 %i.wt, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = sub i64 %i.wv, %i.vn                    ; 3 uses
  %i.wx = icmp sgt i64 %i.ww, 8
  br i1 %i.wx, label %bb.dm, label %bb.dn, !prof !322

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ws, ptr nonnull align 8 %i.qw, i64 %i.ww, i1 false), !noalias !1218
  br label %.noexc410

bb.dn:                                            ; preds = %bb.dl
  %i.wy = icmp eq i64 %i.ww, 8
  br i1 %i.wy, label %bb.do, label %.noexc410

bb.do:                                            ; preds = %bb.dn
  %i.wz = load ptr, ptr %i.qw, align 8, !tbaa !241, !noalias !1218
  store ptr %i.wz, ptr %i.ws, align 8, !tbaa !241, !noalias !1218
  br label %.noexc410

bb.dp:                                            ; preds = %bb.dk
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %i.wm ; 2 uses
  %i.xb = ptrtoint ptr %i.wu to i64
  %i.xc = sub i64 %i.xb, %i.vn                    ; 3 uses
  %i.xd = ashr exact i64 %i.xc, 3                 ; 2 uses
  %i.xe = icmp sgt i64 %i.xd, 1
  br i1 %i.xe, label %bb.dq, label %bb.dr, !prof !322

bb.dq:                                            ; preds = %bb.dp
  %i.xf = sub nsw i64 0, %i.xd
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.xa, i64 %i.xf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xg, ptr align 8 %i.qw, i64 %i.xc, i1 false), !noalias !1218
  br label %.noexc410

bb.dr:                                            ; preds = %bb.dp
  %i.xh = icmp eq i64 %i.xc, 8
  br i1 %i.xh, label %bb.ds, label %.noexc410

bb.ds:                                            ; preds = %bb.dr
  %i.xi = getelementptr inbounds i8, ptr %i.xa, i64 -8
  %i.xj = load ptr, ptr %i.qw, align 8, !tbaa !241, !noalias !1218
  store ptr %i.xj, ptr %i.xi, align 8, !tbaa !241, !noalias !1218
  br label %.noexc410

bb.dt:                                            ; preds = %bb.dj
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.wf, i64 1)
  %i.xk = add i64 %i.wf, 2
  %i.xl = add i64 %i.xk, %.sroa.speculated.i      ; 5 uses
  %i.xm = icmp ugt i64 %i.xl, 1152921504606846975
  br i1 %i.xm, label %bb.du, label %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i, !prof !310

bb.du:                                            ; preds = %bb.dt
  %i.xn = icmp ugt i64 %i.xl, 2305843009213693951
  br i1 %i.xn, label %.noexc.i.i428.invoke, label %.noexc3.i.i427.invoke

_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.dt
  %i.xo = shl nuw nsw i64 %i.xl, 3
  %i.xp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xo) #25
          to label %.noexc422 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218 ; 2 uses

.noexc422:                                        ; preds = %_ZNSt11_Deque_baseIN2PP4WordESaIS1_EE15_M_allocate_mapEm.exit.i
  %i.xq = sub nsw i64 %i.xl, %i.wn
  %i.xr = lshr i64 %i.xq, 1
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xr ; 3 uses
  %i.xt = load ptr, ptr %i.he, align 8, !tbaa !244, !noalias !1218 ; 3 uses
  %i.xu = load ptr, ptr %i.hd, align 8, !tbaa !245, !noalias !1218
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = ptrtoint ptr %i.xt to i64
  %i.xy = sub i64 %i.xw, %i.xx                    ; 3 uses
  %i.xz = icmp sgt i64 %i.xy, 8
  br i1 %i.xz, label %bb.dv, label %bb.dw, !prof !322

bb.dv:                                            ; preds = %.noexc422
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xs, ptr align 8 %i.xt, i64 %i.xy, i1 false), !noalias !1218
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i

bb.dw:                                            ; preds = %.noexc422
  %i.ya = icmp eq i64 %i.xy, 8
  br i1 %i.ya, label %bb.dx, label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i

bb.dx:                                            ; preds = %bb.dw
  %i.yb = load ptr, ptr %i.xt, align 8, !tbaa !241, !noalias !1218
  store ptr %i.yb, ptr %i.xs, align 8, !tbaa !241, !noalias !1218
  br label %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i

_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i:   ; preds = %bb.dx, %bb.dw, %bb.dv
  %i.yc = load ptr, ptr %i.ha, align 8, !tbaa !243, !noalias !1218
  %i.yd = load i64, ptr %i.ie, align 8, !tbaa !246, !noalias !1218
  %i.ye = shl i64 %i.yd, 3
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.ye) #21, !noalias !1218
  store ptr %i.xp, ptr %i.ha, align 8, !tbaa !243, !noalias !1218
  store i64 %i.xl, ptr %i.ie, align 8, !tbaa !246, !noalias !1218
  br label %.noexc410

.noexc410:                                        ; preds = %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i, %bb.ds, %bb.dr, %bb.dq, %bb.do, %bb.dn, %bb.dm
  %.0.i = phi ptr [ %i.xs, %_ZSt4copyIPPN2PP4WordES3_ET0_T_S5_S4_.exit24.i ], [ %i.ws, %bb.do ], [ %i.ws, %bb.dm ], [ %i.ws, %bb.dn ], [ %i.ws, %bb.dq ], [ %i.ws, %bb.dr ], [ %i.ws, %bb.ds ] ; 3 uses
  store ptr %.0.i, ptr %i.he, align 8, !tbaa !255, !noalias !1218
  %i.yf = load ptr, ptr %.0.i, align 8, !tbaa !241, !noalias !1218 ; 2 uses
  store ptr %i.yf, ptr %i.hh, align 8, !tbaa !254, !noalias !1218
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 512
  store ptr %i.yg, ptr %i.hg, align 8, !tbaa !256, !noalias !1218
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.wm
  %i.yi = getelementptr inbounds i8, ptr %i.yh, i64 -8 ; 2 uses
  store ptr %i.yi, ptr %i.hd, align 8, !tbaa !255, !noalias !1218
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !241, !noalias !1218 ; 2 uses
  store ptr %i.yj, ptr %i.hf, align 8, !tbaa !254, !noalias !1218
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 512
  store ptr %i.yk, ptr %i.id, align 8, !tbaa !256, !noalias !1218
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit.i

_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit.i: ; preds = %.noexc410, %bb.di
  %i.yl = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc411 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1218

.noexc411:                                        ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EE22_M_reserve_map_at_backEm.exit.i
  %i.ym = load ptr, ptr %i.hd, align 8, !tbaa !245, !noalias !1218
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  store ptr %i.yl, ptr %i.yn, align 8, !tbaa !241, !noalias !1218
  %i.yo = load ptr, ptr %i.hb, align 8, !tbaa !251, !noalias !1218
  invoke void @_ZN2PP4WordC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.yo, ptr noundef nonnull align 8 dereferenceable(128) %i.ro)
          to label %_ZNSt5dequeIN2PP4WordESaIS1_EE9push_backERKS1_.exit.i.thread unwind label %bb.dy, !noalias !1218

bb.dy:                                            ; preds = %.noexc411
  %i.yp = landingpad { ptr, i32 }
          catch ptr null
  %i.yq = extractvalue { ptr, i32 } %i.yp, 0
  %i.yr = call ptr @__cxa_begin_catch(ptr %i.yq) #22, !noalias !1218 ; 0 uses
  %i.ys = load ptr, ptr %i.hd, align 8, !tbaa !245, !noalias !1218
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !241, !noalias !1218
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef 512) #21, !noalias !1218
  invoke void @__cxa_rethrow() #24
          to label %bb.eb unwind label %bb.dz, !noalias !1218

bb.dz:                                            ; preds = %bb.dy
  %i.yv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ea, !noalias !1218

bb.ea:                                            ; preds = %bb.dz
  %i.yw = landingpad { ptr, i32 }
          catch ptr null
  %i.yx = extractvalue { ptr, i32 } %i.yw, 0
  call void @__clang_call_terminate(ptr %i.yx) #23, !noalias !1218
  unreachable

bb.eb:                                            ; preds = %bb.dy
  unreachable

_ZNSt5dequeIN2PP4WordESaIS1_EE9push_backERKS1_.exit.i.thread: ; preds = %.noexc411
  %i.yy = load ptr, ptr %i.hd, align 8, !tbaa !245, !noalias !1218
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8 ; 3 uses
  store ptr %i.yz, ptr %i.hd, align 8, !tbaa !255, !noalias !1218
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !241, !noalias !1218 ; 4 uses
  store ptr %i.za, ptr %i.hf, align 8, !tbaa !254, !noalias !1218
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 512 ; 2 uses
  store ptr %i.zb, ptr %i.id, align 8, !tbaa !256, !noalias !1218
  store ptr %i.za, ptr %i.hb, align 8, !tbaa !251, !noalias !1218
  store ptr %i.za, ptr %i.if, align 8, !tbaa !254, !alias.scope !1218
  store ptr %i.zb, ptr %i.ig, align 8, !tbaa !256, !alias.scope !1218
  store ptr %i.yz, ptr %i.ih, align 8, !tbaa !255, !alias.scope !1218
  br label %.noexc304
end_hunk_2
