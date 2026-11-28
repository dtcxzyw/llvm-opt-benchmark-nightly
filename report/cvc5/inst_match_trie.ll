Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/inst_match_trie?download=true
inline.NumInlined: 697
inline.NumDeleted: 320
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers13InstMatchTrie12addInstMatchENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EEPNS3_13ImtIndexOrderEbj:bb.a
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit43 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit43: ; preds = %.critedge, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.aw

bb.n:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ax

.critedge2:                                       ; preds = %bb.f
  %i.bq = load i64, ptr %i.n, align 8             ; 3 uses
  %i.br = and i64 %i.bq, 1152920405095219200
  %.not.i.i44 = icmp eq i64 %i.br, 1152920405095219200
  br i1 %.not.i.i44, label %.thread, label %bb.o, !prof !18

bb.o:                                             ; preds = %.critedge2
  %i.bs = add i64 %i.bq, 1152920405095219200
  %i.bt = and i64 %i.bs, 1152920405095219200      ; 2 uses
  %i.bu = and i64 %i.bq, -1152920405095219201
  %i.bv = or disjoint i64 %i.bt, %i.bu
  store i64 %i.bv, ptr %i.n, align 8
  %i.bw = icmp eq i64 %i.bt, 0
  br i1 %i.bw, label %bb.p, label %.thread, !prof !18

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #18
  unreachable

.thread:                                          ; preds = %bb.p, %bb.o, %.critedge2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.s

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bz = load ptr, ptr %3, align 8, !tbaa !115
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.a
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !116
  %.pre = zext i32 %i.cb to i64
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %.pre-phi = phi i64 [ %i.a, %.thread ], [ %.pre, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.cc = load ptr, ptr %2, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.pre-phi
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16 ; 5 uses
  store ptr %i.ce, ptr %9, align 8, !tbaa !16
  %i.cf = load i64, ptr %i.ce, align 8            ; 3 uses
  %i.cg = lshr i64 %i.cf, 40
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 1048575                  ; 3 uses
  %i.cj = icmp samesign ult i32 %i.ci, 1048574
  br i1 %i.cj, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.ck = add nuw nsw i32 %i.ci, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 40
  %i.cn = and i64 %i.cf, -1152920405095219201
  %i.co = or i64 %i.cm, %i.cn
  store i64 %i.co, ptr %i.ce, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.cp = icmp eq i32 %i.ci, 1048574
  br i1 %i.cp, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !18

bb.v:                                             ; preds = %bb.u
  %i.cq = or i64 %i.cf, 1152920405095219200
  store i64 %i.cq, ptr %i.ce, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.cu = load ptr, ptr %9, align 8, !tbaa !16
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = and i64 %i.cv, 1099511627775            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.w ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.w ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = and i64 %i.cz, 1099511627775
  %i.db = icmp samesign ult i64 %i.da, %i.cw      ; 2 uses
  %.19.i.i.i = select i1 %i.db, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.db, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.w, !llvm.loop !111

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.w
  %i.dc = icmp eq ptr %.19.i.i.i, %i.ct
  br i1 %i.dc, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !16
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = and i64 %i.df, 1099511627775
  %i.dh = icmp samesign ult i64 %i.cw, %i.dg
  br i1 %i.dh, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  %i.di = load ptr, ptr %1, align 8, !tbaa !16    ; 8 uses
  store ptr %i.di, ptr %10, align 8, !tbaa !16
  %i.dj = load i64, ptr %i.di, align 8            ; 3 uses
  %i.dk = lshr i64 %i.dj, 40
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 1048575                  ; 3 uses
  %i.dn = icmp samesign ult i32 %i.dm, 1048574
  br i1 %i.dn, label %bb.y, label %bb.z, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.do = add nuw nsw i32 %i.dm, 1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 40
  %i.dr = and i64 %i.dj, -1152920405095219201
  %i.ds = or i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.di, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit46

bb.z:                                             ; preds = %bb.x
  %i.dt = icmp eq i32 %i.dm, 1048574
  br i1 %i.dt, label %bb.aa, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit46, !prof !18

bb.aa:                                            ; preds = %bb.z
  %i.du = or i64 %i.dj, 1152920405095219200
  store i64 %i.du, ptr %i.di, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit46 unwind label %bb.af

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit46: ; preds = %bb.z, %bb.y, %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.dw = add i32 %5, 1
  %i.dx = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13InstMatchTrie12addInstMatchENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EEPNS3_13ImtIndexOrderEbj(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %i.dw)
          to label %bb.ab unwind label %bb.ag     ; 3 uses

bb.ab:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit46
  %i.dy = load i64, ptr %i.di, align 8            ; 3 uses
  %i.dz = and i64 %i.dy, 1152920405095219200
  %.not.i.i47 = icmp eq i64 %i.dz, 1152920405095219200
  br i1 %.not.i.i47, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, label %bb.ac, !prof !18

bb.ac:                                            ; preds = %bb.ab
  %i.ea = add i64 %i.dy, 1152920405095219200
  %i.eb = and i64 %i.ea, 1152920405095219200      ; 2 uses
  %i.ec = and i64 %i.dy, -1152920405095219201
  %i.ed = or disjoint i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.di, align 8
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, !prof !18

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #18
  unreachable

bb.af:                                            ; preds = %bb.am, %.critedge.i, %bb.aa
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit46
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  br label %bb.av

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit
  br i1 %4, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, label %.lr.ph.i.i.i.i

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread.thread: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  br i1 %4, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread
  %i.ej = load ptr, ptr %9, align 8, !tbaa !16
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = and i64 %i.ek, 1099511627775            ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.ah ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.ah ]
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !16
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = and i64 %i.eo, 1099511627775
  %i.eq = icmp samesign ult i64 %i.ep, %i.el      ; 2 uses
  %.19.i.i.i.i = select i1 %i.eq, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.eq, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, label %bb.ah, !llvm.loop !111

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i: ; preds = %bb.ah
  %i.er = icmp eq ptr %.19.i.i.i.i, %i.ct
  br i1 %i.er, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !16
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = and i64 %i.eu, 1099511627775
  %i.ew = icmp samesign ult i64 %i.el, %i.ev
  br i1 %i.ew, label %.critedge.i, label %bb.aj

.critedge.i:                                      ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread.thread, %bb.ai, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.ai ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i ], [ %i.ct, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %9, ptr %6, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ex = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc49 unwind label %bb.af

.noexc49:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc49, %bb.ai
  %.sroa.06.0.i = phi ptr [ %i.ex, %.noexc49 ], [ %.19.i.i.i.i, %bb.ai ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.ez = load ptr, ptr %1, align 8, !tbaa !16    ; 8 uses
  store ptr %i.ez, ptr %11, align 8, !tbaa !16
  %i.fa = load i64, ptr %i.ez, align 8            ; 3 uses
  %i.fb = lshr i64 %i.fa, 40
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = and i32 %i.fc, 1048575                  ; 3 uses
  %i.fe = icmp samesign ult i32 %i.fd, 1048574
  br i1 %i.fe, label %bb.ak, label %bb.al, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.ff = add nuw nsw i32 %i.fd, 1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 40
  %i.fi = and i64 %i.fa, -1152920405095219201
  %i.fj = or i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %i.ez, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit51

bb.al:                                            ; preds = %bb.aj
  %i.fk = icmp eq i32 %i.fd, 1048574
  br i1 %i.fk, label %bb.am, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit51, !prof !18

bb.am:                                            ; preds = %bb.al
  %i.fl = or i64 %i.fa, 1152920405095219200
  store i64 %i.fl, ptr %i.ez, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit51 unwind label %bb.af

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit51: ; preds = %bb.al, %bb.ak, %bb.am
  %i.fm = add i32 %5, 1
  %i.fn = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers13InstMatchTrie12addInstMatchENS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EEPNS3_13ImtIndexOrderEbj(ptr noundef nonnull align 8 dereferenceable(48) %i.ey, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, i1 noundef zeroext false, i32 noundef %i.fm)
          to label %bb.an unwind label %bb.ar     ; 0 uses

bb.an:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit51
  %i.fo = load i64, ptr %i.ez, align 8            ; 3 uses
  %i.fp = and i64 %i.fo, 1152920405095219200
  %.not.i.i52 = icmp eq i64 %i.fp, 1152920405095219200
  br i1 %.not.i.i52, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, label %bb.ao, !prof !18

bb.ao:                                            ; preds = %bb.an
  %i.fq = add i64 %i.fo, 1152920405095219200
  %i.fr = and i64 %i.fq, 1152920405095219200      ; 2 uses
  %i.fs = and i64 %i.fo, -1152920405095219201
  %i.ft = or disjoint i64 %i.fr, %i.fs
  store i64 %i.ft, ptr %i.ez, align 8
  %i.fu = icmp eq i64 %i.fr, 0
  br i1 %i.fu, label %bb.ap, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, !prof !18

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #18
  unreachable

bb.ar:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit51
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  br label %bb.av

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread.thread, %bb.ad, %bb.ac, %bb.ab, %bb.ap, %bb.ao, %bb.an, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread
  %.133 = phi i1 [ true, %bb.ap ], [ true, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread ], [ true, %bb.an ], [ true, %bb.ao ], [ %i.dx, %bb.ab ], [ %i.dx, %bb.ac ], [ %i.dx, %bb.ad ], [ true, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE4findERSA_.exit.thread.thread ]
  %i.fy = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 8            ; 3 uses
  %i.ga = and i64 %i.fz, 1152920405095219200
  %.not.i.i54 = icmp eq i64 %i.ga, 1152920405095219200
  br i1 %.not.i.i54, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55.a, label %bb.as, !prof !18

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53
  %i.gb = add i64 %i.fz, 1152920405095219200
  %i.gc = and i64 %i.gb, 1152920405095219200      ; 2 uses
  %i.gd = and i64 %i.fz, -1152920405095219201
  %i.ge = or disjoint i64 %i.gc, %i.gd
  store i64 %i.ge, ptr %i.fy, align 8
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55.a, !prof !18

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55.a unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55.a: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit53, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.aw

bb.av:                                            ; preds = %bb.af, %bb.ag, %bb.ar
  %.pn39 = phi { ptr, i32 } [ %i.fx, %bb.ar ], [ %i.eh, %bb.af ], [ %i.ei, %bb.ag ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ax

bb.aw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit43, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55.a
  %.234 = phi i1 [ %.133, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55.a ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit43 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ]
  ret i1 %.234

bb.ax:                                            ; preds = %bb.av, %bb.n
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %bb.av ], [ %i.bp, %bb.n ]
  resume { ptr, i32 } %.pn39.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory11quantifiers13InstMatchTrie5printERSoNS0_12NodeTemplateILb1EEERSt6vectorINS5_ILb0EEESaIS8_EE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = load ptr, ptr %3, align 8, !tbaa !36
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.h = load ptr, ptr %2, align 8, !tbaa !16, !noalias !122 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !122
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 1023                       ; 2 uses
  %i.m = icmp eq i32 %i.l, 1023
  %i.n = select i1 %i.m, i32 -1, i32 %i.l
  %i.o = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.n), !noalias !122
  %i.p = icmp eq i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = zext i1 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19, !noalias !122 ; 9 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !16, !alias.scope !122
  %i.u = load i64, ptr %i.t, align 8, !noalias !122 ; 3 uses
  %i.v = lshr i64 %i.u, 40
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = and i32 %i.w, 1048575                    ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, 1048574
  br i1 %i.y, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.z = add nuw nsw i32 %i.x, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 40
  %i.ac = and i64 %i.u, -1152920405095219201
  %i.ad = or i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.t, align 8, !noalias !122
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.c:                                             ; preds = %bb.a
  %i.ae = icmp eq i32 %i.x, 1048574
  br i1 %i.ae, label %bb.d, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.af = or i64 %i.u, 1152920405095219200
  store i64 %i.af, ptr %i.t, align 8, !noalias !122
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !122
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.b, %bb.c, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1023                     ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1023
  %i.al = select i1 %i.ak, i32 -1, i32 %i.aj
  %i.am = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.al)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.an = icmp eq i32 %i.am, 2
  %i.ao = load i64, ptr %i.ag, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = and i64 %i.ap, 67108863
  %i.ar = sext i1 %i.an to i64
  %i.as = add nsw i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 4294967295
  %i.au = icmp eq i64 %i.g, %i.at
  %i.av = load i64, ptr %i.t, align 8             ; 3 uses
  %i.aw = and i64 %i.av, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.aw, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.ax = add i64 %i.av, 1152920405095219200
  %i.ay = and i64 %i.ax, 1152920405095219200      ; 2 uses
  %i.az = and i64 %i.av, -1152920405095219201
  %i.ba = or disjoint i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.t, align 8
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !18

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #18
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.au, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 4) ; 0 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.bg = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = and i64 %i.bj, 34359738360
  %.not43 = icmp eq i64 %i.bk, 0
  br i1 %.not43, label %._crit_edge, label %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit.peel

_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit.peel: ; preds = %bb.i
  %i.bl = lshr exact i64 %i.bj, 3
  %wide.trip.count = and i64 %i.bl, 4294967295    ; 2 uses
  %.pre46 = load ptr, ptr %i.bg, align 8, !tbaa !38
  tail call void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %.pre46, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %exitcond.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit

._crit_edge:                                      ; preds = %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit, %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit.peel, %bb.i
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !40
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !61
  %.not.i1.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 67
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bs)
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
end_hunk_0
