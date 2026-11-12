Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/regexp_elim?download=true
inline.NumInlined: 1602
inline.NumDeleted: 357
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory7strings17RegExpElimination13eliminateStarENS0_12NodeTemplateILb1EEEb:bb.a
  br i1 %i.ao, label %bb.i, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.ap = or i64 %i.ae, 1152920405095219200
  store i64 %i.ap, ptr %i.ad, align 8, !noalias !380
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !380
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20, !noalias !381
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38, !noalias !381
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %60, ptr noundef %i.ar, i32 noundef 321)
          to label %.noexc unwind label %bb.ag

.noexc:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  store ptr %i.ad, ptr %61, align 8, !tbaa !42, !noalias !381
  %i.as = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %60, ptr noundef nonnull align 8 %61)
          to label %bb.j unwind label %bb.k, !noalias !381 ; 0 uses

bb.j:                                             ; preds = %.noexc
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %63, ptr noundef nonnull align 8 dereferenceable(124) %60)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %60) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !381
  br label %.body

bb.l:                                             ; preds = %bb.j
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %60) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20, !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.au = load ptr, ptr %1, align 8, !tbaa !32, !noalias !382 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !382
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 1023                     ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1023
  %i.ba = select i1 %i.az, i32 -1, i32 %i.ay
  %i.bb = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ba)
          to label %.noexc177 unwind label %bb.ah

.noexc177:                                        ; preds = %bb.l
  %i.bc = icmp eq i32 %i.bb, 2
  %spec.select.i.i = select i1 %i.bc, i64 2, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %spec.select.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !33, !noalias !382 ; 7 uses
  store ptr %i.bf, ptr %64, align 8, !tbaa !32, !alias.scope !382
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !382 ; 3 uses
  %i.bh = lshr i64 %i.bg, 40
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1048575                  ; 3 uses
  %i.bk = icmp samesign ult i32 %i.bj, 1048574
  br i1 %i.bk, label %bb.m, label %bb.n, !prof !34

bb.m:                                             ; preds = %.noexc177
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 40
  %i.bo = and i64 %i.bg, -1152920405095219201
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.bf, align 8, !noalias !382
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit179

bb.n:                                             ; preds = %.noexc177
  %i.bq = icmp eq i32 %i.bj, 1048574
  br i1 %i.bq, label %bb.o, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit179, !prof !35

bb.o:                                             ; preds = %bb.n
  %i.br = or i64 %i.bg, 1152920405095219200
  store i64 %i.br, ptr %i.bf, align 8, !noalias !382
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit179 unwind label %bb.ah

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit179: ; preds = %bb.n, %bb.m, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #20
  invoke void @_ZN4cvc58internal8RationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %66, i32 noundef 0)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit179
  invoke void @_ZN4cvc58internal11NodeManager10mkConstIntERKNS0_8RationalE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %65, ptr noundef nonnull align 8 dereferenceable(3592) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %bb.q unwind label %bb.aj

bb.q:                                             ; preds = %bb.p
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %_ZN4cvc58internal8RationalD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #22
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit:              ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %67, i8 0, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !383
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 1023                     ; 2 uses
  %i.by = icmp eq i32 %i.bx, 1023
  %i.bz = select i1 %i.by, i32 -1, i32 %i.bx
  %i.ca = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bz)
          to label %.noexc181 unwind label %bb.al

.noexc181:                                        ; preds = %_ZN4cvc58internal8RationalD2Ev.exit
  %i.cb = icmp eq i32 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 3 uses
  %i.cd = zext i1 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !33, !noalias !383 ; 8 uses
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !383 ; 4 uses
  %i.ch = lshr i64 %i.cg, 40
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 1048575                  ; 3 uses
  %i.ck = icmp samesign ult i32 %i.cj, 1048574
  br i1 %i.ck, label %bb.s, label %bb.t, !prof !34

bb.s:                                             ; preds = %.noexc181
  %i.cl = add nuw nsw i32 %i.cj, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 40
  %i.co = and i64 %i.cg, -1152920405095219201
  %i.cp = or i64 %i.cn, %i.co                     ; 2 uses
  store i64 %i.cp, ptr %i.cf, align 8, !noalias !383
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183

bb.t:                                             ; preds = %.noexc181
  %i.cq = icmp eq i32 %i.cj, 1048574
  br i1 %i.cq, label %bb.u, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183, !prof !35

bb.u:                                             ; preds = %bb.t
  %i.cr = or i64 %i.cg, 1152920405095219200
  store i64 %i.cr, ptr %i.cf, align 8, !noalias !383
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183_crit_edge unwind label %bb.al

._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183_crit_edge: ; preds = %bb.u
  %.pre = load i64, ptr %i.cf, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183: ; preds = %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183_crit_edge, %bb.t, %bb.s
  %i.cs = phi i64 [ %.pre, %._ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183_crit_edge ], [ %i.cg, %bb.t ], [ %i.cp, %bb.s ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = and i64 %i.cu, 1023
  %i.cw = icmp eq i64 %i.cv, 352
  %i.cx = and i64 %i.cs, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cx, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.v, !prof !35

bb.v:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183
  %i.cy = add i64 %i.cs, 1152920405095219200
  %i.cz = and i64 %i.cy, 1152920405095219200      ; 2 uses
  %i.da = and i64 %i.cs, -1152920405095219201
  %i.db = or disjoint i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.cf, align 8
  %i.dc = icmp eq i64 %i.cz, 0
  br i1 %i.dc, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !35

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit183, %bb.v, %bb.w
  br i1 %i.cw, label %bb.y, label %bb.az

bb.y:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.df = load i64, ptr %i.bu, align 8, !noalias !384
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 1023                     ; 2 uses
  %i.di = icmp eq i32 %i.dh, 1023
  %i.dj = select i1 %i.di, i32 -1, i32 %i.dh
  %i.dk = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.dj)
          to label %.noexc185 unwind label %bb.al

.noexc185:                                        ; preds = %bb.y
  %i.dl = icmp eq i32 %i.dk, 2
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !33, !noalias !384 ; 12 uses
  store ptr %i.do, ptr %68, align 8, !tbaa !32, !alias.scope !384
  %i.dp = load i64, ptr %i.do, align 8, !noalias !384 ; 3 uses
  %i.dq = lshr i64 %i.dp, 40
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 1048575                  ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 1048574
  br i1 %i.dt, label %bb.z, label %bb.aa, !prof !34

bb.z:                                             ; preds = %.noexc185
  %i.du = add nuw nsw i32 %i.ds, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 40
  %i.dx = and i64 %i.dp, -1152920405095219201
  %i.dy = or i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.do, align 8, !noalias !384
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit187

bb.aa:                                            ; preds = %.noexc185
  %i.dz = icmp eq i32 %i.ds, 1048574
  br i1 %i.dz, label %bb.ab, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit187, !prof !35

bb.ab:                                            ; preds = %bb.aa
  %i.ea = or i64 %i.dp, 1152920405095219200
  store i64 %i.ea, ptr %i.do, align 8, !noalias !384
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit187 unwind label %bb.al

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit187: ; preds = %bb.aa, %bb.z, %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 1023
  %i.eg = select i1 %i.ef, i32 -1, i32 %i.ee
  %i.eh = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eg)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit187
  %i.ei = icmp eq i32 %i.eh, 2
  %spec.select.v.i.i = select i1 %i.ei, i64 32, i64 24 ; 2 uses
  %117 = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %118 = load i32, ptr %117, align 4
  %119 = shl i32 %118, 3
  %120 = and i32 %119, 536870904
  %narrow = add nuw nsw i32 %120, 24
  %121 = zext nneg i32 %narrow to i64             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.do, i64 %121
  %.not556 = icmp samesign eq i64 %spec.select.v.i.i, %121
  br i1 %.not556, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %spec.select.i.i188 = getelementptr inbounds nuw i8, ptr %i.do, i64 %spec.select.v.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %67, i64 16
  br label %bb.am

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197, %bb.ac
  %i.em = load i64, ptr %i.do, align 8            ; 3 uses
  %i.en = and i64 %i.em, 1152920405095219200
  %.not.i.i190 = icmp eq i64 %i.en, 1152920405095219200
  br i1 %.not.i.i190, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit191, label %bb.ad, !prof !35

bb.ad:                                            ; preds = %._crit_edge
  %i.eo = add i64 %i.em, 1152920405095219200
  %i.ep = and i64 %i.eo, 1152920405095219200      ; 2 uses
  %i.eq = and i64 %i.em, -1152920405095219201
  %i.er = or disjoint i64 %i.ep, %i.eq
  store i64 %i.er, ptr %i.do, align 8
  %i.es = icmp eq i64 %i.ep, 0
  br i1 %i.es, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit191, !prof !35

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit191 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit191: ; preds = %._crit_edge, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #20
  br label %bb.bo

bb.ag:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.o, %bb.l
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

bb.ai:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit179
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal8RationalD2Ev.exit192

bb.aj:                                            ; preds = %bb.p
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %66)
          to label %_ZN4cvc58internal8RationalD2Ev.exit192 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #22
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit192:           ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.ai ], [ %i.ey, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #20
  br label %bb.qf

bb.al:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit, %bb.u, %bb.ab, %bb.y
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.qe

bb.am:                                            ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197
  %.sroa.0529.0557 = phi ptr [ %spec.select.i.i188, %.lr.ph ], [ %i.gq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.fc = load ptr, ptr %.sroa.0529.0557, align 8, !tbaa !33, !noalias !385 ; 5 uses
  store ptr %i.fc, ptr %69, align 8, !tbaa !32, !alias.scope !385
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !385 ; 3 uses
  %i.fe = lshr i64 %i.fd, 40
  %i.ff = trunc nuw nsw i64 %i.fe to i32
  %i.fg = and i32 %i.ff, 1048575                  ; 3 uses
  %i.fh = icmp samesign ult i32 %i.fg, 1048574
  br i1 %i.fh, label %bb.an, label %bb.ao, !prof !34

bb.an:                                            ; preds = %bb.am
  %i.fi = add nuw nsw i32 %i.fg, 1
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 40
  %i.fl = and i64 %i.fd, -1152920405095219201
  %i.fm = or i64 %i.fk, %i.fl
  store i64 %i.fm, ptr %i.fc, align 8, !noalias !385
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.fn = icmp eq i32 %i.fg, 1048574
  br i1 %i.fn, label %bb.ap, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !35

bb.ap:                                            ; preds = %bb.ao
  %i.fo = or i64 %i.fd, 1152920405095219200
  store i64 %i.fo, ptr %i.fc, align 8, !noalias !385
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.ao, %bb.an, %bb.ap
  %i.fp = load ptr, ptr %i.ek, align 8, !tbaa !45 ; 3 uses
  %i.fq = load ptr, ptr %i.el, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.fr = load ptr, ptr %69, align 8, !tbaa !32   ; 5 uses
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !32
  %i.fs = load i64, ptr %i.fr, align 8            ; 3 uses
  %i.ft = lshr i64 %i.fs, 40
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = and i32 %i.fu, 1048575                  ; 3 uses
  %i.fw = icmp samesign ult i32 %i.fv, 1048574
  br i1 %i.fw, label %bb.ar, label %bb.as, !prof !34

bb.ar:                                            ; preds = %bb.aq
  %i.fx = add nuw nsw i32 %i.fv, 1
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 40
  %i.ga = and i64 %i.fs, -1152920405095219201
  %i.gb = or i64 %i.fz, %i.ga
  store i64 %i.gb, ptr %i.fr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.gc = icmp eq i32 %i.fv, 1048574
  br i1 %i.gc, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !35

bb.at:                                            ; preds = %bb.as
  %i.gd = or i64 %i.fs, 1152920405095219200
  store i64 %i.gd, ptr %i.fr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.ay

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.ge = load ptr, ptr %i.ek, align 8, !tbaa !45
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %i.gf, ptr %i.ek, align 8, !tbaa !45
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.au:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %67, ptr %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ay

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.au
  %i.gg = load ptr, ptr %69, align 8, !tbaa !32   ; 3 uses
  %i.gh = load i64, ptr %i.gg, align 8            ; 3 uses
  %i.gi = and i64 %i.gh, 1152920405095219200
  %.not.i.i196 = icmp eq i64 %i.gi, 1152920405095219200
  br i1 %.not.i.i196, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197, label %bb.av, !prof !35

bb.av:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.gj = add i64 %i.gh, 1152920405095219200
  %i.gk = and i64 %i.gj, 1152920405095219200      ; 2 uses
  %i.gl = and i64 %i.gh, -1152920405095219201
  %i.gm = or disjoint i64 %i.gk, %i.gl
  store i64 %i.gm, ptr %i.gg, align 8
  %i.gn = icmp eq i64 %i.gk, 0
  br i1 %i.gn, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197, !prof !35

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit197: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #20
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0529.0557, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.ej
  br i1 %.not, label %._crit_edge, label %bb.am

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit187
  %lpad.loopexit.split-lp665 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ay:                                            ; preds = %bb.au, %bb.at
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #20
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay
  %.pn163.pn.pn = phi { ptr, i32 } [ %i.gr, %bb.ay ], [ %lpad.loopexit.split-lp665, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
end_hunk_0
