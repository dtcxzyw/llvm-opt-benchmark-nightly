Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/smt2_printer?download=true
inline.NumInlined: 2929
inline.NumDeleted: 605
begin_hunk_0_@_ZNK4cvc58internal7printer4smt211Smt2Printer8toStreamERSoNS0_12NodeTemplateILb0EEEim:bb.a
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fn = getelementptr i8, ptr %i.fl, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %11, i64 %i.fo
  store ptr %i.fm, ptr %i.fp, align 8, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fq, align 8, !tbaa !45
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.aw

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.au

bb.au:                                            ; preds = %.body, %bb.ao
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.ao ], [ %i.bi, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.s
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %bb.au ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bf

bb.aw:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.fs = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %i.fs, ptr %16, align 8, !tbaa !8
  invoke void @_ZNK4cvc58internal7printer4smt211Smt2Printer8toStreamERSoNS0_12NodeTemplateILb0EEEPKNS0_10LetBindingEib(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %16, ptr noundef nonnull %6, i32 noundef %3, i1 noundef zeroext true)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr %8, align 8, !tbaa !19
  %i.fu = load i64, ptr %i.m, align 8, !tbaa !15
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ft, i64 noundef %i.fu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ax
  invoke void @_ZN4cvc58internal10LetBinding8popScopeEv(ptr noundef nonnull align 8 dereferenceable(472) %6)
          to label %bb.ay unwind label %bb.q

bb.ay:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.fw = load ptr, ptr %9, align 8, !tbaa !28    ; 3 uses
  %i.fx = load ptr, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gi, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.fw, %bb.ay ] ; 2 uses
  %i.fy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 8            ; 3 uses
  %i.ga = and i64 %i.fz, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ga, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.az, !prof !23

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.gb = add i64 %i.fz, 1152920405095219200
  %i.gc = and i64 %i.gb, 1152920405095219200      ; 2 uses
  %i.gd = and i64 %i.fz, -1152920405095219201
  %i.ge = or disjoint i64 %i.gc, %i.gd
  store i64 %i.ge, ptr %i.fy, align 8
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %bb.ba, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !23

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.ba, %bb.az, %.lr.ph.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gi, %i.fx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.ay
  %i.gj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fw, %bb.ay ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !48
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.gp = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.l
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.gr = load i64, ptr %i.l, align 8, !tbaa !18
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN4cvc58internal10LetBindingD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  ret void

bb.be:                                            ; preds = %bb.aw
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.av, %bb.r, %bb.q
  %.pn37 = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %i.gt, %bb.be ], [ %.pn31.pn.pn.pn.pn, %bb.av ], [ %i.bu, %bb.r ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.gu = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.l
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.bf
  %i.gw = load i64, ptr %i.l, align 8, !tbaa !18
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN4cvc58internal10LetBindingD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %6) #24
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal7printer4smt211Smt2Printer8toStreamERSoNS0_12NodeTemplateILb0EEEPKNS0_10LetBindingEib(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.13", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.d = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !50
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %_ZNSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EED2Ev.exit73

_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d, %bb.b, %bb.a
  %i.j = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !50
  %i.k = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 5 uses
  store i32 %4, ptr %i.k, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %i.n, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.not = icmp ne ptr %3, null                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %_ZNSolsEj.exit, %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.sroa.0103.0.a = phi ptr [ %i.k, %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.34.1.a, %_ZNSolsEj.exit ] ; 12 uses
  %.sroa.34.0.a = phi ptr [ %i.o, %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.11.4, %_ZNSolsEj.exit ] ; 13 uses
  %.sroa.11.0 = phi ptr [ %i.o, %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0109.1, %_ZNSolsEj.exit ] ; 12 uses
  %.sroa.0109.0 = phi ptr [ %i.j, %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %spec.select, %_ZNSolsEj.exit ] ; 2 uses
  %.025 = phi i1 [ %5, %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %.3, %_ZNSolsEj.exit ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.34.0.a, i64 -24 ; 6 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.34.0.a, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %.not.i46 = icmp eq ptr %.sroa.0109.0, %i.s
  %spec.select = select i1 %.not.i46, ptr %.sroa.0109.0, ptr %i.s, !prof !23 ; 10 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.34.0.a, i64 -16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55   ; 3 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !56   ; 4 uses
  %i.w = icmp eq i64 %i.u, 0                      ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %brmerge.not = select i1 %.not, i1 %.025, i1 false
  %.025.mux = select i1 %.not, i1 true, i1 %.025
  br i1 %brmerge.not, label %bb.g, label %_ZNSolsEj.exit.thread

bb.g:                                             ; preds = %bb.f
  store ptr %spec.select, ptr %6, align 8, !tbaa !20
  %i.x = load i64, ptr %spec.select, align 8      ; 3 uses
  %i.y = lshr i64 %i.x, 40
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 1048575                   ; 3 uses
  %i.ab = icmp samesign ult i32 %i.aa, 1048574
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.ac = add nuw nsw i32 %i.aa, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 40
  %i.af = and i64 %i.x, -1152920405095219201
  %i.ag = or i64 %i.ae, %i.af
  store i64 %i.ag, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp eq i32 %i.aa, 1048574
  br i1 %i.ah, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.ai = or i64 %i.x, 1152920405095219200
  store i64 %i.ai, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.q

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.i, %bb.h, %bb.j
  %i.aj = invoke noundef i32 @_ZNK4cvc58internal10LetBinding5getIdENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %3, ptr noundef nonnull align 8 %6)
          to label %bb.k unwind label %bb.r       ; 2 uses

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.ak = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.am = and i64 %i.al, 1152920405095219200
  %.not.i.i48 = icmp eq i64 %i.am, 1152920405095219200
  br i1 %.not.i.i48, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.an = add i64 %i.al, 1152920405095219200
  %i.ao = and i64 %i.an, 1152920405095219200      ; 2 uses
  %i.ap = and i64 %i.al, -1152920405095219201
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.ak, align 8
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !23

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.k, %bb.l, %bb.m
  %.not37 = icmp eq i32 %i.aj, 0
  br i1 %.not37, label %_ZNSolsEj.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.au = load ptr, ptr %3, align 8, !tbaa !19
  %i.av = load i64, ptr %i.p, align 8, !tbaa !15
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.au, i64 noundef %i.av)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.o
  %i.ax = zext i32 %i.aj to i64
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i64 noundef %i.ax)
          to label %_ZNSolsEj.exit unwind label %bb.q ; 0 uses

bb.p:                                             ; preds = %bb.ao, %bb.an, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.o, %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %.body

_ZNSolsEj.exit.thread:                            ; preds = %bb.f, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.1 = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %.025.mux, %bb.f ] ; 4 uses
  store ptr %spec.select, ptr %7, align 8, !tbaa !8
  %i.bc = invoke noundef zeroext i1 @_ZNK4cvc58internal7printer4smt211Smt2Printer12toStreamBaseERSoNS0_12NodeTemplateILb0EEEPKNS0_10LetBindingEi(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %7, ptr noundef %3, i32 noundef %i.v)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSolsEj.exit.thread
  br i1 %i.bc, label %_ZNSolsEj.exit, label %bb.u

bb.t:                                             ; preds = %_ZNSolsEj.exit.thread
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.s
  %i.be = icmp eq i32 %i.v, 0
  br i1 %i.be, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.86, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1023                     ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 1023
  %i.bl = select i1 %i.bk, i32 -1, i32 %i.bj
  %i.bm = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bl)
          to label %bb.w unwind label %bb.p

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bn = icmp eq i32 %i.bm, 2
  %i.bo = load i64, ptr %i.bg, align 8
  %i.bp = lshr i64 %i.bo, 32
  %i.bq = and i64 %i.bp, 67108863
  %i.br = sext i1 %i.bn to i64
  %i.bs = add nsw i64 %i.bq, %i.br
  %i.bt = and i64 %i.bs, 4294967295
  %.not42 = icmp eq i64 %i.bt, 0
  br i1 %.not42, label %_ZNSolsEj.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 41, ptr %i.c, align 1, !tbaa !18
  %i.bu = load ptr, ptr %1, align 8, !tbaa !43
  %i.bv = getelementptr i8, ptr %i.bu, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !57
  %.not.i53 = icmp eq i64 %i.bz, 0
  br i1 %.not.i53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.p ; 0 uses

bb.z:                                             ; preds = %bb.x
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSolsEj.exit

bb.aa:                                            ; preds = %bb.u, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %.2 = phi i1 [ %.1, %bb.u ], [ %.025, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = and i32 %i.ce, 1023                     ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 1023
  %i.ch = select i1 %i.cg, i32 -1, i32 %i.cf
  %i.ci = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ch)
          to label %bb.ab unwind label %bb.p

bb.ab:                                            ; preds = %bb.aa
  %i.cj = icmp eq i32 %i.ci, 2
  %i.ck = load i64, ptr %i.cc, align 8
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = and i64 %i.cl, 67108863
  %i.cn = sext i1 %i.cj to i64
  %i.co = add nsw i64 %i.cm, %i.cn
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = icmp ult i64 %i.u, %i.cp
  br i1 %i.cq, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %i.t, align 8, !tbaa !55
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.t, align 8, !tbaa !55
  br i1 %i.w, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !18
  %i.ct = load ptr, ptr %1, align 8, !tbaa !43
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !57
  %.not.i58 = icmp eq i64 %i.cy, 0
  br i1 %.not.i58, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62 unwind label %bb.p ; 0 uses

bb.af:                                            ; preds = %bb.ad
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62, %bb.ac
  %i.db = load i64, ptr %i.cc, align 8, !noalias !64
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.dc, 1023                     ; 2 uses
  %i.de = icmp eq i32 %i.dd, 1023
  %i.df = select i1 %i.de, i32 -1, i32 %i.dd
  %i.dg = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.df)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dh = icmp eq i32 %i.dg, 2
  %i.di = zext i1 %i.dh to i64
  %spec.select.i.i = add nuw nsw i64 %i.u, %i.di
  %i.dj = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %sext = shl nuw i64 %spec.select.i.i, 32
  %i.dk = ashr exact i64 %sext, 29
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !50, !noalias !64 ; 2 uses
  %i.dn = icmp sgt i32 %i.v, -1
  %i.do = sext i1 %i.dn to i32
  %i.dp = add nsw i32 %i.v, %i.do                 ; 2 uses
  %.not.i64 = icmp eq ptr %.sroa.34.0.a, %.sroa.11.0
  br i1 %.not.i64, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.dp, ptr %.sroa.34.0.a, align 8, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.34.0.a, i64 8
  store i64 0, ptr %i.dq, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.34.0.a, i64 16
  store ptr %i.dm, ptr %i.dr, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.34.0.a, i64 24
  br label %_ZNSolsEj.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dt = ptrtoint ptr %.sroa.34.0.a to i64
  %i.du = ptrtoint ptr %.sroa.0103.0.a to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 4 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.ak, label %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i77

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.471) #28
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i77: ; preds = %bb.aj
  %i.dx = sdiv exact i64 %i.dv, 24                ; 3 uses
  %.sroa.speculated.i.i78 = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i78, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 384307168202282325)
  %i.eb = select i1 %i.dz, i64 384307168202282325, i64 %i.ea ; 3 uses
  %.not.i.i79 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i79)
  %i.ec = mul nuw nsw i64 %i.eb, 24
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #27
          to label %.noexc96 unwind label %.loopexit ; 5 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i77
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv ; 3 uses
  store i32 %i.dp, ptr %i.ee, align 4, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 0, ptr %i.ef, align 8, !tbaa !53
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store ptr %i.dm, ptr %i.eg, align 8, !tbaa !8
  %.not13.i.i.i.i.i.i80 = icmp eq ptr %.sroa.0103.0.a, %.sroa.34.0.a
  br i1 %.not13.i.i.i.i.i.i80, label %.noexc66, label %.lr.ph.i.i.i.i.i.i81

.lr.ph.i.i.i.i.i.i81:                             ; preds = %.noexc96, %.lr.ph.i.i.i.i.i.i81
  %.015.i.i.i.i.i.i82 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i81 ], [ %i.ed, %.noexc96 ] ; 3 uses
  %.01214.i.i.i.i.i.i83 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i81 ], [ %.sroa.0103.0.a, %.noexc96 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i.i.i.i82, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i.i.i.i.i83, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i82, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i83, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !8
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i83, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i82, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i84 = icmp eq ptr %i.ek, %.sroa.34.0.a
  br i1 %.not.i.i.i.i.i.i84, label %.noexc66, label %.lr.ph.i.i.i.i.i.i81, !llvm.loop !67

.noexc66:                                         ; preds = %.lr.ph.i.i.i.i.i.i81, %.noexc96
  %.0.lcssa.i.i.i.i.i.i86 = phi ptr [ %i.ed, %.noexc96 ], [ %i.el, %.lr.ph.i.i.i.i.i.i81 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i86, i64 24
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.a, i64 noundef %i.dv) #25
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.eb
  br label %_ZNSolsEj.exit

bb.al:                                            ; preds = %bb.ag
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EE12_M_check_lenEmPKc.exit.i77
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !18
  %i.ep = load ptr, ptr %1, align 8, !tbaa !43
  %i.eq = getelementptr i8, ptr %i.ep, i64 -24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds i8, ptr %1, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !57
  %.not.i67 = icmp eq i64 %i.eu, 0
  br i1 %.not.i67, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ap unwind label %bb.p      ; 0 uses

bb.ao:                                            ; preds = %bb.am
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 41)
          to label %bb.ap unwind label %bb.p      ; 0 uses

bb.ap:                                            ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSolsEj.exit

_ZNSolsEj.exit:                                   ; preds = %bb.s, %bb.ai, %.noexc66, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.ap, %bb.w
  %.sroa.34.1.a = phi ptr [ %.sroa.0103.0.a, %bb.ai ], [ %.sroa.0103.0.a, %bb.w ], [ %.sroa.0103.0.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %.sroa.0103.0.a, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %.sroa.0103.0.a, %bb.ap ], [ %i.ed, %.noexc66 ], [ %.sroa.0103.0.a, %bb.s ] ; 4 uses
  %.sroa.11.4 = phi ptr [ %i.ds, %bb.ai ], [ %i.q, %bb.w ], [ %i.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %i.q, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %i.q, %bb.ap ], [ %i.em, %.noexc66 ], [ %i.q, %bb.s ] ; 2 uses
  %.sroa.0109.1 = phi ptr [ %.sroa.11.0, %bb.ai ], [ %.sroa.11.0, %bb.w ], [ %.sroa.11.0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %.sroa.11.0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %.sroa.11.0, %bb.ap ], [ %i.en, %.noexc66 ], [ %.sroa.11.0, %bb.s ] ; 2 uses
  %.3 = phi i1 [ %.2, %bb.ai ], [ %.1, %bb.w ], [ %.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ true, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %.2, %bb.ap ], [ %.2, %.noexc66 ], [ %.1, %bb.s ]
  %i.ex = icmp eq ptr %.sroa.34.1.a, %.sroa.11.4
  br i1 %i.ex, label %_ZNSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EED2Ev.exit, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, !llvm.loop !68

_ZNSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EED2Ev.exit: ; preds = %_ZNSolsEj.exit
  %i.ey = ptrtoint ptr %.sroa.0109.1 to i64
  %i.ez = ptrtoint ptr %.sroa.34.1.a to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.34.1.a, i64 noundef %i.fa) #25
  ret void

.body:                                            ; preds = %bb.al, %bb.q, %bb.r, %bb.t, %bb.p, %.loopexit.split-lp, %.loopexit
  %.sroa.34.0168 = phi ptr [ %.sroa.11.0, %bb.q ], [ %.sroa.11.0, %bb.al ], [ %.sroa.11.0, %bb.p ], [ %.sroa.11.0, %bb.r ], [ %.sroa.11.0, %bb.t ], [ %.sroa.34.0.a, %.loopexit ], [ %.sroa.34.0.a, %.loopexit.split-lp ]
  %.pn43.pn = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.eo, %bb.al ], [ %i.az, %bb.p ], [ %i.bb, %bb.r ], [ %i.bd, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fb = ptrtoint ptr %.sroa.34.0168 to i64
  %i.fc = ptrtoint ptr %.sroa.0103.0.a to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.a, i64 noundef %i.fd) #25
  br label %_ZNSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EED2Ev.exit73

_ZNSt6vectorISt5tupleIJN4cvc58internal12NodeTemplateILb0EEEmiEESaIS5_EED2Ev.exit73: ; preds = %bb.e, %.body
  %.pn43.pn139 = phi { ptr, i32 } [ %.pn43.pn, %.body ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn43.pn139
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.468) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !55
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.g, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.i, ptr %i.h, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare void @_ZN4cvc58internal10LetBindingC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjbb(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4cvc58internal10LetBinding6letifyENS0_12NodeTemplateILb1EEERSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3incEv.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

_ZN4cvc58internal4expr9NodeValue3incEv.exit:      ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20     ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3incEv.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

_ZN4cvc58internal4expr9NodeValue3incEv.exit:      ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4cvc58internal10LetBinding5getIdENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare void @_ZN4cvc58internal10LetBinding8popScopeEv(ptr noundef nonnull align 8 dereferenceable(472)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i
end_hunk_0
