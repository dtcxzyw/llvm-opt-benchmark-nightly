inline.NumInlined: 1543
inline.NumDeleted: 476
begin_hunk_0_@_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_:bb.a
  store ptr %i.ee, ptr %9, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ee, ptr noundef nonnull align 1 dereferenceable(3) @.str.36, i64 3, i1 false)
  store i64 3, ptr %i.ef, align 8, !tbaa !78
  store i8 0, ptr %i.eg, align 1, !tbaa !34
  %i.hx = load ptr, ptr %i.ex, align 8, !tbaa !147
  %i.hy = load i64, ptr %i.fi, align 8, !tbaa !78
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.hx, i64 noundef %i.hy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i unwind label %.loopexit291

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i: ; preds = %_ZNSolsEPFRSoS_E.exit71.i
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull @.str.66, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i unwind label %.loopexit291 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 120 ; 4 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !146
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !145
  %.not10.i = icmp eq ptr %i.ic, %i.id
  br i1 %.not10.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i, label %.lr.ph.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i
  %i.ie = load ptr, ptr %8, align 8, !tbaa !8
  %i.if = getelementptr i8, ptr %i.ie, i64 -24
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = getelementptr inbounds i8, ptr %8, i64 %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 240
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i125.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i125.i, label %.invoke37.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 56
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !28
  %.not.i1.i.i127.i = icmp eq i8 %i.il, 0
  br i1 %.not.i1.i.i127.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 67
  %i.in = load i8, ptr %i.im, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ij)
          to label %.noexc131.i unwind label %.loopexit291

.noexc131.i:                                      ; preds = %bb.al
  %i.io = load ptr, ptr %i.ij, align 8, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = invoke noundef signext i8 %i.iq(ptr noundef nonnull align 8 dereferenceable(570) %i.ij, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i unwind label %.loopexit291, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i: ; preds = %.noexc131.i, %bb.ak
  %.0.i.i.i129.i = phi i8 [ %i.in, %bb.ak ], [ %i.ir, %.noexc131.i ]
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext %.0.i.i.i129.i)
          to label %.noexc133.i unwind label %.loopexit291

.noexc133.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
          to label %_ZNSolsEPFRSoS_E.exit81.preheader.i unwind label %.loopexit291 ; 0 uses

_ZNSolsEPFRSoS_E.exit81.preheader.i:              ; preds = %.noexc133.i
  %i.iu = load ptr, ptr %i.ib, align 8, !tbaa !146
  %i.iv = load ptr, ptr %i.hw, align 8, !tbaa !145
  %.not11.i = icmp eq ptr %i.iu, %i.iv
  br i1 %.not11.i, label %_ZNSolsEPFRSoS_E.exit81._crit_edge.i, label %.lr.ph5.i

.loopexit291:                                     ; preds = %_ZNSolsEPFRSoS_E.exit71.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i, %bb.al, %.noexc131.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i, %.noexc133.i, %bb.ao, %.noexc142.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i, %.noexc144.i, %_ZNSolsEPFRSoS_E.exit85._crit_edge.i
  %lpad.loopexit293 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp292:                            ; preds = %.invoke37.i
  %lpad.loopexit.split-lp294 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i
  %.0413.i = phi i32 [ %i.iz, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i ]
  %i.iw = load ptr, ptr %9, align 8, !tbaa !147
  %i.ix = load i64, ptr %i.ef, align 8, !tbaa !78
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.iw, i64 noundef %i.ix)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i unwind label %bb.am ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i: ; preds = %.lr.ph.i
  %i.iz = add i32 %.0413.i, 1                     ; 2 uses
  %i.ja = zext i32 %i.iz to i64
  %i.jb = load ptr, ptr %i.ib, align 8, !tbaa !146
  %i.jc = load ptr, ptr %i.hw, align 8, !tbaa !145
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = ashr exact i64 %i.jf, 5
  %i.jh = icmp ugt i64 %i.jg, %i.ja
  br i1 %i.jh, label %.lr.ph.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i, !llvm.loop !193

bb.am:                                            ; preds = %.lr.ph.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSolsEPFRSoS_E.exit81._crit_edge.i:             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i, %_ZNSolsEPFRSoS_E.exit81.preheader.i
  %i.jj = load ptr, ptr %8, align 8, !tbaa !8
  %i.jk = getelementptr i8, ptr %i.jj, i64 -24
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds i8, ptr %8, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 240
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i136.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i136.i, label %.invoke37.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i

.invoke37.i:                                      ; preds = %_ZNSolsEPFRSoS_E.exit81._crit_edge.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.cont38.i unwind label %.loopexit.split-lp292

.cont38.i:                                        ; preds = %.invoke37.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i: ; preds = %_ZNSolsEPFRSoS_E.exit81._crit_edge.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !28
  %.not.i1.i.i138.i = icmp eq i8 %i.jq, 0
  br i1 %.not.i1.i.i138.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 67
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jo)
          to label %.noexc142.i unwind label %.loopexit291

.noexc142.i:                                      ; preds = %bb.ao
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = invoke noundef signext i8 %i.jv(ptr noundef nonnull align 8 dereferenceable(570) %i.jo, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i unwind label %.loopexit291, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i: ; preds = %.noexc142.i, %bb.an
  %.0.i.i.i140.i = phi i8 [ %i.js, %bb.an ], [ %i.jw, %.noexc142.i ]
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext %.0.i.i.i140.i)
          to label %.noexc144.i unwind label %.loopexit291

.noexc144.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %_ZNSolsEPFRSoS_E.exit85.preheader.i unwind label %.loopexit291 ; 0 uses

_ZNSolsEPFRSoS_E.exit85.preheader.i:              ; preds = %.noexc144.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hu, i64 48 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !146 ; 2 uses
  %i.kb = load ptr, ptr %i.hv, align 8, !tbaa !145 ; 2 uses
  %.not12.i = icmp eq ptr %i.ka, %i.kb
  br i1 %.not12.i, label %_ZNSolsEPFRSoS_E.exit85._crit_edge.i, label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %_ZNSolsEPFRSoS_E.exit85.preheader.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hu, i64 608
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hu, i64 600 ; 5 uses
  br label %bb.aq

.lr.ph5.i:                                        ; preds = %_ZNSolsEPFRSoS_E.exit81.preheader.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i
  %i.ke = phi i64 [ %i.kp, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i ], [ 0, %_ZNSolsEPFRSoS_E.exit81.preheader.i ]
  %.0404.i = phi i32 [ %i.ko, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i ], [ 0, %_ZNSolsEPFRSoS_E.exit81.preheader.i ]
  %i.kf = load ptr, ptr %9, align 8, !tbaa !147
  %i.kg = load i64, ptr %i.ef, align 8, !tbaa !78
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.kf, i64 noundef %i.kg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i unwind label %bb.ap

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i: ; preds = %.lr.ph5.i
  %i.ki = load ptr, ptr %i.hw, align 8, !tbaa !145
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %i.ki, i64 %i.ke ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !147
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !78
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef %i.kk, i64 noundef %i.km)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i unwind label %bb.ap ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i
  %i.ko = add i32 %.0404.i, 1                     ; 2 uses
  %i.kp = zext i32 %i.ko to i64                   ; 2 uses
  %i.kq = load ptr, ptr %i.ib, align 8, !tbaa !146
  %i.kr = load ptr, ptr %i.hw, align 8, !tbaa !145
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = ashr exact i64 %i.ku, 5
  %i.kw = icmp ugt i64 %i.kv, %i.kp
  br i1 %i.kw, label %.lr.ph5.i, label %_ZNSolsEPFRSoS_E.exit81._crit_edge.i, !llvm.loop !194

bb.ap:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i, %.lr.ph5.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSolsEPFRSoS_E.exit85._crit_edge.i:             ; preds = %_ZNSolsEPFRSoS_E.exit93.i, %_ZNSolsEPFRSoS_E.exit85.preheader.i
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bb unwind label %.loopexit291 ; 0 uses

bb.aq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit93.i, %.lr.ph9.i
  %i.kz = phi ptr [ %i.kb, %.lr.ph9.i ], [ %18, %_ZNSolsEPFRSoS_E.exit93.i ] ; 3 uses
  %i.la = phi ptr [ %i.ka, %.lr.ph9.i ], [ %19, %_ZNSolsEPFRSoS_E.exit93.i ] ; 2 uses
  %i.lb = phi i64 [ 0, %.lr.ph9.i ], [ %i.ny, %_ZNSolsEPFRSoS_E.exit93.i ] ; 2 uses
  %.0398.i = phi i32 [ 0, %.lr.ph9.i ], [ %i.nx, %_ZNSolsEPFRSoS_E.exit93.i ]
  %i.lc = load ptr, ptr %i.kc, align 8, !tbaa !117 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not10.i.i.i.i.i, label %bb.at, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aq
  %i.ld = load i64, ptr %i.fi, align 8, !tbaa !78 ; 4 uses
  %i.le = load ptr, ptr %i.ex, align 8            ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ld, i64 %i.lg) ; 2 uses
  %i.lh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.lh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.li = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !147
  %i.lk = call i32 @memcmp(ptr noundef %i.lj, ptr noundef %i.le, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.ar
  %i.ll = sub i64 %i.lg, %i.ld
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ll, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.lk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.lm = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0     ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.lm, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.lm, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i, label %bb.ar, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i
  %i.ln = icmp eq ptr %.19.i.i.i.i.i, %i.kd
  br i1 %i.ln, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i61 = call i64 @llvm.umin.i64(i64 %i.lp, i64 %i.ld) ; 2 uses
  %i.lq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i61, 0
  br i1 %i.lq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i67, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i62

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i62: ; preds = %bb.as
  %i.lr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !147
  %i.lt = call i32 @memcmp(ptr noundef %i.le, ptr noundef %i.ls, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i61) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i63 = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i.i.i.i.i.i63, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i67, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i64

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i67: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i62, %bb.as
  %i.lu = sub i64 %i.ld, %i.lp
  %spec.select7.i.i.i.i.i.i.i.i68 = call i64 @llvm.smax.i64(i64 %i.lu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i69 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i68, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i70 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i69 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i64

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i64: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i67, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i62
  %.0.i.i.i.i.i.i.i65 = phi i32 [ %i.lt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i62 ], [ %.0.i6.i.i.i.i.i.i.i70, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i67 ]
  %i.lv = icmp slt i32 %.0.i.i.i.i.i.i.i65, 0
  %spec.select.i.i.i.i = select i1 %i.lv, ptr %i.kd, ptr %.19.i.i.i.i.i
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i64, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i, %bb.aq
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.kd, %bb.aq ], [ %i.kd, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i64 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 64
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !130
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !133
  %i.lz = getelementptr inbounds nuw [280 x i8], ptr %i.ly, i64 %i.lb ; 4 uses
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr %i.kz, i64 %i.lb ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !78 ; 2 uses
  %14 = icmp eq i64 %i.mc, 0
  br i1 %14, label %_ZNSolsEPFRSoS_E.exit93.i, label %15

15:                                               ; preds = %bb.at
  %16 = load i8, ptr %i.lz, align 8, !tbaa !36, !range !58, !noundef !59
  %17 = trunc nuw i8 %16 to i1
  br i1 %17, label %bb.au, label %_ZNSolsEPFRSoS_E.exit93.i

bb.au:                                            ; preds = %15
  %i.md = load ptr, ptr %i.ma, align 8, !tbaa !147
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.md, i64 noundef %i.mc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i unwind label %.loopexit.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i: ; preds = %bb.au
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 208 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 216 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !60
  %i.mi = load ptr, ptr %i.mf, align 8, !tbaa !61
  %.not13.i = icmp eq ptr %i.mh, %i.mi
  br i1 %.not13.i, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  br label %bb.ay

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i: ; preds = %_ZNSolsEe.exit.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i
  %i.mk = load ptr, ptr %8, align 8, !tbaa !8
  %i.ml = getelementptr i8, ptr %i.mk, i64 -24
  %i.mm = load i64, ptr %i.ml, align 8
  %i.mn = getelementptr inbounds i8, ptr %8, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 240
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i147.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i147.i, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i

bb.av:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc152.i unwind label %.loopexit.split-lp.i

.noexc152.i:                                      ; preds = %bb.av
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  %i.mr = load i8, ptr %i.mq, align 8, !tbaa !28
  %.not.i1.i.i149.i = icmp eq i8 %i.mr, 0
  br i1 %.not.i1.i.i149.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 67
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mp)
          to label %.noexc153.i unwind label %.loopexit.i

.noexc153.i:                                      ; preds = %bb.ax
  %i.mu = load ptr, ptr %i.mp, align 8, !tbaa !8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = invoke noundef signext i8 %i.mw(ptr noundef nonnull align 8 dereferenceable(570) %i.mp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i unwind label %.loopexit.i, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i: ; preds = %.noexc153.i, %bb.aw
  %.0.i.i.i151.i = phi i8 [ %i.mt, %bb.aw ], [ %i.mx, %.noexc153.i ]
  %i.my = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext %.0.i.i.i151.i)
          to label %.noexc155.i unwind label %.loopexit.i

.noexc155.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i
  %i.mz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.my)
          to label %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i unwind label %.loopexit.i ; 0 uses

.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i:    ; preds = %.noexc155.i
  %.pre.i66 = load ptr, ptr %i.jz, align 8, !tbaa !146
  %.pre14.i = load ptr, ptr %i.hv, align 8, !tbaa !145
  br label %_ZNSolsEPFRSoS_E.exit93.i

.loopexit.i:                                      ; preds = %.noexc155.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i, %.noexc153.i, %bb.ax, %bb.au
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp.i:                             ; preds = %bb.av
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ay:                                            ; preds = %_ZNSolsEe.exit.i, %.lr.ph7.i
  %i.na = phi i64 [ 0, %.lr.ph7.i ], [ %i.no, %_ZNSolsEe.exit.i ]
  %.0316.i = phi i32 [ 0, %.lr.ph7.i ], [ %i.nn, %_ZNSolsEe.exit.i ]
  %i.nb = load ptr, ptr %9, align 8, !tbaa !147
  %i.nc = load i64, ptr %i.ef, align 8, !tbaa !78
  %i.nd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.nb, i64 noundef %i.nc)
          to label %bb.az unwind label %bb.ba     ; 3 uses

bb.az:                                            ; preds = %bb.ay
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !8
  %i.nf = getelementptr i8, ptr %i.ne, i64 -24
  %i.ng = load i64, ptr %i.nf, align 8
  %i.nh = getelementptr inbounds i8, ptr %i.nd, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i64 8, ptr %i.ni, align 8, !tbaa !195
  %i.nj = load ptr, ptr %i.mj, align 8, !tbaa !66
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.nj, i64 %i.na
  %i.nl = load x86_fp80, ptr %i.nk, align 16, !tbaa !67
  %i.nm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, x86_fp80 noundef %i.nl)
          to label %_ZNSolsEe.exit.i unwind label %bb.ba ; 0 uses

_ZNSolsEe.exit.i:                                 ; preds = %bb.az
  %i.nn = add i32 %.0316.i, 1                     ; 2 uses
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  %i.np = load ptr, ptr %i.mg, align 8, !tbaa !60
  %i.nq = load ptr, ptr %i.mf, align 8, !tbaa !61
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = ashr exact i64 %i.nt, 2
  %i.nv = icmp ugt i64 %i.nu, %i.no
  br i1 %i.nv, label %bb.ay, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i, !llvm.loop !196

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSolsEPFRSoS_E.exit93.i:                        ; preds = %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i, %15, %bb.at
  %18 = phi ptr [ %.pre14.i, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i ], [ %i.kz, %15 ], [ %i.kz, %bb.at ] ; 2 uses
  %19 = phi ptr [ %.pre.i66, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i ], [ %i.la, %15 ], [ %i.la, %bb.at ] ; 2 uses
  %i.nx = add i32 %.0398.i, 1                     ; 2 uses
  %i.ny = zext i32 %i.nx to i64                   ; 2 uses
  %i.nz = ptrtoint ptr %19 to i64
  %i.oa = ptrtoint ptr %18 to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = ashr exact i64 %i.ob, 5
  %i.od = icmp ugt i64 %i.oc, %i.ny
  br i1 %i.od, label %bb.aq, label %_ZNSolsEPFRSoS_E.exit85._crit_edge.i, !llvm.loop !197

bb.bb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit85._crit_edge.i
  %i.oe = load ptr, ptr %9, align 8, !tbaa !147   ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.ee
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.oe) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  store ptr %.pre446.pre, ptr %8, align 8, !tbaa !8
  %i.og = load i64, ptr %i.eh, align 8
  %i.oh = getelementptr inbounds i8, ptr %8, i64 %i.og
  store ptr %.pre448.pre, ptr %i.oh, align 8, !tbaa !8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ei) #21
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ej) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.oi = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.dz
  br i1 %i.oj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i
  call void @_ZdlPv(ptr noundef %i.oi) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i

bb.bc:                                            ; preds = %.loopexit291, %.loopexit.split-lp292, %bb.ba, %.loopexit.split-lp.i, %.loopexit.i, %bb.ap, %bb.am
  %.pn48.i = phi { ptr, i32 } [ %i.ji, %bb.am ], [ %i.kx, %bb.ap ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.nw, %bb.ba ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit293, %.loopexit291 ], [ %lpad.loopexit.split-lp294, %.loopexit.split-lp292 ]
  %i.ok = load ptr, ptr %9, align 8, !tbaa !147   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.ee
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.ok) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit286, %.loopexit.split-lp287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i
  %.pn48.pn.pn.i = phi { ptr, i32 } [ %.pn48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i ], [ %lpad.loopexit288, %.loopexit286 ], [ %lpad.loopexit.split-lp289, %.loopexit.split-lp287 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8) #21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ah
  %.pn48.pn.pn.pn.i = phi { ptr, i32 } [ %.pn48.pn.pn.i, %bb.bd ], [ %i.gz, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit276, %.loopexit.split-lp277, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i
  %.pn48.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn48.pn.pn.pn.i, %bb.be ], [ %lpad.phi285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %lpad.loopexit278, %.loopexit276 ], [ %lpad.loopexit.split-lp279, %.loopexit.split-lp277 ]
  %i.om = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.dz
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i: ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef %i.om) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.oo = add nuw i32 %.027436, 1                 ; 2 uses
  %exitcond444.not = icmp eq i32 %i.oo, %i.k
  br i1 %exitcond444.not, label %.preheader, label %bb.x, !llvm.loop !198

._crit_edge440.loopexit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179
  %.pre = load ptr, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, align 8
  %.pre447 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 24), align 8
  br label %._crit_edge440

._crit_edge440:                                   ; preds = %.preheader270, %._crit_edge440.loopexit, %.preheader
  %i.op = phi ptr [ %.pre447, %._crit_edge440.loopexit ], [ %.pre448.pre, %.preheader ], [ %.pre448.pre, %.preheader270 ]
  %i.oq = phi ptr [ %.pre, %._crit_edge440.loopexit ], [ %.pre446.pre, %.preheader ], [ %.pre446.pre, %.preheader270 ] ; 2 uses
  store ptr %i.oq, ptr %13, align 8, !tbaa !8
  %i.or = getelementptr i8, ptr %i.oq, i64 -24
  %i.os = load i64, ptr %i.or, align 8
  %i.ot = getelementptr inbounds i8, ptr %13, i64 %i.os
  store ptr %i.op, ptr %i.ot, align 8, !tbaa !8
  %i.ou = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ou) #21
  %i.ov = getelementptr inbounds nuw i8, ptr %13, i64 248
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ov) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.ow = load ptr, ptr %11, align 8, !tbaa !147  ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.bk
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %._crit_edge440
  call void @_ZdlPv(ptr noundef %i.ow) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %._crit_edge440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cs

bb.bg:                                            ; preds = %.lr.ph439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179
  %.0438 = phi i32 [ 1, %.lr.ph439 ], [ %i.yr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179 ] ; 2 uses
  %i.oy = zext i32 %.0438 to i64
  %i.oz = load ptr, ptr %0, align 8, !tbaa !145
  %i.pa = getelementptr inbounds nuw [32 x i8], ptr %i.oz, i64 %i.oy ; 4 uses
  %.val44 = load ptr, ptr %1, align 8, !tbaa !147, !noalias !199
  %.val45 = load i64, ptr %i.o, align 8, !tbaa !78, !noalias !199 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.ek, ptr %2, align 8, !tbaa !75, !alias.scope !202
  store i64 0, ptr %i.el, align 8, !tbaa !78, !alias.scope !202
  store i8 0, ptr %i.ek, align 8, !tbaa !34, !alias.scope !202
  %i.pb = add i64 %.val45, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.pb)
          to label %bb.bh unwind label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.pc = load i64, ptr %i.el, align 8, !tbaa !78, !alias.scope !202
  %i.pd = sub i64 4611686018427387903, %i.pc
  %i.pe = icmp ult i64 %i.pd, %.val45
  br i1 %i.pe, label %.invoke.i.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80: ; preds = %bb.bh
  %i.pf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %.val44, i64 noundef %.val45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80
  %i.pg = load i64, ptr %i.el, align 8, !tbaa !78, !alias.scope !202
  %i.ph = icmp eq i64 %i.pg, 4611686018427387903
  br i1 %i.ph, label %.invoke.i.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82

.invoke.i.i.i221:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81, %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.cont.i.i.i222 unwind label %.loopexit.split-lp

.cont.i.i.i222:                                   ; preds = %.invoke.i.i.i221
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i81
  %i.pi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %.invoke.i.i.i221
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.pj = load ptr, ptr %2, align 8, !tbaa !147, !alias.scope !202 ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.ek
  br i1 %i.pk, label %.body71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.pj) #22
  br label %.body71

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i82
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 3 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !78 ; 2 uses
  %i.pn = load i64, ptr %i.el, align 8, !tbaa !78
  %i.po = sub i64 4611686018427387903, %i.pn
  %i.pp = icmp ult i64 %i.po, %i.pm
  br i1 %i.pp, label %bb.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84

bb.bj:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc.i220 unwind label %.loopexit.split-lp251

.noexc.i220:                                      ; preds = %bb.bj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i83
  %i.pq = load ptr, ptr %i.pa, align 8, !tbaa !147
  %i.pr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.pq, i64 noundef %i.pm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89 unwind label %.loopexit250 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.em, ptr %3, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull align 1 dereferenceable(12) @.str.67, i64 12, i1 false)
  store i64 12, ptr %i.en, align 8, !tbaa !78
  store i8 0, ptr %i.eo, align 4, !tbaa !34
  %i.ps = load i64, ptr %i.el, align 8, !tbaa !78
  %i.pt = add i64 %i.ps, -4611686018427387892
  %i.pu = icmp ult i64 %i.pt, 12
  br i1 %i.pu, label %bb.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i56.i90

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i89
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
          to label %.noexc57.i219 unwind label %.loopexit.split-lp256
end_hunk_0
begin_hunk_1_@_Z20generateTimingReportRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EERKS5_:bb.a
  store ptr %i.ep, ptr %5, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ep, ptr noundef nonnull align 1 dereferenceable(3) @.str.36, i64 3, i1 false)
  store i64 3, ptr %i.eq, align 8, !tbaa !78
  store i8 0, ptr %i.er, align 1, !tbaa !34
  %i.sa = load ptr, ptr %i.pa, align 8, !tbaa !147
  %i.sb = load i64, ptr %i.pl, align 8, !tbaa !78
  %i.sc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.sa, i64 noundef %i.sb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i122 unwind label %.loopexit265

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i122: ; preds = %_ZNSolsEPFRSoS_E.exit71.i117
  %i.sd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sc, ptr noundef nonnull @.str.69, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i123 unwind label %.loopexit265 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i123: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i122
  %i.se = getelementptr inbounds nuw i8, ptr %i.rx, i64 120 ; 4 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !146
  %i.sg = load ptr, ptr %i.rz, align 8, !tbaa !145
  %.not10.i124 = icmp eq ptr %i.sf, %i.sg
  br i1 %.not10.i124, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i128, label %.lr.ph.i125

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i128: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i127, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i123
  %i.sh = load ptr, ptr %4, align 8, !tbaa !8
  %i.si = getelementptr i8, ptr %i.sh, i64 -24
  %i.sj = load i64, ptr %i.si, align 8
  %i.sk = getelementptr inbounds i8, ptr %4, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 240
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i125.i129 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i125.i129, label %.invoke37.i211, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i130

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i130: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i128
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 56
  %i.so = load i8, ptr %i.sn, align 8, !tbaa !28
  %.not.i1.i.i127.i131 = icmp eq i8 %i.so, 0
  br i1 %.not.i1.i.i127.i131, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i130
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 67
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i132

bb.bu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126.i130
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.sm)
          to label %.noexc131.i213 unwind label %.loopexit265

.noexc131.i213:                                   ; preds = %bb.bu
  %i.sr = load ptr, ptr %i.sm, align 8, !tbaa !8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 48
  %i.st = load ptr, ptr %i.ss, align 8
  %i.su = invoke noundef signext i8 %i.st(ptr noundef nonnull align 8 dereferenceable(570) %i.sm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i132 unwind label %.loopexit265, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i132: ; preds = %.noexc131.i213, %bb.bt
  %.0.i.i.i129.i133 = phi i8 [ %i.sq, %bb.bt ], [ %i.su, %.noexc131.i213 ]
  %i.sv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i129.i133)
          to label %.noexc133.i134 unwind label %.loopexit265

.noexc133.i134:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i132
  %i.sw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sv)
          to label %_ZNSolsEPFRSoS_E.exit81.preheader.i135 unwind label %.loopexit265 ; 0 uses

_ZNSolsEPFRSoS_E.exit81.preheader.i135:           ; preds = %.noexc133.i134
  %i.sx = load ptr, ptr %i.se, align 8, !tbaa !146
  %i.sy = load ptr, ptr %i.rz, align 8, !tbaa !145
  %.not11.i136 = icmp eq ptr %i.sx, %i.sy
  br i1 %.not11.i136, label %_ZNSolsEPFRSoS_E.exit81._crit_edge.i141, label %.lr.ph5.i137

.loopexit265:                                     ; preds = %_ZNSolsEPFRSoS_E.exit71.i117, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit77.i122, %bb.bu, %.noexc131.i213, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128.i132, %.noexc133.i134, %bb.bx, %.noexc142.i210, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i145, %.noexc144.i147, %_ZNSolsEPFRSoS_E.exit85._crit_edge.i175
  %lpad.loopexit267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp266:                            ; preds = %.invoke37.i211
  %lpad.loopexit.split-lp268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.lr.ph.i125:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i123, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i127
  %.0413.i126 = phi i32 [ %i.tc, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i127 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79.preheader.i123 ]
  %i.sz = load ptr, ptr %5, align 8, !tbaa !147
  %i.ta = load i64, ptr %i.eq, align 8, !tbaa !78
  %i.tb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.sz, i64 noundef %i.ta)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i127 unwind label %bb.bv ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83.i127: ; preds = %.lr.ph.i125
  %i.tc = add i32 %.0413.i126, 1                  ; 2 uses
  %i.td = zext i32 %i.tc to i64
  %i.te = load ptr, ptr %i.se, align 8, !tbaa !146
  %i.tf = load ptr, ptr %i.rz, align 8, !tbaa !145
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = ashr exact i64 %i.ti, 5
  %i.tk = icmp ugt i64 %i.tj, %i.td
  br i1 %i.tk, label %.lr.ph.i125, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i128, !llvm.loop !207

bb.bv:                                            ; preds = %.lr.ph.i125
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZNSolsEPFRSoS_E.exit81._crit_edge.i141:          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140, %_ZNSolsEPFRSoS_E.exit81.preheader.i135
  %i.tm = load ptr, ptr %4, align 8, !tbaa !8
  %i.tn = getelementptr i8, ptr %i.tm, i64 -24
  %i.to = load i64, ptr %i.tn, align 8
  %i.tp = getelementptr inbounds i8, ptr %4, i64 %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 240
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i136.i142 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i136.i142, label %.invoke37.i211, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i143

.invoke37.i211:                                   ; preds = %_ZNSolsEPFRSoS_E.exit81._crit_edge.i141, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79._crit_edge.i128
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.cont38.i212 unwind label %.loopexit.split-lp266

.cont38.i212:                                     ; preds = %.invoke37.i211
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i143: ; preds = %_ZNSolsEPFRSoS_E.exit81._crit_edge.i141
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.tt = load i8, ptr %i.ts, align 8, !tbaa !28
  %.not.i1.i.i138.i144 = icmp eq i8 %i.tt, 0
  br i1 %.not.i1.i.i138.i144, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i143
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 67
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i145

bb.bx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137.i143
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.tr)
          to label %.noexc142.i210 unwind label %.loopexit265

.noexc142.i210:                                   ; preds = %bb.bx
  %i.tw = load ptr, ptr %i.tr, align 8, !tbaa !8
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 48
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = invoke noundef signext i8 %i.ty(ptr noundef nonnull align 8 dereferenceable(570) %i.tr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i145 unwind label %.loopexit265, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i145: ; preds = %.noexc142.i210, %bb.bw
  %.0.i.i.i140.i146 = phi i8 [ %i.tv, %bb.bw ], [ %i.tz, %.noexc142.i210 ]
  %i.ua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i140.i146)
          to label %.noexc144.i147 unwind label %.loopexit265

.noexc144.i147:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139.i145
  %i.ub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ua)
          to label %_ZNSolsEPFRSoS_E.exit85.preheader.i148 unwind label %.loopexit265 ; 0 uses

_ZNSolsEPFRSoS_E.exit85.preheader.i148:           ; preds = %.noexc144.i147
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rx, i64 48 ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !146 ; 2 uses
  %i.ue = load ptr, ptr %i.ry, align 8, !tbaa !145 ; 2 uses
  %.not12.i149 = icmp eq ptr %i.ud, %i.ue
  br i1 %.not12.i149, label %_ZNSolsEPFRSoS_E.exit85._crit_edge.i175, label %.lr.ph9.i150

.lr.ph9.i150:                                     ; preds = %_ZNSolsEPFRSoS_E.exit85.preheader.i148
  %i.uf = getelementptr inbounds nuw i8, ptr %i.rx, i64 608
  %i.ug = getelementptr inbounds nuw i8, ptr %i.rx, i64 600 ; 5 uses
  br label %bb.bz

.lr.ph5.i137:                                     ; preds = %_ZNSolsEPFRSoS_E.exit81.preheader.i135, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140
  %i.uh = phi i64 [ %i.us, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140 ], [ 0, %_ZNSolsEPFRSoS_E.exit81.preheader.i135 ]
  %.0404.i138 = phi i32 [ %i.ur, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140 ], [ 0, %_ZNSolsEPFRSoS_E.exit81.preheader.i135 ]
  %i.ui = load ptr, ptr %5, align 8, !tbaa !147
  %i.uj = load i64, ptr %i.eq, align 8, !tbaa !78
  %i.uk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ui, i64 noundef %i.uj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i139 unwind label %bb.by

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i139: ; preds = %.lr.ph5.i137
  %i.ul = load ptr, ptr %i.rz, align 8, !tbaa !145
  %i.um = getelementptr inbounds nuw [32 x i8], ptr %i.ul, i64 %i.uh ; 2 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !147
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !78
  %i.uq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.uk, ptr noundef %i.un, i64 noundef %i.up)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140 unwind label %bb.by ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89.i140: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i139
  %i.ur = add i32 %.0404.i138, 1                  ; 2 uses
  %i.us = zext i32 %i.ur to i64                   ; 2 uses
  %i.ut = load ptr, ptr %i.se, align 8, !tbaa !146
  %i.uu = load ptr, ptr %i.rz, align 8, !tbaa !145
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = sub i64 %i.uv, %i.uw
  %i.uy = ashr exact i64 %i.ux, 5
  %i.uz = icmp ugt i64 %i.uy, %i.us
  br i1 %i.uz, label %.lr.ph5.i137, label %_ZNSolsEPFRSoS_E.exit81._crit_edge.i141, !llvm.loop !208

bb.by:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87.i139, %.lr.ph5.i137
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZNSolsEPFRSoS_E.exit85._crit_edge.i175:          ; preds = %_ZNSolsEPFRSoS_E.exit93.i174, %_ZNSolsEPFRSoS_E.exit85.preheader.i148
  %i.vb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ck unwind label %.loopexit265 ; 0 uses

bb.bz:                                            ; preds = %_ZNSolsEPFRSoS_E.exit93.i174, %.lr.ph9.i150
  %i.vc = phi ptr [ %i.ue, %.lr.ph9.i150 ], [ %24, %_ZNSolsEPFRSoS_E.exit93.i174 ] ; 3 uses
  %i.vd = phi ptr [ %i.ud, %.lr.ph9.i150 ], [ %25, %_ZNSolsEPFRSoS_E.exit93.i174 ] ; 2 uses
  %i.ve = phi i64 [ 0, %.lr.ph9.i150 ], [ %i.yb, %_ZNSolsEPFRSoS_E.exit93.i174 ] ; 2 uses
  %.0398.i151 = phi i32 [ 0, %.lr.ph9.i150 ], [ %i.ya, %_ZNSolsEPFRSoS_E.exit93.i174 ]
  %i.vf = load ptr, ptr %i.uf, align 8, !tbaa !117 ; 2 uses
  %.not10.i.i.i.i.i152 = icmp eq ptr %i.vf, null
  br i1 %.not10.i.i.i.i.i152, label %bb.cc, label %.lr.ph.i.i.i.i.i153

.lr.ph.i.i.i.i.i153:                              ; preds = %bb.bz
  %i.vg = load i64, ptr %i.pl, align 8, !tbaa !78 ; 4 uses
  %i.vh = load ptr, ptr %i.pa, align 8            ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159, %.lr.ph.i.i.i.i.i153
  %.012.i.i.i.i.i154 = phi ptr [ %i.vf, %.lr.ph.i.i.i.i.i153 ], [ %.1.i.i.i.i.i164, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159 ] ; 4 uses
  %.0811.i.i.i.i.i155 = phi ptr [ %i.ug, %.lr.ph.i.i.i.i.i153 ], [ %.19.i.i.i.i.i161, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159 ]
  %i.vi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i154, i64 40
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i156 = call i64 @llvm.umin.i64(i64 %i.vg, i64 %i.vj) ; 2 uses
  %i.vk = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i156, 0
  br i1 %i.vk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i206, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i157

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i157: ; preds = %bb.ca
  %i.vl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i154, i64 32
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !147
  %i.vn = call i32 @memcmp(ptr noundef %i.vm, ptr noundef %i.vh, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i156) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i.i158 = icmp eq i32 %i.vn, 0
  br i1 %.not.i.i.i.i.i.i.i.i158, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i206, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i206: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i157, %bb.ca
  %i.vo = sub i64 %i.vj, %i.vg
  %spec.select7.i.i.i.i.i.i.i.i.i207 = call i64 @llvm.smax.i64(i64 %i.vo, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i208 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i207, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i209 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i208 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i206, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i157
  %.0.i.i.i.i.i.i.i.i160 = phi i32 [ %i.vn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i157 ], [ %.0.i6.i.i.i.i.i.i.i.i209, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i206 ]
  %i.vp = icmp slt i32 %.0.i.i.i.i.i.i.i.i160, 0  ; 2 uses
  %.19.i.i.i.i.i161 = select i1 %i.vp, ptr %.0811.i.i.i.i.i155, ptr %.012.i.i.i.i.i154 ; 5 uses
  %.1.in.v.i.i.i.i.i162 = select i1 %i.vp, i64 24, i64 16
  %.1.in.i.i.i.i.i163 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i154, i64 %.1.in.v.i.i.i.i.i162
  %.1.i.i.i.i.i164 = load ptr, ptr %.1.in.i.i.i.i.i163, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i.i165 = icmp eq ptr %.1.i.i.i.i.i164, null
  br i1 %.not.i.i.i.i.i165, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i166, label %bb.ca, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i166: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i159
  %i.vq = icmp eq ptr %.19.i.i.i.i.i161, %i.ug
  br i1 %i.vq, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i166
  %i.vr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i161, i64 40
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i167 = call i64 @llvm.umin.i64(i64 %i.vs, i64 %i.vg) ; 2 uses
  %i.vt = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i167, 0
  br i1 %i.vt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i202, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i168

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i168: ; preds = %bb.cb
  %i.vu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i161, i64 32
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !147
  %i.vw = call i32 @memcmp(ptr noundef %i.vh, ptr noundef %i.vv, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i167) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i169 = icmp eq i32 %i.vw, 0
  br i1 %.not.i.i.i.i.i.i.i169, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i202, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i170

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i202: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i168, %bb.cb
  %i.vx = sub i64 %i.vg, %i.vs
  %spec.select7.i.i.i.i.i.i.i.i203 = call i64 @llvm.smax.i64(i64 %i.vx, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i204 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i203, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i205 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i204 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i170

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i170: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i202, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i168
  %.0.i.i.i.i.i.i.i171 = phi i32 [ %i.vw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i168 ], [ %.0.i6.i.i.i.i.i.i.i205, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i202 ]
  %i.vy = icmp slt i32 %.0.i.i.i.i.i.i.i171, 0
  %spec.select.i.i.i.i172 = select i1 %i.vy, ptr %i.ug, ptr %.19.i.i.i.i.i161
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i170, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i166, %bb.bz
  %.sroa.0.0.i.i.i.i173 = phi ptr [ %i.ug, %bb.bz ], [ %i.ug, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i166 ], [ %spec.select.i.i.i.i172, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i170 ]
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i173, i64 64
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !130
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !133
  %i.wc = getelementptr inbounds nuw [280 x i8], ptr %i.wb, i64 %i.ve ; 4 uses
  %i.wd = getelementptr inbounds nuw [32 x i8], ptr %i.vc, i64 %i.ve ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !78 ; 2 uses
  %20 = icmp eq i64 %i.wf, 0
  br i1 %20, label %_ZNSolsEPFRSoS_E.exit93.i174, label %21

21:                                               ; preds = %bb.cc
  %22 = load i8, ptr %i.wc, align 8, !tbaa !36, !range !58, !noundef !59
  %23 = trunc nuw i8 %22 to i1
  br i1 %23, label %bb.cd, label %_ZNSolsEPFRSoS_E.exit93.i174

bb.cd:                                            ; preds = %21
  %i.wg = load ptr, ptr %i.wd, align 8, !tbaa !147
  %i.wh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.wg, i64 noundef %i.wf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183 unwind label %.loopexit.i181 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183: ; preds = %bb.cd
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wc, i64 208 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 216 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !60
  %i.wl = load ptr, ptr %i.wi, align 8, !tbaa !61
  %.not13.i184 = icmp eq ptr %i.wk, %i.wl
  br i1 %.not13.i184, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188, label %.lr.ph7.i185

.lr.ph7.i185:                                     ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wc, i64 184
  br label %bb.ch

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188: ; preds = %_ZNSolsEe.exit.i187, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91.preheader.i183
  %i.wn = load ptr, ptr %4, align 8, !tbaa !8
  %i.wo = getelementptr i8, ptr %i.wn, i64 -24
  %i.wp = load i64, ptr %i.wo, align 8
  %i.wq = getelementptr inbounds i8, ptr %4, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 240
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i147.i189 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i147.i189, label %bb.ce, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190

bb.ce:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc152.i201 unwind label %.loopexit.split-lp.i199

.noexc152.i201:                                   ; preds = %bb.ce
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 56
  %i.wu = load i8, ptr %i.wt, align 8, !tbaa !28
  %.not.i1.i.i149.i191 = icmp eq i8 %i.wu, 0
  br i1 %.not.i1.i.i149.i191, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 67
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192

bb.cg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148.i190
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ws)
          to label %.noexc153.i198 unwind label %.loopexit.i181

.noexc153.i198:                                   ; preds = %bb.cg
  %i.wx = load ptr, ptr %i.ws, align 8, !tbaa !8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 48
  %i.wz = load ptr, ptr %i.wy, align 8
  %i.xa = invoke noundef signext i8 %i.wz(ptr noundef nonnull align 8 dereferenceable(570) %i.ws, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192 unwind label %.loopexit.i181, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192: ; preds = %.noexc153.i198, %bb.cf
  %.0.i.i.i151.i193 = phi i8 [ %i.ww, %bb.cf ], [ %i.xa, %.noexc153.i198 ]
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i151.i193)
          to label %.noexc155.i194 unwind label %.loopexit.i181

.noexc155.i194:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192
  %i.xc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xb)
          to label %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195 unwind label %.loopexit.i181 ; 0 uses

.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195: ; preds = %.noexc155.i194
  %.pre.i196 = load ptr, ptr %i.uc, align 8, !tbaa !146
  %.pre14.i197 = load ptr, ptr %i.ry, align 8, !tbaa !145
  br label %_ZNSolsEPFRSoS_E.exit93.i174

.loopexit.i181:                                   ; preds = %.noexc155.i194, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150.i192, %.noexc153.i198, %bb.cg, %bb.cd
  %lpad.loopexit.i182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp.i199:                          ; preds = %bb.ce
  %lpad.loopexit.split-lp.i200 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %_ZNSolsEe.exit.i187, %.lr.ph7.i185
  %i.xd = phi i64 [ 0, %.lr.ph7.i185 ], [ %i.xr, %_ZNSolsEe.exit.i187 ]
  %.0316.i186 = phi i32 [ 0, %.lr.ph7.i185 ], [ %i.xq, %_ZNSolsEe.exit.i187 ]
  %i.xe = load ptr, ptr %5, align 8, !tbaa !147
  %i.xf = load i64, ptr %i.eq, align 8, !tbaa !78
  %i.xg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.xe, i64 noundef %i.xf)
          to label %bb.ci unwind label %bb.cj     ; 3 uses

bb.ci:                                            ; preds = %bb.ch
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !8
  %i.xi = getelementptr i8, ptr %i.xh, i64 -24
  %i.xj = load i64, ptr %i.xi, align 8
  %i.xk = getelementptr inbounds i8, ptr %i.xg, i64 %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 6, ptr %i.xl, align 8, !tbaa !195
  %i.xm = load ptr, ptr %i.wm, align 8, !tbaa !66
  %i.xn = getelementptr inbounds nuw [16 x i8], ptr %i.xm, i64 %i.xd
  %i.xo = load x86_fp80, ptr %i.xn, align 16, !tbaa !67
  %i.xp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.xg, x86_fp80 noundef %i.xo)
          to label %_ZNSolsEe.exit.i187 unwind label %bb.cj ; 0 uses

_ZNSolsEe.exit.i187:                              ; preds = %bb.ci
  %i.xq = add i32 %.0316.i186, 1                  ; 2 uses
  %i.xr = zext i32 %i.xq to i64                   ; 2 uses
  %i.xs = load ptr, ptr %i.wj, align 8, !tbaa !60
  %i.xt = load ptr, ptr %i.wi, align 8, !tbaa !61
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = ashr exact i64 %i.xw, 2
  %i.xy = icmp ugt i64 %i.xx, %i.xr
  br i1 %i.xy, label %bb.ch, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91._crit_edge.i188, !llvm.loop !209

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZNSolsEPFRSoS_E.exit93.i174:                     ; preds = %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195, %21, %bb.cc
  %24 = phi ptr [ %.pre14.i197, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195 ], [ %i.vc, %21 ], [ %i.vc, %bb.cc ] ; 2 uses
  %25 = phi ptr [ %.pre.i196, %.noexc155._ZNSolsEPFRSoS_E.exit93_crit_edge.i195 ], [ %i.vd, %21 ], [ %i.vd, %bb.cc ] ; 2 uses
  %i.ya = add i32 %.0398.i151, 1                  ; 2 uses
  %i.yb = zext i32 %i.ya to i64                   ; 2 uses
  %i.yc = ptrtoint ptr %25 to i64
  %i.yd = ptrtoint ptr %24 to i64
  %i.ye = sub i64 %i.yc, %i.yd
  %i.yf = ashr exact i64 %i.ye, 5
  %i.yg = icmp ugt i64 %i.yf, %i.yb
  br i1 %i.yg, label %bb.bz, label %_ZNSolsEPFRSoS_E.exit85._crit_edge.i175, !llvm.loop !210

bb.ck:                                            ; preds = %_ZNSolsEPFRSoS_E.exit85._crit_edge.i175
  %i.yh = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.yi = icmp eq ptr %i.yh, %i.ep
  br i1 %i.yi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i176: ; preds = %bb.ck
  call void @_ZdlPv(ptr noundef %i.yh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  store ptr %.pre446.pre, ptr %4, align 8, !tbaa !8
  %i.yj = load i64, ptr %i.es, align 8
  %i.yk = getelementptr inbounds i8, ptr %4, i64 %i.yj
  store ptr %.pre448.pre, ptr %i.yk, align 8, !tbaa !8
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.et) #21
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.eu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.yl = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.ym = icmp eq ptr %i.yl, %i.ek
  br i1 %i.ym, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177
  call void @_ZdlPv(ptr noundef %i.yl) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179

bb.cl:                                            ; preds = %.loopexit265, %.loopexit.split-lp266, %bb.cj, %.loopexit.split-lp.i199, %.loopexit.i181, %bb.by, %bb.bv
  %.pn48.i118 = phi { ptr, i32 } [ %i.tl, %bb.bv ], [ %i.va, %bb.by ], [ %lpad.loopexit.split-lp.i200, %.loopexit.split-lp.i199 ], [ %i.xz, %bb.cj ], [ %lpad.loopexit.i182, %.loopexit.i181 ], [ %lpad.loopexit267, %.loopexit265 ], [ %lpad.loopexit.split-lp268, %.loopexit.split-lp266 ]
  %i.yn = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.yo = icmp eq ptr %i.yn, %i.ep
  br i1 %i.yo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i119: ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef %i.yn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit260, %.loopexit.split-lp261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120
  %.pn48.pn.pn.i99 = phi { ptr, i32 } [ %.pn48.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i120 ], [ %lpad.loopexit262, %.loopexit260 ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp261 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #21
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.bq
  %.pn48.pn.pn.pn.i97 = phi { ptr, i32 } [ %.pn48.pn.pn.i99, %bb.cm ], [ %i.rc, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.co

bb.co:                                            ; preds = %.loopexit250, %.loopexit.split-lp251, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i92
  %.pn48.pn.pn.pn.pn.i85 = phi { ptr, i32 } [ %.pn48.pn.pn.pn.i97, %bb.cn ], [ %lpad.phi259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i92 ], [ %lpad.loopexit252, %.loopexit250 ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp251 ]
  %i.yp = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.ek
  br i1 %i.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i86: ; preds = %bb.co
  call void @_ZdlPv(ptr noundef %i.yp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i101.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.yr = add nuw i32 %.0438, 1                   ; 2 uses
  %exitcond445.not = icmp eq i32 %i.yr, %i.k
  br i1 %exitcond445.not, label %._crit_edge440.loopexit, label %bb.bg, !llvm.loop !211

.body71:                                          ; preds = %bb.bi, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.u
  %.pn37 = phi { ptr, i32 } [ %i.de, %bb.u ], [ %.pn48.pn.pn.pn.pn.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i87 ], [ %lpad.phi275, %bb.z ], [ %.pn48.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i ], [ %lpad.phi275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76 ], [ %lpad.phi, %bb.bi ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %13) #21
  br label %bb.cp

bb.cp:                                            ; preds = %.body71, %bb.t
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body71 ], [ %i.dd, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.ys = load ptr, ptr %11, align 8, !tbaa !147  ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.bk
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.ys) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %.body
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn37.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %.pn37.pn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cu

bb.cq:                                            ; preds = %._crit_edge
  invoke fastcc void @_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.yv = load ptr, ptr %10, align 8, !tbaa !147  ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.yx = icmp eq ptr %i.yv, %i.yw
  br i1 %i.yx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef %i.yv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ct

bb.ct:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  ret void

bb.cu:                                            ; preds = %bb.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.h
  %.pn41 = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.yu, %bb.cr ], [ %.pn37.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ]
  %i.yy = load ptr, ptr %10, align 8, !tbaa !147  ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.za = icmp eq ptr %i.yy, %i.yz
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.yy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  resume { ptr, i32 } %.pn41
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116buildVersionInfoB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull @.str.70, i32 noundef 8)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.a, align 8, !tbaa !34
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 2)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, i64 } %i.d, 0
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0, i32 noundef 0)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %2, align 8, !tbaa !8
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212
  %i.m = load ptr, ptr %0, align 8, !tbaa !147
  %i.n = load i64, ptr %i.b, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !78
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.l, i32 -1, ptr null, i32 -1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = load ptr, ptr %0, align 8, !tbaa !147
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.q, %i.s
  %i.u = load ptr, ptr %1, align 8, !tbaa !147
  %i.v = load i64, ptr %i.p, align 8, !tbaa !78
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t, i64 noundef %i.n, ptr noundef %i.u, i64 noundef %i.v)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.x) #22
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo:.noexc.i

.noexc588:                                        ; preds = %bb.ai
  %i.nl = load ptr, ptr %i.ng, align 8, !tbaa !8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = invoke noundef signext i8 %i.nn(ptr noundef nonnull align 8 dereferenceable(570) %i.ng, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i585 unwind label %bb.ak, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i585: ; preds = %.noexc588, %bb.ah
  %.0.i.i.i586 = phi i8 [ %i.nk, %bb.ah ], [ %i.no, %.noexc588 ]
  %i.np = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i586)
          to label %.noexc590 unwind label %bb.ak

.noexc590:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i585
  %i.nq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.np)
          to label %_ZNSolsEPFRSoS_E.exit322 unwind label %bb.ak ; 0 uses

_ZNSolsEPFRSoS_E.exit322:                         ; preds = %.noexc590
  %i.nr = load ptr, ptr %3, align 8, !tbaa !147
  %i.ns = load i64, ptr %i.w, align 8, !tbaa !78
  %i.nt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.nr, i64 noundef %i.ns)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324.preheader unwind label %bb.ak ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324.preheader: ; preds = %_ZNSolsEPFRSoS_E.exit322
  %i.nu = load ptr, ptr %i.je, align 16, !tbaa !146
  %i.nv = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %.not783 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not783, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324._crit_edge, label %.lr.ph778.a

.lr.ph778.a:                                      ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324.preheader
  %i.nw = getelementptr inbounds nuw i8, ptr %i.f, i64 608 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.f, i64 600 ; 10 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %wide.trip.count808 = and i64 %i.m, 4294967295
  br label %bb.al

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324._crit_edge: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324.preheader
  %i.oe = load ptr, ptr %3, align 8, !tbaa !147
  %i.of = load i64, ptr %i.w, align 8, !tbaa !78
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.oe, i64 noundef %i.of)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326 unwind label %bb.ak ; 0 uses

bb.aj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288.preheader
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

bb.ak:                                            ; preds = %.invoke958, %.noexc590, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i585, %.noexc588, %bb.ai, %.noexc579, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i574, %.noexc577, %bb.aa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324._crit_edge, %_ZNSolsEPFRSoS_E.exit322, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.noexc291, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit447

bb.al:                                            ; preds = %.lr.ph778.a, %_ZNSt6vectorIeSaIeEED2Ev.exit
  %i.oj = phi ptr [ %i.nv, %.lr.ph778.a ], [ %i.adj, %_ZNSt6vectorIeSaIeEED2Ev.exit ] ; 2 uses
  %i.ok = phi i64 [ 0, %.lr.ph778.a ], [ %i.adh, %_ZNSt6vectorIeSaIeEED2Ev.exit ] ; 6 uses
  %.0179777 = phi i32 [ 0, %.lr.ph778.a ], [ %i.adg, %_ZNSt6vectorIeSaIeEED2Ev.exit ] ; 2 uses
  %i.ol = load ptr, ptr %i.nw, align 16, !tbaa !117 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not10.i.i.i.i, label %bb.ao, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al
  %i.om = load ptr, ptr %0, align 8, !tbaa !145   ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !78 ; 4 uses
  %i.op = load ptr, ptr %i.om, align 8            ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ol, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.nx, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.oo, i64 %i.or) ; 2 uses
  %i.os = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.os, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.ot = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !147
  %i.ov = call i32 @memcmp(ptr noundef %i.ou, ptr noundef %i.op, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ov, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.am
  %i.ow = sub i64 %i.or, %i.oo
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ow, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ov, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ox = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.ox, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ox, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i327 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i327, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.am, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.oy = icmp eq ptr %.19.i.i.i.i, %i.nx
  br i1 %i.oy, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.pa, i64 %i.oo) ; 2 uses
  %i.pb = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.pb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.pc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !147
  %i.pe = call i32 @memcmp(ptr noundef %i.op, ptr noundef %i.pd, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.pe, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.an
  %i.pf = sub i64 %i.oo, %i.pa
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.pf, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.pe, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.pg = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.pg, ptr %i.nx, ptr %.19.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.al
  %.sroa.0.0.i.i.i = phi ptr [ %i.nx, %bb.al ], [ %i.nx, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 64
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !130
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !133
  %i.pk = getelementptr inbounds nuw [280 x i8], ptr %i.pj, i64 %i.ok ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 64 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 72 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !65 ; 2 uses
  %i.po = load ptr, ptr %i.pl, align 8, !tbaa !66 ; 3 uses
  %i.pp = ptrtoint ptr %i.pn to i64               ; 2 uses
  %i.pq = ptrtoint ptr %i.po to i64               ; 2 uses
  %i.pr = sub i64 %i.pp, %i.pq                    ; 2 uses
  %.not.i.i.i.i328 = icmp eq ptr %i.pn, %i.po
  br i1 %.not.i.i.i.i328, label %.noexc330, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ps = icmp ugt i64 %i.pr, 9223372036854775792
  br i1 %i.ps, label %.noexc.i.i, label %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i, !prof !222

.noexc.i.i:                                       ; preds = %bb.ap
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc329 unwind label %.loopexit.split-lp693

.noexc329:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ap
  %i.pt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pr) #20
          to label %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc330_crit_edge unwind label %.loopexit692

_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc330_crit_edge: ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.pl, align 8, !tbaa !223 ; 2 uses
  %.pre810 = load ptr, ptr %i.pm, align 8, !tbaa !223
  %.pre816.a = ptrtoint ptr %.pre810 to i64
  %.pre817.a = ptrtoint ptr %.pre to i64
  br label %.noexc330

.noexc330:                                        ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc330_crit_edge, %bb.ao
  %.pre-phi818 = phi i64 [ %.pre817.a, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc330_crit_edge ], [ %i.pq, %bb.ao ]
  %.pre-phi = phi i64 [ %.pre816.a, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc330_crit_edge ], [ %i.pp, %bb.ao ]
  %i.pu = phi ptr [ %.pre, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc330_crit_edge ], [ %i.po, %bb.ao ] ; 2 uses
  %i.pv = phi ptr [ %i.pt, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc330_crit_edge ], [ null, %bb.ao ] ; 7 uses
  %i.pw = sub i64 %.pre-phi, %.pre-phi818         ; 3 uses
  %i.px = icmp sgt i64 %i.pw, 16
  br i1 %i.px, label %bb.aq, label %bb.ar, !prof !224

bb.aq:                                            ; preds = %.noexc330
  call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.pv, ptr align 16 %i.pu, i64 %i.pw, i1 false)
  br label %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit

bb.ar:                                            ; preds = %.noexc330
  %i.py = icmp eq i64 %i.pw, 16
  br i1 %i.py, label %bb.as, label %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit

bb.as:                                            ; preds = %bb.ar
  %i.pz = load x86_fp80, ptr %i.pu, align 16, !tbaa !67
  store x86_fp80 %i.pz, ptr %i.pv, align 16, !tbaa !67
  br label %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit

_ZNSt6vectorIeSaIeEEC2ERKS1_.exit:                ; preds = %bb.as, %bb.ar, %bb.aq
  %i.qa = getelementptr inbounds nuw [32 x i8], ptr %i.oj, i64 %i.ok
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !78 ; 2 uses
  %12 = icmp eq i64 %i.qc, 0
  br i1 %12, label %.loopexit686, label %13

13:                                               ; preds = %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit
  %14 = load i8, ptr %i.pk, align 8, !tbaa !36, !range !58, !noundef !59
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %bb.at, label %.loopexit686

bb.at:                                            ; preds = %13
  %i.qd = icmp ugt i32 %.0179777, 1
  br i1 %i.qd, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.qe = load ptr, ptr %1, align 8, !tbaa !8
  %i.qf = getelementptr i8, ptr %i.qe, i64 -24
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds i8, ptr %1, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 240
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i593 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i593, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i594

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc598 unwind label %.loopexit.split-lp698

.noexc598:                                        ; preds = %bb.av
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i594: ; preds = %bb.au
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.ql = load i8, ptr %i.qk, align 8, !tbaa !28
  %.not.i1.i.i595 = icmp eq i8 %i.ql, 0
  br i1 %.not.i1.i.i595, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i594
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 67
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i596

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i594
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qj)
          to label %.noexc599 unwind label %.loopexit697

.noexc599:                                        ; preds = %bb.ax
  %i.qo = load ptr, ptr %i.qj, align 8, !tbaa !8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 48
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = invoke noundef signext i8 %i.qq(ptr noundef nonnull align 8 dereferenceable(570) %i.qj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i596 unwind label %.loopexit697, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i596: ; preds = %.noexc599, %bb.aw
  %.0.i.i.i597 = phi i8 [ %i.qn, %bb.aw ], [ %i.qr, %.noexc599 ]
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i597)
          to label %.noexc601 unwind label %.loopexit697

.noexc601:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i596
  %i.qt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qs)
          to label %_ZNSolsEPFRSoS_E.exit332 unwind label %.loopexit697

_ZNSolsEPFRSoS_E.exit332:                         ; preds = %.noexc601
  %i.qu = load ptr, ptr %4, align 8, !tbaa !147
  %i.qv = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.qw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qt, ptr noundef %i.qu, i64 noundef %i.qv)
          to label %_ZNSolsEPFRSoS_E.exit332._crit_edge unwind label %.loopexit697 ; 0 uses

_ZNSolsEPFRSoS_E.exit332._crit_edge:              ; preds = %_ZNSolsEPFRSoS_E.exit332
  %.pre811 = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %.pre811, i64 %i.ok
  %.phi.trans.insert812 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre813 = load i64, ptr %.phi.trans.insert812, align 8, !tbaa !78
  br label %bb.ay

.loopexit692:                                     ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit694 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit447

.loopexit.split-lp693:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp695 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit447

.loopexit697:                                     ; preds = %_ZNSolsEPFRSoS_E.exit332, %bb.ay, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit338, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340, %_ZNSolsEj.exit342, %bb.ax, %.noexc599, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i596, %.noexc601
  %lpad.loopexit699 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp698:                            ; preds = %bb.av
  %lpad.loopexit.split-lp700 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ay:                                            ; preds = %_ZNSolsEPFRSoS_E.exit332._crit_edge, %bb.at
  %i.qx = phi i64 [ %.pre813, %_ZNSolsEPFRSoS_E.exit332._crit_edge ], [ %i.qc, %bb.at ]
  %i.qy = phi ptr [ %.pre811, %_ZNSolsEPFRSoS_E.exit332._crit_edge ], [ %i.oj, %bb.at ]
  %i.qz = load ptr, ptr %1, align 8, !tbaa !8
  %i.ra = getelementptr i8, ptr %i.qz, i64 -24
  %i.rb = load i64, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds i8, ptr %1, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 24 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !219
  %i.rf = and i32 %i.re, -177
  %i.rg = or disjoint i32 %i.rf, 32
  store i32 %i.rg, ptr %i.rd, align 8, !tbaa !220
  %i.rh = getelementptr inbounds nuw [32 x i8], ptr %i.qy, i64 %i.ok
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !147
  %i.rj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ri, i64 noundef %i.qx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit338 unwind label %.loopexit697 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit338: ; preds = %bb.ay
  %i.rk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rj, ptr noundef nonnull @.str.45, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340 unwind label %.loopexit697 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit338
  %i.rl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.rj, i64 noundef %i.ok)
          to label %_ZNSolsEj.exit342 unwind label %.loopexit697

_ZNSolsEj.exit342:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit340
  %i.rm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef nonnull @.str.46, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344.preheader unwind label %.loopexit697 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344.preheader: ; preds = %_ZNSolsEj.exit342
  br i1 %.not780, label %.loopexit686, label %.lr.ph776.a

.lr.ph776.a:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344.preheader ] ; 4 uses
  %i.rn = load ptr, ptr %i.nw, align 16, !tbaa !117 ; 2 uses
  %.not10.i.i.i.i345 = icmp eq ptr %i.rn, null
  br i1 %.not10.i.i.i.i345, label %bb.bb, label %.lr.ph.i.i.i.i346

.lr.ph.i.i.i.i346:                                ; preds = %.lr.ph776.a
  %i.ro = load ptr, ptr %0, align 8, !tbaa !145
  %i.rp = getelementptr inbounds nuw [32 x i8], ptr %i.ro, i64 %indvars.iv805 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !78 ; 4 uses
  %i.rs = load ptr, ptr %i.rp, align 8            ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i352, %.lr.ph.i.i.i.i346
  %.012.i.i.i.i347 = phi ptr [ %i.rn, %.lr.ph.i.i.i.i346 ], [ %.1.i.i.i.i357, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i352 ] ; 4 uses
  %.0811.i.i.i.i348 = phi ptr [ %i.nx, %.lr.ph.i.i.i.i346 ], [ %.19.i.i.i.i354, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i352 ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i347, i64 40
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i349 = call i64 @llvm.umin.i64(i64 %i.rr, i64 %i.ru) ; 2 uses
  %i.rv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i349, 0
  br i1 %i.rv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i371, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i350

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i350: ; preds = %bb.az
  %i.rw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i347, i64 32
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !147
  %i.ry = call i32 @memcmp(ptr noundef %i.rx, ptr noundef %i.rs, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i349) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i351 = icmp eq i32 %i.ry, 0
  br i1 %.not.i.i.i.i.i.i.i351, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i371, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i352

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i371: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i350, %bb.az
  %i.rz = sub i64 %i.ru, %i.rr
  %spec.select7.i.i.i.i.i.i.i.i372 = call i64 @llvm.smax.i64(i64 %i.rz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i373 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i372, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i374 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i373 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i352

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i352: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i371, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i350
  %.0.i.i.i.i.i.i.i353 = phi i32 [ %i.ry, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i350 ], [ %.0.i6.i.i.i.i.i.i.i374, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i371 ]
  %i.sa = icmp slt i32 %.0.i.i.i.i.i.i.i353, 0    ; 2 uses
  %.19.i.i.i.i354 = select i1 %i.sa, ptr %.0811.i.i.i.i348, ptr %.012.i.i.i.i347 ; 5 uses
  %.1.in.v.i.i.i.i355 = select i1 %i.sa, i64 24, i64 16
  %.1.in.i.i.i.i356 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i347, i64 %.1.in.v.i.i.i.i355
  %.1.i.i.i.i357 = load ptr, ptr %.1.in.i.i.i.i356, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i358 = icmp eq ptr %.1.i.i.i.i357, null
  br i1 %.not.i.i.i.i358, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i359, label %bb.az, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i359: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i352
  %i.sb = icmp eq ptr %.19.i.i.i.i354, %i.nx
  br i1 %i.sb, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i359
  %i.sc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i354, i64 40
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i360 = call i64 @llvm.umin.i64(i64 %i.sd, i64 %i.rr) ; 2 uses
  %i.se = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i360, 0
  br i1 %i.se, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i367, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i361

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i361: ; preds = %bb.ba
  %i.sf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i354, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !147
  %i.sh = call i32 @memcmp(ptr noundef %i.rs, ptr noundef %i.sg, i64 noundef %.sroa.speculated.i.i.i.i.i.i360) #21 ; 2 uses
  %.not.i.i.i.i.i.i362 = icmp eq i32 %i.sh, 0
  br i1 %.not.i.i.i.i.i.i362, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i367, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i363

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i367: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i361, %bb.ba
  %i.si = sub i64 %i.rr, %i.sd
  %spec.select7.i.i.i.i.i.i.i368 = call i64 @llvm.smax.i64(i64 %i.si, i64 -2147483648)
  %.08.i.i.i.i.i.i.i369 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i368, i64 2147483647)
  %.0.i6.i.i.i.i.i.i370 = trunc nsw i64 %.08.i.i.i.i.i.i.i369 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i363

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i363: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i367, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i361
  %.0.i.i.i.i.i.i364 = phi i32 [ %i.sh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i361 ], [ %.0.i6.i.i.i.i.i.i370, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i367 ]
  %i.sj = icmp slt i32 %.0.i.i.i.i.i.i364, 0
  %spec.select.i.i.i365 = select i1 %i.sj, ptr %i.nx, ptr %.19.i.i.i.i354
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i363, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i359, %.lr.ph776.a
  %.sroa.0.0.i.i.i366 = phi ptr [ %i.nx, %.lr.ph776.a ], [ %i.nx, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i359 ], [ %spec.select.i.i.i365, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i363 ]
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i366, i64 64
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !130
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !133
  %i.sn = getelementptr inbounds nuw [280 x i8], ptr %i.sm, i64 %i.ok ; 12 uses
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_124writeTimingSummaryReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo:.noexc.i
  call void @_ZdlPv(ptr noundef %.sink) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, %bb.bo
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bo ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

.loopexit676:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i403, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.cj, %.noexc632, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i629, %.noexc634
  %lpad.loopexit678 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp677:                            ; preds = %bb.ch
  %lpad.loopexit.split-lp679 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.0174 = phi x86_fp80 [ %i.aar, %bb.ca ], [ 0.000000e+00, %bb.bz ] ; 2 uses
  %i.aaw = load ptr, ptr %1, align 8, !tbaa !8
  %i.aax = getelementptr i8, ptr %i.aaw, i64 -24  ; 3 uses
  %i.aay = load i64, ptr %i.aax, align 8
  %i.aaz = getelementptr inbounds i8, ptr %1, i64 %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24 ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !219
  %i.abc = and i32 %i.abb, -177
  %i.abd = or disjoint i32 %i.abc, 128
  store i32 %i.abd, ptr %i.aba, align 8, !tbaa !220
  %i.abe = load i64, ptr %i.aax, align 8
  %i.abf = getelementptr inbounds i8, ptr %1, i64 %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store i64 6, ptr %i.abg, align 8, !tbaa !195
  %i.abh = load i64, ptr %i.aax, align 8
  %i.abi = getelementptr inbounds i8, ptr %1, i64 %i.abh
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  store i64 18, ptr %i.abj, align 8, !tbaa !221
  %i.abk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, x86_fp80 noundef %.0174)
          to label %_ZNSolsEe.exit435 unwind label %.loopexit681 ; 3 uses

_ZNSolsEe.exit435:                                ; preds = %bb.cc
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !8
  %i.abm = getelementptr i8, ptr %i.abl, i64 -24
  %i.abn = load i64, ptr %i.abm, align 8
  %i.abo = getelementptr inbounds i8, ptr %i.abk, i64 %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 240
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i615 = icmp eq ptr %i.abq, null
  br i1 %.not.i.i.i615, label %bb.cd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i616

bb.cd:                                            ; preds = %_ZNSolsEe.exit435
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc620 unwind label %.loopexit.split-lp682

.noexc620:                                        ; preds = %bb.cd
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i616: ; preds = %_ZNSolsEe.exit435
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 56
  %i.abs = load i8, ptr %i.abr, align 8, !tbaa !28
  %.not.i1.i.i617 = icmp eq i8 %i.abs, 0
  br i1 %.not.i1.i.i617, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i616
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 67
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i618

bb.cf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i616
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.abq)
          to label %.noexc621 unwind label %.loopexit681

.noexc621:                                        ; preds = %bb.cf
  %i.abv = load ptr, ptr %i.abq, align 8, !tbaa !8
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 48
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = invoke noundef signext i8 %i.abx(ptr noundef nonnull align 8 dereferenceable(570) %i.abq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i618 unwind label %.loopexit681, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i618: ; preds = %.noexc621, %bb.ce
  %.0.i.i.i619 = phi i8 [ %i.abu, %bb.ce ], [ %i.aby, %.noexc621 ]
  %i.abz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.abk, i8 noundef signext %.0.i.i.i619)
          to label %.noexc623 unwind label %.loopexit681

.noexc623:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i618
  %i.aca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abz)
          to label %_ZNSolsEPFRSoS_E.exit437 unwind label %.loopexit681 ; 0 uses

_ZNSolsEPFRSoS_E.exit437:                         ; preds = %.noexc623
  %i.acb = load ptr, ptr %i.va, align 8, !tbaa !66
  %i.acc = getelementptr inbounds nuw [16 x i8], ptr %i.acb, i64 %i.vd
  store x86_fp80 %.0174, ptr %i.acc, align 16, !tbaa !67
  br label %_ZNSolsEPFRSoS_E.exit439

.loopexit681:                                     ; preds = %bb.cc, %bb.cf, %.noexc621, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i618, %.noexc623
  %lpad.loopexit683 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp682:                            ; preds = %bb.cd
  %lpad.loopexit.split-lp684 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cg:                                            ; preds = %_ZNSolsEe.exit425
  %i.acd = load ptr, ptr %1, align 8, !tbaa !8
  %i.ace = getelementptr i8, ptr %i.acd, i64 -24
  %i.acf = load i64, ptr %i.ace, align 8
  %i.acg = getelementptr inbounds i8, ptr %1, i64 %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 240
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i626 = icmp eq ptr %i.aci, null
  br i1 %.not.i.i.i626, label %bb.ch, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i627

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc631 unwind label %.loopexit.split-lp677

.noexc631:                                        ; preds = %bb.ch
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i627: ; preds = %bb.cg
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 56
  %i.ack = load i8, ptr %i.acj, align 8, !tbaa !28
  %.not.i1.i.i628 = icmp eq i8 %i.ack, 0
  br i1 %.not.i1.i.i628, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i627
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 67
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i629

bb.cj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i627
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aci)
          to label %.noexc632 unwind label %.loopexit676

.noexc632:                                        ; preds = %bb.cj
  %i.acn = load ptr, ptr %i.aci, align 8, !tbaa !8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 48
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = invoke noundef signext i8 %i.acp(ptr noundef nonnull align 8 dereferenceable(570) %i.aci, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i629 unwind label %.loopexit676, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i629: ; preds = %.noexc632, %bb.ci
  %.0.i.i.i630 = phi i8 [ %i.acm, %bb.ci ], [ %i.acq, %.noexc632 ]
  %i.acr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i630)
          to label %.noexc634 unwind label %.loopexit676

.noexc634:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i629
  %i.acs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acr)
          to label %_ZNSolsEPFRSoS_E.exit439 unwind label %.loopexit676 ; 0 uses

_ZNSolsEPFRSoS_E.exit439:                         ; preds = %.noexc634, %_ZNSolsEPFRSoS_E.exit437
  %i.act = load ptr, ptr %9, align 8, !tbaa !147  ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.oc
  br i1 %i.acu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440: ; preds = %_ZNSolsEPFRSoS_E.exit439
  call void @_ZdlPv(ptr noundef %i.act) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442: ; preds = %_ZNSolsEPFRSoS_E.exit439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.pre814 = load ptr, ptr %i.us, align 8, !tbaa !60
  %.pre815 = load ptr, ptr %i.ur, align 8, !tbaa !61
  br label %bb.cl

bb.ck:                                            ; preds = %.loopexit681, %.loopexit.split-lp682, %.loopexit676, %.loopexit.split-lp677
  %.pn191 = phi { ptr, i32 } [ %lpad.loopexit.split-lp679, %.loopexit.split-lp677 ], [ %lpad.loopexit678, %.loopexit676 ], [ %lpad.loopexit683, %.loopexit681 ], [ %lpad.loopexit.split-lp684, %.loopexit.split-lp682 ] ; 2 uses
  %i.acv = load ptr, ptr %9, align 8, !tbaa !147  ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %i.oc
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443: ; preds = %bb.ck
  call void @_ZdlPv(ptr noundef %i.acv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443, %.body
  %.pn191.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i443 ], [ %.pn191, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.cn

bb.cl:                                            ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442
  %i.acx = phi ptr [ %i.vb, %bb.bl ], [ %.pre815, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442 ] ; 2 uses
  %i.acy = phi ptr [ %i.vc, %bb.bl ], [ %.pre814, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit442 ] ; 2 uses
  %i.acz = add i32 %.0181773, 1                   ; 2 uses
  %i.ada = zext i32 %i.acz to i64                 ; 2 uses
  %i.adb = ptrtoint ptr %i.acy to i64
  %i.adc = ptrtoint ptr %i.acx to i64
  %i.add = sub i64 %i.adb, %i.adc
  %i.ade = ashr exact i64 %i.add, 2
  %i.adf = icmp ugt i64 %i.ade, %i.ada
  br i1 %i.adf, label %bb.bl, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344, !llvm.loop !238

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344: ; preds = %bb.cl, %_ZNSolsEPFRSoS_E.exit377, %bb.bb
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1 ; 2 uses
  %exitcond809.not = icmp eq i64 %indvars.iv.next806, %wide.trip.count808
  br i1 %exitcond809.not, label %.loopexit686, label %.lr.ph776.a, !llvm.loop !239

.loopexit686:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344.preheader, %13, %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit
  %.not.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIeSaIeEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %.loopexit686
  call void @_ZdlPv(ptr noundef nonnull %i.pv) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit

_ZNSt6vectorIeSaIeEED2Ev.exit:                    ; preds = %.loopexit686, %bb.cm
  %i.adg = add i32 %.0179777, 1                   ; 2 uses
  %i.adh = zext i32 %i.adg to i64                 ; 2 uses
  %i.adi = load ptr, ptr %i.je, align 16, !tbaa !146
  %i.adj = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %i.adk = ptrtoint ptr %i.adi to i64
  %i.adl = ptrtoint ptr %i.adj to i64
  %i.adm = sub i64 %i.adk, %i.adl
  %i.adn = ashr exact i64 %i.adm, 5
  %i.ado = icmp ugt i64 %i.adn, %i.adh
  br i1 %i.ado, label %bb.al, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324._crit_edge, !llvm.loop !240

bb.cn:                                            ; preds = %.loopexit687, %.loopexit.split-lp688, %.loopexit697, %.loopexit.split-lp698, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  %.pn194.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp700, %.loopexit.split-lp698 ], [ %i.un, %bb.bj ], [ %.pn191.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445 ], [ %lpad.loopexit699, %.loopexit697 ], [ %lpad.loopexit689, %.loopexit687 ], [ %lpad.loopexit.split-lp690, %.loopexit.split-lp688 ] ; 2 uses
  %.not.i.i.i446 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i446, label %_ZNSt6vectorIeSaIeEED2Ev.exit447, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef nonnull %i.pv) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit447

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit324._crit_edge
  %i.adp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326
  %i.adq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cp unwind label %bb.ak     ; 0 uses

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit449
  %i.adr = load ptr, ptr %8, align 8, !tbaa !147  ; 2 uses
  %i.ads = icmp eq ptr %i.adr, %i.jf
  br i1 %i.ads, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.adr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.adt = load ptr, ptr %6, align 8, !tbaa !147  ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.adv = icmp eq ptr %i.adt, %i.adu
  br i1 %i.adv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  call void @_ZdlPv(ptr noundef %i.adt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.adz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.sroa.0652.0896, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ] ; 3 uses
  %i.adw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ady = icmp eq ptr %i.adw, %i.adx
  br i1 %i.ady, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.adw) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i456 = icmp eq ptr %i.adz, %.0.lcssa.i.i.i.i.i909
  br i1 %.not.i.i.i456, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455
  %.not.i.i1.i = icmp eq ptr %.sroa.0652.0896, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0652.0896) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cq
  %i.aea = load ptr, ptr %5, align 8, !tbaa !147  ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.ad
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aea) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aec = load ptr, ptr %4, align 8, !tbaa !147  ; 2 uses
  %i.aed = icmp eq ptr %i.aec, %i.y
  br i1 %i.aed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
  call void @_ZdlPv(ptr noundef %i.aec) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.aee = load ptr, ptr %3, align 8, !tbaa !147  ; 2 uses
  %i.aef = icmp eq ptr %i.aee, %i.t
  br i1 %i.aef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462
  call void @_ZdlPv(ptr noundef %i.aee) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.aeg = load ptr, ptr %2, align 8, !tbaa !147  ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.o
  br i1 %i.aeh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465
  call void @_ZdlPv(ptr noundef %i.aeg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

_ZNSt6vectorIeSaIeEED2Ev.exit447:                 ; preds = %.loopexit692, %.loopexit.split-lp693, %bb.cn, %bb.co, %bb.ak
  %.pn194.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oi, %bb.ak ], [ %.pn194.pn, %bb.co ], [ %.pn194.pn, %bb.cn ], [ %lpad.loopexit694, %.loopexit692 ], [ %lpad.loopexit.split-lp695, %.loopexit.split-lp693 ] ; 2 uses
  %i.aei = load ptr, ptr %8, align 8, !tbaa !147  ; 2 uses
  %i.aej = icmp eq ptr %i.aei, %i.jf
  br i1 %i.aej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit447
  call void @_ZdlPv(ptr noundef %i.aei) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit447, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.aj
  %.pn194.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oh, %bb.aj ], [ %.pn194.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %.pn194.pn.pn.pn.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit447 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, %bb.t
  %.pn201.pn = phi { ptr, i32 } [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280 ], [ %.pn194.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ], [ %i.hj, %bb.t ] ; 4 uses
  %i.aek = load ptr, ptr %6, align 8, !tbaa !147  ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aem = icmp eq ptr %i.aek, %i.ael
  br i1 %i.aem, label %bb.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.aek) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, label %.lr.ph.i.i.i476.preheader

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, label %.lr.ph.i.i.i476.preheader

.lr.ph.i.i.i476.preheader:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472, %bb.s, %.thread, %bb.cs
  %.pn205940 = phi { ptr, i32 } [ %i.ce, %.thread ], [ %.pn201.pn, %bb.cs ], [ %i.hi, %bb.s ], [ %.pn201.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ]
  %.sroa.0652.0897938 = phi ptr [ %i.ar, %.thread ], [ %.sroa.0652.0896, %bb.cs ], [ %.sroa.0652.0896, %bb.s ], [ %.sroa.0652.0896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i910937 = phi ptr [ %.lcssa991, %.thread ], [ %.0.lcssa.i.i.i.i.i909, %bb.cs ], [ %.0.lcssa.i.i.i.i.i909, %bb.s ], [ %.0.lcssa.i.i.i.i.i909, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ]
  br label %.lr.ph.i.i.i476

.lr.ph.i.i.i476:                                  ; preds = %.lr.ph.i.i.i476.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479
  %.05.i.i.i477 = phi ptr [ %i.aeq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479 ], [ %.sroa.0652.0897938, %.lr.ph.i.i.i476.preheader ] ; 3 uses
  %i.aen = load ptr, ptr %.05.i.i.i477, align 8, !tbaa !147 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.05.i.i.i477, i64 16
  %i.aep = icmp eq ptr %i.aen, %i.aeo
  br i1 %i.aep, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i478: ; preds = %.lr.ph.i.i.i476
  call void @_ZdlPv(ptr noundef %i.aen) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479: ; preds = %.lr.ph.i.i.i476, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i478
  %i.aeq = getelementptr inbounds nuw i8, ptr %.05.i.i.i477, i64 32 ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.aeq, %.0.lcssa.i.i.i.i.i910937
  br i1 %.not.i.i.i480, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, label %.lr.ph.i.i.i476, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472, %bb.s, %bb.cs
  %.pn205941 = phi { ptr, i32 } [ %.pn201.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ], [ %.pn201.pn, %bb.cs ], [ %i.hi, %bb.s ], [ %.pn205940, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479 ] ; 2 uses
  %.sroa.0652.0897939 = phi ptr [ %.sroa.0652.0896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ], [ %.sroa.0652.0896, %bb.cs ], [ %.sroa.0652.0896, %bb.s ], [ %.sroa.0652.0897938, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i479 ] ; 2 uses
  %.not.i.i1.i484 = icmp eq ptr %.sroa.0652.0897939, null
  br i1 %.not.i.i1.i484, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0652.0897939) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486: ; preds = %bb.ct, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483, %bb.e
  %.pn205.pn = phi { ptr, i32 } [ %i.br, %bb.e ], [ %.pn205941, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i483 ], [ %.pn205941, %bb.ct ] ; 2 uses
  %i.aer = load ptr, ptr %5, align 8, !tbaa !147  ; 2 uses
  %i.aes = icmp eq ptr %i.aer, %i.ad
  br i1 %i.aes, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit486
  call void @_ZdlPv(ptr noundef %i.aer) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo:.noexc.i
  %i.hd = load ptr, ptr %i.gy, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = invoke noundef signext i8 %i.hf(ptr noundef nonnull align 8 dereferenceable(570) %i.gy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378 unwind label %bb.u, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378: ; preds = %.noexc381, %bb.r
  %.0.i.i.i379 = phi i8 [ %i.hc, %bb.r ], [ %i.hg, %.noexc381 ]
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i379)
          to label %.noexc383 unwind label %bb.u

.noexc383:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hh)
          to label %_ZNSolsEPFRSoS_E.exit197 unwind label %bb.u ; 0 uses

_ZNSolsEPFRSoS_E.exit197:                         ; preds = %.noexc383
  %i.hj = load ptr, ptr %3, align 8, !tbaa !147
  %i.hk = load i64, ptr %i.w, align 8, !tbaa !78
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.hj, i64 noundef %i.hk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199.preheader unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199.preheader: ; preds = %_ZNSolsEPFRSoS_E.exit197
  %i.hm = load ptr, ptr %i.ee, align 8, !tbaa !146
  %i.hn = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %.not562 = icmp eq ptr %i.hm, %i.hn
  br i1 %.not562, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199._crit_edge, label %.lr.ph558.a

.lr.ph558.a:                                      ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199.preheader
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 608 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 600 ; 10 uses
  %i.hq = and i64 %i.l, 137438953440
  %.not563 = icmp eq i64 %i.hq, 0
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %wide.trip.count = and i64 %i.m, 4294967295
  br label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199._crit_edge: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199.preheader
  %i.hx = load ptr, ptr %3, align 8, !tbaa !147
  %i.hy = load i64, ptr %i.w, align 8, !tbaa !78
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.hx, i64 noundef %i.hy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201 unwind label %bb.u ; 0 uses

bb.t:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit175.preheader
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

bb.u:                                             ; preds = %.invoke716, %.noexc383, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378, %.noexc381, %bb.s, %.noexc372, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i367, %.noexc370, %bb.n, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199._crit_edge, %_ZNSolsEPFRSoS_E.exit197, %bb.q, %bb.p, %bb.o, %.noexc178, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit295

bb.v:                                             ; preds = %.lr.ph558.a, %_ZNSt6vectorIeSaIeEED2Ev.exit
  %i.ic = phi ptr [ %i.hn, %.lr.ph558.a ], [ %i.tr, %_ZNSt6vectorIeSaIeEED2Ev.exit ] ; 2 uses
  %i.id = phi i64 [ 0, %.lr.ph558.a ], [ %i.tp, %_ZNSt6vectorIeSaIeEED2Ev.exit ] ; 6 uses
  %.0117557 = phi i32 [ 0, %.lr.ph558.a ], [ %i.to, %_ZNSt6vectorIeSaIeEED2Ev.exit ] ; 2 uses
  %i.ie = load ptr, ptr %i.ho, align 8, !tbaa !117 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not10.i.i.i.i, label %bb.y, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v
  %i.if = load ptr, ptr %0, align 8, !tbaa !145   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !78 ; 4 uses
  %i.ii = load ptr, ptr %i.if, align 8            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ie, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.hp, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ih, i64 %i.ik) ; 2 uses
  %i.il = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.il, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !147
  %i.io = call i32 @memcmp(ptr noundef %i.in, ptr noundef %i.ii, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.io, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.w
  %i.ip = sub i64 %i.ik, %i.ih
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ip, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.io, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.iq = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.iq, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.iq, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i202 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i202, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.w, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.ir = icmp eq ptr %.19.i.i.i.i, %i.hp
  br i1 %i.ir, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.it = load i64, ptr %i.is, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.it, i64 %i.ih) ; 2 uses
  %i.iu = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.iu, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.x
  %i.iv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !147
  %i.ix = call i32 @memcmp(ptr noundef %i.ii, ptr noundef %i.iw, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ix, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.x
  %i.iy = sub i64 %i.ih, %i.it
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.iy, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ix, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.iz = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.iz, ptr %i.hp, ptr %.19.i.i.i.i
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.v
  %.sroa.0.0.i.i.i = phi ptr [ %i.hp, %bb.v ], [ %i.hp, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 64
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !130
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !133
  %i.jd = getelementptr inbounds nuw [280 x i8], ptr %i.jc, i64 %i.id ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 256 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 264 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !65 ; 2 uses
  %i.jh = load ptr, ptr %i.je, align 8, !tbaa !66 ; 3 uses
  %i.ji = ptrtoint ptr %i.jg to i64               ; 2 uses
  %i.jj = ptrtoint ptr %i.jh to i64               ; 2 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 2 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i.i.i.i203, label %.noexc205, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jl = icmp ugt i64 %i.jk, 9223372036854775792
  br i1 %i.jl, label %.noexc.i.i, label %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i, !prof !222

.noexc.i.i:                                       ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc204 unwind label %.loopexit.split-lp482

.noexc204:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.z
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #20
          to label %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge unwind label %.loopexit481

_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge: ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.je, align 8, !tbaa !223 ; 2 uses
  %.pre582 = load ptr, ptr %i.jf, align 8, !tbaa !223
  %.pre588.a = ptrtoint ptr %.pre582 to i64
  %.pre589.a = ptrtoint ptr %.pre to i64
  br label %.noexc205

.noexc205:                                        ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge, %bb.y
  %.pre-phi590 = phi i64 [ %.pre589.a, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge ], [ %i.jj, %bb.y ]
  %.pre-phi = phi i64 [ %.pre588.a, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge ], [ %i.ji, %bb.y ]
  %i.jn = phi ptr [ %.pre, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge ], [ %i.jh, %bb.y ] ; 2 uses
  %i.jo = phi ptr [ %i.jm, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i..noexc205_crit_edge ], [ null, %bb.y ] ; 7 uses
  %i.jp = sub i64 %.pre-phi, %.pre-phi590         ; 3 uses
  %i.jq = icmp sgt i64 %i.jp, 16
  br i1 %i.jq, label %bb.aa, label %bb.ab, !prof !224

bb.aa:                                            ; preds = %.noexc205
  call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.jo, ptr align 16 %i.jn, i64 %i.jp, i1 false)
  br label %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit

bb.ab:                                            ; preds = %.noexc205
  %i.jr = icmp eq i64 %i.jp, 16
  br i1 %i.jr, label %bb.ac, label %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.js = load x86_fp80, ptr %i.jn, align 16, !tbaa !67
  store x86_fp80 %i.js, ptr %i.jo, align 16, !tbaa !67
  br label %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit

_ZNSt6vectorIeSaIeEEC2ERKS1_.exit:                ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %i.id
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !78 ; 2 uses
  %11 = icmp eq i64 %i.jv, 0
  br i1 %11, label %.loopexit475, label %12

12:                                               ; preds = %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit
  %13 = load i8, ptr %i.jd, align 8, !tbaa !36, !range !58, !noundef !59
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %bb.ad, label %.loopexit475

bb.ad:                                            ; preds = %12
  %i.jw = icmp ugt i32 %.0117557, 1
  br i1 %i.jw, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.jx = load ptr, ptr %1, align 8, !tbaa !8
  %i.jy = getelementptr i8, ptr %i.jx, i64 -24
  %i.jz = load i64, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds i8, ptr %1, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 240
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i386 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i386, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i387

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc391 unwind label %.loopexit.split-lp487

.noexc391:                                        ; preds = %bb.af
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i387: ; preds = %bb.ae
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 56
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !28
  %.not.i1.i.i388 = icmp eq i8 %i.ke, 0
  br i1 %.not.i1.i.i388, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i387
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 67
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i389

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i387
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kc)
          to label %.noexc392 unwind label %.loopexit486

.noexc392:                                        ; preds = %bb.ah
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = invoke noundef signext i8 %i.kj(ptr noundef nonnull align 8 dereferenceable(570) %i.kc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i389 unwind label %.loopexit486, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i389: ; preds = %.noexc392, %bb.ag
  %.0.i.i.i390 = phi i8 [ %i.kg, %bb.ag ], [ %i.kk, %.noexc392 ]
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i390)
          to label %.noexc394 unwind label %.loopexit486

.noexc394:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i389
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kl)
          to label %_ZNSolsEPFRSoS_E.exit207 unwind label %.loopexit486

_ZNSolsEPFRSoS_E.exit207:                         ; preds = %.noexc394
  %i.kn = load ptr, ptr %4, align 8, !tbaa !147
  %i.ko = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef %i.kn, i64 noundef %i.ko)
          to label %_ZNSolsEPFRSoS_E.exit207._crit_edge unwind label %.loopexit486 ; 0 uses

_ZNSolsEPFRSoS_E.exit207._crit_edge:              ; preds = %_ZNSolsEPFRSoS_E.exit207
  %.pre583 = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %.pre583, i64 %i.id
  %.phi.trans.insert584 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre585 = load i64, ptr %.phi.trans.insert584, align 8, !tbaa !78
  br label %bb.ai

.loopexit481:                                     ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit483 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit295

.loopexit.split-lp482:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp484 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit295

.loopexit486:                                     ; preds = %_ZNSolsEPFRSoS_E.exit207, %bb.ai, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %_ZNSolsEj.exit, %bb.ah, %.noexc392, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i389, %.noexc394
  %lpad.loopexit488 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp487:                            ; preds = %bb.af
  %lpad.loopexit.split-lp489 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ai:                                            ; preds = %_ZNSolsEPFRSoS_E.exit207._crit_edge, %bb.ad
  %i.kq = phi i64 [ %.pre585, %_ZNSolsEPFRSoS_E.exit207._crit_edge ], [ %i.jv, %bb.ad ]
  %i.kr = phi ptr [ %.pre583, %_ZNSolsEPFRSoS_E.exit207._crit_edge ], [ %i.ic, %bb.ad ]
  %i.ks = load ptr, ptr %1, align 8, !tbaa !8
  %i.kt = getelementptr i8, ptr %i.ks, i64 -24
  %i.ku = load i64, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds i8, ptr %1, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !219
  %i.ky = and i32 %i.kx, -177
  %i.kz = or disjoint i32 %i.ky, 32
  store i32 %i.kz, ptr %i.kw, align 8, !tbaa !220
  %i.la = getelementptr inbounds nuw [32 x i8], ptr %i.kr, i64 %i.id
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !147
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.lb, i64 noundef %i.kq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213 unwind label %.loopexit486 ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213: ; preds = %bb.ai
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef nonnull @.str.45, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %.loopexit486 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, i64 noundef %i.id)
          to label %_ZNSolsEj.exit unwind label %.loopexit486

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.le, ptr noundef nonnull @.str.46, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.preheader unwind label %.loopexit486 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.preheader: ; preds = %_ZNSolsEj.exit
  br i1 %.not563, label %.loopexit475, label %.lr.ph556.a

.lr.ph556.a:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.preheader ] ; 4 uses
  %i.lg = load ptr, ptr %i.ho, align 8, !tbaa !117 ; 2 uses
  %.not10.i.i.i.i219 = icmp eq ptr %i.lg, null
  br i1 %.not10.i.i.i.i219, label %bb.al, label %.lr.ph.i.i.i.i220

.lr.ph.i.i.i.i220:                                ; preds = %.lr.ph556.a
  %i.lh = load ptr, ptr %0, align 8, !tbaa !145
  %i.li = getelementptr inbounds nuw [32 x i8], ptr %i.lh, i64 %indvars.iv ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !78 ; 4 uses
  %i.ll = load ptr, ptr %i.li, align 8            ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226, %.lr.ph.i.i.i.i220
  %.012.i.i.i.i221 = phi ptr [ %i.lg, %.lr.ph.i.i.i.i220 ], [ %.1.i.i.i.i231, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226 ] ; 4 uses
  %.0811.i.i.i.i222 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i220 ], [ %.19.i.i.i.i228, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226 ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i221, i64 40
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i223 = call i64 @llvm.umin.i64(i64 %i.lk, i64 %i.ln) ; 2 uses
  %i.lo = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i223, 0
  br i1 %i.lo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i245, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i224

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i224: ; preds = %bb.aj
  %i.lp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i221, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !147
  %i.lr = call i32 @memcmp(ptr noundef %i.lq, ptr noundef %i.ll, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i223) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i225 = icmp eq i32 %i.lr, 0
  br i1 %.not.i.i.i.i.i.i.i225, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i245, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i245: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i224, %bb.aj
  %i.ls = sub i64 %i.ln, %i.lk
  %spec.select7.i.i.i.i.i.i.i.i246 = call i64 @llvm.smax.i64(i64 %i.ls, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i247 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i246, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i248 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i247 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i245, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i224
  %.0.i.i.i.i.i.i.i227 = phi i32 [ %i.lr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i224 ], [ %.0.i6.i.i.i.i.i.i.i248, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i245 ]
  %i.lt = icmp slt i32 %.0.i.i.i.i.i.i.i227, 0    ; 2 uses
  %.19.i.i.i.i228 = select i1 %i.lt, ptr %.0811.i.i.i.i222, ptr %.012.i.i.i.i221 ; 5 uses
  %.1.in.v.i.i.i.i229 = select i1 %i.lt, i64 24, i64 16
  %.1.in.i.i.i.i230 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i221, i64 %.1.in.v.i.i.i.i229
  %.1.i.i.i.i231 = load ptr, ptr %.1.in.i.i.i.i230, align 8, !tbaa !171 ; 2 uses
  %.not.i.i.i.i232 = icmp eq ptr %.1.i.i.i.i231, null
  br i1 %.not.i.i.i.i232, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i233, label %bb.aj, !llvm.loop !172

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i233: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i226
  %i.lu = icmp eq ptr %.19.i.i.i.i228, %i.hp
  br i1 %i.lu, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i233
  %i.lv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i228, i64 40
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !78 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i234 = call i64 @llvm.umin.i64(i64 %i.lw, i64 %i.lk) ; 2 uses
  %i.lx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i234, 0
  br i1 %i.lx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i241, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i235

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i235: ; preds = %bb.ak
  %i.ly = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i228, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !147
  %i.ma = call i32 @memcmp(ptr noundef %i.ll, ptr noundef %i.lz, i64 noundef %.sroa.speculated.i.i.i.i.i.i234) #21 ; 2 uses
  %.not.i.i.i.i.i.i236 = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i.i.i.i236, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i241, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i237

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i241: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i235, %bb.ak
  %i.mb = sub i64 %i.lk, %i.lw
  %spec.select7.i.i.i.i.i.i.i242 = call i64 @llvm.smax.i64(i64 %i.mb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i243 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i242, i64 2147483647)
  %.0.i6.i.i.i.i.i.i244 = trunc nsw i64 %.08.i.i.i.i.i.i.i243 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i237

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i237: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i241, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i235
  %.0.i.i.i.i.i.i238 = phi i32 [ %i.ma, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i235 ], [ %.0.i6.i.i.i.i.i.i244, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i241 ]
  %i.mc = icmp slt i32 %.0.i.i.i.i.i.i238, 0
  %spec.select.i.i.i239 = select i1 %i.mc, ptr %i.hp, ptr %.19.i.i.i.i228
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i237, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i233, %.lr.ph556.a
  %.sroa.0.0.i.i.i240 = phi ptr [ %i.hp, %.lr.ph556.a ], [ %i.hp, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i233 ], [ %spec.select.i.i.i239, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i237 ]
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i240, i64 64
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !130
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !133
  %i.mg = getelementptr inbounds nuw [280 x i8], ptr %i.mf, i64 %i.id ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_119writeChecksumReportERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERSo:.noexc.i
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc413 unwind label %.loopexit.split-lp471

.noexc413:                                        ; preds = %bb.be
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i409: ; preds = %_ZNSolsEe.exit277
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 56
  %i.ry = load i8, ptr %i.rx, align 8, !tbaa !28
  %.not.i1.i.i410 = icmp eq i8 %i.ry, 0
  br i1 %.not.i1.i.i410, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i409
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 67
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i411

bb.bg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i409
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.rw)
          to label %.noexc414 unwind label %.loopexit470

.noexc414:                                        ; preds = %bb.bg
  %i.sb = load ptr, ptr %i.rw, align 8, !tbaa !8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 48
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = invoke noundef signext i8 %i.sd(ptr noundef nonnull align 8 dereferenceable(570) %i.rw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i411 unwind label %.loopexit470, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i411: ; preds = %.noexc414, %bb.bf
  %.0.i.i.i412 = phi i8 [ %i.sa, %bb.bf ], [ %i.se, %.noexc414 ]
  %i.sf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.rq, i8 noundef signext %.0.i.i.i412)
          to label %.noexc416 unwind label %.loopexit470

.noexc416:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i411
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sf)
          to label %_ZNSolsEPFRSoS_E.exit279 unwind label %.loopexit470 ; 0 uses

.loopexit455:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit457 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

.loopexit.split-lp456:                            ; preds = %bb.aw
  %lpad.loopexit.split-lp458 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

.loopexit460:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit462 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp461:                            ; preds = %bb.az
  %lpad.loopexit.split-lp463 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp461, %.loopexit460
  %lpad.phi464 = phi { ptr, i32 } [ %lpad.loopexit462, %.loopexit460 ], [ %lpad.loopexit.split-lp463, %.loopexit.split-lp461 ] ; 2 uses
  %i.sh = load ptr, ptr %9, align 8, !tbaa !147   ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.ht
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.sh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.bh, %.loopexit455, %.loopexit.split-lp456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  %.pn = phi { ptr, i32 } [ %lpad.phi464, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %lpad.loopexit.split-lp458, %.loopexit.split-lp456 ], [ %lpad.loopexit457, %.loopexit455 ], [ %lpad.phi464, %bb.bh ] ; 2 uses
  %i.sj = load ptr, ptr %10, align 8, !tbaa !147  ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.hr
  br i1 %i.sk, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %bb.av
  %.sink = phi ptr [ %i.oc, %bb.av ], [ %i.sj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.av ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ]
  call void @_ZdlPv(ptr noundef %.sink) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %bb.av
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.av ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

.loopexit465:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263, %bb.bc, %bb.bl, %.noexc425, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i422, %.noexc427
  %lpad.loopexit467 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp466:                            ; preds = %bb.bj
  %lpad.loopexit.split-lp468 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit470:                                     ; preds = %bb.bd, %bb.bg, %.noexc414, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i411, %.noexc416
  %lpad.loopexit472 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp471:                            ; preds = %bb.be
  %lpad.loopexit.split-lp473 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bi:                                            ; preds = %_ZNSolsEe.exit
  %i.sl = load ptr, ptr %1, align 8, !tbaa !8
  %i.sm = getelementptr i8, ptr %i.sl, i64 -24
  %i.sn = load i64, ptr %i.sm, align 8
  %i.so = getelementptr inbounds i8, ptr %1, i64 %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 240
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i419 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i419, label %bb.bj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i420

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc424 unwind label %.loopexit.split-lp466

.noexc424:                                        ; preds = %bb.bj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i420: ; preds = %bb.bi
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 56
  %i.ss = load i8, ptr %i.sr, align 8, !tbaa !28
  %.not.i1.i.i421 = icmp eq i8 %i.ss, 0
  br i1 %.not.i1.i.i421, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i420
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 67
  %i.su = load i8, ptr %i.st, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i422

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i420
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.sq)
          to label %.noexc425 unwind label %.loopexit465

.noexc425:                                        ; preds = %bb.bl
  %i.sv = load ptr, ptr %i.sq, align 8, !tbaa !8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = invoke noundef signext i8 %i.sx(ptr noundef nonnull align 8 dereferenceable(570) %i.sq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i422 unwind label %.loopexit465, !inline_history !184

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i422: ; preds = %.noexc425, %bb.bk
  %.0.i.i.i423 = phi i8 [ %i.su, %bb.bk ], [ %i.sy, %.noexc425 ]
  %i.sz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i423)
          to label %.noexc427 unwind label %.loopexit465

.noexc427:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i422
  %i.ta = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sz)
          to label %_ZNSolsEPFRSoS_E.exit279 unwind label %.loopexit465 ; 0 uses

_ZNSolsEPFRSoS_E.exit279:                         ; preds = %.noexc427, %.noexc416
  %i.tb = load ptr, ptr %8, align 8, !tbaa !147   ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.hv
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZNSolsEPFRSoS_E.exit279
  call void @_ZdlPv(ptr noundef %i.tb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZNSolsEPFRSoS_E.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.pre586 = load ptr, ptr %i.ne, align 8, !tbaa !60
  %.pre587 = load ptr, ptr %i.nd, align 8, !tbaa !61
  br label %bb.bn

bb.bm:                                            ; preds = %.loopexit470, %.loopexit.split-lp471, %.loopexit465, %.loopexit.split-lp466
  %.pn126 = phi { ptr, i32 } [ %lpad.loopexit.split-lp468, %.loopexit.split-lp466 ], [ %lpad.loopexit467, %.loopexit465 ], [ %lpad.loopexit472, %.loopexit470 ], [ %lpad.loopexit.split-lp473, %.loopexit.split-lp471 ] ; 2 uses
  %i.td = load ptr, ptr %8, align 8, !tbaa !147   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.hv
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.td) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291, %.body
  %.pn126.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291 ], [ %.pn126, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bp

bb.bn:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  %i.tf = phi ptr [ %i.nj, %bb.as ], [ %.pre587, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ] ; 2 uses
  %i.tg = phi ptr [ %i.nk, %bb.as ], [ %.pre586, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ] ; 2 uses
  %i.th = add i32 %.0118553, 1                    ; 2 uses
  %i.ti = zext i32 %i.th to i64                   ; 2 uses
  %i.tj = ptrtoint ptr %i.tg to i64
  %i.tk = ptrtoint ptr %i.tf to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = ashr exact i64 %i.tl, 2
  %i.tn = icmp ugt i64 %i.tm, %i.ti
  br i1 %i.tn, label %bb.as, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218, !llvm.loop !264

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218: ; preds = %bb.bn, %_ZNSolsEPFRSoS_E.exit251, %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit475, label %.lr.ph556.a, !llvm.loop !265

.loopexit475:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218.preheader, %12, %_ZNSt6vectorIeSaIeEEC2ERKS1_.exit
  %.not.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIeSaIeEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.loopexit475
  call void @_ZdlPv(ptr noundef nonnull %i.jo) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit

_ZNSt6vectorIeSaIeEED2Ev.exit:                    ; preds = %.loopexit475, %bb.bo
  %i.to = add i32 %.0117557, 1                    ; 2 uses
  %i.tp = zext i32 %i.to to i64                   ; 2 uses
  %i.tq = load ptr, ptr %i.ee, align 8, !tbaa !146
  %i.tr = load ptr, ptr %i.n, align 8, !tbaa !145 ; 2 uses
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = sub i64 %i.ts, %i.tt
  %i.tv = ashr exact i64 %i.tu, 5
  %i.tw = icmp ugt i64 %i.tv, %i.tp
  br i1 %i.tw, label %bb.v, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199._crit_edge, !llvm.loop !266

bb.bp:                                            ; preds = %.loopexit476, %.loopexit.split-lp477, %.loopexit486, %.loopexit.split-lp487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %.pn126.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp489, %.loopexit.split-lp487 ], [ %.pn126.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ], [ %lpad.loopexit488, %.loopexit486 ], [ %lpad.loopexit478, %.loopexit476 ], [ %lpad.loopexit.split-lp479, %.loopexit.split-lp477 ] ; 2 uses
  %.not.i.i.i294 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i294, label %_ZNSt6vectorIeSaIeEED2Ev.exit295, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZdlPv(ptr noundef nonnull %i.jo) #22
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit295

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit199._crit_edge
  %i.tx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.28, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit201
  %i.ty = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.br unwind label %bb.u      ; 0 uses

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297
  %i.tz = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.ef
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.tz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ub = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300
  call void @_ZdlPv(ptr noundef %i.ub) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.uh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.sroa.0442.0655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ] ; 3 uses
  %i.ue = load ptr, ptr %.05.i.i.i, align 8, !tbaa !147 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.ue) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i304 = icmp eq ptr %i.uh, %.0.lcssa.i.i.i.i.i668
  br i1 %.not.i.i.i304, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %.not.i.i1.i = icmp eq ptr %.sroa.0442.0655, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0442.0655) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bs
  %i.ui = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.ad
  br i1 %i.uj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ui) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.uk = load ptr, ptr %4, align 8, !tbaa !147   ; 2 uses
  %i.ul = icmp eq ptr %i.uk, %i.y
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307
  call void @_ZdlPv(ptr noundef %i.uk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.um = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.t
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  call void @_ZdlPv(ptr noundef %i.um) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.uo = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.o
  br i1 %i.up, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313
  call void @_ZdlPv(ptr noundef %i.uo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

_ZNSt6vectorIeSaIeEED2Ev.exit295:                 ; preds = %.loopexit481, %.loopexit.split-lp482, %bb.bp, %bb.bq, %bb.u
  %.pn126.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.u ], [ %.pn126.pn.pn.pn, %bb.bq ], [ %.pn126.pn.pn.pn, %bb.bp ], [ %lpad.loopexit483, %.loopexit481 ], [ %lpad.loopexit.split-lp484, %.loopexit.split-lp482 ] ; 2 uses
  %i.uq = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.ef
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit295
  call void @_ZdlPv(ptr noundef %i.uq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317, %bb.t
  %.pn126.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ia, %bb.t ], [ %.pn126.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317 ], [ %.pn126.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIeSaIeEED2Ev.exit295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %bb.l
  %.pn126.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319 ], [ %i.ei, %bb.l ] ; 4 uses
  %i.us = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.uu = icmp eq ptr %i.us, %i.ut
  br i1 %i.uu, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.us) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, label %.lr.ph.i.i.i324.preheader

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, label %.lr.ph.i.i.i324.preheader

.lr.ph.i.i.i324.preheader:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.k, %.thread, %bb.bu
  %.pn137699 = phi { ptr, i32 } [ %i.ce, %.thread ], [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.eh, %bb.k ], [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ]
  %.sroa.0442.0656697 = phi ptr [ %i.ar, %.thread ], [ %.sroa.0442.0655, %bb.bu ], [ %.sroa.0442.0655, %bb.k ], [ %.sroa.0442.0655, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i669696 = phi ptr [ %.lcssa747, %.thread ], [ %.0.lcssa.i.i.i.i.i668, %bb.bu ], [ %.0.lcssa.i.i.i.i.i668, %bb.k ], [ %.0.lcssa.i.i.i.i.i668, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ]
  br label %.lr.ph.i.i.i324

.lr.ph.i.i.i324:                                  ; preds = %.lr.ph.i.i.i324.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327
  %.05.i.i.i325 = phi ptr [ %i.uy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327 ], [ %.sroa.0442.0656697, %.lr.ph.i.i.i324.preheader ] ; 3 uses
  %i.uv = load ptr, ptr %.05.i.i.i325, align 8, !tbaa !147 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.05.i.i.i325, i64 16
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326: ; preds = %.lr.ph.i.i.i324
  call void @_ZdlPv(ptr noundef %i.uv) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327: ; preds = %.lr.ph.i.i.i324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326
  %i.uy = getelementptr inbounds nuw i8, ptr %.05.i.i.i325, i64 32 ; 2 uses
  %.not.i.i.i328 = icmp eq ptr %i.uy, %.0.lcssa.i.i.i.i.i669696
  br i1 %.not.i.i.i328, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, label %.lr.ph.i.i.i324, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.k, %bb.bu
  %.pn137700 = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %.pn126.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.eh, %bb.k ], [ %.pn137699, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327 ] ; 2 uses
  %.sroa.0442.0656698 = phi ptr [ %.sroa.0442.0655, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %.sroa.0442.0655, %bb.bu ], [ %.sroa.0442.0655, %bb.k ], [ %.sroa.0442.0656697, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327 ] ; 2 uses
  %.not.i.i1.i332 = icmp eq ptr %.sroa.0442.0656698, null
  br i1 %.not.i.i1.i332, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0442.0656698) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334: ; preds = %bb.bv, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, %bb.e
  %.pn137.pn = phi { ptr, i32 } [ %i.br, %bb.e ], [ %.pn137700, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331 ], [ %.pn137700, %bb.bv ] ; 2 uses
  %i.uz = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.va = icmp eq ptr %i.uz, %i.ad
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit334
  call void @_ZdlPv(ptr noundef %i.uz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

end_hunk_5
