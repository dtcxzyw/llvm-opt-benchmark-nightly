Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/enum_stream_substitution?download=true
inline.NumInlined: 2385
inline.NumDeleted: 867
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution10resetValueENS0_12NodeTemplateILb1EEE:.critedge75

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ab = add nuw nsw i32 %i.z, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 40
  %i.ae = and i64 %i.w, -1152920405095219201
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ag = icmp eq i32 %i.z, 1048574
  br i1 %i.ag, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !79

bb.i:                                             ; preds = %bb.h
  %i.ah = or i64 %i.w, 1152920405095219200
  store i64 %i.ah, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.ab

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.h, %bb.g, %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, %bb.i
  %i.ai = load i64, ptr %i.a, align 8             ; 3 uses
  %i.aj = and i64 %i.ai, 1152920405095219200
  %.not.i.i103 = icmp eq i64 %i.aj, 1152920405095219200
  br i1 %.not.i.i103, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105, label %bb.j, !prof !79

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ak = add i64 %i.ai, 1152920405095219200
  %i.al = and i64 %i.ak, 1152920405095219200      ; 2 uses
  %i.am = and i64 %i.ai, -1152920405095219201
  %i.an = or disjoint i64 %i.al, %i.am
  store i64 %i.an, ptr %i.a, align 8
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %bb.k, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105, !prof !79

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 4 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !70
  %.not.i106 = icmp eq ptr %i.as, %i.at
  br i1 %.not.i106, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit109, label %bb.m, !prof !79

bb.m:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105
  %i.au = load i64, ptr %i.as, align 8            ; 3 uses
  %i.av = and i64 %i.au, 1152920405095219200
  %.not.i.i107 = icmp eq i64 %i.av, 1152920405095219200
  br i1 %.not.i.i107, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i108, label %bb.n, !prof !79

bb.n:                                             ; preds = %bb.m
  %i.aw = add i64 %i.au, 1152920405095219200
  %i.ax = and i64 %i.aw, 1152920405095219200      ; 2 uses
  %i.ay = and i64 %i.au, -1152920405095219201
  %i.az = or disjoint i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.as, align 8
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %bb.o, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i108, !prof !79

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i108

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i108: ; preds = %bb.o, %bb.n, %bb.m
  %i.bb = load ptr, ptr %1, align 8, !tbaa !70    ; 5 uses
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !70
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = lshr i64 %i.bc, 40
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1048575                  ; 3 uses
  %i.bg = icmp samesign ult i32 %i.bf, 1048574
  br i1 %i.bg, label %bb.p, label %bb.q, !prof !80

bb.p:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i108
  %i.bh = add nuw nsw i32 %i.bf, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 40
  %i.bk = and i64 %i.bc, -1152920405095219201
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit109

bb.q:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i108
  %i.bm = icmp eq i32 %i.bf, 1048574
  br i1 %i.bm, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit109, !prof !79

bb.r:                                             ; preds = %bb.q
  %i.bn = or i64 %i.bc, 1152920405095219200
  store i64 %i.bn, ptr %i.bb, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit109

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit109: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit105, %bb.p, %bb.q, %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bp = load ptr, ptr %1, align 8, !tbaa !70    ; 5 uses
  store ptr %i.bp, ptr %3, align 8, !tbaa !70
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = lshr i64 %i.bq, 40
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 1048575                  ; 3 uses
  %i.bu = icmp samesign ult i32 %i.bt, 1048574
  br i1 %i.bu, label %bb.s, label %bb.t, !prof !80

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit109
  %i.bv = add nuw nsw i32 %i.bt, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 40
  %i.by = and i64 %i.bq, -1152920405095219201
  %i.bz = or i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit109
  %i.ca = icmp eq i32 %i.bt, 1048574
  br i1 %i.ca, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110, !prof !79

bb.u:                                             ; preds = %bb.t
  %i.cb = or i64 %i.bq, 1152920405095219200
  store i64 %i.cb, ptr %i.bp, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110: ; preds = %bb.s, %bb.t, %bb.u
  invoke void @_ZN4cvc58internal6theory11quantifiers21EnumStreamPermutation5resetENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(220) %i.bo, ptr noundef nonnull align 8 %3)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110
  %i.cc = load ptr, ptr %3, align 8, !tbaa !70    ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8            ; 3 uses
  %i.ce = and i64 %i.cd, 1152920405095219200
  %.not.i.i111 = icmp eq i64 %i.ce, 1152920405095219200
  br i1 %.not.i.i111, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, label %bb.w, !prof !79

bb.w:                                             ; preds = %bb.v
  %i.cf = add i64 %i.cd, 1152920405095219200
  %i.cg = and i64 %i.cf, 1152920405095219200      ; 2 uses
  %i.ch = and i64 %i.cd, -1152920405095219201
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.cc, align 8
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, !prof !79

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113: ; preds = %bb.v, %bb.w, %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 0, ptr %i.cm, align 8, !tbaa !328
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !329 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !330 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.cq, %i.co
  br i1 %.not.i.i114, label %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE5clearEv.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateEEEvT_S9_(ptr noundef %i.co, ptr noundef %i.cq)
          to label %_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateES5_EvT_S7_RSaIT0_E.exit.i.i unwind label %bb.aa

_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.z
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !330
  br label %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE5clearEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #27
  unreachable

_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE5clearEv.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, %_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not228 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE5clearEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !63 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %._crit_edge, label %.lr.ph.split

bb.ab:                                            ; preds = %bb.i, %bb.f
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %common.resume

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread
  %.pr = load ptr, ptr %i.cw, align 8, !tbaa !63
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.dl = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.sroa.0215.0229 = phi ptr [ %i.gu, %.lr.ph.splitthread-pre-split ], [ %i.cu, %.lr.ph ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0215.0229, i64 32 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !332 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not10.i.i.i.i, label %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dl, %.lr.ph.split ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cx, %.lr.ph.split ]
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !96
  %i.dq = icmp ult i32 %i.dp, %i.dn               ; 2 uses
  %.19.i.i.i.i = select i1 %i.dq, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dq, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dr = icmp eq ptr %.19.i.i.i.i, %i.cx
  br i1 %i.dr, label %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread, label %_ZNKSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit.i

_ZNKSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit.i: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !96
  %i.du = icmp ult i32 %i.dn, %i.dt
  br i1 %i.du, label %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread, label %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit

_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit: ; preds = %_ZNKSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !100
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !114
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 3                 ; 2 uses
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0215.0229, i64 40 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0215.0229, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !100
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !114
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = lshr exact i64 %i.el, 3
  %i.en = trunc i64 %i.em to i32
  %i.eo = load i32, ptr %i.dm, align 8, !tbaa !332
  store i32 %i.en, ptr %i.cy, align 4, !tbaa !334
  store i32 %i.ed, ptr %i.cz, align 8, !tbaa !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.da, i8 0, i64 48, i1 false)
  %i.ep = and i64 %i.ec, 4294967295               ; 5 uses
  %i.eq = shl nuw nsw i64 %i.ep, 2                ; 3 uses
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #26
          to label %.noexc203 unwind label %bb.ad ; 12 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.er, align 4, !tbaa !96
  %i.es = add nsw i64 %i.ep, -1                   ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.thread, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.thread: ; preds = %.noexc203
  store ptr %i.er, ptr %i.da, align 8, !tbaa !113
  %5 = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq ; 2 uses
  store ptr %5, ptr %i.dc, align 8, !tbaa !130
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ep
  store ptr %6, ptr %i.dd, align 8, !tbaa !104
  br label %.lr.ph.i.i.preheader

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc203
  %i.eu = getelementptr i8, ptr %i.er, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.es, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eu, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !96
  store ptr %i.er, ptr %i.da, align 8, !tbaa !113
  %7 = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq ; 2 uses
  store ptr %7, ptr %i.dc, align 8, !tbaa !130
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ep
  store ptr %8, ptr %i.dd, align 8, !tbaa !104
  %.not5.i.i117 = icmp eq i64 %i.ep, 0
  br i1 %.not5.i.i117, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.thread, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %9 = phi ptr [ %5, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36.i.thread ], [ %7, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i ] ; 2 uses
  %10 = ptrtoaddr ptr %9 to i64
  %11 = ptrtoaddr ptr %i.er to i64
  %12 = add i64 %10, -4
  %13 = sub i64 %12, %11                          ; 2 uses
  %i.ev = lshr i64 %13, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader261, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ew, 9223372036854775800     ; 4 uses
  %i.ex = trunc i64 %n.vec to i32
  %i.ey = shl i64 %n.vec, 2
  %i.ez = getelementptr i8, ptr %i.er, i64 %i.ey
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.fa = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.er, i64 %i.fa ; 2 uses
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !96
  store <4 x i32> %step.add, ptr %i.fb, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i.preheader261

.lr.ph.i.i.preheader261:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.07.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ex, %middle.block ]
  %.sroa.02.06.i.i.ph = phi ptr [ %i.er, %.lr.ph.i.i.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader261, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.fd, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader261 ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %.sroa.02.06.i.i.ph, %.lr.ph.i.i.preheader261 ] ; 2 uses
  store i32 %.07.i.i, ptr %.sroa.02.06.i.i, align 4, !tbaa !96
  %i.fd = add nuw nsw i32 %.07.i.i, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 4 ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.fe, %9
  br i1 %.not.i.i118, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !417

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.ff = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateC2EjjjRKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.db) #25
  %i.fh = load ptr, ptr %i.da, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i116, label %common.resume, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fi = load ptr, ptr %i.dd, align 8, !tbaa !104
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.ab, %bb.ac, %bb.al, %bb.ad, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.fg, %bb.ad ], [ %i.fg, %bb.ae ], [ %i.gt, %bb.al ], [ %i.dk, %bb.ac ], [ %i.dj, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateC2EjjjRKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEiEvT_S7_T0_.exit.i
  store i32 %i.eo, ptr %4, align 8, !tbaa !336
  %i.fm = load ptr, ptr %i.cp, align 8, !tbaa !330 ; 7 uses
  %i.fn = load ptr, ptr %i.de, align 8, !tbaa !337
  %.not.i.i119 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i119, label %bb.af, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.thread

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.thread: ; preds = %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateC2EjjjRKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fm, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 12, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fp = load <2 x ptr>, ptr %i.da, align 8, !tbaa !98
  store <2 x ptr> %i.fp, ptr %i.fo, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fr = load ptr, ptr %i.dd, align 8, !tbaa !104
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.ft = load <2 x ptr>, ptr %i.db, align 8, !tbaa !92
  store <2 x ptr> %i.ft, ptr %i.fs, align 8, !tbaa !92
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fv = load ptr, ptr %i.dg, align 8, !tbaa !101
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.fw = load ptr, ptr %i.cp, align 8, !tbaa !330
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  store ptr %i.fx, ptr %i.cp, align 8, !tbaa !330
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i

bb.af:                                            ; preds = %_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateC2EjjjRKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit
  invoke void @_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr %i.fm, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE9push_backEOS5_.exit unwind label %bb.al

_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.af
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !114 ; 3 uses
  %.pre231 = load ptr, ptr %i.df, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre, %.pre231
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i121

.lr.ph.i.i.i.i121:                                ; preds = %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE9push_backEOS5_.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.gi, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %.pre, %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.fy = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 8            ; 3 uses
  %i.ga = and i64 %i.fz, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ga, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.ag, !prof !79

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i121
  %i.gb = add i64 %i.fz, 1152920405095219200
  %i.gc = and i64 %i.gb, 1152920405095219200      ; 2 uses
  %i.gd = and i64 %i.fz, -1152920405095219201
  %i.ge = or disjoint i64 %i.gc, %i.gd
  store i64 %i.ge, ptr %i.fy, align 8
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %bb.ah, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !79

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag, %.lr.ph.i.i.i.i121
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.gi, %.pre231
  br i1 %.not.i.i.i.i122, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i121, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.db, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE9push_backEOS5_.exit
  %i.gj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre, %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE9push_backEOS5_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.gk = load ptr, ptr %i.dg, align 8, !tbaa !101
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gn) #28
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.thread, %bb.aj, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.go = load ptr, ptr %i.da, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i1.i, label %.critedge81, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i
  %i.gp = load ptr, ptr %i.dd, align 8, !tbaa !104
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #28
  br label %.critedge81

.critedge81:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread

bb.al:                                            ; preds = %bb.af
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %.lr.ph.split, %_ZNKSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE4findERSA_.exit.i, %.critedge81, %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit
  %i.gu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0215.0229) #29 ; 2 uses
  %.not = icmp eq ptr %i.gu, %i.cv
  br i1 %.not, label %._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !418

._crit_edge:                                      ; preds = %_ZNK4cvc58internal6theory11quantifiers21EnumStreamPermutation15getVarClassSizeEj.exit.thread, %.lr.ph, %_ZNSt6vectorIN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateESaIS5_EE5clearEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory11quantifiers22EnumStreamSubstitution16CombinationStateD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !70 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.b, !prof !79

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = add i64 %i.f, 1152920405095219200
  %i.i = and i64 %i.h, 1152920405095219200        ; 2 uses
  %i.j = and i64 %i.f, -1152920405095219201
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !79

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #27
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101
  %i.s = ptrtoint ptr %i.r to i64
end_hunk_0
