Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PHIElimination?download=true
inline.NumInlined: 2343
inline.NumDeleted: 1272
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_118PHIEliminationImpl3runERN4llvm15MachineFunctionE:bb.a
  %.not22.i.i = icmp ne i64 %.fr.i.i, 0
  %i.cj = icmp eq i32 %i.bu, 0
  %or.cond.i.i173 = and i1 %i.cj, %.not22.i.i
  br i1 %or.cond.i.i173, label %bb.l, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i, !llvm.loop !229

bb.l:                                             ; preds = %bb.k
  %i.ck = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.fr.i.i, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.cl, 64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.2.i.ph.i = phi i32 [ %i.cm, %bb.l ], [ %i.cg, %bb.j ]
  %i.cn = icmp eq i32 %i.bt, 0
  br i1 %i.cn, label %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i, label %bb.p

_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i: ; preds = %bb.m, %bb.k
  %i.co = load ptr, ptr %.sroa.10.0554, align 8, !tbaa !88, !noalias !489 ; 5 uses
  %i.cp = icmp eq ptr %i.co, %i.am
  br i1 %i.cp, label %_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !488, !noalias !489
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.i.i171 = phi i64 [ %indvars.iv.next.i.i172, %bb.o ], [ 0, %bb.n ] ; 4 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.i.i171, 2
  call void @llvm.assume(i1 %i.ct), !noalias !489
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i171
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !89, !noalias !489 ; 3 uses
  %.not.i9.i = icmp eq i64 %i.cv, 0
  %indvars.iv.next.i.i172 = add nuw nsw i64 %indvars.iv.i.i171, 1
  br i1 %.not.i9.i, label %bb.o, label %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i, !llvm.loop !225

_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i: ; preds = %bb.o
  %i.cw = shl i32 %i.cr, 7
  %i.cx = trunc nuw nsw i64 %indvars.iv.i.i171 to i32
  %i.cy = shl nuw nsw i32 %i.cx, 6
  %i.cz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = or disjoint i32 %i.cy, %i.da
  %.frozen.i = freeze i32 %i.db                   ; 4 uses
  %i.dc = add nuw nsw i32 %.frozen.i, %i.cw
  %.urem.i = add i32 %.frozen.i, -64
  %.cmp.i = icmp ult i32 %.frozen.i, 64
  %i.dd = select i1 %.cmp.i, i32 %.frozen.i, i32 %.urem.i
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = lshr i64 %i.cv, %i.de
  br label %_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit

bb.p:                                             ; preds = %bb.m
  %.2.i.ph.frozen.i = freeze i32 %.2.i.ph.i       ; 5 uses
  %i.dg = lshr i32 %.2.i.ph.frozen.i, 6
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !89, !noalias !489
  %.urem12.i = add i32 %.2.i.ph.frozen.i, -64
  %.cmp13.i = icmp ult i32 %.2.i.ph.frozen.i, 64
  %i.dk = select i1 %.cmp13.i, i32 %.2.i.ph.frozen.i, i32 %.urem12.i
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = lshr i64 %i.dj, %i.dl
  %i.dn = load i32, ptr %i.bs, align 8, !tbaa !488, !noalias !489
  %i.do = shl i32 %i.dn, 7
  %i.dp = add nuw i32 %i.do, %.2.i.ph.frozen.i
  br label %_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit

_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit: ; preds = %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i, %.critedge.i169, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i, %bb.p
  %.sroa.30.3 = phi i64 [ %.sroa.30.2, %.critedge.i169 ], [ %i.dm, %bb.p ], [ %i.df, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i ], [ 0, %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i ]
  %.sroa.13.3 = phi i32 [ %.sroa.13.2, %.critedge.i169 ], [ %i.dp, %bb.p ], [ %i.dc, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i ], [ %.sroa.13.2, %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0554, %.critedge.i169 ], [ %.sroa.10.0554, %bb.p ], [ %i.co, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i ], [ %i.co, %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i ]
  %.sroa.0414.2 = phi i1 [ false, %.critedge.i169 ], [ false, %bb.p ], [ false, %_ZNK4llvm22SparseBitVectorElementILj128EE10find_firstEv.exit.i ], [ true, %_ZNK4llvm22SparseBitVectorElementILj128EE9find_nextEj.exit.i ]
  %i.dq = zext i32 %.sroa.13.0553 to i64
  %i.dr = load ptr, ptr %11, align 8, !tbaa !92
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.dq ; 12 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !88 ; 5 uses
  %i.du = icmp eq ptr %i.dt, %i.ds
  br i1 %i.du, label %.sink.split.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dx = icmp eq ptr %i.dw, %i.ds
  br i1 %i.dx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !93 ; 2 uses
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !491
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.in.i.i.i = phi ptr [ %i.dz, %bb.r ], [ %i.dw, %bb.q ] ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.in.i.i.i, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !488 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %i.bd
  br i1 %i.ec, label %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = icmp ugt i32 %i.eb, %i.bd
  br i1 %i.ed, label %.preheader.i.i.i, label %.preheader16.i.i.i

.preheader16.i.i.i:                               ; preds = %bb.t
  %.not18.i.i.i = icmp eq ptr %i.ds, %.in.i.i.i
  br i1 %.not18.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i.i.i67

.preheader.i.i.i:                                 ; preds = %bb.t
  %.not1522.i.i.i = icmp eq ptr %i.dt, %.in.i.i.i
  br i1 %.not1522.i.i.i, label %.sink.split.i.i.i, label %.lr.ph24.i.i.i

.lr.ph24.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.u
  %.sroa.08.023.i.i.i = phi ptr [ %i.ei, %bb.u ], [ %.in.i.i.i, %.preheader.i.i.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i.i.i, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !488
  %i.eg = icmp ugt i32 %i.ef, %i.bd
  br i1 %i.eg, label %bb.u, label %.sink.split.i.i.i

bb.u:                                             ; preds = %.lr.ph24.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i.i.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !93 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %i.ei, %i.dt
  br i1 %.not15.i.i.i, label %.sink.split.i.i.i, label %.lr.ph24.i.i.i, !llvm.loop !230

.lr.ph.i.i.i67:                                   ; preds = %.preheader16.i.i.i, %bb.v
  %.sroa.08.119.i.i.i = phi ptr [ %i.em, %bb.v ], [ %.in.i.i.i, %.preheader16.i.i.i ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.08.119.i.i.i, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !488
  %i.el = icmp ult i32 %i.ek, %i.bd
  br i1 %i.el, label %bb.v, label %.sink.split.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i67
  %i.em = load ptr, ptr %.sroa.08.119.i.i.i, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.em, %i.ds
  br i1 %.not.i.i.i68, label %.sink.split.i.i.i, label %.lr.ph.i.i.i67, !llvm.loop !231

.sink.split.i.i.i:                                ; preds = %bb.v, %.lr.ph.i.i.i67, %bb.u, %.lr.ph24.i.i.i, %.preheader.i.i.i, %.preheader16.i.i.i
  %.sroa.08.2.sink.i.i.i = phi ptr [ %i.dt, %bb.u ], [ %i.ds, %.preheader16.i.i.i ], [ %i.dt, %.preheader.i.i.i ], [ %.sroa.08.023.i.i.i, %.lr.ph24.i.i.i ], [ %.sroa.08.119.i.i.i, %.lr.ph.i.i.i67 ], [ %i.ds, %bb.v ]
  %.sroa.08.3.ph.i.i.i = phi ptr [ %i.ei, %bb.u ], [ %.in.i.i.i, %.preheader16.i.i.i ], [ %.in.i.i.i, %.preheader.i.i.i ], [ %.sroa.08.023.i.i.i, %.lr.ph24.i.i.i ], [ %.sroa.08.119.i.i.i, %.lr.ph.i.i.i67 ], [ %i.em, %bb.v ]
  %i.en = ptrtoint ptr %.sroa.08.2.sink.i.i.i to i64
  store i64 %i.en, ptr %i.dv, align 8, !tbaa !492
  br label %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i

_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i: ; preds = %.sink.split.i.i.i, %bb.s
  %.sroa.08.3.i.i.i = phi ptr [ %.in.i.i.i, %bb.s ], [ %.sroa.08.3.ph.i.i.i, %.sink.split.i.i.i ] ; 6 uses
  %i.eo = icmp eq ptr %.sroa.08.3.i.i.i, %i.ds
  br i1 %i.eo, label %.sink.split.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.08.3.i.i.i, i64 16
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !488 ; 2 uses
  %.not.i = icmp eq i32 %i.eq, %i.bd
  br i1 %.not.i, label %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.w
  %i.er = icmp ult i32 %i.eq, %i.bd
  br i1 %i.er, label %bb.x, label %.sink.split.i

bb.x:                                             ; preds = %.critedge.i
  %i.es = load ptr, ptr %.sroa.08.3.i.i.i, align 8, !tbaa !88
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %.critedge.i, %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i, %_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit
  %.sroa.010.0.sink.i = phi ptr [ %i.ds, %_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit ], [ %i.es, %bb.x ], [ %.sroa.08.3.i.i.i, %.critedge.i ], [ %.sroa.08.3.i.i.i, %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i ]
  %i.et = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i32 %i.bd, ptr %i.eu, align 8, !tbaa !488
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef %.sroa.010.0.sink.i) #17
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !97
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !97
  br label %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit

_ZN4llvm15SparseBitVectorILj128EE3setEj.exit:     ; preds = %bb.w, %.sink.split.i
  %.sroa.010.1.i = phi ptr [ %.sroa.08.3.i.i.i, %bb.w ], [ %i.et, %.sink.split.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.fa = ptrtoint ptr %.sroa.010.1.i to i64
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !492
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 24
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.bj ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !89
  %i.fe = or i64 %i.fd, %i.bg
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !89
  br i1 %.sroa.0414.2, label %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit, label %.preheader.i, !llvm.loop !232

_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit: ; preds = %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit, %bb.f
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !493
  %i.fh = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !116 ; 3 uses
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !494 ; 4 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = icmp ugt i64 %i.fn, 8
  %.not467555.old = icmp eq ptr %i.fk, %i.fj      ; 2 uses
  br i1 %i.fo, label %12, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit
  br i1 %.not467555.old, label %.loopexit495, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !118
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !493
  %.not61 = icmp eq ptr %i.fr, %i.fg
  br i1 %.not61, label %.loopexit495, label %.lr.ph

12:                                               ; preds = %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit
  br i1 %.not467555.old, label %.loopexit495, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %12
  %i.fs = lshr i32 %.052558, 7                    ; 7 uses
  %i.ft = and i32 %.052558, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = lshr i32 %.052558, 6
  %i.fx = and i32 %i.fw, 1
  %i.fy = zext nneg i32 %i.fx to i64
  %.pre672 = load ptr, ptr %11, align 8, !tbaa !92
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit90
  %i.fz = phi ptr [ %.pre672, %.lr.ph ], [ %i.hn, %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit90 ] ; 2 uses
  %.sroa.0403.0556 = phi ptr [ %i.fk, %.lr.ph ], [ %i.hu, %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit90 ] ; 2 uses
  %i.ga = load ptr, ptr %.sroa.0403.0556, align 8, !tbaa !118
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !493
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !537
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.gf ; 12 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !88 ; 5 uses
  %i.gi = icmp eq ptr %i.gh, %i.gg
  br i1 %i.gi, label %.sink.split.i81, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 24 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8            ; 3 uses
  %i.gl = icmp eq ptr %i.gk, %i.gg
  br i1 %i.gl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !93 ; 2 uses
  store ptr %i.gn, ptr %i.gj, align 8, !tbaa !491
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.in.i.i.i69 = phi ptr [ %i.gn, %bb.ac ], [ %i.gk, %bb.ab ] ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.in.i.i.i69, i64 16
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !488 ; 2 uses
  %i.gq = icmp eq i32 %i.gp, %i.fs
  br i1 %i.gq, label %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i77, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = icmp ugt i32 %i.gp, %i.fs
  br i1 %i.gr, label %.preheader.i.i.i85, label %.preheader16.i.i.i70

.preheader16.i.i.i70:                             ; preds = %bb.ae
  %.not18.i.i.i71 = icmp eq ptr %i.gg, %.in.i.i.i69
  br i1 %.not18.i.i.i71, label %.sink.split.i.i.i74, label %.lr.ph.i.i.i72

.preheader.i.i.i85:                               ; preds = %bb.ae
  %.not1522.i.i.i86 = icmp eq ptr %i.gh, %.in.i.i.i69
  br i1 %.not1522.i.i.i86, label %.sink.split.i.i.i74, label %.lr.ph24.i.i.i87

.lr.ph24.i.i.i87:                                 ; preds = %.preheader.i.i.i85, %bb.af
  %.sroa.08.023.i.i.i88 = phi ptr [ %i.gw, %bb.af ], [ %.in.i.i.i69, %.preheader.i.i.i85 ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i.i.i88, i64 16
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !488
  %i.gu = icmp ugt i32 %i.gt, %i.fs
  br i1 %i.gu, label %bb.af, label %.sink.split.i.i.i74

bb.af:                                            ; preds = %.lr.ph24.i.i.i87
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.08.023.i.i.i88, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !93 ; 3 uses
  %.not15.i.i.i89 = icmp eq ptr %i.gw, %i.gh
  br i1 %.not15.i.i.i89, label %.sink.split.i.i.i74, label %.lr.ph24.i.i.i87, !llvm.loop !230

.lr.ph.i.i.i72:                                   ; preds = %.preheader16.i.i.i70, %bb.ag
  %.sroa.08.119.i.i.i73 = phi ptr [ %i.ha, %bb.ag ], [ %.in.i.i.i69, %.preheader16.i.i.i70 ] ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.08.119.i.i.i73, i64 16
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !488
  %i.gz = icmp ult i32 %i.gy, %i.fs
  br i1 %i.gz, label %bb.ag, label %.sink.split.i.i.i74

bb.ag:                                            ; preds = %.lr.ph.i.i.i72
  %i.ha = load ptr, ptr %.sroa.08.119.i.i.i73, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.ha, %i.gg
  br i1 %.not.i.i.i84, label %.sink.split.i.i.i74, label %.lr.ph.i.i.i72, !llvm.loop !231

.sink.split.i.i.i74:                              ; preds = %bb.ag, %.lr.ph.i.i.i72, %bb.af, %.lr.ph24.i.i.i87, %.preheader.i.i.i85, %.preheader16.i.i.i70
  %.sroa.08.2.sink.i.i.i75 = phi ptr [ %i.gh, %bb.af ], [ %i.gg, %.preheader16.i.i.i70 ], [ %i.gh, %.preheader.i.i.i85 ], [ %.sroa.08.023.i.i.i88, %.lr.ph24.i.i.i87 ], [ %.sroa.08.119.i.i.i73, %.lr.ph.i.i.i72 ], [ %i.gg, %bb.ag ]
  %.sroa.08.3.ph.i.i.i76 = phi ptr [ %i.gw, %bb.af ], [ %.in.i.i.i69, %.preheader16.i.i.i70 ], [ %.in.i.i.i69, %.preheader.i.i.i85 ], [ %.sroa.08.023.i.i.i88, %.lr.ph24.i.i.i87 ], [ %.sroa.08.119.i.i.i73, %.lr.ph.i.i.i72 ], [ %i.ha, %bb.ag ]
  %i.hb = ptrtoint ptr %.sroa.08.2.sink.i.i.i75 to i64
  store i64 %i.hb, ptr %i.gj, align 8, !tbaa !492
  br label %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i77

_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i77: ; preds = %.sink.split.i.i.i74, %bb.ad
  %.sroa.08.3.i.i.i78 = phi ptr [ %.in.i.i.i69, %bb.ad ], [ %.sroa.08.3.ph.i.i.i76, %.sink.split.i.i.i74 ] ; 6 uses
  %i.hc = icmp eq ptr %.sroa.08.3.i.i.i78, %i.gg
  br i1 %i.hc, label %.sink.split.i81, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i77
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.08.3.i.i.i78, i64 16
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !488 ; 2 uses
  %.not.i79 = icmp eq i32 %i.he, %i.fs
  br i1 %.not.i79, label %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit90, label %.critedge.i80

.critedge.i80:                                    ; preds = %bb.ah
  %i.hf = icmp ult i32 %i.he, %i.fs
  br i1 %i.hf, label %bb.ai, label %.sink.split.i81

bb.ai:                                            ; preds = %.critedge.i80
  %i.hg = load ptr, ptr %.sroa.08.3.i.i.i78, align 8, !tbaa !88
  br label %.sink.split.i81

.sink.split.i81:                                  ; preds = %bb.ai, %.critedge.i80, %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i77, %bb.aa
  %.sroa.010.0.sink.i82 = phi ptr [ %i.gg, %bb.aa ], [ %i.hg, %bb.ai ], [ %.sroa.08.3.i.i.i78, %.critedge.i80 ], [ %.sroa.08.3.i.i.i78, %_ZN4llvm15SparseBitVectorILj128EE14FindLowerBoundEj.exit.i77 ]
  %i.hh = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i32 %i.fs, ptr %i.hi, align 8, !tbaa !488
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i8 0, i64 16, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef %.sroa.010.0.sink.i82) #17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !97
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !97
  %.pre671 = load ptr, ptr %11, align 8, !tbaa !92
  br label %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit90

_ZN4llvm15SparseBitVectorILj128EE3setEj.exit90:   ; preds = %bb.ah, %.sink.split.i81
  %i.hn = phi ptr [ %i.fz, %bb.ah ], [ %.pre671, %.sink.split.i81 ]
  %.sroa.010.1.i83 = phi ptr [ %.sroa.08.3.i.i.i78, %bb.ah ], [ %i.hh, %.sink.split.i81 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.hp = ptrtoint ptr %.sroa.010.1.i83 to i64
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !492
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i83, i64 24
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.fy ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !89
  %i.ht = or i64 %i.hs, %i.fv
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !89
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0403.0556, i64 8 ; 2 uses
  %.not467 = icmp eq ptr %i.hu, %i.fj
  br i1 %.not467, label %.loopexit495, label %bb.aa

.loopexit495:                                     ; preds = %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit90, %12, %bb.y, %bb.z, %.lr.ph560
  %i.hv = add nuw i32 %.052558, 1                 ; 2 uses
  %.not58 = icmp eq i32 %i.hv, %i.ah
  br i1 %.not58, label %.loopexit496, label %.lr.ph560, !llvm.loop !233

.loopexit496:                                     ; preds = %.loopexit495, %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE6resizeEm.exit, %.thread
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.0399.0561 = load ptr, ptr %i.hw, align 8, !tbaa !485 ; 2 uses
  %.not468562 = icmp eq ptr %.sroa.0399.0561, %i.hx
  br i1 %.not468562, label %._crit_edge, label %.lr.ph566

.lr.ph566:                                        ; preds = %.loopexit496
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ak

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit, %.loopexit496
  %.0.lcssa = phi i1 [ false, %.loopexit496 ], [ %.053.i, %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit ]
  %i.ie = load ptr, ptr %11, align 8, !tbaa !92   ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !119 ; 2 uses
  %.not4.i.i.i91 = icmp eq ptr %i.ie, %i.ig
  br i1 %.not4.i.i.i91, label %_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exit.i, label %.lr.ph.i.i.i92

.lr.ph.i.i.i92:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN4llvm15SparseBitVectorILj128EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ij, %_ZSt8_DestroyIN4llvm15SparseBitVectorILj128EEEEvPT_.exit.i.i.i ], [ %i.ie, %._crit_edge ] ; 4 uses
  %i.ih = load ptr, ptr %.05.i.i.i, align 8, !tbaa !88 ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.ih, %.05.i.i.i
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm15SparseBitVectorILj128EEEEvPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i92, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ih, %.lr.ph.i.i.i92 ] ; 2 uses
  %i.ii = load ptr, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !88 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i, i64 noundef 40) #19
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ii, %.05.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm15SparseBitVectorILj128EEEEvPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIN4llvm15SparseBitVectorILj128EEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i92
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.ij, %i.ig
  br i1 %.not.i.i.i93, label %_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i92, !llvm.loop !1

_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm15SparseBitVectorILj128EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exitthread-pre-split.i, %._crit_edge
  %i.ik = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exitthread-pre-split.i ], [ %i.ie, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exit.i
  %i.il = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !120
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #19
  br label %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm15SparseBitVectorILj128EEEEvT_S4_.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %.pre673 = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.bq

bb.ak:                                            ; preds = %.lr.ph566, %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit
  %.sroa.0399.0564 = phi ptr [ %.sroa.0399.0561, %.lr.ph566 ], [ %.sroa.0399.0, %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit ] ; 11 uses
  %.0563 = phi i1 [ false, %.lr.ph566 ], [ %.053.i, %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit ] ; 5 uses
  %i.iq = load ptr, ptr %i.hy, align 8, !tbaa !53 ; 5 uses
  %i.ir = load ptr, ptr %i.u, align 8, !tbaa !50
  %.not59 = icmp eq ptr %i.ir, null
  %. = select i1 %.not59, ptr null, ptr %11       ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0399.0564, i64 48 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.is, align 8
  %i.it = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = icmp eq ptr %i.is, %i.iu
  br i1 %i.iv, label %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0399.0564, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !538 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 52
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !539
  switch i32 %i.iz, label %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit [
    i32 74, label %bb.am
    i32 0, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0399.0564, i64 216
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !540, !range !19, !noundef !20
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not.i94 = icmp eq ptr %i.iq, null             ; 2 uses
  br i1 %.not.i94, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0399.0564, i64 220
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !541 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !78
  %i.jh = icmp ugt i32 %i.jg, %i.je
  br i1 %i.jh, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.i, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread.i

_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.i: ; preds = %bb.ao
  %i.ji = zext i32 %i.je to i64
  %i.jj = load ptr, ptr %i.iq, align 8, !tbaa !23
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.ji
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !543 ; 3 uses
  %.not64.i = icmp eq ptr %i.jl, null
  br i1 %.not64.i, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !544
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !121
  %i.jp = icmp eq ptr %.sroa.0399.0564, %i.jo
  br label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread.i

_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread.i: ; preds = %bb.ap, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.i, %bb.ao, %bb.an
  %i.jq = phi ptr [ null, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.i ], [ %i.jl, %bb.ap ], [ null, %bb.an ], [ null, %bb.ao ] ; 2 uses
  %i.jr = phi i1 [ false, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.i ], [ %i.jp, %bb.ap ], [ false, %bb.an ], [ false, %bb.ao ]
  %.not1822.i = icmp eq ptr %i.ix, %i.is
  br i1 %.not1822.i, label %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0399.0564, i64 24
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph25.i
  %.05624.i = phi i1 [ false, %.lr.ph25.i ], [ %.1.lcssa.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ] ; 3 uses
  %.sroa.01.023.i = phi ptr [ %i.ix, %.lr.ph25.i ], [ %i.kk, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ] ; 9 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i, i64 52
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !539
  switch i32 %i.jv, label %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit.loopexit [
    i32 74, label %bb.ar
    i32 0, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i, i64 40
  %i.jx = load i24, ptr %i.jw, align 8            ; 2 uses
  %i.jy = zext i24 %i.jx to i32
  %.not6519.i = icmp eq i24 %i.jx, 1
  br i1 %.not6519.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i, i64 32
  br label %bb.as

._crit_edge.i:                                    ; preds = %bb.bp, %bb.ar
  %.1.lcssa.i = phi i1 [ %.05624.i, %bb.ar ], [ %.5.i, %bb.bp ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.023.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.023.i, align 8
  %i.ka = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i95 = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i.i.i95, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %._crit_edge.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.01.023.i, i64 44
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !545
  %i.kd = and i32 %i.kc, 8
  %.not34.i.i.i.i = icmp eq i32 %i.kd, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.kf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.01.023.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !538 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 44
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !545
  %i.ki = and i32 %i.kh, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !234

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %._crit_edge.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.01.023.i, %._crit_edge.i ], [ %.sroa.01.023.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.kf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !538 ; 2 uses
  %.not18.i = icmp eq ptr %i.kk, %i.is
  br i1 %.not18.i, label %_ZN12_GLOBAL__N_118PHIEliminationImpl13SplitPHIEdgesERN4llvm15MachineFunctionERNS1_17MachineBasicBlockEPNS1_15MachineLoopInfoEPSt6vectorINS1_15SparseBitVectorILj128EEESaISA_EERNS1_21MachineDomTreeUpdaterE.exit.loopexit, label %bb.aq, !llvm.loop !235

bb.as:                                            ; preds = %bb.bp, %.lr.ph.i
  %.05521.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ra, %bb.bp ] ; 3 uses
  %.120.i = phi i1 [ %.05624.i, %.lr.ph.i ], [ %.5.i, %bb.bp ] ; 7 uses
  %i.kl = load ptr, ptr %i.jz, align 8, !tbaa !122 ; 2 uses
  %i.km = zext i32 %.05521.i to i64
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %i.kl, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !123 ; 7 uses
  %i.kq = add i32 %.05521.i, 1
  %i.kr = zext i32 %i.kq to i64
end_hunk_0
