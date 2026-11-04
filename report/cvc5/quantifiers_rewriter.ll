Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/quantifiers_rewriter?download=true
inline.NumInlined: 6066
inline.NumDeleted: 1530
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4cvc58internal6theory11quantifiers19QuantifiersRewriter20computeProcessTerms2ERKNS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EES5_RSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEENS0_7options16IteLiftQuantModeEPNS0_19TConvProofGeneratorE:bb.a
bb.bg:                                            ; preds = %bb.bf
  %i.gk = load i64, ptr %i.gi, align 8            ; 3 uses
  %i.gl = and i64 %i.gk, 1152920405095219200
  %.not.i.i198 = icmp eq i64 %i.gl, 1152920405095219200
  br i1 %.not.i.i198, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.bh, !prof !54

bb.bh:                                            ; preds = %bb.bg
  %i.gm = add i64 %i.gk, 1152920405095219200
  %i.gn = and i64 %i.gm, 1152920405095219200      ; 2 uses
  %i.go = and i64 %i.gk, -1152920405095219201
  %i.gp = or disjoint i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.gi, align 8
  %i.gq = icmp eq i64 %i.gn, 0
  br i1 %i.gq, label %bb.bi, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !54

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.bq

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.gr = load ptr, ptr %32, align 8, !tbaa !53   ; 5 uses
  store ptr %i.gr, ptr %0, align 8, !tbaa !53
  %i.gs = load i64, ptr %i.gr, align 8            ; 3 uses
  %i.gt = lshr i64 %i.gs, 40
  %i.gu = trunc nuw nsw i64 %i.gt to i32
  %i.gv = and i32 %i.gu, 1048575                  ; 3 uses
  %i.gw = icmp samesign ult i32 %i.gv, 1048574
  br i1 %i.gw, label %bb.bj, label %bb.bk, !prof !55

bb.bj:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.gx = add nuw nsw i32 %i.gv, 1
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = shl nuw nsw i64 %i.gy, 40
  %i.ha = and i64 %i.gs, -1152920405095219201
  %i.hb = or i64 %i.gz, %i.ha
  store i64 %i.hb, ptr %i.gr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.bk:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.hc = icmp eq i32 %i.gv, 1048574
  br i1 %i.hc, label %bb.bl, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !54

bb.bl:                                            ; preds = %bb.bk
  %i.hd = or i64 %i.gs, 1152920405095219200
  store i64 %i.hd, ptr %i.gr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.bq

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.bk, %bb.bj, %bb.bf, %bb.bl
  %i.he = load ptr, ptr %32, align 8, !tbaa !53   ; 3 uses
  %i.hf = load i64, ptr %i.he, align 8            ; 3 uses
  %i.hg = and i64 %i.hf, 1152920405095219200
  %.not.i.i201 = icmp eq i64 %i.hg, 1152920405095219200
  br i1 %.not.i.i201, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit203, label %bb.bm, !prof !54

bb.bm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.hh = add i64 %i.hf, 1152920405095219200
  %i.hi = and i64 %i.hh, 1152920405095219200      ; 2 uses
  %i.hj = and i64 %i.hf, -1152920405095219201
  %i.hk = or disjoint i64 %i.hi, %i.hj
  store i64 %i.hk, ptr %i.he, align 8
  %i.hl = icmp eq i64 %i.hi, 0
  br i1 %i.hl, label %bb.bn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit203, !prof !54

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.he)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit203 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit203: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209

bb.bp:                                            ; preds = %bb.be
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %.body195

bb.bq:                                            ; preds = %bb.bl, %bb.bi
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #22
  br label %.body195

.body195:                                         ; preds = %bb.bp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq
  %.pn116 = phi { ptr, i32 } [ %i.hp, %bb.bq ], [ %i.ho, %bb.bp ], [ %lpad.loopexit.split-lp805, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.ob

bb.br:                                            ; preds = %bb.al
  %.not.i204 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i204, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209, label %bb.bs, !prof !54

bb.bs:                                            ; preds = %bb.br
  %i.hq = load i64, ptr %i.eb, align 8            ; 3 uses
  %i.hr = and i64 %i.hq, 1152920405095219200
  %.not.i.i205 = icmp eq i64 %i.hr, 1152920405095219200
  br i1 %.not.i.i205, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i206, label %bb.bt, !prof !54

bb.bt:                                            ; preds = %bb.bs
  %i.hs = add i64 %i.hq, 1152920405095219200
  %i.ht = and i64 %i.hs, 1152920405095219200      ; 2 uses
  %i.hu = and i64 %i.hq, -1152920405095219201
  %i.hv = or disjoint i64 %i.ht, %i.hu
  store i64 %i.hv, ptr %i.eb, align 8
  %i.hw = icmp eq i64 %i.ht, 0
  br i1 %i.hw, label %bb.bu, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i206, !prof !54

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i206 unwind label %bb.ba

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i206: ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.hx = load ptr, ptr %4, align 8, !tbaa !53    ; 5 uses
  store ptr %i.hx, ptr %0, align 8, !tbaa !53
  %i.hy = load i64, ptr %i.hx, align 8            ; 3 uses
  %i.hz = lshr i64 %i.hy, 40
  %i.ia = trunc nuw nsw i64 %i.hz to i32
  %i.ib = and i32 %i.ia, 1048575                  ; 3 uses
  %i.ic = icmp samesign ult i32 %i.ib, 1048574
  br i1 %i.ic, label %bb.bv, label %bb.bw, !prof !55

bb.bv:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i206
  %i.id = add nuw nsw i32 %i.ib, 1
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 40
  %i.ig = and i64 %i.hy, -1152920405095219201
  %i.ih = or i64 %i.if, %i.ig
  store i64 %i.ih, ptr %i.hx, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209

bb.bw:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i206
  %i.ii = icmp eq i32 %i.ib, 1048574
  br i1 %i.ii, label %bb.bx, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209, !prof !54

bb.bx:                                            ; preds = %bb.bw
  %i.ij = or i64 %i.hy, 1152920405095219200
  store i64 %i.ij, ptr %i.hx, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209 unwind label %bb.ba

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209: ; preds = %bb.bw, %bb.bv, %bb.br, %bb.bx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit203
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.ik = load ptr, ptr %0, align 8, !tbaa !53    ; 5 uses
  store ptr %i.ik, ptr %33, align 8, !tbaa !53
  %i.il = load i64, ptr %i.ik, align 8            ; 3 uses
  %i.im = lshr i64 %i.il, 40
  %i.in = trunc nuw nsw i64 %i.im to i32
  %i.io = and i32 %i.in, 1048575                  ; 3 uses
  %i.ip = icmp samesign ult i32 %i.io, 1048574
  br i1 %i.ip, label %bb.by, label %bb.bz, !prof !55

bb.by:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209
  %i.iq = add nuw nsw i32 %i.io, 1
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = shl nuw nsw i64 %i.ir, 40
  %i.it = and i64 %i.il, -1152920405095219201
  %i.iu = or i64 %i.is, %i.it
  store i64 %i.iu, ptr %i.ik, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit211

bb.bz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit209
  %i.iv = icmp eq i32 %i.io, 1048574
  br i1 %i.iv, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit211, !prof !54

bb.ca:                                            ; preds = %bb.bz
  %i.iw = or i64 %i.il, 1152920405095219200
  store i64 %i.iw, ptr %i.ik, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ik)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit211 unwind label %bb.cb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit211: ; preds = %bb.bz, %bb.by, %bb.ca
  %i.ix = load ptr, ptr %0, align 8, !tbaa !53    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i64, ptr %i.iy, align 8            ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = and i32 %i.ja, 1023                     ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 5
  %i.jd = icmp ne i32 %6, 0
  %or.cond = and i1 %i.jd, %i.jc
  br i1 %or.cond, label %.preheader, label %bb.hf

.preheader:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit211
  %i.je = icmp eq i32 %6, 2
  %i.jf = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 8 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  br label %.backedge

bb.cb:                                            ; preds = %bb.ca
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.oa

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.old = phi i1 [ true, %.preheader ], [ false, %.backedge.backedge ] ; 2 uses
  %.070613 = phi i64 [ 0, %.preheader ], [ 1, %.backedge.backedge ] ; 6 uses
  %i.ji = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1072 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !1072
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = and i32 %i.jl, 1023                     ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 1023
  %i.jo = select i1 %i.jn, i32 -1, i32 %i.jm
  %i.jp = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.jo)
          to label %.noexc240 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc240:                                        ; preds = %.backedge
  %i.jq = icmp eq i32 %i.jp, 2
  %i.jr = zext i1 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.070613
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jr
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !56, !noalias !1072 ; 8 uses
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !1072 ; 4 uses
  %i.jx = lshr i64 %i.jw, 40
  %i.jy = trunc nuw nsw i64 %i.jx to i32
  %i.jz = and i32 %i.jy, 1048575                  ; 3 uses
  %i.ka = icmp samesign ult i32 %i.jz, 1048574
  br i1 %i.ka, label %bb.cc, label %bb.cd, !prof !55

bb.cc:                                            ; preds = %.noexc240
  %i.kb = add nuw nsw i32 %i.jz, 1
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = shl nuw nsw i64 %i.kc, 40
  %i.ke = and i64 %i.jw, -1152920405095219201
  %i.kf = or i64 %i.kd, %i.ke                     ; 2 uses
  store i64 %i.kf, ptr %i.jv, align 8, !noalias !1072
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.cd:                                            ; preds = %.noexc240
  %i.kg = icmp eq i32 %i.jz, 1048574
  br i1 %i.kg, label %bb.ce, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !54

bb.ce:                                            ; preds = %bb.cd
  %i.kh = or i64 %i.jw, 1152920405095219200
  store i64 %i.kh, ptr %i.jv, align 8, !noalias !1072
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge: ; preds = %bb.ce
  %.pre637 = load i64, ptr %i.jv, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge, %bb.cd, %bb.cc
  %i.ki = phi i64 [ %.pre637, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit_crit_edge ], [ %i.jw, %bb.cd ], [ %i.kf, %bb.cc ] ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = and i64 %i.kk, 1023
  %i.km = icmp eq i64 %i.kl, 25
  %i.kn = and i64 %i.ki, 1152920405095219200
  %.not.i.i242 = icmp eq i64 %i.kn, 1152920405095219200
  br i1 %.not.i.i242, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit244, label %bb.cf, !prof !54

bb.cf:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ko = add i64 %i.ki, 1152920405095219200
  %i.kp = and i64 %i.ko, 1152920405095219200      ; 2 uses
  %i.kq = and i64 %i.ki, -1152920405095219201
  %i.kr = or disjoint i64 %i.kp, %i.kq
  store i64 %i.kr, ptr %i.jv, align 8
  %i.ks = icmp eq i64 %i.kp, 0
  br i1 %i.ks, label %bb.cg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit244, !prof !54

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit244 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit244: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, %bb.cf, %bb.cg
  br i1 %i.km, label %bb.ci, label %bb.he

bb.ci:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit244
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %61 = trunc nuw i64 %.070613 to i1
  br i1 %61, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.kv = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1073 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !1073
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = and i32 %i.ky, 1023                     ; 2 uses
  %i.la = icmp eq i32 %i.kz, 1023
  %i.lb = select i1 %i.la, i32 -1, i32 %i.kz
  %i.lc = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.lb)
          to label %.noexc246 unwind label %bb.dg

.noexc246:                                        ; preds = %bb.cj
  %i.ld = icmp eq i32 %i.lc, 2
  %spec.select.i.i245 = select i1 %i.ld, i64 2, i64 1
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %spec.select.i.i245
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !56, !noalias !1073 ; 4 uses
  store ptr %i.lg, ptr %34, align 8, !tbaa !53, !alias.scope !1073
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !1073 ; 3 uses
  %i.li = lshr i64 %i.lh, 40
  %i.lj = trunc nuw nsw i64 %i.li to i32
  %i.lk = and i32 %i.lj, 1048575                  ; 3 uses
  %i.ll = icmp samesign ult i32 %i.lk, 1048574
  br i1 %i.ll, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248.sink.split, label %bb.ck, !prof !55

bb.ck:                                            ; preds = %.noexc246
  %i.lm = icmp eq i32 %i.lk, 1048574
  br i1 %i.lm, label %.invoke, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248, !prof !54

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.ln = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1074 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !1074
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = and i32 %i.lq, 1023                     ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 1023
  %i.lt = select i1 %i.ls, i32 -1, i32 %i.lr
  %i.lu = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.lt)
          to label %.noexc250 unwind label %bb.dg

.noexc250:                                        ; preds = %bb.cl
  %i.lv = icmp eq i32 %i.lu, 2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lx = zext i1 %i.lv to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !56, !noalias !1074 ; 4 uses
  store ptr %i.lz, ptr %34, align 8, !tbaa !53, !alias.scope !1074
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !1074 ; 3 uses
  %i.mb = lshr i64 %i.ma, 40
  %i.mc = trunc nuw nsw i64 %i.mb to i32
  %i.md = and i32 %i.mc, 1048575                  ; 3 uses
  %i.me = icmp samesign ult i32 %i.md, 1048574
  br i1 %i.me, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248.sink.split, label %bb.cm, !prof !55

bb.cm:                                            ; preds = %.noexc250
  %i.mf = icmp eq i32 %i.md, 1048574
  br i1 %i.mf, label %.invoke, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248, !prof !54

.invoke:                                          ; preds = %bb.cm, %bb.ck
  %.sink780 = phi i64 [ %i.lh, %bb.ck ], [ %i.ma, %bb.cm ]
  %.sink779 = phi ptr [ %i.lg, %bb.ck ], [ %i.lz, %bb.cm ] ; 2 uses
  %i.mg = or i64 %.sink780, 1152920405095219200
  store i64 %i.mg, ptr %.sink779, align 8, !noalias !92
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink779)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248 unwind label %bb.dg

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248.sink.split: ; preds = %.noexc250, %.noexc246
  %.sink776 = phi i32 [ %i.lk, %.noexc246 ], [ %i.md, %.noexc250 ]
  %.sink = phi i64 [ %i.lh, %.noexc246 ], [ %i.ma, %.noexc250 ]
  %.sink771 = phi ptr [ %i.lg, %.noexc246 ], [ %i.lz, %.noexc250 ]
  %i.mh = add nuw nsw i32 %.sink776, 1
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl nuw nsw i64 %i.mi, 40
  %i.mk = and i64 %.sink, -1152920405095219201
  %i.ml = or i64 %i.mj, %i.mk
  store i64 %i.ml, ptr %.sink771, align 8, !noalias !92
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248: ; preds = %.invoke, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248.sink.split, %bb.cm, %bb.ck
  %i.mm = load ptr, ptr %34, align 8, !tbaa !53
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = and i64 %i.mo, 1023
  %.not = icmp eq i64 %i.mp, 25
  br i1 %.not, label %bb.gy, label %bb.cn

bb.cn:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.mq = load ptr, ptr %0, align 8, !tbaa !53, !noalias !1075 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !noalias !1075
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = and i32 %i.mt, 1023                     ; 2 uses
  %i.mv = icmp eq i32 %i.mu, 1023
  %i.mw = select i1 %i.mv, i32 -1, i32 %i.mu
  %i.mx = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.mw)
          to label %.noexc254 unwind label %bb.dh

.noexc254:                                        ; preds = %bb.cn
  %i.my = icmp eq i32 %i.mx, 2
  %i.mz = zext i1 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %.070613
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.mz
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !56, !noalias !1075 ; 10 uses
  store ptr %i.nd, ptr %37, align 8, !tbaa !53, !alias.scope !1075
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !1075 ; 3 uses
  %i.nf = lshr i64 %i.ne, 40
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = and i32 %i.ng, 1048575                  ; 3 uses
  %i.ni = icmp samesign ult i32 %i.nh, 1048574
  br i1 %i.ni, label %bb.co, label %bb.cp, !prof !55

bb.co:                                            ; preds = %.noexc254
  %i.nj = add nuw nsw i32 %i.nh, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 40
  %i.nm = and i64 %i.ne, -1152920405095219201
  %i.nn = or i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.nd, align 8, !noalias !1075
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit256

bb.cp:                                            ; preds = %.noexc254
  %i.no = icmp eq i32 %i.nh, 1048574
  br i1 %i.no, label %bb.cq, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit256, !prof !54

bb.cq:                                            ; preds = %bb.cp
  %i.np = or i64 %i.ne, 1152920405095219200
  store i64 %i.np, ptr %i.nd, align 8, !noalias !1075
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nd)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit256 unwind label %bb.dh

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit256: ; preds = %bb.cp, %bb.co, %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nr = load i64, ptr %i.nq, align 8, !noalias !1076
  %i.ns = trunc i64 %i.nr to i32
  %i.nt = and i32 %i.ns, 1023                     ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 1023
  %i.nv = select i1 %i.nu, i32 -1, i32 %i.nt
  %i.nw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.nv)
          to label %.noexc258 unwind label %bb.di

.noexc258:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit256
  %i.nx = icmp eq i32 %i.nw, 2
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nz = zext i1 %i.nx to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !56, !noalias !1076 ; 5 uses
  store ptr %i.ob, ptr %36, align 8, !tbaa !53, !alias.scope !1076
  %i.oc = load i64, ptr %i.ob, align 8, !noalias !1076 ; 3 uses
  %i.od = lshr i64 %i.oc, 40
  %i.oe = trunc nuw nsw i64 %i.od to i32
  %i.of = and i32 %i.oe, 1048575                  ; 3 uses
  %i.og = icmp samesign ult i32 %i.of, 1048574
  br i1 %i.og, label %bb.cr, label %bb.cs, !prof !55

bb.cr:                                            ; preds = %.noexc258
  %i.oh = add nuw nsw i32 %i.of, 1
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = shl nuw nsw i64 %i.oi, 40
  %i.ok = and i64 %i.oc, -1152920405095219201
  %i.ol = or i64 %i.oj, %i.ok
  store i64 %i.ol, ptr %i.ob, align 8, !noalias !1076
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit260

bb.cs:                                            ; preds = %.noexc258
  %i.om = icmp eq i32 %i.of, 1048574
  br i1 %i.om, label %bb.ct, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit260, !prof !54

bb.ct:                                            ; preds = %bb.cs
  %i.on = or i64 %i.oc, 1152920405095219200
  store i64 %i.on, ptr %i.ob, align 8, !noalias !1076
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ob)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit260 unwind label %bb.di

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit260: ; preds = %bb.cs, %bb.cr, %bb.ct
  %i.oo = load ptr, ptr %i.jf, align 8, !tbaa !59 ; 3 uses
  %i.op = load ptr, ptr %i.jg, align 8, !tbaa !60
  %.not.i.i261 = icmp eq ptr %i.oo, %i.op
  br i1 %.not.i.i261, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit260
  %i.oq = load ptr, ptr %36, align 8, !tbaa !53   ; 5 uses
  store ptr %i.oq, ptr %i.oo, align 8, !tbaa !53
  %i.or = load i64, ptr %i.oq, align 8            ; 3 uses
  %i.os = lshr i64 %i.or, 40
  %i.ot = trunc nuw nsw i64 %i.os to i32
  %i.ou = and i32 %i.ot, 1048575                  ; 3 uses
  %i.ov = icmp samesign ult i32 %i.ou, 1048574
  br i1 %i.ov, label %bb.cv, label %bb.cw, !prof !55

bb.cv:                                            ; preds = %bb.cu
end_hunk_0
