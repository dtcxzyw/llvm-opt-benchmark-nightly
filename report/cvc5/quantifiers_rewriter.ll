Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/quantifiers_rewriter?download=true
inline.NumInlined: 6064
inline.NumDeleted: 1530
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4cvc58internal6theory11quantifiers19QuantifiersRewriter20computeProcessTerms2ERKNS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EES5_RSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEENS0_7options16IteLiftQuantModeEPNS0_19TConvProofGeneratorE:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.go = add i64 %i.gm, 1152920405095219200
  %i.gp = and i64 %i.go, 1152920405095219200      ; 2 uses
  %i.gq = and i64 %i.gm, -1152920405095219201
  %i.gr = or disjoint i64 %i.gp, %i.gq
  store i64 %i.gr, ptr %i.gk, align 8
  %i.gs = icmp eq i64 %i.gp, 0
  br i1 %i.gs, label %bb.bl, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !54

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.bt

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.gt = load ptr, ptr %32, align 8, !tbaa !53   ; 5 uses
  store ptr %i.gt, ptr %0, align 8, !tbaa !53
  %i.gu = load i64, ptr %i.gt, align 8            ; 3 uses
  %i.gv = lshr i64 %i.gu, 40
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = and i32 %i.gw, 1048575                  ; 3 uses
  %i.gy = icmp samesign ult i32 %i.gx, 1048574
  br i1 %i.gy, label %bb.bm, label %bb.bn, !prof !55

bb.bm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.gz = add nuw nsw i32 %i.gx, 1
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 40
  %i.hc = and i64 %i.gu, -1152920405095219201
  %i.hd = or i64 %i.hb, %i.hc
  store i64 %i.hd, ptr %i.gt, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.bn:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.he = icmp eq i32 %i.gx, 1048574
  br i1 %i.he, label %bb.bo, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !54

bb.bo:                                            ; preds = %bb.bn
  %i.hf = or i64 %i.gu, 1152920405095219200
  store i64 %i.hf, ptr %i.gt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.bt

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.bn, %bb.bm, %bb.bi, %bb.bo
  %i.hg = load ptr, ptr %32, align 8, !tbaa !53   ; 3 uses
  %i.hh = load i64, ptr %i.hg, align 8            ; 3 uses
  %i.hi = and i64 %i.hh, 1152920405095219200
  %.not.i.i202 = icmp eq i64 %i.hi, 1152920405095219200
  br i1 %.not.i.i202, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit204, label %bb.bp, !prof !54

bb.bp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.hj = add i64 %i.hh, 1152920405095219200
  %i.hk = and i64 %i.hj, 1152920405095219200      ; 2 uses
  %i.hl = and i64 %i.hh, -1152920405095219201
  %i.hm = or disjoint i64 %i.hk, %i.hl
  store i64 %i.hm, ptr %i.hg, align 8
  %i.hn = icmp eq i64 %i.hk, 0
  br i1 %i.hn, label %bb.bq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit204, !prof !54

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit204 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit204: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210

bb.bs:                                            ; preds = %bb.bg
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body196

bb.bt:                                            ; preds = %bb.bo, %bb.bl
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #22
  br label %.body196

.body196:                                         ; preds = %bb.bs, %bb.bh, %bb.bt
  %.pn116 = phi { ptr, i32 } [ %i.hr, %bb.bt ], [ %i.hq, %bb.bs ], [ %lpad.phi.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.ow

bb.bu:                                            ; preds = %bb.an
  %.not.i205 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i205, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210, label %bb.bv, !prof !54

bb.bv:                                            ; preds = %bb.bu
  %i.hs = load i64, ptr %i.ed, align 8            ; 3 uses
  %i.ht = and i64 %i.hs, 1152920405095219200
  %.not.i.i206 = icmp eq i64 %i.ht, 1152920405095219200
  br i1 %.not.i.i206, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i207, label %bb.bw, !prof !54

bb.bw:                                            ; preds = %bb.bv
  %i.hu = add i64 %i.hs, 1152920405095219200
  %i.hv = and i64 %i.hu, 1152920405095219200      ; 2 uses
  %i.hw = and i64 %i.hs, -1152920405095219201
  %i.hx = or disjoint i64 %i.hv, %i.hw
  store i64 %i.hx, ptr %i.ed, align 8
  %i.hy = icmp eq i64 %i.hv, 0
  br i1 %i.hy, label %bb.bx, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i207, !prof !54

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i207 unwind label %bb.bc

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i207: ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.hz = load ptr, ptr %4, align 8, !tbaa !53    ; 5 uses
  store ptr %i.hz, ptr %0, align 8, !tbaa !53
  %i.ia = load i64, ptr %i.hz, align 8            ; 3 uses
  %i.ib = lshr i64 %i.ia, 40
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = and i32 %i.ic, 1048575                  ; 3 uses
  %i.ie = icmp samesign ult i32 %i.id, 1048574
  br i1 %i.ie, label %bb.by, label %bb.bz, !prof !55

bb.by:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i207
  %i.if = add nuw nsw i32 %i.id, 1
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw nsw i64 %i.ig, 40
  %i.ii = and i64 %i.ia, -1152920405095219201
  %i.ij = or i64 %i.ih, %i.ii
  store i64 %i.ij, ptr %i.hz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210

bb.bz:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i207
  %i.ik = icmp eq i32 %i.id, 1048574
  br i1 %i.ik, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210, !prof !54

bb.ca:                                            ; preds = %bb.bz
  %i.il = or i64 %i.ia, 1152920405095219200
  store i64 %i.il, ptr %i.hz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210 unwind label %bb.bc

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210: ; preds = %bb.bz, %bb.by, %bb.bu, %bb.ca, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit204
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.im = load ptr, ptr %0, align 8, !tbaa !53    ; 5 uses
  store ptr %i.im, ptr %33, align 8, !tbaa !53
  %i.in = load i64, ptr %i.im, align 8            ; 3 uses
  %i.io = lshr i64 %i.in, 40
  %i.ip = trunc nuw nsw i64 %i.io to i32
  %i.iq = and i32 %i.ip, 1048575                  ; 3 uses
  %i.ir = icmp samesign ult i32 %i.iq, 1048574
  br i1 %i.ir, label %bb.cb, label %bb.cc, !prof !55

bb.cb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210
  %i.is = add nuw nsw i32 %i.iq, 1
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 40
  %i.iv = and i64 %i.in, -1152920405095219201
  %i.iw = or i64 %i.iu, %i.iv
  store i64 %i.iw, ptr %i.im, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit212

bb.cc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit210
  %i.ix = icmp eq i32 %i.iq, 1048574
  br i1 %i.ix, label %bb.cd, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit212, !prof !54

bb.cd:                                            ; preds = %bb.cc
  %i.iy = or i64 %i.in, 1152920405095219200
  store i64 %i.iy, ptr %i.im, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit212 unwind label %bb.ce

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit212: ; preds = %bb.cc, %bb.cb, %bb.cd
  %i.iz = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i64, ptr %i.ja, align 8            ; 2 uses
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = and i32 %i.jc, 1023                     ; 2 uses
  %i.je = icmp eq i32 %i.jd, 5
  %i.jf = icmp ne i32 %6, 0
  %or.cond = and i1 %i.jf, %i.je
  br i1 %or.cond, label %.preheader, label %bb.ho

.preheader:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit212
  %i.jg = icmp eq i32 %6, 2
  %i.jh = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 8 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  br label %.backedge

bb.ce:                                            ; preds = %bb.cd
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ov

bb.cf:                                            ; preds = %bb.om, %bb.oj, %.critedge.i, %bb.nq
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ou

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.old = phi i1 [ true, %.preheader ], [ false, %.backedge.backedge ] ; 2 uses
  %.070611 = phi i64 [ 0, %.preheader ], [ 1, %.backedge.backedge ] ; 6 uses
  %i.jl = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1072 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !noalias !1072
  %i.jo = trunc i64 %i.jn to i32
  %i.jp = and i32 %i.jo, 1023                     ; 2 uses
  %i.jq = icmp eq i32 %i.jp, 1023
  %i.jr = select i1 %i.jq, i32 -1, i32 %i.jp
  %i.js = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.jr)
          to label %.noexc241 unwind label %bb.dk

.noexc241:                                        ; preds = %.backedge
  %i.jt = icmp eq i32 %i.js, 2
  %i.ju = zext i1 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.070611
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.ju
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !56, !noalias !1072 ; 8 uses
  %i.jz = load i64, ptr %i.jy, align 8, !noalias !1072 ; 4 uses
  %i.ka = lshr i64 %i.jz, 40
  %i.kb = trunc nuw nsw i64 %i.ka to i32
  %i.kc = and i32 %i.kb, 1048575                  ; 3 uses
  %i.kd = icmp samesign ult i32 %i.kc, 1048574
  br i1 %i.kd, label %bb.cg, label %bb.ch, !prof !55

bb.cg:                                            ; preds = %.noexc241
  %i.ke = add nuw nsw i32 %i.kc, 1
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = shl nuw nsw i64 %i.kf, 40
  %i.kh = and i64 %i.jz, -1152920405095219201
  %i.ki = or i64 %i.kg, %i.kh                     ; 2 uses
  store i64 %i.ki, ptr %i.jy, align 8, !noalias !1072
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.ch:                                            ; preds = %.noexc241
  %i.kj = icmp eq i32 %i.kc, 1048574
  br i1 %i.kj, label %bb.ci, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !54

bb.ci:                                            ; preds = %bb.ch
  %i.kk = or i64 %i.jz, 1152920405095219200
  store i64 %i.kk, ptr %i.jy, align 8, !noalias !1072
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jy)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge unwind label %bb.dk

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge: ; preds = %bb.ci
  %.pre626 = load i64, ptr %i.jy, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge, %bb.ch, %bb.cg
  %i.kl = phi i64 [ %.pre626, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge ], [ %i.jz, %bb.ch ], [ %i.ki, %bb.cg ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kn = load i64, ptr %i.km, align 8
  %i.ko = and i64 %i.kn, 1023
  %i.kp = icmp eq i64 %i.ko, 25
  %i.kq = and i64 %i.kl, 1152920405095219200
  %.not.i.i243 = icmp eq i64 %i.kq, 1152920405095219200
  br i1 %.not.i.i243, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245, label %bb.cj, !prof !54

bb.cj:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.kr = add i64 %i.kl, 1152920405095219200
  %i.ks = and i64 %i.kr, 1152920405095219200      ; 2 uses
  %i.kt = and i64 %i.kl, -1152920405095219201
  %i.ku = or disjoint i64 %i.ks, %i.kt
  store i64 %i.ku, ptr %i.jy, align 8
  %i.kv = icmp eq i64 %i.ks, 0
  br i1 %i.kv, label %bb.ck, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245, !prof !54

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kw = landingpad { ptr, i32 }
          catch ptr null
  %i.kx = extractvalue { ptr, i32 } %i.kw, 0
  call void @__clang_call_terminate(ptr %i.kx) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, %bb.cj, %bb.ck
  br i1 %i.kp, label %bb.cm, label %bb.hn

bb.cm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %61 = trunc nuw i64 %.070611 to i1
  br i1 %61, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.ky = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1073 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !noalias !1073
  %i.lb = trunc i64 %i.la to i32
  %i.lc = and i32 %i.lb, 1023                     ; 2 uses
  %i.ld = icmp eq i32 %i.lc, 1023
  %i.le = select i1 %i.ld, i32 -1, i32 %i.lc
  %i.lf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.le)
          to label %.noexc247 unwind label %bb.dl

.noexc247:                                        ; preds = %bb.cn
  %i.lg = icmp eq i32 %i.lf, 2
  %spec.select.i.i246 = select i1 %i.lg, i64 2, i64 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %spec.select.i.i246
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !56, !noalias !1073 ; 4 uses
  store ptr %i.lj, ptr %34, align 8, !tbaa !53, !alias.scope !1073
  %i.lk = load i64, ptr %i.lj, align 8, !noalias !1073 ; 3 uses
  %i.ll = lshr i64 %i.lk, 40
  %i.lm = trunc nuw nsw i64 %i.ll to i32
  %i.ln = and i32 %i.lm, 1048575                  ; 3 uses
  %i.lo = icmp samesign ult i32 %i.ln, 1048574
  br i1 %i.lo, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249.sink.split, label %bb.co, !prof !55

bb.co:                                            ; preds = %.noexc247
  %i.lp = icmp eq i32 %i.ln, 1048574
  br i1 %i.lp, label %.invoke, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249, !prof !54

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.lq = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1074 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !1074
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = and i32 %i.lt, 1023                     ; 2 uses
  %i.lv = icmp eq i32 %i.lu, 1023
  %i.lw = select i1 %i.lv, i32 -1, i32 %i.lu
  %i.lx = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.lw)
          to label %.noexc251 unwind label %bb.dl

.noexc251:                                        ; preds = %bb.cp
  %i.ly = icmp eq i32 %i.lx, 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ma = zext i1 %i.ly to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ma
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !56, !noalias !1074 ; 4 uses
  store ptr %i.mc, ptr %34, align 8, !tbaa !53, !alias.scope !1074
  %i.md = load i64, ptr %i.mc, align 8, !noalias !1074 ; 3 uses
  %i.me = lshr i64 %i.md, 40
  %i.mf = trunc nuw nsw i64 %i.me to i32
  %i.mg = and i32 %i.mf, 1048575                  ; 3 uses
  %i.mh = icmp samesign ult i32 %i.mg, 1048574
  br i1 %i.mh, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249.sink.split, label %bb.cq, !prof !55

bb.cq:                                            ; preds = %.noexc251
  %i.mi = icmp eq i32 %i.mg, 1048574
  br i1 %i.mi, label %.invoke, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249, !prof !54

.invoke:                                          ; preds = %bb.cq, %bb.co
  %.sink769 = phi i64 [ %i.lk, %bb.co ], [ %i.md, %bb.cq ]
  %.sink768 = phi ptr [ %i.lj, %bb.co ], [ %i.mc, %bb.cq ] ; 2 uses
  %i.mj = or i64 %.sink769, 1152920405095219200
  store i64 %i.mj, ptr %.sink768, align 8, !noalias !92
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink768)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249 unwind label %bb.dl

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249.sink.split: ; preds = %.noexc251, %.noexc247
  %.sink765 = phi i32 [ %i.ln, %.noexc247 ], [ %i.mg, %.noexc251 ]
  %.sink = phi i64 [ %i.lk, %.noexc247 ], [ %i.md, %.noexc251 ]
  %.sink760 = phi ptr [ %i.lj, %.noexc247 ], [ %i.mc, %.noexc251 ]
  %i.mk = add nuw nsw i32 %.sink765, 1
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = shl nuw nsw i64 %i.ml, 40
  %i.mn = and i64 %.sink, -1152920405095219201
  %i.mo = or i64 %i.mm, %i.mn
  store i64 %i.mo, ptr %.sink760, align 8, !noalias !92
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249: ; preds = %.invoke, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249.sink.split, %bb.cq, %bb.co
  %i.mp = load ptr, ptr %34, align 8, !tbaa !53
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = and i64 %i.mr, 1023
  %.not = icmp eq i64 %i.ms, 25
  br i1 %.not, label %bb.hh, label %bb.cr

bb.cr:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit249
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.mt = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1075 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !noalias !1075
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = and i32 %i.mw, 1023                     ; 2 uses
  %i.my = icmp eq i32 %i.mx, 1023
  %i.mz = select i1 %i.my, i32 -1, i32 %i.mx
  %i.na = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.mz)
          to label %.noexc255 unwind label %bb.dm

.noexc255:                                        ; preds = %bb.cr
  %i.nb = icmp eq i32 %i.na, 2
  %i.nc = zext i1 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %.070611
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nc
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !56, !noalias !1075 ; 10 uses
  store ptr %i.ng, ptr %37, align 8, !tbaa !53, !alias.scope !1075
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !1075 ; 3 uses
  %i.ni = lshr i64 %i.nh, 40
  %i.nj = trunc nuw nsw i64 %i.ni to i32
  %i.nk = and i32 %i.nj, 1048575                  ; 3 uses
  %i.nl = icmp samesign ult i32 %i.nk, 1048574
  br i1 %i.nl, label %bb.cs, label %bb.ct, !prof !55

bb.cs:                                            ; preds = %.noexc255
  %i.nm = add nuw nsw i32 %i.nk, 1
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 40
  %i.np = and i64 %i.nh, -1152920405095219201
  %i.nq = or i64 %i.no, %i.np
  store i64 %i.nq, ptr %i.ng, align 8, !noalias !1075
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit257

bb.ct:                                            ; preds = %.noexc255
  %i.nr = icmp eq i32 %i.nk, 1048574
  br i1 %i.nr, label %bb.cu, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit257, !prof !54

bb.cu:                                            ; preds = %bb.ct
  %i.ns = or i64 %i.nh, 1152920405095219200
  store i64 %i.ns, ptr %i.ng, align 8, !noalias !1075
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ng)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit257 unwind label %bb.dm

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit257: ; preds = %bb.ct, %bb.cs, %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !noalias !1076
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = and i32 %i.nv, 1023                     ; 2 uses
  %i.nx = icmp eq i32 %i.nw, 1023
  %i.ny = select i1 %i.nx, i32 -1, i32 %i.nw
  %i.nz = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ny)
          to label %.noexc259 unwind label %bb.dn

.noexc259:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit257
  %i.oa = icmp eq i32 %i.nz, 2
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.oc = zext i1 %i.oa to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !56, !noalias !1076 ; 5 uses
  store ptr %i.oe, ptr %36, align 8, !tbaa !53, !alias.scope !1076
  %i.of = load i64, ptr %i.oe, align 8, !noalias !1076 ; 3 uses
  %i.og = lshr i64 %i.of, 40
  %i.oh = trunc nuw nsw i64 %i.og to i32
  %i.oi = and i32 %i.oh, 1048575                  ; 3 uses
  %i.oj = icmp samesign ult i32 %i.oi, 1048574
  br i1 %i.oj, label %bb.cv, label %bb.cw, !prof !55

bb.cv:                                            ; preds = %.noexc259
  %i.ok = add nuw nsw i32 %i.oi, 1
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = shl nuw nsw i64 %i.ol, 40
  %i.on = and i64 %i.of, -1152920405095219201
  %i.oo = or i64 %i.om, %i.on
  store i64 %i.oo, ptr %i.oe, align 8, !noalias !1076
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit261

bb.cw:                                            ; preds = %.noexc259
  %i.op = icmp eq i32 %i.oi, 1048574
  br i1 %i.op, label %bb.cx, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit261, !prof !54

bb.cx:                                            ; preds = %bb.cw
  %i.oq = or i64 %i.of, 1152920405095219200
  store i64 %i.oq, ptr %i.oe, align 8, !noalias !1076
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oe)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit261 unwind label %bb.dn

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit261: ; preds = %bb.cw, %bb.cv, %bb.cx
  %i.or = load ptr, ptr %i.jh, align 8, !tbaa !59 ; 3 uses
  %i.os = load ptr, ptr %i.ji, align 8, !tbaa !60
  %.not.i.i262 = icmp eq ptr %i.or, %i.os
  br i1 %.not.i.i262, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit261
  %i.ot = load ptr, ptr %36, align 8, !tbaa !53   ; 5 uses
  store ptr %i.ot, ptr %i.or, align 8, !tbaa !53
  %i.ou = load i64, ptr %i.ot, align 8            ; 3 uses
  %i.ov = lshr i64 %i.ou, 40
  %i.ow = trunc nuw nsw i64 %i.ov to i32
  %i.ox = and i32 %i.ow, 1048575                  ; 3 uses
  %i.oy = icmp samesign ult i32 %i.ox, 1048574
  br i1 %i.oy, label %bb.cz, label %bb.da, !prof !55

bb.cz:                                            ; preds = %bb.cy
end_hunk_0
