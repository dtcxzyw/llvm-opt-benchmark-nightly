Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCPackNuGetGenerator?download=true
inline.NumInlined: 625
inline.NumDeleted: 272
begin_hunk_0_@_ZN21cmCPackNuGetGenerator28SetupGroupComponentVariablesEb:bb.a
  store ptr %i.ak, ptr %11, align 8, !tbaa !15, !alias.scope !172
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !19 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 5 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

bb.ac:                                            ; preds = %.noexc90
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !21 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %i.gz = add nuw nsw i64 %i.gx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.gu, i64 %i.gz, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %.noexc90
  store ptr %i.gt, ptr %11, align 8, !tbaa !19, !alias.scope !172
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !20
  store i64 %i.ha, ptr %i.ak, align 8, !tbaa !20, !alias.scope !172
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.pre.i88 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ac
  %i.hb = phi i64 [ %i.gx, %bb.ac ], [ %.pre.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 %i.hb, ptr %i.al, align 8, !tbaa !21, !alias.scope !172
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !19
  store i64 0, ptr %i.hc, align 8, !tbaa !21
  store i8 0, ptr %i.gu, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.hd = icmp eq ptr %i.gb, %i.ga
  br i1 %i.hd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.am, ptr %13, align 8, !tbaa !15, !alias.scope !174
  store i64 0, ptr %i.an, align 8, !tbaa !21, !alias.scope !174
  store i8 0, ptr %i.am, align 8, !tbaa !20, !alias.scope !174
  br label %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit

bb.af:                                            ; preds = %bb.ad
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !175, !noalias !173
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !17, !noalias !173
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr %i.ga, ptr %i.gb, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit unwind label %bb.ao

_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit: ; preds = %bb.ae, %bb.af
  invoke void @_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7cmValue(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull align 8 dereferenceable(32) %13)
          to label %_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %bb.ap

_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit
  %i.he = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.am
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %i.hg = load i64, ptr %i.am, align 8, !tbaa !20
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.hi = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.ak
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.hk = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  %i.hm = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.ai
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.ho = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.hq = load ptr, ptr %10, align 8, !tbaa !80   ; 5 uses
  %i.hr = load ptr, ptr %i.af, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hq, %i.hr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ] ; 3 uses
  %i.hs = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !20
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hx, %i.hr
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.not.i.i1.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.hy = load ptr, ptr %i.ag, align 8, !tbaa !84
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hq to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ib) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.ic = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ao
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ie = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ig = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0323.0430) #23 ; 2 uses
  %.not326 = icmp eq ptr %i.ig, %i.k
  br i1 %.not326, label %._crit_edge, label %bb.c

bb.ah:                                            ; preds = %bb.c
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc286, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc284, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.e
  %lpad.loopexit.split-lp678.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp339

bb.ai:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.n
  br i1 %i.ik, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ai, %bb.i
  %.sink = phi ptr [ %i.bx, %bb.i ], [ %i.ij, %bb.ai ]
  %.pn57.ph = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %i.ii, %bb.ai ]
  %i.il = load i64, ptr %i.n, align 8, !tbaa !20
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.im) #21
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ai, %bb.i
  %.pn57 = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %i.ii, %bb.ai ], [ %.pn57.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.loopexit.split-lp339

.loopexit.split-lp339:                            ; preds = %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %.body ], [ %lpad.loopexit.split-lp678.a, %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #20
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp339, %bb.ah
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %.loopexit.split-lp339 ], [ %i.ih, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.by

bb.ak:                                            ; preds = %bb.n, %.noexc.i.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.al:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.am:                                            ; preds = %bb.o
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iq = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.ac
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.am
  %i.is = load i64, ptr %i.ac, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.a

bb.an:                                            ; preds = %.noexc.i.i.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dl, ptr %i.af, align 8
  store ptr %i.dk, ptr %i.ag, align 8
  store ptr %i.dj, ptr %10, align 8
  br label %.body81

.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ab
  %lpad.loopexit.split-lp683 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ao:                                            ; preds = %bb.af
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.ap:                                            ; preds = %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.am
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ap
  %i.iy = load i64, ptr %i.am, align 8, !tbaa !20
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.ao
  %.pn61 = phi { ptr, i32 } [ %i.iu, %bb.ao ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.iv, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ja = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ak
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.jc = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %lpad.loopexit.split-lp683, %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 2 uses
  %i.je = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.ai
  br i1 %i.jf, label %.body85, label %.body85.sink.split

.body85.sink.split:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp
  %.sink667 = phi ptr [ %i.gn, %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  %.pn61.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp ], [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  %i.jg = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %.sink667, i64 noundef %i.jh) #21
  br label %.body85

.body85:                                          ; preds = %.body85.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp
  %.pn61.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp ], [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn61.pn.pn.ph, %.body85.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.body81

.body81:                                          ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %.body85
  %.pn61.pn.pn.pn = phi { ptr, i32 } [ %.pn61.pn.pn, %.body85 ], [ %i.it, %bb.an ], [ %lpad.phi337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.ji = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ao
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %.body81
  %24 = load i64, ptr %i.ao, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  %.sink672 = phi i64 [ %24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  %.sink670 = phi ptr [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  %.pn61.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn61.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  %i.jk = add i64 %.sink672, 1
  call void @_ZdlPvm(ptr noundef %.sink670, i64 noundef %i.jk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.a, %.body81, %bb.am, %bb.al
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.am ], [ %i.io, %bb.al ], [ %.pn61.pn.pn.pn, %.body81 ], [ %.pn61.pn.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.by

.noexc.i:                                         ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.jl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.jl, ptr %14, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 18, ptr %i.f, align 8, !tbaa !17
  %i.jm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %bb.aq unwind label %bb.at     ; 2 uses

bb.aq:                                            ; preds = %.noexc.i
  store ptr %i.jm, ptr %14, align 8, !tbaa !19
  %i.jn = load i64, ptr %i.f, align 8, !tbaa !17  ; 3 uses
  store i64 %i.jn, ptr %i.jl, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.jm, ptr noundef nonnull align 1 dereferenceable(18) @.str.11, i64 18, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !21
  %i.jp = load ptr, ptr %14, align 8, !tbaa !19
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jn
  store i8 0, ptr %i.jq, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %.sroa.0.0.copyload.i124 = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !17, !noalias !176
  %.sroa.2.0.copyload.i125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !175, !noalias !176
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.jr = load ptr, ptr %i.aq, align 8, !tbaa !81, !noalias !178 ; 2 uses
  %i.js = load ptr, ptr %5, align 8, !tbaa !80, !noalias !178 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ju = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.ju, ptr %15, align 8, !tbaa !15, !alias.scope !178
  %i.jv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.jv, align 8, !tbaa !21, !alias.scope !178
  store i8 0, ptr %i.ju, align 8, !tbaa !20, !alias.scope !178
  br label %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit127

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr %i.js, ptr %i.jr, i64 %.sroa.0.0.copyload.i124, ptr %.sroa.2.0.copyload.i125)
          to label %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit127 unwind label %bb.au

_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit127: ; preds = %bb.ar, %bb.as
  invoke void @_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE7cmValue(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr nonnull align 8 dereferenceable(32) %15)
          to label %_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit129 unwind label %bb.av

_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit129: ; preds = %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit127
  %i.jw = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit129
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !20
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZN16cmCPackGenerator9SetOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.kb = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.jl
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.kd = load i64, ptr %i.jl, align 8, !tbaa !20
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.aw

bb.at:                                            ; preds = %.noexc.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.au:                                            ; preds = %bb.as
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.av:                                            ; preds = %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit127
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ki = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.av
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !20
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.au
  %.pn = phi { ptr, i32 } [ %i.kg, %bb.au ], [ %i.kh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.kh, %bb.av ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.kn = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.jl
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.kp = load i64, ptr %i.jl, align 8, !tbaa !20
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.kf, %bb.at ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.by

bb.aw:                                            ; preds = %._crit_edge.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %._crit_edge
  %i.kr = phi ptr [ %i.l, %._crit_edge.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.aq, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !162 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %.not327431 = icmp eq ptr %i.kt, %i.ku
  br i1 %.not327431, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit211, label %.lr.ph434

.lr.ph434:                                        ; preds = %bb.aw
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.lb = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.lc = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.le = getelementptr i8, ptr %i.lc, i64 -24
  %i.lf = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.li = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.lj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.ax

._crit_edge435:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit174
  %.pre459 = load ptr, ptr %16, align 8, !tbaa !83 ; 2 uses
  %.pre461 = load ptr, ptr %i.lj, align 8, !tbaa !83 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.lm = icmp eq ptr %.pre459, %.pre461
  br i1 %i.lm, label %bb.bu, label %.noexc.i179

bb.ax:                                            ; preds = %.lr.ph434, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit174
  %.sroa.0318.0432 = phi ptr [ %i.kt, %.lr.ph434 ], [ %i.oj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit174 ] ; 6 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0318.0432, i64 32 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0318.0432, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0318.0432, i64 128
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !180
  %.not = icmp eq ptr %i.lq, null
  br i1 %.not, label %bb.ay, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit174

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %17)
          to label %bb.az unwind label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.12, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143 unwind label %.loopexit.split-lp329.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143: ; preds = %bb.az
  %i.ls = load ptr, ptr %i.lo, align 8, !tbaa !19
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0318.0432, i64 72
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !21
  %i.lv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.ls, i64 noundef %i.lu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit145 unwind label %.loopexit.split-lp329.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit145: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lv, ptr noundef nonnull @.str.13, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %.loopexit.split-lp329.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit145
  %i.lx = load ptr, ptr %i.lv, align 8, !tbaa !23
  %i.ly = getelementptr i8, ptr %i.lx, i64 -24
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds i8, ptr %i.lv, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 240
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !39 ; 6 uses
  %.not.i.i.i305 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i305, label %bb.ba, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i306

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %.noexc310 unwind label %.loopexit.split-lp329.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc310:                                        ; preds = %bb.ba
  unreachable
end_hunk_0
