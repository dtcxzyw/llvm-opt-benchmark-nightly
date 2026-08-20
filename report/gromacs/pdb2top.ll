inline.NumInlined: 2376
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z24match_atomnames_with_rtpN3gmx8ArrayRefI17PreprocessResidueEENS0_I21MoleculePatchDatabaseEEP7t_atomsP8t_symtabNS0_INS_11BasicVectorIfEEEEbRKNS_8MDLoggerE:bb.a
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.su
  store i8 0, ptr %i.sw, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.0305.0646.i, i64 8
  %i.sy = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.sx)
          to label %.critedge140.i unwind label %bb.ew

.critedge140.i:                                   ; preds = %bb.ej
  %i.sz = load ptr, ptr %25, align 8, !tbaa !30   ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.t
  br i1 %i.ta, label %.critedge142.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i: ; preds = %.critedge140.i
  %i.tb = load i64, ptr %i.t, align 8, !tbaa !39
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #29
  br label %.critedge142.i

.critedge142.i:                                   ; preds = %.critedge140.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br i1 %i.sy, label %bb.ek, label %.critedge142.thread.i

bb.ek:                                            ; preds = %.critedge142.i
  %i.td = load ptr, ptr %i.bl, align 8, !tbaa !305 ; 3 uses
  %i.te = load ptr, ptr %i.bn, align 8, !tbaa !305 ; 3 uses
  %i.tf = ptrtoint ptr %i.te to i64               ; 2 uses
  %i.tg = ptrtoint ptr %i.td to i64
  %i.th = sub i64 %i.tf, %i.tg                    ; 2 uses
  %i.ti = ashr i64 %i.th, 5                       ; 2 uses
  %i.tj = icmp sgt i64 %i.ti, 0
  br i1 %i.tj, label %.lr.ph.i.i.i216.i, label %._crit_edge.i.i.i209.i

.lr.ph.i.i.i216.i:                                ; preds = %bb.ek, %bb.eo
  %.043.i.i.i217.i = phi i64 [ %i.ts, %bb.eo ], [ %i.ti, %bb.ek ] ; 2 uses
  %.sroa.032.042.i.i.i218.i = phi ptr [ %i.tr, %bb.eo ], [ %i.td, %bb.ek ] ; 6 uses
  %i.tk = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS4_8MDLoggerEE3$_2EclINS_17__normal_iteratorIPPPcSt6vectorISO_SaISO_EEEEEEbT_"(ptr nonnull readonly %i.cw, ptr %.sroa.032.042.i.i.i218.i)
  br i1 %i.tk, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i", label %bb.el

bb.el:                                            ; preds = %.lr.ph.i.i.i216.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i218.i, i64 8 ; 2 uses
  %i.tm = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS4_8MDLoggerEE3$_2EclINS_17__normal_iteratorIPPPcSt6vectorISO_SaISO_EEEEEEbT_"(ptr nonnull readonly %i.cw, ptr nonnull %i.tl)
  br i1 %i.tm, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i", label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i218.i, i64 16 ; 2 uses
  %i.to = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS4_8MDLoggerEE3$_2EclINS_17__normal_iteratorIPPPcSt6vectorISO_SaISO_EEEEEEbT_"(ptr nonnull readonly %i.cw, ptr nonnull %i.tn)
  br i1 %i.to, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i", label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i218.i, i64 24 ; 2 uses
  %i.tq = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS4_8MDLoggerEE3$_2EclINS_17__normal_iteratorIPPPcSt6vectorISO_SaISO_EEEEEEbT_"(ptr nonnull readonly %i.cw, ptr nonnull %i.tp)
  br i1 %i.tq, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i", label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i218.i, i64 32 ; 3 uses
  %i.ts = add nsw i64 %.043.i.i.i217.i, -1
  %i.tt = icmp sgt i64 %.043.i.i.i217.i, 1
  br i1 %i.tt, label %.lr.ph.i.i.i216.i, label %._crit_edge.loopexit.i.i.i219.i, !llvm.loop !360

._crit_edge.loopexit.i.i.i219.i:                  ; preds = %bb.eo
  %.pre.i.i.i220.i = ptrtoint ptr %i.tr to i64
  %.pre44.i.i.i221.i = sub i64 %i.tf, %.pre.i.i.i220.i
  br label %._crit_edge.i.i.i209.i

._crit_edge.i.i.i209.i:                           ; preds = %._crit_edge.loopexit.i.i.i219.i, %bb.ek
  %.pre-phi45.i.i.i210.i = phi i64 [ %.pre44.i.i.i221.i, %._crit_edge.loopexit.i.i.i219.i ], [ %i.th, %bb.ek ]
  %.sroa.032.0.lcssa.i.i.i211.i = phi ptr [ %i.tr, %._crit_edge.loopexit.i.i.i219.i ], [ %i.td, %bb.ek ] ; 5 uses
  %i.tu = ashr exact i64 %.pre-phi45.i.i.i210.i, 3
  switch i64 %i.tu, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i" [
    i64 3, label %bb.ep
    i64 2, label %bb.er
    i64 1, label %bb.et
  ]

bb.ep:                                            ; preds = %._crit_edge.i.i.i209.i
  %i.tv = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS4_8MDLoggerEE3$_2EclINS_17__normal_iteratorIPPPcSt6vectorISO_SaISO_EEEEEEbT_"(ptr nonnull readonly %i.cw, ptr %.sroa.032.0.lcssa.i.i.i211.i)
  br i1 %i.tv, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i211.i, i64 8
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %._crit_edge.i.i.i209.i
  %.sroa.032.1.i.i.i215.i = phi ptr [ %i.tw, %bb.eq ], [ %.sroa.032.0.lcssa.i.i.i211.i, %._crit_edge.i.i.i209.i ] ; 3 uses
  %i.tx = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS4_8MDLoggerEE3$_2EclINS_17__normal_iteratorIPPPcSt6vectorISO_SaISO_EEEEEEbT_"(ptr nonnull readonly %i.cw, ptr %.sroa.032.1.i.i.i215.i)
  br i1 %i.tx, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i", label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i215.i, i64 8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %._crit_edge.i.i.i209.i
  %.sroa.032.2.i.i.i212.i = phi ptr [ %i.ty, %bb.es ], [ %.sroa.032.0.lcssa.i.i.i211.i, %._crit_edge.i.i.i209.i ] ; 2 uses
  %i.tz = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS4_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS4_8MDLoggerEE3$_2EclINS_17__normal_iteratorIPPPcSt6vectorISO_SaISO_EEEEEEbT_"(ptr nonnull readonly %i.cw, ptr %.sroa.032.2.i.i.i212.i)
  %spec.select.i.i.i213.i = select i1 %i.tz, ptr %.sroa.032.2.i.i.i212.i, ptr %i.te
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i": ; preds = %bb.en, %bb.em, %bb.el, %.lr.ph.i.i.i216.i, %bb.et, %bb.er, %bb.ep, %._crit_edge.i.i.i209.i
  %.sroa.08.0.in.sroa.speculated.i.i.i214.i = phi ptr [ %.sroa.032.1.i.i.i215.i, %bb.er ], [ %spec.select.i.i.i213.i, %bb.et ], [ %i.te, %._crit_edge.i.i.i209.i ], [ %.sroa.032.0.lcssa.i.i.i211.i, %bb.ep ], [ %i.tp, %bb.en ], [ %i.tn, %bb.em ], [ %i.tl, %bb.el ], [ %.sroa.032.042.i.i.i218.i, %.lr.ph.i.i.i216.i ]
  %i.ua = load ptr, ptr %i.bn, align 8, !tbaa !305
  %i.ub = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i214.i, %i.ua
  br i1 %i.ub, label %bb.eu, label %.critedge142.thread.i

bb.eu:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i"
  br i1 %7, label %bb.ev, label %bb.fa

bb.ev:                                            ; preds = %bb.eu
  %i.uc = load ptr, ptr %i.v, align 8, !tbaa !53  ; 3 uses
  %i.ud = icmp eq ptr %i.uc, null
  br i1 %i.ud, label %bb.fa, label %bb.ex

.loopexit356.i:                                   ; preds = %.noexc.i202.i
  %lpad.loopexit358.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

.loopexit.split-lp357.i:                          ; preds = %bb.ef
  %lpad.loopexit.split-lp359.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

bb.ew:                                            ; preds = %bb.ej
  %i.ue = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uf = load ptr, ptr %25, align 8, !tbaa !30   ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.t
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i: ; preds = %bb.ew
  %i.uh = load i64, ptr %i.t, align 8, !tbaa !39
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.ui) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i, %.loopexit.split-lp357.i, %.loopexit356.i
  %.pn121.i = phi { ptr, i32 } [ %i.ue, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i ], [ %lpad.loopexit.split-lp359.i, %.loopexit.split-lp357.i ], [ %lpad.loopexit358.i, %.loopexit356.i ], [ %i.ue, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.fb

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store ptr %i.w, ptr %26, align 8, !tbaa !36
  store i64 0, ptr %i.x, align 8, !tbaa !35
  store i8 1, ptr %i.y, align 8, !tbaa !56
  %i.uj = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.uk = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.cw, ptr noundef %i.uj, i32 noundef %i.da)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.ul = load ptr, ptr %i.uc, align 8, !tbaa !60
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load ptr, ptr %i.um, align 8
  invoke void %i.un(ptr noundef nonnull align 8 dereferenceable(8) %i.uc, ptr noundef nonnull align 8 dereferenceable(40) %i.uk)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit226.i unwind label %bb.ez, !inline_history !62

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit226.i: ; preds = %bb.ey
  %i.uo = load ptr, ptr %26, align 8, !tbaa !30   ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.w
  br i1 %i.up, label %_ZN3gmx14LogEntryWriterD2Ev.exit229.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit226.i
  %i.uq = load i64, ptr %i.w, align 8, !tbaa !39
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.ur) #29
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit229.i

_ZN3gmx14LogEntryWriterD2Ev.exit229.i:            ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit226.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.us = landingpad { ptr, i32 }
          cleanup
  %i.ut = load ptr, ptr %26, align 8, !tbaa !30   ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.w
  br i1 %i.uu, label %_ZN3gmx14LogEntryWriterD2Ev.exit232.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i230.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i230.i: ; preds = %bb.ez
  %i.uv = load i64, ptr %i.w, align 8, !tbaa !39
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #29
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit232.i

_ZN3gmx14LogEntryWriterD2Ev.exit232.i:            ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i230.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.fb

bb.fa:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit229.i, %bb.ev, %bb.eu
  %i.ux = load i32, ptr %4, align 8, !tbaa !240   ; 2 uses
  %i.uy = icmp slt i32 %.0620.i, %i.ux
  br i1 %i.uy, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.fa
  %.lcssa361.i = phi i32 [ %i.ux, %bb.fa ], [ %i.vn, %.lr.ph.i ]
  %i.uz = add nsw i32 %.lcssa361.i, -1
  store i32 %i.uz, ptr %4, align 8, !tbaa !240
  br label %.critedge142.thread.i

.lr.ph.i:                                         ; preds = %bb.fa, %.lr.ph.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.dg, %bb.fa ] ; 5 uses
  %.0.in621.i = phi i64 [ %indvars.iv.i.a, %.lr.ph.i ], [ %i.bb, %bb.fa ] ; 3 uses
  %i.va = load ptr, ptr %i.p, align 8, !tbaa !251 ; 2 uses
  %i.vb = getelementptr inbounds [36 x i8], ptr %i.va, i64 %indvars.iv.i.a
  %i.vc = getelementptr inbounds [36 x i8], ptr %i.va, i64 %.0.in621.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.vc, ptr noundef nonnull align 4 dereferenceable(36) %i.vb, i64 36, i1 false), !tbaa.struct !310
  %i.vd = load ptr, ptr %i.o, align 8, !tbaa !347 ; 2 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %indvars.iv.i.a
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !306
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.vd, i64 %.0.in621.i
  store ptr %i.vf, ptr %i.vg, align 8, !tbaa !306
  %i.vh = getelementptr inbounds [12 x i8], ptr %i.cm, i64 %indvars.iv.i.a ; 2 uses
  %i.vi = getelementptr inbounds [12 x i8], ptr %i.cm, i64 %.0.in621.i ; 2 uses
  %i.vj = load <2 x float>, ptr %i.vh, align 4, !tbaa !252
  store <2 x float> %i.vj, ptr %i.vi, align 4, !tbaa !252
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !252
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store float %i.vl, ptr %i.vm, align 4, !tbaa !252
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %i.vn = load i32, ptr %4, align 8, !tbaa !240   ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next.i, %i.vo
  br i1 %i.vp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !361

.critedge142.thread.i:                            ; preds = %._crit_edge.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i", %.critedge142.i, %.critedge138.thread.thread.i, %.critedge138.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, %._crit_edge628.i
  %.2.i = phi i1 [ %.091648.i, %.critedge142.i ], [ %.091648.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINSB_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNSB_8MDLoggerEE3$_2ET_SR_SR_T0_.exit.i" ], [ %.091648.i, %._crit_edge628.i ], [ %.091648.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i ], [ true, %._crit_edge.i ], [ %.091648.i, %.critedge138.thread.i ], [ %.091648.i, %.critedge138.thread.thread.i ] ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0305.0646.i, i64 256 ; 2 uses
  %i.vr = load ptr, ptr %i.dd, align 8, !tbaa !300
  %.not.i = icmp eq ptr %i.vq, %i.vr
  br i1 %.not.i, label %_ZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS1_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS1_8MDLoggerE.exit, label %bb.m, !llvm.loop !362

bb.fb:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit232.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i
  %.pn129.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn129.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i ], [ %i.us, %_ZN3gmx14LogEntryWriterD2Ev.exit232.i ], [ %.pn121.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i ]
  resume { ptr, i32 } %.pn129.pn.pn.pn.pn.pn.pn.i

_ZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS1_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS1_8MDLoggerE.exit: ; preds = %.critedge142.thread.i
  %i.vs = sext i1 %.2.i to i32
  %spec.select = add nsw i32 %.0906, %i.vs
  br label %_ZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS1_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS1_8MDLoggerE.exit.thread

_ZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS1_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS1_8MDLoggerE.exit.thread: ; preds = %_ZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS1_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS1_8MDLoggerE.exit, %bb.l, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZ24match_atomnames_with_rtpN3gmx8ArrayRefI17PreprocessResidueEENSA_I21MoleculePatchDatabaseEEP7t_atomsP8t_symtabNSA_INS9_11BasicVectorIfEEEEbRKNS9_8MDLoggerEE3$_0ET_SQ_SQ_T0_.exit"
  %.1 = phi i32 [ %.0906, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPPPcSt6vectorIS3_SaIS3_EEEEZ24match_atomnames_with_rtpN3gmx8ArrayRefI17PreprocessResidueEENSA_I21MoleculePatchDatabaseEEP7t_atomsP8t_symtabNSA_INS9_11BasicVectorIfEEEEbRKNS9_8MDLoggerEE3$_0ET_SQ_SQ_T0_.exit" ], [ %.0906, %bb.l ], [ %spec.select, %_ZL29match_atomnames_with_rtp_atomP7t_atomsN3gmx8ArrayRefINS1_11BasicVectorIfEEEEP8t_symtabiP17PreprocessResidueRK21MoleculePatchDatabasebRKNS1_8MDLoggerE.exit ]
  %i.vt = add nsw i32 %.1, 1                      ; 2 uses
  %i.vu = load i32, ptr %4, align 8, !tbaa !240
  %i.vv = icmp slt i32 %i.vt, %i.vu
  br i1 %i.vv, label %bb.b, label %._crit_edge, !llvm.loop !363
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZ24match_atomnames_with_rtpN3gmx8ArrayRefI17PreprocessResidueEENS3_I21MoleculePatchDatabaseEEP7t_atomsP8t_symtabNS3_INS2_11BasicVectorIfEEEEbRKNS2_8MDLoggerEE3$_0EclINS_17__normal_iteratorIPPPcSt6vectorISN_SaISN_EEEEEEbT_"(ptr nofree readonly captures(address_is_null) %.0.val.0.val, ptr nofree readonly captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !36
  %i.e = icmp eq ptr %.0.val.0.val, null
  br i1 %i.e, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.val.0.val) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.f, ptr %i.b, align 8, !tbaa !38
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !30
  %i.i = load i64, ptr %i.b, align 8, !tbaa !38
  store i64 %i.i, ptr %i.d, align 8, !tbaa !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %.0.val.0.val, align 1, !tbaa !39
  store i8 %i.k, ptr %i.j, align 1, !tbaa !39
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull readonly align 1 %.0.val.0.val, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = load ptr, ptr %1, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !9    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !36
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
          to label %.noexc10.i unwind label %bb.l

.noexc10.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.s, ptr %i.a, align 8, !tbaa !38
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i9.i, label %._crit_edge.i.i8.i

.noexc.i9.i:                                      ; preds = %bb.g
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11.i unwind label %bb.l ; 2 uses

.noexc11.i:                                       ; preds = %.noexc.i9.i
  store ptr %i.u, ptr %2, align 8, !tbaa !30
  %i.v = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.v, ptr %i.q, align 8, !tbaa !39
  br label %._crit_edge.i.i8.i

._crit_edge.i.i8.i:                               ; preds = %.noexc11.i, %bb.g
  %i.w = phi ptr [ %i.u, %.noexc11.i ], [ %i.q, %bb.g ] ; 2 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i8.i
  %i.x = load i8, ptr %i.p, align 1, !tbaa !39
  store i8 %i.x, ptr %i.w, align 1, !tbaa !39
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i8.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.p, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i8.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !35
  %i.aa = load ptr, ptr %2, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ac = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.q
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.q, align 8, !tbaa !39
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ah = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %"_ZZ24match_atomnames_with_rtpN3gmx8ArrayRefI17PreprocessResidueEENS0_I21MoleculePatchDatabaseEEP7t_atomsP8t_symtabNS0_INS_11BasicVectorIfEEEEbRKNS_8MDLoggerEENK3$_0clEPPc.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %"_ZZ24match_atomnames_with_rtpN3gmx8ArrayRefI17PreprocessResidueEENS0_I21MoleculePatchDatabaseEEP7t_atomsP8t_symtabNS0_INS_11BasicVectorIfEEEEbRKNS_8MDLoggerEENK3$_0clEPPc.exit"

bb.l:                                             ; preds = %.noexc.i9.i, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

bb.m:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %bb.m
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !39
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ar = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.d
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i
  %i.at = load i64, ptr %i.d, align 8, !tbaa !39
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn.i

"_ZZ24match_atomnames_with_rtpN3gmx8ArrayRefI17PreprocessResidueEENS0_I21MoleculePatchDatabaseEEP7t_atomsP8t_symtabNS0_INS_11BasicVectorIfEEEEbRKNS_8MDLoggerEENK3$_0clEPPc.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
end_hunk_0
