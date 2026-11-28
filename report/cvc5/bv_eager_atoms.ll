Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bv_eager_atoms?download=true
inline.NumInlined: 167
inline.NumDeleted: 93
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes25BVEagerAtomProofGenerator11getProofForENS0_12NodeTemplateILb1EEE:bb.a
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ec, %i.ed
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eo, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.ec, %bb.aa ] ; 2 uses
  %i.ee = load ptr, ptr %.05.i.i.i, align 8, !tbaa !42 ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8            ; 3 uses
  %i.eg = and i64 %i.ef, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.eg, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.ab, !prof !49

bb.ab:                                            ; preds = %.lr.ph.i.i.i
  %i.eh = add i64 %i.ef, 1152920405095219200
  %i.ei = and i64 %i.eh, 1152920405095219200      ; 2 uses
  %i.ej = and i64 %i.ef, -1152920405095219201
  %i.ek = or disjoint i64 %i.ei, %i.ej
  store i64 %i.ek, ptr %i.ee, align 8
  %i.el = icmp eq i64 %i.ei, 0
  br i1 %i.el, label %bb.ac, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !49

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eo, %i.ed
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.aa
  %i.ep = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ec, %bb.aa ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.eq = load ptr, ptr %i.dr, align 8, !tbaa !53
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.et) #18
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ae
  %i.eu = load ptr, ptr %14, align 8, !tbaa !42   ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ew = and i64 %i.ev, 1152920405095219200
  %.not.i.i40 = icmp eq i64 %i.ew, 1152920405095219200
  br i1 %.not.i.i40, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41, label %bb.af, !prof !49

bb.af:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.ex = add i64 %i.ev, 1152920405095219200
  %i.ey = and i64 %i.ex, 1152920405095219200      ; 2 uses
  %i.ez = and i64 %i.ev, -1152920405095219201
  %i.fa = or disjoint i64 %i.ey, %i.ez
  store i64 %i.fa, ptr %i.eu, align 8
  %i.fb = icmp eq i64 %i.ey, 0
  br i1 %i.fb, label %bb.ag, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41, !prof !49

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.fe = load ptr, ptr %12, align 8, !tbaa !39   ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i42 = icmp eq ptr %i.fe, %i.fg
  br i1 %.not4.i.i.i42, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i50, label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i46
  %.05.i.i.i44 = phi ptr [ %i.fr, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i46 ], [ %i.fe, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41 ] ; 2 uses
  %i.fh = load ptr, ptr %.05.i.i.i44, align 8, !tbaa !42 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8            ; 3 uses
  %i.fj = and i64 %i.fi, 1152920405095219200
  %.not.i.i.i.i.i.i45 = icmp eq i64 %i.fj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i45, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i46, label %bb.ai, !prof !49

bb.ai:                                            ; preds = %.lr.ph.i.i.i43
  %i.fk = add i64 %i.fi, 1152920405095219200
  %i.fl = and i64 %i.fk, 1152920405095219200      ; 2 uses
  %i.fm = and i64 %i.fi, -1152920405095219201
  %i.fn = or disjoint i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.fh, align 8
  %i.fo = icmp eq i64 %i.fl, 0
  br i1 %i.fo, label %bb.aj, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i46, !prof !49

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i46 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i46: ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i.i43
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i44, i64 8 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.fr, %i.fg
  br i1 %.not.i.i.i47, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i48, label %.lr.ph.i.i.i43, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i48: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i46
  %.pr.i49 = load ptr, ptr %12, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i50

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i50: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i48, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41
  %i.fs = phi ptr [ %.pr.i49, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i48 ], [ %i.fe, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit41 ] ; 3 uses
  %.not.i.i1.i51 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i51, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit53, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i50
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !53
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #18
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit53

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit53: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i50, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.fy = load ptr, ptr %11, align 8, !tbaa !42   ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 8            ; 3 uses
  %i.ga = and i64 %i.fz, 1152920405095219200
  %.not.i.i54 = icmp eq i64 %i.ga, 1152920405095219200
  br i1 %.not.i.i54, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, label %bb.am, !prof !49

bb.am:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit53
  %i.gb = add i64 %i.fz, 1152920405095219200
  %i.gc = and i64 %i.gb, 1152920405095219200      ; 2 uses
  %i.gd = and i64 %i.fz, -1152920405095219201
  %i.ge = or disjoint i64 %i.gc, %i.gd
  store i64 %i.ge, ptr %i.fy, align 8
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, !prof !49

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit53, %bb.am, %bb.an
  %i.gi = load ptr, ptr %2, align 8, !tbaa !42    ; 5 uses
  store ptr %i.gi, ptr %15, align 8, !tbaa !42
  %i.gj = load i64, ptr %i.gi, align 8            ; 3 uses
  %i.gk = lshr i64 %i.gj, 40
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = and i32 %i.gl, 1048575                  ; 3 uses
  %i.gn = icmp samesign ult i32 %i.gm, 1048574
  br i1 %i.gn, label %bb.ap, label %bb.aq, !prof !48

bb.ap:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55
  %i.go = add nuw nsw i32 %i.gm, 1
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 40
  %i.gr = and i64 %i.gj, -1152920405095219201
  %i.gs = or i64 %i.gq, %i.gr
  store i64 %i.gs, ptr %i.gi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57

bb.aq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55
  %i.gt = icmp eq i32 %i.gm, 1048574
  br i1 %i.gt, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57, !prof !49

bb.ar:                                            ; preds = %bb.aq
  %i.gu = or i64 %i.gj, 1152920405095219200
  store i64 %i.gu, ptr %i.gi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57 unwind label %bb.bf

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57: ; preds = %bb.aq, %bb.ap, %bb.ar
  invoke void @_ZN4cvc58internal7CDProof11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.313") align 8 %0, ptr noundef nonnull align 8 dereferenceable(217) %6, ptr noundef nonnull align 8 %15)
          to label %bb.as unwind label %16

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57
  %i.gv = load ptr, ptr %15, align 8, !tbaa !42   ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 8            ; 3 uses
  %i.gx = and i64 %i.gw, 1152920405095219200
  %.not.i.i58 = icmp eq i64 %i.gx, 1152920405095219200
  br i1 %.not.i.i58, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59, label %bb.at, !prof !49

bb.at:                                            ; preds = %bb.as
  %i.gy = add i64 %i.gw, 1152920405095219200
  %i.gz = and i64 %i.gy, 1152920405095219200      ; 2 uses
  %i.ha = and i64 %i.gw, -1152920405095219201
  %i.hb = or disjoint i64 %i.gz, %i.ha
  store i64 %i.hb, ptr %i.gv, align 8
  %i.hc = icmp eq i64 %i.gz, 0
  br i1 %i.hc, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59, !prof !49

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59: ; preds = %bb.as, %bb.at, %bb.au
  %i.hf = load ptr, ptr %8, align 8, !tbaa !42    ; 3 uses
  %i.hg = load i64, ptr %i.hf, align 8            ; 3 uses
  %i.hh = and i64 %i.hg, 1152920405095219200
  %.not.i.i60 = icmp eq i64 %i.hh, 1152920405095219200
  br i1 %.not.i.i60, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, label %bb.aw, !prof !49

bb.aw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59
  %i.hi = add i64 %i.hg, 1152920405095219200
  %i.hj = and i64 %i.hi, 1152920405095219200      ; 2 uses
  %i.hk = and i64 %i.hg, -1152920405095219201
  %i.hl = or disjoint i64 %i.hj, %i.hk
  store i64 %i.hl, ptr %i.hf, align 8
  %i.hm = icmp eq i64 %i.hj, 0
  br i1 %i.hm, label %bb.ax, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, !prof !49

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN4cvc58internal7CDProofD1Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.az:                                            ; preds = %bb.a
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %i.hq = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.c
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.az
  %i.hs = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bl

bb.ba:                                            ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %bb.h, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit27
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %i.hw, %bb.bc ], [ %i.bk, %.body.i ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #17
  br label %bb.bd

bb.bd:                                            ; preds = %.body, %bb.bb
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.hv, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %bb.bd ], [ %i.hu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bk

bb.bf:                                            ; preds = %bb.ar, %bb.t
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bg:                                            ; preds = %bb.w, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bh:                                            ; preds = %bb.z
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #17
  br label %.body37

.body37:                                          ; preds = %bb.y, %bb.x, %bb.bh
  %.pn15 = phi { ptr, i32 } [ %i.hz, %bb.bh ], [ %i.dt, %bb.x ], [ %i.dt, %bb.y ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #17
  br label %.loopexit

.loopexit:                                        ; preds = %.body37, %bb.bg
  %.pn15.pn = phi { ptr, i32 } [ %i.hy, %bb.bg ], [ %.pn15, %.body37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.bi

16:                                               ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit, %16
  %.sink = phi ptr [ %15, %16 ], [ %11, %.loopexit ]
  %.pn18.ph = phi { ptr, i32 } [ %17, %16 ], [ %.pn15.pn, %.loopexit ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %.pn18 = phi { ptr, i32 } [ %i.hx, %bb.bf ], [ %.pn18.ph, %bb.bi ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.be
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.bj ], [ %.pn12.pn, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN4cvc58internal7CDProofD1Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %6) #17
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.bk ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn18.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4cvc58internal13preprocessing6passes25BVEagerAtomProofGenerator8identifyB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 25, ptr %i.a, align 8, !tbaa !54
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.3, i64 25, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn16_N4cvc58internal13preprocessing6passes25BVEagerAtomProofGeneratorD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN4cvc58internal14ProofGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn16_N4cvc58internal13preprocessing6passes25BVEagerAtomProofGeneratorD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN4cvc58internal14ProofGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 24) #18
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_ZThn16_N4cvc58internal13preprocessing6passes25BVEagerAtomProofGenerator11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.313") align 8 %0, ptr noundef %1, ptr noundef align 8 %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  tail call void @_ZN4cvc58internal13preprocessing6passes25BVEagerAtomProofGenerator11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.313") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef align 8 %2)
  ret void
}

declare noundef zeroext i1 @_ZN4cvc58internal14ProofGenerator10addProofToENS0_12NodeTemplateILb1EEEPNS0_7CDProofENS0_12CDPOverwriteEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal14ProofGenerator11hasProofForENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_ZThn16_NK4cvc58internal13preprocessing6passes25BVEagerAtomProofGenerator8identifyB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12, !alias.scope !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !280
  store i64 25, ptr %i.a, align 8, !tbaa !54, !noalias !280
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17, !alias.scope !280
  %i.d = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !280 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16, !alias.scope !280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.3, i64 25, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15, !alias.scope !280
  %i.f = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !280
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !280
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4cvc58internal14ProofGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare void @_ZN4cvc58internal7CDProofC1ERNS0_3EnvEPNS_7context7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 8 dereferenceable(696), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #2

declare noundef zeroext i1 @_ZN4cvc58internal7CDProof7addStepENS0_12NodeTemplateILb1EEENS_9ProofRuleERKSt6vectorIS3_SaIS3_EES9_bNS0_12CDPOverwriteE(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !42 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.b, !prof !49

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !49

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #18
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.e
  ret void
}

declare void @_ZN4cvc58internal7CDProof11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.313") align 8, ptr noundef nonnull align 8 dereferenceable(217), ptr noundef align 8) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4cvc58internal7CDProofD1Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217)) unnamed_addr #5

declare noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef) local_unnamed_addr #2

declare void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef align 8) local_unnamed_addr #2

declare void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124)) unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph
end_hunk_0
