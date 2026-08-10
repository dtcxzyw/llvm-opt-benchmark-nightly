inline.NumInlined: 4328
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_18CheckAllEm:bb.a

.loopexit20.i.i:                                  ; preds = %.noexc.i.i68.i.i, %bb.x
  %lpad.loopexit22.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp21.i.i:                         ; preds = %.noexc.i69.i.i
  %lpad.loopexit.split-lp23.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp21.i.i, %.loopexit20.i.i
  %lpad.phi24.i.i = phi { ptr, i32 } [ %lpad.loopexit22.i.i, %.loopexit20.i.i ], [ %lpad.loopexit.split-lp23.i.i, %.loopexit.split-lp21.i.i ]
  %i.dq = load ptr, ptr %37, align 8, !tbaa !31   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cg
  br i1 %i.dr, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i: ; preds = %bb.ae
  %i.ds = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i76.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i79.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit82.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load ptr, ptr %39, align 8, !tbaa !50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i: ; preds = %bb.ah
  %i.dy = load ptr, ptr %39, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i:     ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 2 uses
  %.not.i.i90.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i90.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i: ; preds = %bb.ai, %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i
  %i.ed = phi ptr [ %i.ec, %bb.ai ], [ @.str.57, %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef %i.ed)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %i.ee = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i92.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i92.i.i, label %_ZN7testing7MessageD2Ev.exit94.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93.i.i: ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ee) #24, !inline_history !1102
  br label %_ZN7testing7MessageD2Ev.exit94.i.i

_ZN7testing7MessageD2Ev.exit94.i.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.ar

bb.al:                                            ; preds = %bb.ag
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit97.i.i

bb.am:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i, %bb.ah
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn40.i.i = phi { ptr, i32 } [ %i.el, %bb.ao ], [ %i.ek, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn40.pn.i.i = phi { ptr, i32 } [ %.pn40.i.i, %bb.ap ], [ %i.ej, %bb.am ] ; 2 uses
  %i.em = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i95.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i95.i.i, label %_ZN7testing7MessageD2Ev.exit97.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i: ; preds = %bb.aq
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #24, !inline_history !1102
  br label %_ZN7testing7MessageD2Ev.exit97.i.i

_ZN7testing7MessageD2Ev.exit97.i.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i, %bb.aq, %bb.al
  %.pn40.pn.pn.i.i = phi { ptr, i32 } [ %i.ei, %bb.al ], [ %.pn40.pn.i.i, %bb.aq ], [ %.pn40.pn.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #24
  br label %bb.at

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94.i.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit82.i.i
  %i.eq = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 4 uses
  %.not.i.i98.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i98.i.i, label %_ZN7testing15AssertionResultD2Ev.exit102.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !31 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99.i.i: ; preds = %bb.as
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !27
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit102.i.i

_ZN7testing15AssertionResultD2Ev.exit102.i.i:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.ew = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ci
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit102.i.i
  %i.ey = load i64, ptr %i.ci, align 8, !tbaa !27
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit102.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 21
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.x, !llvm.loop !1111

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit97.i.i, %bb.af
  %.pn40.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn40.pn.pn.i.i, %_ZN7testing7MessageD2Ev.exit97.i.i ], [ %i.du, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.fa = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ci
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i: ; preds = %bb.at
  %i.fc = load i64, ptr %i.ci, align 8, !tbaa !27
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i
  %.pn40.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi24.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i ], [ %.pn40.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i ], [ %.pn40.pn.pn.pn.i.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.bs

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i.i
  %i.fe = load ptr, ptr %31, align 8, !tbaa !31   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.y
  br i1 %i.ff, label %_ZN12_GLOBAL__N_18CheckHexIjEEvT_PKcS3_S3_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i.i: ; preds = %bb.au
  %i.fg = load i64, ptr %i.y, align 8, !tbaa !27
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #26
  br label %_ZN12_GLOBAL__N_18CheckHexIjEEvT_PKcS3_S3_.exit.i

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i.i, %.preheader.i.i
  %indvars.iv.i = phi i64 [ 66, %.preheader.i.i ], [ %indvars.iv.next.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.fi = add nuw nsw i64 %indvars.iv.i, 192
  %i.fj = and i64 %i.fi, 255
  %.sroa.5.9.insert.insert.i.i = or disjoint i64 %i.fj, 8192
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store ptr %i.cl, ptr %42, align 8, !tbaa !22
  store i64 0, ptr %i.cm, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2026052613AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 %i.t, i64 %.sroa.5.9.insert.insert.i.i)
          to label %bb.aw unwind label %.loopexit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.fk = load ptr, ptr %42, align 8, !tbaa !31   ; 3 uses
  %i.fl = load i64, ptr %i.cm, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  store ptr %i.cn, ptr %41, align 8, !tbaa !22, !alias.scope !1112
  %i.fm = icmp eq ptr %i.fk, null
  %i.fn = icmp ne i64 %i.fl, 0
  %or.cond.i.i115.i.i = and i1 %i.fm, %i.fn
  br i1 %or.cond.i.i115.i.i, label %.noexc.i118.i.i, label %bb.ax

.noexc.i118.i.i:                                  ; preds = %bb.aw
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc119.i.i unwind label %.loopexit.split-lp.i.i

.noexc119.i.i:                                    ; preds = %.noexc.i118.i.i
  unreachable

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24, !noalias !1112
  store i64 %i.fl, ptr %i.o, align 8, !tbaa !111, !noalias !1112
  %i.fo = icmp ugt i64 %i.fl, 15
  br i1 %i.fo, label %.noexc.i.i117.i.i, label %._crit_edge.i.i.i116.i.i

.noexc.i.i117.i.i:                                ; preds = %bb.ax
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc120.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc120.i.i:                                    ; preds = %.noexc.i.i117.i.i
  store ptr %i.fp, ptr %41, align 8, !tbaa !31, !alias.scope !1112
  %i.fq = load i64, ptr %i.o, align 8, !tbaa !111, !noalias !1112
  store i64 %i.fq, ptr %i.cn, align 8, !tbaa !27, !alias.scope !1112
  br label %._crit_edge.i.i.i116.i.i

._crit_edge.i.i.i116.i.i:                         ; preds = %.noexc120.i.i, %bb.ax
  %i.fr = phi ptr [ %i.fp, %.noexc120.i.i ], [ %i.cn, %bb.ax ] ; 2 uses
  switch i64 %i.fl, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i116.i.i
  %i.fs = load i8, ptr %i.fk, align 1, !tbaa !27
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !27
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i.i116.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr align 1 %i.fk, i64 %i.fl, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i116.i.i
  %i.ft = load i64, ptr %i.o, align 8, !tbaa !111, !noalias !1112 ; 2 uses
  store i64 %i.ft, ptr %i.co, align 8, !tbaa !25, !alias.scope !1112
  %i.fu = load ptr, ptr %41, align 8, !tbaa !31, !alias.scope !1112
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24, !noalias !1112
  %i.fw = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.cl
  br i1 %i.fx, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122.i.i: ; preds = %bb.ba
  %i.fy = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  %i.ga = trunc i64 %indvars.iv.i to i32
  %i.gb = add i32 %i.ga, -64
  %i.gc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 256, ptr noundef nonnull @.str.306, i32 noundef %i.gb, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.gd = load i64, ptr %i.co, align 8, !tbaa !25, !noalias !1115 ; 3 uses
  %i.ge = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.r) #24, !noalias !1115
  %i.gf = icmp eq i64 %i.gd, %i.ge
  br i1 %i.gf, label %bb.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i

bb.bb:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i
  %i.gg = icmp eq i64 %i.gd, 0
  br i1 %i.gg, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i: ; preds = %bb.bb
  %i.gh = load ptr, ptr %41, align 8, !tbaa !31, !noalias !1115
  %bcmp.i.i.i.i127.i.i = call i32 @bcmp(ptr %i.gh, ptr nonnull align 1 dereferenceable(256) %i.r, i64 %i.gd), !noalias !1115
  %i.gi = icmp eq i32 %bcmp.i.i.i.i127.i.i, 0
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i, %bb.bb
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i unwind label %bb.bd

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i unwind label %bb.bd

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i
  %i.gj = load i8, ptr %43, align 8, !tbaa !37, !range !47, !noundef !48
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.bp, label %bb.be

.loopexit.i.i:                                    ; preds = %.noexc.i.i117.i.i, %bb.av
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i118.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.gl = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.cl
  br i1 %i.gm, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i: ; preds = %bb.bc
  %i.gn = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134.i.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i.i

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.be:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.gq = load ptr, ptr %44, align 8, !tbaa !50
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit136.i.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit136.i.i: ; preds = %bb.bf
  %i.gt = load ptr, ptr %44, align 8, !tbaa !50
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i:    ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit136.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.gw = load ptr, ptr %i.cp, align 8, !tbaa !49 ; 2 uses
  %.not.i.i139.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i139.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i: ; preds = %bb.bg, %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i
  %i.gy = phi ptr [ %i.gx, %bb.bg ], [ @.str.57, %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %45, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 548, ptr noundef %i.gy)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  %i.gz = load ptr, ptr %44, align 8, !tbaa !50   ; 3 uses
  %.not.i.i141.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i141.i.i, label %_ZN7testing7MessageD2Ev.exit143.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i.i: ; preds = %bb.bi
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !9
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(128) %i.gz) #24, !inline_history !1102
  br label %_ZN7testing7MessageD2Ev.exit143.i.i

_ZN7testing7MessageD2Ev.exit143.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %bb.bp

bb.bj:                                            ; preds = %bb.be
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit146.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_18CheckAllEm:bb.a
          cleanup
  br label %bb.dm

bb.cy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit102.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.nu = load ptr, ptr %24, align 8, !tbaa !50
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i: ; preds = %bb.cz
  %i.nx = load ptr, ptr %24, align 8, !tbaa !50
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i:    ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i
  %i.oa = load ptr, ptr %24, align 8, !tbaa !50
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i
  %i.od = load ptr, ptr %24, align 8, !tbaa !50
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef nonnull @.str.308, i64 noundef 4)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.og = load ptr, ptr %24, align 8, !tbaa !50
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i
  %i.oj = load ptr, ptr %24, align 8, !tbaa !50
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, i32 noundef %i.nf)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i unwind label %bb.df ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i:       ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.om = load ptr, ptr %i.lp, align 8, !tbaa !49 ; 2 uses
  %.not.i.i116.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i.i116.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i, label %bb.da

bb.da:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i: ; preds = %bb.da, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i
  %i.oo = phi ptr [ %i.on, %bb.da ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.oo)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.op = load ptr, ptr %24, align 8, !tbaa !50   ; 3 uses
  %.not.i.i118.i.i = icmp eq ptr %i.op, null
  br i1 %.not.i.i118.i.i, label %_ZN7testing7MessageD2Ev.exit120.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i.i: ; preds = %bb.dc
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(128) %i.op) #24, !inline_history !1130
  br label %_ZN7testing7MessageD2Ev.exit120.i.i

_ZN7testing7MessageD2Ev.exit120.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.dk

bb.dd:                                            ; preds = %bb.cy
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit123.i.i

bb.de:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i, %_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i, %bb.cz
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.df:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.db
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn43.i.i = phi { ptr, i32 } [ %i.ox, %bb.dh ], [ %i.ow, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.df, %bb.de
  %.pn43.pn.pn.i.i = phi { ptr, i32 } [ %i.ou, %bb.de ], [ %.pn43.i.i, %bb.di ], [ %i.ov, %bb.df ] ; 2 uses
  %i.oy = load ptr, ptr %24, align 8, !tbaa !50   ; 3 uses
  %.not.i.i121.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i121.i.i, label %_ZN7testing7MessageD2Ev.exit123.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i: ; preds = %bb.dj
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(128) %i.oy) #24, !inline_history !1130
  br label %_ZN7testing7MessageD2Ev.exit123.i.i

_ZN7testing7MessageD2Ev.exit123.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i, %bb.dj, %bb.dd
  %.pn43.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ot, %bb.dd ], [ %.pn43.pn.pn.i.i, %bb.dj ], [ %.pn43.pn.pn.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #24
  br label %bb.dm

bb.dk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120.i.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit102.i.i
  %i.pc = load ptr, ptr %i.lp, align 8, !tbaa !49 ; 4 uses
  %.not.i.i124.i.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i124.i.i, label %_ZN7testing15AssertionResultD2Ev.exit128.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !31 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i.i: ; preds = %bb.dl
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !27
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit128.i.i

_ZN7testing15AssertionResultD2Ev.exit128.i.i:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.pi = load ptr, ptr %21, align 8, !tbaa !31   ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ln
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i.i
  %i.pk = load i64, ptr %i.ln, align 8, !tbaa !27
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %indvars.iv.next.i25.i, 21
  br i1 %exitcond.not.i26.i, label %.preheader.i27.i, label %bb.cp, !llvm.loop !1139

bb.dm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit123.i.i, %bb.cx
  %.pn43.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i.i, %_ZN7testing7MessageD2Ev.exit123.i.i ], [ %i.nt, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.pm = load ptr, ptr %21, align 8, !tbaa !31   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.ln
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i: ; preds = %bb.dm
  %i.po = load i64, ptr %i.ln, align 8, !tbaa !27
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i.i
  %.pn43.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi37.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i.i ], [ %.pn43.pn.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i ], [ %.pn43.pn.pn.pn.pn.i.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.em

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i
  %i.pq = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.jb
  br i1 %i.pr, label %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i: ; preds = %bb.dn
  %i.ps = load i64, ptr %i.jb, align 8, !tbaa !27
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #26
  br label %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i, %.preheader.i27.i
  %indvars.iv155.i = phi i64 [ 66, %.preheader.i27.i ], [ %indvars.iv.next156.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.pu = add nuw nsw i64 %indvars.iv155.i, 192
  %i.pv = and i64 %i.pu, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, i8 0, i64 16, i1 false)
  store ptr %i.lq, ptr %27, align 8, !tbaa !22
  store i64 0, ptr %i.lr, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.pw = sub nsw i64 0, %i.pv
  %i.px = getelementptr inbounds i8, ptr %i.ls, i64 %i.pw
  br i1 %i.ih, label %.lr.ph.i.i.i151.i.i, label %.loopexit.i30.i

.lr.ph.i.i.i151.i.i:                              ; preds = %bb.do, %.lr.ph.i.i.i151.i.i
  %.02533.i.i.i152.i.i = phi ptr [ %i.qb, %.lr.ph.i.i.i151.i.i ], [ %i.ls, %bb.do ]
  %.02632.i.i.i153.i.i = phi i64 [ %i.qc, %.lr.ph.i.i.i151.i.i ], [ %i.t, %bb.do ] ; 3 uses
  %i.py = urem i64 %.02632.i.i.i153.i.i, 10
  %i.pz = trunc nuw nsw i64 %i.py to i8
  %i.qa = or disjoint i8 %i.pz, 48
  %i.qb = getelementptr inbounds i8, ptr %.02533.i.i.i152.i.i, i64 -1 ; 3 uses
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !27
  %i.qc = udiv i64 %.02632.i.i.i153.i.i, 10       ; 2 uses
  %i.qd = icmp samesign ugt i64 %.02632.i.i.i153.i.i, 99
  br i1 %i.qd, label %.lr.ph.i.i.i151.i.i, label %.loopexit.i30.i, !llvm.loop !1121

.loopexit.i30.i:                                  ; preds = %.lr.ph.i.i.i151.i.i, %bb.do
  %.026.lcssa.i.i.i142.i.i = phi i64 [ %i.t, %bb.do ], [ %i.qc, %.lr.ph.i.i.i151.i.i ]
  %.025.lcssa.i.i.i143.i.i = phi ptr [ %i.ls, %bb.do ], [ %i.qb, %.lr.ph.i.i.i151.i.i ]
  %i.qe = trunc nuw nsw i64 %.026.lcssa.i.i.i142.i.i to i8
  %i.qf = or disjoint i8 %i.qe, 48
  %i.qg = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i143.i.i, i64 -1 ; 4 uses
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !27
  %i.qh = ptrtoint ptr %i.qg to i64               ; 2 uses
  %i.qi = ptrtoint ptr %i.px to i64
  %i.qj = sub i64 %i.qh, %i.qi                    ; 3 uses
  %i.qk = icmp sgt i64 %i.qj, 0
  br i1 %i.qk, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i: ; preds = %.loopexit.i30.i
  %i.ql = sub nsw i64 0, %i.qj
  %i.qm = getelementptr inbounds i8, ptr %i.qg, i64 %i.ql ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qm, i8 32, i64 %i.qj, i1 false)
  %.pre115.i.i = ptrtoint ptr %i.qm to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i, %.loopexit.i30.i
  %.pre-phi116.i.i = phi i64 [ %.pre115.i.i, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i ], [ %i.qh, %.loopexit.i30.i ]
  %.4.i.i.i146.i.i = phi ptr [ %i.qm, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i ], [ %i.qg, %.loopexit.i30.i ]
  %i.qn = sub i64 %i.lt, %.pre-phi116.i.i
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 %i.qn, ptr nonnull %.4.i.i.i146.i.i)
          to label %bb.dp unwind label %.loopexit31.i.i

bb.dp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  %i.qo = load ptr, ptr %27, align 8, !tbaa !31   ; 3 uses
  %i.qp = load i64, ptr %i.lr, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  store ptr %i.lu, ptr %26, align 8, !tbaa !22, !alias.scope !1140
  %i.qq = icmp eq ptr %i.qo, null
  %i.qr = icmp ne i64 %i.qp, 0
  %or.cond.i.i156.i.i = and i1 %i.qq, %i.qr
  br i1 %or.cond.i.i156.i.i, label %.noexc.i159.i.i, label %bb.dq

.noexc.i159.i.i:                                  ; preds = %bb.dp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc160.i.i unwind label %.loopexit.split-lp.i33.i

.noexc160.i.i:                                    ; preds = %.noexc.i159.i.i
  unreachable

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24, !noalias !1140
  store i64 %i.qp, ptr %i.h, align 8, !tbaa !111, !noalias !1140
  %i.qs = icmp ugt i64 %i.qp, 15
  br i1 %i.qs, label %.noexc.i.i158.i.i, label %._crit_edge.i.i.i157.i.i

.noexc.i.i158.i.i:                                ; preds = %bb.dq
  %i.qt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc161.i.i unwind label %.loopexit31.i.i ; 2 uses

.noexc161.i.i:                                    ; preds = %.noexc.i.i158.i.i
  store ptr %i.qt, ptr %26, align 8, !tbaa !31, !alias.scope !1140
  %i.qu = load i64, ptr %i.h, align 8, !tbaa !111, !noalias !1140
  store i64 %i.qu, ptr %i.lu, align 8, !tbaa !27, !alias.scope !1140
  br label %._crit_edge.i.i.i157.i.i

._crit_edge.i.i.i157.i.i:                         ; preds = %.noexc161.i.i, %bb.dq
  %i.qv = phi ptr [ %i.qt, %.noexc161.i.i ], [ %i.lu, %bb.dq ] ; 2 uses
  switch i64 %i.qp, label %bb.ds [
    i64 1, label %bb.dr
    i64 0, label %bb.dt
  ]

bb.dr:                                            ; preds = %._crit_edge.i.i.i157.i.i
  %i.qw = load i8, ptr %i.qo, align 1, !tbaa !27
  store i8 %i.qw, ptr %i.qv, align 1, !tbaa !27
  br label %bb.dt

bb.ds:                                            ; preds = %._crit_edge.i.i.i157.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qv, ptr align 1 %i.qo, i64 %i.qp, i1 false)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge.i.i.i157.i.i
  %i.qx = load i64, ptr %i.h, align 8, !tbaa !111, !noalias !1140 ; 2 uses
  store i64 %i.qx, ptr %i.lv, align 8, !tbaa !25, !alias.scope !1140
  %i.qy = load ptr, ptr %26, align 8, !tbaa !31, !alias.scope !1140
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qx
  store i8 0, ptr %i.qz, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24, !noalias !1140
  %i.ra = load ptr, ptr %27, align 8, !tbaa !31   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.lq
  br i1 %i.rb, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i.i: ; preds = %bb.dt
  %i.rc = load i64, ptr %i.lq, align 8, !tbaa !27
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.re = trunc i64 %indvars.iv155.i to i32
  %i.rf = add i32 %i.re, -64                      ; 2 uses
  %i.rg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 256, ptr noundef nonnull @.str.309, i32 noundef %i.rf, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.rh = load i64, ptr %i.lv, align 8, !tbaa !25, !noalias !1143 ; 3 uses
  %i.ri = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.n) #24, !noalias !1143
  %i.rj = icmp eq i64 %i.rh, %i.ri
  br i1 %i.rj, label %bb.du, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i

bb.du:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i
  %i.rk = icmp eq i64 %i.rh, 0
  br i1 %i.rk, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i: ; preds = %bb.du
  %i.rl = load ptr, ptr %26, align 8, !tbaa !31, !noalias !1143
  %bcmp.i.i.i.i168.i.i = call i32 @bcmp(ptr %i.rl, ptr nonnull align 1 dereferenceable(256) %i.n, i64 %i.rh), !noalias !1143
  %i.rm = icmp eq i32 %bcmp.i.i.i.i168.i.i, 0
  br i1 %i.rm, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i, %bb.du
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i unwind label %bb.dw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i unwind label %bb.dw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i
  %i.rn = load i8, ptr %28, align 8, !tbaa !37, !range !47, !noundef !48
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %bb.ej, label %bb.dx

.loopexit31.i.i:                                  ; preds = %.noexc.i.i158.i.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i
  %lpad.loopexit.i31.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.loopexit.split-lp.i33.i:                         ; preds = %.noexc.i159.i.i
  %lpad.loopexit.split-lp.i34.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.split-lp.i33.i, %.loopexit31.i.i
  %lpad.phi.i32.i = phi { ptr, i32 } [ %lpad.loopexit.i31.i, %.loopexit31.i.i ], [ %lpad.loopexit.split-lp.i34.i, %.loopexit.split-lp.i33.i ]
  %i.rp = load ptr, ptr %27, align 8, !tbaa !31   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.lq
  br i1 %i.rq, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i: ; preds = %bb.dv
  %i.rr = load i64, ptr %i.lq, align 8, !tbaa !27
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i

bb.dw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.ru = load ptr, ptr %29, align 8, !tbaa !50
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rv, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i.i unwind label %bb.ed ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i.i: ; preds = %bb.dy
  %i.rx = load ptr, ptr %29, align 8, !tbaa !50
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.rz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ry, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit179.i.i unwind label %bb.ed ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_18CheckAllEm:bb.a
  %i.sm = load ptr, ptr %i.lw, align 8, !tbaa !49 ; 2 uses
  %.not.i.i190.i.i = icmp eq ptr %i.sm, null
  br i1 %.not.i.i190.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit189.i.i
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit191.i.i: ; preds = %bb.dz, %_ZN7testing7MessagelsIiEERS0_RKT_.exit189.i.i
  %i.so = phi ptr [ %i.sn, %bb.dz ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit189.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 576, ptr noundef %i.so)
          to label %bb.ea unwind label %bb.ef

bb.ea:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.eb unwind label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %i.sp = load ptr, ptr %29, align 8, !tbaa !50   ; 3 uses
  %.not.i.i192.i.i = icmp eq ptr %i.sp, null
  br i1 %.not.i.i192.i.i, label %_ZN7testing7MessageD2Ev.exit194.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193.i.i: ; preds = %bb.eb
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !9
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(128) %i.sp) #24, !inline_history !1130
  br label %_ZN7testing7MessageD2Ev.exit194.i.i

_ZN7testing7MessageD2Ev.exit194.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193.i.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.ej

bb.ec:                                            ; preds = %bb.dx
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit197.i.i

bb.ed:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit185.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i182.i.i, %_ZN7testing7MessagelsIjEERS0_RKT_.exit179.i.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i.i, %bb.dy
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ee:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit187.i.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ef:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i.i
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ea
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #24
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn36.i.i = phi { ptr, i32 } [ %i.sx, %bb.eg ], [ %i.sw, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ee, %bb.ed
  %.pn36.pn.pn.i.i = phi { ptr, i32 } [ %i.su, %bb.ed ], [ %.pn36.i.i, %bb.eh ], [ %i.sv, %bb.ee ] ; 2 uses
  %i.sy = load ptr, ptr %29, align 8, !tbaa !50   ; 3 uses
  %.not.i.i195.i.i = icmp eq ptr %i.sy, null
  br i1 %.not.i.i195.i.i, label %_ZN7testing7MessageD2Ev.exit197.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i.i: ; preds = %bb.ei
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !9
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(128) %i.sy) #24, !inline_history !1130
  br label %_ZN7testing7MessageD2Ev.exit197.i.i

_ZN7testing7MessageD2Ev.exit197.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i.i, %bb.ei, %bb.ec
  %.pn36.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.st, %bb.ec ], [ %.pn36.pn.pn.i.i, %bb.ei ], [ %.pn36.pn.pn.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #24
  br label %bb.el

bb.ej:                                            ; preds = %_ZN7testing7MessageD2Ev.exit194.i.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i
  %i.tc = load ptr, ptr %i.lw, align 8, !tbaa !49 ; 4 uses
  %.not.i.i198.i.i = icmp eq ptr %i.tc, null
  br i1 %.not.i.i198.i.i, label %_ZN7testing15AssertionResultD2Ev.exit202.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !31 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 16 ; 2 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199.i.i: ; preds = %bb.ek
  %i.tg = load i64, ptr %i.te, align 8, !tbaa !27
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.th) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i.i: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit202.i.i

_ZN7testing15AssertionResultD2Ev.exit202.i.i:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i.i, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.ti = load ptr, ptr %26, align 8, !tbaa !31   ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.lu
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit202.i.i
  %i.tk = load i64, ptr %i.lu, align 8, !tbaa !27
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit202.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %exitcond112.not.i.i = icmp eq i64 %indvars.iv.next156.i, 85
  br i1 %exitcond112.not.i.i, label %bb.dn, label %bb.do, !llvm.loop !1148

bb.el:                                            ; preds = %_ZN7testing7MessageD2Ev.exit197.i.i, %bb.dw
  %.pn36.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.i.i, %_ZN7testing7MessageD2Ev.exit197.i.i ], [ %i.rt, %bb.dw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.tm = load ptr, ptr %26, align 8, !tbaa !31   ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.lu
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i.i: ; preds = %bb.el
  %i.to = load i64, ptr %i.lu, align 8, !tbaa !27
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i
  %.pn36.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i32.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i ], [ %.pn36.pn.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i.i ], [ %.pn36.pn.pn.pn.pn.i.i, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %bb.em

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i, %bb.co
  %.pn43.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i ], [ %.pn36.pn.pn.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i ], [ %.pn.pn.pn.pn.i8.i, %bb.co ] ; 2 uses
  %i.tq = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.jb
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i.i: ; preds = %bb.em
  %i.ts = load i64, ptr %i.jb, align 8, !tbaa !27
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i.i: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i.i
  %.pn43.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ka, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i.i ], [ %.pn43.pn.pn.pn.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i.i ], [ %.pn43.pn.pn.pn.pn.pn.pn.i.i, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  br label %common.resume.i

_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.tu = call i32 @llvm.abs.i32(i32 %i.s, i1 false) ; 2 uses
  %i.tv = zext i32 %i.tu to i64                   ; 6 uses
  %i.tw = lshr i32 %i.s, 15
  %i.tx = and i32 %i.tw, 65536                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ty = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, i8 0, i64 16, i1 false)
  store ptr %i.ty, ptr %2, align 8, !tbaa !22
  %i.tz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.tz, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.ua = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.f, i64 31 ; 2 uses
  %i.uc = icmp ugt i32 %i.tu, 9                   ; 3 uses
  br i1 %i.uc, label %.lr.ph.i.i.i.i127.i, label %._crit_edge.i.i.i.i44.i

.lr.ph.i.i.i.i127.i:                              ; preds = %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i, %.lr.ph.i.i.i.i127.i
  %.02533.i.i.i.i128.i = phi ptr [ %i.ug, %.lr.ph.i.i.i.i127.i ], [ %i.ua, %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i ]
  %.02632.i.i.i.i129.i = phi i64 [ %i.uh, %.lr.ph.i.i.i.i127.i ], [ %i.tv, %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i ] ; 3 uses
  %i.ud = urem i64 %.02632.i.i.i.i129.i, 10
  %i.ue = trunc nuw nsw i64 %i.ud to i8
  %i.uf = or disjoint i8 %i.ue, 48
  %i.ug = getelementptr inbounds i8, ptr %.02533.i.i.i.i128.i, i64 -1 ; 3 uses
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !27
  %i.uh = udiv i64 %.02632.i.i.i.i129.i, 10       ; 2 uses
  %i.ui = icmp samesign ugt i64 %.02632.i.i.i.i129.i, 99
  br i1 %i.ui, label %.lr.ph.i.i.i.i127.i, label %._crit_edge.i.i.i.i44.i, !llvm.loop !1121

._crit_edge.i.i.i.i44.i:                          ; preds = %.lr.ph.i.i.i.i127.i, %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i
  %.026.lcssa.i.i.i.i45.i = phi i64 [ %i.tv, %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i ], [ %i.uh, %.lr.ph.i.i.i.i127.i ]
  %.025.lcssa.i.i.i.i46.i = phi ptr [ %i.ua, %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i ], [ %i.ug, %.lr.ph.i.i.i.i127.i ] ; 2 uses
  %i.uj = trunc nuw nsw i64 %.026.lcssa.i.i.i.i45.i to i8
  %i.uk = or disjoint i8 %i.uj, 48
  %i.ul = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i.i46.i, i64 -1 ; 4 uses
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !27
  %.not.not.i.i = icmp eq i32 %i.tx, 0            ; 2 uses
  br i1 %.not.not.i.i, label %bb.en, label %.thread.i.i

bb.en:                                            ; preds = %._crit_edge.i.i.i.i44.i
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %i.ub to i64
  %i.uo = sub i64 %i.um, %i.un                    ; 3 uses
  %i.up = icmp sgt i64 %i.uo, 0
  br i1 %i.up, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i126.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i47.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i.i44.i
  %i.uq = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i.i46.i, i64 -2 ; 4 uses
  store i8 45, ptr %i.uq, align 1, !tbaa !27
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.ub to i64
  %i.ut = sub i64 %i.ur, %i.us                    ; 3 uses
  %i.uu = icmp sgt i64 %i.ut, 0
  br i1 %i.uu, label %bb.eo, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i47.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i126.i: ; preds = %bb.en
  %.lobit.i.i = lshr i64 %0, 31
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.i.i = and i64 %.lobit.i.i, 1
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.i.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.i.i
  %i.uv = sub nsw i64 0, %i.uo
  %i.uw = getelementptr inbounds i8, ptr %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.i.i, i64 %i.uv ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uw, i8 48, i64 %i.uo, i1 false)
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i47.i

bb.eo:                                            ; preds = %.thread.i.i
  %.lobit163.i.i = lshr i64 %0, 31
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx164.i.i = and i64 %.lobit163.i.i, 1
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel165.i.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx164.i.i
  %i.ux = sub nsw i64 0, %i.ut
  %i.uy = getelementptr inbounds i8, ptr %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel165.i.i, i64 %i.ux ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uy, i8 48, i64 %i.ut, i1 false)
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -1 ; 2 uses
  store i8 45, ptr %i.uz, align 1, !tbaa !27
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i47.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i47.i: ; preds = %bb.eo, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i126.i, %.thread.i.i, %bb.en
  %.4.i.i.i.i48.i = phi ptr [ %i.ul, %bb.en ], [ %i.uz, %bb.eo ], [ %i.uw, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i126.i ], [ %i.uq, %.thread.i.i ] ; 2 uses
  %i.va = ptrtoint ptr %i.ua to i64
  %i.vb = ptrtoint ptr %.4.i.i.i.i48.i to i64
  %i.vc = sub i64 %i.va, %i.vb
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 %i.vc, ptr nonnull %.4.i.i.i.i48.i)
          to label %bb.ep unwind label %bb.ev

bb.ep:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.vd = load ptr, ptr %2, align 8, !tbaa !31    ; 3 uses
  %i.ve = load i64, ptr %i.tz, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  %i.vf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.vf, ptr %1, align 8, !tbaa !22, !alias.scope !1149
  %i.vg = icmp eq ptr %i.vd, null
  %i.vh = icmp ne i64 %i.ve, 0
  %or.cond.i.i.i53.i = and i1 %i.vg, %i.vh
  br i1 %or.cond.i.i.i53.i, label %.noexc.i.i124.i, label %bb.eq

.noexc.i.i124.i:                                  ; preds = %bb.ep
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc.i125.i unwind label %bb.ev

.noexc.i125.i:                                    ; preds = %.noexc.i.i124.i
  unreachable

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !1149
  store i64 %i.ve, ptr %i.e, align 8, !tbaa !111, !noalias !1149
  %i.vi = icmp ugt i64 %i.ve, 15
  br i1 %i.vi, label %.noexc.i.i.i122.i, label %._crit_edge.i.i.i52.i54.i

.noexc.i.i.i122.i:                                ; preds = %bb.eq
  %i.vj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc53.i123.i unwind label %bb.ev ; 2 uses

.noexc53.i123.i:                                  ; preds = %.noexc.i.i.i122.i
  store ptr %i.vj, ptr %1, align 8, !tbaa !31, !alias.scope !1149
  %i.vk = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !1149
  store i64 %i.vk, ptr %i.vf, align 8, !tbaa !27, !alias.scope !1149
  br label %._crit_edge.i.i.i52.i54.i

._crit_edge.i.i.i52.i54.i:                        ; preds = %.noexc53.i123.i, %bb.eq
  %i.vl = phi ptr [ %i.vj, %.noexc53.i123.i ], [ %i.vf, %bb.eq ] ; 2 uses
  switch i64 %i.ve, label %bb.es [
    i64 1, label %bb.er
    i64 0, label %bb.et
  ]

bb.er:                                            ; preds = %._crit_edge.i.i.i52.i54.i
  %i.vm = load i8, ptr %i.vd, align 1, !tbaa !27
  store i8 %i.vm, ptr %i.vl, align 1, !tbaa !27
  br label %bb.et

bb.es:                                            ; preds = %._crit_edge.i.i.i52.i54.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vl, ptr align 1 %i.vd, i64 %i.ve, i1 false)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %._crit_edge.i.i.i52.i54.i
  %i.vn = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !1149 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.vn, ptr %i.vo, align 8, !tbaa !25, !alias.scope !1149
  %i.vp = load ptr, ptr %1, align 8, !tbaa !31, !alias.scope !1149
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vn
  store i8 0, ptr %i.vq, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !1149
  %i.vr = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.ty
  br i1 %i.vs, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55.i: ; preds = %bb.et
  %i.vt = load i64, ptr %i.ty, align 8, !tbaa !27
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i56.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i56.i: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.vv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 256, ptr noundef nonnull @.str.310, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.vw = load i64, ptr %i.vo, align 8, !tbaa !25, !noalias !1152 ; 3 uses
  %i.vx = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.g) #24, !noalias !1152
  %i.vy = icmp eq i64 %i.vw, %i.vx
  br i1 %i.vy, label %bb.eu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i57.i

bb.eu:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i56.i
  %i.vz = icmp eq i64 %i.vw, 0
  br i1 %i.vz, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i120.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i118.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i118.i: ; preds = %bb.eu
  %i.wa = load ptr, ptr %1, align 8, !tbaa !31, !noalias !1152
  %bcmp.i.i.i.i.i119.i = call i32 @bcmp(ptr %i.wa, ptr nonnull align 1 dereferenceable(256) %i.g, i64 %i.vw), !noalias !1152
  %i.wb = icmp eq i32 %bcmp.i.i.i.i.i119.i, 0
  br i1 %i.wb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i120.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i57.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i120.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i118.i, %bb.eu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i60.i unwind label %bb.ew

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i57.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i118.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i56.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i60.i unwind label %bb.ew

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i60.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i57.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i120.i
  %i.wc = load i8, ptr %3, align 8, !tbaa !37, !range !47, !noundef !48
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.fi, label %bb.ex

bb.ev:                                            ; preds = %.noexc.i.i.i122.i, %.noexc.i.i124.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i47.i
  %i.we = landingpad { ptr, i32 }
          cleanup
  %i.wf = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.ty
  br i1 %i.wg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i49.i: ; preds = %bb.ev
  %i.wh = load i64, ptr %i.ty, align 8, !tbaa !27
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i50.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i50.i: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214.i.i

bb.ew:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i57.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i120.i
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.ex:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i60.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  %i.wk = load ptr, ptr %4, align 8, !tbaa !50
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i66.i unwind label %bb.fd ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i66.i: ; preds = %bb.ey
  %i.wn = load ptr, ptr %4, align 8, !tbaa !50
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.wo, i32 noundef %i.s)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i67.i unwind label %bb.fd ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i67.i:     ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i66.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.wq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i68.i = icmp eq ptr %i.wr, null
  br i1 %.not.i.i.i68.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i69.i, label %bb.ez

bb.ez:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i67.i
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i69.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i69.i: ; preds = %bb.ez, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i67.i
  %i.wt = phi ptr [ %i.ws, %bb.ez ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i67.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 559, ptr noundef %i.wt)
          to label %bb.fa unwind label %bb.fe

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i69.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.wu = load ptr, ptr %4, align 8, !tbaa !50    ; 3 uses
  %.not.i.i61.i71.i = icmp eq ptr %i.wu, null
  br i1 %.not.i.i61.i71.i, label %_ZN7testing7MessageD2Ev.exit.i73.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i72.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i72.i: ; preds = %bb.fb
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !9
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(128) %i.wu) #24, !inline_history !1157
  br label %_ZN7testing7MessageD2Ev.exit.i73.i

_ZN7testing7MessageD2Ev.exit.i73.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i72.i, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.fi

bb.fc:                                            ; preds = %bb.ex
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit64.i61.i

bb.fd:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i66.i, %bb.ey
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i69.i
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fa
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn.i70.i = phi { ptr, i32 } [ %i.xb, %bb.ff ], [ %i.xa, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fd
  %.pn.pn.i63.i = phi { ptr, i32 } [ %.pn.i70.i, %bb.fg ], [ %i.wz, %bb.fd ] ; 2 uses
  %i.xc = load ptr, ptr %4, align 8, !tbaa !50    ; 3 uses
  %.not.i.i62.i64.i = icmp eq ptr %i.xc, null
  br i1 %.not.i.i62.i64.i, label %_ZN7testing7MessageD2Ev.exit64.i61.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i65.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i65.i: ; preds = %bb.fh
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !9
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8
  call void %i.xf(ptr noundef nonnull align 8 dereferenceable(128) %i.xc) #24, !inline_history !1157
  br label %_ZN7testing7MessageD2Ev.exit64.i61.i

_ZN7testing7MessageD2Ev.exit64.i61.i:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i65.i, %bb.fh, %bb.fc
  %.pn.pn.pn.i62.i = phi { ptr, i32 } [ %i.wy, %bb.fc ], [ %.pn.pn.i63.i, %bb.fh ], [ %.pn.pn.i63.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i65.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %bb.fk

bb.fi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit.i73.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i60.i
  %i.xg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !49 ; 4 uses
  %.not.i.i65.i74.i = icmp eq ptr %i.xh, null
  br i1 %.not.i.i65.i74.i, label %_ZN7testing15AssertionResultD2Ev.exit.i77.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !31 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 2 uses
  %i.xk = icmp eq ptr %i.xi, %i.xj
  br i1 %i.xk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75.i: ; preds = %bb.fj
  %i.xl = load i64, ptr %i.xj, align 8, !tbaa !27
  %i.xm = add i64 %i.xl, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xm) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76.i: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xh, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit.i77.i

_ZN7testing15AssertionResultD2Ev.exit.i77.i:      ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76.i, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.xn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.xq = icmp ne i32 %i.tx, 0                    ; 2 uses
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.fl

.preheader.i92.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i
  %i.xv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.gn

bb.fk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit64.i61.i, %bb.ew
  %.pn.pn.pn.pn.i58.i = phi { ptr, i32 } [ %.pn.pn.pn.i62.i, %_ZN7testing7MessageD2Ev.exit64.i61.i ], [ %i.wj, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.hn

bb.fl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i, %_ZN7testing15AssertionResultD2Ev.exit.i77.i
  %indvars.iv.i78.i = phi i64 [ 2, %_ZN7testing15AssertionResultD2Ev.exit.i77.i ], [ %indvars.iv.next.i90.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, i8 0, i64 16, i1 false)
  store ptr %i.xn, ptr %7, align 8, !tbaa !22
  store i64 0, ptr %i.xo, align 8, !tbaa !25
  %.sroa.55.10.insert.insert.i.i = lshr i64 %indvars.iv.i78.i, 8
  %i.yc = trunc i64 %.sroa.55.10.insert.insert.i.i to i8
  %.sroa.4.8.extract.trunc.i.i.i71.i.i = or i8 %i.yc, 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.yd = sub nsw i64 0, %indvars.iv.i78.i
  %i.ye = getelementptr inbounds i8, ptr %i.xp, i64 %i.yd
  br i1 %i.uc, label %.lr.ph.i.i.i82.i.i, label %._crit_edge.i.i.i72.i.i

.lr.ph.i.i.i82.i.i:                               ; preds = %bb.fl, %.lr.ph.i.i.i82.i.i
  %.02533.i.i.i83.i.i = phi ptr [ %i.yi, %.lr.ph.i.i.i82.i.i ], [ %i.xp, %bb.fl ]
  %.02632.i.i.i84.i.i = phi i64 [ %i.yj, %.lr.ph.i.i.i82.i.i ], [ %i.tv, %bb.fl ] ; 3 uses
  %i.yf = urem i64 %.02632.i.i.i84.i.i, 10
  %i.yg = trunc nuw nsw i64 %i.yf to i8
  %i.yh = or disjoint i8 %i.yg, 48
  %i.yi = getelementptr inbounds i8, ptr %.02533.i.i.i83.i.i, i64 -1 ; 3 uses
  store i8 %i.yh, ptr %i.yi, align 1, !tbaa !27
  %i.yj = udiv i64 %.02632.i.i.i84.i.i, 10        ; 2 uses
  %i.yk = icmp samesign ugt i64 %.02632.i.i.i84.i.i, 99
  br i1 %i.yk, label %.lr.ph.i.i.i82.i.i, label %._crit_edge.i.i.i72.i.i, !llvm.loop !1121

._crit_edge.i.i.i72.i.i:                          ; preds = %.lr.ph.i.i.i82.i.i, %bb.fl
  %.026.lcssa.i.i.i73.i.i = phi i64 [ %i.tv, %bb.fl ], [ %i.yj, %.lr.ph.i.i.i82.i.i ]
  %.025.lcssa.i.i.i74.i.i = phi ptr [ %i.xp, %bb.fl ], [ %i.yi, %.lr.ph.i.i.i82.i.i ] ; 2 uses
  %i.yl = trunc nuw nsw i64 %.026.lcssa.i.i.i73.i.i to i8
  %i.ym = or disjoint i8 %i.yl, 48
  %i.yn = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i74.i.i, i64 -1 ; 2 uses
  store i8 %i.ym, ptr %i.yn, align 1, !tbaa !27
  br i1 %i.xq, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %._crit_edge.i.i.i72.i.i
  %i.yo = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i74.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.yo, align 1, !tbaa !27
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge.i.i.i72.i.i
  %.1.i.i.i75.i.i = phi ptr [ %i.yo, %bb.fm ], [ %i.yn, %._crit_edge.i.i.i72.i.i ] ; 3 uses
  %i.yp = ptrtoint ptr %.1.i.i.i75.i.i to i64
  %i.yq = ptrtoint ptr %i.ye to i64
  %i.yr = sub i64 %i.yp, %i.yq                    ; 3 uses
  %i.ys = icmp sgt i64 %i.yr, 0
  br i1 %i.ys, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i.i:  ; preds = %bb.fn
  %i.yt = icmp eq i8 %.sroa.4.8.extract.trunc.i.i.i71.i.i, 48
  %or.cond.i.i.i79.i.i = and i1 %i.xq, %i.yt      ; 2 uses
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %or.cond.i.i.i79.i.i to i64
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i75.i.i, i64 %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.yu = sub nsw i64 0, %i.yr
  %i.yv = getelementptr inbounds i8, ptr %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.yu ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yv, i8 %.sroa.4.8.extract.trunc.i.i.i71.i.i, i64 %i.yr, i1 false)
  br i1 %or.cond.i.i.i79.i.i, label %bb.fo, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i.i

bb.fo:                                            ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i.i
  %i.yw = getelementptr inbounds i8, ptr %i.yv, i64 -1 ; 2 uses
  store i8 45, ptr %i.yw, align 1, !tbaa !27
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i.i: ; preds = %bb.fo, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i.i, %bb.fn
  %.4.i.i.i77.i.i = phi ptr [ %.1.i.i.i75.i.i, %bb.fn ], [ %i.yw, %bb.fo ], [ %i.yv, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i.i ] ; 2 uses
  %i.yx = ptrtoint ptr %.4.i.i.i77.i.i to i64
  %i.yy = sub i64 %i.xr, %i.yx
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 %i.yy, ptr nonnull %.4.i.i.i77.i.i)
          to label %bb.fp unwind label %.loopexit31.i79.i

bb.fp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.yz = load ptr, ptr %7, align 8, !tbaa !31    ; 3 uses
  %i.za = load i64, ptr %i.xo, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  store ptr %i.xs, ptr %6, align 8, !tbaa !22, !alias.scope !1158
  %i.zb = icmp eq ptr %i.yz, null
  %i.zc = icmp ne i64 %i.za, 0
  %or.cond.i.i87.i.i = and i1 %i.zb, %i.zc
  br i1 %or.cond.i.i87.i.i, label %.noexc.i90.i.i, label %bb.fq

.noexc.i90.i.i:                                   ; preds = %bb.fp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc91.i116.i unwind label %.loopexit.split-lp32.i.i

.noexc91.i116.i:                                  ; preds = %.noexc.i90.i.i
  unreachable

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !1158
  store i64 %i.za, ptr %i.c, align 8, !tbaa !111, !noalias !1158
  %i.zd = icmp ugt i64 %i.za, 15
  br i1 %i.zd, label %.noexc.i.i89.i.i, label %._crit_edge.i.i.i88.i.i

.noexc.i.i89.i.i:                                 ; preds = %bb.fq
  %i.ze = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc92.i.i unwind label %.loopexit31.i79.i ; 2 uses

.noexc92.i.i:                                     ; preds = %.noexc.i.i89.i.i
  store ptr %i.ze, ptr %6, align 8, !tbaa !31, !alias.scope !1158
  %i.zf = load i64, ptr %i.c, align 8, !tbaa !111, !noalias !1158
  store i64 %i.zf, ptr %i.xs, align 8, !tbaa !27, !alias.scope !1158
  br label %._crit_edge.i.i.i88.i.i

._crit_edge.i.i.i88.i.i:                          ; preds = %.noexc92.i.i, %bb.fq
  %i.zg = phi ptr [ %i.ze, %.noexc92.i.i ], [ %i.xs, %bb.fq ] ; 2 uses
  switch i64 %i.za, label %bb.fs [
    i64 1, label %bb.fr
    i64 0, label %bb.ft
  ]

bb.fr:                                            ; preds = %._crit_edge.i.i.i88.i.i
  %i.zh = load i8, ptr %i.yz, align 1, !tbaa !27
  store i8 %i.zh, ptr %i.zg, align 1, !tbaa !27
  br label %bb.ft

bb.fs:                                            ; preds = %._crit_edge.i.i.i88.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zg, ptr align 1 %i.yz, i64 %i.za, i1 false)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %._crit_edge.i.i.i88.i.i
  %i.zi = load i64, ptr %i.c, align 8, !tbaa !111, !noalias !1158 ; 2 uses
  store i64 %i.zi, ptr %i.xt, align 8, !tbaa !25, !alias.scope !1158
  %i.zj = load ptr, ptr %6, align 8, !tbaa !31, !alias.scope !1158
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zi
  store i8 0, ptr %i.zk, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !1158
  %i.zl = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.xn
  br i1 %i.zm, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i.i: ; preds = %bb.ft
  %i.zn = load i64, ptr %i.xn, align 8, !tbaa !27
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zo) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i.i: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.zp = trunc nuw nsw i64 %indvars.iv.i78.i to i32 ; 2 uses
  %i.zq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 256, ptr noundef nonnull @.str.311, i32 noundef %i.zp, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.zr = load i64, ptr %i.xt, align 8, !tbaa !25, !noalias !1161 ; 3 uses
  %i.zs = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.g) #24, !noalias !1161
  %i.zt = icmp eq i64 %i.zr, %i.zs
  br i1 %i.zt, label %bb.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i.i

bb.fu:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i.i
  %i.zu = icmp eq i64 %i.zr, 0
  br i1 %i.zu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i.i: ; preds = %bb.fu
  %i.zv = load ptr, ptr %6, align 8, !tbaa !31, !noalias !1161
  %bcmp.i.i.i.i99.i.i = call i32 @bcmp(ptr %i.zv, ptr nonnull align 1 dereferenceable(256) %i.g, i64 %i.zr), !noalias !1161
  %i.zw = icmp eq i32 %bcmp.i.i.i.i99.i.i, 0
  br i1 %i.zw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i.i, %bb.fu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i.i unwind label %bb.fw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i.i unwind label %bb.fw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i.i
  %i.zx = load i8, ptr %8, align 8, !tbaa !37, !range !47, !noundef !48
  %i.zy = trunc nuw i8 %i.zx to i1
  br i1 %i.zy, label %bb.gj, label %bb.fx

.loopexit31.i79.i:                                ; preds = %.noexc.i.i89.i.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i.i
  %lpad.loopexit33.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.loopexit.split-lp32.i.i:                         ; preds = %.noexc.i90.i.i
  %lpad.loopexit.split-lp34.i.i = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_18CheckAllEm:bb.a
          cleanup
  br label %bb.gl

bb.fx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.fy unwind label %bb.gc

bb.fy:                                            ; preds = %bb.fx
  %i.aae = load ptr, ptr %9, align 8, !tbaa !50
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaf, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i: ; preds = %bb.fy
  %i.aah = load ptr, ptr %9, align 8, !tbaa !50
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, i32 noundef %i.s)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i:    ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i
  %i.aak = load ptr, ptr %9, align 8, !tbaa !50
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aal, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i84.i unwind label %bb.gd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i84.i: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i
  %i.aan = load ptr, ptr %9, align 8, !tbaa !50
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aao, ptr noundef nonnull @.str.311, i64 noundef 4)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i85.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i85.i:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i84.i
  %i.aaq = load ptr, ptr %9, align 8, !tbaa !50
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i85.i
  %i.aat = load ptr, ptr %9, align 8, !tbaa !50
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aau, i32 noundef %i.zp)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i unwind label %bb.ge ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i:    ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.aaw = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 2 uses
  %.not.i.i118.i86.i = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i118.i86.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i, label %bb.fz

bb.fz:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i: ; preds = %bb.fz, %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i
  %i.aay = phi ptr [ %i.aax, %bb.fz ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.aay)
          to label %bb.ga unwind label %bb.gf

bb.ga:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.gb unwind label %bb.gg

bb.gb:                                            ; preds = %bb.ga
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.aaz = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i120.i.i = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i120.i.i, label %_ZN7testing7MessageD2Ev.exit122.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121.i.i: ; preds = %bb.gb
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !9
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8
  call void %i.abc(ptr noundef nonnull align 8 dereferenceable(128) %i.aaz) #24, !inline_history !1157
  br label %_ZN7testing7MessageD2Ev.exit122.i.i

_ZN7testing7MessageD2Ev.exit122.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121.i.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.gj

bb.gc:                                            ; preds = %bb.fx
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit125.i.i

bb.gd:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i85.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i84.i, %_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i, %bb.fy
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.ge:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ga
  %i.abh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pn43.i87.i = phi { ptr, i32 } [ %i.abh, %bb.gg ], [ %i.abg, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ge, %bb.gd
  %.pn43.pn.pn.i83.i = phi { ptr, i32 } [ %i.abe, %bb.gd ], [ %.pn43.i87.i, %bb.gh ], [ %i.abf, %bb.ge ] ; 2 uses
  %i.abi = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i123.i.i = icmp eq ptr %i.abi, null
  br i1 %.not.i.i123.i.i, label %_ZN7testing7MessageD2Ev.exit125.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i: ; preds = %bb.gi
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !9
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8
  call void %i.abl(ptr noundef nonnull align 8 dereferenceable(128) %i.abi) #24, !inline_history !1157
  br label %_ZN7testing7MessageD2Ev.exit125.i.i

_ZN7testing7MessageD2Ev.exit125.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i, %bb.gi, %bb.gc
  %.pn43.pn.pn.pn.i82.i = phi { ptr, i32 } [ %i.abd, %bb.gc ], [ %.pn43.pn.pn.i83.i, %bb.gi ], [ %.pn43.pn.pn.i83.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  br label %bb.gl

bb.gj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit122.i.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i.i
  %i.abm = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 4 uses
  %.not.i.i126.i.i = icmp eq ptr %i.abm, null
  br i1 %.not.i.i126.i.i, label %_ZN7testing15AssertionResultD2Ev.exit130.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !31 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 16 ; 2 uses
  %i.abp = icmp eq ptr %i.abn, %i.abo
  br i1 %i.abp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127.i.i: ; preds = %bb.gk
  %i.abq = load i64, ptr %i.abo, align 8, !tbaa !27
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abr) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit130.i.i

_ZN7testing15AssertionResultD2Ev.exit130.i.i:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.abs = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.xs
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit130.i.i
  %i.abu = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i89.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit130.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %indvars.iv.next.i90.i = add nuw nsw i64 %indvars.iv.i78.i, 1 ; 2 uses
  %exitcond.not.i91.i = icmp eq i64 %indvars.iv.next.i90.i, 21
  br i1 %exitcond.not.i91.i, label %.preheader.i92.i, label %bb.fl, !llvm.loop !1166

bb.gl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit125.i.i, %bb.fw
  %.pn43.pn.pn.pn.pn.i81.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i82.i, %_ZN7testing7MessageD2Ev.exit125.i.i ], [ %i.aad, %bb.fw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.abw = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.xs
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i: ; preds = %bb.gl
  %i.aby = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i.i
  %.pn43.pn.pn.pn.pn.pn.i80.i = phi { ptr, i32 } [ %lpad.phi35.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i.i ], [ %.pn43.pn.pn.pn.pn.i81.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i ], [ %.pn43.pn.pn.pn.pn.i81.i, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.hn

bb.gm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i111.i
  %i.aca = load ptr, ptr %1, align 8, !tbaa !31   ; 2 uses
  %i.acb = icmp eq ptr %i.aca, %i.vf
  br i1 %i.acb, label %_ZN12_GLOBAL__N_113CheckHexDec32Ej.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i.i: ; preds = %bb.gm
  %i.acc = load i64, ptr %i.vf, align 8, !tbaa !27
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.acd) #26
  br label %_ZN12_GLOBAL__N_113CheckHexDec32Ej.exit

bb.gn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i111.i, %.preheader.i92.i
  %indvars.iv159.i = phi i64 [ 66, %.preheader.i92.i ], [ %indvars.iv.next160.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i111.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ace = add nuw nsw i64 %indvars.iv159.i, 192
  %i.acf = and i64 %i.ace, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, i8 0, i64 16, i1 false)
  store ptr %i.xv, ptr %12, align 8, !tbaa !22
  store i64 0, ptr %i.xw, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.acg = sub nsw i64 0, %i.acf
  %i.ach = getelementptr inbounds i8, ptr %i.xx, i64 %i.acg
  br i1 %i.uc, label %.lr.ph.i.i.i154.i.i, label %._crit_edge.i.i.i144.i.i

.lr.ph.i.i.i154.i.i:                              ; preds = %bb.gn, %.lr.ph.i.i.i154.i.i
  %.02533.i.i.i155.i.i = phi ptr [ %i.acl, %.lr.ph.i.i.i154.i.i ], [ %i.xx, %bb.gn ]
  %.02632.i.i.i156.i.i = phi i64 [ %i.acm, %.lr.ph.i.i.i154.i.i ], [ %i.tv, %bb.gn ] ; 3 uses
  %i.aci = urem i64 %.02632.i.i.i156.i.i, 10
  %i.acj = trunc nuw nsw i64 %i.aci to i8
  %i.ack = or disjoint i8 %i.acj, 48
  %i.acl = getelementptr inbounds i8, ptr %.02533.i.i.i155.i.i, i64 -1 ; 3 uses
  store i8 %i.ack, ptr %i.acl, align 1, !tbaa !27
  %i.acm = udiv i64 %.02632.i.i.i156.i.i, 10      ; 2 uses
  %i.acn = icmp samesign ugt i64 %.02632.i.i.i156.i.i, 99
  br i1 %i.acn, label %.lr.ph.i.i.i154.i.i, label %._crit_edge.i.i.i144.i.i, !llvm.loop !1121

._crit_edge.i.i.i144.i.i:                         ; preds = %.lr.ph.i.i.i154.i.i, %bb.gn
  %.026.lcssa.i.i.i145.i.i = phi i64 [ %i.tv, %bb.gn ], [ %i.acm, %.lr.ph.i.i.i154.i.i ]
  %.025.lcssa.i.i.i146.i.i = phi ptr [ %i.xx, %bb.gn ], [ %i.acl, %.lr.ph.i.i.i154.i.i ] ; 2 uses
  %i.aco = trunc nuw nsw i64 %.026.lcssa.i.i.i145.i.i to i8
  %i.acp = or disjoint i8 %i.aco, 48
  %i.acq = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i146.i.i, i64 -1 ; 2 uses
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !27
  br i1 %.not.not.i.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %._crit_edge.i.i.i144.i.i
  %i.acr = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i146.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.acr, align 1, !tbaa !27
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %._crit_edge.i.i.i144.i.i
  %.1.i.i.i147.i.i = phi ptr [ %i.acr, %bb.go ], [ %i.acq, %._crit_edge.i.i.i144.i.i ] ; 3 uses
  %i.acs = ptrtoint ptr %.1.i.i.i147.i.i to i64   ; 2 uses
  %i.act = ptrtoint ptr %i.ach to i64
  %i.acu = sub i64 %i.acs, %i.act                 ; 3 uses
  %i.acv = icmp sgt i64 %i.acu, 0
  br i1 %i.acv, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i: ; preds = %bb.gp
  %i.acw = sub nsw i64 0, %i.acu
  %i.acx = getelementptr inbounds i8, ptr %.1.i.i.i147.i.i, i64 %i.acw ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.acx, i8 32, i64 %i.acu, i1 false)
  %.pre.i = ptrtoint ptr %i.acx to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i, %bb.gp
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i ], [ %i.acs, %bb.gp ]
  %.4.i.i.i149.i.i = phi ptr [ %i.acx, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i ], [ %.1.i.i.i147.i.i, %bb.gp ]
  %i.acy = sub i64 %i.xy, %.pre-phi.i
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.acy, ptr nonnull %.4.i.i.i149.i.i)
          to label %bb.gq unwind label %.loopexit.i95.i

bb.gq:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.acz = load ptr, ptr %12, align 8, !tbaa !31  ; 3 uses
  %i.ada = load i64, ptr %i.xw, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  store ptr %i.xz, ptr %11, align 8, !tbaa !22, !alias.scope !1167
  %i.adb = icmp eq ptr %i.acz, null
  %i.adc = icmp ne i64 %i.ada, 0
  %or.cond.i.i159.i.i = and i1 %i.adb, %i.adc
  br i1 %or.cond.i.i159.i.i, label %.noexc.i162.i.i, label %bb.gr

.noexc.i162.i.i:                                  ; preds = %bb.gq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc163.i.i unwind label %.loopexit.split-lp.i113.i

.noexc163.i.i:                                    ; preds = %.noexc.i162.i.i
  unreachable

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1167
  store i64 %i.ada, ptr %i.a, align 8, !tbaa !111, !noalias !1167
  %i.add = icmp ugt i64 %i.ada, 15
  br i1 %i.add, label %.noexc.i.i161.i.i, label %._crit_edge.i.i.i160.i.i

.noexc.i.i161.i.i:                                ; preds = %bb.gr
  %i.ade = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc164.i.i unwind label %.loopexit.i95.i ; 2 uses

.noexc164.i.i:                                    ; preds = %.noexc.i.i161.i.i
  store ptr %i.ade, ptr %11, align 8, !tbaa !31, !alias.scope !1167
  %i.adf = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1167
  store i64 %i.adf, ptr %i.xz, align 8, !tbaa !27, !alias.scope !1167
  br label %._crit_edge.i.i.i160.i.i

._crit_edge.i.i.i160.i.i:                         ; preds = %.noexc164.i.i, %bb.gr
  %i.adg = phi ptr [ %i.ade, %.noexc164.i.i ], [ %i.xz, %bb.gr ] ; 2 uses
  switch i64 %i.ada, label %bb.gt [
    i64 1, label %bb.gs
    i64 0, label %bb.gu
  ]

bb.gs:                                            ; preds = %._crit_edge.i.i.i160.i.i
  %i.adh = load i8, ptr %i.acz, align 1, !tbaa !27
  store i8 %i.adh, ptr %i.adg, align 1, !tbaa !27
  br label %bb.gu

bb.gt:                                            ; preds = %._crit_edge.i.i.i160.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adg, ptr align 1 %i.acz, i64 %i.ada, i1 false)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %._crit_edge.i.i.i160.i.i
  %i.adi = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1167 ; 2 uses
  store i64 %i.adi, ptr %i.ya, align 8, !tbaa !25, !alias.scope !1167
  %i.adj = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1167
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adi
  store i8 0, ptr %i.adk, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1167
  %i.adl = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.adm = icmp eq ptr %i.adl, %i.xv
  br i1 %i.adm, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i.i: ; preds = %bb.gu
  %i.adn = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.ado) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.adp = trunc i64 %indvars.iv159.i to i32
  %i.adq = add i32 %i.adp, -64                    ; 2 uses
  %i.adr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 256, ptr noundef nonnull @.str.312, i32 noundef %i.adq, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ads = load i64, ptr %i.ya, align 8, !tbaa !25, !noalias !1170 ; 3 uses
  %i.adt = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.g) #24, !noalias !1170
  %i.adu = icmp eq i64 %i.ads, %i.adt
  br i1 %i.adu, label %bb.gv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i

bb.gv:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i
  %i.adv = icmp eq i64 %i.ads, 0
  br i1 %i.adv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i: ; preds = %bb.gv
  %i.adw = load ptr, ptr %11, align 8, !tbaa !31, !noalias !1170
  %bcmp.i.i.i.i171.i.i = call i32 @bcmp(ptr %i.adw, ptr nonnull align 1 dereferenceable(256) %i.g, i64 %i.ads), !noalias !1170
  %i.adx = icmp eq i32 %bcmp.i.i.i.i171.i.i, 0
  br i1 %i.adx, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i, %bb.gv
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i unwind label %bb.gx

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i unwind label %bb.gx

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i
  %i.ady = load i8, ptr %13, align 8, !tbaa !37, !range !47, !noundef !48
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %bb.hk, label %bb.gy

.loopexit.i95.i:                                  ; preds = %.noexc.i.i161.i.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i
  %lpad.loopexit.i96.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

.loopexit.split-lp.i113.i:                        ; preds = %.noexc.i162.i.i
  %lpad.loopexit.split-lp.i114.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gw:                                            ; preds = %.loopexit.split-lp.i113.i, %.loopexit.i95.i
  %lpad.phi.i97.i = phi { ptr, i32 } [ %lpad.loopexit.i96.i, %.loopexit.i95.i ], [ %lpad.loopexit.split-lp.i114.i, %.loopexit.split-lp.i113.i ]
  %i.aea = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.xv
  br i1 %i.aeb, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit178.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i: ; preds = %bb.gw
  %i.aec = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit178.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit178.i.i: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i98.i

bb.gx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.gy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.gz unwind label %bb.hd

bb.gz:                                            ; preds = %bb.gy
  %i.aef = load ptr, ptr %14, align 8, !tbaa !50
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeg, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit180.i.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit180.i.i: ; preds = %bb.gz
  %i.aei = load ptr, ptr %14, align 8, !tbaa !50
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  %i.aek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aej, i32 noundef %i.s)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit182.i.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit182.i.i:    ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit180.i.i
  %i.ael = load ptr, ptr %14, align 8, !tbaa !50
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.aen = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aem, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i185.i.i unwind label %bb.he ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i185.i.i: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit182.i.i
  %i.aeo = load ptr, ptr %14, align 8, !tbaa !50
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aep, ptr noundef nonnull @.str.312, i64 noundef 3)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit188.i.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit188.i.i:  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i185.i.i
  %i.aer = load ptr, ptr %14, align 8, !tbaa !50
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %i.aet = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aes, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit190.i.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit190.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit188.i.i
  %i.aeu = load ptr, ptr %14, align 8, !tbaa !50
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, i32 noundef %i.adq)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit192.i.i unwind label %bb.hf ; 0 uses
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a

.loopexit20.i:                                    ; preds = %.noexc.i.i74.i, %bb.x
  %lpad.loopexit22.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp21.i:                           ; preds = %.noexc.i75.i
  %lpad.loopexit.split-lp23.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp21.i, %.loopexit20.i
  %lpad.phi24.i = phi { ptr, i32 } [ %lpad.loopexit22.i, %.loopexit20.i ], [ %lpad.loopexit.split-lp23.i, %.loopexit.split-lp21.i ]
  %i.ds = load ptr, ptr %52, align 8, !tbaa !31   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ci
  br i1 %i.dt, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i: ; preds = %bb.ae
  %i.du = load i64, ptr %i.ci, align 8, !tbaa !27
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i82.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i85.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit88.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr %54, align 8, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i:   ; preds = %bb.ah
  %i.ea = load ptr, ptr %54, align 8, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i:       ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  %i.ed = load ptr, ptr %i.cm, align 8, !tbaa !49 ; 2 uses
  %.not.i.i96.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i96.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i

_ZNK7testing15AssertionResult15failure_messageEv.exit97.i: ; preds = %bb.ai, %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i
  %i.ef = phi ptr [ %i.ee, %bb.ai ], [ @.str.57, %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %55, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef %i.ef)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  %i.eg = load ptr, ptr %54, align 8, !tbaa !50   ; 3 uses
  %.not.i.i98.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i98.i, label %_ZN7testing7MessageD2Ev.exit100.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99.i: ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !9
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #24, !inline_history !1184
  br label %_ZN7testing7MessageD2Ev.exit100.i

_ZN7testing7MessageD2Ev.exit100.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %bb.ar

bb.al:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit103.i

bb.am:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i, %bb.ah
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn46.i = phi { ptr, i32 } [ %i.en, %bb.ao ], [ %i.em, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn46.pn.i = phi { ptr, i32 } [ %.pn46.i, %bb.ap ], [ %i.el, %bb.am ] ; 2 uses
  %i.eo = load ptr, ptr %54, align 8, !tbaa !50   ; 3 uses
  %.not.i.i101.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i101.i, label %_ZN7testing7MessageD2Ev.exit103.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i: ; preds = %bb.aq
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #24, !inline_history !1184
  br label %_ZN7testing7MessageD2Ev.exit103.i

_ZN7testing7MessageD2Ev.exit103.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i, %bb.aq, %bb.al
  %.pn46.pn.pn.i = phi { ptr, i32 } [ %i.ek, %bb.al ], [ %.pn46.pn.i, %bb.aq ], [ %.pn46.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #24
  br label %bb.at

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit100.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit88.i
  %i.es = load ptr, ptr %i.cm, align 8, !tbaa !49 ; 4 uses
  %.not.i.i104.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i104.i, label %_ZN7testing15AssertionResultD2Ev.exit108.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !31 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105.i: ; preds = %bb.as
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !27
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105.i
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit108.i

_ZN7testing15AssertionResultD2Ev.exit108.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  %i.ey = load ptr, ptr %51, align 8, !tbaa !31   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ck
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit108.i
  %i.fa = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 21
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.x, !llvm.loop !1193

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit103.i, %bb.af
  %.pn46.pn.pn.pn.i = phi { ptr, i32 } [ %.pn46.pn.pn.i, %_ZN7testing7MessageD2Ev.exit103.i ], [ %i.dw, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  %i.fc = load ptr, ptr %51, align 8, !tbaa !31   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ck
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i: ; preds = %bb.at
  %i.fe = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i
  %.pn46.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn46.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i ], [ %lpad.phi24.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i ], [ %.pn46.pn.pn.pn.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  br label %bb.bs

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i
  %i.fg = load ptr, ptr %46, align 8, !tbaa !31   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.aa
  br i1 %i.fh, label %_ZN12_GLOBAL__N_18CheckHexIyEEvT_PKcS3_S3_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %bb.au
  %i.fi = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #26
  br label %_ZN12_GLOBAL__N_18CheckHexIyEEvT_PKcS3_S3_.exit

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i, %.preheader.i
  %indvars.iv = phi i64 [ 66, %.preheader.i ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  %i.fk = add nuw nsw i64 %indvars.iv, 192
  %i.fl = and i64 %i.fk, 255
  %.sroa.5.9.insert.insert.i = or disjoint i64 %i.fl, 8192
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  store ptr %i.cn, ptr %57, align 8, !tbaa !22
  store i64 0, ptr %i.co, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2026052613AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %57, i64 %0, i64 %.sroa.5.9.insert.insert.i)
          to label %bb.aw unwind label %.loopexit.i

bb.aw:                                            ; preds = %bb.av
  %i.fm = load ptr, ptr %57, align 8, !tbaa !31   ; 3 uses
  %i.fn = load i64, ptr %i.co, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  store ptr %i.cp, ptr %56, align 8, !tbaa !22, !alias.scope !1194
  %i.fo = icmp eq ptr %i.fm, null
  %i.fp = icmp ne i64 %i.fn, 0
  %or.cond.i.i121.i = and i1 %i.fo, %i.fp
  br i1 %or.cond.i.i121.i, label %.noexc.i124.i, label %bb.ax

.noexc.i124.i:                                    ; preds = %bb.aw
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc125.i unwind label %.loopexit.split-lp.i

.noexc125.i:                                      ; preds = %.noexc.i124.i
  unreachable

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #24, !noalias !1194
  store i64 %i.fn, ptr %i.s, align 8, !tbaa !111, !noalias !1194
  %i.fq = icmp ugt i64 %i.fn, 15
  br i1 %i.fq, label %.noexc.i.i123.i, label %._crit_edge.i.i.i122.i

.noexc.i.i123.i:                                  ; preds = %bb.ax
  %i.fr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc126.i unwind label %.loopexit.i ; 2 uses

.noexc126.i:                                      ; preds = %.noexc.i.i123.i
  store ptr %i.fr, ptr %56, align 8, !tbaa !31, !alias.scope !1194
  %i.fs = load i64, ptr %i.s, align 8, !tbaa !111, !noalias !1194
  store i64 %i.fs, ptr %i.cp, align 8, !tbaa !27, !alias.scope !1194
  br label %._crit_edge.i.i.i122.i

._crit_edge.i.i.i122.i:                           ; preds = %.noexc126.i, %bb.ax
  %i.ft = phi ptr [ %i.fr, %.noexc126.i ], [ %i.cp, %bb.ax ] ; 2 uses
  switch i64 %i.fn, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i122.i
  %i.fu = load i8, ptr %i.fm, align 1, !tbaa !27
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !27
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i.i122.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 1 %i.fm, i64 %i.fn, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i122.i
  %i.fv = load i64, ptr %i.s, align 8, !tbaa !111, !noalias !1194 ; 2 uses
  store i64 %i.fv, ptr %i.cq, align 8, !tbaa !25, !alias.scope !1194
  %i.fw = load ptr, ptr %56, align 8, !tbaa !31, !alias.scope !1194
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #24, !noalias !1194
  %i.fy = load ptr, ptr %57, align 8, !tbaa !31   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.cn
  br i1 %i.fz, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i: ; preds = %bb.ba
  %i.ga = load i64, ptr %i.cn, align 8, !tbaa !27
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  %i.gc = trunc i64 %indvars.iv to i32
  %i.gd = add i32 %i.gc, -64
  %i.ge = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 256, ptr noundef nonnull @.str.292, i32 noundef %i.gd, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  %i.gf = load i64, ptr %i.cq, align 8, !tbaa !25, !noalias !1197 ; 3 uses
  %i.gg = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.v) #24, !noalias !1197
  %i.gh = icmp eq i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i

bb.bb:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i
  %i.gi = icmp eq i64 %i.gf, 0
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i: ; preds = %bb.bb
  %i.gj = load ptr, ptr %56, align 8, !tbaa !31, !noalias !1197
  %bcmp.i.i.i.i133.i = call i32 @bcmp(ptr %i.gj, ptr nonnull align 1 dereferenceable(256) %i.v, i64 %i.gf), !noalias !1197
  %i.gk = icmp eq i32 %bcmp.i.i.i.i133.i, 0
  br i1 %i.gk, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i, %bb.bb
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i unwind label %bb.bd

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i unwind label %bb.bd

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i
  %i.gl = load i8, ptr %58, align 8, !tbaa !37, !range !47, !noundef !48
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.bp, label %bb.be

.loopexit.i:                                      ; preds = %.noexc.i.i123.i, %bb.av
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp.i:                             ; preds = %.noexc.i124.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gn = load ptr, ptr %57, align 8, !tbaa !31   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.cn
  br i1 %i.go, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138.i: ; preds = %bb.bc
  %i.gp = load i64, ptr %i.cn, align 8, !tbaa !27
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.be:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.gs = load ptr, ptr %59, align 8, !tbaa !50
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit142.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit142.i:  ; preds = %bb.bf
  %i.gv = load ptr, ptr %59, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i:      ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit142.i
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  %i.gy = load ptr, ptr %i.cr, align 8, !tbaa !49 ; 2 uses
  %.not.i.i145.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i145.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146.i

_ZNK7testing15AssertionResult15failure_messageEv.exit146.i: ; preds = %bb.bg, %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i
  %i.ha = phi ptr [ %i.gz, %bb.bg ], [ @.str.57, %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 548, ptr noundef %i.ha)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  %i.hb = load ptr, ptr %59, align 8, !tbaa !50   ; 3 uses
  %.not.i.i147.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i147.i, label %_ZN7testing7MessageD2Ev.exit149.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148.i: ; preds = %bb.bi
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(128) %i.hb) #24, !inline_history !1184
  br label %_ZN7testing7MessageD2Ev.exit149.i

_ZN7testing7MessageD2Ev.exit149.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.bp

bb.bj:                                            ; preds = %bb.be
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152.i
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a
          cleanup
  br label %bb.dm

bb.cy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.nw = load ptr, ptr %39, align 8, !tbaa !50
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i:  ; preds = %bb.cz
  %i.nz = load ptr, ptr %39, align 8, !tbaa !50
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i:      ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i
  %i.oc = load ptr, ptr %39, align 8, !tbaa !50
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i
  %i.of = load ptr, ptr %39, align 8, !tbaa !50
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.og, ptr noundef nonnull @.str.294, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.oi = load ptr, ptr %39, align 8, !tbaa !50
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i:  ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.ol = load ptr, ptr %39, align 8, !tbaa !50
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.om, i32 noundef %i.nh)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.df ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.oo = load ptr, ptr %i.lr, align 8, !tbaa !49 ; 2 uses
  %.not.i.i116.i = icmp eq ptr %i.oo, null
  br i1 %.not.i.i116.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i, label %bb.da

bb.da:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i

_ZNK7testing15AssertionResult15failure_messageEv.exit117.i: ; preds = %bb.da, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.oq = phi ptr [ %i.op, %bb.da ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.oq)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %i.or = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i118.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i118.i, label %_ZN7testing7MessageD2Ev.exit120.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i: ; preds = %bb.dc
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(128) %i.or) #24, !inline_history !1211
  br label %_ZN7testing7MessageD2Ev.exit120.i

_ZN7testing7MessageD2Ev.exit120.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.dk

bb.dd:                                            ; preds = %bb.cy
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit123.i

bb.de:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i, %bb.cz
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.df:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.db
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn43.i = phi { ptr, i32 } [ %i.oz, %bb.dh ], [ %i.oy, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.df, %bb.de
  %.pn43.pn.pn.i = phi { ptr, i32 } [ %i.ow, %bb.de ], [ %.pn43.i, %bb.di ], [ %i.ox, %bb.df ] ; 2 uses
  %i.pa = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i121.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i121.i, label %_ZN7testing7MessageD2Ev.exit123.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i: ; preds = %bb.dj
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !9
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(128) %i.pa) #24, !inline_history !1211
  br label %_ZN7testing7MessageD2Ev.exit123.i

_ZN7testing7MessageD2Ev.exit123.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i, %bb.dj, %bb.dd
  %.pn43.pn.pn.pn.i = phi { ptr, i32 } [ %i.ov, %bb.dd ], [ %.pn43.pn.pn.i, %bb.dj ], [ %.pn43.pn.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #24
  br label %bb.dm

bb.dk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit102.i
  %i.pe = load ptr, ptr %i.lr, align 8, !tbaa !49 ; 4 uses
  %.not.i.i124.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i124.i, label %_ZN7testing15AssertionResultD2Ev.exit128.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !31 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i: ; preds = %bb.dl
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !27
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit128.i

_ZN7testing15AssertionResultD2Ev.exit128.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.pk = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.lp
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i
  %i.pm = load i64, ptr %i.lp, align 8, !tbaa !27
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 21
  br i1 %exitcond.not.i30, label %.preheader.i31, label %bb.cp, !llvm.loop !1220

bb.dm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit123.i, %bb.cx
  %.pn43.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit123.i ], [ %i.nv, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.po = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.lp
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i: ; preds = %bb.dm
  %i.pq = load i64, ptr %i.lp, align 8, !tbaa !27
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i
  %.pn43.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.phi37.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i ], [ %.pn43.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i ], [ %.pn43.pn.pn.pn.pn.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.em

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i
  %i.ps = load ptr, ptr %31, align 8, !tbaa !31   ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.jd
  br i1 %i.pt, label %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i: ; preds = %bb.dn
  %i.pu = load i64, ptr %i.jd, align 8, !tbaa !27
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #26
  br label %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, %.preheader.i31
  %indvars.iv215 = phi i64 [ 66, %.preheader.i31 ], [ %indvars.iv.next216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.pw = add nuw nsw i64 %indvars.iv215, 192
  %i.px = and i64 %i.pw, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, i8 0, i64 16, i1 false)
  store ptr %i.ls, ptr %42, align 8, !tbaa !22
  store i64 0, ptr %i.lt, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  %i.py = sub nsw i64 0, %i.px
  %i.pz = getelementptr inbounds i8, ptr %i.lu, i64 %i.py
  br i1 %i.ij, label %.lr.ph.i.i.i151.i, label %.loopexit.i34

.lr.ph.i.i.i151.i:                                ; preds = %bb.do, %.lr.ph.i.i.i151.i
  %.02533.i.i.i152.i = phi ptr [ %i.qd, %.lr.ph.i.i.i151.i ], [ %i.lu, %bb.do ]
  %.02632.i.i.i153.i = phi i64 [ %i.qe, %.lr.ph.i.i.i151.i ], [ %0, %bb.do ] ; 3 uses
  %i.qa = urem i64 %.02632.i.i.i153.i, 10
  %i.qb = trunc nuw nsw i64 %i.qa to i8
  %i.qc = or disjoint i8 %i.qb, 48
  %i.qd = getelementptr inbounds i8, ptr %.02533.i.i.i152.i, i64 -1 ; 3 uses
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !27
  %i.qe = udiv i64 %.02632.i.i.i153.i, 10         ; 2 uses
  %i.qf = icmp ugt i64 %.02632.i.i.i153.i, 99
  br i1 %i.qf, label %.lr.ph.i.i.i151.i, label %.loopexit.i34, !llvm.loop !1121

.loopexit.i34:                                    ; preds = %.lr.ph.i.i.i151.i, %bb.do
  %.026.lcssa.i.i.i142.i = phi i64 [ %0, %bb.do ], [ %i.qe, %.lr.ph.i.i.i151.i ]
  %.025.lcssa.i.i.i143.i = phi ptr [ %i.lu, %bb.do ], [ %i.qd, %.lr.ph.i.i.i151.i ]
  %i.qg = trunc nuw nsw i64 %.026.lcssa.i.i.i142.i to i8
  %i.qh = or disjoint i8 %i.qg, 48
  %i.qi = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i143.i, i64 -1 ; 4 uses
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !27
  %i.qj = ptrtoint ptr %i.qi to i64               ; 2 uses
  %i.qk = ptrtoint ptr %i.pz to i64
  %i.ql = sub i64 %i.qj, %i.qk                    ; 3 uses
  %i.qm = icmp sgt i64 %i.ql, 0
  br i1 %i.qm, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i:   ; preds = %.loopexit.i34
  %i.qn = sub nsw i64 0, %i.ql
  %i.qo = getelementptr inbounds i8, ptr %i.qi, i64 %i.qn ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qo, i8 32, i64 %i.ql, i1 false)
  %.pre115.i = ptrtoint ptr %i.qo to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i, %.loopexit.i34
  %.pre-phi116.i = phi i64 [ %.pre115.i, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i ], [ %i.qj, %.loopexit.i34 ]
  %.4.i.i.i146.i = phi ptr [ %i.qo, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i ], [ %i.qi, %.loopexit.i34 ]
  %i.qp = sub i64 %i.lv, %.pre-phi116.i
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 %i.qp, ptr nonnull %.4.i.i.i146.i)
          to label %bb.dp unwind label %.loopexit31.i

bb.dp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  %i.qq = load ptr, ptr %42, align 8, !tbaa !31   ; 3 uses
  %i.qr = load i64, ptr %i.lt, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  store ptr %i.lw, ptr %41, align 8, !tbaa !22, !alias.scope !1221
  %i.qs = icmp eq ptr %i.qq, null
  %i.qt = icmp ne i64 %i.qr, 0
  %or.cond.i.i156.i = and i1 %i.qs, %i.qt
  br i1 %or.cond.i.i156.i, label %.noexc.i159.i, label %bb.dq

.noexc.i159.i:                                    ; preds = %bb.dp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc160.i unwind label %.loopexit.split-lp.i37

.noexc160.i:                                      ; preds = %.noexc.i159.i
  unreachable

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24, !noalias !1221
  store i64 %i.qr, ptr %i.l, align 8, !tbaa !111, !noalias !1221
  %i.qu = icmp ugt i64 %i.qr, 15
  br i1 %i.qu, label %.noexc.i.i158.i, label %._crit_edge.i.i.i157.i

.noexc.i.i158.i:                                  ; preds = %bb.dq
  %i.qv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc161.i unwind label %.loopexit31.i ; 2 uses

.noexc161.i:                                      ; preds = %.noexc.i.i158.i
  store ptr %i.qv, ptr %41, align 8, !tbaa !31, !alias.scope !1221
  %i.qw = load i64, ptr %i.l, align 8, !tbaa !111, !noalias !1221
  store i64 %i.qw, ptr %i.lw, align 8, !tbaa !27, !alias.scope !1221
  br label %._crit_edge.i.i.i157.i

._crit_edge.i.i.i157.i:                           ; preds = %.noexc161.i, %bb.dq
  %i.qx = phi ptr [ %i.qv, %.noexc161.i ], [ %i.lw, %bb.dq ] ; 2 uses
  switch i64 %i.qr, label %bb.ds [
    i64 1, label %bb.dr
    i64 0, label %bb.dt
  ]

bb.dr:                                            ; preds = %._crit_edge.i.i.i157.i
  %i.qy = load i8, ptr %i.qq, align 1, !tbaa !27
  store i8 %i.qy, ptr %i.qx, align 1, !tbaa !27
  br label %bb.dt

bb.ds:                                            ; preds = %._crit_edge.i.i.i157.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qx, ptr align 1 %i.qq, i64 %i.qr, i1 false)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge.i.i.i157.i
  %i.qz = load i64, ptr %i.l, align 8, !tbaa !111, !noalias !1221 ; 2 uses
  store i64 %i.qz, ptr %i.lx, align 8, !tbaa !25, !alias.scope !1221
  %i.ra = load ptr, ptr %41, align 8, !tbaa !31, !alias.scope !1221
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qz
  store i8 0, ptr %i.rb, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24, !noalias !1221
  %i.rc = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.ls
  br i1 %i.rd, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i: ; preds = %bb.dt
  %i.re = load i64, ptr %i.ls, align 8, !tbaa !27
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  %i.rg = trunc i64 %indvars.iv215 to i32
  %i.rh = add i32 %i.rg, -64                      ; 2 uses
  %i.ri = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 256, ptr noundef nonnull @.str.295, i32 noundef %i.rh, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.rj = load i64, ptr %i.lx, align 8, !tbaa !25, !noalias !1224 ; 3 uses
  %i.rk = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.r) #24, !noalias !1224
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.du, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i

bb.du:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i
  %i.rm = icmp eq i64 %i.rj, 0
  br i1 %i.rm, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i: ; preds = %bb.du
  %i.rn = load ptr, ptr %41, align 8, !tbaa !31, !noalias !1224
  %bcmp.i.i.i.i168.i = call i32 @bcmp(ptr %i.rn, ptr nonnull align 1 dereferenceable(256) %i.r, i64 %i.rj), !noalias !1224
  %i.ro = icmp eq i32 %bcmp.i.i.i.i168.i, 0
  br i1 %i.ro, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i, %bb.du
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i unwind label %bb.dw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i unwind label %bb.dw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i
  %i.rp = load i8, ptr %43, align 8, !tbaa !37, !range !47, !noundef !48
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.ej, label %bb.dx

.loopexit31.i:                                    ; preds = %.noexc.i.i158.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i
  %lpad.loopexit.i35 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.loopexit.split-lp.i37:                           ; preds = %.noexc.i159.i
  %lpad.loopexit.split-lp.i38 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.split-lp.i37, %.loopexit31.i
  %lpad.phi.i36 = phi { ptr, i32 } [ %lpad.loopexit.i35, %.loopexit31.i ], [ %lpad.loopexit.split-lp.i38, %.loopexit.split-lp.i37 ]
  %i.rr = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.ls
  br i1 %i.rs, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i: ; preds = %bb.dv
  %i.rt = load i64, ptr %i.ls, align 8, !tbaa !27
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i

bb.dw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.rw = load ptr, ptr %44, align 8, !tbaa !50
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rx, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i unwind label %bb.ed ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i:  ; preds = %bb.dy
  %i.rz = load ptr, ptr %44, align 8, !tbaa !50
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.sa, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit179.i unwind label %bb.ed ; 0 uses

end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.so = load ptr, ptr %i.ly, align 8, !tbaa !49 ; 2 uses
  %.not.i.i190.i = icmp eq ptr %i.so, null
  br i1 %.not.i.i190.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit189.i
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i

_ZNK7testing15AssertionResult15failure_messageEv.exit191.i: ; preds = %bb.dz, %_ZN7testing7MessagelsIiEERS0_RKT_.exit189.i
  %i.sq = phi ptr [ %i.sp, %bb.dz ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit189.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %45, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 576, ptr noundef %i.sq)
          to label %bb.ea unwind label %bb.ef

bb.ea:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.eb unwind label %bb.eg

bb.eb:                                            ; preds = %bb.ea
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  %i.sr = load ptr, ptr %44, align 8, !tbaa !50   ; 3 uses
  %.not.i.i192.i = icmp eq ptr %i.sr, null
  br i1 %.not.i.i192.i, label %_ZN7testing7MessageD2Ev.exit194.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193.i: ; preds = %bb.eb
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !9
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(128) %i.sr) #24, !inline_history !1211
  br label %_ZN7testing7MessageD2Ev.exit194.i

_ZN7testing7MessageD2Ev.exit194.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193.i, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %bb.ej

bb.ec:                                            ; preds = %bb.dx
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit197.i

bb.ed:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit185.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i182.i, %_ZN7testing7MessagelsIyEERS0_RKT_.exit179.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i, %bb.dy
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ee:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit187.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ef:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit191.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ea
  %i.sz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #24
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn36.i = phi { ptr, i32 } [ %i.sz, %bb.eg ], [ %i.sy, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ee, %bb.ed
  %.pn36.pn.pn.i = phi { ptr, i32 } [ %i.sw, %bb.ed ], [ %.pn36.i, %bb.eh ], [ %i.sx, %bb.ee ] ; 2 uses
  %i.ta = load ptr, ptr %44, align 8, !tbaa !50   ; 3 uses
  %.not.i.i195.i = icmp eq ptr %i.ta, null
  br i1 %.not.i.i195.i, label %_ZN7testing7MessageD2Ev.exit197.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i: ; preds = %bb.ei
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !9
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(128) %i.ta) #24, !inline_history !1211
  br label %_ZN7testing7MessageD2Ev.exit197.i

_ZN7testing7MessageD2Ev.exit197.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i, %bb.ei, %bb.ec
  %.pn36.pn.pn.pn.i = phi { ptr, i32 } [ %i.sv, %bb.ec ], [ %.pn36.pn.pn.i, %bb.ei ], [ %.pn36.pn.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %43) #24
  br label %bb.el

bb.ej:                                            ; preds = %_ZN7testing7MessageD2Ev.exit194.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i
  %i.te = load ptr, ptr %i.ly, align 8, !tbaa !49 ; 4 uses
  %.not.i.i198.i = icmp eq ptr %i.te, null
  br i1 %.not.i.i198.i, label %_ZN7testing15AssertionResultD2Ev.exit202.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !31 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 2 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199.i: ; preds = %bb.ek
  %i.ti = load i64, ptr %i.tg, align 8, !tbaa !27
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.tj) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199.i
  call void @_ZdlPvm(ptr noundef nonnull %i.te, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit202.i

_ZN7testing15AssertionResultD2Ev.exit202.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  %i.tk = load ptr, ptr %41, align 8, !tbaa !31   ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.lw
  br i1 %i.tl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit202.i
  %i.tm = load i64, ptr %i.lw, align 8, !tbaa !27
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit202.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next216, 85
  br i1 %exitcond112.not.i, label %bb.dn, label %bb.do, !llvm.loop !1229

bb.el:                                            ; preds = %_ZN7testing7MessageD2Ev.exit197.i, %bb.dw
  %.pn36.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit197.i ], [ %i.rv, %bb.dw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  %i.to = load ptr, ptr %41, align 8, !tbaa !31   ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.lw
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i: ; preds = %bb.el
  %i.tq = load i64, ptr %i.lw, align 8, !tbaa !27
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.tr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i
  %.pn36.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.phi.i36, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i ], [ %.pn36.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i ], [ %.pn36.pn.pn.pn.pn.i, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.em

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, %bb.co
  %.pn43.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i ], [ %.pn36.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i ], [ %.pn.pn.pn.pn.i11, %bb.co ] ; 2 uses
  %i.ts = load ptr, ptr %31, align 8, !tbaa !31   ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.jd
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i: ; preds = %bb.em
  %i.tu = load i64, ptr %i.jd, align 8, !tbaa !27
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i
  %.pn43.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.kc, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i ], [ %.pn43.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209.i ], [ %.pn43.pn.pn.pn.pn.pn.pn.i, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #24
  br label %common.resume

_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit:  ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.tw = call i64 @llvm.abs.i64(i64 %0, i1 false) ; 7 uses
  %i.tx = lshr i64 %0, 47
  %.sroa.510.10.insert.shift.i = and i64 %i.tx, 65536 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.ty = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, i8 0, i64 16, i1 false)
  store ptr %i.ty, ptr %17, align 8, !tbaa !22
  %i.tz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.tz, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  %i.ua = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.j, i64 31 ; 2 uses
  %i.uc = icmp ugt i64 %i.tw, 9                   ; 3 uses
  br i1 %i.uc, label %.lr.ph.i.i.i.i121, label %._crit_edge.i.i.i.i48

.lr.ph.i.i.i.i121:                                ; preds = %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit, %.lr.ph.i.i.i.i121
  %.02533.i.i.i.i122 = phi ptr [ %i.ug, %.lr.ph.i.i.i.i121 ], [ %i.ua, %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit ]
  %.02632.i.i.i.i123 = phi i64 [ %i.uh, %.lr.ph.i.i.i.i121 ], [ %i.tw, %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit ] ; 3 uses
  %i.ud = urem i64 %.02632.i.i.i.i123, 10
  %i.ue = trunc nuw nsw i64 %i.ud to i8
  %i.uf = or disjoint i8 %i.ue, 48
  %i.ug = getelementptr inbounds i8, ptr %.02533.i.i.i.i122, i64 -1 ; 3 uses
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !27
  %i.uh = udiv i64 %.02632.i.i.i.i123, 10         ; 2 uses
  %i.ui = icmp ugt i64 %.02632.i.i.i.i123, 99
  br i1 %i.ui, label %.lr.ph.i.i.i.i121, label %._crit_edge.i.i.i.i48, !llvm.loop !1121

._crit_edge.i.i.i.i48:                            ; preds = %.lr.ph.i.i.i.i121, %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit
  %.026.lcssa.i.i.i.i49 = phi i64 [ %i.tw, %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit ], [ %i.uh, %.lr.ph.i.i.i.i121 ]
  %.025.lcssa.i.i.i.i50 = phi ptr [ %i.ua, %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit ], [ %i.ug, %.lr.ph.i.i.i.i121 ] ; 2 uses
  %i.uj = trunc nuw nsw i64 %.026.lcssa.i.i.i.i49 to i8
  %i.uk = or disjoint i8 %i.uj, 48
  %i.ul = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i.i50, i64 -1 ; 4 uses
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !27
  %.not.not.i = icmp eq i64 %.sroa.510.10.insert.shift.i, 0 ; 2 uses
  br i1 %.not.not.i, label %bb.en, label %.thread.i

bb.en:                                            ; preds = %._crit_edge.i.i.i.i48
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %i.ub to i64
  %i.uo = sub i64 %i.um, %i.un                    ; 3 uses
  %i.up = icmp sgt i64 %i.uo, 0
  br i1 %i.up, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i120, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i51

.thread.i:                                        ; preds = %._crit_edge.i.i.i.i48
  %i.uq = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i.i50, i64 -2 ; 4 uses
  store i8 45, ptr %i.uq, align 1, !tbaa !27
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.ub to i64
  %i.ut = sub i64 %i.ur, %i.us                    ; 3 uses
  %i.uu = icmp sgt i64 %i.ut, 0
  br i1 %i.uu, label %bb.eo, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i51

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i120:   ; preds = %bb.en
  %.sroa.510.10.insert.shift.lobit.i = lshr i64 %0, 63
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 %.sroa.510.10.insert.shift.lobit.i
  %i.uv = sub nsw i64 0, %i.uo
  %i.uw = getelementptr inbounds i8, ptr %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.i, i64 %i.uv ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uw, i8 48, i64 %i.uo, i1 false)
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i51

bb.eo:                                            ; preds = %.thread.i
  %.sroa.510.10.insert.shift.lobit165.i = lshr i64 %0, 63
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel166.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 %.sroa.510.10.insert.shift.lobit165.i
  %i.ux = sub nsw i64 0, %i.ut
  %i.uy = getelementptr inbounds i8, ptr %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel166.i, i64 %i.ux ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uy, i8 48, i64 %i.ut, i1 false)
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -1 ; 2 uses
  store i8 45, ptr %i.uz, align 1, !tbaa !27
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i51

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i51: ; preds = %bb.eo, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i120, %.thread.i, %bb.en
  %.4.i.i.i.i52 = phi ptr [ %i.ul, %bb.en ], [ %i.uz, %bb.eo ], [ %i.uw, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i.i120 ], [ %i.uq, %.thread.i ] ; 2 uses
  %i.va = ptrtoint ptr %i.ua to i64
  %i.vb = ptrtoint ptr %.4.i.i.i.i52 to i64
  %i.vc = sub i64 %i.va, %i.vb
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 %i.vc, ptr nonnull %.4.i.i.i.i52)
          to label %bb.ep unwind label %bb.ev

bb.ep:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  %i.vd = load ptr, ptr %17, align 8, !tbaa !31   ; 3 uses
  %i.ve = load i64, ptr %i.tz, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.vf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.vf, ptr %16, align 8, !tbaa !22, !alias.scope !1230
  %i.vg = icmp eq ptr %i.vd, null
  %i.vh = icmp ne i64 %i.ve, 0
  %or.cond.i.i.i57 = and i1 %i.vg, %i.vh
  br i1 %or.cond.i.i.i57, label %.noexc.i.i118, label %bb.eq

.noexc.i.i118:                                    ; preds = %bb.ep
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc.i119 unwind label %bb.ev

.noexc.i119:                                      ; preds = %.noexc.i.i118
  unreachable

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24, !noalias !1230
  store i64 %i.ve, ptr %i.i, align 8, !tbaa !111, !noalias !1230
  %i.vi = icmp ugt i64 %i.ve, 15
  br i1 %i.vi, label %.noexc.i.i.i116, label %._crit_edge.i.i.i52.i58

.noexc.i.i.i116:                                  ; preds = %bb.eq
  %i.vj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc53.i117 unwind label %bb.ev ; 2 uses

.noexc53.i117:                                    ; preds = %.noexc.i.i.i116
  store ptr %i.vj, ptr %16, align 8, !tbaa !31, !alias.scope !1230
  %i.vk = load i64, ptr %i.i, align 8, !tbaa !111, !noalias !1230
  store i64 %i.vk, ptr %i.vf, align 8, !tbaa !27, !alias.scope !1230
  br label %._crit_edge.i.i.i52.i58

._crit_edge.i.i.i52.i58:                          ; preds = %.noexc53.i117, %bb.eq
  %i.vl = phi ptr [ %i.vj, %.noexc53.i117 ], [ %i.vf, %bb.eq ] ; 2 uses
  switch i64 %i.ve, label %bb.es [
    i64 1, label %bb.er
    i64 0, label %bb.et
  ]

bb.er:                                            ; preds = %._crit_edge.i.i.i52.i58
  %i.vm = load i8, ptr %i.vd, align 1, !tbaa !27
  store i8 %i.vm, ptr %i.vl, align 1, !tbaa !27
  br label %bb.et

bb.es:                                            ; preds = %._crit_edge.i.i.i52.i58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vl, ptr align 1 %i.vd, i64 %i.ve, i1 false)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %._crit_edge.i.i.i52.i58
  %i.vn = load i64, ptr %i.i, align 8, !tbaa !111, !noalias !1230 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.vn, ptr %i.vo, align 8, !tbaa !25, !alias.scope !1230
  %i.vp = load ptr, ptr %16, align 8, !tbaa !31, !alias.scope !1230
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vn
  store i8 0, ptr %i.vq, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24, !noalias !1230
  %i.vr = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.ty
  br i1 %i.vs, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59: ; preds = %bb.et
  %i.vt = load i64, ptr %i.ty, align 8, !tbaa !27
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i60

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i60: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.vv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 256, ptr noundef nonnull @.str.296, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.vw = load i64, ptr %i.vo, align 8, !tbaa !25, !noalias !1233 ; 3 uses
  %i.vx = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.k) #24, !noalias !1233
  %i.vy = icmp eq i64 %i.vw, %i.vx
  br i1 %i.vy, label %bb.eu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i61

bb.eu:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i60
  %i.vz = icmp eq i64 %i.vw, 0
  br i1 %i.vz, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i114, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i112

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i112: ; preds = %bb.eu
  %i.wa = load ptr, ptr %16, align 8, !tbaa !31, !noalias !1233
  %bcmp.i.i.i.i.i113 = call i32 @bcmp(ptr %i.wa, ptr nonnull align 1 dereferenceable(256) %i.k, i64 %i.vw), !noalias !1233
  %i.wb = icmp eq i32 %bcmp.i.i.i.i.i113, 0
  br i1 %i.wb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i114, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i61

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i114: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i112, %bb.eu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i64 unwind label %bb.ew

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i61: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i112, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit.i60
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i64 unwind label %bb.ew

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i64: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i61, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i114
  %i.wc = load i8, ptr %18, align 8, !tbaa !37, !range !47, !noundef !48
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.fi, label %bb.ex

bb.ev:                                            ; preds = %.noexc.i.i.i116, %.noexc.i.i118, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i.i51
  %i.we = landingpad { ptr, i32 }
          cleanup
  %i.wf = load ptr, ptr %17, align 8, !tbaa !31   ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.ty
  br i1 %i.wg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i53: ; preds = %bb.ev
  %i.wh = load i64, ptr %i.ty, align 8, !tbaa !27
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i54

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit58.i54: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

bb.ew:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i.i61, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i.i114
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.ex:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  %i.wk = load ptr, ptr %19, align 8, !tbaa !50
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wl, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i70 unwind label %bb.fd ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i70:   ; preds = %bb.ey
  %i.wn = load ptr, ptr %19, align 8, !tbaa !50
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.wo, i64 noundef %0)
          to label %_ZN7testing7MessagelsIxEERS0_RKT_.exit.i unwind label %bb.fd ; 0 uses

_ZN7testing7MessagelsIxEERS0_RKT_.exit.i:         ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i70
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.wq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.wr, null
  br i1 %.not.i.i.i71, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i72, label %bb.ez

bb.ez:                                            ; preds = %_ZN7testing7MessagelsIxEERS0_RKT_.exit.i
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i72

_ZNK7testing15AssertionResult15failure_messageEv.exit.i72: ; preds = %bb.ez, %_ZN7testing7MessagelsIxEERS0_RKT_.exit.i
  %i.wt = phi ptr [ %i.ws, %bb.ez ], [ @.str.57, %_ZN7testing7MessagelsIxEERS0_RKT_.exit.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 559, ptr noundef %i.wt)
          to label %bb.fa unwind label %bb.fe

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i72
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.wu = load ptr, ptr %19, align 8, !tbaa !50   ; 3 uses
  %.not.i.i61.i74 = icmp eq ptr %i.wu, null
  br i1 %.not.i.i61.i74, label %_ZN7testing7MessageD2Ev.exit.i76, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75: ; preds = %bb.fb
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !9
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(128) %i.wu) #24, !inline_history !1238
  br label %_ZN7testing7MessageD2Ev.exit.i76

_ZN7testing7MessageD2Ev.exit.i76:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.fi

bb.fc:                                            ; preds = %bb.ex
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit64.i65

bb.fd:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit.i70, %bb.ey
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i72
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fa
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn.i73 = phi { ptr, i32 } [ %i.xb, %bb.ff ], [ %i.xa, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fd
  %.pn.pn.i67 = phi { ptr, i32 } [ %.pn.i73, %bb.fg ], [ %i.wz, %bb.fd ] ; 2 uses
  %i.xc = load ptr, ptr %19, align 8, !tbaa !50   ; 3 uses
  %.not.i.i62.i68 = icmp eq ptr %i.xc, null
  br i1 %.not.i.i62.i68, label %_ZN7testing7MessageD2Ev.exit64.i65, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i69

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i69: ; preds = %bb.fh
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !9
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8
  call void %i.xf(ptr noundef nonnull align 8 dereferenceable(128) %i.xc) #24, !inline_history !1238
  br label %_ZN7testing7MessageD2Ev.exit64.i65

_ZN7testing7MessageD2Ev.exit64.i65:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i69, %bb.fh, %bb.fc
  %.pn.pn.pn.i66 = phi { ptr, i32 } [ %i.wy, %bb.fc ], [ %.pn.pn.i67, %bb.fh ], [ %.pn.pn.i67, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #24
  br label %bb.fk

bb.fi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit.i76, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit.i64
  %i.xg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !49 ; 4 uses
  %.not.i.i65.i77 = icmp eq ptr %i.xh, null
  br i1 %.not.i.i65.i77, label %_ZN7testing15AssertionResultD2Ev.exit.i80, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !31 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 2 uses
  %i.xk = icmp eq ptr %i.xi, %i.xj
  br i1 %i.xk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78: ; preds = %bb.fj
  %i.xl = load i64, ptr %i.xj, align 8, !tbaa !27
  %i.xm = add i64 %i.xl, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xm) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i79

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i79: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78
  call void @_ZdlPvm(ptr noundef nonnull %i.xh, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit.i80

_ZN7testing15AssertionResultD2Ev.exit.i80:        ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i79, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.xn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  %i.xq = icmp ne i64 %.sroa.510.10.insert.shift.i, 0 ; 2 uses
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  br label %bb.fl

.preheader.i95:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92
  %i.xv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  br label %bb.gn

bb.fk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit64.i65, %bb.ew
  %.pn.pn.pn.pn.i62 = phi { ptr, i32 } [ %.pn.pn.pn.i66, %_ZN7testing7MessageD2Ev.exit64.i65 ], [ %i.wj, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.hn

bb.fl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92, %_ZN7testing15AssertionResultD2Ev.exit.i80
  %indvars.iv.i81 = phi i64 [ 2, %_ZN7testing15AssertionResultD2Ev.exit.i80 ], [ %indvars.iv.next.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, i8 0, i64 16, i1 false)
  store ptr %i.xn, ptr %22, align 8, !tbaa !22
  store i64 0, ptr %i.xo, align 8, !tbaa !25
  %.sroa.55.10.insert.insert.i = lshr i64 %indvars.iv.i81, 8
  %i.yc = trunc i64 %.sroa.55.10.insert.insert.i to i8
  %.sroa.4.8.extract.trunc.i.i.i71.i = or i8 %i.yc, 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.yd = sub nsw i64 0, %indvars.iv.i81
  %i.ye = getelementptr inbounds i8, ptr %i.xp, i64 %i.yd
  br i1 %i.uc, label %.lr.ph.i.i.i82.i, label %._crit_edge.i.i.i72.i

.lr.ph.i.i.i82.i:                                 ; preds = %bb.fl, %.lr.ph.i.i.i82.i
  %.02533.i.i.i83.i = phi ptr [ %i.yi, %.lr.ph.i.i.i82.i ], [ %i.xp, %bb.fl ]
  %.02632.i.i.i84.i = phi i64 [ %i.yj, %.lr.ph.i.i.i82.i ], [ %i.tw, %bb.fl ] ; 3 uses
  %i.yf = urem i64 %.02632.i.i.i84.i, 10
  %i.yg = trunc nuw nsw i64 %i.yf to i8
  %i.yh = or disjoint i8 %i.yg, 48
  %i.yi = getelementptr inbounds i8, ptr %.02533.i.i.i83.i, i64 -1 ; 3 uses
  store i8 %i.yh, ptr %i.yi, align 1, !tbaa !27
  %i.yj = udiv i64 %.02632.i.i.i84.i, 10          ; 2 uses
  %i.yk = icmp ugt i64 %.02632.i.i.i84.i, 99
  br i1 %i.yk, label %.lr.ph.i.i.i82.i, label %._crit_edge.i.i.i72.i, !llvm.loop !1121

._crit_edge.i.i.i72.i:                            ; preds = %.lr.ph.i.i.i82.i, %bb.fl
  %.026.lcssa.i.i.i73.i = phi i64 [ %i.tw, %bb.fl ], [ %i.yj, %.lr.ph.i.i.i82.i ]
  %.025.lcssa.i.i.i74.i = phi ptr [ %i.xp, %bb.fl ], [ %i.yi, %.lr.ph.i.i.i82.i ] ; 2 uses
  %i.yl = trunc nuw nsw i64 %.026.lcssa.i.i.i73.i to i8
  %i.ym = or disjoint i8 %i.yl, 48
  %i.yn = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i74.i, i64 -1 ; 2 uses
  store i8 %i.ym, ptr %i.yn, align 1, !tbaa !27
  br i1 %i.xq, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %._crit_edge.i.i.i72.i
  %i.yo = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i74.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.yo, align 1, !tbaa !27
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge.i.i.i72.i
  %.1.i.i.i75.i = phi ptr [ %i.yo, %bb.fm ], [ %i.yn, %._crit_edge.i.i.i72.i ] ; 3 uses
  %i.yp = ptrtoint ptr %.1.i.i.i75.i to i64
  %i.yq = ptrtoint ptr %i.ye to i64
  %i.yr = sub i64 %i.yp, %i.yq                    ; 3 uses
  %i.ys = icmp sgt i64 %i.yr, 0
  br i1 %i.ys, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i:    ; preds = %bb.fn
  %i.yt = icmp eq i8 %.sroa.4.8.extract.trunc.i.i.i71.i, 48
  %or.cond.i.i.i79.i = and i1 %i.xq, %i.yt        ; 2 uses
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %or.cond.i.i.i79.i to i64
  %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.1.i.i.i75.i, i64 %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.yu = sub nsw i64 0, %i.yr
  %i.yv = getelementptr inbounds i8, ptr %spec.select.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i80.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.yu ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yv, i8 %.sroa.4.8.extract.trunc.i.i.i71.i, i64 %i.yr, i1 false)
  br i1 %or.cond.i.i.i79.i, label %bb.fo, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i

bb.fo:                                            ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i
  %i.yw = getelementptr inbounds i8, ptr %i.yv, i64 -1 ; 2 uses
  store i8 45, ptr %i.yw, align 1, !tbaa !27
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i: ; preds = %bb.fo, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i, %bb.fn
  %.4.i.i.i77.i = phi ptr [ %.1.i.i.i75.i, %bb.fn ], [ %i.yw, %bb.fo ], [ %i.yv, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i78.i ] ; 2 uses
  %i.yx = ptrtoint ptr %.4.i.i.i77.i to i64
  %i.yy = sub i64 %i.xr, %i.yx
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 %i.yy, ptr nonnull %.4.i.i.i77.i)
          to label %bb.fp unwind label %.loopexit31.i82

bb.fp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.yz = load ptr, ptr %22, align 8, !tbaa !31   ; 3 uses
  %i.za = load i64, ptr %i.xo, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  store ptr %i.xs, ptr %21, align 8, !tbaa !22, !alias.scope !1239
  %i.zb = icmp eq ptr %i.yz, null
  %i.zc = icmp ne i64 %i.za, 0
  %or.cond.i.i87.i = and i1 %i.zb, %i.zc
  br i1 %or.cond.i.i87.i, label %.noexc.i90.i, label %bb.fq

.noexc.i90.i:                                     ; preds = %bb.fp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc91.i110 unwind label %.loopexit.split-lp32.i

.noexc91.i110:                                    ; preds = %.noexc.i90.i
  unreachable

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !1239
  store i64 %i.za, ptr %i.g, align 8, !tbaa !111, !noalias !1239
  %i.zd = icmp ugt i64 %i.za, 15
  br i1 %i.zd, label %.noexc.i.i89.i, label %._crit_edge.i.i.i88.i

.noexc.i.i89.i:                                   ; preds = %bb.fq
  %i.ze = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc92.i unwind label %.loopexit31.i82 ; 2 uses

.noexc92.i:                                       ; preds = %.noexc.i.i89.i
  store ptr %i.ze, ptr %21, align 8, !tbaa !31, !alias.scope !1239
  %i.zf = load i64, ptr %i.g, align 8, !tbaa !111, !noalias !1239
  store i64 %i.zf, ptr %i.xs, align 8, !tbaa !27, !alias.scope !1239
  br label %._crit_edge.i.i.i88.i

._crit_edge.i.i.i88.i:                            ; preds = %.noexc92.i, %bb.fq
  %i.zg = phi ptr [ %i.ze, %.noexc92.i ], [ %i.xs, %bb.fq ] ; 2 uses
  switch i64 %i.za, label %bb.fs [
    i64 1, label %bb.fr
    i64 0, label %bb.ft
  ]

bb.fr:                                            ; preds = %._crit_edge.i.i.i88.i
  %i.zh = load i8, ptr %i.yz, align 1, !tbaa !27
  store i8 %i.zh, ptr %i.zg, align 1, !tbaa !27
  br label %bb.ft

bb.fs:                                            ; preds = %._crit_edge.i.i.i88.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zg, ptr align 1 %i.yz, i64 %i.za, i1 false)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %._crit_edge.i.i.i88.i
  %i.zi = load i64, ptr %i.g, align 8, !tbaa !111, !noalias !1239 ; 2 uses
  store i64 %i.zi, ptr %i.xt, align 8, !tbaa !25, !alias.scope !1239
  %i.zj = load ptr, ptr %21, align 8, !tbaa !31, !alias.scope !1239
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zi
  store i8 0, ptr %i.zk, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !1239
  %i.zl = load ptr, ptr %22, align 8, !tbaa !31   ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.xn
  br i1 %i.zm, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i: ; preds = %bb.ft
  %i.zn = load i64, ptr %i.xn, align 8, !tbaa !27
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zo) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  %i.zp = trunc nuw nsw i64 %indvars.iv.i81 to i32 ; 2 uses
  %i.zq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 256, ptr noundef nonnull @.str.297, i32 noundef %i.zp, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.zr = load i64, ptr %i.xt, align 8, !tbaa !25, !noalias !1242 ; 3 uses
  %i.zs = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.k) #24, !noalias !1242
  %i.zt = icmp eq i64 %i.zr, %i.zs
  br i1 %i.zt, label %bb.fu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i

bb.fu:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i
  %i.zu = icmp eq i64 %i.zr, 0
  br i1 %i.zu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i: ; preds = %bb.fu
  %i.zv = load ptr, ptr %21, align 8, !tbaa !31, !noalias !1242
  %bcmp.i.i.i.i99.i = call i32 @bcmp(ptr %i.zv, ptr nonnull align 1 dereferenceable(256) %i.k, i64 %i.zr), !noalias !1242
  %i.zw = icmp eq i32 %bcmp.i.i.i.i99.i, 0
  br i1 %i.zw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i, %bb.fu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i unwind label %bb.fw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i98.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit96.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i unwind label %bb.fw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i97.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i100.i
  %i.zx = load i8, ptr %23, align 8, !tbaa !37, !range !47, !noundef !48
  %i.zy = trunc nuw i8 %i.zx to i1
  br i1 %i.zy, label %bb.gj, label %bb.fx

.loopexit31.i82:                                  ; preds = %.noexc.i.i89.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i76.i
  %lpad.loopexit33.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.loopexit.split-lp32.i:                           ; preds = %.noexc.i90.i
  %lpad.loopexit.split-lp34.i = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a
          cleanup
  br label %bb.gl

bb.fx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.fy unwind label %bb.gc

bb.fy:                                            ; preds = %bb.fx
  %i.aae = load ptr, ptr %24, align 8, !tbaa !50
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaf, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i:  ; preds = %bb.fy
  %i.aah = load ptr, ptr %24, align 8, !tbaa !50
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, i64 noundef %0)
          to label %_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i:      ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i
  %i.aak = load ptr, ptr %24, align 8, !tbaa !50
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aal, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i87 unwind label %bb.gd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i87: ; preds = %_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i
  %i.aan = load ptr, ptr %24, align 8, !tbaa !50
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aao, ptr noundef nonnull @.str.297, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i88 unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i88:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i87
  %i.aaq = load ptr, ptr %24, align 8, !tbaa !50
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i:  ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i88
  %i.aat = load ptr, ptr %24, align 8, !tbaa !50
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aau, i32 noundef %i.zp)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i89 unwind label %bb.ge ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i89:       ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.aaw = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 2 uses
  %.not.i.i117.i = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i117.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i, label %bb.fz

bb.fz:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i89
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i

_ZNK7testing15AssertionResult15failure_messageEv.exit118.i: ; preds = %bb.fz, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i89
  %i.aay = phi ptr [ %i.aax, %bb.fz ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i89 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.aay)
          to label %bb.ga unwind label %bb.gf

bb.ga:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.gb unwind label %bb.gg

bb.gb:                                            ; preds = %bb.ga
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.aaz = load ptr, ptr %24, align 8, !tbaa !50  ; 3 uses
  %.not.i.i119.i = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i119.i, label %_ZN7testing7MessageD2Ev.exit121.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120.i: ; preds = %bb.gb
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !9
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8
  call void %i.abc(ptr noundef nonnull align 8 dereferenceable(128) %i.aaz) #24, !inline_history !1238
  br label %_ZN7testing7MessageD2Ev.exit121.i

_ZN7testing7MessageD2Ev.exit121.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.gj

bb.gc:                                            ; preds = %bb.fx
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit124.i

bb.gd:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i88, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i87, %_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i, %bb.fy
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.ge:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ga
  %i.abh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pn43.i90 = phi { ptr, i32 } [ %i.abh, %bb.gg ], [ %i.abg, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ge, %bb.gd
  %.pn43.pn.pn.i86 = phi { ptr, i32 } [ %i.abe, %bb.gd ], [ %.pn43.i90, %bb.gh ], [ %i.abf, %bb.ge ] ; 2 uses
  %i.abi = load ptr, ptr %24, align 8, !tbaa !50  ; 3 uses
  %.not.i.i122.i = icmp eq ptr %i.abi, null
  br i1 %.not.i.i122.i, label %_ZN7testing7MessageD2Ev.exit124.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i: ; preds = %bb.gi
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !9
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8
  call void %i.abl(ptr noundef nonnull align 8 dereferenceable(128) %i.abi) #24, !inline_history !1238
  br label %_ZN7testing7MessageD2Ev.exit124.i

_ZN7testing7MessageD2Ev.exit124.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i, %bb.gi, %bb.gc
  %.pn43.pn.pn.pn.i85 = phi { ptr, i32 } [ %i.abd, %bb.gc ], [ %.pn43.pn.pn.i86, %bb.gi ], [ %.pn43.pn.pn.i86, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #24
  br label %bb.gl

bb.gj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit121.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i
  %i.abm = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 4 uses
  %.not.i.i125.i = icmp eq ptr %i.abm, null
  br i1 %.not.i.i125.i, label %_ZN7testing15AssertionResultD2Ev.exit129.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !31 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 16 ; 2 uses
  %i.abp = icmp eq ptr %i.abn, %i.abo
  br i1 %i.abp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126.i: ; preds = %bb.gk
  %i.abq = load i64, ptr %i.abo, align 8, !tbaa !27
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abr) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126.i
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit129.i

_ZN7testing15AssertionResultD2Ev.exit129.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.abs = load ptr, ptr %21, align 8, !tbaa !31  ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.xs
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %_ZN7testing15AssertionResultD2Ev.exit129.i
  %i.abu = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92: ; preds = %_ZN7testing15AssertionResultD2Ev.exit129.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, 21
  br i1 %exitcond.not.i94, label %.preheader.i95, label %bb.fl, !llvm.loop !1247

bb.gl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit124.i, %bb.fw
  %.pn43.pn.pn.pn.pn.i84 = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i85, %_ZN7testing7MessageD2Ev.exit124.i ], [ %i.aad, %bb.fw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.abw = load ptr, ptr %21, align 8, !tbaa !31  ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.xs
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i: ; preds = %bb.gl
  %i.aby = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i
  %.pn43.pn.pn.pn.pn.pn.i83 = phi { ptr, i32 } [ %lpad.phi35.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i ], [ %.pn43.pn.pn.pn.pn.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i ], [ %.pn43.pn.pn.pn.pn.i84, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.hn

bb.gm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i
  %i.aca = load ptr, ptr %16, align 8, !tbaa !31  ; 2 uses
  %i.acb = icmp eq ptr %i.aca, %i.vf
  br i1 %i.acb, label %_ZN12_GLOBAL__N_18CheckDecIxEEvT_PKcS3_S3_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %bb.gm
  %i.acc = load i64, ptr %i.vf, align 8, !tbaa !27
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.acd) #26
  br label %_ZN12_GLOBAL__N_18CheckDecIxEEvT_PKcS3_S3_.exit

bb.gn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i, %.preheader.i95
  %indvars.iv219 = phi i64 [ 66, %.preheader.i95 ], [ %indvars.iv.next220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.ace = add nuw nsw i64 %indvars.iv219, 192
  %i.acf = and i64 %i.ace, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, i8 0, i64 16, i1 false)
  store ptr %i.xv, ptr %27, align 8, !tbaa !22
  store i64 0, ptr %i.xw, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.acg = sub nsw i64 0, %i.acf
  %i.ach = getelementptr inbounds i8, ptr %i.xx, i64 %i.acg
  br i1 %i.uc, label %.lr.ph.i.i.i153.i, label %._crit_edge.i.i.i143.i

.lr.ph.i.i.i153.i:                                ; preds = %bb.gn, %.lr.ph.i.i.i153.i
  %.02533.i.i.i154.i = phi ptr [ %i.acl, %.lr.ph.i.i.i153.i ], [ %i.xx, %bb.gn ]
  %.02632.i.i.i155.i = phi i64 [ %i.acm, %.lr.ph.i.i.i153.i ], [ %i.tw, %bb.gn ] ; 3 uses
  %i.aci = urem i64 %.02632.i.i.i155.i, 10
  %i.acj = trunc nuw nsw i64 %i.aci to i8
  %i.ack = or disjoint i8 %i.acj, 48
  %i.acl = getelementptr inbounds i8, ptr %.02533.i.i.i154.i, i64 -1 ; 3 uses
  store i8 %i.ack, ptr %i.acl, align 1, !tbaa !27
  %i.acm = udiv i64 %.02632.i.i.i155.i, 10        ; 2 uses
  %i.acn = icmp ugt i64 %.02632.i.i.i155.i, 99
  br i1 %i.acn, label %.lr.ph.i.i.i153.i, label %._crit_edge.i.i.i143.i, !llvm.loop !1121

._crit_edge.i.i.i143.i:                           ; preds = %.lr.ph.i.i.i153.i, %bb.gn
  %.026.lcssa.i.i.i144.i = phi i64 [ %i.tw, %bb.gn ], [ %i.acm, %.lr.ph.i.i.i153.i ]
  %.025.lcssa.i.i.i145.i = phi ptr [ %i.xx, %bb.gn ], [ %i.acl, %.lr.ph.i.i.i153.i ] ; 2 uses
  %i.aco = trunc nuw nsw i64 %.026.lcssa.i.i.i144.i to i8
  %i.acp = or disjoint i8 %i.aco, 48
  %i.acq = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i145.i, i64 -1 ; 2 uses
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !27
  br i1 %.not.not.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %._crit_edge.i.i.i143.i
  %i.acr = getelementptr inbounds i8, ptr %.025.lcssa.i.i.i145.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.acr, align 1, !tbaa !27
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %._crit_edge.i.i.i143.i
  %.1.i.i.i146.i = phi ptr [ %i.acr, %bb.go ], [ %i.acq, %._crit_edge.i.i.i143.i ] ; 3 uses
  %i.acs = ptrtoint ptr %.1.i.i.i146.i to i64     ; 2 uses
  %i.act = ptrtoint ptr %i.ach to i64
  %i.acu = sub i64 %i.acs, %i.act                 ; 3 uses
  %i.acv = icmp sgt i64 %i.acu, 0
  br i1 %i.acv, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i:   ; preds = %bb.gp
  %i.acw = sub nsw i64 0, %i.acu
  %i.acx = getelementptr inbounds i8, ptr %.1.i.i.i146.i, i64 %i.acw ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.acx, i8 32, i64 %i.acu, i1 false)
  %.pre = ptrtoint ptr %i.acx to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i, %bb.gp
  %.pre-phi = phi i64 [ %.pre, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i ], [ %i.acs, %bb.gp ]
  %.4.i.i.i148.i = phi ptr [ %i.acx, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i ], [ %.1.i.i.i146.i, %bb.gp ]
  %i.acy = sub i64 %i.xy, %.pre-phi
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 %i.acy, ptr nonnull %.4.i.i.i148.i)
          to label %bb.gq unwind label %.loopexit.i98

bb.gq:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.acz = load ptr, ptr %27, align 8, !tbaa !31  ; 3 uses
  %i.ada = load i64, ptr %i.xw, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  store ptr %i.xz, ptr %26, align 8, !tbaa !22, !alias.scope !1248
  %i.adb = icmp eq ptr %i.acz, null
  %i.adc = icmp ne i64 %i.ada, 0
  %or.cond.i.i158.i = and i1 %i.adb, %i.adc
  br i1 %or.cond.i.i158.i, label %.noexc.i161.i, label %bb.gr

.noexc.i161.i:                                    ; preds = %bb.gq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc162.i unwind label %.loopexit.split-lp.i107

.noexc162.i:                                      ; preds = %.noexc.i161.i
  unreachable

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !1248
  store i64 %i.ada, ptr %i.e, align 8, !tbaa !111, !noalias !1248
  %i.add = icmp ugt i64 %i.ada, 15
  br i1 %i.add, label %.noexc.i.i160.i, label %._crit_edge.i.i.i159.i

.noexc.i.i160.i:                                  ; preds = %bb.gr
  %i.ade = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc163.i unwind label %.loopexit.i98 ; 2 uses

.noexc163.i:                                      ; preds = %.noexc.i.i160.i
  store ptr %i.ade, ptr %26, align 8, !tbaa !31, !alias.scope !1248
  %i.adf = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !1248
  store i64 %i.adf, ptr %i.xz, align 8, !tbaa !27, !alias.scope !1248
  br label %._crit_edge.i.i.i159.i

._crit_edge.i.i.i159.i:                           ; preds = %.noexc163.i, %bb.gr
  %i.adg = phi ptr [ %i.ade, %.noexc163.i ], [ %i.xz, %bb.gr ] ; 2 uses
  switch i64 %i.ada, label %bb.gt [
    i64 1, label %bb.gs
    i64 0, label %bb.gu
  ]

bb.gs:                                            ; preds = %._crit_edge.i.i.i159.i
  %i.adh = load i8, ptr %i.acz, align 1, !tbaa !27
  store i8 %i.adh, ptr %i.adg, align 1, !tbaa !27
  br label %bb.gu

bb.gt:                                            ; preds = %._crit_edge.i.i.i159.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adg, ptr align 1 %i.acz, i64 %i.ada, i1 false)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs, %._crit_edge.i.i.i159.i
  %i.adi = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !1248 ; 2 uses
  store i64 %i.adi, ptr %i.ya, align 8, !tbaa !25, !alias.scope !1248
  %i.adj = load ptr, ptr %26, align 8, !tbaa !31, !alias.scope !1248
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.adi
  store i8 0, ptr %i.adk, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !1248
  %i.adl = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.adm = icmp eq ptr %i.adl, %i.xv
  br i1 %i.adm, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i: ; preds = %bb.gu
  %i.adn = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.ado) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.adp = trunc i64 %indvars.iv219 to i32
  %i.adq = add i32 %i.adp, -64                    ; 2 uses
  %i.adr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 256, ptr noundef nonnull @.str.298, i32 noundef %i.adq, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.ads = load i64, ptr %i.ya, align 8, !tbaa !25, !noalias !1251 ; 3 uses
  %i.adt = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.k) #24, !noalias !1251
  %i.adu = icmp eq i64 %i.ads, %i.adt
  br i1 %i.adu, label %bb.gv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i

bb.gv:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i
  %i.adv = icmp eq i64 %i.ads, 0
  br i1 %i.adv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i: ; preds = %bb.gv
  %i.adw = load ptr, ptr %26, align 8, !tbaa !31, !noalias !1251
  %bcmp.i.i.i.i170.i = call i32 @bcmp(ptr %i.adw, ptr nonnull align 1 dereferenceable(256) %i.k, i64 %i.ads), !noalias !1251
  %i.adx = icmp eq i32 %bcmp.i.i.i.i170.i, 0
  br i1 %i.adx, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i, %bb.gv
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i unwind label %bb.gx

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i unwind label %bb.gx

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i
  %i.ady = load i8, ptr %28, align 8, !tbaa !37, !range !47, !noundef !48
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %bb.hk, label %bb.gy

.loopexit.i98:                                    ; preds = %.noexc.i.i160.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i
  %lpad.loopexit.i99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

.loopexit.split-lp.i107:                          ; preds = %.noexc.i161.i
  %lpad.loopexit.split-lp.i108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.gw:                                            ; preds = %.loopexit.split-lp.i107, %.loopexit.i98
  %lpad.phi.i100 = phi { ptr, i32 } [ %lpad.loopexit.i99, %.loopexit.i98 ], [ %lpad.loopexit.split-lp.i108, %.loopexit.split-lp.i107 ]
  %i.aea = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.xv
  br i1 %i.aeb, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit177.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175.i: ; preds = %bb.gw
  %i.aec = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit177.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit177.i: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.i

bb.gx:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.gy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.gz unwind label %bb.hd

bb.gz:                                            ; preds = %bb.gy
  %i.aef = load ptr, ptr %29, align 8, !tbaa !50
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeg, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit179.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit179.i:  ; preds = %bb.gz
  %i.aei = load ptr, ptr %29, align 8, !tbaa !50
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  %i.aek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aej, i64 noundef %0)
          to label %_ZN7testing7MessagelsIxEERS0_RKT_.exit181.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIxEERS0_RKT_.exit181.i:      ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit179.i
  %i.ael = load ptr, ptr %29, align 8, !tbaa !50
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.aen = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aem, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i184.i unwind label %bb.he ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i184.i: ; preds = %_ZN7testing7MessagelsIxEERS0_RKT_.exit181.i
  %i.aeo = load ptr, ptr %29, align 8, !tbaa !50
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aep, ptr noundef nonnull @.str.298, i64 noundef 5)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit187.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit187.i:    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i184.i
  %i.aer = load ptr, ptr %29, align 8, !tbaa !50
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  %i.aet = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aes, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit189.i unwind label %bb.he ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit189.i:  ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit187.i
  %i.aeu = load ptr, ptr %29, align 8, !tbaa !50
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, i32 noundef %i.adq)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit191.i unwind label %bb.hf ; 0 uses
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a
  %lpad.loopexit.split-lp23.i181 = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.it:                                            ; preds = %.loopexit.split-lp21.i180, %.loopexit20.i151
  %lpad.phi24.i153 = phi { ptr, i32 } [ %lpad.loopexit22.i152, %.loopexit20.i151 ], [ %lpad.loopexit.split-lp23.i181, %.loopexit.split-lp21.i180 ]
  %i.akf = load ptr, ptr %7, align 8, !tbaa !31   ; 2 uses
  %i.akg = icmp eq ptr %i.akf, %i.aiu
  br i1 %i.akg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i: ; preds = %bb.it
  %i.akh = load i64, ptr %i.aiu, align 8, !tbaa !27
  %i.aki = add i64 %i.akh, 1
  call void @_ZdlPvm(ptr noundef %i.akf, i64 noundef %i.aki) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i: ; preds = %bb.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

bb.iu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80.i
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.iv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.iw unwind label %bb.jc

bb.iw:                                            ; preds = %bb.iv
  %i.akk = load ptr, ptr %9, align 8, !tbaa !50
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 16
  %i.akm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i unwind label %bb.jd ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i:   ; preds = %bb.iw
  %i.akn = load ptr, ptr %9, align 8, !tbaa !50
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 16 ; 2 uses
  br i1 %i.aiy, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i
  %i.akp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ako, ptr noundef nonnull @.str.303, i64 noundef 6)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i unwind label %bb.jd ; 0 uses

bb.iy:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i
  %i.akq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ako, ptr noundef nonnull %i.agf)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i unwind label %bb.jd ; 0 uses

_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i:      ; preds = %bb.iy, %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.akr = load ptr, ptr %i.aiz, align 8, !tbaa !49 ; 2 uses
  %.not.i.i92.i = icmp eq ptr %i.akr, null
  br i1 %.not.i.i92.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i, label %bb.iz

bb.iz:                                            ; preds = %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i

_ZNK7testing15AssertionResult15failure_messageEv.exit93.i: ; preds = %bb.iz, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i
  %i.akt = phi ptr [ %i.aks, %bb.iz ], [ @.str.57, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef %i.akt)
          to label %bb.ja unwind label %bb.je

bb.ja:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.jb unwind label %bb.jf

bb.jb:                                            ; preds = %bb.ja
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.aku = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i94.i = icmp eq ptr %i.aku, null
  br i1 %.not.i.i94.i, label %_ZN7testing7MessageD2Ev.exit96.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.i: ; preds = %bb.jb
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !9
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  %i.akx = load ptr, ptr %i.akw, align 8
  call void %i.akx(ptr noundef nonnull align 8 dereferenceable(128) %i.aku) #24, !inline_history !1265
  br label %_ZN7testing7MessageD2Ev.exit96.i

_ZN7testing7MessageD2Ev.exit96.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.i, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ji

bb.jc:                                            ; preds = %bb.iv
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit99.i

bb.jd:                                            ; preds = %bb.iy, %bb.ix, %bb.iw
  %i.akz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.je:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i
  %i.ala = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.jf:                                            ; preds = %bb.ja
  %i.alb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %.pn40.i = phi { ptr, i32 } [ %i.alb, %bb.jf ], [ %i.ala, %bb.je ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jd
  %.pn40.pn.i = phi { ptr, i32 } [ %.pn40.i, %bb.jg ], [ %i.akz, %bb.jd ] ; 2 uses
  %i.alc = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i97.i = icmp eq ptr %i.alc, null
  br i1 %.not.i.i97.i, label %_ZN7testing7MessageD2Ev.exit99.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i: ; preds = %bb.jh
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !9
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 8
  %i.alf = load ptr, ptr %i.ale, align 8
  call void %i.alf(ptr noundef nonnull align 8 dereferenceable(128) %i.alc) #24, !inline_history !1265
  br label %_ZN7testing7MessageD2Ev.exit99.i

_ZN7testing7MessageD2Ev.exit99.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i, %bb.jh, %bb.jc
  %.pn40.pn.pn.i = phi { ptr, i32 } [ %i.aky, %bb.jc ], [ %.pn40.pn.i, %bb.jh ], [ %.pn40.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  br label %bb.jk

bb.ji:                                            ; preds = %_ZN7testing7MessageD2Ev.exit96.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83.i
  %i.alg = load ptr, ptr %i.aiz, align 8, !tbaa !49 ; 4 uses
  %.not.i.i100.i = icmp eq ptr %i.alg, null
  br i1 %.not.i.i100.i, label %_ZN7testing15AssertionResultD2Ev.exit104.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !31 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 16 ; 2 uses
  %i.alj = icmp eq ptr %i.alh, %i.ali
  br i1 %i.alj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101.i: ; preds = %bb.jj
  %i.alk = load i64, ptr %i.ali, align 8, !tbaa !27
  %i.all = add i64 %i.alk, 1
  call void @_ZdlPvm(ptr noundef %i.alh, i64 noundef %i.all) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i: ; preds = %bb.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101.i
  call void @_ZdlPvm(ptr noundef nonnull %i.alg, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit104.i

_ZN7testing15AssertionResultD2Ev.exit104.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.alm = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.aln = icmp eq ptr %i.alm, %i.aiw
  br i1 %i.aln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154: ; preds = %_ZN7testing15AssertionResultD2Ev.exit104.i
  %i.alo = load i64, ptr %i.aiw, align 8, !tbaa !27
  %i.alp = add i64 %i.alo, 1
  call void @_ZdlPvm(ptr noundef %i.alm, i64 noundef %i.alp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i155: ; preds = %_ZN7testing15AssertionResultD2Ev.exit104.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i146, 1 ; 2 uses
  %exitcond.not.i157 = icmp eq i64 %indvars.iv.next.i156, 21
  br i1 %exitcond.not.i157, label %.preheader.i158, label %bb.im, !llvm.loop !1274

bb.jk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit99.i, %bb.iu
  %.pn40.pn.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.pn.i, %_ZN7testing7MessageD2Ev.exit99.i ], [ %i.akj, %bb.iu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.alq = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.alr = icmp eq ptr %i.alq, %i.aiw
  br i1 %i.alr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i: ; preds = %bb.jk
  %i.als = load i64, ptr %i.aiw, align 8, !tbaa !27
  %i.alt = add i64 %i.als, 1
  call void @_ZdlPvm(ptr noundef %i.alq, i64 noundef %i.alt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %bb.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i
  %.pn40.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.phi24.i153, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i ], [ %.pn40.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i ], [ %.pn40.pn.pn.pn.i, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.kl

bb.jl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i
  %i.alu = load ptr, ptr %1, align 8, !tbaa !31   ; 2 uses
  %i.alv = icmp eq ptr %i.alu, %i.agk
  br i1 %i.alv, label %_ZN12_GLOBAL__N_18CheckHexIPvEEvT_PKcS4_S4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i: ; preds = %bb.jl
  %i.alw = load i64, ptr %i.agk, align 8, !tbaa !27
  %i.alx = add i64 %i.alw, 1
  call void @_ZdlPvm(ptr noundef %i.alu, i64 noundef %i.alx) #26
  br label %_ZN12_GLOBAL__N_18CheckHexIPvEEvT_PKcS4_S4_.exit

bb.jm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i, %.preheader.i158
  %indvars.iv223 = phi i64 [ 66, %.preheader.i158 ], [ %indvars.iv.next224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.aly = add nuw nsw i64 %indvars.iv223, 192
  %i.alz = and i64 %i.aly, 255
  %.sroa.5.9.insert.insert.i165 = or disjoint i64 %i.alz, 8192
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aja, i8 0, i64 16, i1 false)
  store ptr %i.aja, ptr %12, align 8, !tbaa !22
  store i64 0, ptr %i.ajb, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2026052613AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %0, i64 %.sroa.5.9.insert.insert.i165)
          to label %bb.jn unwind label %.loopexit.i166

bb.jn:                                            ; preds = %bb.jm
  %i.ama = load ptr, ptr %12, align 8, !tbaa !31  ; 3 uses
  %i.amb = load i64, ptr %i.ajb, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  store ptr %i.ajc, ptr %11, align 8, !tbaa !22, !alias.scope !1275
  %i.amc = icmp eq ptr %i.ama, null
  %i.amd = icmp ne i64 %i.amb, 0
  %or.cond.i.i117.i = and i1 %i.amc, %i.amd
  br i1 %or.cond.i.i117.i, label %.noexc.i120.i, label %bb.jo

.noexc.i120.i:                                    ; preds = %bb.jn
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc121.i unwind label %.loopexit.split-lp.i177

.noexc121.i:                                      ; preds = %.noexc.i120.i
  unreachable

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1275
  store i64 %i.amb, ptr %i.a, align 8, !tbaa !111, !noalias !1275
  %i.ame = icmp ugt i64 %i.amb, 15
  br i1 %i.ame, label %.noexc.i.i119.i, label %._crit_edge.i.i.i118.i

.noexc.i.i119.i:                                  ; preds = %bb.jo
  %i.amf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc122.i unwind label %.loopexit.i166 ; 2 uses

.noexc122.i:                                      ; preds = %.noexc.i.i119.i
  store ptr %i.amf, ptr %11, align 8, !tbaa !31, !alias.scope !1275
  %i.amg = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1275
  store i64 %i.amg, ptr %i.ajc, align 8, !tbaa !27, !alias.scope !1275
  br label %._crit_edge.i.i.i118.i

._crit_edge.i.i.i118.i:                           ; preds = %.noexc122.i, %bb.jo
  %i.amh = phi ptr [ %i.amf, %.noexc122.i ], [ %i.ajc, %bb.jo ] ; 2 uses
  switch i64 %i.amb, label %bb.jq [
    i64 1, label %bb.jp
    i64 0, label %bb.jr
  ]

bb.jp:                                            ; preds = %._crit_edge.i.i.i118.i
  %i.ami = load i8, ptr %i.ama, align 1, !tbaa !27
  store i8 %i.ami, ptr %i.amh, align 1, !tbaa !27
  br label %bb.jr

bb.jq:                                            ; preds = %._crit_edge.i.i.i118.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amh, ptr align 1 %i.ama, i64 %i.amb, i1 false)
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %._crit_edge.i.i.i118.i
  %i.amj = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1275 ; 2 uses
  store i64 %i.amj, ptr %i.ajd, align 8, !tbaa !25, !alias.scope !1275
  %i.amk = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1275
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 %i.amj
  store i8 0, ptr %i.aml, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1275
  %i.amm = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.amn = icmp eq ptr %i.amm, %i.aja
  br i1 %i.amn, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i: ; preds = %bb.jr
  %i.amo = load i64, ptr %i.aja, align 8, !tbaa !27
  %i.amp = add i64 %i.amo, 1
  call void @_ZdlPvm(ptr noundef %i.amm, i64 noundef %i.amp) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i: ; preds = %bb.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.amq = trunc i64 %indvars.iv223 to i32
  %i.amr = add i32 %i.amq, -64
  %i.ams = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.292, i32 noundef %i.amr, ptr noundef %i.agf) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.amt = load i64, ptr %i.ajd, align 8, !tbaa !25, !noalias !1278 ; 3 uses
  %i.amu = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.d) #24, !noalias !1278
  %i.amv = icmp eq i64 %i.amt, %i.amu
  br i1 %i.amv, label %bb.js, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i

bb.js:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i
  %i.amw = icmp eq i64 %i.amt, 0
  br i1 %i.amw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i: ; preds = %bb.js
  %i.amx = load ptr, ptr %11, align 8, !tbaa !31, !noalias !1278
  %bcmp.i.i.i.i129.i = call i32 @bcmp(ptr %i.amx, ptr nonnull align 1 dereferenceable(256) %i.d, i64 %i.amt), !noalias !1278
  %i.amy = icmp eq i32 %bcmp.i.i.i.i129.i, 0
  br i1 %i.amy, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i, %bb.js
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i unwind label %bb.ju

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i unwind label %bb.ju

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i
  %i.amz = load i8, ptr %13, align 8, !tbaa !37, !range !47, !noundef !48
  %i.ana = trunc nuw i8 %i.amz to i1
  br i1 %i.ana, label %bb.ki, label %bb.jv

.loopexit.i166:                                   ; preds = %.noexc.i.i119.i, %bb.jm
  %lpad.loopexit.i167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

.loopexit.split-lp.i177:                          ; preds = %.noexc.i120.i
  %lpad.loopexit.split-lp.i178 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.jt:                                            ; preds = %.loopexit.split-lp.i177, %.loopexit.i166
  %lpad.phi.i168 = phi { ptr, i32 } [ %lpad.loopexit.i167, %.loopexit.i166 ], [ %lpad.loopexit.split-lp.i178, %.loopexit.split-lp.i177 ]
  %i.anb = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.aja
  br i1 %i.anc, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit136.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i: ; preds = %bb.jt
  %i.and = load i64, ptr %i.aja, align 8, !tbaa !27
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit136.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit136.i: ; preds = %bb.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i169

bb.ju:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.jv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.jw unwind label %bb.kc

bb.jw:                                            ; preds = %bb.jv
  %i.ang = load ptr, ptr %14, align 8, !tbaa !50
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16
  %i.ani = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anh, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i unwind label %bb.kd ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i:  ; preds = %bb.jw
  %i.anj = load ptr, ptr %14, align 8, !tbaa !50
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 16 ; 2 uses
  br i1 %i.aiy, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i
  %i.anl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ank, ptr noundef nonnull @.str.303, i64 noundef 6)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i unwind label %bb.kd ; 0 uses

bb.jy:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i
  %i.anm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ank, ptr noundef nonnull %i.agf)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i unwind label %bb.kd ; 0 uses

_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i:     ; preds = %bb.jy, %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.ann = load ptr, ptr %i.aje, align 8, !tbaa !49 ; 2 uses
  %.not.i.i142.i = icmp eq ptr %i.ann, null
  br i1 %.not.i.i142.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit143.i, label %bb.jz

bb.jz:                                            ; preds = %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit143.i

_ZNK7testing15AssertionResult15failure_messageEv.exit143.i: ; preds = %bb.jz, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i
  %i.anp = phi ptr [ %i.ano, %bb.jz ], [ @.str.57, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 548, ptr noundef %i.anp)
          to label %bb.ka unwind label %bb.ke

bb.ka:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.kb unwind label %bb.kf

bb.kb:                                            ; preds = %bb.ka
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.anq = load ptr, ptr %14, align 8, !tbaa !50  ; 3 uses
  %.not.i.i144.i = icmp eq ptr %i.anq, null
  br i1 %.not.i.i144.i, label %_ZN7testing7MessageD2Ev.exit146.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145.i: ; preds = %bb.kb
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !9
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 8
  %i.ant = load ptr, ptr %i.ans, align 8
  call void %i.ant(ptr noundef nonnull align 8 dereferenceable(128) %i.anq) #24, !inline_history !1265
  br label %_ZN7testing7MessageD2Ev.exit146.i

_ZN7testing7MessageD2Ev.exit146.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145.i, %bb.kb
end_hunk_8
