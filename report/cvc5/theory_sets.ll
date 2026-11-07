Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_sets?download=true
inline.NumInlined: 1157
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory4sets10TheorySets9ppRewriteENS0_12NodeTemplateILb0EEERSt6vectorINS1_11SkolemLemmaESaIS7_EE:bb.a
bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit93
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cg:                                            ; preds = %bb.bx
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit97
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #21
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.cf
  %.sink = phi ptr [ %20, %bb.cf ], [ %19, %bb.ch ], [ %19, %bb.cg ]
  %.pn64.pn = phi { ptr, i32 } [ %i.hb, %bb.cf ], [ %i.hd, %bb.ch ], [ %i.hc, %bb.cg ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.dn

bb.cj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.he = load ptr, ptr %2, align 8, !tbaa !275   ; 5 uses
  store ptr %i.he, ptr %24, align 8, !tbaa !254
  %i.hf = load i64, ptr %i.he, align 8            ; 3 uses
  %i.hg = lshr i64 %i.hf, 40
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = and i32 %i.hh, 1048575                  ; 3 uses
  %i.hj = icmp samesign ult i32 %i.hi, 1048574
  br i1 %i.hj, label %bb.ck, label %bb.cl, !prof !276

bb.ck:                                            ; preds = %bb.cj
  %i.hk = add nuw nsw i32 %i.hi, 1
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 40
  %i.hn = and i64 %i.hf, -1152920405095219201
  %i.ho = or i64 %i.hm, %i.hn
  store i64 %i.ho, ptr %i.he, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit102

bb.cl:                                            ; preds = %bb.cj
  %i.hp = icmp eq i32 %i.hi, 1048574
  br i1 %i.hp, label %bb.cm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit102, !prof !255

bb.cm:                                            ; preds = %bb.cl
  %i.hq = or i64 %i.hf, 1152920405095219200
  store i64 %i.hq, ptr %i.he, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.he)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit102

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit102: ; preds = %bb.ck, %bb.cl, %bb.cm
  invoke void @_ZN4cvc58internal6theory4sets12SetReduction21reduceProjectOperatorENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %23, ptr noundef nonnull align 8 %24)
          to label %bb.cn unwind label %bb.db

bb.cn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit102
  %i.hr = load ptr, ptr %24, align 8, !tbaa !254  ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8            ; 3 uses
  %i.ht = and i64 %i.hs, 1152920405095219200
  %.not.i.i103 = icmp eq i64 %i.ht, 1152920405095219200
  br i1 %.not.i.i103, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, label %bb.co, !prof !255

bb.co:                                            ; preds = %bb.cn
  %i.hu = add i64 %i.hs, 1152920405095219200
  %i.hv = and i64 %i.hu, 1152920405095219200      ; 2 uses
  %i.hw = and i64 %i.hs, -1152920405095219201
  %i.hx = or disjoint i64 %i.hv, %i.hw
  store i64 %i.hx, ptr %i.hr, align 8
  %i.hy = icmp eq i64 %i.hv, 0
  br i1 %i.hy, label %bb.cp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, !prof !255

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104: ; preds = %bb.cn, %bb.co, %bb.cp
  %i.ib = load ptr, ptr %2, align 8, !tbaa !275
  store ptr %i.ib, ptr %25, align 8, !tbaa !275
  %i.ic = load ptr, ptr %23, align 8, !tbaa !254  ; 5 uses
  store ptr %i.ic, ptr %26, align 8, !tbaa !254
  %i.id = load i64, ptr %i.ic, align 8            ; 3 uses
  %i.ie = lshr i64 %i.id, 40
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = and i32 %i.if, 1048575                  ; 3 uses
  %i.ih = icmp samesign ult i32 %i.ig, 1048574
  br i1 %i.ih, label %bb.cr, label %bb.cs, !prof !276

bb.cr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104
  %i.ii = add nuw nsw i32 %i.ig, 1
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 40
  %i.il = and i64 %i.id, -1152920405095219201
  %i.im = or i64 %i.ik, %i.il
  store i64 %i.im, ptr %i.ic, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit106

bb.cs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104
  %i.in = icmp eq i32 %i.ig, 1048574
  br i1 %i.in, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit106, !prof !255

bb.ct:                                            ; preds = %bb.cs
  %i.io = or i64 %i.id, 1152920405095219200
  store i64 %i.io, ptr %i.ic, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit106 unwind label %bb.dc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit106: ; preds = %bb.cs, %bb.cr, %bb.ct
  invoke void @_ZN4cvc58internal9TrustNode14mkTrustRewriteENS0_12NodeTemplateILb0EEENS2_ILb1EEEPNS0_14ProofGeneratorE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 %25, ptr noundef nonnull align 8 %26, ptr noundef null)
          to label %bb.cu unwind label %bb.dd

bb.cu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit106
  %i.ip = load ptr, ptr %26, align 8, !tbaa !254  ; 3 uses
  %i.iq = load i64, ptr %i.ip, align 8            ; 3 uses
  %i.ir = and i64 %i.iq, 1152920405095219200
  %.not.i.i107 = icmp eq i64 %i.ir, 1152920405095219200
  br i1 %.not.i.i107, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, label %bb.cv, !prof !255

bb.cv:                                            ; preds = %bb.cu
  %i.is = add i64 %i.iq, 1152920405095219200
  %i.it = and i64 %i.is, 1152920405095219200      ; 2 uses
  %i.iu = and i64 %i.iq, -1152920405095219201
  %i.iv = or disjoint i64 %i.it, %i.iu
  store i64 %i.iv, ptr %i.ip, align 8
  %i.iw = icmp eq i64 %i.it, 0
  br i1 %i.iw, label %bb.cw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, !prof !255

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108: ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.iz = load ptr, ptr %23, align 8, !tbaa !254  ; 3 uses
  %i.ja = load i64, ptr %i.iz, align 8            ; 3 uses
  %i.jb = and i64 %i.ja, 1152920405095219200
  %.not.i.i109 = icmp eq i64 %i.jb, 1152920405095219200
  br i1 %.not.i.i109, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110, label %bb.cy, !prof !255

bb.cy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108
  %i.jc = add i64 %i.ja, 1152920405095219200
  %i.jd = and i64 %i.jc, 1152920405095219200      ; 2 uses
  %i.je = and i64 %i.ja, -1152920405095219201
  %i.jf = or disjoint i64 %i.jd, %i.je
  store i64 %i.jf, ptr %i.iz, align 8
  %i.jg = icmp eq i64 %i.jd, 0
  br i1 %i.jg, label %bb.cz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110, !prof !255

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jh = landingpad { ptr, i32 }
          catch ptr null
  %i.ji = extractvalue { ptr, i32 } %i.jh, 0
  call void @__clang_call_terminate(ptr %i.ji) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit108, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113

bb.db:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit102
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dc:                                            ; preds = %bb.ct
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.dd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit106
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #21
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd, %bb.db
  %.sink151 = phi ptr [ %24, %bb.db ], [ %23, %bb.dd ], [ %23, %bb.dc ]
  %.pn61.pn = phi { ptr, i32 } [ %i.jj, %bb.db ], [ %i.jl, %bb.dd ], [ %i.jk, %bb.dc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink151) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.dn

.thread:                                          ; preds = %bb.a, %bb.j, %bb.k, %bb.ab
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 2312
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !214
  %i.jo = load ptr, ptr %2, align 8, !tbaa !275   ; 5 uses
  store ptr %i.jo, ptr %27, align 8, !tbaa !254
  %i.jp = load i64, ptr %i.jo, align 8            ; 3 uses
  %i.jq = lshr i64 %i.jp, 40
  %i.jr = trunc nuw nsw i64 %i.jq to i32
  %i.js = and i32 %i.jr, 1048575                  ; 3 uses
  %i.jt = icmp samesign ult i32 %i.js, 1048574
  br i1 %i.jt, label %bb.df, label %bb.dg, !prof !276

bb.df:                                            ; preds = %.thread
  %i.ju = add nuw nsw i32 %i.js, 1
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, 40
  %i.jx = and i64 %i.jp, -1152920405095219201
  %i.jy = or i64 %i.jw, %i.jx
  store i64 %i.jy, ptr %i.jo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit111

bb.dg:                                            ; preds = %.thread
  %i.jz = icmp eq i32 %i.js, 1048574
  br i1 %i.jz, label %bb.dh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit111, !prof !255

bb.dh:                                            ; preds = %bb.dg
  %i.ka = or i64 %i.jp, 1152920405095219200
  store i64 %i.ka, ptr %i.jo, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jo)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit111

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit111: ; preds = %bb.df, %bb.dg, %bb.dh
  invoke void @_ZN4cvc58internal6theory4sets17TheorySetsPrivate9ppRewriteENS0_12NodeTemplateILb1EEERSt6vectorINS1_11SkolemLemmaESaIS7_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(736) %i.jn, ptr noundef nonnull align 8 %27, ptr noundef nonnull align 1 %3)
          to label %bb.di unwind label %bb.dm

bb.di:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit111
  %i.kb = load ptr, ptr %27, align 8, !tbaa !254  ; 3 uses
  %i.kc = load i64, ptr %i.kb, align 8            ; 3 uses
  %i.kd = and i64 %i.kc, 1152920405095219200
  %.not.i.i112 = icmp eq i64 %i.kd, 1152920405095219200
  br i1 %.not.i.i112, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, label %bb.dj, !prof !255

bb.dj:                                            ; preds = %bb.di
  %i.ke = add i64 %i.kc, 1152920405095219200
  %i.kf = and i64 %i.ke, 1152920405095219200      ; 2 uses
  %i.kg = and i64 %i.kc, -1152920405095219201
  %i.kh = or disjoint i64 %i.kf, %i.kg
  store i64 %i.kh, ptr %i.kb, align 8
  %i.ki = icmp eq i64 %i.kf, 0
  br i1 %i.ki, label %bb.dk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, !prof !255

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #22
  unreachable

bb.dm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit111
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #21
  br label %bb.dn

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113: ; preds = %bb.dk, %bb.dj, %bb.di, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit101, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  ret void

bb.dn:                                            ; preds = %bb.dm, %bb.de, %bb.ci, %bb.bm, %bb.aa, %bb.r, %bb.i
  %.pn67.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn67.pn.pn.pn.pn, %bb.bm ], [ %.pn64.pn, %bb.ci ], [ %.pn61.pn, %bb.de ], [ %i.kl, %bb.dm ], [ %.pn58.pn, %bb.aa ], [ %.pn55.pn, %bb.r ], [ %.pn.pn, %bb.i ]
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn.pn

bb.do:                                            ; preds = %bb.w, %bb.n, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal14LogicExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal9ExceptionE, i64 16), ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.f, ptr %i.a, align 8, !tbaa !363
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !22
  %i.i = load i64, ptr %i.a, align 8, !tbaa !363
  store i64 %i.i, ptr %i.c, align 8, !tbaa !21
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !21
  store i8 %i.k, ptr %i.j, align 1, !tbaa !21
  br label %_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #21
  resume { ptr, i32 } %i.l

_ZN4cvc58internal9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !363  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal14LogicExceptionE, i64 16), ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc58internal9ExceptionE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZNK4cvc58internal6EnvObj9logicInfoEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4cvc58internal9LogicInfo12isQuantifiedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4cvc58internal9LogicInfo13isHigherOrderEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal4kindlsERSoNS1_6Kind_tE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory4sets12SetReduction18reduceFoldOperatorENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !254    ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !255

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
end_hunk_0
