Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/exrmultipart?download=true
inline.NumInlined: 1843
inline.NumDeleted: 767
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z8separateSt6vectorIPKcSaIS1_EES1_b:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bo, align 8, !tbaa !47
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #26
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.br) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ft = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ba
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.fv = load i64, ptr %i.ba, align 8, !tbaa !26
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %exitcond.not = icmp eq i32 %i.dc, %i.ag
  br i1 %exitcond.not, label %_ZNSolsEPFRSoS_E.exit._crit_edge, label %.lr.ph.split, !llvm.loop !261

.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i58, %.lr.ph.split.us
  %lpad.loopexit.split-lp374 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.au:                                            ; preds = %bb.ac
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp253.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc184, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i179, %.noexc182, %bb.ap, %bb.at, %.noexc.i.i76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.af, %bb.ae, %bb.ag, %bb.am, %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.al
  %lpad.loopexit.split-lp379 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.bd
  br i1 %i.fz, label %.body64, label %.body64.sink.split

.body64.sink.split:                               ; preds = %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %.sink = phi ptr [ %i.dn, %bb.aj ], [ %i.fy, %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp ]
  %.pn41.ph = phi { ptr, i32 } [ %i.dm, %bb.aj ], [ %lpad.loopexit.split-lp379, %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp ]
  %i.ga = load i64, ptr %i.bd, align 8, !tbaa !26
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gb) #28
  br label %.body64

.body64:                                          ; preds = %.body64.sink.split, %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp, %bb.aj
  %.pn41 = phi { ptr, i32 } [ %i.dm, %bb.aj ], [ %lpad.loopexit.split-lp379, %.loopexit.split-lp258.loopexit.split-lp.loopexit.split-lp ], [ %.pn41.ph, %.body64.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp253.loopexit.split-lp.loopexit.split-lp, %.body64
  %.pn43 = phi { ptr, i32 } [ %.pn41, %.body64 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp253.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #26
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.av ], [ %i.fx, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.gc = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ba
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.aw
  %i.ge = load i64, ptr %i.ba, align 8, !tbaa !26
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.aw, %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %lpad.loopexit.split-lp374, %.loopexit.split-lp248.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn43.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body

bb.ax:                                            ; preds = %.noexc56
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !55
  %i.gg = load ptr, ptr %0, align 8, !tbaa !61
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !62
  invoke void @_Z14filename_checkSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEPKc(ptr noundef nonnull align 8 %17, ptr noundef %i.gh)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.cf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pr.i, %bb.ay ] ; 3 uses
  %i.gi = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !26
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.gn, %i.cf
  br i1 %.not.i.i.i88, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.ay
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.bx) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.az
  br i1 %i.az, label %.lr.ph299, label %._crit_edge

.lr.ph299:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.go = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #26
  br label %.body

bb.bb:                                            ; preds = %.lr.ph299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %indvars.iv = phi i64 [ 0, %.lr.ph299 ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.gr = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %i.gs = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.gr)
          to label %bb.bc unwind label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN7Imf_3_46HeaderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(49) %18, ptr noundef nonnull align 8 dereferenceable(49) %i.gs)
          to label %bb.bd unwind label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.gt = load ptr, ptr %12, align 8, !tbaa !56
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.gt, i64 %indvars.iv
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !24
  %i.gw = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.be unwind label %bb.bn

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN7Imf_3_419MultiPartOutputFileC1EPKcPKNS_6HeaderEibi(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %i.gv, ptr noundef nonnull %18, i32 noundef 1, i1 noundef zeroext %2, i32 noundef %i.gw)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.gx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %18)
          to label %bb.bg unwind label %bb.bo     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.go, ptr %20, align 8, !tbaa !28
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !24 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ha, ptr %i.a, align 8, !tbaa !29
  %i.hb = icmp ugt i64 %i.ha, 15
  br i1 %i.hb, label %.noexc.i91, label %._crit_edge.i.i90

.noexc.i91:                                       ; preds = %bb.bg
  %i.hc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc92 unwind label %bb.bo  ; 2 uses

.noexc92:                                         ; preds = %.noexc.i91
  store ptr %i.hc, ptr %20, align 8, !tbaa !24
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.hd, ptr %i.go, align 8, !tbaa !26
  br label %._crit_edge.i.i90

._crit_edge.i.i90:                                ; preds = %.noexc92, %bb.bg
  %i.he = phi ptr [ %i.hc, %.noexc92 ], [ %i.go, %bb.bg ] ; 2 uses
  switch i64 %i.ha, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i90
  %i.hf = load i8, ptr %i.gy, align 1, !tbaa !26
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !26
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i90
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr align 1 %i.gy, i64 %i.ha, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i90
  %i.hg = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  store i64 %i.hg, ptr %i.gp, align 8, !tbaa !25
  %i.hh = load ptr, ptr %20, align 8, !tbaa !24
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hg
  store i8 0, ptr %i.hi, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.hj = load i64, ptr %i.gp, align 8, !tbaa !25
  switch i64 %i.hj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246 [
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bj
  %i.hk = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 1
  %i.hm = xor i64 %i.hl, 7308895159698154355
  %i.hn = getelementptr i8, ptr %i.hk, i64 5
  %i.ho = load i64, ptr %i.hn, align 1
  %i.hp = xor i64 %i.ho, 7306916042979503721
  %i.hq = or i64 %i.hm, %i.hp
  %i.hr = icmp ne i64 %i.hq, 0
  %i.hs = zext i1 %i.hr to i32
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.hv = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.hw = getelementptr i8, ptr %i.hv, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 240
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i187 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i187, label %.invoke359, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i188

.invoke359:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.cont360 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont360:                                         ; preds = %.invoke359
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i188: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.ic = load i8, ptr %i.ib, align 8, !tbaa !116
  %.not.i1.i.i189 = icmp eq i8 %i.ic, 0
  br i1 %.not.i1.i.i189, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i188
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 67
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i190

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i188
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ia)
          to label %.noexc193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc193:                                        ; preds = %bb.bl
  %i.if = load ptr, ptr %i.ia, align 8, !tbaa !47
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef signext i8 %i.ih(ptr noundef nonnull align 8 dereferenceable(570) %i.ia, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i190: ; preds = %.noexc193, %bb.bk
  %.0.i.i.i191 = phi i8 [ %i.ie, %bb.bk ], [ %i.ii, %.noexc193 ]
  %i.ij = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i191)
          to label %.noexc195 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc195:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i190
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ij)
          to label %_ZNSolsEPFRSoS_E.exit96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit96:                          ; preds = %.noexc195
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7Imf_3_49InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.gr)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %_ZNSolsEPFRSoS_E.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7Imf_3_410OutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %.noexc97
  invoke void @_ZN7Imf_3_410OutputPart10copyPixelsERNS_9InputPartE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_Z13copy_scanlineRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z13copy_scanlineRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit: ; preds = %.noexc98
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

bb.bm:                                            ; preds = %bb.bc, %bb.bb
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bn:                                            ; preds = %bb.be, %bb.bd
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bo:                                            ; preds = %.noexc.i91, %bb.bf
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc228, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i223, %.noexc226, %bb.bu, %.noexc217, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i212, %.noexc215, %bb.bs, %.noexc206, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i201, %.noexc204, %bb.bq, %.noexc195, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i190, %.noexc193, %bb.bl, %.noexc128, %.noexc127, %_ZNSolsEPFRSoS_E.exit126, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread, %.noexc119, %.noexc118, %_ZNSolsEPFRSoS_E.exit117, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread, %.noexc110, %.noexc109, %_ZNSolsEPFRSoS_E.exit108, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread, %.noexc98, %.noexc97, %_ZNSolsEPFRSoS_E.exit96, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %.invoke359
  %lpad.loopexit.split-lp372 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.go
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.iq = load i64, ptr %i.go, align 8, !tbaa !26
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104: ; preds = %bb.bj
  %.pre306 = load ptr, ptr %20, align 8, !tbaa !24 ; 2 uses
  %21 = load i64, ptr %.pre306, align 1
  %22 = xor i64 %21, 7020383274059721076
  %23 = getelementptr i8, ptr %.pre306, i64 8
  %24 = load i16, ptr %23, align 1
  %25 = zext i16 %24 to i64
  %26 = xor i64 %25, 25959
  %27 = or i64 %22, %26
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %i.is = icmp eq i32 %29, 0
  br i1 %i.is, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104.thread
  %i.iu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.iv = getelementptr i8, ptr %i.iu, i64 -24
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 240
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i198 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i198, label %.invoke359, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !116
  %.not.i1.i.i200 = icmp eq i8 %i.jb, 0
  br i1 %.not.i1.i.i200, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 67
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i201

bb.bq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iz)
          to label %.noexc204 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc204:                                        ; preds = %bb.bq
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !47
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = invoke noundef signext i8 %i.jg(ptr noundef nonnull align 8 dereferenceable(570) %i.iz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i201: ; preds = %.noexc204, %bb.bp
  %.0.i.i.i202 = phi i8 [ %i.jd, %bb.bp ], [ %i.jh, %.noexc204 ]
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i202)
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i201
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ji)
          to label %_ZNSolsEPFRSoS_E.exit108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit108:                         ; preds = %.noexc206
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN7Imf_3_414TiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.gr)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %_ZNSolsEPFRSoS_E.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7Imf_3_415TiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %.noexc109
  invoke void @_ZN7Imf_3_415TiledOutputPart10copyPixelsERNS_14TiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_Z9copy_tileRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z9copy_tileRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit: ; preds = %.noexc110
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113: ; preds = %bb.bj
  %.pre307 = load ptr, ptr %20, align 8, !tbaa !24 ; 2 uses
  %30 = load i64, ptr %.pre307, align 1
  %31 = xor i64 %30, 7953747764371088740
  %32 = getelementptr i8, ptr %.pre307, i64 8
  %33 = load i32, ptr %32, align 1
  %34 = zext i32 %33 to i64
  %35 = xor i64 %34, 1701734764
  %36 = or i64 %31, %35
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %i.jk = icmp eq i32 %38, 0
  br i1 %i.jk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113.thread
  %i.jm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.jn = getelementptr i8, ptr %i.jm, i64 -24
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 240
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i209 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i209, label %.invoke359, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i210

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i210: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load i8, ptr %i.js, align 8, !tbaa !116
  %.not.i1.i.i211 = icmp eq i8 %i.jt, 0
  br i1 %.not.i1.i.i211, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i210
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 67
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i212

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i210
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jr)
          to label %.noexc215 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc215:                                        ; preds = %bb.bs
  %i.jw = load ptr, ptr %i.jr, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = invoke noundef signext i8 %i.jy(ptr noundef nonnull align 8 dereferenceable(570) %i.jr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i212: ; preds = %.noexc215, %bb.br
  %.0.i.i.i213 = phi i8 [ %i.jv, %bb.br ], [ %i.jz, %.noexc215 ]
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i213)
          to label %.noexc217 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc217:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i212
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ka)
          to label %_ZNSolsEPFRSoS_E.exit117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit117:                         ; preds = %.noexc217
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7Imf_3_421DeepScanLineInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.gr)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc118:                                        ; preds = %_ZNSolsEPFRSoS_E.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7Imf_3_422DeepScanLineOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119:                                        ; preds = %.noexc118
  invoke void @_ZN7Imf_3_422DeepScanLineOutputPart10copyPixelsERNS_21DeepScanLineInputPartE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_Z17copy_scanlinedeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z17copy_scanlinedeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit: ; preds = %.noexc119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122: ; preds = %bb.bj
  %.pre308 = load ptr, ptr %20, align 8, !tbaa !24
  %39 = load i64, ptr %.pre308, align 1
  %40 = icmp ne i64 %39, 7308332244138288484
  %41 = zext i1 %40 to i32
  %i.kc = icmp eq i32 %41, 0
  br i1 %i.kc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread
  %i.ke = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.kf = getelementptr i8, ptr %i.ke, i64 -24
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 240
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i220 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i220, label %.invoke359, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i221

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i221: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 56
  %i.kl = load i8, ptr %i.kk, align 8, !tbaa !116
  %.not.i1.i.i222 = icmp eq i8 %i.kl, 0
  br i1 %.not.i1.i.i222, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i221
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 67
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i223

bb.bu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i221
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kj)
          to label %.noexc226 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc226:                                        ; preds = %bb.bu
  %i.ko = load ptr, ptr %i.kj, align 8, !tbaa !47
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = invoke noundef signext i8 %i.kq(ptr noundef nonnull align 8 dereferenceable(570) %i.kj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i223: ; preds = %.noexc226, %bb.bt
  %.0.i.i.i224 = phi i8 [ %i.kn, %bb.bt ], [ %i.kr, %.noexc226 ]
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i224)
          to label %.noexc228 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc228:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i223
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ks)
          to label %_ZNSolsEPFRSoS_E.exit126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit126:                         ; preds = %.noexc228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN7Imf_3_418DeepTiledInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.gr)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %_ZNSolsEPFRSoS_E.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7Imf_3_419DeepTiledOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0)
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc128:                                        ; preds = %.noexc127
  invoke void @_ZN7Imf_3_419DeepTiledOutputPart10copyPixelsERNS_18DeepTiledInputPartE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_Z13copy_tiledeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z13copy_tiledeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit: ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit104, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.bj, %_Z13copy_tiledeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit, %_Z17copy_scanlinedeepRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit, %_Z9copy_tileRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit, %_Z13copy_scanlineRN7Imf_3_418MultiPartInputFileERNS_19MultiPartOutputFileEii.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122
  %i.ku = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.go
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246
  %i.kw = load i64, ptr %i.go, align 8, !tbaa !26
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit122.thread246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7Imf_3_419MultiPartOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond304.not, label %._crit_edge, label %bb.bb, !llvm.loop !262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.bo
  %.pn = phi { ptr, i32 } [ %i.in, %bb.bo ], [ %lpad.loopexit.split-lp372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %lpad.loopexit.split-lp372, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7Imf_3_419MultiPartOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #26
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bn
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.im, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %18) #26
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bm
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bv ], [ %i.il, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %.body

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !92 ; 8 uses
  %.not.i.i.i133 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i133, label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 4 uses
  %i.lb = load atomic i64, ptr %i.la acquire, align 8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 4294967297
  %i.ld = trunc i64 %i.lb to i32                  ; 2 uses
  br i1 %i.lc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.la, align 8, !tbaa !94
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 0, ptr %i.le, align 4, !tbaa !95
  %i.lf = load ptr, ptr %i.kz, align 8, !tbaa !47
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #26, !inline_history !7
  %i.li = load ptr, ptr %i.kz, align 8, !tbaa !47
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #26, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.ll = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i134 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i.i134, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lm = add nsw i32 %i.ld, -1
  store i32 %i.lm, ptr %i.la, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.ln = atomicrmw volatile add ptr %i.la, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i = phi i32 [ %i.ld, %bb.ca ], [ %i.ln, %bb.cb ]
  %i.lo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.lo, label %bb.cc, label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !63

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #26
  br label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.by, %._crit_edge
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !92 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i1.i, label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 4 uses
  %i.ls = load atomic i64, ptr %i.lr acquire, align 8 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 4294967297
  %i.lu = trunc i64 %i.ls to i32                  ; 2 uses
  br i1 %i.lt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.lr, align 8, !tbaa !94
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store i32 0, ptr %i.lv, align 4, !tbaa !95
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !47
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #26, !inline_history !8
  %i.lz = load ptr, ptr %i.lq, align 8, !tbaa !47
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #26, !inline_history !8
  br label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit

bb.cf:                                            ; preds = %bb.cd
  %i.mc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i = icmp eq i8 %i.mc, 0
  br i1 %.not.i.i.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.md = add nsw i32 %i.lu, -1
  store i32 %i.md, ptr %i.lr, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.me = atomicrmw volatile add ptr %i.lr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i.i = phi i32 [ %i.lu, %bb.cg ], [ %i.me, %bb.ch ]
  %i.mf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.mf, label %bb.ci, label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit, !prof !63

end_hunk_0
begin_hunk_1_@_Z8separateSt6vectorIPKcSaIS1_EES1_b:bb.a
  %.0.i.i.i.i.i144 = phi i32 [ %i.nd, %bb.co ], [ %i.nn, %bb.cp ]
  %i.no = icmp eq i32 %.0.i.i.i.i.i144, 1
  br i1 %i.no, label %bb.cq, label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145, !prof !63

bb.cq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i143
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #26
  br label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145

_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145: ; preds = %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i143, %bb.cm, %_ZNSolsEPFRSoS_E.exit140
  %i.np = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !92 ; 8 uses
  %.not.i.i.i1.i146 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i1.i146, label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 4 uses
  %i.ns = load atomic i64, ptr %i.nr acquire, align 8 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 4294967297
  %i.nu = trunc i64 %i.ns to i32                  ; 2 uses
  br i1 %i.nt, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.nr, align 8, !tbaa !94
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  store i32 0, ptr %i.nv, align 4, !tbaa !95
  %i.nw = load ptr, ptr %i.nq, align 8, !tbaa !47
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #26, !inline_history !8
  %i.nz = load ptr, ptr %i.nq, align 8, !tbaa !47
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #26, !inline_history !8
  br label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150

bb.ct:                                            ; preds = %bb.cr
  %i.oc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i147 = icmp eq i8 %i.oc, 0
  br i1 %.not.i.i.i.i.i147, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.od = add nsw i32 %i.nu, -1
  store i32 %i.od, ptr %i.nr, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i148

bb.cv:                                            ; preds = %bb.ct
  %i.oe = atomicrmw volatile add ptr %i.nr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i148

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i148: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i.i149 = phi i32 [ %i.nu, %bb.cu ], [ %i.oe, %bb.cv ]
  %i.of = icmp eq i32 %.0.i.i.i.i.i.i149, 1
  br i1 %i.of, label %bb.cw, label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150, !prof !63

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i148
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #26
  br label %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150

_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150:      ; preds = %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i148, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.og = load ptr, ptr %12, align 8, !tbaa !56   ; 3 uses
  %i.oh = load ptr, ptr %i.bs, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i151 = icmp eq ptr %i.og, %i.oh
  br i1 %.not4.i.i.i151, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i159, label %.lr.ph.i.i.i152

.lr.ph.i.i.i152:                                  ; preds = %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i155
  %.05.i.i.i153 = phi ptr [ %i.on, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i155 ], [ %i.og, %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150 ] ; 3 uses
  %i.oi = load ptr, ptr %.05.i.i.i153, align 8, !tbaa !24 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.05.i.i.i153, i64 16 ; 2 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i154: ; preds = %.lr.ph.i.i.i152
  %i.ol = load i64, ptr %i.oj, align 8, !tbaa !26
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.om) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i155

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i155: ; preds = %.lr.ph.i.i.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i154
  %i.on = getelementptr inbounds nuw i8, ptr %.05.i.i.i153, i64 32 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %i.on, %i.oh
  br i1 %.not.i.i.i156, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i157, label %.lr.ph.i.i.i152, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i157: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i155
  %.pr.i158 = load ptr, ptr %12, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i159

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i159: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i157, %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150
  %i.oo = phi ptr [ %.pr.i158, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i157 ], [ %i.og, %_ZN7Imf_3_418MultiPartInputFileD2Ev.exit150 ] ; 3 uses
  %.not.i.i1.i160 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i1.i160, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit163, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i159
  %i.op = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !65
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = ptrtoint ptr %i.oo to i64
  %i.ot = sub i64 %i.or, %i.os
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.ot) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit163

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit163: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i159, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ou = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.p
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit163
  %i.ow = load i64, ptr %i.p, align 8, !tbaa !26
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.ox) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  ret void

.body:                                            ; preds = %bb.y, %bb.v, %bb.u, %bb.bw, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.z
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn.pn.pn, %bb.bw ], [ %i.ck, %bb.z ], [ %i.gq, %bb.ba ], [ %i.cj, %bb.y ], [ %i.cg, %bb.v ], [ %i.cg, %bb.u ]
  call void @_ZN7Imf_3_418MultiPartInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #26
  br label %bb.cy

bb.cy:                                            ; preds = %.body, %bb.x
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn, %.body ], [ %i.ci, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.oy = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.p
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.cy
  %i.pa = load i64, ptr %i.p, align 8, !tbaa !26
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.w
  %.pn43.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.w ], [ %.pn43.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %.pn43.pn.pn.pn.pn, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %bb.d
  %.pn50 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %.pn43.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  resume { ptr, i32 } %.pn50
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12usageMessageRSoPKcb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.32, i64 noundef 7) ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !47
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.33, i64 noundef 110) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.34, i64 noundef 72) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.35, i64 noundef 67) ; 0 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.36, i64 noundef 484) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 5 uses
  %3 = alloca %"class.std::vector.20", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.20", align 8    ; 5 uses
  %5 = alloca %"class.std::vector.20", align 8    ; 5 uses
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %sub_0.preheader, label %._crit_edge.thread

sub_0.preheader:                                  ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %sub_0

sub_0:                                            ; preds = %sub_0.preheader, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126
  %indvars.iv = phi i64 [ 1, %sub_0.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 2 uses
  %.061466 = phi i32 [ 0, %sub_0.preheader ], [ %.162, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 3 uses
  %.064464 = phi i1 [ false, %sub_0.preheader ], [ %.165, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 9 uses
  %.066463 = phi ptr [ null, %sub_0.preheader ], [ %.167, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 9 uses
  %.0373462 = phi ptr [ null, %sub_0.preheader ], [ %.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 11 uses
  %.sroa.21.0461 = phi ptr [ null, %sub_0.preheader ], [ %.sroa.21.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 46 uses
  %.sroa.14.0460 = phi ptr [ null, %sub_0.preheader ], [ %.sroa.14.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 11 uses
  %.sroa.0.0459 = phi ptr [ null, %sub_0.preheader ], [ %.sroa.0.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 48 uses
  %.sroa.28.0458 = phi ptr [ null, %sub_0.preheader ], [ %.sroa.28.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 45 uses
  %.sroa.17.0457 = phi ptr [ null, %sub_0.preheader ], [ %.sroa.17.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 11 uses
  %.sroa.0350.0456 = phi ptr [ null, %sub_0.preheader ], [ %.sroa.0350.1, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 ] ; 47 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 15 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not475 = icmp eq i8 %i.d, 45                  ; 2 uses
  br i1 %.not475, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %.not476 = icmp eq i8 %i.f, 104
  br i1 %.not476, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(7) @.str.38) #31
  %.not78 = icmp eq i32 %i.j, 0
  br i1 %.not78, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail.thread, %.tail
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 7)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.39, i64 noundef 12)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc88:                                         ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.33, i64 noundef 110)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc89:                                         ; preds = %.noexc88
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.34, i64 noundef 72)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc90:                                         ; preds = %.noexc89
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.35, i64 noundef 67)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc91:                                         ; preds = %.noexc90
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 484)
          to label %_Z12usageMessageRSoPKcb.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %.tail.thread
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(10) @.str.40) #31
  %.not79 = icmp eq i32 %i.q, 0
  br i1 %.not79, label %bb.d, label %sub_0380

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef ptr @_ZN7Imf_3_417getLibraryVersionEv()
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.42) #31
  %.not80 = icmp eq i32 %i.u, 0
  br i1 %.not80, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.43, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %bb.f
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #26
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.r, i64 noundef %i.w)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.44, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.45, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.aa = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i229 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i229, label %.invoke579, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !116
  %.not.i1.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 67
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.af)
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc231:                                        ; preds = %bb.h
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef signext i8 %i.am(ptr noundef nonnull align 8 dereferenceable(570) %i.af, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc231, %bb.g
  %.0.i.i.i = phi i8 [ %i.aj, %bb.g ], [ %i.an, %.noexc231 ]
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc233:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc233
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.46, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ar = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i235 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i235, label %.invoke579, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !116
  %.not.i1.i.i237 = icmp eq i8 %i.ay, 0
  br i1 %.not.i1.i.i237, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 67
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aw)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc241:                                        ; preds = %bb.j
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.aw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238: ; preds = %.noexc241, %bb.i
  %.0.i.i.i239 = phi i8 [ %i.ba, %bb.i ], [ %i.be, %.noexc241 ]
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i239)
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_ZNSolsEPFRSoS_E.exit109 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit109:                         ; preds = %.noexc243
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.47, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %_ZNSolsEPFRSoS_E.exit109
  %i.bi = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i246 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i246, label %.invoke579, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247

.invoke579:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.cont580 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont580:                                         ; preds = %.invoke579
end_hunk_1
begin_hunk_2_@main:bb.a

.tail379:                                         ; preds = %sub_1381
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126, label %sub_1386

sub_1386:                                         ; preds = %.tail379, %sub_1381
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %.not480 = icmp eq i8 %i.ce, 111
  br i1 %.not480, label %.tail384, label %.tail384.thread

.tail384:                                         ; preds = %sub_1386
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126, label %.tail384.thread

.tail384.thread:                                  ; preds = %sub_0380, %sub_1386, %.tail384
  %i.ci = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(10) @.str.50) #31
  %.not83 = icmp eq i32 %i.ci, 0
  br i1 %.not83, label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126, label %bb.m

bb.m:                                             ; preds = %.tail384.thread
  %i.cj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(6) @.str.51) #31
  %.not84 = icmp eq i32 %i.cj, 0
  br i1 %.not84, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not85 = icmp eq i32 %.061466, 1
  br i1 %.not85, label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull @.str.52)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #27
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.cl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr nonnull %i.ck) #26
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178

bb.r:                                             ; preds = %bb.m
  switch i32 %.061466, label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126 [
    i32 1, label %bb.s
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 4, label %bb.af
  ]

bb.s:                                             ; preds = %bb.r
  %.not.i114 = icmp eq ptr %.sroa.17.0457, %.sroa.28.0458
  br i1 %.not.i114, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.c, ptr %.sroa.17.0457, align 8, !tbaa !62
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.cm = ptrtoint ptr %.sroa.28.0458 to i64
  %i.cn = ptrtoint ptr %.sroa.0350.0456 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.v, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #27
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.u
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #30
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !62
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !62
  %i.cz = icmp sgt i64 %i.co, 0
  br i1 %i.cz, label %bb.w, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.w:                                             ; preds = %.noexc116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %.sroa.0350.0456, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.w, %.noexc116
  %.not.i17.i.i = icmp eq ptr %.sroa.0350.0456, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0456, i64 noundef %i.co) #28
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit:    ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.t
  %.sroa.0350.4 = phi ptr [ %i.cw, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0350.0456, %bb.t ] ; 4 uses
  %.pn378 = phi ptr [ %i.cx, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0457, %bb.t ]
  %.sroa.28.4 = phi ptr [ %i.da, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.28.0458, %bb.t ] ; 4 uses
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.pn378, i64 8 ; 2 uses
  %.not.i117 = icmp eq ptr %.sroa.14.0460, %.sroa.21.0461
  br i1 %.not.i117, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit
  store ptr %.0373462, ptr %.sroa.14.0460, align 8, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.14.0460, i64 8
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126

bb.z:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit
  %i.dc = ptrtoint ptr %.sroa.21.0461 to i64
  %i.dd = ptrtoint ptr %.sroa.0.0459 to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.aa, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i118

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #27
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc124:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i118: ; preds = %bb.z
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i119 = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i119, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = tail call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i120 = icmp ne i64 %i.dk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i120)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #30
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc125:                                        ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i118
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store ptr %.0373462, ptr %i.dn, align 8, !tbaa !62
  %i.do = icmp sgt i64 %i.de, 0
  br i1 %i.do, label %bb.ab, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i121

bb.ab:                                            ; preds = %.noexc125
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %.sroa.0.0459, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i121

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i121: ; preds = %bb.ab, %.noexc125
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.not.i17.i.i122 = icmp eq ptr %.sroa.0.0459, null
  br i1 %.not.i17.i.i122, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i121
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0459, i64 noundef %i.de) #28
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123: ; preds = %bb.ac, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i121
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126

bb.ad:                                            ; preds = %bb.r
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126

bb.ae:                                            ; preds = %bb.r
  %i.dr = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #26, !inline_history !1
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = icmp ne i64 %i.ds, 0
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126

bb.af:                                            ; preds = %bb.r
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126: ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123, %bb.y, %bb.n, %.tail384.thread, %.tail384, %.tail379, %bb.af, %bb.ae, %bb.ad, %bb.r
  %.sroa.0350.1 = phi ptr [ %.sroa.0350.0456, %.tail379 ], [ %.sroa.0350.0456, %.tail384 ], [ %.sroa.0350.0456, %.tail384.thread ], [ %.sroa.0350.0456, %bb.n ], [ %.sroa.0350.0456, %bb.r ], [ %.sroa.0350.0456, %bb.af ], [ %.sroa.0350.0456, %bb.ad ], [ %.sroa.0350.0456, %bb.ae ], [ %.sroa.0350.4, %bb.y ], [ %.sroa.0350.4, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 60 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0457, %.tail379 ], [ %.sroa.17.0457, %.tail384 ], [ %.sroa.17.0457, %.tail384.thread ], [ %.sroa.17.0457, %bb.n ], [ %.sroa.17.0457, %bb.r ], [ %.sroa.17.0457, %bb.af ], [ %.sroa.17.0457, %bb.ad ], [ %.sroa.17.0457, %bb.ae ], [ %.sroa.17.2, %bb.y ], [ %.sroa.17.2, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 3 uses
  %.sroa.28.1 = phi ptr [ %.sroa.28.0458, %.tail379 ], [ %.sroa.28.0458, %.tail384 ], [ %.sroa.28.0458, %.tail384.thread ], [ %.sroa.28.0458, %bb.n ], [ %.sroa.28.0458, %bb.r ], [ %.sroa.28.0458, %bb.af ], [ %.sroa.28.0458, %bb.ad ], [ %.sroa.28.0458, %bb.ae ], [ %.sroa.28.4, %bb.y ], [ %.sroa.28.4, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 51 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0459, %.tail379 ], [ %.sroa.0.0459, %.tail384 ], [ %.sroa.0.0459, %.tail384.thread ], [ %.sroa.0.0459, %bb.n ], [ %.sroa.0.0459, %bb.r ], [ %.sroa.0.0459, %bb.af ], [ %.sroa.0.0459, %bb.ad ], [ %.sroa.0.0459, %bb.ae ], [ %.sroa.0.0459, %bb.y ], [ %i.dm, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 60 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0460, %.tail379 ], [ %.sroa.14.0460, %.tail384 ], [ %.sroa.14.0460, %.tail384.thread ], [ %.sroa.14.0460, %bb.n ], [ %.sroa.14.0460, %bb.r ], [ %.sroa.14.0460, %bb.af ], [ %.sroa.14.0460, %bb.ad ], [ %.sroa.14.0460, %bb.ae ], [ %i.db, %bb.y ], [ %i.dp, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 5 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.0461, %.tail379 ], [ %.sroa.21.0461, %.tail384 ], [ %.sroa.21.0461, %.tail384.thread ], [ %.sroa.21.0461, %bb.n ], [ %.sroa.21.0461, %bb.r ], [ %.sroa.21.0461, %bb.af ], [ %.sroa.21.0461, %bb.ad ], [ %.sroa.21.0461, %bb.ae ], [ %.sroa.21.0461, %bb.y ], [ %i.dq, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 51 uses
  %.1 = phi ptr [ %.0373462, %.tail379 ], [ %.0373462, %.tail384 ], [ %.0373462, %.tail384.thread ], [ %.0373462, %bb.n ], [ %.0373462, %bb.r ], [ %i.c, %bb.af ], [ %.0373462, %bb.ad ], [ %.0373462, %bb.ae ], [ %.0373462, %bb.y ], [ %.0373462, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ]
  %.167 = phi ptr [ %.066463, %.tail379 ], [ %.066463, %.tail384 ], [ %.066463, %.tail384.thread ], [ %.066463, %bb.n ], [ %.066463, %bb.r ], [ %.066463, %bb.af ], [ %i.c, %bb.ad ], [ %.066463, %bb.ae ], [ %.066463, %bb.y ], [ %.066463, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 7 uses
  %.165 = phi i1 [ %.064464, %.tail379 ], [ %.064464, %.tail384 ], [ %.064464, %.tail384.thread ], [ %.064464, %bb.n ], [ %.064464, %bb.r ], [ %.064464, %bb.af ], [ %.064464, %bb.ad ], [ %i.dt, %bb.ae ], [ %.064464, %bb.y ], [ %.064464, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ] ; 4 uses
  %.162 = phi i32 [ 1, %.tail379 ], [ 2, %.tail384 ], [ 3, %.tail384.thread ], [ 4, %bb.n ], [ %.061466, %bb.r ], [ 1, %bb.af ], [ 2, %bb.ad ], [ 3, %bb.ae ], [ 1, %bb.y ], [ 1, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i123 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %sub_0, !llvm.loop !267

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit126
  %i.du = ptrtoint ptr %.sroa.17.1 to i64
  %i.dv = ptrtoint ptr %.sroa.0350.1 to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 25 uses
  %i.dx = ashr exact i64 %i.dw, 3
  %i.dy = icmp eq ptr %.sroa.17.1, %.sroa.0350.1
  br i1 %i.dy, label %._crit_edge.thread, label %bb.ag

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.sroa.21.0.lcssa552 = phi ptr [ %.sroa.21.1, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.0.0.lcssa549 = phi ptr [ %.sroa.0.1, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.28.0.lcssa546 = phi ptr [ %.sroa.28.1, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %.sroa.0350.0.lcssa544 = phi ptr [ %.sroa.0350.1, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  %i.dz = load ptr, ptr %1, align 8, !tbaa !62
  invoke void @_Z12usageMessageRSoPKcb(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.dz, i1 noundef zeroext false)
          to label %_Z12usageMessageRSoPKcb.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %._crit_edge
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.53, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128: ; preds = %bb.ag
  %i.eb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.ec = getelementptr i8, ptr %i.eb, i64 -24
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 240
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i257 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i257, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !116
  %.not.i1.i.i259 = icmp eq i8 %i.ei, 0
  br i1 %.not.i1.i.i259, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 67
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i258
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eg)
          to label %.noexc263 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc263:                                        ; preds = %bb.ai
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !47
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef signext i8 %i.en(ptr noundef nonnull align 8 dereferenceable(570) %i.eg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260: ; preds = %.noexc263, %bb.ah
  %.0.i.i.i261 = phi i8 [ %i.ek, %bb.ah ], [ %i.eo, %.noexc263 ]
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i261)
          to label %.noexc265 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc265:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ep)
          to label %.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit130._crit_edge:              ; preds = %_ZNSolsEPFRSoS_E.exit144
  %.not = icmp eq ptr %.167, null
  br i1 %.not, label %bb.aq, label %bb.at

.lr.ph:                                           ; preds = %.noexc265, %_ZNSolsEPFRSoS_E.exit144
  %.0474 = phi i64 [ %i.gg, %_ZNSolsEPFRSoS_E.exit144 ], [ 0, %.noexc265 ] ; 3 uses
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.54, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %.lr.ph
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0350.1, i64 %.0474
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !62 ; 3 uses
  %.not.i133 = icmp eq ptr %i.et, null
  br i1 %.not.i133, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.eu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.ev = getelementptr i8, ptr %i.eu, i64 -24
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !117
  %i.fa = or i32 %i.ez, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ex, i32 noundef %i.fa)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136 unwind label %.loopexit

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.fb = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.et) #26
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.et, i64 noundef %i.fb)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136: ; preds = %bb.aj, %bb.ak
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %.0474 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62
  %.not76 = icmp eq ptr %i.fe, null
  br i1 %.not76, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142, label %bb.al

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.55, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %bb.al
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !62 ; 3 uses
  %.not.i139 = icmp eq ptr %i.fg, null
  br i1 %.not.i139, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  %i.fh = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !117
  %i.fn = or i32 %i.fm, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fk, i32 noundef %i.fn)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142 unwind label %.loopexit

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  %i.fo = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fg) #26
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.fg, i64 noundef %i.fo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.lr.ph, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ap, %.noexc274, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271, %.noexc276
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i118, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %.sroa.0350.2.ph.ph = phi ptr [ %.sroa.0350.4, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i118 ], [ %.sroa.0350.0456, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i ]
  %.sroa.28.2.ph.ph = phi ptr [ %.sroa.28.4, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i118 ], [ %.sroa.28.0458, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i ]
  %lpad.loopexit391 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc.i.i199.invoke, %.invoke579, %.invoke, %.noexc331, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326, %.noexc329, %bb.cc, %.noexc320, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i315, %.noexc318, %bb.bs, %.noexc309, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i304, %.noexc307, %bb.ba, %.noexc298, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i293, %.noexc296, %bb.ax, %.noexc287, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282, %.noexc285, %bb.av, %.noexc265, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260, %.noexc263, %bb.ai, %.noexc254, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249, %.noexc252, %bb.l, %.noexc243, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238, %.noexc241, %bb.j, %.noexc233, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc231, %bb.h, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198, %bb.ca, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i184, %bb.bq, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i, %bb.ay, %_ZNSolsEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154, %_ZNSolsEPFRSoS_E.exit152, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146, %bb.at, %bb.ag, %bb.aa, %bb.v, %_ZNSolsEPFRSoS_E.exit109, %_ZNSolsEPFRSoS_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %.noexc91, %.noexc90, %.noexc89, %.noexc88, %.noexc, %bb.b, %bb.d, %bb.p, %._crit_edge.thread, %bb.ar, %bb.cr
  %.sroa.0.0433 = phi ptr [ %.sroa.0.0459, %.noexc89 ], [ %.sroa.0.0459, %.noexc88 ], [ %.sroa.0.0459, %.noexc ], [ %.sroa.0.0459, %bb.b ], [ %.sroa.0.1, %bb.cr ], [ %.sroa.0.1, %.noexc298 ], [ %.sroa.0.0459, %.invoke579 ], [ %.sroa.0.0459, %.noexc254 ], [ %.sroa.0.0459, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249 ], [ %.sroa.0.0459, %.noexc252 ], [ %.sroa.0.0459, %bb.l ], [ %.sroa.0.0459, %_ZNSolsEPFRSoS_E.exit109 ], [ %.sroa.0.0459, %.noexc243 ], [ %.sroa.0.0459, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238 ], [ %.sroa.0.0459, %.noexc241 ], [ %.sroa.0.0459, %bb.j ], [ %.sroa.0.0459, %_ZNSolsEPFRSoS_E.exit ], [ %.sroa.0.0459, %.noexc233 ], [ %.sroa.0.0459, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %.sroa.0.0459, %.noexc231 ], [ %.sroa.0.0459, %bb.h ], [ %.sroa.0.0459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 ], [ %.sroa.0.0459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 ], [ %.sroa.0.1, %bb.ag ], [ %.sroa.0.0459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 ], [ %.sroa.0.0459, %bb.f ], [ %.sroa.0.0459, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.0.0459, %bb.e ], [ %.sroa.0.0459, %bb.d ], [ %.sroa.0.0459, %bb.p ], [ %.sroa.0.0459, %bb.v ], [ %.sroa.0.0459, %bb.aa ], [ %.sroa.0.0459, %.noexc91 ], [ %.sroa.0.0459, %.noexc90 ], [ %.sroa.0.0.lcssa549, %._crit_edge.thread ], [ %.sroa.0.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i293 ], [ %.sroa.0.1, %.noexc296 ], [ %.sroa.0.1, %.noexc287 ], [ %.sroa.0.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282 ], [ %.sroa.0.1, %.noexc285 ], [ %.sroa.0.1, %bb.av ], [ %.sroa.0.1, %bb.ai ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 ], [ %.sroa.0.1, %bb.at ], [ %.sroa.0.1, %.noexc265 ], [ %.sroa.0.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260 ], [ %.sroa.0.1, %.noexc263 ], [ %.sroa.0.1, %bb.ar ], [ %.sroa.0.1, %bb.ax ], [ %.sroa.0.1, %_ZNSolsEb.exit ], [ %.sroa.0.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 ], [ %.sroa.0.1, %bb.cc ], [ %.sroa.0.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i ], [ %.sroa.0.1, %.noexc309 ], [ %.sroa.0.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i304 ], [ %.sroa.0.1, %.noexc307 ], [ %.sroa.0.1, %bb.ba ], [ %.sroa.0.1, %bb.ay ], [ %.sroa.0.1, %_ZNSolsEPFRSoS_E.exit152 ], [ %.sroa.0.1, %bb.ca ], [ %.sroa.0.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i184 ], [ %.sroa.0.1, %.noexc320 ], [ %.sroa.0.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i315 ], [ %.sroa.0.1, %.noexc318 ], [ %.sroa.0.1, %bb.bs ], [ %.sroa.0.1, %bb.bq ], [ %.sroa.0.1, %.invoke ], [ %.sroa.0.1, %.noexc.i.i199.invoke ], [ %.sroa.0.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198 ], [ %.sroa.0.1, %.noexc331 ], [ %.sroa.0.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326 ], [ %.sroa.0.1, %.noexc329 ]
  %.sroa.21.0415 = phi ptr [ %.sroa.21.0461, %.noexc89 ], [ %.sroa.21.0461, %.noexc88 ], [ %.sroa.21.0461, %.noexc ], [ %.sroa.21.0461, %bb.b ], [ %.sroa.21.1, %bb.cr ], [ %.sroa.21.1, %.noexc298 ], [ %.sroa.21.0461, %.invoke579 ], [ %.sroa.21.0461, %.noexc254 ], [ %.sroa.21.0461, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249 ], [ %.sroa.21.0461, %.noexc252 ], [ %.sroa.21.0461, %bb.l ], [ %.sroa.21.0461, %_ZNSolsEPFRSoS_E.exit109 ], [ %.sroa.21.0461, %.noexc243 ], [ %.sroa.21.0461, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238 ], [ %.sroa.21.0461, %.noexc241 ], [ %.sroa.21.0461, %bb.j ], [ %.sroa.21.0461, %_ZNSolsEPFRSoS_E.exit ], [ %.sroa.21.0461, %.noexc233 ], [ %.sroa.21.0461, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %.sroa.21.0461, %.noexc231 ], [ %.sroa.21.0461, %bb.h ], [ %.sroa.21.0461, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 ], [ %.sroa.21.0461, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 ], [ %.sroa.21.1, %bb.ag ], [ %.sroa.21.0461, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 ], [ %.sroa.21.0461, %bb.f ], [ %.sroa.21.0461, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.21.0461, %bb.e ], [ %.sroa.21.0461, %bb.d ], [ %.sroa.21.0461, %bb.p ], [ %.sroa.21.0461, %bb.v ], [ %.sroa.21.0461, %bb.aa ], [ %.sroa.21.0461, %.noexc91 ], [ %.sroa.21.0461, %.noexc90 ], [ %.sroa.21.0.lcssa552, %._crit_edge.thread ], [ %.sroa.21.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i293 ], [ %.sroa.21.1, %.noexc296 ], [ %.sroa.21.1, %.noexc287 ], [ %.sroa.21.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282 ], [ %.sroa.21.1, %.noexc285 ], [ %.sroa.21.1, %bb.av ], [ %.sroa.21.1, %bb.ai ], [ %.sroa.21.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 ], [ %.sroa.21.1, %bb.at ], [ %.sroa.21.1, %.noexc265 ], [ %.sroa.21.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260 ], [ %.sroa.21.1, %.noexc263 ], [ %.sroa.21.1, %bb.ar ], [ %.sroa.21.1, %bb.ax ], [ %.sroa.21.1, %_ZNSolsEb.exit ], [ %.sroa.21.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 ], [ %.sroa.21.1, %bb.cc ], [ %.sroa.21.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i ], [ %.sroa.21.1, %.noexc309 ], [ %.sroa.21.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i304 ], [ %.sroa.21.1, %.noexc307 ], [ %.sroa.21.1, %bb.ba ], [ %.sroa.21.1, %bb.ay ], [ %.sroa.21.1, %_ZNSolsEPFRSoS_E.exit152 ], [ %.sroa.21.1, %bb.ca ], [ %.sroa.21.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i184 ], [ %.sroa.21.1, %.noexc320 ], [ %.sroa.21.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i315 ], [ %.sroa.21.1, %.noexc318 ], [ %.sroa.21.1, %bb.bs ], [ %.sroa.21.1, %bb.bq ], [ %.sroa.21.1, %.invoke ], [ %.sroa.21.1, %.noexc.i.i199.invoke ], [ %.sroa.21.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198 ], [ %.sroa.21.1, %.noexc331 ], [ %.sroa.21.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326 ], [ %.sroa.21.1, %.noexc329 ]
  %.sroa.0350.2.ph.ph389 = phi ptr [ %.sroa.0350.0456, %.noexc89 ], [ %.sroa.0350.0456, %.noexc88 ], [ %.sroa.0350.0456, %.noexc ], [ %.sroa.0350.0456, %bb.b ], [ %.sroa.0350.1, %bb.cr ], [ %.sroa.0350.1, %.noexc298 ], [ %.sroa.0350.0456, %.invoke579 ], [ %.sroa.0350.0456, %.noexc254 ], [ %.sroa.0350.0456, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249 ], [ %.sroa.0350.0456, %.noexc252 ], [ %.sroa.0350.0456, %bb.l ], [ %.sroa.0350.0456, %_ZNSolsEPFRSoS_E.exit109 ], [ %.sroa.0350.0456, %.noexc243 ], [ %.sroa.0350.0456, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238 ], [ %.sroa.0350.0456, %.noexc241 ], [ %.sroa.0350.0456, %bb.j ], [ %.sroa.0350.0456, %_ZNSolsEPFRSoS_E.exit ], [ %.sroa.0350.0456, %.noexc233 ], [ %.sroa.0350.0456, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %.sroa.0350.0456, %.noexc231 ], [ %.sroa.0350.0456, %bb.h ], [ %.sroa.0350.0456, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 ], [ %.sroa.0350.0456, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 ], [ %.sroa.0350.1, %bb.ag ], [ %.sroa.0350.0456, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 ], [ %.sroa.0350.0456, %bb.f ], [ %.sroa.0350.0456, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.0350.0456, %bb.e ], [ %.sroa.0350.0456, %bb.d ], [ %.sroa.0350.0456, %bb.p ], [ %.sroa.0350.0456, %bb.v ], [ %.sroa.0350.4, %bb.aa ], [ %.sroa.0350.0456, %.noexc91 ], [ %.sroa.0350.0456, %.noexc90 ], [ %.sroa.0350.0.lcssa544, %._crit_edge.thread ], [ %.sroa.0350.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i293 ], [ %.sroa.0350.1, %.noexc296 ], [ %.sroa.0350.1, %.noexc287 ], [ %.sroa.0350.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282 ], [ %.sroa.0350.1, %.noexc285 ], [ %.sroa.0350.1, %bb.av ], [ %.sroa.0350.1, %bb.ai ], [ %.sroa.0350.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 ], [ %.sroa.0350.1, %bb.at ], [ %.sroa.0350.1, %.noexc265 ], [ %.sroa.0350.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260 ], [ %.sroa.0350.1, %.noexc263 ], [ %.sroa.0350.1, %bb.ar ], [ %.sroa.0350.1, %bb.ax ], [ %.sroa.0350.1, %_ZNSolsEb.exit ], [ %.sroa.0350.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 ], [ %.sroa.0350.1, %bb.cc ], [ %.sroa.0350.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i ], [ %.sroa.0350.1, %.noexc309 ], [ %.sroa.0350.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i304 ], [ %.sroa.0350.1, %.noexc307 ], [ %.sroa.0350.1, %bb.ba ], [ %.sroa.0350.1, %bb.ay ], [ %.sroa.0350.1, %_ZNSolsEPFRSoS_E.exit152 ], [ %.sroa.0350.1, %bb.ca ], [ %.sroa.0350.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i184 ], [ %.sroa.0350.1, %.noexc320 ], [ %.sroa.0350.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i315 ], [ %.sroa.0350.1, %.noexc318 ], [ %.sroa.0350.1, %bb.bs ], [ %.sroa.0350.1, %bb.bq ], [ %.sroa.0350.1, %.invoke ], [ %.sroa.0350.1, %.noexc.i.i199.invoke ], [ %.sroa.0350.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198 ], [ %.sroa.0350.1, %.noexc331 ], [ %.sroa.0350.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326 ], [ %.sroa.0350.1, %.noexc329 ]
  %.sroa.28.2.ph.ph390 = phi ptr [ %.sroa.28.0458, %.noexc89 ], [ %.sroa.28.0458, %.noexc88 ], [ %.sroa.28.0458, %.noexc ], [ %.sroa.28.0458, %bb.b ], [ %.sroa.28.1, %bb.cr ], [ %.sroa.28.1, %.noexc298 ], [ %.sroa.28.0458, %.invoke579 ], [ %.sroa.28.0458, %.noexc254 ], [ %.sroa.28.0458, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i249 ], [ %.sroa.28.0458, %.noexc252 ], [ %.sroa.28.0458, %bb.l ], [ %.sroa.28.0458, %_ZNSolsEPFRSoS_E.exit109 ], [ %.sroa.28.0458, %.noexc243 ], [ %.sroa.28.0458, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i238 ], [ %.sroa.28.0458, %.noexc241 ], [ %.sroa.28.0458, %bb.j ], [ %.sroa.28.0458, %_ZNSolsEPFRSoS_E.exit ], [ %.sroa.28.0458, %.noexc233 ], [ %.sroa.28.0458, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %.sroa.28.0458, %.noexc231 ], [ %.sroa.28.0458, %bb.h ], [ %.sroa.28.0458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 ], [ %.sroa.28.0458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 ], [ %.sroa.28.1, %bb.ag ], [ %.sroa.28.0458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 ], [ %.sroa.28.0458, %bb.f ], [ %.sroa.28.0458, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.28.0458, %bb.e ], [ %.sroa.28.0458, %bb.d ], [ %.sroa.28.0458, %bb.p ], [ %.sroa.28.0458, %bb.v ], [ %.sroa.28.4, %bb.aa ], [ %.sroa.28.0458, %.noexc91 ], [ %.sroa.28.0458, %.noexc90 ], [ %.sroa.28.0.lcssa546, %._crit_edge.thread ], [ %.sroa.28.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i293 ], [ %.sroa.28.1, %.noexc296 ], [ %.sroa.28.1, %.noexc287 ], [ %.sroa.28.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i282 ], [ %.sroa.28.1, %.noexc285 ], [ %.sroa.28.1, %bb.av ], [ %.sroa.28.1, %bb.ai ], [ %.sroa.28.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 ], [ %.sroa.28.1, %bb.at ], [ %.sroa.28.1, %.noexc265 ], [ %.sroa.28.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i260 ], [ %.sroa.28.1, %.noexc263 ], [ %.sroa.28.1, %bb.ar ], [ %.sroa.28.1, %bb.ax ], [ %.sroa.28.1, %_ZNSolsEb.exit ], [ %.sroa.28.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 ], [ %.sroa.28.1, %bb.cc ], [ %.sroa.28.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i ], [ %.sroa.28.1, %.noexc309 ], [ %.sroa.28.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i304 ], [ %.sroa.28.1, %.noexc307 ], [ %.sroa.28.1, %bb.ba ], [ %.sroa.28.1, %bb.ay ], [ %.sroa.28.1, %_ZNSolsEPFRSoS_E.exit152 ], [ %.sroa.28.1, %bb.ca ], [ %.sroa.28.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i184 ], [ %.sroa.28.1, %.noexc320 ], [ %.sroa.28.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i315 ], [ %.sroa.28.1, %.noexc318 ], [ %.sroa.28.1, %bb.bs ], [ %.sroa.28.1, %bb.bq ], [ %.sroa.28.1, %.invoke ], [ %.sroa.28.1, %.noexc.i.i199.invoke ], [ %.sroa.28.1, %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198 ], [ %.sroa.28.1, %.noexc331 ], [ %.sroa.28.1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326 ], [ %.sroa.28.1, %.noexc329 ]
  %lpad.loopexit.split-lp392 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142: ; preds = %bb.am, %bb.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
  %i.fq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %i.fr = getelementptr i8, ptr %i.fq, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 240
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !110 ; 6 uses
  %.not.i.i.i268 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i268, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !116
  %.not.i1.i.i270 = icmp eq i8 %i.fx, 0
  br i1 %.not.i1.i.i270, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 67
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i269
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fv)
          to label %.noexc274 unwind label %.loopexit

.noexc274:                                        ; preds = %bb.ap
  %i.ga = load ptr, ptr %i.fv, align 8, !tbaa !47
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = invoke noundef signext i8 %i.gc(ptr noundef nonnull align 8 dereferenceable(570) %i.fv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271 unwind label %.loopexit, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271: ; preds = %.noexc274, %bb.ao
  %.0.i.i.i272 = phi i8 [ %i.fz, %bb.ao ], [ %i.gd, %.noexc274 ]
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i272)
          to label %.noexc276 unwind label %.loopexit

.noexc276:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i271
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %_ZNSolsEPFRSoS_E.exit144 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit144:                         ; preds = %.noexc276
  %i.gg = add nuw i64 %.0474, 1                   ; 2 uses
  %exitcond505.not = icmp eq i64 %i.gg, %i.dx
  br i1 %exitcond505.not, label %_ZNSolsEPFRSoS_E.exit130._crit_edge, label %.lr.ph, !llvm.loop !268

bb.aq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit130._crit_edge
  %i.gh = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
end_hunk_2
begin_hunk_3_@main:bb.a
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i324: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit194
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 56
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !116
  %.not.i1.i.i325 = icmp eq i8 %i.lm, 0
  br i1 %.not.i1.i.i325, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i324
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 67
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326

bb.cc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i324
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lk)
          to label %.noexc329 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc329:                                        ; preds = %bb.cc
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !47
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = invoke noundef signext i8 %i.lr(ptr noundef nonnull align 8 dereferenceable(570) %i.lk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !9

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326: ; preds = %.noexc329, %bb.cb
  %.0.i.i.i327 = phi i8 [ %i.lo, %bb.cb ], [ %i.ls, %.noexc329 ]
  %i.lt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i327)
          to label %.noexc331 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc331:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i326
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %_ZNSolsEPFRSoS_E.exit196 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit196:                         ; preds = %.noexc331
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.lv, align 8
  %i.lw = icmp ugt i64 %i.dw, 9223372036854775800
  br i1 %i.lw, label %.noexc.i.i199.invoke, label %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198, !prof !63

.noexc.i.i199.invoke:                             ; preds = %_ZNSolsEPFRSoS_E.exit196, %_ZNSolsEPFRSoS_E.exit182, %_ZNSolsEPFRSoS_E.exit163
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc.i.i199.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.i.i199.cont:                               ; preds = %.noexc.i.i199.invoke
  unreachable

_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198: ; preds = %_ZNSolsEPFRSoS_E.exit196
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #30
          to label %.noexc201 unwind label %.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc201:                                        ; preds = %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i198
  store ptr %i.lx, ptr %5, align 8, !tbaa !61
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.dw ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !270
  %i.mb = icmp samesign ugt i64 %i.dw, 8
  br i1 %i.mb, label %bb.cd, label %bb.ce, !prof !271

bb.cd:                                            ; preds = %.noexc201
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr nonnull align 8 %.sroa.0350.1, i64 %i.dw, i1 false)
  br label %bb.cg

bb.ce:                                            ; preds = %.noexc201
  %i.mc = icmp eq i64 %i.dw, 8
  br i1 %i.mc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.md = load ptr, ptr %.sroa.0350.1, align 8, !tbaa !62
  store ptr %i.md, ptr %i.lx, align 8, !tbaa !62
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  store ptr %i.lz, ptr %i.ly, align 8, !tbaa !60
  %i.me = ptrtoint ptr %.sroa.14.1 to i64
  %i.mf = ptrtoint ptr %.sroa.0.1 to i64
  %i.mg = sub i64 %i.me, %i.mf                    ; 7 uses
  %.not.i.i.i.i203 = icmp eq ptr %.sroa.14.1, %.sroa.0.1
  br i1 %.not.i.i.i.i203, label %.thread377, label %bb.ch

.thread377:                                       ; preds = %bb.cg
  %i.mh = getelementptr inbounds i8, ptr null, i64 %i.mg
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %i.mi = icmp ugt i64 %i.mg, 9223372036854775800
  br i1 %i.mi, label %.noexc.i.i205, label %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i204, !prof !63

.noexc.i.i205:                                    ; preds = %bb.ch
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc206 unwind label %bb.co

.noexc206:                                        ; preds = %.noexc.i.i205
  unreachable

_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i204: ; preds = %bb.ch
  %i.mj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #30
          to label %.noexc207 unwind label %bb.co ; 6 uses

.noexc207:                                        ; preds = %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i204
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mg ; 3 uses
  %i.ml = icmp samesign ugt i64 %i.mg, 8
  br i1 %i.ml, label %bb.ci, label %bb.cj, !prof !271

bb.ci:                                            ; preds = %.noexc207
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mj, ptr nonnull align 8 %.sroa.0.1, i64 %i.mg, i1 false)
  br label %bb.cl

bb.cj:                                            ; preds = %.noexc207
  %i.mm = icmp eq i64 %i.mg, 8
  br i1 %i.mm, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.mn = load ptr, ptr %.sroa.0.1, align 8, !tbaa !62
  store ptr %i.mn, ptr %i.mj, align 8, !tbaa !62
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %.thread377
  %.sroa.0.0 = phi ptr [ null, %.thread377 ], [ %i.mj, %bb.ci ], [ %i.mj, %bb.ck ], [ %i.mj, %bb.cj ] ; 6 uses
  %.sroa.10.0 = phi ptr [ %i.mh, %.thread377 ], [ %i.mk, %bb.ci ], [ %i.mk, %bb.ck ], [ %i.mk, %bb.cj ] ; 2 uses
  invoke void @_Z7convertSt6vectorIPKcSaIS1_EES3_S1_b(ptr noundef nonnull align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %.167, i1 zeroext poison)
          to label %bb.cm unwind label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %.not.i.i.i209 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i209, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mo = ptrtoint ptr %.sroa.10.0 to i64
  %i.mp = ptrtoint ptr %.sroa.0.0 to i64
  %i.mq = sub i64 %i.mo, %i.mp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.mq) #28
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210:             ; preds = %bb.cn, %bb.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.dw) #28
  br label %_Z12usageMessageRSoPKcb.exit

bb.co:                                            ; preds = %_ZNSt15__new_allocatorIPKcE8allocateEmPKv.exit.i.i.i.i204, %.noexc.i.i205
  %i.mr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214

bb.cp:                                            ; preds = %bb.cl
  %i.ms = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mt = ptrtoint ptr %.sroa.10.0 to i64
  %i.mu = ptrtoint ptr %.sroa.0.0 to i64
  %i.mv = sub i64 %i.mt, %i.mu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.mv) #28
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214:             ; preds = %bb.co, %bb.cp, %bb.cq
  %.pn74 = phi { ptr, i32 } [ %i.mr, %bb.co ], [ %i.ms, %bb.cp ], [ %i.ms, %bb.cq ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.dw) #28
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178

bb.cr:                                            ; preds = %bb.bz
  %i.mw = load ptr, ptr %1, align 8, !tbaa !62
  invoke void @_Z12usageMessageRSoPKcb(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.mw, i1 noundef zeroext false)
          to label %_Z12usageMessageRSoPKcb.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_Z12usageMessageRSoPKcb.exit:                     ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210, %bb.bx, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, %.noexc254, %.noexc91, %bb.cr, %._crit_edge.thread
  %.sroa.0350.0455 = phi ptr [ %.sroa.0350.0456, %.noexc254 ], [ %.sroa.0350.0.lcssa544, %._crit_edge.thread ], [ %.sroa.0350.0456, %.noexc91 ], [ %.sroa.0350.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ], [ %.sroa.0350.1, %bb.cr ], [ %.sroa.0350.1, %bb.bx ], [ %.sroa.0350.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210 ] ; 3 uses
  %.sroa.28.0442 = phi ptr [ %.sroa.28.0458, %.noexc254 ], [ %.sroa.28.0.lcssa546, %._crit_edge.thread ], [ %.sroa.28.0458, %.noexc91 ], [ %.sroa.28.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ], [ %.sroa.28.1, %bb.cr ], [ %.sroa.28.1, %bb.bx ], [ %.sroa.28.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210 ]
  %.sroa.0.0435 = phi ptr [ %.sroa.0.0459, %.noexc254 ], [ %.sroa.0.0.lcssa549, %._crit_edge.thread ], [ %.sroa.0.0459, %.noexc91 ], [ %.sroa.0.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ], [ %.sroa.0.1, %bb.cr ], [ %.sroa.0.1, %bb.bx ], [ %.sroa.0.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210 ] ; 3 uses
  %.sroa.21.0416 = phi ptr [ %.sroa.21.0461, %.noexc254 ], [ %.sroa.21.0.lcssa552, %._crit_edge.thread ], [ %.sroa.21.0461, %.noexc91 ], [ %.sroa.21.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ], [ %.sroa.21.1, %bb.cr ], [ %.sroa.21.1, %bb.bx ], [ %.sroa.21.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210 ]
  %spec.select = phi i32 [ 0, %.noexc254 ], [ 1, %._crit_edge.thread ], [ 0, %.noexc91 ], [ 0, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit ], [ 0, %bb.cr ], [ 0, %bb.bx ], [ 0, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit210 ] ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %.sroa.0.0435, null
  br i1 %.not.i.i.i217, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit218, label %bb.cs

bb.cs:                                            ; preds = %_Z12usageMessageRSoPKcb.exit
  %i.mx = ptrtoint ptr %.sroa.21.0416 to i64
  %i.my = ptrtoint ptr %.sroa.0.0435 to i64
  %i.mz = sub i64 %i.mx, %i.my
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0435, i64 noundef %i.mz) #28
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit218

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit218:             ; preds = %_Z12usageMessageRSoPKcb.exit, %bb.cs
  %.not.i.i.i219 = icmp eq ptr %.sroa.0350.0455, null
  br i1 %.not.i.i.i219, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit220, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit218
  %i.na = ptrtoint ptr %.sroa.28.0442 to i64
  %i.nb = ptrtoint ptr %.sroa.0350.0455 to i64
  %i.nc = sub i64 %i.na, %i.nb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0455, i64 noundef %i.nc) #28
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit220

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178:             ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214, %bb.by, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit176, %bb.as, %bb.q
  %.sroa.0.0429 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214 ], [ %.sroa.0.0459, %bb.q ], [ %.sroa.0.1, %bb.as ], [ %.sroa.0.1, %bb.by ], [ %.sroa.0.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit176 ], [ %.sroa.0.0459, %.loopexit.split-lp.loopexit ], [ %.sroa.0.0433, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.21.0412 = phi ptr [ %.sroa.21.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214 ], [ %.sroa.21.0461, %bb.q ], [ %.sroa.21.1, %bb.as ], [ %.sroa.21.1, %bb.by ], [ %.sroa.21.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit176 ], [ %.sroa.21.0461, %.loopexit.split-lp.loopexit ], [ %.sroa.21.0415, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.21.1, %.loopexit ]
  %.sroa.0350.3 = phi ptr [ %.sroa.0350.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214 ], [ %.sroa.0350.0456, %bb.q ], [ %.sroa.0350.1, %bb.as ], [ %.sroa.0350.1, %bb.by ], [ %.sroa.0350.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit176 ], [ %.sroa.0350.2.ph.ph, %.loopexit.split-lp.loopexit ], [ %.sroa.0350.2.ph.ph389, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0350.1, %.loopexit ] ; 3 uses
  %.sroa.28.3 = phi ptr [ %.sroa.28.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214 ], [ %.sroa.28.0458, %bb.q ], [ %.sroa.28.1, %bb.as ], [ %.sroa.28.1, %bb.by ], [ %.sroa.28.1, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit176 ], [ %.sroa.28.2.ph.ph, %.loopexit.split-lp.loopexit ], [ %.sroa.28.2.ph.ph390, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.28.1, %.loopexit ]
  %.pn86 = phi { ptr, i32 } [ %.pn74, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit214 ], [ %i.cl, %bb.q ], [ %i.gi, %bb.as ], [ %i.lc, %bb.by ], [ %.pn, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit176 ], [ %lpad.loopexit391, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp392, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn86, 1
  %.not.i.i.i221 = icmp eq ptr %.sroa.0.0429, null
  br i1 %.not.i.i.i221, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit222, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178
  %i.nd = ptrtoint ptr %.sroa.21.0412 to i64
  %i.ne = ptrtoint ptr %.sroa.0.0429 to i64
  %i.nf = sub i64 %i.nd, %i.ne
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0429, i64 noundef %i.nf) #28
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit222

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit222:             ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit178, %bb.cu
  %.not.i.i.i223 = icmp eq ptr %.sroa.0350.3, null
  br i1 %.not.i.i.i223, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit224, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit222
  %i.ng = ptrtoint ptr %.sroa.28.3 to i64
  %i.nh = ptrtoint ptr %.sroa.0350.3 to i64
  %i.ni = sub i64 %i.ng, %i.nh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.3, i64 noundef %i.ni) #28
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit224

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit224:             ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit222, %bb.cv
  %i.nj = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.nk = icmp eq i32 %.2, %i.nj
  br i1 %i.nk, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit224
  %.259 = extractvalue { ptr, i32 } %.pn86, 0
  %i.nl = tail call ptr @__cxa_begin_catch(ptr %.259) #26 ; 2 uses
  %i.nm = load ptr, ptr %1, align 8, !tbaa !62
  %i.nn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.nm)
          to label %bb.cx unwind label %bb.cz     ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nn, ptr noundef nonnull @.str.24, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226 unwind label %bb.cz ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226: ; preds = %bb.cx
  %i.np = load ptr, ptr %i.nl, align 8, !tbaa !47
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = tail call noundef ptr %i.nr(ptr noundef nonnull align 8 dereferenceable(8) %i.nl) #26
  %i.nt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.nn, ptr noundef %i.ns)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.nt)
          to label %_ZNSolsEPFRSoS_E.exit228 unwind label %bb.cz, !inline_history !269 ; 0 uses

_ZNSolsEPFRSoS_E.exit228:                         ; preds = %bb.cy
  tail call void @__cxa_end_catch()
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit220

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226, %bb.cw
  %i.nv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.da unwind label %bb.db

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit220:             ; preds = %bb.ct, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit218, %_ZNSolsEPFRSoS_E.exit228
  %.169 = phi i32 [ 1, %_ZNSolsEPFRSoS_E.exit228 ], [ %spec.select, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit218 ], [ %spec.select, %bb.ct ]
  ret i32 %.169

bb.da:                                            ; preds = %bb.cz, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit224
  %.merged = phi { ptr, i32 } [ %.pn86, %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit224 ], [ %i.nv, %bb.cz ]
  resume { ptr, i32 } %.merged

bb.db:                                            ; preds = %bb.cz
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  tail call void @__clang_call_terminate(ptr %i.nx) #29
  unreachable

bb.dc:                                            ; preds = %bb.ar, %bb.p
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZN7Imf_3_417getLibraryVersionEv() local_unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_7ChannelEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 304) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !273

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #28
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !274

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !31
end_hunk_3
