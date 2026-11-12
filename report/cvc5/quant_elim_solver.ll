Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/quant_elim_solver?download=true
inline.NumInlined: 945
inline.NumDeleted: 463
begin_hunk_0_@_ZN4cvc58internal3smt15QuantElimSolver24getQuantifierEliminationENS0_12NodeTemplateILb1EEEbb:bb.a
  br i1 %i.fe, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209, !prof !25

bb.ar:                                            ; preds = %bb.aq
  %i.ff = or i64 %i.eu, 1152920405095219200
  store i64 %i.ff, ptr %i.et, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209 unwind label %bb.cc

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209: ; preds = %bb.aq, %bb.ap, %bb.al, %bb.ar
  %i.fg = load ptr, ptr %21, align 8, !tbaa !22   ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8            ; 3 uses
  %i.fi = and i64 %i.fh, 1152920405095219200
  %.not.i.i210 = icmp eq i64 %i.fi, 1152920405095219200
  br i1 %.not.i.i210, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212, label %bb.as, !prof !25

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209
  %i.fj = add i64 %i.fh, 1152920405095219200
  %i.fk = and i64 %i.fj, 1152920405095219200      ; 2 uses
  %i.fl = and i64 %i.fh, -1152920405095219201
  %i.fm = or disjoint i64 %i.fk, %i.fl
  store i64 %i.fm, ptr %i.fg, align 8
  %i.fn = icmp eq i64 %i.fk, 0
  br i1 %i.fn, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212, !prof !25

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209, %bb.as, %bb.at
  %i.fq = load ptr, ptr %22, align 8, !tbaa !22   ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8            ; 3 uses
  %i.fs = and i64 %i.fr, 1152920405095219200
  %.not.i.i213 = icmp eq i64 %i.fs, 1152920405095219200
  br i1 %.not.i.i213, label %bb.ay, label %bb.av, !prof !25

bb.av:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212
  %i.ft = add i64 %i.fr, 1152920405095219200
  %i.fu = and i64 %i.ft, 1152920405095219200      ; 2 uses
  %i.fv = and i64 %i.fr, -1152920405095219201
  %i.fw = or disjoint i64 %i.fu, %i.fv
  store i64 %i.fw, ptr %i.fq, align 8
  %i.fx = icmp eq i64 %i.fu, 0
  br i1 %i.fx, label %bb.aw, label %bb.ay, !prof !25

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #26
  unreachable

bb.ay:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.ga = select i1 %3, ptr @.str.3, ptr @.str.4
  call void @_ZN4cvc58internal6StringC2EPKcb(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull %i.ga, i1 noundef zeroext false)
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_6StringEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %23, ptr noundef nonnull align 8 dereferenceable(3592) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.az unwind label %bb.ce

bb.az:                                            ; preds = %bb.ay
  %i.gb = load ptr, ptr %24, align 8, !tbaa !133  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc58internal6StringD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !134
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #23
  br label %_ZN4cvc58internal6StringD2Ev.exit

_ZN4cvc58internal6StringD2Ev.exit:                ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.gh = load ptr, ptr %23, align 8, !tbaa !22   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !135
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !31, !noalias !135
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef %i.gj, i32 noundef 376)
          to label %.noexc227 unwind label %bb.cg

.noexc227:                                        ; preds = %_ZN4cvc58internal6StringD2Ev.exit
  store ptr %i.gh, ptr %12, align 8, !tbaa !27, !noalias !135
  %i.gk = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull align 8 %12)
          to label %bb.bb unwind label %bb.bc, !noalias !135 ; 0 uses

bb.bb:                                            ; preds = %.noexc227
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %25, ptr noundef nonnull align 8 dereferenceable(124) %11)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.noexc227
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !135
  br label %.body228

bb.bd:                                            ; preds = %bb.bb
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.gm = load ptr, ptr %2, align 8, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = and i64 %i.go, 1023
  %i.gq = icmp ne i64 %i.gp, 370
  %i.gr = zext i1 %i.gq to i8
  store i8 %i.gr, ptr %i.a, align 1, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.gs = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.be, label %bb.bi, !prof !34

bb.be:                                            ; preds = %bb.bd
  %i.gu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i230 = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i230, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.bg unwind label %bb.bh     ; 3 uses

bb.bg:                                            ; preds = %bb.bf
  store i64 1152920405095219200, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false)
  store ptr %i.gv, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body231

bb.bi:                                            ; preds = %bb.bg, %bb.be, %bb.bd
  %i.gy = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  store ptr %i.gy, ptr %26, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.gz = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  store ptr %i.gz, ptr %27, align 8, !tbaa !42
  %i.ha = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store i64 1, ptr %i.ha, align 8, !tbaa !43
  %i.hb = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %27, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hc, align 8, !tbaa !136
  %i.hd = getelementptr inbounds nuw i8, ptr %27, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i8 0, i64 16, i1 false)
  %i.he = load ptr, ptr %2, align 8, !tbaa !22
  store ptr %i.he, ptr %28, align 8, !tbaa !27
  invoke void @_ZN4cvc58internal4expr10getSymbolsENS0_12NodeTemplateILb0EEERSt13unordered_setINS2_ILb1EEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE(ptr noundef nonnull align 8 %28, ptr noundef nonnull align 8 dereferenceable(56) %27)
          to label %bb.bj unwind label %bb.ch

bb.bj:                                            ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !137
  %i.hh = icmp eq i64 %i.hg, 0                    ; 2 uses
  br i1 %i.hh, label %bb.bk, label %bb.ez

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal4SubsE, i64 16), ptr %29, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hi, i8 0, i64 48, i1 false)
  %i.hj = load ptr, ptr %i.j, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.hk = load ptr, ptr %2, align 8, !tbaa !22, !noalias !140 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !140
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = and i32 %i.hn, 1023                     ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 1023
  %i.hq = select i1 %i.hp, i32 -1, i32 %i.ho
  %i.hr = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.hq)
          to label %.noexc234 unwind label %bb.ci

.noexc234:                                        ; preds = %bb.bk
  %i.hs = icmp eq i32 %i.hr, 2
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hu = zext i1 %i.hs to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !23, !noalias !140 ; 11 uses
  store ptr %i.hw, ptr %30, align 8, !tbaa !22, !alias.scope !140
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !140 ; 3 uses
  %i.hy = lshr i64 %i.hx, 40
  %i.hz = trunc nuw nsw i64 %i.hy to i32
  %i.ia = and i32 %i.hz, 1048575                  ; 3 uses
  %i.ib = icmp samesign ult i32 %i.ia, 1048574
  br i1 %i.ib, label %bb.bl, label %bb.bm, !prof !24

bb.bl:                                            ; preds = %.noexc234
  %i.ic = add nuw nsw i32 %i.ia, 1
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 40
  %i.if = and i64 %i.hx, -1152920405095219201
  %i.ig = or i64 %i.ie, %i.if
  store i64 %i.ig, ptr %i.hw, align 8, !noalias !140
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit236

bb.bm:                                            ; preds = %.noexc234
  %i.ih = icmp eq i32 %i.ia, 1048574
  br i1 %i.ih, label %bb.bn, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit236, !prof !25

bb.bn:                                            ; preds = %bb.bm
  %i.ii = or i64 %i.hx, 1152920405095219200
  store i64 %i.ii, ptr %i.hw, align 8, !noalias !140
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hw)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit236 unwind label %bb.ci

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit236: ; preds = %bb.bm, %bb.bl, %bb.bn
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = trunc i64 %i.ik to i32
  %i.im = and i32 %i.il, 1023                     ; 2 uses
  %i.in = icmp eq i32 %i.im, 1023
  %i.io = select i1 %i.in, i32 -1, i32 %i.im
  %i.ip = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.io)
          to label %bb.bo unwind label %.loopexit.split-lp662.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit236
  %i.iq = icmp eq i32 %i.ip, 2
  %spec.select.v.i.i = select i1 %i.iq, i64 32, i64 24 ; 2 uses
  %66 = load i64, ptr %i.ij, align 8
  %67 = lshr i64 %66, 29
  %.idx = and i64 %67, 536870904
  %68 = add nuw nsw i64 %.idx, 24                 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 %68
  %.not658680 = icmp samesign eq i64 %spec.select.v.i.i, %68
  br i1 %.not658680, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bo
  %spec.select.i.i237 = getelementptr inbounds nuw i8, ptr %i.hw, i64 %spec.select.v.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  br label %bb.cj

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264, %bb.bo
  %i.iv = load i64, ptr %i.hw, align 8            ; 3 uses
  %i.iw = and i64 %i.iv, 1152920405095219200
  %.not.i.i239 = icmp eq i64 %i.iw, 1152920405095219200
  br i1 %.not.i.i239, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241, label %bb.bp, !prof !25

bb.bp:                                            ; preds = %._crit_edge
  %i.ix = add i64 %i.iv, 1152920405095219200
  %i.iy = and i64 %i.ix, 1152920405095219200      ; 2 uses
  %i.iz = and i64 %i.iv, -1152920405095219201
  %i.ja = or disjoint i64 %i.iy, %i.iz
  store i64 %i.ja, ptr %i.hw, align 8
  %i.jb = icmp eq i64 %i.iy, 0
  br i1 %i.jb, label %bb.bq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241, !prof !25

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241: ; preds = %._crit_edge, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.je = load ptr, ptr %2, align 8, !tbaa !22, !noalias !141 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !noalias !141
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = and i32 %i.jh, 1023                     ; 2 uses
  %i.jj = icmp eq i32 %i.ji, 1023
  %i.jk = select i1 %i.jj, i32 -1, i32 %i.ji
  %i.jl = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.jk)
          to label %.noexc243 unwind label %bb.ep

.noexc243:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241
  %i.jm = icmp eq i32 %i.jl, 2
  %spec.select.i.i242 = select i1 %i.jm, i64 2, i64 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %spec.select.i.i242
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !23, !noalias !141 ; 5 uses
  store ptr %i.jp, ptr %37, align 8, !tbaa !22, !alias.scope !141
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !141 ; 3 uses
  %i.jr = lshr i64 %i.jq, 40
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = and i32 %i.js, 1048575                  ; 3 uses
  %i.ju = icmp samesign ult i32 %i.jt, 1048574
  br i1 %i.ju, label %bb.bs, label %bb.bt, !prof !24

bb.bs:                                            ; preds = %.noexc243
  %i.jv = add nuw nsw i32 %i.jt, 1
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl nuw nsw i64 %i.jw, 40
  %i.jy = and i64 %i.jq, -1152920405095219201
  %i.jz = or i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %i.jp, align 8, !noalias !141
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245

bb.bt:                                            ; preds = %.noexc243
  %i.ka = icmp eq i32 %i.jt, 1048574
  br i1 %i.ka, label %bb.bu, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245, !prof !25

bb.bu:                                            ; preds = %bb.bt
  %i.kb = or i64 %i.jq, 1152920405095219200
  store i64 %i.kb, ptr %i.jp, align 8, !noalias !141
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jp)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245 unwind label %bb.ep

bb.bv:                                            ; preds = %bb.k, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bw:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit188
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bx:                                            ; preds = %bb.l
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.by:                                            ; preds = %bb.v, %bb.s
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %.body

.body:                                            ; preds = %bb.bx, %bb.o, %bb.by
  %.pn = phi { ptr, i32 } [ %i.kf, %bb.by ], [ %i.ke, %bb.bx ], [ %i.bm, %bb.o ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #24
  br label %bb.bz

bb.bz:                                            ; preds = %.body, %bb.bw
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.kd, %bb.bw ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bv
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bz ], [ %i.kc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.qt

bb.cb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ar, %bb.ao
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #24
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn110 = phi { ptr, i32 } [ %i.kh, %bb.cc ], [ %i.kg, %bb.cb ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.qt

bb.ce:                                            ; preds = %bb.ay
  %i.ki = landingpad { ptr, i32 }
          cleanup
  %i.kj = load ptr, ptr %24, align 8, !tbaa !133  ; 3 uses
  %.not.i.i.i.i246 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i.i.i246, label %_ZN4cvc58internal6StringD2Ev.exit247, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kk = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !134
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kj to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef %i.ko) #23
  br label %_ZN4cvc58internal6StringD2Ev.exit247

_ZN4cvc58internal6StringD2Ev.exit247:             ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.qs

bb.cg:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body228

bb.ch:                                            ; preds = %bb.bi
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.ci:                                            ; preds = %bb.bn, %bb.bk
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.cj:                                            ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264
  %.sroa.0640.0681 = phi ptr [ %spec.select.i.i237, %.lr.ph ], [ %i.oh, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit264 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ks = load ptr, ptr %.sroa.0640.0681, align 8, !tbaa !23, !noalias !142 ; 5 uses
  store ptr %i.ks, ptr %31, align 8, !tbaa !22, !alias.scope !142
  %i.kt = load i64, ptr %i.ks, align 8, !noalias !142 ; 3 uses
  %i.ku = lshr i64 %i.kt, 40
  %i.kv = trunc nuw nsw i64 %i.ku to i32
  %i.kw = and i32 %i.kv, 1048575                  ; 3 uses
  %i.kx = icmp samesign ult i32 %i.kw, 1048574
  br i1 %i.kx, label %bb.ck, label %bb.cl, !prof !24

bb.ck:                                            ; preds = %bb.cj
  %i.ky = add nuw nsw i32 %i.kw, 1
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = shl nuw nsw i64 %i.kz, 40
  %i.lb = and i64 %i.kt, -1152920405095219201
  %i.lc = or i64 %i.la, %i.lb
  store i64 %i.lc, ptr %i.ks, align 8, !noalias !142
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.cl:                                            ; preds = %bb.cj
  %i.ld = icmp eq i32 %i.kw, 1048574
  br i1 %i.ld, label %bb.cm, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !25
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal3smt15QuantElimSolver24getQuantifierEliminationENS0_12NodeTemplateILb1EEEbb:bb.a

bb.ix:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aeb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aea, ptr noundef nonnull @.str.8, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413 unwind label %bb.jh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413: ; preds = %bb.ix
  %i.aec = load ptr, ptr %i.aea, align 8, !tbaa !12
  %i.aed = getelementptr i8, ptr %i.aec, i64 -24
  %i.aee = load i64, ptr %i.aed, align 8
  %i.aef = getelementptr inbounds i8, ptr %i.aea, i64 %i.aee
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 240
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !170 ; 6 uses
  %.not.i.i.i614 = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i.i614, label %bb.iy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i615

bb.iy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc619 unwind label %bb.jh

.noexc619:                                        ; preds = %bb.iy
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i615: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit413
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 56
  %i.aej = load i8, ptr %i.aei, align 8, !tbaa !175
  %.not.i1.i.i616 = icmp eq i8 %i.aej, 0
  br i1 %.not.i1.i.i616, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i615
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 67
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i617

bb.ja:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i615
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aeh)
          to label %.noexc620 unwind label %bb.jh

.noexc620:                                        ; preds = %bb.ja
  %i.aem = load ptr, ptr %i.aeh, align 8, !tbaa !12
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 48
  %i.aeo = load ptr, ptr %i.aen, align 8
  %i.aep = invoke noundef signext i8 %i.aeo(ptr noundef nonnull align 8 dereferenceable(570) %i.aeh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i617 unwind label %bb.jh, !inline_history !122

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i617: ; preds = %.noexc620, %bb.iz
  %.0.i.i.i618 = phi i8 [ %i.ael, %bb.iz ], [ %i.aep, %.noexc620 ]
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aea, i8 noundef signext %.0.i.i.i618)
          to label %.noexc622 unwind label %bb.jh

.noexc622:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i617
  %i.aer = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aeq)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.jh ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc622
  %i.aes = load ptr, ptr %2, align 8, !tbaa !22   ; 5 uses
  store ptr %i.aes, ptr %0, align 8, !tbaa !22
  %i.aet = load i64, ptr %i.aes, align 8          ; 3 uses
  %i.aeu = lshr i64 %i.aet, 40
  %i.aev = trunc nuw nsw i64 %i.aeu to i32
  %i.aew = and i32 %i.aev, 1048575                ; 3 uses
  %i.aex = icmp samesign ult i32 %i.aew, 1048574
  br i1 %i.aex, label %bb.jb, label %bb.jc, !prof !24

bb.jb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aey = add nuw nsw i32 %i.aew, 1
  %i.aez = zext nneg i32 %i.aey to i64
  %i.afa = shl nuw nsw i64 %i.aez, 40
  %i.afb = and i64 %i.aet, -1152920405095219201
  %i.afc = or i64 %i.afa, %i.afb
  store i64 %i.afc, ptr %i.aes, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit416

bb.jc:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.afd = icmp eq i32 %i.aew, 1048574
  br i1 %i.afd, label %bb.jd, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit416, !prof !25

bb.jd:                                            ; preds = %bb.jc
  %i.afe = or i64 %i.aet, 1152920405095219200
  store i64 %i.afe, ptr %i.aes, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aes)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit416 unwind label %bb.jh

bb.je:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit374
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %bb.qq

bb.jf:                                            ; preds = %bb.ig
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %.body377

bb.jg:                                            ; preds = %bb.il
  %i.afh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %48) #24
  br label %.body382

.body382:                                         ; preds = %bb.ik, %bb.ij, %bb.jg
  %.pn130 = phi { ptr, i32 } [ %i.afh, %bb.jg ], [ %i.acm, %bb.ij ], [ %i.acm, %bb.ik ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #24
  br label %.body377

.body377:                                         ; preds = %.body382, %bb.jf, %.body.i
  %.pn130.pn = phi { ptr, i32 } [ %i.acg, %.body.i ], [ %i.afg, %bb.jf ], [ %.pn130, %.body382 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  br label %_ZN4cvc58internal6ResultD2Ev.exit586

bb.jh:                                            ; preds = %.noexc622, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i617, %.noexc620, %bb.ja, %bb.iy, %bb.jd, %bb.ix, %bb.iw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.iv
  %i.afi = landingpad { ptr, i32 }
          cleanup
  br label %bb.qp

bb.ji:                                            ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #24
  %i.afj = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.afk = icmp eq i8 %i.afj, 0
  br i1 %i.afk, label %bb.jj, label %bb.jn, !prof !34

bb.jj:                                            ; preds = %bb.ji
  %i.afl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i417 = icmp eq i32 %i.afl, 0
  br i1 %.not.i.i417, label %bb.jn, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.afm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.jl unwind label %bb.jm     ; 3 uses

bb.jl:                                            ; preds = %bb.jk
  store i64 1152920405095219200, ptr %i.afm, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afn, i8 0, i64 16, i1 false)
  store ptr %i.afm, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.jn

bb.jm:                                            ; preds = %bb.jk
  %i.afo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body418

bb.jn:                                            ; preds = %bb.jl, %bb.jj, %bb.ji
  %i.afp = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  store ptr %i.afp, ptr %51, align 8, !tbaa !22
  %i.afq = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.afr = icmp eq i8 %i.afq, 0
  br i1 %i.afr, label %bb.jo, label %bb.js, !prof !34

bb.jo:                                            ; preds = %bb.jn
  %i.afs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i421 = icmp eq i32 %i.afs, 0
  br i1 %.not.i.i421, label %bb.js, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aft = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.jq unwind label %bb.jr     ; 3 uses

bb.jq:                                            ; preds = %bb.jp
  store i64 1152920405095219200, ptr %i.aft, align 8
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afu, i8 0, i64 16, i1 false)
  store ptr %i.aft, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.js

bb.jr:                                            ; preds = %bb.jp
  %i.afv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body422

bb.js:                                            ; preds = %bb.jq, %bb.jo, %bb.jn
  %i.afw = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  store ptr %i.afw, ptr %0, align 8, !tbaa !22
  br i1 %i.hh, label %bb.ow, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.afx = load ptr, ptr %i.aby, align 8, !tbaa !149, !nonnull !129, !align !130
  %i.afy = invoke noundef ptr @_ZN4cvc58internal3smt9SmtSolver15getTheoryEngineEv(ptr noundef nonnull align 8 dereferenceable(1232) %i.afx)
          to label %bb.ju unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ju:                                            ; preds = %bb.jt
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 184
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !290 ; 2 uses
  invoke void @_ZN4cvc58internal6theory17QuantifiersEngine33getInstantiatedQuantifiedFormulasERSt6vectorINS0_12NodeTemplateILb1EEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(356) %i.aga, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.jv unwind label %.loopexit.split-lp.loopexit.split-lp

bb.jv:                                            ; preds = %bb.ju
  %i.agb = load ptr, ptr %50, align 8, !tbaa !52  ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !52 ; 2 uses
  %.not659682 = icmp eq ptr %i.agb, %i.agd
  br i1 %.not659682, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438, label %.lr.ph685

.lr.ph685:                                        ; preds = %bb.jv, %.critedge185
  %.sroa.0630.0683 = phi ptr [ %i.ait, %.critedge185 ], [ %i.agb, %bb.jv ] ; 5 uses
  %i.age = load ptr, ptr %.sroa.0630.0683, align 8, !tbaa !22
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 8 ; 2 uses
  %i.agg = load i64, ptr %i.agf, align 8
  %i.agh = trunc i64 %i.agg to i32
  %i.agi = and i32 %i.agh, 1023                   ; 2 uses
  %i.agj = icmp eq i32 %i.agi, 1023
  %i.agk = select i1 %i.agj, i32 -1, i32 %i.agi
  %i.agl = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.agk)
          to label %bb.jw unwind label %.loopexit.split-lp.loopexit.split-lp

bb.jw:                                            ; preds = %.lr.ph685
  %i.agm = icmp eq i32 %i.agl, 2
  %69 = load i64, ptr %i.agf, align 8
  %70 = lshr i64 %69, 32
  %71 = and i64 %70, 67108863
  %72 = sext i1 %i.agm to i64
  %73 = add nsw i64 %71, %72
  %74 = and i64 %73, 4294967295
  %i.agn = icmp eq i64 %74, 3
  br i1 %i.agn, label %bb.jx, label %.critedge185

bb.jx:                                            ; preds = %bb.jw
  %i.ago = load ptr, ptr %.sroa.0630.0683, align 8, !tbaa !22, !noalias !291 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  %i.agq = load i64, ptr %i.agp, align 8, !noalias !291
  %i.agr = trunc i64 %i.agq to i32
  %i.ags = and i32 %i.agr, 1023                   ; 2 uses
  %i.agt = icmp eq i32 %i.ags, 1023
  %i.agu = select i1 %i.agt, i32 -1, i32 %i.ags
  %i.agv = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.agu)
          to label %.noexc427 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc427:                                        ; preds = %bb.jx
  %i.agw = icmp eq i32 %i.agv, 2
  %spec.select.i.i426 = select i1 %i.agw, i64 3, i64 2
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ago, i64 24
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %spec.select.i.i426
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !23, !noalias !291 ; 8 uses
  %i.aha = load i64, ptr %i.agz, align 8, !noalias !291 ; 4 uses
  %i.ahb = lshr i64 %i.aha, 40
  %i.ahc = trunc nuw nsw i64 %i.ahb to i32
  %i.ahd = and i32 %i.ahc, 1048575                ; 3 uses
  %i.ahe = icmp samesign ult i32 %i.ahd, 1048574
  br i1 %i.ahe, label %bb.jy, label %bb.jz, !prof !24

bb.jy:                                            ; preds = %.noexc427
  %i.ahf = add nuw nsw i32 %i.ahd, 1
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = shl nuw nsw i64 %i.ahg, 40
  %i.ahi = and i64 %i.aha, -1152920405095219201
  %i.ahj = or i64 %i.ahh, %i.ahi                  ; 2 uses
  store i64 %i.ahj, ptr %i.agz, align 8, !noalias !291
  br label %bb.kb

bb.jz:                                            ; preds = %.noexc427
  %i.ahk = icmp eq i32 %i.ahd, 1048574
  br i1 %i.ahk, label %bb.ka, label %bb.kb, !prof !25

bb.ka:                                            ; preds = %bb.jz
  %i.ahl = or i64 %i.aha, 1152920405095219200
  store i64 %i.ahl, ptr %i.agz, align 8, !noalias !291
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agz)
          to label %._crit_edge696 unwind label %.loopexit.split-lp.loopexit.split-lp

._crit_edge696:                                   ; preds = %bb.ka
  %.pre = load i64, ptr %i.agz, align 8
  br label %bb.kb

bb.kb:                                            ; preds = %._crit_edge696, %bb.jy, %bb.jz
  %i.ahm = phi i64 [ %.pre, %._crit_edge696 ], [ %i.ahj, %bb.jy ], [ %i.aha, %bb.jz ] ; 3 uses
  %i.ahn = load ptr, ptr %25, align 8, !tbaa !22
  %i.aho = icmp eq ptr %i.agz, %i.ahn
  %i.ahp = and i64 %i.ahm, 1152920405095219200
  %.not.i.i430 = icmp eq i64 %i.ahp, 1152920405095219200
  br i1 %.not.i.i430, label %.critedge183, label %bb.kc, !prof !25

bb.kc:                                            ; preds = %bb.kb
  %i.ahq = add i64 %i.ahm, 1152920405095219200
  %i.ahr = and i64 %i.ahq, 1152920405095219200    ; 2 uses
  %i.ahs = and i64 %i.ahm, -1152920405095219201
  %i.aht = or disjoint i64 %i.ahr, %i.ahs
  store i64 %i.aht, ptr %i.agz, align 8
  %i.ahu = icmp eq i64 %i.ahr, 0
  br i1 %i.ahu, label %bb.kd, label %.critedge183, !prof !25

bb.kd:                                            ; preds = %bb.kc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agz)
          to label %.critedge183 unwind label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ahv = landingpad { ptr, i32 }
          catch ptr null
  %i.ahw = extractvalue { ptr, i32 } %i.ahv, 0
  call void @__clang_call_terminate(ptr %i.ahw) #26
  unreachable

.critedge183:                                     ; preds = %bb.kd, %bb.kc, %bb.kb
  br i1 %i.aho, label %bb.kf, label %.critedge185

bb.kf:                                            ; preds = %.critedge183
  %i.ahx = load ptr, ptr %51, align 8, !tbaa !22  ; 4 uses
  %i.ahy = load ptr, ptr %.sroa.0630.0683, align 8, !tbaa !22
  %.not.i433 = icmp eq ptr %i.ahx, %i.ahy
  br i1 %.not.i433, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438, label %bb.kg, !prof !25

bb.kg:                                            ; preds = %bb.kf
  %i.ahz = load i64, ptr %i.ahx, align 8          ; 3 uses
  %i.aia = and i64 %i.ahz, 1152920405095219200
  %.not.i.i434 = icmp eq i64 %i.aia, 1152920405095219200
  br i1 %.not.i.i434, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i435, label %bb.kh, !prof !25

bb.kh:                                            ; preds = %bb.kg
  %i.aib = add i64 %i.ahz, 1152920405095219200
  %i.aic = and i64 %i.aib, 1152920405095219200    ; 2 uses
  %i.aid = and i64 %i.ahz, -1152920405095219201
  %i.aie = or disjoint i64 %i.aic, %i.aid
  store i64 %i.aie, ptr %i.ahx, align 8
  %i.aif = icmp eq i64 %i.aic, 0
  br i1 %i.aif, label %bb.ki, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i435, !prof !25

bb.ki:                                            ; preds = %bb.kh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahx)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i435 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i435: ; preds = %bb.ki, %bb.kh, %bb.kg
  %i.aig = load ptr, ptr %.sroa.0630.0683, align 8, !tbaa !22 ; 5 uses
  store ptr %i.aig, ptr %51, align 8, !tbaa !22
  %i.aih = load i64, ptr %i.aig, align 8          ; 3 uses
  %i.aii = lshr i64 %i.aih, 40
  %i.aij = trunc nuw nsw i64 %i.aii to i32
  %i.aik = and i32 %i.aij, 1048575                ; 3 uses
  %i.ail = icmp samesign ult i32 %i.aik, 1048574
  br i1 %i.ail, label %bb.kj, label %bb.kk, !prof !24

bb.kj:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i435
  %i.aim = add nuw nsw i32 %i.aik, 1
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = shl nuw nsw i64 %i.ain, 40
  %i.aip = and i64 %i.aih, -1152920405095219201
  %i.aiq = or i64 %i.aio, %i.aip
  store i64 %i.aiq, ptr %i.aig, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438

bb.kk:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i435
  %i.air = icmp eq i32 %i.aik, 1048574
  br i1 %i.air, label %bb.kl, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438, !prof !25

bb.kl:                                            ; preds = %bb.kk
  %i.ais = or i64 %i.aih, 1152920405095219200
  store i64 %i.ais, ptr %i.aig, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aig)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438 unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph685, %bb.ka, %bb.jx, %bb.ki, %bb.kl, %bb.jt, %bb.ju
  %lpad.loopexit.split-lp836 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.critedge185:                                     ; preds = %bb.jw, %.critedge183
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0630.0683, i64 8 ; 2 uses
  %.not659 = icmp eq ptr %i.ait, %i.agd
  br i1 %.not659, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438, label %.lr.ph685

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438: ; preds = %.critedge185, %bb.jv, %bb.kl, %bb.kf, %bb.kj, %bb.kk
  %i.aiu = load ptr, ptr %51, align 8, !tbaa !22
  %i.aiv = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.aiw = icmp eq i8 %i.aiv, 0
  br i1 %i.aiw, label %bb.km, label %bb.kq, !prof !34

bb.km:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438
  %i.aix = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  %.not.i.i439 = icmp eq i32 %i.aix, 0
  br i1 %.not.i.i439, label %bb.kq, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aiy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ko unwind label %bb.kp     ; 3 uses

bb.ko:                                            ; preds = %bb.kn
  store i64 1152920405095219200, ptr %i.aiy, align 8
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aiz, i8 0, i64 16, i1 false)
  store ptr %i.aiy, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %bb.kq

bb.kp:                                            ; preds = %bb.kn
  %i.aja = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #24
  br label %.body440

bb.kq:                                            ; preds = %bb.ko, %bb.km, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit438
  %i.ajb = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !23
  %i.ajc = icmp eq ptr %i.aiu, %i.ajb
  br i1 %i.ajc, label %bb.ow, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit456

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit456: ; preds = %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %i.ajd = load ptr, ptr %51, align 8, !tbaa !22  ; 5 uses
  store ptr %i.ajd, ptr %53, align 8, !tbaa !22
  %i.aje = load i64, ptr %i.ajd, align 8          ; 3 uses
  %i.ajf = lshr i64 %i.aje, 40
  %i.ajg = trunc nuw nsw i64 %i.ajf to i32
  %i.ajh = and i32 %i.ajg, 1048575                ; 3 uses
  %i.aji = icmp samesign ult i32 %i.ajh, 1048574
  br i1 %i.aji, label %bb.kr, label %bb.ks, !prof !24

bb.kr:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit456
  %i.ajj = add nuw nsw i32 %i.ajh, 1
  %i.ajk = zext nneg i32 %i.ajj to i64
  %i.ajl = shl nuw nsw i64 %i.ajk, 40
  %i.ajm = and i64 %i.aje, -1152920405095219201
  %i.ajn = or i64 %i.ajl, %i.ajm
  store i64 %i.ajn, ptr %i.ajd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit458

bb.ks:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit456
end_hunk_1
