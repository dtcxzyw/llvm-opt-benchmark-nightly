Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ite_utilities?download=true
inline.NumInlined: 5340
inline.NumDeleted: 1807
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt11__set_unionIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_SA_NS0_5__ops15_Iter_less_iterEET1_T_SE_T0_SF_SD_T2_:bb.a

bb.j:                                             ; preds = %bb.i
  %.not.i11 = icmp eq ptr %i.ag, %i.f
  br i1 %.not.i11, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14, label %bb.k, !prof !102

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = and i64 %i.ah, 1152920405095219200
  %.not.i.i12 = icmp eq i64 %i.ai, 1152920405095219200
  br i1 %.not.i.i12, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i13, label %bb.l, !prof !102

bb.l:                                             ; preds = %bb.k
  %i.aj = add i64 %i.ah, 1152920405095219200
  %i.ak = and i64 %i.aj, 1152920405095219200      ; 2 uses
  %i.al = and i64 %i.ah, -1152920405095219201
  %i.am = or disjoint i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.ag, align 8
  %i.an = icmp eq i64 %i.ak, 0
  br i1 %i.an, label %bb.m, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i13, !prof !102

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i13

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i13:  ; preds = %bb.m, %bb.l, %bb.k
  %i.ao = load ptr, ptr %.sroa.033.045, align 8, !tbaa !100 ; 5 uses
  store ptr %i.ao, ptr %.sroa.0.047, align 8, !tbaa !100
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = lshr i64 %i.ap, 40
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1048575                  ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 1048574
  br i1 %i.at, label %bb.n, label %bb.o, !prof !101

bb.n:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i13
  %i.au = add nuw nsw i32 %i.as, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 40
  %i.ax = and i64 %i.ap, -1152920405095219201
  %i.ay = or i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.ao, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14

bb.o:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i13
  %i.az = icmp eq i32 %i.as, 1048574
  br i1 %i.az, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14, !prof !102

bb.p:                                             ; preds = %bb.o
  %i.ba = or i64 %i.ap, 1152920405095219200
  store i64 %i.ba, ptr %i.ao, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14: ; preds = %bb.j, %bb.n, %bb.o, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.033.045, i64 8
  br label %bb.x

bb.q:                                             ; preds = %bb.i
  %.not.i15 = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i15, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18, label %bb.r, !prof !102

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.bd = and i64 %i.bc, 1152920405095219200
  %.not.i.i16 = icmp eq i64 %i.bd, 1152920405095219200
  br i1 %.not.i.i16, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i17, label %bb.s, !prof !102

bb.s:                                             ; preds = %bb.r
  %i.be = add i64 %i.bc, 1152920405095219200
  %i.bf = and i64 %i.be, 1152920405095219200      ; 2 uses
  %i.bg = and i64 %i.bc, -1152920405095219201
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.ag, align 8
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %bb.t, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i17, !prof !102

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i17

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i17:  ; preds = %bb.t, %bb.s, %bb.r
  %i.bj = load ptr, ptr %.sroa.038.046, align 8, !tbaa !100 ; 5 uses
  store ptr %i.bj, ptr %.sroa.0.047, align 8, !tbaa !100
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = lshr i64 %i.bk, 40
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 1048575                  ; 3 uses
  %i.bo = icmp samesign ult i32 %i.bn, 1048574
  br i1 %i.bo, label %bb.u, label %bb.v, !prof !101

bb.u:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i17
  %i.bp = add nuw nsw i32 %i.bn, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 40
  %i.bs = and i64 %i.bk, -1152920405095219201
  %i.bt = or i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18

bb.v:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i17
  %i.bu = icmp eq i32 %i.bn, 1048574
  br i1 %i.bu, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18, !prof !102

bb.w:                                             ; preds = %bb.v
  %i.bv = or i64 %i.bk, 1152920405095219200
  store i64 %i.bv, ptr %i.bj, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bj)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18: ; preds = %bb.q, %bb.u, %bb.v, %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.038.046, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.033.045, i64 8
  br label %bb.x

bb.x:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %.sroa.033.1 = phi ptr [ %.sroa.033.045, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ], [ %i.bb, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14 ], [ %i.bx, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18 ] ; 3 uses
  %.sroa.038.1 = phi ptr [ %i.ae, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit ], [ %.sroa.038.046, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit14 ], [ %i.bw, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit18 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 8 ; 2 uses
  %i.bz = icmp ne ptr %.sroa.038.1, %1
  %i.ca = icmp ne ptr %.sroa.033.1, %3
  %or.cond = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !1011

.critedge:                                        ; preds = %bb.x, %bb.a
  %.sroa.033.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.033.1, %bb.x ] ; 2 uses
  %.sroa.038.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.038.1, %bb.x ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.by, %bb.x ] ; 4 uses
  %i.cb = ptrtoint ptr %1 to i64
  %i.cc = ptrtoint ptr %.sroa.038.0.lcssa to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3                 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.de, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %i.ce, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.dd, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.critedge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.dc, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %.sroa.038.0.lcssa, %.critedge ] ; 3 uses
  %i.cg = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !100 ; 4 uses
  %i.ch = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, label %bb.y, !prof !102

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ci = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.cj = and i64 %i.ci, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, label %bb.z, !prof !102

bb.z:                                             ; preds = %bb.y
  %i.ck = add i64 %i.ci, 1152920405095219200
  %i.cl = and i64 %i.ck, 1152920405095219200      ; 2 uses
  %i.cm = and i64 %i.ci, -1152920405095219201
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.cg, align 8
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %bb.aa, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, !prof !102

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.cp = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !100 ; 5 uses
  store ptr %i.cp, ptr %.0811.i.i.i.i.i, align 8, !tbaa !100
  %i.cq = load i64, ptr %i.cp, align 8            ; 3 uses
  %i.cr = lshr i64 %i.cq, 40
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 1048575                  ; 3 uses
  %i.cu = icmp samesign ult i32 %i.ct, 1048574
  br i1 %i.cu, label %bb.ab, label %bb.ac, !prof !101

bb.ab:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i
  %i.cv = add nuw nsw i32 %i.ct, 1
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 40
  %i.cy = and i64 %i.cq, -1152920405095219201
  %i.cz = or i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.cp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i

bb.ac:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i
  %i.da = icmp eq i32 %i.ct, 1048574
  br i1 %i.da, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, !prof !102

bb.ad:                                            ; preds = %bb.ac
  %i.db = or i64 %i.cq, 1152920405095219200
  store i64 %i.db, ptr %i.cp, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cp)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = add nsw i64 %.012.i.i.i.i.i, -1
  %i.df = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.df, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !1012

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %.critedge ], [ %i.dd, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ]
  %i.dg = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.dh = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.di ; 3 uses
  %i.dk = ptrtoint ptr %3 to i64
  %i.dl = ptrtoint ptr %.sroa.033.0.lcssa to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 2 uses
  %i.do = icmp sgt i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit28

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27
  %.012.i.i.i.i.i21 = phi i64 [ %i.en, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27 ], [ %i.dn, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.em, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27 ], [ %i.dj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 3 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.el, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27 ], [ %.sroa.033.0.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 3 uses
  %i.dp = load ptr, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !100 ; 4 uses
  %i.dq = load ptr, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !100
  %.not.i.i.i.i.i.i24 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i.i.i.i.i24, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27, label %bb.ae, !prof !102

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i20
  %i.dr = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.ds = and i64 %i.dr, 1152920405095219200
  %.not.i.i.i.i.i.i.i25 = icmp eq i64 %i.ds, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i25, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i26, label %bb.af, !prof !102

bb.af:                                            ; preds = %bb.ae
  %i.dt = add i64 %i.dr, 1152920405095219200
  %i.du = and i64 %i.dt, 1152920405095219200      ; 2 uses
  %i.dv = and i64 %i.dr, -1152920405095219201
  %i.dw = or disjoint i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.dp, align 8
  %i.dx = icmp eq i64 %i.du, 0
  br i1 %i.dx, label %bb.ag, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i26, !prof !102

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i26

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i26: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dy = load ptr, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !100 ; 5 uses
  store ptr %i.dy, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !100
  %i.dz = load i64, ptr %i.dy, align 8            ; 3 uses
  %i.ea = lshr i64 %i.dz, 40
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 1048575                  ; 3 uses
  %i.ed = icmp samesign ult i32 %i.ec, 1048574
  br i1 %i.ed, label %bb.ah, label %bb.ai, !prof !101

bb.ah:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i26
  %i.ee = add nuw nsw i32 %i.ec, 1
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 40
  %i.eh = and i64 %i.dz, -1152920405095219201
  %i.ei = or i64 %i.eg, %i.eh
  store i64 %i.ei, ptr %i.dy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27

bb.ai:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i26
  %i.ej = icmp eq i32 %i.ec, 1048574
  br i1 %i.ej, label %bb.aj, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27, !prof !102

bb.aj:                                            ; preds = %bb.ai
  %i.ek = or i64 %i.dz, 1152920405095219200
  store i64 %i.ek, ptr %i.dy, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27: ; preds = %bb.aj, %bb.ai, %bb.ah, %.lr.ph.i.i.i.i.i20
  %i.el = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 8 ; 2 uses
  %i.en = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.eo = icmp sgt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit28, !llvm.loop !1012

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit28: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %.08.lcssa.i.i.i.i.i19 = phi ptr [ %i.dj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ], [ %i.em, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i27 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i19 to i64
  %i.ep = sub i64 %5, %i.dg
  %i.eq = getelementptr inbounds i8, ptr %i.dj, i64 %i.ep
  ret ptr %i.eq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !186 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !100
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1099511627775              ; 2 uses
  %i.j = icmp samesign ult i64 %i.e, %i.i         ; 2 uses
  %.in.v.i = select i1 %i.j, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !186 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.j, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.m = icmp eq ptr %.019.lcssa29.i, %i.l
  br i1 %i.m, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100
  %.pre18 = load i64, ptr %.pre, align 8
  %.pre19 = load ptr, ptr %1, align 8, !tbaa !100
  %.pre20 = load i64, ptr %.pre19, align 8
  %.pre21 = and i64 %.pre18, 1099511627775
  %.pre22 = and i64 %.pre20, 1099511627775
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.pre-phi23 = phi i64 [ %.pre22, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.pre-phi = phi i64 [ %.pre21, %bb.c ], [ %i.i, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.n, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp samesign ult i64 %.pre-phi, %.pre-phi23
  br i1 %i.o, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.p, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load ptr, ptr %1, align 8, !tbaa !100
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 1099511627775
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 1099511627775
  %i.x = icmp samesign ult i64 %i.t, %i.w
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.y = phi i1 [ %i.x, %bb.e ], [ true, %select.unfold ]
  %i.z = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26 ; 3 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !164
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !164
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.z, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::hash", align 1        ; 3 uses
  %3 = alloca %"struct.std::hash", align 1        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !297
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0, %bb.d ]
  %.sroa.06.0 = load ptr, ptr %.sroa.06.0.in, align 8, !tbaa !105 ; 4 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  %i.f = load <2 x ptr>, ptr %i.e, align 8
  %i.g = icmp eq <2 x ptr> %i.d, %i.f             ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %bb.c, !llvm.loop !1013

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.k = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.l = xor i64 %i.k, -3750763034362895579
  %i.m = mul i64 %i.l, 1099511628211
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = xor i64 %i.o, %i.m
  %i.q = mul i64 %i.p, 1099511628211              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !207  ; 2 uses
  %i.t = urem i64 %i.q, %i.s                      ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !206
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105  ; 2 uses
  %i.y = load <2 x ptr>, ptr %1, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.z = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ak, %bb.h ]
  %i.aa = phi ptr [ %i.x, %bb.f ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ab = icmp eq i64 %i.q, %i.z
  br i1 %i.ab, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8
  %i.ae = icmp eq <2 x ptr> %i.y, %i.ad           ; 2 uses
  %i.af = extractelement <2 x i1> %i.ae, i64 0
  %i.ag = extractelement <2 x i1> %i.ae, i64 1
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i, %bb.g
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !105 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !110 ; 2 uses
  %i.al = urem i64 %i.ak, %i.s
  %.not19.i.i = icmp eq i64 %i.al, %i.t
  br i1 %.not19.i.i, label %bb.g, label %_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, !llvm.loop !25

_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEES4_ES0_IKS5_S4_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESF_EENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit: ; preds = %bb.h, %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i, %bb.c, %bb.d, %bb.e
  %.sroa.06.1 = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ %.sroa.06.0, %bb.d ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i ], [ %i.aa, %_ZNKSt8__detail15_Hashtable_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESE_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i ], [ null, %bb.h ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseISt4pairIN4cvc58internal12NodeTemplateILb1EEES5_ES1_IKS6_S5_ESaIS8_ENS_10_Select1stESt8equal_toIS6_ENS3_16PairHashFunctionIS5_S5_St4hashIS5_ESF_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.693", align 1    ; 3 uses
  %3 = alloca %"class.std::tuple.782", align 8    ; 4 uses
  %4 = alloca %"struct.std::hash", align 1        ; 3 uses
  %5 = alloca %"struct.std::hash", align 1        ; 3 uses
  %6 = alloca %"struct.std::_Hashtable<std::pair<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>, std::pair<const std::pair<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>, cvc5::internal::NodeTemplate<true>>, std::allocator<std::pair<const std::pair<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>, cvc5::internal::NodeTemplate<true>>>, std::__detail::_Select1st, std::equal_to<std::pair<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>>, cvc5::internal::PairHashFunction<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = xor i64 %i.a, -3750763034362895579
  %i.c = mul i64 %i.b, 1099511628211
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
end_hunk_0
