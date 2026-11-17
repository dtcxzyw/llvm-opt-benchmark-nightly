Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/cegis_unif?download=true
inline.NumInlined: 2555
inline.NumDeleted: 911
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy9mkLiteralEj:._crit_edge.i.i
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 40
  %i.hm = and i64 %i.hc, -1152920405095219201
  %i.hn = or i64 %i.hl, %i.hm
  store i64 %i.hn, ptr %.val448.1, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.ho = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.bu, label %bb.bx, !prof !21

bb.bu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1
  %i.hq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i180.1 = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i180.1, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.bw unwind label %bb.bc     ; 3 uses

bb.bw:                                            ; preds = %bb.bv
  store i64 1152920405095219200, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i8 0, i64 16, i1 false)
  store ptr %i.hr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit179.1
  %i.ht = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !24
  %i.hu = icmp eq ptr %.val448.1, %i.ht
  %.pre496 = load ptr, ptr %23, align 8, !tbaa !26 ; 8 uses
  br i1 %i.hu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %.pre496, ptr %24, align 8, !tbaa !26
  %i.hv = load i64, ptr %.pre496, align 8         ; 3 uses
  %i.hw = lshr i64 %i.hv, 40
  %i.hx = trunc nuw nsw i64 %i.hw to i32
  %i.hy = and i32 %i.hx, 1048575                  ; 3 uses
  %i.hz = icmp samesign ult i32 %i.hy, 1048574
  br i1 %i.hz, label %bb.cb, label %bb.bz, !prof !59

bb.bz:                                            ; preds = %bb.by
  %i.ia = icmp eq i32 %i.hy, 1048574
  br i1 %i.ia, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1, !prof !37

bb.ca:                                            ; preds = %bb.bz
  %i.ib = or i64 %i.hv, 1152920405095219200
  store i64 %i.ib, ptr %.pre496, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre496)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1 unwind label %bb.bf

bb.cb:                                            ; preds = %bb.by
  %i.ic = add nuw nsw i32 %i.hy, 1
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 40
  %i.if = and i64 %i.hv, -1152920405095219201
  %i.ig = or i64 %i.ie, %i.if
  store i64 %i.ig, ptr %.pre496, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1: ; preds = %bb.cb, %bb.ca, %bb.bz
  invoke void @_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy15setUpEnumeratorENS0_12NodeTemplateILb1EEERNS3_14StrategyPtInfoEj(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 %24, ptr noundef nonnull align 8 dereferenceable(120) %i.do, i32 noundef 1)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1
  %i.ih = load ptr, ptr %24, align 8, !tbaa !26   ; 3 uses
  %i.ii = load i64, ptr %i.ih, align 8            ; 3 uses
  %i.ij = and i64 %i.ii, 1152920405095219200
  %.not.i.i185.1 = icmp eq i64 %i.ij, 1152920405095219200
  br i1 %.not.i.i185.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1, label %bb.cd, !prof !37

bb.cd:                                            ; preds = %bb.cc
  %i.ik = add i64 %i.ii, 1152920405095219200
  %i.il = and i64 %i.ik, 1152920405095219200      ; 2 uses
  %i.im = and i64 %i.ii, -1152920405095219201
  %i.in = or disjoint i64 %i.il, %i.im
  store i64 %i.in, ptr %i.ih, align 8
  %i.io = icmp eq i64 %i.il, 0
  br i1 %i.io, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1, !prof !37

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ih)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1 unwind label %bb.bn

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1: ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.bx
  %i.ip = load i64, ptr %.pre496, align 8         ; 3 uses
  %i.iq = and i64 %i.ip, 1152920405095219200
  %.not.i.i188.1 = icmp eq i64 %i.iq, 1152920405095219200
  br i1 %.not.i.i188.1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1, label %bb.cf, !prof !37

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1
  %i.ir = add i64 %i.ip, 1152920405095219200
  %i.is = and i64 %i.ir, 1152920405095219200      ; 2 uses
  %i.it = and i64 %i.ip, -1152920405095219201
  %i.iu = or disjoint i64 %i.is, %i.it
  store i64 %i.iu, ptr %.pre496, align 8
  %i.iv = icmp eq i64 %i.is, 0
  br i1 %i.iv, label %bb.cg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1, !prof !37

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre496)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1 unwind label %bb.bq

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit190.1: ; preds = %bb.cg, %bb.cf, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit187.1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.iw = load ptr, ptr %20, align 8, !tbaa !26   ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8            ; 3 uses
  %i.iy = and i64 %i.ix, 1152920405095219200
  %.not.i.i166 = icmp eq i64 %i.iy, 1152920405095219200
  br i1 %.not.i.i166, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit168, label %bb.ak, !prof !37

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184.1, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit184
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #22
  br label %.body181

.body181:                                         ; preds = %bb.bf, %bb.bc, %bb.ch
  %.pn126 = phi { ptr, i32 } [ %i.iz, %bb.ch ], [ %i.fw, %bb.bf ], [ %i.fs, %bb.bc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #22
  br label %bb.ci

bb.ci:                                            ; preds = %.body181, %bb.be
  %.pn126.pn = phi { ptr, i32 } [ %.pn126, %.body181 ], [ %i.fv, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %.pn126.pn.pn = phi { ptr, i32 } [ %.pn126.pn, %bb.ci ], [ %.pn123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  br label %.body

.body:                                            ; preds = %bb.q, %bb.cj
  %.pn126.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn, %bb.cj ], [ %i.bi, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.ck

bb.ck:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %.pn126.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn, %.body ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ae
  %.pn126.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn, %bb.ck ], [ %i.dc, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ad
  %.pn126.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn126.pn.pn.pn.pn.pn, %bb.cl ], [ %i.db, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body257

._crit_edge495:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, %._crit_edge
  %i.ja = icmp ugt i32 %i.t, 1
  br i1 %i.ja, label %bb.dv, label %bb.js

.lr.ph494:                                        ; preds = %._crit_edge, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195
  %.sroa.0418.0492 = phi ptr [ %i.kc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195 ], [ %i.ae, %._crit_edge ] ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0418.0492, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !26 ; 16 uses
  store ptr %i.jc, ptr %25, align 8, !tbaa !26
  %i.jd = load i64, ptr %i.jc, align 8            ; 3 uses
  %i.je = lshr i64 %i.jd, 40
  %i.jf = trunc nuw nsw i64 %i.je to i32
  %i.jg = and i32 %i.jf, 1048575                  ; 3 uses
  %i.jh = icmp samesign ult i32 %i.jg, 1048574
  br i1 %i.jh, label %bb.cn, label %bb.co, !prof !59

bb.cn:                                            ; preds = %.lr.ph494
  %i.ji = add nuw nsw i32 %i.jg, 1
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 40
  %i.jl = and i64 %i.jd, -1152920405095219201
  %i.jm = or i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %i.jc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192

bb.co:                                            ; preds = %.lr.ph494
  %i.jn = icmp eq i32 %i.jg, 1048574
  br i1 %i.jn, label %bb.cp, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192, !prof !37

bb.cp:                                            ; preds = %bb.co
  %i.jo = or i64 %i.jd, 1152920405095219200
  store i64 %i.jo, ptr %i.jc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192 unwind label %bb.ct

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192: ; preds = %bb.co, %bb.cn, %bb.cp
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0418.0492, i64 104
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !61 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0418.0492, i64 112
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !61 ; 2 uses
  %.not447488 = icmp eq ptr %i.jq, %i.js
  br i1 %.not447488, label %._crit_edge490, label %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit

._crit_edge490:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192
  %i.jt = load i64, ptr %i.jc, align 8            ; 3 uses
  %i.ju = and i64 %i.jt, 1152920405095219200
  %.not.i.i193 = icmp eq i64 %i.ju, 1152920405095219200
  br i1 %.not.i.i193, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, label %bb.cq, !prof !37

bb.cq:                                            ; preds = %._crit_edge490
  %i.jv = add i64 %i.jt, 1152920405095219200
  %i.jw = and i64 %i.jv, 1152920405095219200      ; 2 uses
  %i.jx = and i64 %i.jt, -1152920405095219201
  %i.jy = or disjoint i64 %i.jw, %i.jx
  store i64 %i.jy, ptr %i.jc, align 8
  %i.jz = icmp eq i64 %i.jw, 0
  br i1 %i.jz, label %bb.cr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195, !prof !37

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit195: ; preds = %._crit_edge490, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.kc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0418.0492) #26 ; 2 uses
  %.not446 = icmp eq ptr %i.kc, %i.w
  br i1 %.not446, label %._crit_edge495, label %.lr.ph494

bb.ct:                                            ; preds = %bb.cp
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255
  %.sroa.0414.0489 = phi ptr [ %i.ms, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255 ], [ %i.jq, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit192 ] ; 2 uses
  store ptr %i.jc, ptr %26, align 8, !tbaa !26
  %i.ke = load i64, ptr %i.jc, align 8            ; 3 uses
  %i.kf = lshr i64 %i.ke, 40
  %i.kg = trunc nuw nsw i64 %i.kf to i32
  %i.kh = and i32 %i.kg, 1048575                  ; 3 uses
  %i.ki = icmp samesign ult i32 %i.kh, 1048574
  br i1 %i.ki, label %bb.cu, label %bb.cv, !prof !59

bb.cu:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit
  %i.kj = add nuw nsw i32 %i.kh, 1
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.kk, 40
  %i.km = and i64 %i.ke, -1152920405095219201
  %i.kn = or i64 %i.kl, %i.km
  store i64 %i.kn, ptr %i.jc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242

bb.cv:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit
  %i.ko = icmp eq i32 %i.kh, 1048574
  br i1 %i.ko, label %bb.cw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242, !prof !37

bb.cw:                                            ; preds = %bb.cv
  %i.kp = or i64 %i.ke, 1152920405095219200
  store i64 %i.kp, ptr %i.jc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242 unwind label %bb.dn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242: ; preds = %bb.cv, %bb.cu, %bb.cw
  %i.kq = load ptr, ptr %.sroa.0414.0489, align 8, !tbaa !26 ; 8 uses
  store ptr %i.kq, ptr %27, align 8, !tbaa !26
  %i.kr = load i64, ptr %i.kq, align 8            ; 3 uses
  %i.ks = lshr i64 %i.kr, 40
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = and i32 %i.kt, 1048575                  ; 3 uses
  %i.kv = icmp samesign ult i32 %i.ku, 1048574
  br i1 %i.kv, label %bb.cx, label %bb.cy, !prof !59

bb.cx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242
  %i.kw = add nuw nsw i32 %i.ku, 1
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 40
  %i.kz = and i64 %i.kr, -1152920405095219201
  %i.la = or i64 %i.ky, %i.kz
  store i64 %i.la, ptr %i.kq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244

bb.cy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit242
  %i.lb = icmp eq i32 %i.ku, 1048574
  br i1 %i.lb, label %bb.cz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244, !prof !37

bb.cz:                                            ; preds = %bb.cy
  %i.lc = or i64 %i.kr, 1152920405095219200
  store i64 %i.lc, ptr %i.kq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244 unwind label %bb.do

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244: ; preds = %bb.cy, %bb.cx, %bb.cz
  %i.ld = load ptr, ptr %0, align 8, !tbaa !26    ; 5 uses
  store ptr %i.ld, ptr %28, align 8, !tbaa !26
  %i.le = load i64, ptr %i.ld, align 8            ; 3 uses
  %i.lf = lshr i64 %i.le, 40
  %i.lg = trunc nuw nsw i64 %i.lf to i32
  %i.lh = and i32 %i.lg, 1048575                  ; 3 uses
  %i.li = icmp samesign ult i32 %i.lh, 1048574
  br i1 %i.li, label %bb.da, label %bb.db, !prof !59

bb.da:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244
  %i.lj = add nuw nsw i32 %i.lh, 1
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = shl nuw nsw i64 %i.lk, 40
  %i.lm = and i64 %i.le, -1152920405095219201
  %i.ln = or i64 %i.ll, %i.lm
  store i64 %i.ln, ptr %i.ld, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246

bb.db:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit244
  %i.lo = icmp eq i32 %i.lh, 1048574
  br i1 %i.lo, label %bb.dc, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246, !prof !37

bb.dc:                                            ; preds = %bb.db
  %i.lp = or i64 %i.le, 1152920405095219200
  store i64 %i.lp, ptr %i.ld, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ld)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246 unwind label %bb.dp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246: ; preds = %bb.db, %bb.da, %bb.dc
  invoke void @_ZN4cvc58internal6theory11quantifiers29CegisUnifEnumDecisionStrategy20registerEvalPtAtSizeENS0_12NodeTemplateILb1EEES5_S5_j(ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 %27, ptr noundef nonnull align 8 %28, i32 noundef %i.t)
          to label %bb.dd unwind label %bb.dq

bb.dd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246
  %i.lq = load ptr, ptr %28, align 8, !tbaa !26   ; 3 uses
  %i.lr = load i64, ptr %i.lq, align 8            ; 3 uses
  %i.ls = and i64 %i.lr, 1152920405095219200
  %.not.i.i247 = icmp eq i64 %i.ls, 1152920405095219200
  br i1 %.not.i.i247, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, label %bb.de, !prof !37

bb.de:                                            ; preds = %bb.dd
  %i.lt = add i64 %i.lr, 1152920405095219200
  %i.lu = and i64 %i.lt, 1152920405095219200      ; 2 uses
  %i.lv = and i64 %i.lr, -1152920405095219201
  %i.lw = or disjoint i64 %i.lu, %i.lv
  store i64 %i.lw, ptr %i.lq, align 8
  %i.lx = icmp eq i64 %i.lu, 0
  br i1 %i.lx, label %bb.df, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, !prof !37

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249 unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  %i.lz = extractvalue { ptr, i32 } %i.ly, 0
  call void @__clang_call_terminate(ptr %i.lz) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249: ; preds = %bb.dd, %bb.de, %bb.df
  %i.ma = load i64, ptr %i.kq, align 8            ; 3 uses
  %i.mb = and i64 %i.ma, 1152920405095219200
  %.not.i.i250 = icmp eq i64 %i.mb, 1152920405095219200
  br i1 %.not.i.i250, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, label %bb.dh, !prof !37

bb.dh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249
  %i.mc = add i64 %i.ma, 1152920405095219200
  %i.md = and i64 %i.mc, 1152920405095219200      ; 2 uses
  %i.me = and i64 %i.ma, -1152920405095219201
  %i.mf = or disjoint i64 %i.md, %i.me
  store i64 %i.mf, ptr %i.kq, align 8
  %i.mg = icmp eq i64 %i.md, 0
  br i1 %i.mg, label %bb.di, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, !prof !37

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, %bb.dh, %bb.di
  %i.mj = load i64, ptr %i.jc, align 8            ; 3 uses
  %i.mk = and i64 %i.mj, 1152920405095219200
  %.not.i.i253 = icmp eq i64 %i.mk, 1152920405095219200
  br i1 %.not.i.i253, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255, label %bb.dk, !prof !37

bb.dk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252
  %i.ml = add i64 %i.mj, 1152920405095219200
  %i.mm = and i64 %i.ml, 1152920405095219200      ; 2 uses
  %i.mn = and i64 %i.mj, -1152920405095219201
  %i.mo = or disjoint i64 %i.mm, %i.mn
  store i64 %i.mo, ptr %i.jc, align 8
  %i.mp = icmp eq i64 %i.mm, 0
  br i1 %i.mp, label %bb.dl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255, !prof !37

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  call void @__clang_call_terminate(ptr %i.mr) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit255: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, %bb.dk, %bb.dl
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0414.0489, i64 8 ; 2 uses
  %.not447 = icmp eq ptr %i.ms, %i.js
  br i1 %.not447, label %._crit_edge490, label %_ZN4cvc58internal11Cvc5ostreamlsIA2_cEERS1_RKT_.exit

bb.dn:                                            ; preds = %bb.cw
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.do:                                            ; preds = %bb.cz
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dp:                                            ; preds = %bb.dc
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit246
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #22
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pn116 = phi { ptr, i32 } [ %i.mw, %bb.dq ], [ %i.mv, %bb.dp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #22
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.do
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %bb.dr ], [ %i.mu, %bb.do ]
end_hunk_0
