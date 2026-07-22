inline.NumInlined: 1773
inline.NumDeleted: 737
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !17
  %i.ka = and i8 %i.jz, 8
  %.not.i21.i.i = icmp eq i8 %i.ka, 0
  br i1 %.not.i21.i.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i20.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !17
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !17
  %i.kg = and i8 %i.kf, 8
  %.not5.i.i.i = icmp eq i8 %i.kg, 0
  br i1 %.not5.i.i.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !17
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !17
  %i.km = and i8 %i.kl, 8
  %.not6.i.i.i = icmp eq i8 %i.km, 0
  br i1 %.not6.i.i.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1225, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !17
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !17
  %i.ks = and i8 %i.kr, 8
  %.not7.i.i.i = icmp eq i8 %i.ks, 0
  br i1 %.not7.i.i.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1227, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  %i.ku = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.kv = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.kv, label %.lr.ph.i.i.i.i20.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !114

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.bm
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i.i19.i.i

._crit_edge.i.i.i.i19.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.bi
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.js, %bb.bi ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.jo, %bb.bi ] ; 5 uses
  %i.kw = sub i64 %i.jr, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.kw, label %bb.bs [
    i64 3, label %bb.bn
    i64 2, label %bb.bp
    i64 1, label %bb.br
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i.i.i19.i.i
  %i.kx = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !17
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !17
  %i.lb = and i8 %i.la, 8
  %.not8.i.i.i = icmp eq i8 %i.lb, 0
  br i1 %.not8.i.i.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lc = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i.i.i.i19.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.lc, %bb.bo ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i19.i.i ] ; 3 uses
  %i.ld = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !17
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !17
  %i.lh = and i8 %i.lg, 8
  %.not9.i.i.i = icmp eq i8 %i.lh, 0
  br i1 %.not9.i.i.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.li = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge.i.i.i.i19.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.li, %bb.bq ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i19.i.i ] ; 2 uses
  %i.lj = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !17
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !17
  %i.ln = and i8 %i.lm, 8
  %.not10.i.i.i = icmp eq i8 %i.ln, 0
  br i1 %.not10.i.i.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.i.i.i.i19.i.i
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.bj
  %i.lo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1225: ; preds = %bb.bk
  %i.lp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1227: ; preds = %bb.bl
  %i.lq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i20.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1225, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1227, %bb.bs, %bb.br, %bb.bp, %bb.bn
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.bp ], [ %i.jq, %bb.bs ], [ %.2.i.i.i.i.i.i, %bb.br ], [ %.029.lcssa.i.i.i.i.i.i, %bb.bn ], [ %i.lq, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1227 ], [ %i.lo, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.lp, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i.loopexit.split.loop.exit1225 ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i20.i.i ]
  %i.lr = ptrtoint ptr %.028.i.i.i.i.i.i to i64
  %i.ls = sub i64 %i.lr, %i.js                    ; 5 uses
  %i.lt = icmp ugt i64 %i.ls, %i.jp
  br i1 %i.lt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i64 noundef %i.ls, i64 noundef %i.jp) #26
          to label %.noexc22.i.i unwind label %.loopexit67.i.loopexit.split-lp.i.i

.noexc22.i.i:                                     ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.i.i
  %i.lu = sub nuw i64 %i.jp, %i.ls                ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ls ; 5 uses
  store i64 %i.lu, ptr %36, align 8
  store ptr %i.lv, ptr %i.df, align 8
  %i.lw = icmp eq i64 %i.jp, %i.ls
  br i1 %i.lw, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i, label %bb.bv, !llvm.loop !115

bb.bv:                                            ; preds = %bb.bu
  %i.lx = load i8, ptr %i.lv, align 1, !tbaa !17
  switch i8 %i.lx, label %bb.cc [
    i8 35, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i
    i8 45, label %bb.bw
  ]

.loopexit.i.i.i:                                  ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i, %.noexc42.i.i.i, %bb.bg
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp.i.i.i:                         ; preds = %._crit_edge.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit67.i.loopexit.i.i:                       ; preds = %bb.cb, %.noexc.i.i.i.i14.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit67.i.i.i

.loopexit67.i.loopexit.split-lp.i.i:              ; preds = %bb.bt
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit67.i.i.i

.loopexit.split-lp68.i.i.i:                       ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i.i
  %lpad.loopexit.split-lp70.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit67.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ly = icmp eq i64 %i.lu, 2
  br i1 %i.ly, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, label %bb.bx

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.bw
  %i.lz = load i16, ptr %i.lv, align 1
  %i.ma = icmp ne i16 %i.lz, 11565
  %i.mb = zext i1 %i.ma to i32
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i.i, label %.thread.i.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  invoke void @_ZN4absl12lts_2025051214flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 47, ptr nonnull @.str.37, i1 noundef zeroext true)
          to label %.thread.i.i.i unwind label %.loopexit.split-lp68.i.i.i

.thread.i.i.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %.loopexit66.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.md = load ptr, ptr %i.db, align 8, !tbaa !11 ; 9 uses
  %i.me = load ptr, ptr %i.dc, align 8, !tbaa !20
  %.not.i13.i.i = icmp eq ptr %i.md, %i.me
  br i1 %.not.i13.i.i, label %bb.cb, label %bb.by

.thread.i.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.mf = load ptr, ptr %i.db, align 8, !tbaa !11 ; 5 uses
  %i.mg = load ptr, ptr %i.dc, align 8, !tbaa !20
  %.not.i1324.i.i = icmp eq ptr %i.mf, %i.mg
  br i1 %.not.i1324.i.i, label %bb.cb, label %._crit_edge.i.i.i.i.i.thread.i.i

._crit_edge.i.i.i.i.i.thread.i.i:                 ; preds = %.thread.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  store ptr %i.mh, ptr %i.mf, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 2, ptr %i.b, align 8, !tbaa !23
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 4 uses
  store ptr %i.mi, ptr %i.md, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.lu, ptr %i.b, align 8, !tbaa !23
  %i.mj = icmp ugt i64 %i.lu, 15
  br i1 %i.mj, label %.noexc.i.i.i.i14.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i14.i.i:                             ; preds = %bb.by
  %i.mk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.i.thread238.i.i unwind label %.loopexit67.i.loopexit.i.i ; 2 uses

._crit_edge.i.i.i.i.i.thread238.i.i:              ; preds = %.noexc.i.i.i.i14.i.i
  store ptr %i.mk, ptr %i.md, align 8, !tbaa !12
  %i.ml = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.ml, ptr %i.mi, align 8, !tbaa !17
  br label %bb.ca

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.by
  %cond.i.i = icmp eq i64 %i.lu, 1
  br i1 %cond.i.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.mm = load i8, ptr %i.lv, align 1, !tbaa !17
  store i8 %i.mm, ptr %i.mi, align 8, !tbaa !17
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.thread238.i.i, %._crit_edge.i.i.i.i.i.thread.i.i
  %i.mn = phi ptr [ %i.mh, %._crit_edge.i.i.i.i.i.thread.i.i ], [ %i.mi, %._crit_edge.i.i.i.i.i.i.i ], [ %i.mk, %._crit_edge.i.i.i.i.i.thread238.i.i ]
  %i.mo = phi ptr [ %i.mf, %._crit_edge.i.i.i.i.i.thread.i.i ], [ %i.md, %._crit_edge.i.i.i.i.i.i.i ], [ %i.md, %._crit_edge.i.i.i.i.i.thread238.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mn, ptr nonnull align 1 %i.lv, i64 %i.lu, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !23
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i: ; preds = %bb.ca, %bb.bz
  %i.mp = phi i64 [ %.pre.i, %bb.ca ], [ 1, %bb.bz ] ; 2 uses
  %i.mq = phi ptr [ %i.mo, %bb.ca ], [ %i.md, %bb.bz ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store i64 %i.mp, ptr %i.mr, align 8, !tbaa !25
  %65 = load ptr, ptr %i.mq, align 8, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %65, i64 %i.mp
  store i8 0, ptr %i.ms, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.mt = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  store ptr %i.mu, ptr %i.db, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i

bb.cb:                                            ; preds = %.thread.i.i, %bb.bx
  %i.mv = phi ptr [ %i.mf, %.thread.i.i ], [ %i.md, %bb.bx ]
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr %i.mv, ptr noundef nonnull align 8 dereferenceable(16) %36)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i unwind label %.loopexit67.i.loopexit.i.i

bb.cc:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  store i64 32, ptr %38, align 8
  store ptr @.str.38, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  %i.mw = load ptr, ptr %i.gf, align 8, !tbaa !12
  %i.mx = load i64, ptr %i.iw, align 8, !tbaa !25
  store i64 %i.mx, ptr %39, align 8
  store ptr %i.mw, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  store i64 2, ptr %40, align 8
  store ptr @.str.39, ptr %i.di, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  store i64 %i.jp, ptr %41, align 8
  store ptr %i.jo, ptr %i.dj, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull align 8 dereferenceable(48) %41)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.my = load ptr, ptr %37, align 8, !tbaa !12
  %i.mz = load i64, ptr %i.dk, align 8, !tbaa !25
  invoke void @_ZN4absl12lts_2025051214flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.mz, ptr %i.my, i1 noundef zeroext true)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.na = load ptr, ptr %37, align 8, !tbaa !12   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.dl
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i: ; preds = %bb.ce
  %i.nc = load i64, ptr %i.dl, align 8, !tbaa !17
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i, %bb.cb, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i, %bb.bv, %bb.bu
  %.125.i.i.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i.i ], [ %.02479.i.i.i, %bb.bu ], [ %.02479.i.i.i, %bb.bv ], [ %.02479.i.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit.i.i.i ], [ %.02479.i.i.i, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  %i.ne = load ptr, ptr %31, align 8, !tbaa !37
  %i.nf = getelementptr i8, ptr %i.ne, i64 -24
  %i.ng = load i64, ptr %i.nf, align 8
  %i.nh = getelementptr inbounds i8, ptr %31, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 240
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i.i.i.i166 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i.i.i166, label %._crit_edge.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cc
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i

bb.cg:                                            ; preds = %bb.cd
  %i.nl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nm = load ptr, ptr %37, align 8, !tbaa !12   ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.dl
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i.i: ; preds = %bb.cg
  %i.no = load i64, ptr %i.dl, align 8, !tbaa !17
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i.i, %bb.cf
  %.pn.i.i.i = phi { ptr, i32 } [ %i.nk, %bb.cf ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i.i ], [ %i.nl, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %.loopexit67.i.i.i

.loopexit67.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i, %.loopexit.split-lp68.i.i.i, %.loopexit67.i.loopexit.split-lp.i.i, %.loopexit67.i.loopexit.i.i
  %.pn30.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i.i ], [ %lpad.loopexit.split-lp70.i.i.i, %.loopexit.split-lp68.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit67.i.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit67.i.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.ch

.loopexit66.i.i.i:                                ; preds = %bb.bh, %.thread.i.i.i
  %.226.i.i.i = phi i1 [ false, %.thread.i.i.i ], [ %.02479.i.i.i, %bb.bh ]
  %i.nq = load ptr, ptr %35, align 8, !tbaa !12   ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.dd
  br i1 %i.nr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i: ; preds = %.loopexit66.i.i.i
  %i.ns = load i64, ptr %i.dd, align 8, !tbaa !17
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57.i.i.i

bb.ch:                                            ; preds = %.loopexit67.i.i.i, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn30.pn.i.i.i = phi { ptr, i32 } [ %.pn30.i.i.i, %.loopexit67.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  %i.nu = load ptr, ptr %35, align 8, !tbaa !12   ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.dd
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i: ; preds = %bb.ch
  %i.nw = load i64, ptr %i.dd, align 8, !tbaa !17
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i, %bb.ba
  %.pn33.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn33.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i ], [ %.pn30.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i.i.i ], [ %i.ie, %bb.ba ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %.body.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57.i.i.i: ; preds = %.loopexit66.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br i1 %.226.i.i.i, label %bb.cj, label %_ZNSt6vectorIN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE9push_backERKS4_.exit.i.i

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i57.i.i.i
  %i.ny = load ptr, ptr %i.aj, align 8, !tbaa !72 ; 12 uses
  %i.nz = load ptr, ptr %i.ak, align 8, !tbaa !73
  %.not.i5.i.i = icmp eq ptr %i.ny, %i.nz
  br i1 %.not.i5.i.i, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oa = load ptr, ptr %i.db, align 8, !tbaa !11 ; 2 uses
  %i.ob = load ptr, ptr %42, align 8, !tbaa !7    ; 2 uses
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = sub i64 %i.oc, %i.od                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.oa, %i.ob
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc7.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.of = icmp ugt i64 %i.oe, 9223372036854775776
  br i1 %i.of, label %.noexc.i.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !21

.noexc.i.i.i.i.i.i:                               ; preds = %bb.cl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i

.noexc6.i.i:                                      ; preds = %.noexc.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cl
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oe) #24
          to label %.noexc7.i.i unwind label %.loopexit.i.i

.noexc7.i.i:                                      ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.ck
  %i.oh = phi ptr [ null, %bb.ck ], [ %i.og, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.oh, ptr %i.ny, align 8, !tbaa !7
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  store ptr %i.oh, ptr %i.oi, align 8, !tbaa !11
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.oe
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store ptr %i.oj, ptr %i.ok, align 8, !tbaa !20
  %i.ol = load ptr, ptr %42, align 8, !tbaa !22
  %i.om = load ptr, ptr %i.db, align 8, !tbaa !22
  %i.on = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ol, ptr %i.om, ptr noundef %i.oh)
          to label %_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_18ArgsListC2ERKS3_.exit.i.i.i unwind label %bb.cm

bb.cm:                                            ; preds = %.noexc7.i.i
  %i.oo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.op = load ptr, ptr %i.ny, align 8, !tbaa !7  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i.i.i.i, label %.body.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !20
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.op to i64
  %i.ou = sub i64 %i.os, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef %i.ou) #25
  br label %.body.i.i
end_hunk_0
