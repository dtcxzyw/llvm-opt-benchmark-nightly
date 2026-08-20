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
  %i.dr = load ptr, ptr %37, align 8, !tbaa !31   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cg
  br i1 %i.ds, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i: ; preds = %bb.ae
  %i.dt = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i76.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i79.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit82.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dw = load ptr, ptr %39, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i: ; preds = %bb.ah
  %i.dz = load ptr, ptr %39, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i:     ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.ec = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 2 uses
  %.not.i.i90.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i90.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i: ; preds = %bb.ai, %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i
  %i.ee = phi ptr [ %i.ed, %bb.ai ], [ @.str.57, %_ZN7testing7MessagelsIjEERS0_RKT_.exit89.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef %i.ee)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %i.ef = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i92.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i92.i.i, label %_ZN7testing7MessageD2Ev.exit94.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93.i.i: ; preds = %bb.ak
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #24, !inline_history !1102
  br label %_ZN7testing7MessageD2Ev.exit94.i.i

_ZN7testing7MessageD2Ev.exit94.i.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.ar

bb.al:                                            ; preds = %bb.ag
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit97.i.i

bb.am:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit87.i.i, %bb.ah
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn40.i.i = phi { ptr, i32 } [ %i.em, %bb.ao ], [ %i.el, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn40.pn.i.i = phi { ptr, i32 } [ %.pn40.i.i, %bb.ap ], [ %i.ek, %bb.am ] ; 2 uses
  %i.en = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i95.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i95.i.i, label %_ZN7testing7MessageD2Ev.exit97.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i: ; preds = %bb.aq
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(128) %i.en) #24, !inline_history !1102
  br label %_ZN7testing7MessageD2Ev.exit97.i.i

_ZN7testing7MessageD2Ev.exit97.i.i:               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i, %bb.aq, %bb.al
  %.pn40.pn.pn.i.i = phi { ptr, i32 } [ %i.ej, %bb.al ], [ %.pn40.pn.i.i, %bb.aq ], [ %.pn40.pn.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #24
  br label %bb.at

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94.i.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit82.i.i
  %i.er = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 4 uses
  %.not.i.i98.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i98.i.i, label %_ZN7testing15AssertionResultD2Ev.exit102.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !31 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99.i.i: ; preds = %bb.as
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !27
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i99.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit102.i.i

_ZN7testing15AssertionResultD2Ev.exit102.i.i:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.ex = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ci
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit102.i.i
  %i.ez = load i64, ptr %i.ci, align 8, !tbaa !27
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit102.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 21
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.x, !llvm.loop !1111

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit97.i.i, %bb.af
  %.pn40.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn40.pn.pn.i.i, %_ZN7testing7MessageD2Ev.exit97.i.i ], [ %i.dv, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.fb = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ci
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i: ; preds = %bb.at
  %i.fd = load i64, ptr %i.ci, align 8, !tbaa !27
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i
  %.pn40.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi24.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit85.i.i ], [ %.pn40.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i.i ], [ %.pn40.pn.pn.pn.i.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.bs

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i.i
  %i.ff = load ptr, ptr %31, align 8, !tbaa !31   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.y
  br i1 %i.fg, label %_ZN12_GLOBAL__N_18CheckHexIjEEvT_PKcS3_S3_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i.i: ; preds = %bb.au
  %i.fh = load i64, ptr %i.y, align 8, !tbaa !27
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #26
  br label %_ZN12_GLOBAL__N_18CheckHexIjEEvT_PKcS3_S3_.exit.i

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i.i, %.preheader.i.i
  %indvars.iv.i = phi i64 [ 66, %.preheader.i.i ], [ %indvars.iv.next.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.fj = add nuw nsw i64 %indvars.iv.i, 192
  %i.fk = and i64 %i.fj, 255
  %i.fl = or disjoint i64 %i.fk, 8192
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store ptr %i.cl, ptr %42, align 8, !tbaa !22
  store i64 0, ptr %i.cm, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2026052613AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 %i.t, i64 %i.fl)
          to label %bb.aw unwind label %.loopexit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.fm = load ptr, ptr %42, align 8, !tbaa !31   ; 3 uses
  %i.fn = load i64, ptr %i.cm, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  store ptr %i.cn, ptr %41, align 8, !tbaa !22, !alias.scope !1112
  %i.fo = icmp eq ptr %i.fm, null
  %i.fp = icmp ne i64 %i.fn, 0
  %or.cond.i.i115.i.i = and i1 %i.fo, %i.fp
  br i1 %or.cond.i.i115.i.i, label %.noexc.i118.i.i, label %bb.ax

.noexc.i118.i.i:                                  ; preds = %bb.aw
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc119.i.i unwind label %.loopexit.split-lp.i.i

.noexc119.i.i:                                    ; preds = %.noexc.i118.i.i
  unreachable

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24, !noalias !1112
  store i64 %i.fn, ptr %i.o, align 8, !tbaa !111, !noalias !1112
  %i.fq = icmp ugt i64 %i.fn, 15
  br i1 %i.fq, label %.noexc.i.i117.i.i, label %._crit_edge.i.i.i116.i.i

.noexc.i.i117.i.i:                                ; preds = %bb.ax
  %i.fr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc120.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc120.i.i:                                    ; preds = %.noexc.i.i117.i.i
  store ptr %i.fr, ptr %41, align 8, !tbaa !31, !alias.scope !1112
  %i.fs = load i64, ptr %i.o, align 8, !tbaa !111, !noalias !1112
  store i64 %i.fs, ptr %i.cn, align 8, !tbaa !27, !alias.scope !1112
  br label %._crit_edge.i.i.i116.i.i

._crit_edge.i.i.i116.i.i:                         ; preds = %.noexc120.i.i, %bb.ax
  %i.ft = phi ptr [ %i.fr, %.noexc120.i.i ], [ %i.cn, %bb.ax ] ; 2 uses
  switch i64 %i.fn, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i116.i.i
  %i.fu = load i8, ptr %i.fm, align 1, !tbaa !27
  store i8 %i.fu, ptr %i.ft, align 1, !tbaa !27
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i.i116.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 1 %i.fm, i64 %i.fn, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i116.i.i
  %i.fv = load i64, ptr %i.o, align 8, !tbaa !111, !noalias !1112 ; 2 uses
  store i64 %i.fv, ptr %i.co, align 8, !tbaa !25, !alias.scope !1112
  %i.fw = load ptr, ptr %41, align 8, !tbaa !31, !alias.scope !1112
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #24, !noalias !1112
  %i.fy = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.cl
  br i1 %i.fz, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122.i.i: ; preds = %bb.ba
  %i.ga = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  %i.gc = trunc i64 %indvars.iv.i to i32
  %i.gd = add i32 %i.gc, -64
  %i.ge = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 256, ptr noundef nonnull @.str.306, i32 noundef %i.gd, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.gf = load i64, ptr %i.co, align 8, !tbaa !25, !noalias !1115 ; 3 uses
  %i.gg = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.r) #24, !noalias !1115
  %i.gh = icmp eq i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i

bb.bb:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i
  %i.gi = icmp eq i64 %i.gf, 0
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i: ; preds = %bb.bb
  %i.gj = load ptr, ptr %41, align 8, !tbaa !31, !noalias !1115
  %bcmp.i.i.i.i127.i.i = call i32 @bcmp(ptr %i.gj, ptr nonnull align 1 dereferenceable(256) %i.r, i64 %i.gf), !noalias !1115
  %i.gk = icmp eq i32 %bcmp.i.i.i.i127.i.i, 0
  br i1 %i.gk, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i, %bb.bb
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i unwind label %bb.bd

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i126.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit124.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i unwind label %bb.bd

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i
  %i.gl = load i8, ptr %43, align 8, !tbaa !37, !range !47, !noundef !48
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.bp, label %bb.be

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
  %i.gn = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.cl
  br i1 %i.go, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i: ; preds = %bb.bc
  %i.gp = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit134.i.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i.i

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i125.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i128.i.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.be:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit131.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.gs = load ptr, ptr %44, align 8, !tbaa !50
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit136.i.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit136.i.i: ; preds = %bb.bf
  %i.gv = load ptr, ptr %44, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i:    ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit136.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.gy = load ptr, ptr %i.cp, align 8, !tbaa !49 ; 2 uses
  %.not.i.i139.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i139.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i: ; preds = %bb.bg, %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i
  %i.ha = phi ptr [ %i.gz, %bb.bg ], [ @.str.57, %_ZN7testing7MessagelsIjEERS0_RKT_.exit138.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %45, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 548, ptr noundef %i.ha)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit140.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  %i.hb = load ptr, ptr %44, align 8, !tbaa !50   ; 3 uses
  %.not.i.i141.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i141.i.i, label %_ZN7testing7MessageD2Ev.exit143.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i.i: ; preds = %bb.bi
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(128) %i.hb) #24, !inline_history !1102
  br label %_ZN7testing7MessageD2Ev.exit143.i.i

_ZN7testing7MessageD2Ev.exit143.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %bb.bp

bb.bj:                                            ; preds = %bb.be
  %i.hf = landingpad { ptr, i32 }
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
  %i.nw = load ptr, ptr %24, align 8, !tbaa !50
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i: ; preds = %bb.cz
  %i.nz = load ptr, ptr %24, align 8, !tbaa !50
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oa, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i:    ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i
  %i.oc = load ptr, ptr %24, align 8, !tbaa !50
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i
  %i.of = load ptr, ptr %24, align 8, !tbaa !50
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.og, ptr noundef nonnull @.str.308, i64 noundef 4)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.oi = load ptr, ptr %24, align 8, !tbaa !50
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oj, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i
  %i.ol = load ptr, ptr %24, align 8, !tbaa !50
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.om, i32 noundef %i.nh)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i unwind label %bb.df ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i:       ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.oo = load ptr, ptr %i.lr, align 8, !tbaa !49 ; 2 uses
  %.not.i.i116.i.i = icmp eq ptr %i.oo, null
  br i1 %.not.i.i116.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i, label %bb.da

bb.da:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i: ; preds = %bb.da, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i
  %i.oq = phi ptr [ %i.op, %bb.da ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.oq)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.or = load ptr, ptr %24, align 8, !tbaa !50   ; 3 uses
  %.not.i.i118.i.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i118.i.i, label %_ZN7testing7MessageD2Ev.exit120.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i.i: ; preds = %bb.dc
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(128) %i.or) #24, !inline_history !1130
  br label %_ZN7testing7MessageD2Ev.exit120.i.i

_ZN7testing7MessageD2Ev.exit120.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.dk

bb.dd:                                            ; preds = %bb.cy
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit123.i.i

bb.de:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i, %_ZN7testing7MessagelsIjEERS0_RKT_.exit109.i.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i.i, %bb.cz
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.df:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.db
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn43.i.i = phi { ptr, i32 } [ %i.oz, %bb.dh ], [ %i.oy, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.df, %bb.de
  %.pn43.pn.pn.i.i = phi { ptr, i32 } [ %i.ow, %bb.de ], [ %.pn43.i.i, %bb.di ], [ %i.ox, %bb.df ] ; 2 uses
  %i.pa = load ptr, ptr %24, align 8, !tbaa !50   ; 3 uses
  %.not.i.i121.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i121.i.i, label %_ZN7testing7MessageD2Ev.exit123.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i: ; preds = %bb.dj
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !9
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(128) %i.pa) #24, !inline_history !1130
  br label %_ZN7testing7MessageD2Ev.exit123.i.i

_ZN7testing7MessageD2Ev.exit123.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i, %bb.dj, %bb.dd
  %.pn43.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ov, %bb.dd ], [ %.pn43.pn.pn.i.i, %bb.dj ], [ %.pn43.pn.pn.i.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #24
  br label %bb.dm

bb.dk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120.i.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit102.i.i
  %i.pe = load ptr, ptr %i.lr, align 8, !tbaa !49 ; 4 uses
  %.not.i.i124.i.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i124.i.i, label %_ZN7testing15AssertionResultD2Ev.exit128.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !31 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i.i: ; preds = %bb.dl
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !27
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit128.i.i

_ZN7testing15AssertionResultD2Ev.exit128.i.i:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i.i, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.pk = load ptr, ptr %21, align 8, !tbaa !31   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.lp
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i.i
  %i.pm = load i64, ptr %i.lp, align 8, !tbaa !27
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %indvars.iv.next.i25.i, 21
  br i1 %exitcond.not.i26.i, label %.preheader.i27.i, label %bb.cp, !llvm.loop !1139

bb.dm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit123.i.i, %bb.cx
  %.pn43.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i.i, %_ZN7testing7MessageD2Ev.exit123.i.i ], [ %i.nv, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.po = load ptr, ptr %21, align 8, !tbaa !31   ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.lp
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i: ; preds = %bb.dm
  %i.pq = load i64, ptr %i.lp, align 8, !tbaa !27
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i.i
  %.pn43.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %lpad.phi37.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i.i ], [ %.pn43.pn.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i ], [ %.pn43.pn.pn.pn.pn.i.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.em

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i
  %i.ps = load ptr, ptr %16, align 8, !tbaa !31   ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.jd
  br i1 %i.pt, label %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i.i: ; preds = %bb.dn
  %i.pu = load i64, ptr %i.jd, align 8, !tbaa !27
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #26
  br label %_ZN12_GLOBAL__N_18CheckDecIjEEvT_PKcS3_S3_.exit.i

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i, %.preheader.i27.i
  %indvars.iv153.i = phi i64 [ 66, %.preheader.i27.i ], [ %indvars.iv.next154.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.pw = add nuw nsw i64 %indvars.iv153.i, 192
  %i.px = and i64 %i.pw, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, i8 0, i64 16, i1 false)
  store ptr %i.ls, ptr %27, align 8, !tbaa !22
  store i64 0, ptr %i.lt, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.py = sub nsw i64 0, %i.px
  %i.pz = getelementptr inbounds i8, ptr %i.lu, i64 %i.py
  br i1 %i.ij, label %.lr.ph.i.i.i151.i.i, label %.loopexit.i29.i

.lr.ph.i.i.i151.i.i:                              ; preds = %bb.do, %.lr.ph.i.i.i151.i.i
  %.02533.i.i.i152.i.i = phi i64 [ %i.qe, %.lr.ph.i.i.i151.i.i ], [ %i.t, %bb.do ] ; 3 uses
  %.02632.i.i.i153.i.i = phi ptr [ %i.qd, %.lr.ph.i.i.i151.i.i ], [ %i.lu, %bb.do ]
  %i.qa = urem i64 %.02533.i.i.i152.i.i, 10
  %i.qb = trunc nuw nsw i64 %i.qa to i8
  %i.qc = or disjoint i8 %i.qb, 48
  %i.qd = getelementptr inbounds i8, ptr %.02632.i.i.i153.i.i, i64 -1 ; 3 uses
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !27
  %i.qe = udiv i64 %.02533.i.i.i152.i.i, 10       ; 2 uses
  %i.qf = icmp samesign ugt i64 %.02533.i.i.i152.i.i, 99
  br i1 %i.qf, label %.lr.ph.i.i.i151.i.i, label %.loopexit.i29.i, !llvm.loop !1121

.loopexit.i29.i:                                  ; preds = %.lr.ph.i.i.i151.i.i, %bb.do
  %.026.lcssa.i.i.i142.i.i = phi ptr [ %i.lu, %bb.do ], [ %i.qd, %.lr.ph.i.i.i151.i.i ]
  %.025.lcssa.i.i.i143.i.i = phi i64 [ %i.t, %bb.do ], [ %i.qe, %.lr.ph.i.i.i151.i.i ]
  %i.qg = trunc nuw nsw i64 %.025.lcssa.i.i.i143.i.i to i8
  %i.qh = or disjoint i8 %i.qg, 48
  %i.qi = getelementptr inbounds i8, ptr %.026.lcssa.i.i.i142.i.i, i64 -1 ; 4 uses
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !27
  %i.qj = ptrtoint ptr %i.qi to i64               ; 2 uses
  %i.qk = ptrtoint ptr %i.pz to i64
  %i.ql = sub i64 %i.qj, %i.qk                    ; 3 uses
  %i.qm = icmp sgt i64 %i.ql, 0
  br i1 %i.qm, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i: ; preds = %.loopexit.i29.i
  %i.qn = sub nsw i64 0, %i.ql
  %i.qo = getelementptr inbounds i8, ptr %i.qi, i64 %i.qn ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qo, i8 32, i64 %i.ql, i1 false)
  %.pre113.i.i = ptrtoint ptr %i.qo to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i, %.loopexit.i29.i
  %.pre-phi114.i.i = phi i64 [ %.pre113.i.i, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i ], [ %i.qj, %.loopexit.i29.i ]
  %.4.i.i.i146.i.i = phi ptr [ %i.qo, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i.i ], [ %i.qi, %.loopexit.i29.i ]
  %i.qp = sub i64 %i.lv, %.pre-phi114.i.i
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 %i.qp, ptr nonnull %.4.i.i.i146.i.i)
          to label %bb.dp unwind label %.loopexit31.i.i

bb.dp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  %i.qq = load ptr, ptr %27, align 8, !tbaa !31   ; 3 uses
  %i.qr = load i64, ptr %i.lt, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  store ptr %i.lw, ptr %26, align 8, !tbaa !22, !alias.scope !1140
  %i.qs = icmp eq ptr %i.qq, null
  %i.qt = icmp ne i64 %i.qr, 0
  %or.cond.i.i156.i.i = and i1 %i.qs, %i.qt
  br i1 %or.cond.i.i156.i.i, label %.noexc.i159.i.i, label %bb.dq

.noexc.i159.i.i:                                  ; preds = %bb.dp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc160.i.i unwind label %.loopexit.split-lp.i32.i

.noexc160.i.i:                                    ; preds = %.noexc.i159.i.i
  unreachable

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24, !noalias !1140
  store i64 %i.qr, ptr %i.h, align 8, !tbaa !111, !noalias !1140
  %i.qu = icmp ugt i64 %i.qr, 15
  br i1 %i.qu, label %.noexc.i.i158.i.i, label %._crit_edge.i.i.i157.i.i

.noexc.i.i158.i.i:                                ; preds = %bb.dq
  %i.qv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc161.i.i unwind label %.loopexit31.i.i ; 2 uses

.noexc161.i.i:                                    ; preds = %.noexc.i.i158.i.i
  store ptr %i.qv, ptr %26, align 8, !tbaa !31, !alias.scope !1140
  %i.qw = load i64, ptr %i.h, align 8, !tbaa !111, !noalias !1140
  store i64 %i.qw, ptr %i.lw, align 8, !tbaa !27, !alias.scope !1140
  br label %._crit_edge.i.i.i157.i.i

._crit_edge.i.i.i157.i.i:                         ; preds = %.noexc161.i.i, %bb.dq
  %i.qx = phi ptr [ %i.qv, %.noexc161.i.i ], [ %i.lw, %bb.dq ] ; 2 uses
  switch i64 %i.qr, label %bb.ds [
    i64 1, label %bb.dr
    i64 0, label %bb.dt
  ]

bb.dr:                                            ; preds = %._crit_edge.i.i.i157.i.i
  %i.qy = load i8, ptr %i.qq, align 1, !tbaa !27
  store i8 %i.qy, ptr %i.qx, align 1, !tbaa !27
  br label %bb.dt

bb.ds:                                            ; preds = %._crit_edge.i.i.i157.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qx, ptr align 1 %i.qq, i64 %i.qr, i1 false)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge.i.i.i157.i.i
  %i.qz = load i64, ptr %i.h, align 8, !tbaa !111, !noalias !1140 ; 2 uses
  store i64 %i.qz, ptr %i.lx, align 8, !tbaa !25, !alias.scope !1140
  %i.ra = load ptr, ptr %26, align 8, !tbaa !31, !alias.scope !1140
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qz
  store i8 0, ptr %i.rb, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24, !noalias !1140
  %i.rc = load ptr, ptr %27, align 8, !tbaa !31   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.ls
  br i1 %i.rd, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i.i: ; preds = %bb.dt
  %i.re = load i64, ptr %i.ls, align 8, !tbaa !27
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.rg = trunc i64 %indvars.iv153.i to i32
  %i.rh = add i32 %i.rg, -64                      ; 2 uses
  %i.ri = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 256, ptr noundef nonnull @.str.309, i32 noundef %i.rh, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.rj = load i64, ptr %i.lx, align 8, !tbaa !25, !noalias !1143 ; 3 uses
  %i.rk = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.n) #24, !noalias !1143
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.du, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i

bb.du:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i
  %i.rm = icmp eq i64 %i.rj, 0
  br i1 %i.rm, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i: ; preds = %bb.du
  %i.rn = load ptr, ptr %26, align 8, !tbaa !31, !noalias !1143
  %bcmp.i.i.i.i168.i.i = call i32 @bcmp(ptr %i.rn, ptr nonnull align 1 dereferenceable(256) %i.n, i64 %i.rj), !noalias !1143
  %i.ro = icmp eq i32 %bcmp.i.i.i.i168.i.i, 0
  br i1 %i.ro, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i, %bb.du
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i unwind label %bb.dw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i unwind label %bb.dw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i
  %i.rp = load i8, ptr %28, align 8, !tbaa !37, !range !47, !noundef !48
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.ej, label %bb.dx

.loopexit31.i.i:                                  ; preds = %.noexc.i.i158.i.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i.i
  %lpad.loopexit.i30.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.loopexit.split-lp.i32.i:                         ; preds = %.noexc.i159.i.i
  %lpad.loopexit.split-lp.i33.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.split-lp.i32.i, %.loopexit31.i.i
  %lpad.phi.i31.i = phi { ptr, i32 } [ %lpad.loopexit.i30.i, %.loopexit31.i.i ], [ %lpad.loopexit.split-lp.i33.i, %.loopexit.split-lp.i32.i ]
  %i.rr = load ptr, ptr %27, align 8, !tbaa !31   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.ls
  br i1 %i.rs, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i: ; preds = %bb.dv
  %i.rt = load i64, ptr %i.ls, align 8, !tbaa !27
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i.i: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i

bb.dw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i.i
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.rw = load ptr, ptr %29, align 8, !tbaa !50
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rx, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i.i unwind label %bb.ed ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i.i: ; preds = %bb.dy
  %i.rz = load ptr, ptr %29, align 8, !tbaa !50
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.sa, i64 noundef %i.t)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit179.i.i unwind label %bb.ed ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_18CheckAllEm:bb.a
          cleanup
  br label %bb.gk

bb.fw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.fx unwind label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.aak = load ptr, ptr %9, align 8, !tbaa !50
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aal, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i: ; preds = %bb.fx
  %i.aan = load ptr, ptr %9, align 8, !tbaa !50
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aao, i32 noundef %i.s)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i:    ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i
  %i.aaq = load ptr, ptr %9, align 8, !tbaa !50
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aar, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i83.i unwind label %bb.gc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i83.i: ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i
  %i.aat = load ptr, ptr %9, align 8, !tbaa !50
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aau, ptr noundef nonnull @.str.311, i64 noundef 4)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i84.i unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i84.i:   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i83.i
  %i.aaw = load ptr, ptr %9, align 8, !tbaa !50
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aax, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i84.i
  %i.aaz = load ptr, ptr %9, align 8, !tbaa !50
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aba, i32 noundef %i.yc)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i:    ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.abc = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 2 uses
  %.not.i.i118.i85.i = icmp eq ptr %i.abc, null
  br i1 %.not.i.i118.i85.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i, label %bb.fy

bb.fy:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i

_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i: ; preds = %bb.fy, %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i
  %i.abe = phi ptr [ %i.abd, %bb.fy ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit117.i.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.abe)
          to label %bb.fz unwind label %bb.ge

bb.fz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ga unwind label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.abf = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i120.i.i = icmp eq ptr %i.abf, null
  br i1 %.not.i.i120.i.i, label %_ZN7testing7MessageD2Ev.exit122.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121.i.i: ; preds = %bb.ga
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !9
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = load ptr, ptr %i.abh, align 8
  call void %i.abi(ptr noundef nonnull align 8 dereferenceable(128) %i.abf) #24, !inline_history !1157
  br label %_ZN7testing7MessageD2Ev.exit122.i.i

_ZN7testing7MessageD2Ev.exit122.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121.i.i, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.gi

bb.gb:                                            ; preds = %bb.fw
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit125.i.i

bb.gc:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i84.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i83.i, %_ZN7testing7MessagelsIiEERS0_RKT_.exit110.i.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i.i, %bb.fx
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gd:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i.i
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.ge:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit119.i.i
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gf:                                            ; preds = %bb.fz
  %i.abn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.pn43.i86.i = phi { ptr, i32 } [ %i.abn, %bb.gf ], [ %i.abm, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gd, %bb.gc
  %.pn43.pn.pn.i82.i = phi { ptr, i32 } [ %i.abk, %bb.gc ], [ %.pn43.i86.i, %bb.gg ], [ %i.abl, %bb.gd ] ; 2 uses
  %i.abo = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i123.i.i = icmp eq ptr %i.abo, null
  br i1 %.not.i.i123.i.i, label %_ZN7testing7MessageD2Ev.exit125.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i: ; preds = %bb.gh
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !9
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abr = load ptr, ptr %i.abq, align 8
  call void %i.abr(ptr noundef nonnull align 8 dereferenceable(128) %i.abo) #24, !inline_history !1157
  br label %_ZN7testing7MessageD2Ev.exit125.i.i

_ZN7testing7MessageD2Ev.exit125.i.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i, %bb.gh, %bb.gb
  %.pn43.pn.pn.pn.i81.i = phi { ptr, i32 } [ %i.abj, %bb.gb ], [ %.pn43.pn.pn.i82.i, %bb.gh ], [ %.pn43.pn.pn.i82.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  br label %bb.gk

bb.gi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit122.i.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i.i
  %i.abs = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 4 uses
  %.not.i.i126.i.i = icmp eq ptr %i.abs, null
  br i1 %.not.i.i126.i.i, label %_ZN7testing15AssertionResultD2Ev.exit130.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !31 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 16 ; 2 uses
  %i.abv = icmp eq ptr %i.abt, %i.abu
  br i1 %i.abv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127.i.i: ; preds = %bb.gj
  %i.abw = load i64, ptr %i.abu, align 8, !tbaa !27
  %i.abx = add i64 %i.abw, 1
  call void @_ZdlPvm(ptr noundef %i.abt, i64 noundef %i.abx) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.abs, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit130.i.i

_ZN7testing15AssertionResultD2Ev.exit130.i.i:     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128.i.i, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.aby = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.xs
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit130.i.i
  %i.aca = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit130.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %indvars.iv.next.i89.i = add nuw nsw i64 %indvars.iv.i77.i, 1 ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %indvars.iv.next.i89.i, 21
  br i1 %exitcond.not.i90.i, label %.preheader.i91.i, label %bb.fl, !llvm.loop !1166

bb.gk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit125.i.i, %bb.fv
  %.pn43.pn.pn.pn.pn.i80.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i81.i, %_ZN7testing7MessageD2Ev.exit125.i.i ], [ %i.aaj, %bb.fv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.acc = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.acd = icmp eq ptr %i.acc, %i.xs
  br i1 %i.acd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i: ; preds = %bb.gk
  %i.ace = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.acf = add i64 %i.ace, 1
  call void @_ZdlPvm(ptr noundef %i.acc, i64 noundef %i.acf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133.i.i: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i.i
  %.pn43.pn.pn.pn.pn.pn.i79.i = phi { ptr, i32 } [ %lpad.phi36.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i.i ], [ %.pn43.pn.pn.pn.pn.i80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131.i.i ], [ %.pn43.pn.pn.pn.pn.i80.i, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.hm

bb.gl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i110.i
  %i.acg = load ptr, ptr %1, align 8, !tbaa !31   ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.vg
  br i1 %i.ach, label %_ZN12_GLOBAL__N_113CheckHexDec32Ej.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134.i.i: ; preds = %bb.gl
  %i.aci = load i64, ptr %i.vg, align 8, !tbaa !27
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.acj) #26
  br label %_ZN12_GLOBAL__N_113CheckHexDec32Ej.exit

bb.gm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i110.i, %.preheader.i91.i
  %indvars.iv157.i = phi i64 [ 66, %.preheader.i91.i ], [ %indvars.iv.next158.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i110.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ack = add nuw nsw i64 %indvars.iv157.i, 192
  %i.acl = and i64 %i.ack, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, i8 0, i64 16, i1 false)
  store ptr %i.xv, ptr %12, align 8, !tbaa !22
  store i64 0, ptr %i.xw, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.acm = sub nsw i64 0, %i.acl
  %i.acn = getelementptr inbounds i8, ptr %i.xx, i64 %i.acm
  br i1 %i.ud, label %.lr.ph.i.i.i154.i.i, label %._crit_edge.i.i.i144.i.i

.lr.ph.i.i.i154.i.i:                              ; preds = %bb.gm, %.lr.ph.i.i.i154.i.i
  %.02533.i.i.i155.i.i = phi i64 [ %i.acs, %.lr.ph.i.i.i154.i.i ], [ %i.tx, %bb.gm ] ; 3 uses
  %.02632.i.i.i156.i.i = phi ptr [ %i.acr, %.lr.ph.i.i.i154.i.i ], [ %i.xx, %bb.gm ]
  %i.aco = urem i64 %.02533.i.i.i155.i.i, 10
  %i.acp = trunc nuw nsw i64 %i.aco to i8
  %i.acq = or disjoint i8 %i.acp, 48
  %i.acr = getelementptr inbounds i8, ptr %.02632.i.i.i156.i.i, i64 -1 ; 3 uses
  store i8 %i.acq, ptr %i.acr, align 1, !tbaa !27
  %i.acs = udiv i64 %.02533.i.i.i155.i.i, 10      ; 2 uses
  %i.act = icmp samesign ugt i64 %.02533.i.i.i155.i.i, 99
  br i1 %i.act, label %.lr.ph.i.i.i154.i.i, label %._crit_edge.i.i.i144.i.i, !llvm.loop !1121

._crit_edge.i.i.i144.i.i:                         ; preds = %.lr.ph.i.i.i154.i.i, %bb.gm
  %.026.lcssa.i.i.i145.i.i = phi ptr [ %i.xx, %bb.gm ], [ %i.acr, %.lr.ph.i.i.i154.i.i ] ; 2 uses
  %.025.lcssa.i.i.i146.i.i = phi i64 [ %i.tx, %bb.gm ], [ %i.acs, %.lr.ph.i.i.i154.i.i ]
  %i.acu = trunc nuw nsw i64 %.025.lcssa.i.i.i146.i.i to i8
  %i.acv = or disjoint i8 %i.acu, 48
  %i.acw = getelementptr inbounds i8, ptr %.026.lcssa.i.i.i145.i.i, i64 -1 ; 2 uses
  store i8 %i.acv, ptr %i.acw, align 1, !tbaa !27
  br i1 %.not.not.i.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge.i.i.i144.i.i
  %i.acx = getelementptr inbounds i8, ptr %.026.lcssa.i.i.i145.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.acx, align 1, !tbaa !27
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %._crit_edge.i.i.i144.i.i
  %.1.i.i.i147.i.i = phi ptr [ %i.acx, %bb.gn ], [ %i.acw, %._crit_edge.i.i.i144.i.i ] ; 3 uses
  %i.acy = ptrtoint ptr %.1.i.i.i147.i.i to i64   ; 2 uses
  %i.acz = ptrtoint ptr %i.acn to i64
  %i.ada = sub i64 %i.acy, %i.acz                 ; 3 uses
  %i.adb = icmp sgt i64 %i.ada, 0
  br i1 %i.adb, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i: ; preds = %bb.go
  %i.adc = sub nsw i64 0, %i.ada
  %i.add = getelementptr inbounds i8, ptr %.1.i.i.i147.i.i, i64 %i.adc ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.add, i8 32, i64 %i.ada, i1 false)
  %.pre.i = ptrtoint ptr %i.add to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i, %bb.go
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i ], [ %i.acy, %bb.go ]
  %.4.i.i.i149.i.i = phi ptr [ %i.add, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i150.i.i ], [ %.1.i.i.i147.i.i, %bb.go ]
  %i.ade = sub i64 %i.xy, %.pre-phi.i
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.ade, ptr nonnull %.4.i.i.i149.i.i)
          to label %bb.gp unwind label %.loopexit.i94.i

bb.gp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.adf = load ptr, ptr %12, align 8, !tbaa !31  ; 3 uses
  %i.adg = load i64, ptr %i.xw, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  store ptr %i.xz, ptr %11, align 8, !tbaa !22, !alias.scope !1167
  %i.adh = icmp eq ptr %i.adf, null
  %i.adi = icmp ne i64 %i.adg, 0
  %or.cond.i.i159.i.i = and i1 %i.adh, %i.adi
  br i1 %or.cond.i.i159.i.i, label %.noexc.i162.i.i, label %bb.gq

.noexc.i162.i.i:                                  ; preds = %bb.gp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc163.i.i unwind label %.loopexit.split-lp.i112.i

.noexc163.i.i:                                    ; preds = %.noexc.i162.i.i
  unreachable

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1167
  store i64 %i.adg, ptr %i.a, align 8, !tbaa !111, !noalias !1167
  %i.adj = icmp ugt i64 %i.adg, 15
  br i1 %i.adj, label %.noexc.i.i161.i.i, label %._crit_edge.i.i.i160.i.i

.noexc.i.i161.i.i:                                ; preds = %bb.gq
  %i.adk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc164.i.i unwind label %.loopexit.i94.i ; 2 uses

.noexc164.i.i:                                    ; preds = %.noexc.i.i161.i.i
  store ptr %i.adk, ptr %11, align 8, !tbaa !31, !alias.scope !1167
  %i.adl = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1167
  store i64 %i.adl, ptr %i.xz, align 8, !tbaa !27, !alias.scope !1167
  br label %._crit_edge.i.i.i160.i.i

._crit_edge.i.i.i160.i.i:                         ; preds = %.noexc164.i.i, %bb.gq
  %i.adm = phi ptr [ %i.adk, %.noexc164.i.i ], [ %i.xz, %bb.gq ] ; 2 uses
  switch i64 %i.adg, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %bb.gt
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i.i160.i.i
  %i.adn = load i8, ptr %i.adf, align 1, !tbaa !27
  store i8 %i.adn, ptr %i.adm, align 1, !tbaa !27
  br label %bb.gt

bb.gs:                                            ; preds = %._crit_edge.i.i.i160.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adm, ptr align 1 %i.adf, i64 %i.adg, i1 false)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %._crit_edge.i.i.i160.i.i
  %i.ado = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1167 ; 2 uses
  store i64 %i.ado, ptr %i.ya, align 8, !tbaa !25, !alias.scope !1167
  %i.adp = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1167
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ado
  store i8 0, ptr %i.adq, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1167
  %i.adr = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.ads = icmp eq ptr %i.adr, %i.xv
  br i1 %i.ads, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i.i: ; preds = %bb.gt
  %i.adt = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.adu = add i64 %i.adt, 1
  call void @_ZdlPvm(ptr noundef %i.adr, i64 noundef %i.adu) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.adv = trunc i64 %indvars.iv157.i to i32
  %i.adw = add i32 %i.adv, -64                    ; 2 uses
  %i.adx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 256, ptr noundef nonnull @.str.312, i32 noundef %i.adw, i32 noundef %i.s) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ady = load i64, ptr %i.ya, align 8, !tbaa !25, !noalias !1170 ; 3 uses
  %i.adz = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.g) #24, !noalias !1170
  %i.aea = icmp eq i64 %i.ady, %i.adz
  br i1 %i.aea, label %bb.gu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i

bb.gu:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i
  %i.aeb = icmp eq i64 %i.ady, 0
  br i1 %i.aeb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i: ; preds = %bb.gu
  %i.aec = load ptr, ptr %11, align 8, !tbaa !31, !noalias !1170
  %bcmp.i.i.i.i171.i.i = call i32 @bcmp(ptr %i.aec, ptr nonnull align 1 dereferenceable(256) %i.g, i64 %i.ady), !noalias !1170
  %i.aed = icmp eq i32 %bcmp.i.i.i.i171.i.i, 0
  br i1 %i.aed, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i, %bb.gu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i unwind label %bb.gw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i170.i.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit168.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i unwind label %bb.gw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i
  %i.aee = load i8, ptr %13, align 8, !tbaa !37, !range !47, !noundef !48
  %i.aef = trunc nuw i8 %i.aee to i1
  br i1 %i.aef, label %bb.hj, label %bb.gx

.loopexit.i94.i:                                  ; preds = %.noexc.i.i161.i.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i148.i.i
  %lpad.loopexit.i95.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp.i112.i:                        ; preds = %.noexc.i162.i.i
  %lpad.loopexit.split-lp.i113.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gv:                                            ; preds = %.loopexit.split-lp.i112.i, %.loopexit.i94.i
  %lpad.phi.i96.i = phi { ptr, i32 } [ %lpad.loopexit.i95.i, %.loopexit.i94.i ], [ %lpad.loopexit.split-lp.i113.i, %.loopexit.split-lp.i112.i ]
  %i.aeg = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.xv
  br i1 %i.aeh, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit178.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i: ; preds = %bb.gv
  %i.aei = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aej) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit178.i.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit178.i.i: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.i97.i

bb.gw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i169.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i172.i.i
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.gx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit175.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.gy unwind label %bb.hc

bb.gy:                                            ; preds = %bb.gx
  %i.ael = load ptr, ptr %14, align 8, !tbaa !50
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a

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
  %i.dt = load ptr, ptr %52, align 8, !tbaa !31   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ci
  br i1 %i.du, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i: ; preds = %bb.ae
  %i.dv = load i64, ptr %i.ci, align 8, !tbaa !27
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i82.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i85.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit88.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load ptr, ptr %54, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i:   ; preds = %bb.ah
  %i.eb = load ptr, ptr %54, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i unwind label %bb.am ; 0 uses

_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i:       ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  %i.ee = load ptr, ptr %i.cm, align 8, !tbaa !49 ; 2 uses
  %.not.i.i96.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i96.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i

_ZNK7testing15AssertionResult15failure_messageEv.exit97.i: ; preds = %bb.ai, %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i
  %i.eg = phi ptr [ %i.ef, %bb.ai ], [ @.str.57, %_ZN7testing7MessagelsIyEERS0_RKT_.exit95.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %55, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef %i.eg)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  %i.eh = load ptr, ptr %54, align 8, !tbaa !50   ; 3 uses
  %.not.i.i98.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i98.i, label %_ZN7testing7MessageD2Ev.exit100.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99.i: ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(128) %i.eh) #24, !inline_history !1184
  br label %_ZN7testing7MessageD2Ev.exit100.i

_ZN7testing7MessageD2Ev.exit100.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i99.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  br label %bb.ar

bb.al:                                            ; preds = %bb.ag
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit103.i

bb.am:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit93.i, %bb.ah
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit97.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn46.i = phi { ptr, i32 } [ %i.eo, %bb.ao ], [ %i.en, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn46.pn.i = phi { ptr, i32 } [ %.pn46.i, %bb.ap ], [ %i.em, %bb.am ] ; 2 uses
  %i.ep = load ptr, ptr %54, align 8, !tbaa !50   ; 3 uses
  %.not.i.i101.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i101.i, label %_ZN7testing7MessageD2Ev.exit103.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i: ; preds = %bb.aq
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(128) %i.ep) #24, !inline_history !1184
  br label %_ZN7testing7MessageD2Ev.exit103.i

_ZN7testing7MessageD2Ev.exit103.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i, %bb.aq, %bb.al
  %.pn46.pn.pn.i = phi { ptr, i32 } [ %i.el, %bb.al ], [ %.pn46.pn.i, %bb.aq ], [ %.pn46.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #24
  br label %bb.at

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit100.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit88.i
  %i.et = load ptr, ptr %i.cm, align 8, !tbaa !49 ; 4 uses
  %.not.i.i104.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i104.i, label %_ZN7testing15AssertionResultD2Ev.exit108.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !31 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105.i: ; preds = %bb.as
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !27
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105.i
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit108.i

_ZN7testing15AssertionResultD2Ev.exit108.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  %i.ez = load ptr, ptr %51, align 8, !tbaa !31   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ck
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit108.i
  %i.fb = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 21
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.x, !llvm.loop !1193

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit103.i, %bb.af
  %.pn46.pn.pn.pn.i = phi { ptr, i32 } [ %.pn46.pn.pn.i, %_ZN7testing7MessageD2Ev.exit103.i ], [ %i.dx, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  %i.fd = load ptr, ptr %51, align 8, !tbaa !31   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ck
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i: ; preds = %bb.at
  %i.ff = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i
  %.pn46.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn46.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i ], [ %lpad.phi24.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit91.i ], [ %.pn46.pn.pn.pn.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  br label %bb.bs

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i
  %i.fh = load ptr, ptr %46, align 8, !tbaa !31   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.aa
  br i1 %i.fi, label %_ZN12_GLOBAL__N_18CheckHexIyEEvT_PKcS3_S3_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %bb.au
  %i.fj = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #26
  br label %_ZN12_GLOBAL__N_18CheckHexIyEEvT_PKcS3_S3_.exit

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i, %.preheader.i
  %indvars.iv = phi i64 [ 66, %.preheader.i ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  %i.fl = add nuw nsw i64 %indvars.iv, 192
  %i.fm = and i64 %i.fl, 255
  %i.fn = or disjoint i64 %i.fm, 8192
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  store ptr %i.cn, ptr %57, align 8, !tbaa !22
  store i64 0, ptr %i.co, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2026052613AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %57, i64 %0, i64 %i.fn)
          to label %bb.aw unwind label %.loopexit.i

bb.aw:                                            ; preds = %bb.av
  %i.fo = load ptr, ptr %57, align 8, !tbaa !31   ; 3 uses
  %i.fp = load i64, ptr %i.co, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  store ptr %i.cp, ptr %56, align 8, !tbaa !22, !alias.scope !1194
  %i.fq = icmp eq ptr %i.fo, null
  %i.fr = icmp ne i64 %i.fp, 0
  %or.cond.i.i121.i = and i1 %i.fq, %i.fr
  br i1 %or.cond.i.i121.i, label %.noexc.i124.i, label %bb.ax

.noexc.i124.i:                                    ; preds = %bb.aw
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc125.i unwind label %.loopexit.split-lp.i

.noexc125.i:                                      ; preds = %.noexc.i124.i
  unreachable

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #24, !noalias !1194
  store i64 %i.fp, ptr %i.s, align 8, !tbaa !111, !noalias !1194
  %i.fs = icmp ugt i64 %i.fp, 15
  br i1 %i.fs, label %.noexc.i.i123.i, label %._crit_edge.i.i.i122.i

.noexc.i.i123.i:                                  ; preds = %bb.ax
  %i.ft = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc126.i unwind label %.loopexit.i ; 2 uses

.noexc126.i:                                      ; preds = %.noexc.i.i123.i
  store ptr %i.ft, ptr %56, align 8, !tbaa !31, !alias.scope !1194
  %i.fu = load i64, ptr %i.s, align 8, !tbaa !111, !noalias !1194
  store i64 %i.fu, ptr %i.cp, align 8, !tbaa !27, !alias.scope !1194
  br label %._crit_edge.i.i.i122.i

._crit_edge.i.i.i122.i:                           ; preds = %.noexc126.i, %bb.ax
  %i.fv = phi ptr [ %i.ft, %.noexc126.i ], [ %i.cp, %bb.ax ] ; 2 uses
  switch i64 %i.fp, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i122.i
  %i.fw = load i8, ptr %i.fo, align 1, !tbaa !27
  store i8 %i.fw, ptr %i.fv, align 1, !tbaa !27
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i.i122.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr align 1 %i.fo, i64 %i.fp, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i122.i
  %i.fx = load i64, ptr %i.s, align 8, !tbaa !111, !noalias !1194 ; 2 uses
  store i64 %i.fx, ptr %i.cq, align 8, !tbaa !25, !alias.scope !1194
  %i.fy = load ptr, ptr %56, align 8, !tbaa !31, !alias.scope !1194
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  store i8 0, ptr %i.fz, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #24, !noalias !1194
  %i.ga = load ptr, ptr %57, align 8, !tbaa !31   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.cn
  br i1 %i.gb, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i: ; preds = %bb.ba
  %i.gc = load i64, ptr %i.cn, align 8, !tbaa !27
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  %i.ge = trunc i64 %indvars.iv to i32
  %i.gf = add i32 %i.ge, -64
  %i.gg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 256, ptr noundef nonnull @.str.292, i32 noundef %i.gf, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24
  %i.gh = load i64, ptr %i.cq, align 8, !tbaa !25, !noalias !1197 ; 3 uses
  %i.gi = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.v) #24, !noalias !1197
  %i.gj = icmp eq i64 %i.gh, %i.gi
  br i1 %i.gj, label %bb.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i

bb.bb:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i
  %i.gk = icmp eq i64 %i.gh, 0
  br i1 %i.gk, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i: ; preds = %bb.bb
  %i.gl = load ptr, ptr %56, align 8, !tbaa !31, !noalias !1197
  %bcmp.i.i.i.i133.i = call i32 @bcmp(ptr %i.gl, ptr nonnull align 1 dereferenceable(256) %i.v, i64 %i.gh), !noalias !1197
  %i.gm = icmp eq i32 %bcmp.i.i.i.i133.i, 0
  br i1 %i.gm, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i, %bb.bb
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i unwind label %bb.bd

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i132.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit130.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %56)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i unwind label %bb.bd

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i
  %i.gn = load i8, ptr %58, align 8, !tbaa !37, !range !47, !noundef !48
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.bp, label %bb.be

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
  %i.gp = load ptr, ptr %57, align 8, !tbaa !31   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.cn
  br i1 %i.gq, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138.i: ; preds = %bb.bc
  %i.gr = load i64, ptr %i.cn, align 8, !tbaa !27
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit140.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i

bb.bd:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i131.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i134.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.be:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit137.i
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.gu = load ptr, ptr %59, align 8, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit142.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit142.i:  ; preds = %bb.bf
  %i.gx = load ptr, ptr %59, align 8, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i unwind label %bb.bk ; 0 uses

_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i:      ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit142.i
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24
  %i.ha = load ptr, ptr %i.cr, align 8, !tbaa !49 ; 2 uses
  %.not.i.i145.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i145.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit146.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit146.i

_ZNK7testing15AssertionResult15failure_messageEv.exit146.i: ; preds = %bb.bg, %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i
  %i.hc = phi ptr [ %i.hb, %bb.bg ], [ @.str.57, %_ZN7testing7MessagelsIyEERS0_RKT_.exit144.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 548, ptr noundef %i.hc)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit146.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  %i.hd = load ptr, ptr %59, align 8, !tbaa !50   ; 3 uses
  %.not.i.i147.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i147.i, label %_ZN7testing7MessageD2Ev.exit149.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148.i: ; preds = %bb.bi
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(128) %i.hd) #24, !inline_history !1184
  br label %_ZN7testing7MessageD2Ev.exit149.i

_ZN7testing7MessageD2Ev.exit149.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #24
  br label %bb.bp

bb.bj:                                            ; preds = %bb.be
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit152.i
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a
          cleanup
  br label %bb.dm

bb.cy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  %i.ny = load ptr, ptr %39, align 8, !tbaa !50
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i:  ; preds = %bb.cz
  %i.ob = load ptr, ptr %39, align 8, !tbaa !50
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i:      ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i
  %i.oe = load ptr, ptr %39, align 8, !tbaa !50
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i
  %i.oh = load ptr, ptr %39, align 8, !tbaa !50
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull @.str.294, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.ok = load ptr, ptr %39, align 8, !tbaa !50
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i unwind label %bb.de ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i:  ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.on = load ptr, ptr %39, align 8, !tbaa !50
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, i32 noundef %i.nj)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.df ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.oq = load ptr, ptr %i.lt, align 8, !tbaa !49 ; 2 uses
  %.not.i.i116.i = icmp eq ptr %i.oq, null
  br i1 %.not.i.i116.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i, label %bb.da

bb.da:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i

_ZNK7testing15AssertionResult15failure_messageEv.exit117.i: ; preds = %bb.da, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  %i.os = phi ptr [ %i.or, %bb.da ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.os)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  %i.ot = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i118.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i118.i, label %_ZN7testing7MessageD2Ev.exit120.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i: ; preds = %bb.dc
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !9
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(128) %i.ot) #24, !inline_history !1211
  br label %_ZN7testing7MessageD2Ev.exit120.i

_ZN7testing7MessageD2Ev.exit120.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.dk

bb.dd:                                            ; preds = %bb.cy
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit123.i

bb.de:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN7testing7MessagelsIyEERS0_RKT_.exit109.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit107.i, %bb.cz
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.df:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit114.i
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit117.i
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.db
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #24
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn43.i = phi { ptr, i32 } [ %i.pb, %bb.dh ], [ %i.pa, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.df, %bb.de
  %.pn43.pn.pn.i = phi { ptr, i32 } [ %i.oy, %bb.de ], [ %.pn43.i, %bb.di ], [ %i.oz, %bb.df ] ; 2 uses
  %i.pc = load ptr, ptr %39, align 8, !tbaa !50   ; 3 uses
  %.not.i.i121.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i121.i, label %_ZN7testing7MessageD2Ev.exit123.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i: ; preds = %bb.dj
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !9
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8
  call void %i.pf(ptr noundef nonnull align 8 dereferenceable(128) %i.pc) #24, !inline_history !1211
  br label %_ZN7testing7MessageD2Ev.exit123.i

_ZN7testing7MessageD2Ev.exit123.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i, %bb.dj, %bb.dd
  %.pn43.pn.pn.pn.i = phi { ptr, i32 } [ %i.ox, %bb.dd ], [ %.pn43.pn.pn.i, %bb.dj ], [ %.pn43.pn.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #24
  br label %bb.dm

bb.dk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit120.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit102.i
  %i.pg = load ptr, ptr %i.lt, align 8, !tbaa !49 ; 4 uses
  %.not.i.i124.i = icmp eq ptr %i.pg, null
  br i1 %.not.i.i124.i, label %_ZN7testing15AssertionResultD2Ev.exit128.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !31 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 16 ; 2 uses
  %i.pj = icmp eq ptr %i.ph, %i.pi
  br i1 %i.pj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i: ; preds = %bb.dl
  %i.pk = load i64, ptr %i.pi, align 8, !tbaa !27
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pl) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i125.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit128.i

_ZN7testing15AssertionResultD2Ev.exit128.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i126.i, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.pm = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.lr
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i
  %i.po = load i64, ptr %i.lr, align 8, !tbaa !27
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28: ; preds = %_ZN7testing15AssertionResultD2Ev.exit128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 21
  br i1 %exitcond.not.i30, label %.preheader.i31, label %bb.cp, !llvm.loop !1220

bb.dm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit123.i, %bb.cx
  %.pn43.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i, %_ZN7testing7MessageD2Ev.exit123.i ], [ %i.nx, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %i.pq = load ptr, ptr %36, align 8, !tbaa !31   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.lr
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i: ; preds = %bb.dm
  %i.ps = load i64, ptr %i.lr, align 8, !tbaa !27
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i
  %.pn43.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.phi37.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit105.i ], [ %.pn43.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i ], [ %.pn43.pn.pn.pn.pn.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.em

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i
  %i.pu = load ptr, ptr %31, align 8, !tbaa !31   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.jf
  br i1 %i.pv, label %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132.i: ; preds = %bb.dn
  %i.pw = load i64, ptr %i.jf, align 8, !tbaa !27
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #26
  br label %_ZN12_GLOBAL__N_18CheckDecIyEEvT_PKcS3_S3_.exit

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, %.preheader.i31
  %indvars.iv209 = phi i64 [ 66, %.preheader.i31 ], [ %indvars.iv.next210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.py = add nuw nsw i64 %indvars.iv209, 192
  %i.pz = and i64 %i.py, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, i8 0, i64 16, i1 false)
  store ptr %i.lu, ptr %42, align 8, !tbaa !22
  store i64 0, ptr %i.lv, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  %i.qa = sub nsw i64 0, %i.pz
  %i.qb = getelementptr inbounds i8, ptr %i.lw, i64 %i.qa
  br i1 %i.il, label %.lr.ph.i.i.i151.i, label %.loopexit.i33

.lr.ph.i.i.i151.i:                                ; preds = %bb.do, %.lr.ph.i.i.i151.i
  %.02533.i.i.i152.i = phi i64 [ %i.qg, %.lr.ph.i.i.i151.i ], [ %0, %bb.do ] ; 3 uses
  %.02632.i.i.i153.i = phi ptr [ %i.qf, %.lr.ph.i.i.i151.i ], [ %i.lw, %bb.do ]
  %i.qc = urem i64 %.02533.i.i.i152.i, 10
  %i.qd = trunc nuw nsw i64 %i.qc to i8
  %i.qe = or disjoint i8 %i.qd, 48
  %i.qf = getelementptr inbounds i8, ptr %.02632.i.i.i153.i, i64 -1 ; 3 uses
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !27
  %i.qg = udiv i64 %.02533.i.i.i152.i, 10         ; 2 uses
  %i.qh = icmp ugt i64 %.02533.i.i.i152.i, 99
  br i1 %i.qh, label %.lr.ph.i.i.i151.i, label %.loopexit.i33, !llvm.loop !1121

.loopexit.i33:                                    ; preds = %.lr.ph.i.i.i151.i, %bb.do
  %.026.lcssa.i.i.i142.i = phi ptr [ %i.lw, %bb.do ], [ %i.qf, %.lr.ph.i.i.i151.i ]
  %.025.lcssa.i.i.i143.i = phi i64 [ %0, %bb.do ], [ %i.qg, %.lr.ph.i.i.i151.i ]
  %i.qi = trunc nuw nsw i64 %.025.lcssa.i.i.i143.i to i8
  %i.qj = or disjoint i8 %i.qi, 48
  %i.qk = getelementptr inbounds i8, ptr %.026.lcssa.i.i.i142.i, i64 -1 ; 4 uses
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !27
  %i.ql = ptrtoint ptr %i.qk to i64               ; 2 uses
  %i.qm = ptrtoint ptr %i.qb to i64
  %i.qn = sub i64 %i.ql, %i.qm                    ; 3 uses
  %i.qo = icmp sgt i64 %i.qn, 0
  br i1 %i.qo, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i:   ; preds = %.loopexit.i33
  %i.qp = sub nsw i64 0, %i.qn
  %i.qq = getelementptr inbounds i8, ptr %i.qk, i64 %i.qp ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qq, i8 32, i64 %i.qn, i1 false)
  %.pre113.i = ptrtoint ptr %i.qq to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i, %.loopexit.i33
  %.pre-phi114.i = phi i64 [ %.pre113.i, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i ], [ %i.ql, %.loopexit.i33 ]
  %.4.i.i.i146.i = phi ptr [ %i.qq, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i147.i ], [ %i.qk, %.loopexit.i33 ]
  %i.qr = sub i64 %i.lx, %.pre-phi114.i
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %42, i64 %i.qr, ptr nonnull %.4.i.i.i146.i)
          to label %bb.dp unwind label %.loopexit31.i

bb.dp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  %i.qs = load ptr, ptr %42, align 8, !tbaa !31   ; 3 uses
  %i.qt = load i64, ptr %i.lv, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  store ptr %i.ly, ptr %41, align 8, !tbaa !22, !alias.scope !1221
  %i.qu = icmp eq ptr %i.qs, null
  %i.qv = icmp ne i64 %i.qt, 0
  %or.cond.i.i156.i = and i1 %i.qu, %i.qv
  br i1 %or.cond.i.i156.i, label %.noexc.i159.i, label %bb.dq

.noexc.i159.i:                                    ; preds = %bb.dp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc160.i unwind label %.loopexit.split-lp.i36

.noexc160.i:                                      ; preds = %.noexc.i159.i
  unreachable

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24, !noalias !1221
  store i64 %i.qt, ptr %i.l, align 8, !tbaa !111, !noalias !1221
  %i.qw = icmp ugt i64 %i.qt, 15
  br i1 %i.qw, label %.noexc.i.i158.i, label %._crit_edge.i.i.i157.i

.noexc.i.i158.i:                                  ; preds = %bb.dq
  %i.qx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc161.i unwind label %.loopexit31.i ; 2 uses

.noexc161.i:                                      ; preds = %.noexc.i.i158.i
  store ptr %i.qx, ptr %41, align 8, !tbaa !31, !alias.scope !1221
  %i.qy = load i64, ptr %i.l, align 8, !tbaa !111, !noalias !1221
  store i64 %i.qy, ptr %i.ly, align 8, !tbaa !27, !alias.scope !1221
  br label %._crit_edge.i.i.i157.i

._crit_edge.i.i.i157.i:                           ; preds = %.noexc161.i, %bb.dq
  %i.qz = phi ptr [ %i.qx, %.noexc161.i ], [ %i.ly, %bb.dq ] ; 2 uses
  switch i64 %i.qt, label %bb.ds [
    i64 1, label %bb.dr
    i64 0, label %bb.dt
  ]

bb.dr:                                            ; preds = %._crit_edge.i.i.i157.i
  %i.ra = load i8, ptr %i.qs, align 1, !tbaa !27
  store i8 %i.ra, ptr %i.qz, align 1, !tbaa !27
  br label %bb.dt

bb.ds:                                            ; preds = %._crit_edge.i.i.i157.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qz, ptr align 1 %i.qs, i64 %i.qt, i1 false)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge.i.i.i157.i
  %i.rb = load i64, ptr %i.l, align 8, !tbaa !111, !noalias !1221 ; 2 uses
  store i64 %i.rb, ptr %i.lz, align 8, !tbaa !25, !alias.scope !1221
  %i.rc = load ptr, ptr %41, align 8, !tbaa !31, !alias.scope !1221
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rb
  store i8 0, ptr %i.rd, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24, !noalias !1221
  %i.re = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.lu
  br i1 %i.rf, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i: ; preds = %bb.dt
  %i.rg = load i64, ptr %i.lu, align 8, !tbaa !27
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.rh) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  %i.ri = trunc i64 %indvars.iv209 to i32
  %i.rj = add i32 %i.ri, -64                      ; 2 uses
  %i.rk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 256, ptr noundef nonnull @.str.295, i32 noundef %i.rj, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.rl = load i64, ptr %i.lz, align 8, !tbaa !25, !noalias !1224 ; 3 uses
  %i.rm = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.r) #24, !noalias !1224
  %i.rn = icmp eq i64 %i.rl, %i.rm
  br i1 %i.rn, label %bb.du, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i

bb.du:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i
  %i.ro = icmp eq i64 %i.rl, 0
  br i1 %i.ro, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i: ; preds = %bb.du
  %i.rp = load ptr, ptr %41, align 8, !tbaa !31, !noalias !1224
  %bcmp.i.i.i.i168.i = call i32 @bcmp(ptr %i.rp, ptr nonnull align 1 dereferenceable(256) %i.r, i64 %i.rl), !noalias !1224
  %i.rq = icmp eq i32 %bcmp.i.i.i.i168.i, 0
  br i1 %i.rq, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i, %bb.du
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i unwind label %bb.dw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i167.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit165.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %43, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i unwind label %bb.dw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i
  %i.rr = load i8, ptr %43, align 8, !tbaa !37, !range !47, !noundef !48
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.ej, label %bb.dx

.loopexit31.i:                                    ; preds = %.noexc.i.i158.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i145.i
  %lpad.loopexit.i34 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

.loopexit.split-lp.i36:                           ; preds = %.noexc.i159.i
  %lpad.loopexit.split-lp.i37 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.split-lp.i36, %.loopexit31.i
  %lpad.phi.i35 = phi { ptr, i32 } [ %lpad.loopexit.i34, %.loopexit31.i ], [ %lpad.loopexit.split-lp.i37, %.loopexit.split-lp.i36 ]
  %i.rt = load ptr, ptr %42, align 8, !tbaa !31   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.lu
  br i1 %i.ru, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i: ; preds = %bb.dv
  %i.rv = load i64, ptr %i.lu, align 8, !tbaa !27
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit175.i: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i

bb.dw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i166.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i169.i
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  %i.ry = load ptr, ptr %44, align 8, !tbaa !50
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rz, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i unwind label %bb.ed ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit177.i:  ; preds = %bb.dy
  %i.sb = load ptr, ptr %44, align 8, !tbaa !50
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, i64 noundef %0)
          to label %_ZN7testing7MessagelsIyEERS0_RKT_.exit179.i unwind label %bb.ed ; 0 uses

end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a
          cleanup
  br label %bb.gk

bb.fw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.fx unwind label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.aaj = load ptr, ptr %24, align 8, !tbaa !50
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aak, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i:  ; preds = %bb.fx
  %i.aam = load ptr, ptr %24, align 8, !tbaa !50
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aan, i64 noundef %0)
          to label %_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i:      ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i
  %i.aap = load ptr, ptr %24, align 8, !tbaa !50
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  %i.aar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaq, ptr noundef nonnull @.str.301, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i88 unwind label %bb.gc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i88: ; preds = %_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i
  %i.aas = load ptr, ptr %24, align 8, !tbaa !50
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aat, ptr noundef nonnull @.str.297, i64 noundef 6)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i89 unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i89:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i88
  %i.aav = load ptr, ptr %24, align 8, !tbaa !50
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  %i.aax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, ptr noundef nonnull @.str.302, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i unwind label %bb.gc ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i:  ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i89
  %i.aay = load ptr, ptr %24, align 8, !tbaa !50
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %i.aba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aaz, i32 noundef %i.zu)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i90 unwind label %bb.gd ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i90:       ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.abb = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 2 uses
  %.not.i.i117.i = icmp eq ptr %i.abb, null
  br i1 %.not.i.i117.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i, label %bb.fy

bb.fy:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i90
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i

_ZNK7testing15AssertionResult15failure_messageEv.exit118.i: ; preds = %bb.fy, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i90
  %i.abd = phi ptr [ %i.abc, %bb.fy ], [ @.str.57, %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i90 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 566, ptr noundef %i.abd)
          to label %bb.fz unwind label %bb.ge

bb.fz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ga unwind label %bb.gf

bb.ga:                                            ; preds = %bb.fz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.abe = load ptr, ptr %24, align 8, !tbaa !50  ; 3 uses
  %.not.i.i119.i = icmp eq ptr %i.abe, null
  br i1 %.not.i.i119.i, label %_ZN7testing7MessageD2Ev.exit121.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120.i: ; preds = %bb.ga
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !9
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load ptr, ptr %i.abg, align 8
  call void %i.abh(ptr noundef nonnull align 8 dereferenceable(128) %i.abe) #24, !inline_history !1238
  br label %_ZN7testing7MessageD2Ev.exit121.i

_ZN7testing7MessageD2Ev.exit121.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120.i, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.gi

bb.gb:                                            ; preds = %bb.fw
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit124.i

bb.gc:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i89, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i88, %_ZN7testing7MessagelsIxEERS0_RKT_.exit110.i, %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit108.i, %bb.fx
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gd:                                            ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit115.i
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.ge:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit118.i
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gf:                                            ; preds = %bb.fz
  %i.abm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #24
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.pn43.i91 = phi { ptr, i32 } [ %i.abm, %bb.gf ], [ %i.abl, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gd, %bb.gc
  %.pn43.pn.pn.i87 = phi { ptr, i32 } [ %i.abj, %bb.gc ], [ %.pn43.i91, %bb.gg ], [ %i.abk, %bb.gd ] ; 2 uses
  %i.abn = load ptr, ptr %24, align 8, !tbaa !50  ; 3 uses
  %.not.i.i122.i = icmp eq ptr %i.abn, null
  br i1 %.not.i.i122.i, label %_ZN7testing7MessageD2Ev.exit124.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i: ; preds = %bb.gh
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !9
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8
  call void %i.abq(ptr noundef nonnull align 8 dereferenceable(128) %i.abn) #24, !inline_history !1238
  br label %_ZN7testing7MessageD2Ev.exit124.i

_ZN7testing7MessageD2Ev.exit124.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i, %bb.gh, %bb.gb
  %.pn43.pn.pn.pn.i86 = phi { ptr, i32 } [ %i.abi, %bb.gb ], [ %.pn43.pn.pn.i87, %bb.gh ], [ %.pn43.pn.pn.i87, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #24
  br label %bb.gk

bb.gi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit121.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit103.i
  %i.abr = load ptr, ptr %i.xu, align 8, !tbaa !49 ; 4 uses
  %.not.i.i125.i = icmp eq ptr %i.abr, null
  br i1 %.not.i.i125.i, label %_ZN7testing15AssertionResultD2Ev.exit129.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !31 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126.i: ; preds = %bb.gj
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !27
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i126.i
  call void @_ZdlPvm(ptr noundef nonnull %i.abr, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit129.i

_ZN7testing15AssertionResultD2Ev.exit129.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i127.i, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.abx = load ptr, ptr %21, align 8, !tbaa !31  ; 2 uses
  %i.aby = icmp eq ptr %i.abx, %i.xs
  br i1 %i.aby, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %_ZN7testing15AssertionResultD2Ev.exit129.i
  %i.abz = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.aca = add i64 %i.abz, 1
  call void @_ZdlPvm(ptr noundef %i.abx, i64 noundef %i.aca) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i93: ; preds = %_ZN7testing15AssertionResultD2Ev.exit129.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, 21
  br i1 %exitcond.not.i95, label %.preheader.i96, label %bb.fl, !llvm.loop !1247

bb.gk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit124.i, %bb.fv
  %.pn43.pn.pn.pn.pn.i85 = phi { ptr, i32 } [ %.pn43.pn.pn.pn.i86, %_ZN7testing7MessageD2Ev.exit124.i ], [ %i.aai, %bb.fv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.acb = load ptr, ptr %21, align 8, !tbaa !31  ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.xs
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i: ; preds = %bb.gk
  %i.acd = load i64, ptr %i.xs, align 8, !tbaa !27
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.ace) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i
  %.pn43.pn.pn.pn.pn.pn.i84 = phi { ptr, i32 } [ %lpad.phi37.i83, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit106.i ], [ %.pn43.pn.pn.pn.pn.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i ], [ %.pn43.pn.pn.pn.pn.i85, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.hm

bb.gl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i
  %i.acf = load ptr, ptr %16, align 8, !tbaa !31  ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.vg
  br i1 %i.acg, label %_ZN12_GLOBAL__N_18CheckDecIxEEvT_PKcS3_S3_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %bb.gl
  %i.ach = load i64, ptr %i.vg, align 8, !tbaa !27
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #26
  br label %_ZN12_GLOBAL__N_18CheckDecIxEEvT_PKcS3_S3_.exit

bb.gm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i, %.preheader.i96
  %indvars.iv213 = phi i64 [ 66, %.preheader.i96 ], [ %indvars.iv.next214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.acj = add nuw nsw i64 %indvars.iv213, 192
  %i.ack = and i64 %i.acj, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, i8 0, i64 16, i1 false)
  store ptr %i.xv, ptr %27, align 8, !tbaa !22
  store i64 0, ptr %i.xw, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.acl = sub nsw i64 0, %i.ack
  %i.acm = getelementptr inbounds i8, ptr %i.xx, i64 %i.acl
  br i1 %i.ud, label %.lr.ph.i.i.i153.i, label %._crit_edge.i.i.i143.i

.lr.ph.i.i.i153.i:                                ; preds = %bb.gm, %.lr.ph.i.i.i153.i
  %.02533.i.i.i154.i = phi i64 [ %i.acr, %.lr.ph.i.i.i153.i ], [ %i.ty, %bb.gm ] ; 3 uses
  %.02632.i.i.i155.i = phi ptr [ %i.acq, %.lr.ph.i.i.i153.i ], [ %i.xx, %bb.gm ]
  %i.acn = urem i64 %.02533.i.i.i154.i, 10
  %i.aco = trunc nuw nsw i64 %i.acn to i8
  %i.acp = or disjoint i8 %i.aco, 48
  %i.acq = getelementptr inbounds i8, ptr %.02632.i.i.i155.i, i64 -1 ; 3 uses
  store i8 %i.acp, ptr %i.acq, align 1, !tbaa !27
  %i.acr = udiv i64 %.02533.i.i.i154.i, 10        ; 2 uses
  %i.acs = icmp ugt i64 %.02533.i.i.i154.i, 99
  br i1 %i.acs, label %.lr.ph.i.i.i153.i, label %._crit_edge.i.i.i143.i, !llvm.loop !1121

._crit_edge.i.i.i143.i:                           ; preds = %.lr.ph.i.i.i153.i, %bb.gm
  %.026.lcssa.i.i.i144.i = phi ptr [ %i.xx, %bb.gm ], [ %i.acq, %.lr.ph.i.i.i153.i ] ; 2 uses
  %.025.lcssa.i.i.i145.i = phi i64 [ %i.ty, %bb.gm ], [ %i.acr, %.lr.ph.i.i.i153.i ]
  %i.act = trunc nuw nsw i64 %.025.lcssa.i.i.i145.i to i8
  %i.acu = or disjoint i8 %i.act, 48
  %i.acv = getelementptr inbounds i8, ptr %.026.lcssa.i.i.i144.i, i64 -1 ; 2 uses
  store i8 %i.acu, ptr %i.acv, align 1, !tbaa !27
  br i1 %i.xy, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %._crit_edge.i.i.i143.i
  %i.acw = getelementptr inbounds i8, ptr %.026.lcssa.i.i.i144.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.acw, align 1, !tbaa !27
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %._crit_edge.i.i.i143.i
  %.1.i.i.i146.i = phi ptr [ %i.acw, %bb.gn ], [ %i.acv, %._crit_edge.i.i.i143.i ] ; 3 uses
  %i.acx = ptrtoint ptr %.1.i.i.i146.i to i64     ; 2 uses
  %i.acy = ptrtoint ptr %i.acm to i64
  %i.acz = sub i64 %i.acx, %i.acy                 ; 3 uses
  %i.ada = icmp sgt i64 %i.acz, 0
  br i1 %i.ada, label %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i, label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i

_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i:   ; preds = %bb.go
  %i.adb = sub nsw i64 0, %i.acz
  %i.adc = getelementptr inbounds i8, ptr %.1.i.i.i146.i, i64 %i.adb ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.adc, i8 32, i64 %i.acz, i1 false)
  %.pre = ptrtoint ptr %i.adc to i64
  br label %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i

_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i: ; preds = %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i, %bb.go
  %.pre-phi = phi i64 [ %.pre, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i ], [ %i.acx, %bb.go ]
  %.4.i.i.i148.i = phi ptr [ %i.adc, %_ZSt6fill_nIPclcET_S1_T0_RKT1_.exit.i.i.i149.i ], [ %.1.i.i.i146.i, %bb.go ]
  %i.add = sub i64 %i.xz, %.pre-phi
  invoke void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 %i.add, ptr nonnull %.4.i.i.i148.i)
          to label %bb.gp unwind label %.loopexit.i99

bb.gp:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.ade = load ptr, ptr %27, align 8, !tbaa !31  ; 3 uses
  %i.adf = load i64, ptr %i.xw, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  store ptr %i.ya, ptr %26, align 8, !tbaa !22, !alias.scope !1248
  %i.adg = icmp eq ptr %i.ade, null
  %i.adh = icmp ne i64 %i.adf, 0
  %or.cond.i.i158.i = and i1 %i.adg, %i.adh
  br i1 %or.cond.i.i158.i, label %.noexc.i161.i, label %bb.gq

.noexc.i161.i:                                    ; preds = %bb.gp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc162.i unwind label %.loopexit.split-lp.i108

.noexc162.i:                                      ; preds = %.noexc.i161.i
  unreachable

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !1248
  store i64 %i.adf, ptr %i.e, align 8, !tbaa !111, !noalias !1248
  %i.adi = icmp ugt i64 %i.adf, 15
  br i1 %i.adi, label %.noexc.i.i160.i, label %._crit_edge.i.i.i159.i

.noexc.i.i160.i:                                  ; preds = %bb.gq
  %i.adj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc163.i unwind label %.loopexit.i99 ; 2 uses

.noexc163.i:                                      ; preds = %.noexc.i.i160.i
  store ptr %i.adj, ptr %26, align 8, !tbaa !31, !alias.scope !1248
  %i.adk = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !1248
  store i64 %i.adk, ptr %i.ya, align 8, !tbaa !27, !alias.scope !1248
  br label %._crit_edge.i.i.i159.i

._crit_edge.i.i.i159.i:                           ; preds = %.noexc163.i, %bb.gq
  %i.adl = phi ptr [ %i.adj, %.noexc163.i ], [ %i.ya, %bb.gq ] ; 2 uses
  switch i64 %i.adf, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %bb.gt
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i.i159.i
  %i.adm = load i8, ptr %i.ade, align 1, !tbaa !27
  store i8 %i.adm, ptr %i.adl, align 1, !tbaa !27
  br label %bb.gt

bb.gs:                                            ; preds = %._crit_edge.i.i.i159.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adl, ptr align 1 %i.ade, i64 %i.adf, i1 false)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %._crit_edge.i.i.i159.i
  %i.adn = load i64, ptr %i.e, align 8, !tbaa !111, !noalias !1248 ; 2 uses
  store i64 %i.adn, ptr %i.yb, align 8, !tbaa !25, !alias.scope !1248
  %i.ado = load ptr, ptr %26, align 8, !tbaa !31, !alias.scope !1248
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.adn
  store i8 0, ptr %i.adp, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !1248
  %i.adq = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.adr = icmp eq ptr %i.adq, %i.xv
  br i1 %i.adr, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i: ; preds = %bb.gt
  %i.ads = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adt) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.adu = trunc i64 %indvars.iv213 to i32
  %i.adv = add i32 %i.adu, -64                    ; 2 uses
  %i.adw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 256, ptr noundef nonnull @.str.298, i32 noundef %i.adv, i64 noundef %0) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.adx = load i64, ptr %i.yb, align 8, !tbaa !25, !noalias !1251 ; 3 uses
  %i.ady = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.k) #24, !noalias !1251
  %i.adz = icmp eq i64 %i.adx, %i.ady
  br i1 %i.adz, label %bb.gu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i

bb.gu:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i
  %i.aea = icmp eq i64 %i.adx, 0
  br i1 %i.aea, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i: ; preds = %bb.gu
  %i.aeb = load ptr, ptr %26, align 8, !tbaa !31, !noalias !1251
  %bcmp.i.i.i.i170.i = call i32 @bcmp(ptr %i.aeb, ptr nonnull align 1 dereferenceable(256) %i.k, i64 %i.adx), !noalias !1251
  %i.aec = icmp eq i32 %bcmp.i.i.i.i170.i, 0
  br i1 %i.aec, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i, %bb.gu
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i unwind label %bb.gw

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i169.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit167.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i unwind label %bb.gw

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i
  %i.aed = load i8, ptr %28, align 8, !tbaa !37, !range !47, !noundef !48
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %bb.hj, label %bb.gx

.loopexit.i99:                                    ; preds = %.noexc.i.i160.i, %_ZN4absl12lts_2026052616strings_internal22ExtractStringificationINS0_3DecEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i147.i
  %lpad.loopexit.i100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp.i108:                          ; preds = %.noexc.i161.i
  %lpad.loopexit.split-lp.i109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gv:                                            ; preds = %.loopexit.split-lp.i108, %.loopexit.i99
  %lpad.phi.i101 = phi { ptr, i32 } [ %lpad.loopexit.i100, %.loopexit.i99 ], [ %lpad.loopexit.split-lp.i109, %.loopexit.split-lp.i108 ]
  %i.aef = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.xv
  br i1 %i.aeg, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit177.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175.i: ; preds = %bb.gv
  %i.aeh = load i64, ptr %i.xv, align 8, !tbaa !27
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aei) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit177.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit177.i: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.i

bb.gw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i168.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i171.i
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.gx:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit174.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.gy unwind label %bb.hc

bb.gy:                                            ; preds = %bb.gx
  %i.aek = load ptr, ptr %29, align 8, !tbaa !50
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_113CheckHexDec64Em:bb.a
  %lpad.loopexit.split-lp23.i176 = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.is:                                            ; preds = %.loopexit.split-lp21.i175, %.loopexit20.i150
  %lpad.phi24.i152 = phi { ptr, i32 } [ %lpad.loopexit22.i151, %.loopexit20.i150 ], [ %lpad.loopexit.split-lp23.i176, %.loopexit.split-lp21.i175 ]
  %i.akl = load ptr, ptr %7, align 8, !tbaa !31   ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.aiz
  br i1 %i.akm, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i: ; preds = %bb.is
  %i.akn = load i64, ptr %i.aiz, align 8, !tbaa !27
  %i.ako = add i64 %i.akn, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.ako) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i: ; preds = %bb.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

bb.it:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80.i
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.iu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.iv unwind label %bb.jb

bb.iv:                                            ; preds = %bb.iu
  %i.akq = load ptr, ptr %9, align 8, !tbaa !50
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.aks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akr, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i unwind label %bb.jc ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i:   ; preds = %bb.iv
  %i.akt = load ptr, ptr %9, align 8, !tbaa !50
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 16 ; 2 uses
  br i1 %i.ajd, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i
  %i.akv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aku, ptr noundef nonnull @.str.303, i64 noundef 6)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i unwind label %bb.jc ; 0 uses

bb.ix:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit88.i
  %i.akw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aku, ptr noundef nonnull %i.agk)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i unwind label %bb.jc ; 0 uses

_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i:      ; preds = %bb.ix, %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.akx = load ptr, ptr %i.aje, align 8, !tbaa !49 ; 2 uses
  %.not.i.i92.i = icmp eq ptr %i.akx, null
  br i1 %.not.i.i92.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i, label %bb.iy

bb.iy:                                            ; preds = %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i

_ZNK7testing15AssertionResult15failure_messageEv.exit93.i: ; preds = %bb.iy, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i
  %i.akz = phi ptr [ %i.aky, %bb.iy ], [ @.str.57, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit91.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef %i.akz)
          to label %bb.iz unwind label %bb.jd

bb.iz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ja unwind label %bb.je

bb.ja:                                            ; preds = %bb.iz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.ala = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i94.i = icmp eq ptr %i.ala, null
  br i1 %.not.i.i94.i, label %_ZN7testing7MessageD2Ev.exit96.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.i: ; preds = %bb.ja
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !9
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ald = load ptr, ptr %i.alc, align 8
  call void %i.ald(ptr noundef nonnull align 8 dereferenceable(128) %i.ala) #24, !inline_history !1265
  br label %_ZN7testing7MessageD2Ev.exit96.i

_ZN7testing7MessageD2Ev.exit96.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.i, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.jh

bb.jb:                                            ; preds = %bb.iu
  %i.ale = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit99.i

bb.jc:                                            ; preds = %bb.ix, %bb.iw, %bb.iv
  %i.alf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.jd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93.i
  %i.alg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.je:                                            ; preds = %bb.iz
  %i.alh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.pn40.i = phi { ptr, i32 } [ %i.alh, %bb.je ], [ %i.alg, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.jc
  %.pn40.pn.i = phi { ptr, i32 } [ %.pn40.i, %bb.jf ], [ %i.alf, %bb.jc ] ; 2 uses
  %i.ali = load ptr, ptr %9, align 8, !tbaa !50   ; 3 uses
  %.not.i.i97.i = icmp eq ptr %i.ali, null
  br i1 %.not.i.i97.i, label %_ZN7testing7MessageD2Ev.exit99.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i: ; preds = %bb.jg
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !9
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %i.all = load ptr, ptr %i.alk, align 8
  call void %i.all(ptr noundef nonnull align 8 dereferenceable(128) %i.ali) #24, !inline_history !1265
  br label %_ZN7testing7MessageD2Ev.exit99.i

_ZN7testing7MessageD2Ev.exit99.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i, %bb.jg, %bb.jb
  %.pn40.pn.pn.i = phi { ptr, i32 } [ %i.ale, %bb.jb ], [ %.pn40.pn.i, %bb.jg ], [ %.pn40.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  br label %bb.jj

bb.jh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit96.i, %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83.i
  %i.alm = load ptr, ptr %i.aje, align 8, !tbaa !49 ; 4 uses
  %.not.i.i100.i = icmp eq ptr %i.alm, null
  br i1 %.not.i.i100.i, label %_ZN7testing15AssertionResultD2Ev.exit104.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !31 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alm, i64 16 ; 2 uses
  %i.alp = icmp eq ptr %i.aln, %i.alo
  br i1 %i.alp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101.i: ; preds = %bb.ji
  %i.alq = load i64, ptr %i.alo, align 8, !tbaa !27
  %i.alr = add i64 %i.alq, 1
  call void @_ZdlPvm(ptr noundef %i.aln, i64 noundef %i.alr) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i: ; preds = %bb.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101.i
  call void @_ZdlPvm(ptr noundef nonnull %i.alm, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit104.i

_ZN7testing15AssertionResultD2Ev.exit104.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102.i, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.als = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.alt = icmp eq ptr %i.als, %i.ajb
  br i1 %i.alt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153: ; preds = %_ZN7testing15AssertionResultD2Ev.exit104.i
  %i.alu = load i64, ptr %i.ajb, align 8, !tbaa !27
  %i.alv = add i64 %i.alu, 1
  call void @_ZdlPvm(ptr noundef %i.als, i64 noundef %i.alv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i154: ; preds = %_ZN7testing15AssertionResultD2Ev.exit104.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %indvars.iv.next.i155 = add nuw nsw i64 %indvars.iv.i149, 1 ; 2 uses
  %exitcond.not.i156 = icmp eq i64 %indvars.iv.next.i155, 21
  br i1 %exitcond.not.i156, label %.preheader.i157, label %bb.il, !llvm.loop !1274

bb.jj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit99.i, %bb.it
  %.pn40.pn.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.pn.i, %_ZN7testing7MessageD2Ev.exit99.i ], [ %i.akp, %bb.it ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.alw = load ptr, ptr %6, align 8, !tbaa !31   ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.ajb
  br i1 %i.alx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i: ; preds = %bb.jj
  %i.aly = load i64, ptr %i.ajb, align 8, !tbaa !27
  %i.alz = add i64 %i.aly, 1
  call void @_ZdlPvm(ptr noundef %i.alw, i64 noundef %i.alz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %bb.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i
  %.pn40.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.phi24.i152, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit86.i ], [ %.pn40.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i ], [ %.pn40.pn.pn.pn.i, %bb.jj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.kk

bb.jk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i
  %i.ama = load ptr, ptr %1, align 8, !tbaa !31   ; 2 uses
  %i.amb = icmp eq ptr %i.ama, %i.agp
  br i1 %i.amb, label %_ZN12_GLOBAL__N_18CheckHexIPvEEvT_PKcS4_S4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i: ; preds = %bb.jk
  %i.amc = load i64, ptr %i.agp, align 8, !tbaa !27
  %i.amd = add i64 %i.amc, 1
  call void @_ZdlPvm(ptr noundef %i.ama, i64 noundef %i.amd) #26
  br label %_ZN12_GLOBAL__N_18CheckHexIPvEEvT_PKcS4_S4_.exit

bb.jl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i, %.preheader.i157
  %indvars.iv217 = phi i64 [ 66, %.preheader.i157 ], [ %indvars.iv.next218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ame = add nuw nsw i64 %indvars.iv217, 192
  %i.amf = and i64 %i.ame, 255
  %i.amg = or disjoint i64 %i.amf, 8192
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ajf, i8 0, i64 16, i1 false)
  store ptr %i.ajf, ptr %12, align 8, !tbaa !22
  store i64 0, ptr %i.ajg, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2026052613AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %0, i64 %i.amg)
          to label %bb.jm unwind label %.loopexit.i161

bb.jm:                                            ; preds = %bb.jl
  %i.amh = load ptr, ptr %12, align 8, !tbaa !31  ; 3 uses
  %i.ami = load i64, ptr %i.ajg, align 8, !tbaa !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  store ptr %i.ajh, ptr %11, align 8, !tbaa !22, !alias.scope !1275
  %i.amj = icmp eq ptr %i.amh, null
  %i.amk = icmp ne i64 %i.ami, 0
  %or.cond.i.i117.i = and i1 %i.amj, %i.amk
  br i1 %or.cond.i.i117.i, label %.noexc.i120.i, label %bb.jn

.noexc.i120.i:                                    ; preds = %bb.jm
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.84) #30
          to label %.noexc121.i unwind label %.loopexit.split-lp.i172

.noexc121.i:                                      ; preds = %.noexc.i120.i
  unreachable

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !1275
  store i64 %i.ami, ptr %i.a, align 8, !tbaa !111, !noalias !1275
  %i.aml = icmp ugt i64 %i.ami, 15
  br i1 %i.aml, label %.noexc.i.i119.i, label %._crit_edge.i.i.i118.i

.noexc.i.i119.i:                                  ; preds = %bb.jn
  %i.amm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc122.i unwind label %.loopexit.i161 ; 2 uses

.noexc122.i:                                      ; preds = %.noexc.i.i119.i
  store ptr %i.amm, ptr %11, align 8, !tbaa !31, !alias.scope !1275
  %i.amn = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1275
  store i64 %i.amn, ptr %i.ajh, align 8, !tbaa !27, !alias.scope !1275
  br label %._crit_edge.i.i.i118.i

._crit_edge.i.i.i118.i:                           ; preds = %.noexc122.i, %bb.jn
  %i.amo = phi ptr [ %i.amm, %.noexc122.i ], [ %i.ajh, %bb.jn ] ; 2 uses
  switch i64 %i.ami, label %bb.jp [
    i64 1, label %bb.jo
    i64 0, label %bb.jq
  ]

bb.jo:                                            ; preds = %._crit_edge.i.i.i118.i
  %i.amp = load i8, ptr %i.amh, align 1, !tbaa !27
  store i8 %i.amp, ptr %i.amo, align 1, !tbaa !27
  br label %bb.jq

bb.jp:                                            ; preds = %._crit_edge.i.i.i118.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amo, ptr align 1 %i.amh, i64 %i.ami, i1 false)
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %._crit_edge.i.i.i118.i
  %i.amq = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !1275 ; 2 uses
  store i64 %i.amq, ptr %i.aji, align 8, !tbaa !25, !alias.scope !1275
  %i.amr = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !1275
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 %i.amq
  store i8 0, ptr %i.ams, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !1275
  %i.amt = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.amu = icmp eq ptr %i.amt, %i.ajf
  br i1 %i.amu, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i: ; preds = %bb.jq
  %i.amv = load i64, ptr %i.ajf, align 8, !tbaa !27
  %i.amw = add i64 %i.amv, 1
  call void @_ZdlPvm(ptr noundef %i.amt, i64 noundef %i.amw) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i: ; preds = %bb.jq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.amx = trunc i64 %indvars.iv217 to i32
  %i.amy = add i32 %i.amx, -64
  %i.amz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.292, i32 noundef %i.amy, ptr noundef %i.agk) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ana = load i64, ptr %i.aji, align 8, !tbaa !25, !noalias !1278 ; 3 uses
  %i.anb = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(256) %i.d) #24, !noalias !1278
  %i.anc = icmp eq i64 %i.ana, %i.anb
  br i1 %i.anc, label %bb.jr, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i

bb.jr:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i
  %i.and = icmp eq i64 %i.ana, 0
  br i1 %i.and, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i: ; preds = %bb.jr
  %i.ane = load ptr, ptr %11, align 8, !tbaa !31, !noalias !1278
  %bcmp.i.i.i.i129.i = call i32 @bcmp(ptr %i.ane, ptr nonnull align 1 dereferenceable(256) %i.d, i64 %i.ana), !noalias !1278
  %i.anf = icmp eq i32 %bcmp.i.i.i.i129.i, 0
  br i1 %i.anf, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i, %bb.jr
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i unwind label %bb.jt

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i128.i, %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit126.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.299, ptr noundef nonnull align 1 dereferenceable(256) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i unwind label %bb.jt

_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i
  %i.ang = load i8, ptr %13, align 8, !tbaa !37, !range !47, !noundef !48
  %i.anh = trunc nuw i8 %i.ang to i1
  br i1 %i.anh, label %bb.kh, label %bb.ju

.loopexit.i161:                                   ; preds = %.noexc.i.i119.i, %bb.jl
  %lpad.loopexit.i162 = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

.loopexit.split-lp.i172:                          ; preds = %.noexc.i120.i
  %lpad.loopexit.split-lp.i173 = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.js:                                            ; preds = %.loopexit.split-lp.i172, %.loopexit.i161
  %lpad.phi.i163 = phi { ptr, i32 } [ %lpad.loopexit.i162, %.loopexit.i161 ], [ %lpad.loopexit.split-lp.i173, %.loopexit.split-lp.i172 ]
  %i.ani = load ptr, ptr %12, align 8, !tbaa !31  ; 2 uses
  %i.anj = icmp eq ptr %i.ani, %i.ajf
  br i1 %i.anj, label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit136.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i: ; preds = %bb.js
  %i.ank = load i64, ptr %i.ajf, align 8, !tbaa !27
  %i.anl = add i64 %i.ank, 1
  call void @_ZdlPvm(ptr noundef %i.ani, i64 noundef %i.anl) #26
  br label %_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit136.i

_ZN4absl12lts_2026052616strings_internal13StringifySinkD2Ev.exit136.i: ; preds = %bb.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.i164

bb.jt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i127.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i130.i
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %bb.kj

bb.ju:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA256_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit133.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.jv unwind label %bb.kb

bb.jv:                                            ; preds = %bb.ju
  %i.ann = load ptr, ptr %14, align 8, !tbaa !50
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 16
  %i.anp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ano, ptr noundef nonnull @.str.300, i64 noundef 15)
          to label %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i unwind label %bb.kc ; 0 uses

_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i:  ; preds = %bb.jv
  %i.anq = load ptr, ptr %14, align 8, !tbaa !50
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 16 ; 2 uses
  br i1 %i.ajd, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i
  %i.ans = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.anr, ptr noundef nonnull @.str.303, i64 noundef 6)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i unwind label %bb.kc ; 0 uses

bb.jx:                                            ; preds = %_ZN7testing7MessagelsIA16_cEERS0_RKT_.exit138.i
  %i.ant = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.anr, ptr noundef nonnull %i.agk)
          to label %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i unwind label %bb.kc ; 0 uses

_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i:     ; preds = %bb.jx, %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.anu = load ptr, ptr %i.ajj, align 8, !tbaa !49 ; 2 uses
  %.not.i.i142.i = icmp eq ptr %i.anu, null
  br i1 %.not.i.i142.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit143.i, label %bb.jy

bb.jy:                                            ; preds = %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit143.i

_ZNK7testing15AssertionResult15failure_messageEv.exit143.i: ; preds = %bb.jy, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i
  %i.anw = phi ptr [ %i.anv, %bb.jy ], [ @.str.57, %_ZN7testing7MessagelsIvEERS0_RKPT_.exit141.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 548, ptr noundef %i.anw)
          to label %bb.jz unwind label %bb.kd

bb.jz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ka unwind label %bb.ke

bb.ka:                                            ; preds = %bb.jz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.anx = load ptr, ptr %14, align 8, !tbaa !50  ; 3 uses
  %.not.i.i144.i = icmp eq ptr %i.anx, null
  br i1 %.not.i.i144.i, label %_ZN7testing7MessageD2Ev.exit146.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145.i: ; preds = %bb.ka
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !9
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aoa = load ptr, ptr %i.anz, align 8
  call void %i.aoa(ptr noundef nonnull align 8 dereferenceable(128) %i.anx) #24, !inline_history !1265
  br label %_ZN7testing7MessageD2Ev.exit146.i

_ZN7testing7MessageD2Ev.exit146.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145.i, %bb.ka
end_hunk_6
