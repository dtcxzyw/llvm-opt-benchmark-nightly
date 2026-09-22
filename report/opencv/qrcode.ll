Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode?download=true
inline.NumInlined: 860
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:.noexc.i
          to label %_ZN2cv9TickMeter5startEv.exit.i.i unwind label %bb.dl ; 2 uses

_ZN2cv9TickMeter5startEv.exit.i.i:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i
  invoke fastcc void @_ZL5runQRRKN2cv21GraphicalCodeDetectorERKNS_3MatERSt6vectorINS_6Point_IiEESaIS8_EERS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EE(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.dd unwind label %bb.dl

bb.dd:                                            ; preds = %_ZN2cv9TickMeter5startEv.exit.i.i
  %i.ss = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %.noexc46.i.i unwind label %bb.dl

.noexc46.i.i:                                     ; preds = %bb.dd
  %i.st = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.de unwind label %bb.dm

bb.de:                                            ; preds = %.noexc46.i.i
  %i.su = icmp eq i64 %i.sr, 0
  %i.sv = sub nsw i64 %i.ss, %i.sr
  %spec.select.i.i = select i1 %i.su, i64 0, i64 %i.sv
  %i.sw = sitofp i64 %spec.select.i.i to double
  %i.sx = fdiv double %i.sw, %i.st
  %i.sy = fdiv double 1.000000e+00, %i.sx         ; 2 uses
  invoke fastcc void @_ZL17drawQRCodeResultsRN2cv3MatERKSt6vectorINS_6Point_IiEESaIS4_EERKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEd(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %26, double noundef %i.sy)
          to label %bb.df unwind label %bb.dm

bb.df:                                            ; preds = %bb.de
  %i.sz = load ptr, ptr %26, align 8, !tbaa !73   ; 3 uses
  %i.ta = load ptr, ptr %i.om, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.sz, %i.ta
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.df, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.tg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.sz, %bb.df ] ; 3 uses
  %i.tb = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.te = load i64, ptr %i.tc, align 8, !tbaa !21
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.tf) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i87.i = icmp eq ptr %i.tg, %i.ta
  br i1 %.not.i.i.i.i87.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %26, align 8, !tbaa !73
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.df
  %i.th = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.sz, %bb.df ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.th, null
  br i1 %.not.i.i1.i.i.i, label %bb.do, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ti = load ptr, ptr %i.on, align 8, !tbaa !76
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = ptrtoint ptr %i.th to i64
  %i.tl = sub i64 %i.tj, %i.tk
  call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef %i.tl) #25
  br label %bb.do

bb.dh:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %.noexc90.i
  %i.tm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %.body.i.i

bb.di:                                            ; preds = %_ZN2cvlsIiEERSoS1_RKNS_5Size_IT_EE.exit.i.i, %.noexc33.i.i, %.noexc32.i.i, %.noexc31.i.i, %.noexc30.i.i, %bb.cy, %bb.cs
  %i.tn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %.body.i.i

bb.dj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.i.i
  %i.to = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i

bb.dk:                                            ; preds = %.noexc58.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %.noexc56.i.i, %bb.dc, %bb.da, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit38.i.i, %bb.cz
  %i.tp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE          ; 2 uses
  %i.tq = load ptr, ptr %25, align 8, !tbaa !20   ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.ok
  br i1 %i.tr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i: ; preds = %bb.dk
  %i.ts = load i64, ptr %i.ok, align 8, !tbaa !21
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i, %bb.dj
  %.pn22.i.i = phi { ptr, i32 } [ %i.to, %bb.dj ], [ %i.tp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i ], [ %i.tp, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %.body.i.i

.body.i.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i, %bb.di, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.pn22.pn.pn.i.i = phi { ptr, i32 } [ %i.tm, %bb.dh ], [ %.pn22.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i ], [ %i.tn, %bb.di ], [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ]
  %i.tu = load ptr, ptr %24, align 8, !tbaa !20   ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.ol
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i: ; preds = %.body.i.i
  %i.tw = load i64, ptr %i.ol, align 8, !tbaa !21
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i: ; preds = %.body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body.i

bb.dl:                                            ; preds = %bb.dd, %_ZN2cv9TickMeter5startEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i
  %i.ty = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.dn

bb.dm:                                            ; preds = %bb.de, %.noexc46.i.i
  %i.tz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pn26.i.i = phi { ptr, i32 } [ %i.tz, %bb.dm ], [ %i.ty, %bb.dl ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %.body.i

bb.do:                                            ; preds = %bb.dg, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.ua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92.i unwind label %bb.dt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92.i: ; preds = %bb.do
  %i.ub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.sy)
          to label %_ZNSolsEd.exit.i unwind label %bb.dt ; 3 uses

_ZNSolsEd.exit.i:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92.i
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !28
  %i.ud = getelementptr i8, ptr %i.uc, i64 -24
  %i.ue = load i64, ptr %i.ud, align 8
  %i.uf = getelementptr inbounds i8, ptr %i.ub, i64 %i.ue
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 240
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !43 ; 6 uses
  %.not.i.i.i274.i = icmp eq ptr %i.uh, null
  br i1 %.not.i.i.i274.i, label %bb.dp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275.i

bb.dp:                                            ; preds = %_ZNSolsEd.exit.i
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc279.i unwind label %bb.dt

.noexc279.i:                                      ; preds = %bb.dp
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275.i: ; preds = %_ZNSolsEd.exit.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 56
  %i.uj = load i8, ptr %i.ui, align 8, !tbaa !49
  %.not.i1.i.i276.i = icmp eq i8 %i.uj, 0
  br i1 %.not.i1.i.i276.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 67
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !21
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.i

bb.dr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.uh)
          to label %.noexc280.i unwind label %bb.dt

.noexc280.i:                                      ; preds = %bb.dr
  %i.um = load ptr, ptr %i.uh, align 8, !tbaa !28
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 48
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = invoke noundef signext i8 %i.uo(ptr noundef nonnull align 8 dereferenceable(570) %i.uh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.i unwind label %bb.dt, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.i: ; preds = %.noexc280.i, %bb.dq
  %.0.i.i.i278.i = phi i8 [ %i.ul, %bb.dq ], [ %i.up, %.noexc280.i ]
  %i.uq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ub, i8 noundef signext %.0.i.i.i278.i)
          to label %.noexc282.i unwind label %bb.dt

.noexc282.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.i
  %i.ur = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uq)
          to label %_ZNSolsEPFRSoS_E.exit95.i unwind label %bb.dt ; 0 uses

_ZNSolsEPFRSoS_E.exit95.i:                        ; preds = %.noexc282.i
  %i.us = load i8, ptr @_ZL16g_saveDetections, align 1, !tbaa !24, !range !25, !noundef !26
  %i.ut = trunc nuw i8 %i.us to i1
  %.pre.i336 = load ptr, ptr %33, align 8, !tbaa !78 ; 4 uses
  %i.uu = load ptr, ptr %i.oo, align 8
  %i.uv = icmp ne ptr %.pre.i336, %i.uu
  %narrow.i = select i1 %i.ut, i1 %i.uv, i1 false
  %.not.i.i.i96.i = icmp eq ptr %.pre.i336, null
  br i1 %.not.i.i.i96.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSolsEPFRSoS_E.exit95.i
  %i.uw = load ptr, ptr %i.op, align 8, !tbaa !80
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %.pre.i336 to i64
  %i.uz = sub i64 %i.ux, %i.uy
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i336, i64 noundef %i.uz) #25
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i:  ; preds = %bb.ds, %_ZNSolsEPFRSoS_E.exit95.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %67 = trunc nuw i8 %i.qh to i1
  %68 = or i1 %narrow.i, %67
  br label %bb.dx

bb.dt:                                            ; preds = %.noexc282.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277.i, %.noexc280.i, %bb.dr, %bb.dp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92.i, %bb.do, %.noexc89.i, %bb.cr, %bb.cq, %bb.cp
  %i.va = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN2cv9ExceptionE
  br label %.body.i

.body.i:                                          ; preds = %bb.dt, %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.va, %bb.dt ], [ %.pn26.i.i, %bb.dn ], [ %.pn22.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i.i ] ; 3 uses
  %i.vb = extractvalue { ptr, i32 } %eh.lpad-body.i, 1
  %i.vc = load ptr, ptr %33, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i97.i = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i97.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit98.i, label %bb.du

bb.du:                                            ; preds = %.body.i
  %i.vd = load ptr, ptr %i.op, align 8, !tbaa !80
  %i.ve = ptrtoint ptr %i.vd to i64
  %i.vf = ptrtoint ptr %i.vc to i64
  %i.vg = sub i64 %i.ve, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vg) #25
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit98.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit98.i: ; preds = %bb.du, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.vh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #24
  %i.vi = icmp eq i32 %i.vb, %i.vh
  br i1 %i.vi, label %bb.dv, label %.loopexit364.i

bb.dv:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit98.i
  %i.vj = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  %i.vk = call ptr @__cxa_begin_catch(ptr %i.vj) #24 ; 2 uses
  %i.vl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.i unwind label %bb.ea ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.i: ; preds = %bb.dv
  %i.vm = load ptr, ptr %i.vk, align 8, !tbaa !28
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = call noundef ptr %i.vo(ptr noundef nonnull align 8 dereferenceable(148) %i.vk) #24, !inline_history !101
  %i.vq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.vp)
          to label %bb.dw unwind label %bb.ea

bb.dw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.i
  %i.vr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.vq)
          to label %_ZNSolsEPFRSoS_E.exit102.i unwind label %bb.ea, !inline_history !102 ; 0 uses

_ZNSolsEPFRSoS_E.exit102.i:                       ; preds = %bb.dw
  invoke void @__cxa_end_catch()
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %_ZNSolsEPFRSoS_E.exit102.i, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i
  %.0.i = phi i1 [ %68, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i ], [ true, %_ZNSolsEPFRSoS_E.exit102.i ] ; 2 uses
  %i.vs = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %32)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.vs, label %bb.ee, label %._crit_edge.i.i.i332

._crit_edge.i.i.i332:                             ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  store ptr %i.oq, ptr %34, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.oq, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  store i64 7, ptr %i.or, align 8, !tbaa !22
  store i8 0, ptr %i.pn, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  store i32 0, ptr %i.os, align 8, !tbaa !66
  store i32 0, ptr %i.ot, align 4, !tbaa !67
  store i32 16842752, ptr %35, align 8, !tbaa !69
  store ptr %32, ptr %i.ou, align 8, !tbaa !70
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.dz unwind label %bb.ed

bb.dz:                                            ; preds = %._crit_edge.i.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.vt = load ptr, ptr %34, align 8, !tbaa !20   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.oq
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i333: ; preds = %bb.dz
  %i.vv = load i64, ptr %i.oq, align 8, !tbaa !21
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i334: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %bb.ee

bb.ea:                                            ; preds = %bb.dw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100.i, %bb.dv
  %i.vx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.loopexit364.i unwind label %bb.gm

bb.eb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit102.i
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit364.i

bb.ec:                                            ; preds = %bb.dx
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit364.i

bb.ed:                                            ; preds = %._crit_edge.i.i.i332
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.wb = load ptr, ptr %34, align 8, !tbaa !20   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.oq
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i: ; preds = %bb.ed
  %i.wd = load i64, ptr %i.oq, align 8, !tbaa !21
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  br label %.loopexit364.i

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i334, %bb.dy
  %i.wf = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 1)
          to label %bb.ef unwind label %bb.eg     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.wg = icmp sgt i32 %i.wf, -1
  %or.cond.i = select i1 %i.wg, i1 true, i1 %.0.i
  br i1 %or.cond.i, label %bb.eh, label %.critedge.i, !llvm.loop !103

bb.eg:                                            ; preds = %bb.ee
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit364.i

bb.eh:                                            ; preds = %bb.ef
  %sext.i = shl i32 %i.wf, 24                     ; 2 uses
  %i.wi = icmp eq i32 %sext.i, 536870912
  %or.cond3.i = select i1 %i.wi, i1 true, i1 %.0.i
  br i1 %or.cond3.i, label %bb.ei, label %bb.fq

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.wj = load i32, ptr @_ZL10g_save_idx, align 4, !tbaa !53 ; 2 uses
  %i.wk = add nsw i32 %i.wj, 1
  store i32 %i.wk, ptr @_ZL10g_save_idx, align 4, !tbaa !53
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull @.str.21, i32 noundef %i.wj)
          to label %bb.ej unwind label %bb.fh

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.wl = load ptr, ptr @_ZL15g_out_file_nameB5cxx11, align 8, !tbaa !20, !noalias !132
  %i.wm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL15g_out_file_nameB5cxx11, i64 8), align 8, !tbaa !22, !noalias !132 ; 3 uses
  %i.wn = load ptr, ptr %36, align 8, !tbaa !20, !noalias !132
  %i.wo = load i64, ptr %i.ov, align 8, !tbaa !22, !noalias !132 ; 3 uses
  store ptr %i.ow, ptr %38, align 8, !tbaa !16, !alias.scope !133
  store i64 0, ptr %i.ox, align 8, !tbaa !22, !alias.scope !133
  store i8 0, ptr %i.ow, align 8, !tbaa !21, !alias.scope !133
  %i.wp = add i64 %i.wo, %i.wm
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %38, i64 noundef %i.wp)
          to label %bb.ek unwind label %.loopexit365.i

bb.ek:                                            ; preds = %bb.ej
  %i.wq = load i64, ptr %i.ox, align 8, !tbaa !22, !alias.scope !133
  %i.wr = sub i64 4611686018427387903, %i.wq
  %i.ws = icmp ult i64 %i.wr, %i.wm
  br i1 %i.ws, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.ek
  %i.wt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %i.wl, i64 noundef %i.wm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit365.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.wu = load i64, ptr %i.ox, align 8, !tbaa !22, !alias.scope !133
  %i.wv = sub i64 4611686018427387903, %i.wu
  %i.ww = icmp ult i64 %i.wv, %i.wo
  br i1 %i.ww, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.ek
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #26
          to label %.cont.i.i.i unwind label %.loopexit.split-lp366.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.wx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %i.wn, i64 noundef %i.wo)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i unwind label %.loopexit365.i ; 0 uses

.loopexit365.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %bb.ej
  %lpad.loopexit367.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

.loopexit.split-lp366.i:                          ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp368.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.el:                                            ; preds = %.loopexit.split-lp366.i, %.loopexit365.i
  %lpad.phi369.i = phi { ptr, i32 } [ %lpad.loopexit367.i, %.loopexit365.i ], [ %lpad.loopexit.split-lp368.i, %.loopexit.split-lp366.i ] ; 2 uses
  %i.wy = load ptr, ptr %38, align 8, !tbaa !20, !alias.scope !133 ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.ow
  br i1 %i.wz, label %.body111.i, label %.body111.i.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.xa = load i64, ptr %i.ox, align 8, !tbaa !22, !noalias !134
  %i.xb = add i64 %i.xa, -4611686018427387894
  %i.xc = icmp ult i64 %i.xb, 10
  br i1 %i.xc, label %bb.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.em:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #26
          to label %.noexc114.i unwind label %.loopexit.split-lp371.i

.noexc114.i:                                      ; preds = %bb.em
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit.i
  %i.xd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.22, i64 noundef 10)
          to label %.noexc115.i unwind label %.loopexit370.i ; 6 uses

.noexc115.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.oy, ptr %37, align 8, !tbaa !16, !alias.scope !134
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !20 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 16 ; 5 uses
  %i.xg = icmp eq ptr %i.xe, %i.xf
  br i1 %i.xg, label %bb.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i

bb.en:                                            ; preds = %.noexc115.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !22 ; 3 uses
  %i.xj = icmp ult i64 %i.xi, 16
  call void @llvm.assume(i1 %i.xj)
  %i.xk = add nuw nsw i64 %i.xi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oy, ptr noundef nonnull align 8 dereferenceable(1) %i.xf, i64 %i.xk, i1 false)
  br label %bb.eo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i: ; preds = %.noexc115.i
  store ptr %i.xe, ptr %37, align 8, !tbaa !20, !alias.scope !134
  %i.xl = load i64, ptr %i.xf, align 8, !tbaa !21
  store i64 %i.xl, ptr %i.oy, align 8, !tbaa !21, !alias.scope !134
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !22
  br label %bb.eo

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i, %bb.en
  %i.xm = phi i64 [ %i.xi, %bb.en ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i ]
end_hunk_0
