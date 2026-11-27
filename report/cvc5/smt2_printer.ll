Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/smt2_printer?download=true
inline.NumInlined: 2929
inline.NumDeleted: 607
begin_hunk_0_@_ZNK4cvc58internal7printer4smt211Smt2Printer8toStreamERSoRKNS0_3smt5ModelE:bb.a
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ca)
          to label %.noexc45 unwind label %bb.aa

.noexc45:                                         ; preds = %bb.v
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef signext i8 %i.ch(ptr noundef nonnull align 8 dereferenceable(570) %i.ca, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42 unwind label %bb.aa, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42: ; preds = %.noexc45, %bb.u
  %.0.i.i.i43 = phi i8 [ %i.ce, %bb.u ], [ %i.ci, %.noexc45 ]
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i43)
          to label %.noexc47 unwind label %bb.aa

.noexc47:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_ZNSolsEPFRSoS_E.exit17 unwind label %bb.aa ; 0 uses

_ZNSolsEPFRSoS_E.exit17:                          ; preds = %.noexc47
  %i.cl = load ptr, ptr %4, align 8, !tbaa !28
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit18 unwind label %bb.aa

_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit18: ; preds = %_ZNSolsEPFRSoS_E.exit17
  %i.cm = load ptr, ptr %1, align 8, !tbaa !43
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %1, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !84 ; 6 uses
  %.not.i.i.i50 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i50, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51: ; preds = %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !89
  %.not.i1.i.i52 = icmp eq i8 %i.ct, 0
  br i1 %.not.i1.i.i52, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 67
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cr)
          to label %.noexc56 unwind label %bb.aa

.noexc56:                                         ; preds = %bb.x
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef signext i8 %i.cy(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53 unwind label %bb.aa, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53: ; preds = %.noexc56, %bb.w
  %.0.i.i.i54 = phi i8 [ %i.cv, %bb.w ], [ %i.cz, %.noexc56 ]
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i54)
          to label %.noexc58 unwind label %bb.aa

.noexc58:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %_ZNSolsEPFRSoS_E.exit19 unwind label %bb.aa ; 0 uses

_ZNSolsEPFRSoS_E.exit19:                          ; preds = %.noexc58
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZNSolsEPFRSoS_E.exit19
  %i.dd = load ptr, ptr %1, align 8, !tbaa !43
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds i8, ptr %1, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !84 ; 6 uses
  %.not.i.i.i61 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i61, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !89
  %.not.i1.i.i63 = icmp eq i8 %i.dk, 0
  br i1 %.not.i1.i.i63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 67
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.di)
          to label %.noexc67 unwind label %bb.aa

.noexc67:                                         ; preds = %bb.z
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !43
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef signext i8 %i.dp(ptr noundef nonnull align 8 dereferenceable(570) %i.di, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64 unwind label %bb.aa, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64: ; preds = %.noexc67, %bb.y
  %.0.i.i.i65 = phi i8 [ %i.dm, %bb.y ], [ %i.dq, %.noexc67 ]
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i65)
          to label %.noexc69 unwind label %bb.aa

.noexc69:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %_ZNSolsEPFRSoS_E.exit21 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %.invoke, %_ZNSolsEPFRSoS_E.exit, %bb.v, %.noexc45, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42, %.noexc47, %bb.p, %bb.r, %_ZNSolsEPFRSoS_E.exit19, %bb.t, %.noexc34, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc36, %bb.z, %.noexc67, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64, %.noexc69, %.noexc58, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53, %.noexc56, %bb.x, %_ZNSolsEPFRSoS_E.exit17
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %.body

_ZNSolsEPFRSoS_E.exit21:                          ; preds = %.noexc69, %bb.q
  %i.du = load ptr, ptr %4, align 8, !tbaa !28    ; 3 uses
  %i.dv = load i64, ptr %i.du, align 8            ; 3 uses
  %i.dw = and i64 %i.dv, 1152920405095219200
  %.not.i.i22 = icmp eq i64 %i.dw, 1152920405095219200
  br i1 %.not.i.i22, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ab, !prof !30

bb.ab:                                            ; preds = %_ZNSolsEPFRSoS_E.exit21
  %i.dx = add i64 %i.dv, 1152920405095219200
  %i.dy = and i64 %i.dx, 1152920405095219200      ; 2 uses
  %i.dz = and i64 %i.dv, -1152920405095219201
  %i.ea = or disjoint i64 %i.dy, %i.dz
  store i64 %i.ea, ptr %i.du, align 8
  %i.eb = icmp eq i64 %i.dy, 0
  br i1 %i.eb, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !30

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSolsEPFRSoS_E.exit21, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ee = load ptr, ptr %3, align 8, !tbaa !28    ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8            ; 3 uses
  %i.eg = and i64 %i.ef, 1152920405095219200
  %.not.i.i23 = icmp eq i64 %i.eg, 1152920405095219200
  br i1 %.not.i.i23, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit24, label %bb.ae, !prof !30

bb.ae:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.eh = add i64 %i.ef, 1152920405095219200
  %i.ei = and i64 %i.eh, 1152920405095219200      ; 2 uses
  %i.ej = and i64 %i.ef, -1152920405095219201
  %i.ek = or disjoint i64 %i.ei, %i.ej
  store i64 %i.ek, ptr %i.ee, align 8
  %i.el = icmp eq i64 %i.ei, 0
  br i1 %i.el, label %bb.af, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit24, !prof !30

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit24 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit24: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

.body:                                            ; preds = %bb.o, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.aa ], [ %i.ba, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

declare void @_ZNK4cvc58internal7Printer8toStreamERSoRKNS0_3smt5ModelE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK4cvc58internal3smt5Model12getHeapModelERNS0_12NodeTemplateILb1EEES5_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal7printer4smt211Smt2Printer17toStreamModelSortERSoNS0_8TypeNodeERKSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::options::ioutils::Scope", align 8 ; 6 uses
  %5 = alloca %"class.cvc5::internal::options::ioutils::Scope", align 8 ; 6 uses
  %6 = alloca %"class.cvc5::internal::options::ioutils::Scope", align 8 ; 6 uses
  %7 = alloca %"class.cvc5::internal::options::ioutils::Scope", align 8 ; 6 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.13", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4cvc58internal8TypeNode19isUninterpretedSortEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.374, i64 noundef 64) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.c = load ptr, ptr %1, align 8, !tbaa !43
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  call void @_ZN4cvc58internal7options7ioutils5ScopeC1ERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(46) %7, ptr noundef nonnull align 8 dereferenceable(216) %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !43
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  invoke void @_ZN4cvc58internal7options7ioutils14applyDagThreshERSt8ios_basel(ptr noundef nonnull align 8 dereferenceable(216) %i.j, i64 noundef 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %2, align 8, !tbaa !67
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.ac, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %.split128.us, %bb.af, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.aq, %bb.k ], [ %i.fe, %bb.af ], [ %i.kg, %.split128.us ], [ %.pn49.pn.pn.pn, %bb.ac ], [ %i.hq, %bb.au ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %common.resume

_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit:     ; preds = %bb.c
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.m = load ptr, ptr %1, align 8, !tbaa !43
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !89
  %.not.i1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 67
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef signext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 10), !inline_history !2
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !43
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac
  %i.ae = tail call noundef i32 @_ZN4cvc58internal7options7ioutils21getModelUninterpPrintERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.ad) ; 3 uses
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.375, i64 noundef 18) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ah = load ptr, ptr %1, align 8, !tbaa !43
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  call void @_ZN4cvc58internal7options7ioutils5ScopeC1ERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(46) %6, ptr noundef nonnull align 8 dereferenceable(216) %i.ak)
  %i.al = load ptr, ptr %1, align 8, !tbaa !43
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  invoke void @_ZN4cvc58internal7options7ioutils14applyDagThreshERSt8ios_basel(ptr noundef nonnull align 8 dereferenceable(216) %i.ao, i64 noundef 0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %2, align 8, !tbaa !67
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit55 unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %common.resume

_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit55:   ; preds = %bb.j
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.61, i64 noundef 2) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34 ; 2 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !35    ; 3 uses
  %.not134 = icmp eq ptr %i.at, %i.au
  br i1 %.not134, label %._crit_edge, label %.lr.ph133

.lr.ph133:                                        ; preds = %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit55
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !28 ; 9 uses
  store ptr %i.bc, ptr %8, align 8, !tbaa !28
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = lshr i64 %i.bd, 40
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 1048575                  ; 3 uses
  %i.bh = icmp samesign ult i32 %i.bg, 1048574
  br i1 %i.bh, label %bb.n, label %bb.l, !prof !29

bb.l:                                             ; preds = %.lr.ph133
  %i.bi = icmp eq i32 %i.bg, 1048574
  br i1 %i.bi, label %bb.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.bj = or i64 %i.bd, 1152920405095219200
  store i64 %i.bj, ptr %i.bc, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel

bb.n:                                             ; preds = %.lr.ph133
  %i.bk = add nuw nsw i32 %i.bg, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 40
  %i.bn = and i64 %i.bd, -1152920405095219201
  %i.bo = or i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.bc, align 8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel: ; preds = %bb.l, %bb.m, %bb.n
  %i.bp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_22UninterpretedSortValueEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.60, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56.peel: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK4cvc58internal22UninterpretedSortValue9getSymbolB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.o unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56.peel
  invoke void @_ZN4cvc58internal11quoteSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.p unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %9, align 8, !tbaa !26
  %i.bs = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.br, i64 noundef %i.bs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.p
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.bv = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ba
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel
  %i.bx = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  %i.bz = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bb
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.cb = load i64, ptr %i.bb, align 8, !tbaa !25
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.cd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.ce = and i64 %i.cd, 1152920405095219200
  %.not.i.i.peel = icmp eq i64 %i.ce, 1152920405095219200
  br i1 %.not.i.i.peel, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.peel, label %bb.q, !prof !30

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel
  %i.cf = add i64 %i.cd, 1152920405095219200
  %i.cg = and i64 %i.cf, 1152920405095219200      ; 2 uses
  %i.ch = and i64 %i.cd, -1152920405095219201
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.bc, align 8
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.peel, !prof !30

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.peel unwind label %.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.peel: ; preds = %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %exitcond.peel.not = icmp eq i64 %i.ax, 8
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.peel, %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit55
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.62, i64 noundef 2) ; 0 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !43
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %1, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !84 ; 6 uses
  %.not.i.i.i84 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i84, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85

bb.s:                                             ; preds = %._crit_edge
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85: ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !89
  %.not.i1.i.i86 = icmp eq i8 %i.cs, 0
  br i1 %.not.i1.i.i86, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 67
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !25
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cq)
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef signext i8 %i.cx(ptr noundef nonnull align 8 dereferenceable(570) %i.cq, i8 noundef signext 10), !inline_history !2
  br label %.loopexit.sink.split

.peel.next:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.peel, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.045132 = phi i64 [ %i.el, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.peel ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cz = load ptr, ptr %3, align 8, !tbaa !35
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.045132
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !28 ; 9 uses
  store ptr %i.db, ptr %8, align 8, !tbaa !28
  %i.dc = load i64, ptr %i.db, align 8            ; 3 uses
  %i.dd = lshr i64 %i.dc, 40
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = and i32 %i.de, 1048575                  ; 3 uses
  %i.dg = icmp samesign ult i32 %i.df, 1048574
  br i1 %i.dg, label %bb.v, label %bb.w, !prof !29

bb.v:                                             ; preds = %.peel.next
  %i.dh = add nuw nsw i32 %i.df, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 40
  %i.dk = and i64 %i.dc, -1152920405095219201
  %i.dl = or i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %i.db, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.w:                                             ; preds = %.peel.next
  %i.dm = icmp eq i32 %i.df, 1048574
  br i1 %i.dm, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !30

bb.x:                                             ; preds = %bb.w
  %i.dn = or i64 %i.dc, 1152920405095219200
  store i64 %i.dn, ptr %i.db, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.dp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_22UninterpretedSortValueEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.60, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK4cvc58internal22UninterpretedSortValue9getSymbolB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %bb.y unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  invoke void @_ZN4cvc58internal11quoteSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.z unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.dr = load ptr, ptr %9, align 8, !tbaa !26
  %i.ds = load i64, ptr %i.az, align 8, !tbaa !24
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dr, i64 noundef %i.ds)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.z
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dv = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ba
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.dx = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dz = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bb
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = load i64, ptr %i.bb, align 8, !tbaa !25
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ed = load i64, ptr %i.db, align 8            ; 3 uses
  %i.ee = and i64 %i.ed, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ee, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.aa, !prof !30

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.ef = add i64 %i.ed, 1152920405095219200
  %i.eg = and i64 %i.ef, 1152920405095219200      ; 2 uses
  %i.eh = and i64 %i.ed, -1152920405095219201
  %i.ei = or disjoint i64 %i.eg, %i.eh
  store i64 %i.ei, ptr %i.db, align 8
  %i.ej = icmp eq i64 %i.eg, 0
  br i1 %i.ej, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !30

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.r
  %lpad.loopexit.split-lp220 = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %lpad.loopexit.split-lp220, 0
  call void @__clang_call_terminate(ptr %i.ek) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.el = add nuw i64 %.045132, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.el, %i.ay
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !304

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.peel, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstINS0_22UninterpretedSortValueEEERKT_v.exit.peel
  %lpad.loopexit.split-lp210 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56.peel
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.z, %bb.p, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ba
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp
  %i.eo = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %.pn49 = phi { ptr, i32 } [ %lpad.loopexit.split-lp217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp217, %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.eq = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bb
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.es = load i64, ptr %i.bb, align 8, !tbaa !25
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %lpad.loopexit.split-lp210, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.ad:                                            ; preds = %bb.h
  %i.eu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.376, i64 noundef 17) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ev = load ptr, ptr %1, align 8, !tbaa !43
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %1, i64 %i.ex
  call void @_ZN4cvc58internal7options7ioutils5ScopeC1ERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(46) %5, ptr noundef nonnull align 8 dereferenceable(216) %i.ey)
  %i.ez = load ptr, ptr %1, align 8, !tbaa !43
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %1, i64 %i.fb
  invoke void @_ZN4cvc58internal7options7ioutils14applyDagThreshERSt8ios_basel(ptr noundef nonnull align 8 dereferenceable(216) %i.fc, i64 noundef 0)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fd = load ptr, ptr %2, align 8, !tbaa !67
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit67 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit67:   ; preds = %bb.ae
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.377, i64 noundef 4) ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !34
  %i.fi = load ptr, ptr %3, align 8, !tbaa !35
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 3
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.fm) ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !43
  %i.fp = getelementptr i8, ptr %i.fo, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 240
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !84 ; 6 uses
  %.not.i.i.i89 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i89, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i90

bb.ag:                                            ; preds = %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit67
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i90: ; preds = %_ZN4cvc58internallsERSoRKNS0_8TypeNodeE.exit67
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !89
  %.not.i1.i.i91 = icmp eq i8 %i.fv, 0
  br i1 %.not.i1.i.i91, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i90
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 67
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !25
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i90
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ft)
  %i.fy = load ptr, ptr %i.ft, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef signext i8 %i.ga(ptr noundef nonnull align 8 dereferenceable(570) %i.ft, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93: ; preds = %bb.ah, %bb.ai
  %.0.i.i.i92 = phi i8 [ %i.fx, %bb.ah ], [ %i.gb, %bb.ai ]
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, i8 noundef signext %.0.i.i.i92)
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gc) ; 0 uses
  %i.ge = icmp eq i32 %i.ae, 0
  br i1 %i.ge, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93
  %i.gf = load ptr, ptr %2, align 8, !tbaa !67    ; 5 uses
  store ptr %i.gf, ptr %11, align 8, !tbaa !67
  %i.gg = load i64, ptr %i.gf, align 8            ; 3 uses
  %i.gh = lshr i64 %i.gg, 40
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = and i32 %i.gi, 1048575                  ; 3 uses
  %i.gk = icmp samesign ult i32 %i.gj, 1048574
  br i1 %i.gk, label %bb.ak, label %bb.al, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.gl = add nuw nsw i32 %i.gj, 1
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 40
  %i.go = and i64 %i.gg, -1152920405095219201
  %i.gp = or i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.gf, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.al:                                            ; preds = %bb.aj
  %i.gq = icmp eq i32 %i.gj, 1048574
  br i1 %i.gq, label %bb.am, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !30

bb.am:                                            ; preds = %bb.al
  %i.gr = or i64 %i.gg, 1152920405095219200
  store i64 %i.gr, ptr %i.gf, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gf)
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.ak, %bb.al, %bb.am
  invoke void @_ZNK4cvc58internal7Printer22toStreamCmdDeclareTypeERSoNS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %11)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.gs = load ptr, ptr %11, align 8, !tbaa !67   ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8            ; 3 uses
  %i.gu = and i64 %i.gt, 1152920405095219200
  %.not.i.i68 = icmp eq i64 %i.gu, 1152920405095219200
  br i1 %.not.i.i68, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.ao, !prof !30

bb.ao:                                            ; preds = %bb.an
  %i.gv = add i64 %i.gt, 1152920405095219200
  %i.gw = and i64 %i.gv, 1152920405095219200      ; 2 uses
  %i.gx = and i64 %i.gt, -1152920405095219201
  %i.gy = or disjoint i64 %i.gw, %i.gx
  store i64 %i.gy, ptr %i.gs, align 8
  %i.gz = icmp eq i64 %i.gw, 0
  br i1 %i.gz, label %bb.ap, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !30

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.an, %bb.ao, %bb.ap
  %i.hc = load ptr, ptr %1, align 8, !tbaa !43
  %i.hd = getelementptr i8, ptr %i.hc, i64 -24
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds i8, ptr %1, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 240
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !84 ; 6 uses
  %.not.i.i.i94 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i94, label %bb.ar, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95

bb.ar:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !89
  %.not.i1.i.i96 = icmp eq i8 %i.hj, 0
  br i1 %.not.i1.i.i96, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 67
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !25
  br label %.thread

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i95
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hh)
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !43
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call noundef signext i8 %i.ho(ptr noundef nonnull align 8 dereferenceable(570) %i.hh, i8 noundef signext 10), !inline_history !2
  br label %.thread

bb.au:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %common.resume

bb.av:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit93
  %i.hr = load ptr, ptr %3, align 8, !tbaa !32    ; 3 uses
  %i.hs = load ptr, ptr %i.fg, align 8, !tbaa !32 ; 3 uses
  %.not118121 = icmp eq ptr %i.hr, %i.hs
  br i1 %.not118121, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.at, %bb.as
end_hunk_0
