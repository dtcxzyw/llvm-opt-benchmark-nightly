Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/strings_rewriter?download=true
inline.NumInlined: 783
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4cvc58internal6theory7strings15StringsRewriter17rewriteStrConvertENS0_12NodeTemplateILb1EEE:bb.a
  %i.gn = or disjoint i64 %i.gl, %i.gm
  store i64 %i.gn, ptr %i.gh, align 8
  %i.go = icmp eq i64 %i.gl, 0
  br i1 %i.go, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96, !prof !36

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit94, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.gr = load ptr, ptr %8, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96
  %i.gs = load ptr, ptr %i.cb, align 8, !tbaa !44
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gv) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit172

bb.aq:                                            ; preds = %._crit_edge193
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6StringD2Ev.exit98

bb.ar:                                            ; preds = %bb.w
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = load ptr, ptr %11, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i97, label %_ZN4cvc58internal6StringD2Ev.exit98, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !44
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hd) #21
  br label %_ZN4cvc58internal6StringD2Ev.exit98

_ZN4cvc58internal6StringD2Ev.exit98:              ; preds = %bb.as, %bb.ar, %bb.aq
  %.pn74 = phi { ptr, i32 } [ %i.gw, %bb.aq ], [ %i.gx, %bb.ar ], [ %i.gx, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ay

bb.at:                                            ; preds = %bb.ab
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %bb.ae
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit90
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn76 = phi { ptr, i32 } [ %i.hg, %bb.av ], [ %i.hf, %bb.au ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.aw ], [ %i.he, %bb.at ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN4cvc58internal6StringD2Ev.exit98
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.ax ], [ %.pn74, %_ZN4cvc58internal6StringD2Ev.exit98 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.hh = load ptr, ptr %8, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i99 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIjSaIjEED2Ev.exit100, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = load ptr, ptr %i.cb, align 8, !tbaa !44
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hl) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit100

_ZNSt6vectorIjSaIjEED2Ev.exit100:                 ; preds = %bb.az, %bb.ay, %bb.v
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.v ], [ %.pn76.pn.pn, %bb.ay ], [ %.pn76.pn.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.gl

bb.ba:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.hm = load ptr, ptr %2, align 8, !tbaa !34, !noalias !170 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !noalias !170
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = and i32 %i.hp, 1023                     ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 1023
  %i.hs = select i1 %i.hr, i32 -1, i32 %i.hq
  %i.ht = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.hs), !noalias !170
  %i.hu = icmp eq i32 %i.ht, 2
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hw = zext i1 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !37, !noalias !170 ; 8 uses
  %i.hz = load i64, ptr %i.hy, align 8, !noalias !170 ; 4 uses
  %i.ia = lshr i64 %i.hz, 40
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = and i32 %i.ib, 1048575                  ; 3 uses
  %i.id = icmp samesign ult i32 %i.ic, 1048574
  br i1 %i.id, label %bb.bb, label %bb.bc, !prof !35

bb.bb:                                            ; preds = %bb.ba
  %i.ie = add nuw nsw i32 %i.ic, 1
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 40
  %i.ih = and i64 %i.hz, -1152920405095219201
  %i.ii = or i64 %i.ig, %i.ih                     ; 2 uses
  store i64 %i.ii, ptr %i.hy, align 8, !noalias !170
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit101

bb.bc:                                            ; preds = %bb.ba
  %i.ij = icmp eq i32 %i.ic, 1048574
  br i1 %i.ij, label %bb.bd, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit101, !prof !36

bb.bd:                                            ; preds = %bb.bc
  %i.ik = or i64 %i.hz, 1152920405095219200
  store i64 %i.ik, ptr %i.hy, align 8, !noalias !170
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hy), !noalias !170
  %.pre = load i64, ptr %i.hy, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit101

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit101: ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.il = phi i64 [ %i.ii, %bb.bb ], [ %i.hz, %bb.bc ], [ %.pre, %bb.bd ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.in = load i64, ptr %i.im, align 8
  %i.io = and i64 %i.in, 1023
  %i.ip = icmp eq i64 %i.io, 319
  %i.iq = and i64 %i.il, 1152920405095219200
  %.not.i.i102 = icmp eq i64 %i.iq, 1152920405095219200
  br i1 %.not.i.i102, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103, label %bb.be, !prof !36

bb.be:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit101
  %i.ir = add i64 %i.il, 1152920405095219200
  %i.is = and i64 %i.ir, 1152920405095219200      ; 2 uses
  %i.it = and i64 %i.il, -1152920405095219201
  %i.iu = or disjoint i64 %i.is, %i.it
  store i64 %i.iu, ptr %i.hy, align 8
  %i.iv = icmp eq i64 %i.is, 0
  br i1 %i.iv, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103, !prof !36

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit101, %bb.be, %bb.bf
  br i1 %i.ip, label %bb.bh, label %bb.de

bb.bh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef %i.f, i32 noundef 319)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.iy = load ptr, ptr %2, align 8, !tbaa !34, !noalias !171 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !noalias !171
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = and i32 %i.jb, 1023                     ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 1023
  %i.je = select i1 %i.jd, i32 -1, i32 %i.jc
  %i.jf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.je)
          to label %.noexc104 unwind label %bb.bp

.noexc104:                                        ; preds = %bb.bh
  %i.jg = icmp eq i32 %i.jf, 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ji = zext i1 %i.jg to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !37, !noalias !171 ; 11 uses
  store ptr %i.jk, ptr %15, align 8, !tbaa !34, !alias.scope !171
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !171 ; 3 uses
  %i.jm = lshr i64 %i.jl, 40
  %i.jn = trunc nuw nsw i64 %i.jm to i32
  %i.jo = and i32 %i.jn, 1048575                  ; 3 uses
  %i.jp = icmp samesign ult i32 %i.jo, 1048574
  br i1 %i.jp, label %bb.bi, label %bb.bj, !prof !35

bb.bi:                                            ; preds = %.noexc104
  %i.jq = add nuw nsw i32 %i.jo, 1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 40
  %i.jt = and i64 %i.jl, -1152920405095219201
  %i.ju = or i64 %i.js, %i.jt
  store i64 %i.ju, ptr %i.jk, align 8, !noalias !171
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106

bb.bj:                                            ; preds = %.noexc104
  %i.jv = icmp eq i32 %i.jo, 1048574
  br i1 %i.jv, label %bb.bk, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106, !prof !36

bb.bk:                                            ; preds = %bb.bj
  %i.jw = or i64 %i.jl, 1152920405095219200
  store i64 %i.jw, ptr %i.jk, align 8, !noalias !171
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jk)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106 unwind label %bb.bp

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106: ; preds = %bb.bj, %bb.bi, %bb.bk
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = and i32 %i.jz, 1023                     ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 1023
  %i.kc = select i1 %i.kb, i32 -1, i32 %i.ka
  %i.kd = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.kc)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106
  %i.ke = icmp eq i32 %i.kd, 2
  %spec.select.v.i.i = select i1 %i.ke, i64 32, i64 24 ; 2 uses
  %30 = load i64, ptr %i.jx, align 8
  %31 = lshr i64 %30, 29
  %.idx = and i64 %31, 536870904
  %32 = add nuw nsw i64 %.idx, 24                 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 %32
  %.not188189 = icmp samesign eq i64 %spec.select.v.i.i, %32
  br i1 %.not188189, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bl
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 %spec.select.v.i.i
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit115, %bb.bl
  %i.kg = load i64, ptr %i.jk, align 8            ; 3 uses
  %i.kh = and i64 %i.kg, 1152920405095219200
  %.not.i.i108 = icmp eq i64 %i.kh, 1152920405095219200
  br i1 %.not.i.i108, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109, label %bb.bm, !prof !36

bb.bm:                                            ; preds = %._crit_edge
  %i.ki = add i64 %i.kg, 1152920405095219200
  %i.kj = and i64 %i.ki, 1152920405095219200      ; 2 uses
  %i.kk = and i64 %i.kg, -1152920405095219201
  %i.kl = or disjoint i64 %i.kj, %i.kk
  store i64 %i.kl, ptr %i.jk, align 8
  %i.km = icmp eq i64 %i.kj, 0
  br i1 %i.km, label %bb.bn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109, !prof !36

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109: ; preds = %._crit_edge, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %19, ptr noundef nonnull align 8 dereferenceable(124) %14)
          to label %bb.cf unwind label %bb.cw

bb.bp:                                            ; preds = %bb.bk, %bb.bh
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit115
  %.sroa.0182.0190 = phi ptr [ %i.mc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit115 ], [ %spec.select.i.i, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.kq = load ptr, ptr %.sroa.0182.0190, align 8, !tbaa !37, !noalias !172 ; 10 uses
  store ptr %i.kq, ptr %16, align 8, !tbaa !34, !alias.scope !172
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !172 ; 3 uses
  %i.ks = lshr i64 %i.kr, 40
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = and i32 %i.kt, 1048575                  ; 3 uses
  %i.kv = icmp samesign ult i32 %i.ku, 1048574
  br i1 %i.kv, label %bb.bq, label %bb.br, !prof !35

bb.bq:                                            ; preds = %.lr.ph
  %i.kw = add nuw nsw i32 %i.ku, 1
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = shl nuw nsw i64 %i.kx, 40
  %i.kz = and i64 %i.kr, -1152920405095219201
  %i.la = or i64 %i.ky, %i.kz
  store i64 %i.la, ptr %i.kq, align 8, !noalias !172
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.br:                                            ; preds = %.lr.ph
  %i.lb = icmp eq i32 %i.ku, 1048574
  br i1 %i.lb, label %bb.bs, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !36

bb.bs:                                            ; preds = %bb.br
  %i.lc = or i64 %i.kr, 1152920405095219200
  store i64 %i.lc, ptr %i.kq, align 8, !noalias !172
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.br, %bb.bq, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !173
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !39, !noalias !173
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.le, i32 noundef %i.e)
          to label %.noexc111 unwind label %bb.cd

.noexc111:                                        ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  store ptr %i.kq, ptr %6, align 8, !tbaa !33, !noalias !173
  %i.lf = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.bt unwind label %bb.bu, !noalias !173 ; 0 uses

bb.bt:                                            ; preds = %.noexc111
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %18, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.noexc111
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !173
  br label %.body

bb.bv:                                            ; preds = %bb.bt
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.lh = load ptr, ptr %18, align 8, !tbaa !34
  store ptr %i.lh, ptr %17, align 8, !tbaa !33
  %i.li = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull align 8 %17)
          to label %bb.bw unwind label %bb.ce     ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.lj = load ptr, ptr %18, align 8, !tbaa !34   ; 3 uses
  %i.lk = load i64, ptr %i.lj, align 8            ; 3 uses
  %i.ll = and i64 %i.lk, 1152920405095219200
  %.not.i.i112 = icmp eq i64 %i.ll, 1152920405095219200
  br i1 %.not.i.i112, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, label %bb.bx, !prof !36

bb.bx:                                            ; preds = %bb.bw
  %i.lm = add i64 %i.lk, 1152920405095219200
  %i.ln = and i64 %i.lm, 1152920405095219200      ; 2 uses
  %i.lo = and i64 %i.lk, -1152920405095219201
  %i.lp = or disjoint i64 %i.ln, %i.lo
  store i64 %i.lp, ptr %i.lj, align 8
  %i.lq = icmp eq i64 %i.ln, 0
  br i1 %i.lq, label %bb.by, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, !prof !36

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113: ; preds = %bb.bw, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %i.lt = load i64, ptr %i.kq, align 8            ; 3 uses
  %i.lu = and i64 %i.lt, 1152920405095219200
  %.not.i.i114 = icmp eq i64 %i.lu, 1152920405095219200
  br i1 %.not.i.i114, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit115, label %bb.ca, !prof !36

bb.ca:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113
  %i.lv = add i64 %i.lt, 1152920405095219200
  %i.lw = and i64 %i.lv, 1152920405095219200      ; 2 uses
  %i.lx = and i64 %i.lt, -1152920405095219201
  %i.ly = or disjoint i64 %i.lw, %i.lx
  store i64 %i.ly, ptr %i.kq, align 8
  %i.lz = icmp eq i64 %i.lw, 0
  br i1 %i.lz, label %bb.cb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit115, !prof !36

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit115 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  call void @__clang_call_terminate(ptr %i.mb) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit115: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0182.0190, i64 8 ; 2 uses
  %.not188 = icmp eq ptr %i.mc, %i.kf
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cd:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ce:                                            ; preds = %bb.bv
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #17
  br label %.body

.body:                                            ; preds = %bb.cd, %bb.bu, %bb.ce
  %.pn67 = phi { ptr, i32 } [ %i.me, %bb.ce ], [ %i.md, %bb.cd ], [ %i.lg, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn67.pn.pn.pn = phi { ptr, i32 } [ %.pn67, %.body ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.dd

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit109
  %i.mf = load ptr, ptr %2, align 8, !tbaa !34    ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings15StringsRewriter15rewriteStrToIntENS0_12NodeTemplateILb1EEE:bb.a
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93: ; preds = %bb.bv, %bb.bw, %bb.bx
  %i.hl = load ptr, ptr %11, align 8, !tbaa !34   ; 3 uses
  %i.hm = load i64, ptr %i.hl, align 8            ; 3 uses
  %i.hn = and i64 %i.hm, 1152920405095219200
  %.not.i.i94 = icmp eq i64 %i.hn, 1152920405095219200
  br i1 %.not.i.i94, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96, label %bb.bz, !prof !36

bb.bz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93
  %i.ho = add i64 %i.hm, 1152920405095219200
  %i.hp = and i64 %i.ho, 1152920405095219200      ; 2 uses
  %i.hq = and i64 %i.hm, -1152920405095219201
  %i.hr = or disjoint i64 %i.hp, %i.hq
  store i64 %i.hr, ptr %i.hl, align 8
  %i.hs = icmp eq i64 %i.hp, 0
  br i1 %i.hs, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96, !prof !36

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93, %bb.bz, %bb.ca
  %i.hv = load ptr, ptr %5, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc58internal6StringD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96
  %i.hw = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #21
  br label %_ZN4cvc58internal6StringD2Ev.exit

_ZN4cvc58internal6StringD2Ev.exit:                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit96, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ia = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %i.ib = load i64, ptr %i.ia, align 8            ; 3 uses
  %i.ic = and i64 %i.ib, 1152920405095219200
  %.not.i.i97 = icmp eq i64 %i.ic, 1152920405095219200
  br i1 %.not.i.i97, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, label %bb.cd, !prof !36

bb.cd:                                            ; preds = %_ZN4cvc58internal6StringD2Ev.exit
  %i.id = add i64 %i.ib, 1152920405095219200
  %i.ie = and i64 %i.id, 1152920405095219200      ; 2 uses
  %i.if = and i64 %i.ib, -1152920405095219201
  %i.ig = or disjoint i64 %i.ie, %i.if
  store i64 %i.ig, ptr %i.ia, align 8
  %i.ih = icmp eq i64 %i.ie, 0
  br i1 %i.ih, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99, !prof !36

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ia)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit99: ; preds = %_ZN4cvc58internal6StringD2Ev.exit, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit146

bb.cg:                                            ; preds = %bb.bu
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit90
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn53 = phi { ptr, i32 } [ %i.il, %bb.ch ], [ %i.ik, %bb.cg ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #17
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN4cvc58internal8RationalD2Ev.exit87, %_ZN4cvc58internal8RationalD2Ev.exit76, %bb.aq
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.ci ], [ %i.ei, %bb.aq ], [ %.pn50.pn, %_ZN4cvc58internal8RationalD2Ev.exit76 ], [ %.pn47.pn, %_ZN4cvc58internal8RationalD2Ev.exit87 ] ; 2 uses
  %i.im = load ptr, ptr %5, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i100, label %_ZN4cvc58internal6StringD2Ev.exit101, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.in = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.iq) #21
  br label %_ZN4cvc58internal6StringD2Ev.exit101

_ZN4cvc58internal6StringD2Ev.exit101:             ; preds = %bb.ck, %bb.cj, %bb.ap
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn45, %bb.ap ], [ %.pn53.pn, %bb.cj ], [ %.pn53.pn, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %common.resume

bb.cl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ir = load ptr, ptr %2, align 8, !tbaa !34, !noalias !221 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i64, ptr %i.is, align 8, !noalias !221
  %i.iu = trunc i64 %i.it to i32
  %i.iv = and i32 %i.iu, 1023                     ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 1023
  %i.ix = select i1 %i.iw, i32 -1, i32 %i.iv
  %i.iy = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ix), !noalias !221
  %i.iz = icmp eq i32 %i.iy, 2
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.jb = zext i1 %i.iz to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !37, !noalias !221 ; 8 uses
  %i.je = load i64, ptr %i.jd, align 8, !noalias !221 ; 4 uses
  %i.jf = lshr i64 %i.je, 40
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = and i32 %i.jg, 1048575                  ; 3 uses
  %i.ji = icmp samesign ult i32 %i.jh, 1048574
  br i1 %i.ji, label %bb.cm, label %bb.cn, !prof !35

bb.cm:                                            ; preds = %bb.cl
  %i.jj = add nuw nsw i32 %i.jh, 1
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 40
  %i.jm = and i64 %i.je, -1152920405095219201
  %i.jn = or i64 %i.jl, %i.jm                     ; 2 uses
  store i64 %i.jn, ptr %i.jd, align 8, !noalias !221
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102

bb.cn:                                            ; preds = %bb.cl
  %i.jo = icmp eq i32 %i.jh, 1048574
  br i1 %i.jo, label %bb.co, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102, !prof !36

bb.co:                                            ; preds = %bb.cn
  %i.jp = or i64 %i.je, 1152920405095219200
  store i64 %i.jp, ptr %i.jd, align 8, !noalias !221
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jd), !noalias !221
  %.pre = load i64, ptr %i.jd, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102: ; preds = %bb.cm, %bb.cn, %bb.co
  %i.jq = phi i64 [ %i.jn, %bb.cm ], [ %i.je, %bb.cn ], [ %.pre, %bb.co ] ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = and i64 %i.js, 1023
  %i.ju = icmp eq i64 %i.jt, 319
  %i.jv = and i64 %i.jq, 1152920405095219200
  %.not.i.i103 = icmp eq i64 %i.jv, 1152920405095219200
  br i1 %.not.i.i103, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105, label %bb.cp, !prof !36

bb.cp:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102
  %i.jw = add i64 %i.jq, 1152920405095219200
  %i.jx = and i64 %i.jw, 1152920405095219200      ; 2 uses
  %i.jy = and i64 %i.jq, -1152920405095219201
  %i.jz = or disjoint i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %i.jd, align 8
  %i.ka = icmp eq i64 %i.jx, 0
  br i1 %i.ka, label %bb.cq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105, !prof !36

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit102, %bb.cp, %bb.cq
  br i1 %i.ju, label %bb.cs, label %bb.ff

bb.cs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.kd = load ptr, ptr %2, align 8, !tbaa !34, !noalias !222 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !noalias !222
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = and i32 %i.kg, 1023                     ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 1023
  %i.kj = select i1 %i.ki, i32 -1, i32 %i.kh
  %i.kk = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.kj), !noalias !222
  %i.kl = icmp eq i32 %i.kk, 2
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kn = zext i1 %i.kl to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !37, !noalias !222 ; 14 uses
  store ptr %i.kp, ptr %13, align 8, !tbaa !34, !alias.scope !222
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !222 ; 3 uses
  %i.kr = lshr i64 %i.kq, 40
  %i.ks = trunc nuw nsw i64 %i.kr to i32
  %i.kt = and i32 %i.ks, 1048575                  ; 3 uses
  %i.ku = icmp samesign ult i32 %i.kt, 1048574
  br i1 %i.ku, label %bb.ct, label %bb.cu, !prof !35

bb.ct:                                            ; preds = %bb.cs
  %i.kv = add nuw nsw i32 %i.kt, 1
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = shl nuw nsw i64 %i.kw, 40
  %i.ky = and i64 %i.kq, -1152920405095219201
  %i.kz = or i64 %i.kx, %i.ky
  store i64 %i.kz, ptr %i.kp, align 8, !noalias !222
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106

bb.cu:                                            ; preds = %bb.cs
  %i.la = icmp eq i32 %i.kt, 1048574
  br i1 %i.la, label %bb.cv, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106, !prof !36

bb.cv:                                            ; preds = %bb.cu
  %i.lb = or i64 %i.kq, 1152920405095219200
  store i64 %i.lb, ptr %i.kp, align 8, !noalias !222
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kp), !noalias !222
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106: ; preds = %bb.ct, %bb.cu, %bb.cv
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = trunc i64 %i.ld to i32
  %i.lf = and i32 %i.le, 1023                     ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 1023
  %i.lh = select i1 %i.lg, i32 -1, i32 %i.lf
  %i.li = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.lh)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106
  %i.lj = icmp eq i32 %i.li, 2
  %spec.select.v.i.i = select i1 %i.lj, i64 32, i64 24 ; 2 uses
  %20 = load i64, ptr %i.lc, align 8
  %21 = lshr i64 %20, 29
  %.idx = and i64 %21, 536870904
  %22 = add nuw nsw i64 %.idx, 24                 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 %22
  %.not155 = icmp samesign eq i64 %spec.select.v.i.i, %22
  br i1 %.not155, label %.critedge61, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cw
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 %spec.select.v.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  br label %bb.cy

bb.cx:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit106
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.cy:                                            ; preds = %.lr.ph, %.critedge59
  %.sroa.0149.0156 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.ql, %.critedge59 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.lo = load ptr, ptr %.sroa.0149.0156, align 8, !tbaa !37, !noalias !223 ; 8 uses
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !223 ; 3 uses
  %i.lq = lshr i64 %i.lp, 40
  %i.lr = trunc nuw nsw i64 %i.lq to i32
  %i.ls = and i32 %i.lr, 1048575                  ; 3 uses
  %i.lt = icmp samesign ult i32 %i.ls, 1048574
  br i1 %i.lt, label %bb.cz, label %bb.da, !prof !35

bb.cz:                                            ; preds = %bb.cy
  %i.lu = add nuw nsw i32 %i.ls, 1
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = shl nuw nsw i64 %i.lv, 40
  %i.lx = and i64 %i.lp, -1152920405095219201
  %i.ly = or i64 %i.lw, %i.lx
  store i64 %i.ly, ptr %i.lo, align 8, !noalias !223
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.da:                                            ; preds = %bb.cy
  %i.lz = icmp eq i32 %i.ls, 1048574
  br i1 %i.lz, label %bb.db, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !36

bb.db:                                            ; preds = %bb.da
  %i.ma = or i64 %i.lp, 1152920405095219200
  store i64 %i.ma, ptr %i.lo, align 8, !noalias !223
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lo)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %bb.ei

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.da, %bb.cz, %bb.db
  store ptr %i.lo, ptr %14, align 8, !tbaa !33
  %i.mb = load i64, ptr %i.lo, align 8            ; 3 uses
  %i.mc = and i64 %i.mb, 1152920405095219200
  %.not.i.i109 = icmp eq i64 %i.mc, 1152920405095219200
  br i1 %.not.i.i109, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111, label %bb.dc, !prof !36

bb.dc:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.md = add i64 %i.mb, 1152920405095219200
  %i.me = and i64 %i.md, 1152920405095219200      ; 2 uses
  %i.mf = and i64 %i.mb, -1152920405095219201
  %i.mg = or disjoint i64 %i.me, %i.mf
  store i64 %i.mg, ptr %i.lo, align 8
  %i.mh = icmp eq i64 %i.me, 0
  br i1 %i.mh, label %bb.dd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111, !prof !36

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  call void @__clang_call_terminate(ptr %i.mj) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111: ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, %bb.dc, %bb.dd
  %i.mk = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.df unwind label %bb.ei

bb.df:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit111
  br i1 %i.mk, label %bb.dg, label %.critedge59

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.ml = load ptr, ptr %14, align 8, !tbaa !33
  %i.mm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_6StringEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.ml)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_6StringEEERKT_v.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_6StringEEERKT_v.exit: ; preds = %bb.dg
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !42 ; 2 uses
  %i.mp = load ptr, ptr %i.mm, align 8, !tbaa !43 ; 2 uses
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i113 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not.i.i.i.i.i113, label %.noexc117, label %bb.dh

bb.dh:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_6StringEEERKT_v.exit
  %i.mt = icmp ugt i64 %i.ms, 9223372036854775804
  br i1 %i.mt, label %.noexc.i.i.i115, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i114, !prof !36

.noexc.i.i.i115:                                  ; preds = %bb.dh
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %.noexc.i.i.i115
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i114: ; preds = %bb.dh
  %i.mu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ms) #20
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i114, %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_6StringEEERKT_v.exit
  %i.mv = phi ptr [ null, %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_6StringEEERKT_v.exit ], [ %i.mu, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i114 ] ; 6 uses
  store ptr %i.mv, ptr %15, align 8, !tbaa !43
  store ptr %i.mv, ptr %i.ll, align 8, !tbaa !42
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.ms
  store ptr %i.mw, ptr %i.lm, align 8, !tbaa !44
  %i.mx = load ptr, ptr %i.mm, align 8, !tbaa !45 ; 3 uses
  %i.my = load ptr, ptr %i.mn, align 8, !tbaa !45
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = ptrtoint ptr %i.mx to i64
  %i.nb = sub i64 %i.mz, %i.na                    ; 4 uses
  %i.nc = icmp sgt i64 %i.nb, 4
  br i1 %i.nc, label %bb.di, label %bb.dj, !prof !35

bb.di:                                            ; preds = %.noexc117
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mv, ptr align 4 %i.mx, i64 %i.nb, i1 false)
  br label %bb.dl

bb.dj:                                            ; preds = %.noexc117
  %i.nd = icmp eq i64 %i.nb, 4
  br i1 %i.nd, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ne = load i32, ptr %i.mx, align 4, !tbaa !46
  store i32 %i.ne, ptr %i.mv, align 4, !tbaa !46
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di
  %i.nf = getelementptr inbounds i8, ptr %i.mv, i64 %i.nb
  store ptr %i.nf, ptr %i.ll, align 8, !tbaa !42
  %i.ng = invoke noundef zeroext i1 @_ZNK4cvc58internal6String8isNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.dm unwind label %bb.ej

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.ng, label %.critedge, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  invoke void @_ZN4cvc58internal8RationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef -1)
          to label %bb.do unwind label %bb.ek

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN4cvc58internal11NodeManager10mkConstIntERKNS0_8RationalE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %16, ptr noundef nonnull align 8 dereferenceable(3592) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.dp unwind label %bb.el

bb.dp:                                            ; preds = %bb.do
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZN4cvc58internal8RationalD2Ev.exit119 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #18
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit119:           ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.nj = load ptr, ptr %2, align 8, !tbaa !34    ; 5 uses
  store ptr %i.nj, ptr %18, align 8, !tbaa !34
  %i.nk = load i64, ptr %i.nj, align 8            ; 3 uses
  %i.nl = lshr i64 %i.nk, 40
  %i.nm = trunc nuw nsw i64 %i.nl to i32
  %i.nn = and i32 %i.nm, 1048575                  ; 3 uses
  %i.no = icmp samesign ult i32 %i.nn, 1048574
  br i1 %i.no, label %bb.dr, label %bb.ds, !prof !35

bb.dr:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit119
  %i.np = add nuw nsw i32 %i.nn, 1
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 40
  %i.ns = and i64 %i.nk, -1152920405095219201
  %i.nt = or i64 %i.nr, %i.ns
  store i64 %i.nt, ptr %i.nj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit121

bb.ds:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit119
  %i.nu = icmp eq i32 %i.nn, 1048574
  br i1 %i.nu, label %bb.dt, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit121, !prof !36

bb.dt:                                            ; preds = %bb.ds
  %i.nv = or i64 %i.nk, 1152920405095219200
  store i64 %i.nv, ptr %i.nj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit121 unwind label %bb.en

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit121: ; preds = %bb.ds, %bb.dr, %bb.dt
  %i.nw = load ptr, ptr %16, align 8, !tbaa !34   ; 5 uses
  store ptr %i.nw, ptr %19, align 8, !tbaa !34
  %i.nx = load i64, ptr %i.nw, align 8            ; 3 uses
end_hunk_1
