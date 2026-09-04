Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkDot?download=true
inline.NumInlined: 14877
inline.NumDeleted: 2437
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZSt17__merge_sort_loopIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEEvT_SK_T0_T1_T2_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  br label %bb.k

bb.f:                                             ; preds = %bb.g
  %i.ad = icmp eq ptr %i.m, %i.ag
  br i1 %i.ad, label %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.i, label %.lr.ph.i.i.i.i.i.i53, !llvm.loop !15

.lr.ph.i.i.i.i.i.i53:                             ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.w, %bb.e ]
  %i.ae = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !238 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i53
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !253 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.r
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.s
  br i1 %.not19.i.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.g
  br label %.loopexit.i.i.i, !llvm.loop !15

.loopexit.i.i.i:                                  ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i53, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.766) #27
  unreachable

_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.i: ; preds = %bb.f, %bb.c
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.c ], [ %i.ae, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !142 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  br i1 %.not.not.i.i.i.i, label %bb.h, label %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit._crit_edge.i

_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit._crit_edge.i: ; preds = %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.i
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !547
  %.pre37.i = load ptr, ptr %4, align 8, !tbaa !546
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.i
  %i.am = load ptr, ptr %i.al, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.06.0.in.i.i.i12.i = phi ptr [ %i.h, %bb.h ], [ %.sroa.06.0.i.i.i13.i, %bb.j ]
  %.sroa.06.0.i.i.i13.i = load ptr, ptr %.sroa.06.0.in.i.i.i12.i, align 8, !tbaa !238 ; 4 uses
  %.not.i.i.i14.i = icmp eq ptr %.sroa.06.0.i.i.i13.i, null
  br i1 %.not.i.i.i14.i, label %.loopexit.i.i10.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i13.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !253
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit, label %bb.i, !llvm.loop !14

bb.k:                                             ; preds = %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit._crit_edge.i, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.thread.i
  %i.aq = phi ptr [ %i.t, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.thread.i ], [ %.pre37.i, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit._crit_edge.i ]
  %i.ar = phi i64 [ %i.r, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.thread.i ], [ %.pre.i, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit._crit_edge.i ] ; 2 uses
  %i.as = phi ptr [ %i.ac, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.thread.i ], [ %i.al, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit._crit_edge.i ]
  %i.at = phi i32 [ %i.ab, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit.thread.i ], [ %i.ak, %_ZNSt13unordered_mapIP7VSymEntiSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_iEEE2atERS7_.exit._crit_edge.i ] ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !253 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = urem i64 %i.av, %i.ar                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !287 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i4.i, label %.loopexit.i.i10.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !238 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !253
  %i.bc = icmp eq ptr %i.au, %i.bb
  br i1 %i.bc, label %_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit, label %.lr.ph.i.i.i.i.i5.i

bb.m:                                             ; preds = %bb.n
  %i.bd = icmp eq ptr %i.au, %i.bg
  br i1 %i.bd, label %_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit, label %.lr.ph.i.i.i.i.i5.i, !llvm.loop !15

.lr.ph.i.i.i.i.i5.i:                              ; preds = %bb.l, %bb.m
  %.020.i.i.i.i.i6.i = phi ptr [ %i.be, %bb.m ], [ %i.az, %bb.l ]
  %i.be = load ptr, ptr %.020.i.i.i.i.i6.i, align 8, !tbaa !238 ; 4 uses
  %.not18.i.i.i.i.i7.i = icmp eq ptr %i.be, null
  br i1 %.not18.i.i.i.i.i7.i, label %.loopexit.i.i10.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i5.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !253 ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = urem i64 %i.bh, %i.ar
  %.not19.i.i.i.i.i8.i = icmp eq i64 %i.bi, %i.aw
  br i1 %.not19.i.i.i.i.i8.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i.i.i9.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i9.i:              ; preds = %bb.n
  br label %.loopexit.i.i10.i, !llvm.loop !15

.loopexit.i.i10.i:                                ; preds = %bb.k, %.lr.ph.i.i.i.i.i5.i, %bb.i, %..loopexit_crit_edge21.i.i.i.i.i9.i
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.766) #27
  unreachable

_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit: ; preds = %bb.m, %bb.j, %bb.l
  %i.bj = phi i32 [ %i.ak, %bb.j ], [ %i.at, %bb.l ], [ %i.at, %bb.m ]
  %.sroa.06.1.i.i.i11.i = phi ptr [ %.sroa.06.0.i.i.i13.i, %bb.j ], [ %i.az, %bb.l ], [ %i.be, %bb.m ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i11.i, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !142
  %i.bm = icmp slt i32 %i.bj, %i.bl               ; 3 uses
  %.sink34.in.i = select i1 %i.bm, ptr %.01628.i, ptr %.029.i
  %.117.idx.i = select i1 %i.bm, i64 16, i64 0
  %.117.i = getelementptr inbounds nuw i8, ptr %.01628.i, i64 %.117.idx.i ; 3 uses
  %.1.idx.i = select i1 %i.bm, i64 0, i64 16
  %.1.i = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.1.idx.i ; 3 uses
  %i.bn = load <2 x ptr>, ptr %.sink34.in.i, align 8, !tbaa !505
  store <2 x ptr> %i.bn, ptr %.sroa.0.027.i, align 8, !tbaa !505
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 2 uses
  %i.bp = icmp ne ptr %.1.i, %i.i
  %i.bq = icmp ne ptr %.117.i, %i.j
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1723

._crit_edge.i:                                    ; preds = %_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.021.0115, %bb.b ], [ %i.bo, %_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %.117.i, %_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0114, %bb.b ], [ %.1.i, %_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_.exit ] ; 3 uses
  %i.bs = ptrtoint ptr %i.i to i64
  %i.bt = ptrtoint ptr %.0.lcssa.i to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 4                 ; 5 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.bv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bx = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !505
  store <2 x ptr> %i.bx, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !505
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ca = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1724

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.by, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa236.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cb = icmp ult i64 %i.bv, 8
  br i1 %i.cb, label %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cc = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !505
  store <2 x ptr> %i.cc, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !505
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.cf = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !505
  store <2 x ptr> %i.cf, ptr %i.ce, align 8, !tbaa !505
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.ci = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !505
  store <2 x ptr> %i.ci, ptr %i.ch, align 8, !tbaa !505
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.cl = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !505
  store <2 x ptr> %i.cl, ptr %i.ck, align 8, !tbaa !505
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  %i.co = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !505
  store <2 x ptr> %i.co, ptr %i.cn, align 8, !tbaa !505
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 80
  %i.cr = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !505
  store <2 x ptr> %i.cr, ptr %i.cq, align 8, !tbaa !505
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 96
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 96
  %i.cu = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !505
  store <2 x ptr> %i.cu, ptr %i.ct, align 8, !tbaa !505
  %i.cv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 112
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 112
  %i.cx = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !505
  store <2 x ptr> %i.cx, ptr %i.cw, align 8, !tbaa !505
  %i.cy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 128
  %i.cz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 128 ; 2 uses
  %i.da = add nsw i64 %.012.i.i.i.i.i.i, -8
  %i.db = icmp sgt i64 %.012.i.i.i.i.i.i, 8
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, !llvm.loop !17

_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa236.unr.a, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cz, %.lr.ph.i.i.i.i.i.i ]
  %i.dc = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.de ; 4 uses
  %i.dg = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.dh = ptrtoint ptr %.016.lcssa.i to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 4                 ; 5 uses
  %i.dk = icmp sgt i64 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i
  %xtraiter249 = and i64 %i.dj, 7                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.dj, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.df, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.dl = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !505
  store <2 x ptr> %i.dl, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !505
  %i.dm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.do = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !1725

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.do, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.dm, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa237.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.dp = icmp ult i64 %i.dj, 8
  br i1 %i.dp, label %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.dq = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !505
  store <2 x ptr> %i.dq, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !505
  %i.dr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.dt = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !505
  store <2 x ptr> %i.dt, ptr %i.ds, align 8, !tbaa !505
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.dw = load <2 x ptr>, ptr %i.du, align 8, !tbaa !505
  store <2 x ptr> %i.dw, ptr %i.dv, align 8, !tbaa !505
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.dz = load <2 x ptr>, ptr %i.dx, align 8, !tbaa !505
  store <2 x ptr> %i.dz, ptr %i.dy, align 8, !tbaa !505
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64
  %i.ec = load <2 x ptr>, ptr %i.ea, align 8, !tbaa !505
  store <2 x ptr> %i.ec, ptr %i.eb, align 8, !tbaa !505
  %i.ed = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 80
  %i.ef = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !505
  store <2 x ptr> %i.ef, ptr %i.ee, align 8, !tbaa !505
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 96
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 96
  %i.ei = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !505
  store <2 x ptr> %i.ei, ptr %i.eh, align 8, !tbaa !505
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 112
  %i.ek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 112
  %i.el = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !505
  store <2 x ptr> %i.el, ptr %i.ek, align 8, !tbaa !505
  %i.em = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 128
  %i.en = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 128 ; 2 uses
  %i.eo = add nsw i64 %.012.i.i.i.i.i20.i, -8
  %i.ep = icmp sgt i64 %.012.i.i.i.i.i20.i, 8
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit, !llvm.loop !17

_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.df, %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %.lcssa237.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.en, %.lr.ph.i.i.i.i.i19.i ]
  %6 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.eq = sub i64 %6, %i.dc
  %i.er = getelementptr inbounds i8, ptr %i.df, i64 %i.eq ; 2 uses
  %i.es = sub i64 %i.b, %i.dg
  %i.et = ashr exact i64 %i.es, 4                 ; 2 uses
  %.not = icmp slt i64 %i.et, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1726

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit ] ; 3 uses
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.er, %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit ] ; 2 uses
  %.lcssa79 = phi i64 [ %i.e, %bb.a ], [ %i.et, %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa79) ; 2 uses
  %.idx60 = shl nsw i64 %.sroa.speculated, 4
  %i.eu = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx60 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %4, ptr %5, align 8
  %i.ev = icmp ne i64 %.sroa.speculated, 0
  %i.ew = icmp ne ptr %i.eu, %1
  %i.ex = and i1 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i40, label %._crit_edge.i24

.lr.ph.i40:                                       ; preds = %._crit_edge, %.lr.ph.i40
  %.029.i41 = phi ptr [ %.1.i48, %.lr.ph.i40 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01628.i42 = phi ptr [ %.117.i46, %.lr.ph.i40 ], [ %i.eu, %._crit_edge ] ; 3 uses
  %.sroa.0.027.i43 = phi ptr [ %i.fa, %.lr.ph.i40 ], [ %.sroa.021.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ey = call noundef zeroext i1 @_ZZN19LinkDotScopeVisitor26processDeferredAliasScopesEvENKUlRKSt4pairIP13AstAliasScopeP7VSymEntES7_E_clES7_S7_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %.01628.i42, ptr noundef nonnull align 8 dereferenceable(16) %.029.i41) ; 3 uses
  %.sink34.in.i44 = select i1 %i.ey, ptr %.01628.i42, ptr %.029.i41
  %.117.idx.i45 = select i1 %i.ey, i64 16, i64 0
  %.117.i46 = getelementptr inbounds nuw i8, ptr %.01628.i42, i64 %.117.idx.i45 ; 3 uses
  %.1.idx.i47 = select i1 %i.ey, i64 0, i64 16
  %.1.i48 = getelementptr inbounds nuw i8, ptr %.029.i41, i64 %.1.idx.i47 ; 3 uses
  %i.ez = load <2 x ptr>, ptr %.sink34.in.i44, align 8, !tbaa !505
  store <2 x ptr> %i.ez, ptr %.sroa.0.027.i43, align 8, !tbaa !505
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i43, i64 16 ; 2 uses
  %i.fb = icmp ne ptr %.1.i48, %i.eu
  %i.fc = icmp ne ptr %.117.i46, %1
  %i.fd = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %i.fd, label %.lr.ph.i40, label %._crit_edge.i24, !llvm.loop !1723

._crit_edge.i24:                                  ; preds = %.lr.ph.i40, %._crit_edge
  %.sroa.0.0.lcssa.i25 = phi ptr [ %.sroa.021.0.lcssa, %._crit_edge ], [ %i.fa, %.lr.ph.i40 ] ; 5 uses
  %.016.lcssa.i26 = phi ptr [ %i.eu, %._crit_edge ], [ %.117.i46, %.lr.ph.i40 ] ; 3 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i48, %.lr.ph.i40 ] ; 3 uses
  %i.fe = ptrtoint ptr %i.eu to i64
  %i.ff = ptrtoint ptr %.0.lcssa.i27 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 4                 ; 5 uses
  %i.fi = icmp sgt i64 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i36.preheader, label %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i28

.lr.ph.i.i.i.i.i.i36.preheader:                   ; preds = %._crit_edge.i24
  %xtraiter252 = and i64 %i.fh, 7                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.i.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.prol

.lr.ph.i.i.i.i.i.i36.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i36.preheader, %.lr.ph.i.i.i.i.i.i36.prol
  %.012.i.i.i.i.i.i37.prol = phi i64 [ %i.fm, %.lr.ph.i.i.i.i.i.i36.prol ], [ %i.fh, %.lr.ph.i.i.i.i.i.i36.preheader ]
  %.0811.i.i.i.i.i.i38.prol = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i36.prol ], [ %.sroa.0.0.lcssa.i25, %.lr.ph.i.i.i.i.i.i36.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i39.prol = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i36.prol ], [ %.0.lcssa.i27, %.lr.ph.i.i.i.i.i.i36.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph.i.i.i.i.i.i36.prol ], [ 0, %.lr.ph.i.i.i.i.i.i36.preheader ]
  %i.fj = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i39.prol, align 8, !tbaa !505
  store <2 x ptr> %i.fj, ptr %.0811.i.i.i.i.i.i38.prol, align 8, !tbaa !505
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39.prol, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38.prol, i64 16 ; 3 uses
  %i.fm = add nsw i64 %.012.i.i.i.i.i.i37.prol, -1 ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.i.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.prol, !llvm.loop !1727

.lr.ph.i.i.i.i.i.i36.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.i.i36.preheader
  %.012.i.i.i.i.i.i37.unr = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.fm, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.0811.i.i.i.i.i.i38.unr = phi ptr [ %.sroa.0.0.lcssa.i25, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.fl, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.0910.i.i.i.i.i.i39.unr = phi ptr [ %.0.lcssa.i27, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.fk, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.fl, %.lr.ph.i.i.i.i.i.i36.prol ]
  %i.fn = icmp ult i64 %i.fh, 8
  br i1 %i.fn, label %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i28, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi i64 [ %i.gm, %.lr.ph.i.i.i.i.i.i36 ], [ %.012.i.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i38 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i36 ], [ %.0811.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i39 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i36 ], [ %.0910.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 9 uses
  %i.fo = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i39, align 8, !tbaa !505
  store <2 x ptr> %i.fo, ptr %.0811.i.i.i.i.i.i38, align 8, !tbaa !505
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 16
  %i.fr = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !505
  store <2 x ptr> %i.fr, ptr %i.fq, align 8, !tbaa !505
  %i.fs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 32
  %i.fu = load <2 x ptr>, ptr %i.fs, align 8, !tbaa !505
  store <2 x ptr> %i.fu, ptr %i.ft, align 8, !tbaa !505
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 48
  %i.fx = load <2 x ptr>, ptr %i.fv, align 8, !tbaa !505
  store <2 x ptr> %i.fx, ptr %i.fw, align 8, !tbaa !505
  %i.fy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 64
  %i.ga = load <2 x ptr>, ptr %i.fy, align 8, !tbaa !505
  store <2 x ptr> %i.ga, ptr %i.fz, align 8, !tbaa !505
  %i.gb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 80
  %i.gc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 80
  %i.gd = load <2 x ptr>, ptr %i.gb, align 8, !tbaa !505
  store <2 x ptr> %i.gd, ptr %i.gc, align 8, !tbaa !505
  %i.ge = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 96
  %i.gg = load <2 x ptr>, ptr %i.ge, align 8, !tbaa !505
  store <2 x ptr> %i.gg, ptr %i.gf, align 8, !tbaa !505
  %i.gh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 112
  %i.gi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 112
  %i.gj = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !505
  store <2 x ptr> %i.gj, ptr %i.gi, align 8, !tbaa !505
  %i.gk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 128
  %i.gl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 128 ; 2 uses
  %i.gm = add nsw i64 %.012.i.i.i.i.i.i37, -8
  %i.gn = icmp sgt i64 %.012.i.i.i.i.i.i37, 8
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i.i36, label %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i28, !llvm.loop !17

_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36, %._crit_edge.i24
  %.08.lcssa.i.i.i.i.i.i29 = phi ptr [ %.sroa.0.0.lcssa.i25, %._crit_edge.i24 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ], [ %i.gl, %.lr.ph.i.i.i.i.i.i36 ]
  %i.go = ptrtoint ptr %.016.lcssa.i26 to i64
  %i.gp = sub i64 %i.b, %i.go
  %i.gq = ashr exact i64 %i.gp, 4                 ; 5 uses
  %i.gr = icmp sgt i64 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i19.i31.preheader, label %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit52

.lr.ph.i.i.i.i.i19.i31.preheader:                 ; preds = %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i28
  %i.gs = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i29 to i64
  %i.gt = ptrtoint ptr %.sroa.0.0.lcssa.i25 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i25, i64 %i.gu ; 2 uses
  %xtraiter255 = and i64 %i.gq, 7                 ; 2 uses
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph.i.i.i.i.i19.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i31.prol

.lr.ph.i.i.i.i.i19.i31.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader, %.lr.ph.i.i.i.i.i19.i31.prol
  %.012.i.i.i.i.i20.i32.prol = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i19.i31.prol ], [ %i.gq, %.lr.ph.i.i.i.i.i19.i31.preheader ]
  %.0811.i.i.i.i.i21.i33.prol = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i19.i31.prol ], [ %i.gv, %.lr.ph.i.i.i.i.i19.i31.preheader ] ; 2 uses
  %.0910.i.i.i.i.i22.i34.prol = phi ptr [ %i.gx, %.lr.ph.i.i.i.i.i19.i31.prol ], [ %.016.lcssa.i26, %.lr.ph.i.i.i.i.i19.i31.preheader ] ; 2 uses
  %prol.iter257 = phi i64 [ %prol.iter257.next, %.lr.ph.i.i.i.i.i19.i31.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i31.preheader ]
  %i.gw = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i34.prol, align 8, !tbaa !505
  store <2 x ptr> %i.gw, ptr %.0811.i.i.i.i.i21.i33.prol, align 8, !tbaa !505
  %i.gx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34.prol, i64 16 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33.prol, i64 16 ; 2 uses
  %i.gz = add nsw i64 %.012.i.i.i.i.i20.i32.prol, -1 ; 2 uses
  %prol.iter257.next = add i64 %prol.iter257, 1   ; 2 uses
  %prol.iter257.cmp.not = icmp eq i64 %prol.iter257.next, %xtraiter255
  br i1 %prol.iter257.cmp.not, label %.lr.ph.i.i.i.i.i19.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i31.prol, !llvm.loop !1728

.lr.ph.i.i.i.i.i19.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i31.prol, %.lr.ph.i.i.i.i.i19.i31.preheader
  %.012.i.i.i.i.i20.i32.unr = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.gz, %.lr.ph.i.i.i.i.i19.i31.prol ]
  %.0811.i.i.i.i.i21.i33.unr = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.gy, %.lr.ph.i.i.i.i.i19.i31.prol ]
  %.0910.i.i.i.i.i22.i34.unr = phi ptr [ %.016.lcssa.i26, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.gx, %.lr.ph.i.i.i.i.i19.i31.prol ]
  %i.ha = icmp ult i64 %i.gq, 8
  br i1 %i.ha, label %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit52, label %.lr.ph.i.i.i.i.i19.i31

.lr.ph.i.i.i.i.i19.i31:                           ; preds = %.lr.ph.i.i.i.i.i19.i31.prol.loopexit, %.lr.ph.i.i.i.i.i19.i31
  %.012.i.i.i.i.i20.i32 = phi i64 [ %i.hz, %.lr.ph.i.i.i.i.i19.i31 ], [ %.012.i.i.i.i.i20.i32.unr, %.lr.ph.i.i.i.i.i19.i31.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i33 = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0811.i.i.i.i.i21.i33.unr, %.lr.ph.i.i.i.i.i19.i31.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i34 = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0910.i.i.i.i.i22.i34.unr, %.lr.ph.i.i.i.i.i19.i31.prol.loopexit ] ; 9 uses
  %i.hb = load <2 x ptr>, ptr %.0910.i.i.i.i.i22.i34, align 8, !tbaa !505
  store <2 x ptr> %i.hb, ptr %.0811.i.i.i.i.i21.i33, align 8, !tbaa !505
  %i.hc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 16
  %i.he = load <2 x ptr>, ptr %i.hc, align 8, !tbaa !505
  store <2 x ptr> %i.he, ptr %i.hd, align 8, !tbaa !505
  %i.hf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 32
  %i.hh = load <2 x ptr>, ptr %i.hf, align 8, !tbaa !505
  store <2 x ptr> %i.hh, ptr %i.hg, align 8, !tbaa !505
  %i.hi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 48
  %i.hj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 48
  %i.hk = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !505
  store <2 x ptr> %i.hk, ptr %i.hj, align 8, !tbaa !505
  %i.hl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 64
  %i.hm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 64
  %i.hn = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !505
  store <2 x ptr> %i.hn, ptr %i.hm, align 8, !tbaa !505
  %i.ho = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 80
  %i.hp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 80
  %i.hq = load <2 x ptr>, ptr %i.ho, align 8, !tbaa !505
  store <2 x ptr> %i.hq, ptr %i.hp, align 8, !tbaa !505
  %i.hr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 96
  %i.hs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 96
  %i.ht = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !505
  store <2 x ptr> %i.ht, ptr %i.hs, align 8, !tbaa !505
  %i.hu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 112
  %i.hv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 112
  %i.hw = load <2 x ptr>, ptr %i.hu, align 8, !tbaa !505
  store <2 x ptr> %i.hw, ptr %i.hv, align 8, !tbaa !505
  %i.hx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 128
  %i.hy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 128
  %i.hz = add nsw i64 %.012.i.i.i.i.i20.i32, -8
  %i.ia = icmp sgt i64 %.012.i.i.i.i.i20.i32, 8
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i19.i31, label %_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit52, !llvm.loop !17

_ZSt12__move_mergeIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN19LinkDotScopeVisitor26processDeferredAliasScopesEvEUlRKS5_SH_E_EEET0_T_SL_SL_SL_SK_T1_.exit52: ; preds = %.lr.ph.i.i.i.i.i19.i31.prol.loopexit, %.lr.ph.i.i.i.i.i19.i31, %_ZSt4moveIPSt4pairIP13AstAliasScopeP7VSymEntEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
