Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/loopsubdiv?download=true
inline.NumInlined: 1399
inline.NumDeleted: 708
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4pbrt13LoopSubdivideEPKNS_9TransformEbiN4pstd4spanIKiEENS4_IKNS_6Point3IfEEEENS3_3pmr21polymorphic_allocatorISt4byteEE:.noexc

_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.m, %.noexc645
  %.not.i17.i.i.i643 = icmp eq ptr %.sroa.01535.01746, null
  br i1 %.not.i17.i.i.i643, label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.01535.01746, i64 noundef %i.az) #19
  br label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  br label %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.j
  %.sroa.01535.4 = phi ptr [ %i.bh, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.01535.01746, %bb.j ] ; 7 uses
  %.pn1601 = phi ptr [ %i.bi, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.121542.01747, %bb.j ]
  %.sroa.17.4 = phi ptr [ %i.bk, %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.17.01748, %bb.j ] ; 3 uses
  %.sroa.121542.1 = getelementptr inbounds nuw i8, ptr %.pn1601, i64 8 ; 2 uses
  %indvars.iv.next1909 = add nuw nsw i64 %indvars.iv1908, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1909, %i.p
  br i1 %exitcond.not, label %.lr.ph1757.preheader, label %.lr.ph1750, !llvm.loop !96

.lr.ph1757.preheader:                             ; preds = %_ZNSt6vectorIPN4pbrt6SDFaceESaIS2_EE9push_backEOS2_.exit
  %xtraiter = and i64 %i.p, 1
  %.off = add i64 %4, -3
  %i.bl = icmp ult i64 %.off, 3
  br i1 %i.bl, label %.lr.ph1757.epil.preheader, label %.lr.ph1757.preheader.new

.lr.ph1757.preheader.new:                         ; preds = %.lr.ph1757.preheader
  %unroll_iter = and i64 %i.p, 9223372036854775806
  br label %.lr.ph1757

.loopexit1651:                                    ; preds = %_ZNKSt6vectorIPN4pbrt6SDFaceESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1653 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

.loopexit.split-lp1652:                           ; preds = %bb.l
  %lpad.loopexit.split-lp1654 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

._crit_edge1758.thread:                           ; preds = %.noexc637
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !149
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !150
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !30
  br label %.preheader1643

.lr.ph1764.preheader.unr-lcssa:                   ; preds = %.lr.ph1757
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1764.preheader, label %.lr.ph1757.epil.preheader

.lr.ph1757.epil.preheader:                        ; preds = %.lr.ph1764.preheader.unr-lcssa, %.lr.ph1757.preheader
  %.05701756.epil.init = phi ptr [ %3, %.lr.ph1757.preheader ], [ %i.em, %.lr.ph1764.preheader.unr-lcssa ] ; 3 uses
  %.05711755.epil.init = phi i64 [ 0, %.lr.ph1757.preheader ], [ %i.el, %.lr.ph1764.preheader.unr-lcssa ]
  %lcmp.mod2435 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod2435)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01535.4, i64 %.05711755.epil.init
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23 ; 6 uses
  %i.bt = load i32, ptr %.05701756.epil.init, align 4, !tbaa !31
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20 ; 2 uses
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %.05701756.epil.init, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !31
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.bs, ptr %i.ce, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %.05701756.epil.init, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !31
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.bs, ptr %i.cl, align 8, !tbaa !36
  br label %.lr.ph1764.preheader

.lr.ph1764.preheader:                             ; preds = %.lr.ph1764.preheader.unr-lcssa, %.lr.ph1757.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 16 uses
  store i32 0, ptr %i.cm, align 8, !tbaa !149
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !150
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 5 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !30
  %i.cr = insertelement <2 x ptr> poison, ptr %i.cm, i64 0
  %i.cs = shufflevector <2 x ptr> %i.cr, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph1764

.lr.ph1757:                                       ; preds = %.lr.ph1757, %.lr.ph1757.preheader.new
  %.05701756 = phi ptr [ %3, %.lr.ph1757.preheader.new ], [ %i.em, %.lr.ph1757 ] ; 7 uses
  %.05711755 = phi i64 [ 0, %.lr.ph1757.preheader.new ], [ %i.el, %.lr.ph1757 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1757.preheader.new ], [ %niter.next.1, %.lr.ph1757 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01535.4, i64 %.05711755
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !23 ; 6 uses
  %i.cv = load i32, ptr %.05701756, align 4, !tbaa !31
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !20 ; 2 uses
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.cu, ptr %i.cz, align 8, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %.05701756, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !31
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.de, ptr %i.df, align 8, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.cu, ptr %i.dg, align 8, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %.05701756, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !31
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.cu, ptr %i.dn, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %.05701756, i64 12
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01535.4, i64 %.05711755
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !23 ; 6 uses
  %i.ds = load i32, ptr %i.do, align 4, !tbaa !31
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !20 ; 2 uses
  store ptr %i.dv, ptr %i.dr, align 8, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.dr, ptr %i.dw, align 8, !tbaa !36
  %i.dx = getelementptr inbounds nuw i8, ptr %.05701756, i64 16
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !31
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !20 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.dr, ptr %i.ed, align 8, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %.05701756, i64 20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !31
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !20 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store ptr %i.dr, ptr %i.ek, align 8, !tbaa !36
  %i.el = add nuw nsw i64 %.05711755, 2           ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05701756, i64 24 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph1764.preheader.unr-lcssa, label %.lr.ph1757, !llvm.loop !97

.preheader1643:                                   ; preds = %bb.o, %._crit_edge1758.thread
  %i.en = phi ptr [ %i.bn, %._crit_edge1758.thread ], [ %i.cn, %bb.o ] ; 4 uses
  %.sroa.01535.0.lcssa21972235 = phi ptr [ null, %._crit_edge1758.thread ], [ %.sroa.01535.4, %bb.o ] ; 9 uses
  %.sroa.121542.0.lcssa22132234 = phi ptr [ null, %._crit_edge1758.thread ], [ %.sroa.121542.1, %bb.o ] ; 2 uses
  %.sroa.17.0.lcssa22142233 = phi ptr [ null, %._crit_edge1758.thread ], [ %.sroa.17.4, %bb.o ] ; 4 uses
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !145 ; 2 uses
  %.not1858 = icmp eq i64 %i.eo, 0
  br i1 %.not1858, label %._crit_edge1767, label %.lr.ph1766

.lr.ph1764:                                       ; preds = %.lr.ph1764.preheader, %bb.o
  %indvars.iv1920 = phi i64 [ 0, %.lr.ph1764.preheader ], [ %indvars.iv.next1921, %bb.o ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01535.4, i64 %indvars.iv1920
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !23 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.eq, i64 0
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit
  %indvars.iv.next1921 = add nuw nsw i64 %indvars.iv1920, 1 ; 2 uses
  %exitcond1923.not = icmp eq i64 %indvars.iv.next1921, %i.p
  br i1 %exitcond1923.not, label %.preheader1643, label %.lr.ph1764, !llvm.loop !98

bb.p:                                             ; preds = %.lr.ph1764, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit
  %indvars.iv1916 = phi i64 [ 0, %.lr.ph1764 ], [ %indvars.iv.next1917, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit ] ; 4 uses
  %indvars.iv.next1917 = add nuw nsw i64 %indvars.iv1916, 1 ; 3 uses
  %i.et = icmp eq i64 %indvars.iv.next1917, 3     ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv1916
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !20 ; 4 uses
  %i.ew = select i1 %i.et, i64 0, i64 %indvars.iv.next1917
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !20 ; 4 uses
  %i.ez = icmp ult ptr %i.ey, %i.ev
  %.sroa.speculated5.i = select i1 %i.ez, ptr %i.ey, ptr %i.ev ; 15 uses
  %i.fa = icmp ult ptr %i.ev, %i.ey
  %.sroa.speculated.i = select i1 %i.fa, ptr %i.ey, ptr %i.ev ; 8 uses
  %i.fb = load ptr, ptr %i.cn, align 8, !tbaa !28 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.fb, %bb.p ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cm, %bb.p ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !20 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %.sroa.speculated5.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = icmp ult ptr %i.fg, %.sroa.speculated.i
  %i.fi = icmp ult ptr %i.fd, %.sroa.speculated5.i
  %.0.i.i.i.i.i = select i1 %i.fe, i1 %i.fh, i1 %i.fi ; 4 uses
  %.19.i.i.i = select i1 %.0.i.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %.0.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !99

_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.fj = icmp eq ptr %.19.i.i.i, %i.cm
  br i1 %i.fj, label %.lr.ph.i.i1211.preheader, label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE4findERKS1_.exit

_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fk = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !20 ; 2 uses
  %i.fl = icmp eq ptr %.sroa.speculated5.i, %i.fk
  %.19.i.i.i.sroa.sel1520.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel1520.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel1520.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.fm = load ptr, ptr %.19.i.i.i.sroa.sel1520.v.sroa.sel.v.sroa.sel, align 8
  %i.fn = icmp ult ptr %.sroa.speculated.i, %i.fm
  %i.fo = icmp ult ptr %.sroa.speculated5.i, %i.fk
  %.0.i.i.i.i = select i1 %i.fl, i1 %i.fn, i1 %i.fo
  br i1 %.0.i.i.i.i, label %.lr.ph.i.i1211.preheader, label %.lr.ph.i.i.i648

.lr.ph.i.i1211.preheader:                         ; preds = %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE4findERKS1_.exit, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  br label %.lr.ph.i.i1211

.lr.ph.i.i1211:                                   ; preds = %.lr.ph.i.i1211.preheader, %.lr.ph.i.i1211
  %.02125.i.i = phi ptr [ %.021.i.i, %.lr.ph.i.i1211 ], [ %i.fb, %.lr.ph.i.i1211.preheader ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !20 ; 3 uses
  %i.fr = icmp eq ptr %.sroa.speculated5.i, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %i.fu = icmp ult ptr %.sroa.speculated.i, %i.ft
  %i.fv = icmp ult ptr %.sroa.speculated5.i, %i.fq
  %.0.i.i.i.i1212 = select i1 %i.fr, i1 %i.fu, i1 %i.fv ; 2 uses
  %.in.v.i.i = select i1 %.0.i.i.i.i1212, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 %.in.v.i.i
  %.021.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i1213 = icmp eq ptr %.021.i.i, null
  br i1 %.not.i.i1213, label %._crit_edge.i.i, label %.lr.ph.i.i1211, !llvm.loop !100

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i1211
  br i1 %.0.i.i.i.i1212, label %._crit_edge.thread.i.i, label %bb.r

._crit_edge.thread.i.i:                           ; preds = %bb.p, %._crit_edge.i.i
  %.020.lcssa30.i.i = phi ptr [ %.02125.i.i, %._crit_edge.i.i ], [ %i.cm, %bb.p ] ; 4 uses
  %i.fw = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.fx = icmp eq ptr %.020.lcssa30.i.i, %i.fw
  br i1 %i.fx, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i.i
  %i.fy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i.i) #21 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %.pre.i1216 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !20
  %.phi.trans.insert20.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %.pre21.i = load ptr, ptr %.phi.trans.insert20.i, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  %i.fz = phi ptr [ %.pre21.i, %bb.q ], [ %i.ft, %._crit_edge.i.i ]
  %i.ga = phi ptr [ %.pre.i1216, %bb.q ], [ %i.fq, %._crit_edge.i.i ] ; 2 uses
  %.020.lcssa29.i.i = phi ptr [ %.020.lcssa30.i.i, %bb.q ], [ %.02125.i.i, %._crit_edge.i.i ]
  %i.gb = icmp eq ptr %i.ga, %.sroa.speculated5.i
  %i.gc = icmp ult ptr %i.fz, %.sroa.speculated.i
  %i.gd = icmp ult ptr %i.ga, %.sroa.speculated5.i
  %.0.i.i5.i.i = select i1 %i.gb, i1 %i.gc, i1 %i.gd
  br i1 %.0.i.i5.i.i, label %select.unfold.i, label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit

select.unfold.i:                                  ; preds = %bb.r, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.020.lcssa30.i.i, %._crit_edge.thread.i.i ], [ %.020.lcssa29.i.i, %bb.r ] ; 4 uses
  %i.ge = icmp eq ptr %.sroa.4.0.i.ph.i, %i.cm
  br i1 %i.ge, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, label %bb.s

bb.s:                                             ; preds = %select.unfold.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !20 ; 2 uses
  %i.gh = icmp eq ptr %.sroa.speculated5.i, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = icmp ult ptr %.sroa.speculated.i, %i.gj
  %i.gl = icmp ult ptr %.sroa.speculated5.i, %i.gg
  %.0.i.i.i6.i = select i1 %i.gh, i1 %i.gk, i1 %i.gl
  br label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i: ; preds = %bb.s, %select.unfold.i
  %i.gm = phi i1 [ %.0.i.i.i6.i, %bb.s ], [ true, %select.unfold.i ]
  %i.gn = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #17
          to label %.noexc1217 unwind label %bb.t ; 5 uses

.noexc1217:                                       ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store ptr %.sroa.speculated5.i, ptr %i.go, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store ptr %.sroa.speculated.i, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !151
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store <2 x ptr> %i.es, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.231514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = trunc nuw nsw i64 %indvars.iv1916 to i32
  store i32 %i.gp, ptr %.sroa.231514.0..sroa_idx, align 8, !tbaa !31
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gm, ptr noundef nonnull %i.gn, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cm) #20
  %i.gq = load i64, ptr %i.cq, align 8, !tbaa !30
  %i.gr = add i64 %i.gq, 1
  br label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit.sink.split

bb.t:                                             ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

.lr.ph.i.i.i648:                                  ; preds = %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE4findERKS1_.exit, %.lr.ph.i.i.i648
  %.012.i.i.i649 = phi ptr [ %.1.i.i.i655, %.lr.ph.i.i.i648 ], [ %i.fb, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE4findERKS1_.exit ] ; 6 uses
  %.0811.i.i.i650 = phi ptr [ %.19.i.i.i652, %.lr.ph.i.i.i648 ], [ %i.cm, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE4findERKS1_.exit ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i649, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !20 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %.sroa.speculated5.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i649, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = icmp ult ptr %i.gx, %.sroa.speculated.i
  %i.gz = icmp ult ptr %i.gu, %.sroa.speculated5.i
  %.0.i.i.i.i.i651 = select i1 %i.gv, i1 %i.gy, i1 %i.gz ; 4 uses
  %.19.i.i.i652 = select i1 %.0.i.i.i.i.i651, ptr %.0811.i.i.i650, ptr %.012.i.i.i649 ; 3 uses
  %.1.in.v.i.i.i653 = select i1 %.0.i.i.i.i.i651, i64 24, i64 16
  %.1.in.i.i.i654 = getelementptr inbounds nuw i8, ptr %.012.i.i.i649, i64 %.1.in.v.i.i.i653
  %.1.i.i.i655 = load ptr, ptr %.1.in.i.i.i654, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i656 = icmp eq ptr %.1.i.i.i655, null
  br i1 %.not.i.i.i656, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i657, label %.lr.ph.i.i.i648, !llvm.loop !99

_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i657: ; preds = %.lr.ph.i.i.i648
  %i.ha = icmp eq ptr %.19.i.i.i652, %i.cm
  br i1 %i.ha, label %.lr.ph.i.i1218, label %bb.u

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i657
  %.19.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i651, ptr %.0811.i.i.i650, ptr %.012.i.i.i649
  %.19.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.hb = load ptr, ptr %.19.i.i.i652.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !20 ; 2 uses
  %i.hc = icmp eq ptr %.sroa.speculated5.i, %i.hb
  %.19.i.i.i652.sroa.sel1523.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i651, ptr %.0811.i.i.i650, ptr %.012.i.i.i649
  %.19.i.i.i652.sroa.sel1523.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i652.sroa.sel1523.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.hd = load ptr, ptr %.19.i.i.i652.sroa.sel1523.v.sroa.sel.v.sroa.sel, align 8
  %i.he = icmp ult ptr %.sroa.speculated.i, %i.hd
  %i.hf = icmp ult ptr %.sroa.speculated5.i, %i.hb
  %.0.i.i.i.i658 = select i1 %i.hc, i1 %i.he, i1 %i.hf
  %spec.select.i.i659 = select i1 %.0.i.i.i.i658, ptr %i.cm, ptr %.19.i.i.i652
  br label %.lr.ph.i.i1218

.lr.ph.i.i1218:                                   ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i657, %bb.u
  %.sroa.0.0.i.i660 = phi ptr [ %spec.select.i.i659, %bb.u ], [ %i.cm, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i657 ] ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i660, i64 32
  %.sroa.01496.0.copyload1501 = load ptr, ptr %i.hg, align 8 ; 7 uses
  %.sroa.12.0..sroa_idx1502 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i660, i64 40
  %.sroa.12.0.copyload1503 = load ptr, ptr %.sroa.12.0..sroa_idx1502, align 8, !tbaa !151 ; 4 uses
  %.sroa.19.0..sroa_idx1508 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i660, i64 48
  %.sroa.19.0.copyload1509 = load ptr, ptr %.sroa.19.0..sroa_idx1508, align 8 ; 2 uses
  %.sroa.231514.0..sroa_idx1515 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i660, i64 64
  %.sroa.231514.0.copyload1516 = load i32, ptr %.sroa.231514.0..sroa_idx1515, align 8, !tbaa !31
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.19.0.copyload1509, i64 24
  %i.hi = sext i32 %.sroa.231514.0.copyload1516 to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.hi
  store ptr %i.eq, ptr %i.hj, align 8, !tbaa !23
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv1916
  store ptr %.sroa.19.0.copyload1509, ptr %i.hk, align 8, !tbaa !23
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i.i1218
  %.047.i.i = phi ptr [ %i.fb, %.lr.ph.i.i1218 ], [ %.0.i.i, %bb.y ] ; 8 uses
  %.02246.i.i = phi ptr [ %i.cm, %.lr.ph.i.i1218 ], [ %.123.i.i, %bb.y ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.047.i.i, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, %.sroa.01496.0.copyload1501 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.047.i.i, i64 40
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %.sroa.12.0.copyload1503
  %i.hr = icmp ult ptr %i.hm, %.sroa.01496.0.copyload1501
  %.0.i.i.i.i1219 = select i1 %i.hn, i1 %i.hq, i1 %i.hr
  br i1 %.0.i.i.i.i1219, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hs = icmp ult ptr %.sroa.12.0.copyload1503, %i.hp
  %i.ht = icmp ult ptr %.sroa.01496.0.copyload1501, %i.hm
  %.0.i.i24.i.i = select i1 %i.hn, i1 %i.hs, i1 %i.ht
  br i1 %.0.i.i24.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hu = getelementptr inbounds nuw i8, ptr %.047.i.i, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !38 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.047.i.i, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !39 ; 2 uses
  %.not10.i.i.i1220 = icmp eq ptr %i.hv, null
  br i1 %.not10.i.i.i1220, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230, label %.lr.ph.i.i.i1221

.lr.ph.i.i.i1221:                                 ; preds = %bb.x, %.lr.ph.i.i.i1221
  %.012.i.i.i1222 = phi ptr [ %.1.i.i.i1228, %.lr.ph.i.i.i1221 ], [ %i.hv, %bb.x ] ; 4 uses
  %.0811.i.i.i1223 = phi ptr [ %.19.i.i.i1225, %.lr.ph.i.i.i1221 ], [ %.047.i.i, %bb.x ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i.i.i1222, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !20 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %.sroa.01496.0.copyload1501
  %i.ib = getelementptr inbounds nuw i8, ptr %.012.i.i.i1222, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = icmp ult ptr %i.ic, %.sroa.12.0.copyload1503
  %i.ie = icmp ult ptr %i.hz, %.sroa.01496.0.copyload1501
  %.0.i.i.i.i.i1224 = select i1 %i.ia, i1 %i.id, i1 %i.ie ; 2 uses
  %.19.i.i.i1225 = select i1 %.0.i.i.i.i.i1224, ptr %.0811.i.i.i1223, ptr %.012.i.i.i1222 ; 2 uses
  %.1.in.v.i.i.i1226 = select i1 %.0.i.i.i.i.i1224, i64 24, i64 16
  %.1.in.i.i.i1227 = getelementptr inbounds nuw i8, ptr %.012.i.i.i1222, i64 %.1.in.v.i.i.i1226
  %.1.i.i.i1228 = load ptr, ptr %.1.in.i.i.i1227, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i1229 = icmp eq ptr %.1.i.i.i1228, null
  br i1 %.not.i.i.i1229, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230, label %.lr.ph.i.i.i1221, !llvm.loop !99

_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230: ; preds = %.lr.ph.i.i.i1221, %bb.x
  %.08.lcssa.i.i.i = phi ptr [ %.047.i.i, %bb.x ], [ %.19.i.i.i1225, %.lr.ph.i.i.i1221 ] ; 2 uses
  %.not10.i25.i.i = icmp eq ptr %i.hx, null
  br i1 %.not10.i25.i.i, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230, %.lr.ph.i26.i.i
  %.012.i27.i.i = phi ptr [ %.1.i33.i.i, %.lr.ph.i26.i.i ], [ %i.hx, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230 ] ; 4 uses
  %.0811.i28.i.i = phi ptr [ %.19.i30.i.i, %.lr.ph.i26.i.i ], [ %.02246.i.i, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230 ]
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i27.i.i, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !20 ; 2 uses
  %i.ih = icmp eq ptr %.sroa.01496.0.copyload1501, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i27.i.i, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = icmp ult ptr %.sroa.12.0.copyload1503, %i.ij
  %i.il = icmp ult ptr %.sroa.01496.0.copyload1501, %i.ig
  %.0.i.i.i29.i.i = select i1 %i.ih, i1 %i.ik, i1 %i.il ; 2 uses
  %.19.i30.i.i = select i1 %.0.i.i.i29.i.i, ptr %.012.i27.i.i, ptr %.0811.i28.i.i ; 2 uses
  %.1.in.v.i31.i.i = select i1 %.0.i.i.i29.i.i, i64 16, i64 24
  %.1.in.i32.i.i = getelementptr inbounds nuw i8, ptr %.012.i27.i.i, i64 %.1.in.v.i31.i.i
  %.1.i33.i.i = load ptr, ptr %.1.in.i32.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %.1.i33.i.i, null
  br i1 %.not.i34.i.i, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %.lr.ph.i26.i.i, !llvm.loop !101

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sink.i.i = phi i64 [ 24, %bb.v ], [ 16, %bb.w ]
  %.123.i.i = phi ptr [ %.02246.i.i, %bb.v ], [ %.047.i.i, %bb.w ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.047.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.im, align 8, !tbaa !37 ; 2 uses
  %.not.i.i1232 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i1232, label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i, label %bb.v, !llvm.loop !102

_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i: ; preds = %bb.y, %.lr.ph.i26.i.i, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230
  %.sroa.039.0.i.i = phi ptr [ %.08.lcssa.i.i.i, %.lr.ph.i26.i.i ], [ %.08.lcssa.i.i.i, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230 ], [ %.123.i.i, %bb.y ] ; 3 uses
  %.sroa.3.0.i.i = phi ptr [ %.19.i30.i.i, %.lr.ph.i26.i.i ], [ %.02246.i.i, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i1230 ], [ %.123.i.i, %bb.y ] ; 3 uses
  %i.in = load ptr, ptr %i.co, align 8, !tbaa !29
  %i.io = icmp eq ptr %.sroa.039.0.i.i, %i.in
  %i.ip = icmp eq ptr %.sroa.3.0.i.i, %i.cm
  %or.cond.i1231 = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %or.cond.i1231, label %bb.z, label %.critedge.i.i

bb.z:                                             ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  invoke void @_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %i.fb)
          to label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #22
  unreachable

_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i: ; preds = %bb.z
  store ptr null, ptr %i.cn, align 8, !tbaa !28
  store <2 x ptr> %i.cs, ptr %i.co, align 8, !tbaa !37
  br label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit.sink.split

.critedge.i.i:                                    ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit.i
  %.not8.i.i = icmp eq ptr %.sroa.039.0.i.i, %.sroa.3.0.i.i
  br i1 %.not8.i.i, label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i2.i
  %.sroa.06.09.i.i = phi ptr [ %i.is, %.lr.ph.i2.i ], [ %.sroa.039.0.i.i, %.critedge.i.i ] ; 2 uses
  %i.is = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i.i) #21 ; 2 uses
  %i.it = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cm) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 72) #19
  %i.iu = load i64, ptr %i.cq, align 8, !tbaa !30
  %i.iv = add i64 %i.iu, -1
  store i64 %i.iv, ptr %i.cq, align 8, !tbaa !30
  %.not.i3.i = icmp eq ptr %i.is, %.sroa.3.0.i.i
  br i1 %.not.i3.i, label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit, label %.lr.ph.i2.i, !llvm.loop !103

_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit.sink.split: ; preds = %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i, %.noexc1217
  %.sink = phi i64 [ %i.gr, %.noexc1217 ], [ 0, %_ZNSt8_Rb_treeIN4pbrt6SDEdgeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv.exit.i.i ]
  store i64 %.sink, ptr %i.cq, align 8, !tbaa !30
  br label %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit

_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit: ; preds = %.lr.ph.i2.i, %_ZNSt3setIN4pbrt6SDEdgeESt4lessIS1_ESaIS1_EE5eraseERKS1_.exit.sink.split, %bb.r, %.critedge.i.i
  br i1 %i.et, label %bb.o, label %bb.p, !llvm.loop !104

._crit_edge1767:                                  ; preds = %bb.ar, %.preheader1643
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.iw = ptrtoint ptr %.sroa.121542.0.lcssa22132234 to i64
  %i.ix = ptrtoint ptr %.sroa.01535.0.lcssa21972235 to i64 ; 2 uses
  %i.iy = sub i64 %i.iw, %i.ix                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i663 = icmp eq ptr %.sroa.121542.0.lcssa22132234, %.sroa.01535.0.lcssa21972235
  br i1 %.not.i.i.i.i663, label %.thread1571, label %bb.ab

.thread1571:                                      ; preds = %._crit_edge1767
  %i.iz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ja = getelementptr inbounds i8, ptr null, i64 %i.iy ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !43
  br label %bb.as

bb.ab:                                            ; preds = %._crit_edge1767
  %i.jc = icmp ugt i64 %i.iy, 9223372036854775800
  br i1 %i.jc, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN4pbrt6SDFaceEE8allocateEmPKv.exit.i.i.i.i, !prof !44

.noexc.i.i:                                       ; preds = %bb.ab
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc664 unwind label %bb.az

.noexc664:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN4pbrt6SDFaceEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ab
  %i.jd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #17
          to label %.noexc665 unwind label %bb.az ; 5 uses

.noexc665:                                        ; preds = %_ZNSt15__new_allocatorIPN4pbrt6SDFaceEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.jd, ptr %15, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !46
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.iy ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !43
  %i.jh = icmp samesign ugt i64 %i.iy, 8
  br i1 %i.jh, label %bb.ac, label %bb.ad, !prof !152

bb.ac:                                            ; preds = %.noexc665
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr align 8 %.sroa.01535.0.lcssa21972235, i64 %i.iy, i1 false)
  br label %bb.as

bb.ad:                                            ; preds = %.noexc665
  %i.ji = icmp eq i64 %i.iy, 8
  br i1 %i.ji, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.jj = load ptr, ptr %.sroa.01535.0.lcssa21972235, align 8, !tbaa !23
  store ptr %i.jj, ptr %i.jd, align 8, !tbaa !23
  br label %bb.as

.lr.ph1766:                                       ; preds = %.preheader1643, %bb.ar
  %.05751765 = phi i64 [ %i.kh, %bb.ar ], [ 0, %.preheader1643 ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01548.0.lcssa, i64 %.05751765
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !20 ; 9 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !36 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ak, %.lr.ph1766
  %.0576 = phi ptr [ %i.jn, %.lr.ph1766 ], [ %i.jy, %bb.ak ] ; 4 uses
  %i.jo = load ptr, ptr %.0576, align 8, !tbaa !20
  %i.jp = icmp eq ptr %i.jo, %i.jl
  br i1 %i.jp, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jq = getelementptr inbounds nuw i8, ptr %.0576, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !20
  %i.js = icmp eq ptr %i.jr, %i.jl
  br i1 %i.js, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jt = getelementptr inbounds nuw i8, ptr %.0576, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !20
  %i.jv = icmp eq ptr %i.ju, %i.jl
  br i1 %i.jv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
          to label %.noexc666 unwind label %.loopexit.split-lp1645

.noexc666:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.0711.lcssa.wide.i.i = phi i64 [ 0, %bb.af ], [ 1, %bb.ag ], [ 2, %bb.ah ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.0576, i64 24
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.0711.lcssa.wide.i.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !23 ; 3 uses
  %.not626 = icmp eq ptr %i.jy, null
  br i1 %.not626, label %.thread, label %bb.ak

.thread:                                          ; preds = %bb.aj
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jl, i64 33
  store i8 1, ptr %i.jz, align 1, !tbaa !47
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %.not627 = icmp eq ptr %i.jy, %i.jn
  br i1 %.not627, label %bb.al, label %bb.af, !llvm.loop !105

bb.al:                                            ; preds = %bb.ak
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jl, i64 33 ; 2 uses
  store i8 0, ptr %i.ka, align 1, !tbaa !47
  %i.kb = invoke noundef i32 @_ZN4pbrt8SDVertex7valenceEv(ptr noundef nonnull align 8 dereferenceable(34) %i.jl)
          to label %bb.am unwind label %.loopexit1644

bb.am:                                            ; preds = %bb.al
  %i.kc = icmp eq i32 %i.kb, 6
  br i1 %i.kc, label %bb.ar, label %bb.an

.loopexit1644:                                    ; preds = %bb.al, %bb.ao
  %lpad.loopexit1646 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

.loopexit.split-lp1645:                           ; preds = %bb.ai
  %lpad.loopexit.split-lp1647 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.an:                                            ; preds = %bb.am
  %.pre2008 = load i8, ptr %i.ka, align 1, !tbaa !47, !range !48
  %i.kd = trunc nuw i8 %.pre2008 to i1
  br i1 %i.kd, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.thread, %bb.an
  %i.ke = invoke noundef i32 @_ZN4pbrt8SDVertex7valenceEv(ptr noundef nonnull align 8 dereferenceable(34) %i.jl)
          to label %bb.ap unwind label %.loopexit1644

bb.ap:                                            ; preds = %bb.ao
  %i.kf = icmp eq i32 %i.ke, 4
  br i1 %i.kf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.am, %bb.aq
  %.sink2317 = phi i8 [ 1, %bb.am ], [ 0, %bb.aq ], [ 1, %bb.ap ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  store i8 %.sink2317, ptr %i.kg, align 8, !tbaa !153
  %i.kh = add nuw i64 %.05751765, 1               ; 2 uses
  %exitcond1924.not = icmp eq i64 %i.kh, %i.eo
  br i1 %exitcond1924.not, label %._crit_edge1767, label %.lr.ph1766, !llvm.loop !106

bb.as:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %.thread1571
  %i.ki = phi ptr [ %i.jg, %bb.ac ], [ %i.jg, %bb.ad ], [ %i.jg, %bb.ae ], [ %i.jb, %.thread1571 ] ; 2 uses
  %i.kj = phi ptr [ %i.jf, %bb.ac ], [ %i.jf, %bb.ad ], [ %i.jf, %bb.ae ], [ %i.ja, %.thread1571 ]
  %i.kk = phi ptr [ %i.je, %bb.ac ], [ %i.je, %bb.ad ], [ %i.je, %bb.ae ], [ %i.iz, %.thread1571 ] ; 5 uses
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.kl = ptrtoint ptr %.sroa.121555.0.lcssa to i64
  %i.km = ptrtoint ptr %.sroa.01548.0.lcssa to i64 ; 2 uses
  %i.kn = sub i64 %i.kl, %i.km                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i667 = icmp eq ptr %.sroa.121555.0.lcssa, %.sroa.01548.0.lcssa
  br i1 %.not.i.i.i.i667, label %.thread1572, label %bb.at

.thread1572:                                      ; preds = %bb.as
  %i.ko = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kp = getelementptr inbounds i8, ptr null, i64 %i.kn ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !51
  br label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.kr = icmp ugt i64 %i.kn, 9223372036854775800
  br i1 %i.kr, label %.noexc.i.i668, label %_ZNSt15__new_allocatorIPN4pbrt8SDVertexEE8allocateEmPKv.exit.i.i.i.i, !prof !44

.noexc.i.i668:                                    ; preds = %bb.at
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc669 unwind label %bb.ba

.noexc669:                                        ; preds = %.noexc.i.i668
  unreachable

_ZNSt15__new_allocatorIPN4pbrt8SDVertexEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.at
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #17
          to label %.noexc670 unwind label %bb.ba ; 5 uses

.noexc670:                                        ; preds = %_ZNSt15__new_allocatorIPN4pbrt8SDVertexEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ks, ptr %16, align 8, !tbaa !52
  %i.kt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !53
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kn ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !51
  %i.kw = icmp samesign ugt i64 %i.kn, 8
  br i1 %i.kw, label %bb.au, label %bb.av, !prof !152

bb.au:                                            ; preds = %.noexc670
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ks, ptr align 8 %.sroa.01548.0.lcssa, i64 %i.kn, i1 false)
  br label %bb.ax

end_hunk_0
begin_hunk_1_@_ZN4pbrt13LoopSubdivideEPKNS_9TransformEbiN4pstd4spanIKiEENS4_IKNS_6Point3IfEEEENS3_3pmr21polymorphic_allocatorISt4byteEE:.noexc
  %i.abr = load ptr, ptr %i.abo, align 8, !tbaa !55
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load ptr, ptr %i.abs, align 8
  %i.abu = invoke noundef ptr %i.abt(ptr noundef nonnull align 8 dereferenceable(8) %i.abo, i64 noundef %i.abq, i64 noundef 4)
          to label %.noexc771 unwind label %.loopexit1633, !inline_history !116

.noexc771:                                        ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i769
  store i64 %i.abn, ptr %i.lu, align 8, !tbaa !62
  store ptr %i.abu, ptr %i.lt, align 8, !tbaa !61
  br label %.lr.ph.i.i.i750.preheader

.lr.ph.i.i.i750.preheader:                        ; preds = %.noexc770, %.noexc771
  %i.abv = add i64 %indvar2468, 1
  %i.abw = add i64 %indvar2471, %i.abv
  %xtraiter2474 = and i64 %i.abn, 3               ; 3 uses
  %i.abx = icmp ult i64 %i.abw, 3
  br i1 %i.abx, label %.lr.ph.i.i.i750.epil.preheader, label %.lr.ph.i.i.i750.preheader.new

.lr.ph.i.i.i750.preheader.new:                    ; preds = %.lr.ph.i.i.i750.preheader
  %unroll_iter2478 = and i64 %i.abn, 4294967292
  br label %.lr.ph.i.i.i750

.lr.ph.i.i.i750:                                  ; preds = %.lr.ph.i.i.i750, %.lr.ph.i.i.i750.preheader.new
  %.013.i.i.i751 = phi i64 [ 0, %.lr.ph.i.i.i750.preheader.new ], [ %i.acn, %.lr.ph.i.i.i750 ] ; 5 uses
  %niter2479 = phi i64 [ 0, %.lr.ph.i.i.i750.preheader.new ], [ %niter2479.next.3, %.lr.ph.i.i.i750 ]
  %i.aby = load ptr, ptr %i.lt, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752 = icmp eq ptr %i.aby, null
  %i.abz = select i1 %.not.i9.i.i.i752, ptr %i.lw, ptr %i.aby
  %i.aca = getelementptr inbounds nuw [12 x i8], ptr %i.abz, i64 %.013.i.i.i751 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.aca, align 4
  %.sroa.6.0..sroa_idx.i.i754 = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754, align 4
  %i.acb = load ptr, ptr %i.lt, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.1 = icmp eq ptr %i.acb, null
  %i.acc = select i1 %.not.i9.i.i.i752.1, ptr %i.lw, ptr %i.acb
  %i.acd = getelementptr inbounds nuw [12 x i8], ptr %i.acc, i64 %.013.i.i.i751 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 12
  store <2 x float> zeroinitializer, ptr %i.ace, align 4
  %.sroa.6.0..sroa_idx.i.i754.1 = getelementptr inbounds nuw i8, ptr %i.acd, i64 20
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.1, align 4
  %i.acf = load ptr, ptr %i.lt, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.2 = icmp eq ptr %i.acf, null
  %i.acg = select i1 %.not.i9.i.i.i752.2, ptr %i.lw, ptr %i.acf
  %i.ach = getelementptr inbounds nuw [12 x i8], ptr %i.acg, i64 %.013.i.i.i751 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  store <2 x float> zeroinitializer, ptr %i.aci, align 4
  %.sroa.6.0..sroa_idx.i.i754.2 = getelementptr inbounds nuw i8, ptr %i.ach, i64 32
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.2, align 4
  %i.acj = load ptr, ptr %i.lt, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.3 = icmp eq ptr %i.acj, null
  %i.ack = select i1 %.not.i9.i.i.i752.3, ptr %i.lw, ptr %i.acj
  %i.acl = getelementptr inbounds nuw [12 x i8], ptr %i.ack, i64 %.013.i.i.i751 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 36
  store <2 x float> zeroinitializer, ptr %i.acm, align 4
  %.sroa.6.0..sroa_idx.i.i754.3 = getelementptr inbounds nuw i8, ptr %i.acl, i64 44
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.3, align 4
  %i.acn = add nuw i64 %.013.i.i.i751, 4          ; 2 uses
  %niter2479.next.3 = add i64 %niter2479, 4       ; 2 uses
  %niter2479.ncmp.3 = icmp eq i64 %niter2479.next.3, %unroll_iter2478
  br i1 %niter2479.ncmp.3, label %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa, label %.lr.ph.i.i.i750, !llvm.loop !110

_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa: ; preds = %.lr.ph.i.i.i750
  %lcmp.mod2476.not = icmp eq i64 %xtraiter2474, 0
  br i1 %lcmp.mod2476.not, label %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758, label %.lr.ph.i.i.i750.epil.preheader

.lr.ph.i.i.i750.epil.preheader:                   ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa, %.lr.ph.i.i.i750.preheader
  %.013.i.i.i751.epil.init = phi i64 [ 0, %.lr.ph.i.i.i750.preheader ], [ %i.acn, %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa ]
  %lcmp.mod2477 = icmp ne i64 %xtraiter2474, 0
  call void @llvm.assume(i1 %lcmp.mod2477)
  br label %.lr.ph.i.i.i750.epil

.lr.ph.i.i.i750.epil:                             ; preds = %.lr.ph.i.i.i750.epil, %.lr.ph.i.i.i750.epil.preheader
  %.013.i.i.i751.epil = phi i64 [ %i.acr, %.lr.ph.i.i.i750.epil ], [ %.013.i.i.i751.epil.init, %.lr.ph.i.i.i750.epil.preheader ] ; 2 uses
  %epil.iter2475 = phi i64 [ %epil.iter2475.next, %.lr.ph.i.i.i750.epil ], [ 0, %.lr.ph.i.i.i750.epil.preheader ]
  %i.aco = load ptr, ptr %i.lt, align 8, !tbaa !61 ; 2 uses
  %.not.i9.i.i.i752.epil = icmp eq ptr %i.aco, null
  %i.acp = select i1 %.not.i9.i.i.i752.epil, ptr %i.lw, ptr %i.aco
  %i.acq = getelementptr inbounds nuw [12 x i8], ptr %i.acp, i64 %.013.i.i.i751.epil ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.acq, align 4
  %.sroa.6.0..sroa_idx.i.i754.epil = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i754.epil, align 4
  %i.acr = add nuw i64 %.013.i.i.i751.epil, 1
  %epil.iter2475.next = add i64 %epil.iter2475, 1 ; 2 uses
  %epil.iter2475.cmp.not = icmp eq i64 %epil.iter2475.next, %xtraiter2474
  br i1 %epil.iter2475.cmp.not, label %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758, label %.lr.ph.i.i.i750.epil, !llvm.loop !117

_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758: ; preds = %.lr.ph.i.i.i750.epil, %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758.unr-lcssa
  %.pre.i757 = load ptr, ptr %i.lt, align 8, !tbaa !61 ; 2 uses
  store i64 %i.abn, ptr %i.lv, align 8, !tbaa !63
  %.not.i.i759 = icmp eq ptr %.pre.i757, null
  %i.acs = select i1 %.not.i.i759, ptr %i.lw, ptr %.pre.i757
  invoke void @_ZN4pbrt8SDVertex7oneRingEPNS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(34) %i.sr, ptr noundef nonnull %i.acs)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758
  %.sroa.029.0.copyload.i = load <2 x float>, ptr %i.sr, align 8
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %.sroa.230.0.copyload.i = load float, ptr %.sroa.230.0..sroa_idx.i, align 8, !tbaa !163
  %i.act = load ptr, ptr %i.lt, align 8, !tbaa !61 ; 4 uses
  %.not.i.i39.i = icmp eq ptr %i.act, null        ; 3 uses
  %i.acu = select i1 %.not.i.i39.i, ptr %i.lw, ptr %i.act ; 2 uses
  %.sroa.019.0.copyload.i760 = load <2 x float>, ptr %i.acu, align 4 ; 2 uses
  %.sroa.gep55.i = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %.sroa.sel.i = select i1 %.not.i.i39.i, ptr %.sroa.gep.i, ptr %.sroa.gep55.i
  %.sroa.220.0.copyload.i761 = load float, ptr %.sroa.sel.i, align 4, !tbaa !163
  %i.acv = getelementptr [12 x i8], ptr %i.acu, i64 %i.abn ; 2 uses
  %i.acw = getelementptr i8, ptr %i.acv, i64 -12
  %.sroa.07.0.copyload.i762 = load <2 x float>, ptr %i.acw, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx.i763 = getelementptr i8, ptr %i.acv, i64 -4
  %.sroa.28.0.copyload.i764 = load float, ptr %.sroa.28.0..sroa_idx.i763, align 4, !tbaa !163
  br i1 %.not.i.i39.i, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.acx = load i64, ptr %i.lu, align 8, !tbaa !62
  %i.acy = mul i64 %i.acx, 12
  %i.acz = load ptr, ptr %9, align 8, !tbaa !64   ; 2 uses
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !55
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 24
  %i.adc = load ptr, ptr %i.adb, align 8
  invoke void %i.adc(ptr noundef nonnull align 8 dereferenceable(8) %i.acz, ptr noundef nonnull %i.act, i64 noundef %i.acy, i64 noundef 4)
          to label %bb.dk unwind label %bb.di, !inline_history !1

bb.di:                                            ; preds = %bb.dh
  %i.add = landingpad { ptr, i32 }
          catch ptr null
  %i.ade = extractvalue { ptr, i32 } %i.add, 0
  call void @__clang_call_terminate(ptr %i.ade) #22
  unreachable

bb.dj:                                            ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EmRKS6_.exit.i758
  %i.adf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.body

bb.dk:                                            ; preds = %bb.dh, %bb.dg
  %i.adg = fmul float %.sroa.28.0.copyload.i764, 1.250000e-01
  %i.adh = fmul float %.sroa.220.0.copyload.i761, 1.250000e-01
  %i.adi = fmul float %.sroa.230.0.copyload.i, 7.500000e-01
  %i.adj = fadd float %i.adi, %i.adh
  %i.adk = fadd float %i.adj, %i.adg
  %i.adl = shufflevector <2 x float> %.sroa.019.0.copyload.i760, <2 x float> %.sroa.07.0.copyload.i762, <2 x i32> <i32 1, i32 3>
  %i.adm = fmul <2 x float> %i.adl, splat (float 1.250000e-01) ; 2 uses
  %i.adn = shufflevector <2 x float> %.sroa.07.0.copyload.i762, <2 x float> %i.adm, <2 x i32> <i32 0, i32 3>
  %i.ado = fmul <2 x float> %i.adn, <float 1.250000e-01, float 1.000000e+00>
  %i.adp = shufflevector <2 x float> %.sroa.019.0.copyload.i760, <2 x float> %i.adm, <2 x i32> <i32 0, i32 2>
  %i.adq = fmul <2 x float> %i.adp, <float 1.250000e-01, float 1.000000e+00>
  %i.adr = fmul <2 x float> %.sroa.029.0.copyload.i, splat (float 7.500000e-01)
  %i.ads = fadd <2 x float> %i.adr, %i.adq
  %i.adt = fadd <2 x float> %i.ads, %i.ado
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.dl

.loopexit1633:                                    ; preds = %_ZN4pbrt13InlinedVectorINS_6Point3IfEELi16EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit.thread.i.i.i769
  %lpad.loopexit1635 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1634:                           ; preds = %.invoke2319
  %lpad.loopexit.split-lp1636 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dl:                                            ; preds = %bb.cn, %bb.cz, %bb.dk
  %.sroa.040.4.vec.insert.i.lcssa.sink = phi <2 x float> [ %.lcssa2416.a, %bb.cn ], [ %.lcssa2413, %bb.cz ], [ %i.adt, %bb.dk ]
  %.lcssa2279.sink = phi float [ %.lcssa2415, %bb.cn ], [ %.lcssa2412, %bb.cz ], [ %i.adk, %bb.dk ]
  %i.adu = getelementptr inbounds nuw i8, ptr %i.sr, i64 24
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !161 ; 2 uses
  store <2 x float> %.sroa.040.4.vec.insert.i.lcssa.sink, ptr %i.adv, align 8
  %.sroa.5441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  store float %.lcssa2279.sink, ptr %.sroa.5441.0..sroa_idx, align 8
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.01479.01780, i64 8 ; 2 uses
  %.not1596 = icmp eq ptr %i.adw, %i.oe
  br i1 %.not1596, label %._crit_edge1783, label %.lr.ph1782

._crit_edge1791:                                  ; preds = %bb.dm, %._crit_edge1783
  %i.adx = load ptr, ptr %16, align 8, !tbaa !159 ; 2 uses
  %i.ady = load ptr, ptr %i.lb, align 8, !tbaa !159 ; 2 uses
  %.not15981792 = icmp eq ptr %i.adx, %i.ady
  br i1 %.not15981792, label %._crit_edge1796, label %.lr.ph1795

.lr.ph1790:                                       ; preds = %._crit_edge1783, %bb.dm
  %.sroa.01466.01788 = phi ptr [ %i.aee, %bb.dm ], [ %i.sp, %._crit_edge1783 ] ; 2 uses
  %i.adz = load ptr, ptr %.sroa.01466.01788, align 8, !tbaa !23 ; 7 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 24
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 72
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  br label %bb.dn

bb.dm:                                            ; preds = %bb.eq
  %i.aee = getelementptr inbounds nuw i8, ptr %.sroa.01466.01788, i64 8 ; 2 uses
  %.not1597 = icmp eq ptr %i.aee, %i.sq
  br i1 %.not1597, label %._crit_edge1791, label %.lr.ph1790

bb.dn:                                            ; preds = %.lr.ph1790, %bb.eq
  %indvars.iv1929 = phi i64 [ 0, %.lr.ph1790 ], [ %indvars.iv.next1930, %bb.eq ] ; 3 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %indvars.iv1929
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !20 ; 4 uses
  %indvars.iv.next1930 = add nuw nsw i64 %indvars.iv1929, 1 ; 3 uses
  %i.aeh = icmp eq i64 %indvars.iv.next1930, 3    ; 2 uses
  %i.aei = select i1 %i.aeh, i64 0, i64 %indvars.iv.next1930
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %i.aei
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !20 ; 4 uses
  %i.ael = icmp ult ptr %i.aek, %i.aeg
  %.sroa.speculated5.i774 = select i1 %i.ael, ptr %i.aek, ptr %i.aeg ; 18 uses
  %i.aem = icmp ult ptr %i.aeg, %i.aek
  %.sroa.speculated.i775 = select i1 %i.aem, ptr %i.aek, ptr %i.aeg ; 15 uses
  %i.aen = load ptr, ptr %i.ly, align 8, !tbaa !28 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aen, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dn, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aen, %bb.dn ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.lx, %bb.dn ] ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !20 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, %.sroa.speculated5.i774
  %i.aer = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.aes = load ptr, ptr %i.aer, align 8
  %i.aet = icmp ult ptr %i.aes, %.sroa.speculated.i775
  %i.aeu = icmp ult ptr %i.aep, %.sroa.speculated5.i774
  %.0.i.i.i.i.i.i = select i1 %i.aeq, i1 %i.aet, i1 %i.aeu ; 4 uses
  %.19.i.i.i.i = select i1 %.0.i.i.i.i.i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i776 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i776, label %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !118

_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.aev = icmp eq ptr %.19.i.i.i.i, %i.lx
  br i1 %i.aev, label %.critedge.i, label %bb.do

bb.do:                                            ; preds = %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aew = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !20 ; 2 uses
  %i.aex = icmp eq ptr %.sroa.speculated5.i774, %i.aew
  %.19.i.i.i.i.sroa.sel1471.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel1471.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel1471.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.aey = load ptr, ptr %.19.i.i.i.i.sroa.sel1471.v.sroa.sel.v.sroa.sel, align 8
  %i.aez = icmp ult ptr %.sroa.speculated.i775, %i.aey
  %i.afa = icmp ult ptr %.sroa.speculated5.i774, %i.aew
  %.0.i.i.i = select i1 %i.aex, i1 %i.aez, i1 %i.afa
  br i1 %.0.i.i.i, label %.critedge.i, label %bb.dt

.critedge.i:                                      ; preds = %bb.do, %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, %bb.dn
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.do ], [ %.19.i.i.i.i, %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i ], [ %i.lx, %bb.dn ]
  %i.afb = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17
          to label %.noexc1308 unwind label %.loopexit1612 ; 10 uses

.noexc1308:                                       ; preds = %.critedge.i
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 32 ; 3 uses
  store ptr %.sroa.speculated5.i774, ptr %i.afc, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afb, i64 40
  store ptr %.sroa.speculated.i775, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !151
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afb, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afb, i64 64
  store i32 -1, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !31
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 72
  store ptr null, ptr %i.afd, align 8, !tbaa !166
  %i.afe = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 8 dereferenceable(36) %i.afc)
          to label %bb.dp unwind label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.dp:                                            ; preds = %.noexc1308
  %i.aff = extractvalue { ptr, ptr } %i.afe, 0    ; 2 uses
  %i.afg = extractvalue { ptr, ptr } %i.afe, 1    ; 5 uses
  %.not.i1305 = icmp eq ptr %i.afg, null
  br i1 %.not.i1305, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.not.i.i.i1306 = icmp ne ptr %i.aff, null
  %i.afh = icmp eq ptr %i.afg, %i.lx
  %or.cond.i.i.i = or i1 %.not.i.i.i1306, %i.afh
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 32
  %i.afj = load ptr, ptr %i.afc, align 8, !tbaa !20 ; 2 uses
  %i.afk = load ptr, ptr %i.afi, align 8, !tbaa !20 ; 2 uses
  %i.afl = icmp eq ptr %i.afj, %i.afk
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afb, i64 40
  %i.afn = load ptr, ptr %i.afm, align 8
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afg, i64 40
  %i.afp = load ptr, ptr %i.afo, align 8
  %i.afq = icmp ult ptr %i.afn, %i.afp
  %i.afr = icmp ult ptr %i.afj, %i.afk
  %.0.i.i.i.i.i1307 = select i1 %i.afl, i1 %i.afq, i1 %i.afr
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dr, %bb.dq
  %i.afs = phi i1 [ %.0.i.i.i.i.i1307, %bb.dr ], [ true, %bb.dq ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.afs, ptr noundef nonnull %i.afb, ptr noundef nonnull %i.afg, ptr noundef nonnull align 8 dereferenceable(32) %i.lx) #20
  %i.aft = load i64, ptr %i.mb, align 8, !tbaa !30
  %i.afu = add i64 %i.aft, 1
  store i64 %i.afu, ptr %i.mb, align 8, !tbaa !30
  br label %bb.dt

_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc1308
  %i.afv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.afb, i64 noundef 80) #19
  br label %.body1309

bb.ds:                                            ; preds = %bb.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.afb, i64 noundef 80) #19
  br label %bb.dt

bb.dt:                                            ; preds = %bb.do, %bb.ds, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.do ], [ %i.afb, %.thread.i ], [ %i.aff, %bb.ds ]
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !20
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %bb.du, label %bb.eq

bb.du:                                            ; preds = %bb.dt
  %i.afz = load ptr, ptr %17, align 64, !tbaa !55
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  %i.agb = load ptr, ptr %i.aga, align 8
  %i.agc = invoke noundef ptr %i.agb(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef 40, i64 noundef 8)
          to label %bb.dv unwind label %.loopexit1612, !inline_history !107 ; 14 uses

bb.dv:                                            ; preds = %bb.du
  store <2 x float> zeroinitializer, ptr %i.agc, align 8
  %.sroa.5.0..sroa_idx.i.i779 = getelementptr inbounds nuw i8, ptr %i.agc, i64 8 ; 6 uses
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i.i779, align 8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.agd, i8 0, i64 18, i1 false)
  %i.age = load ptr, ptr %i.lh, align 8, !tbaa !53 ; 4 uses
  %i.agf = load ptr, ptr %i.li, align 8, !tbaa !51
  %.not.i782 = icmp eq ptr %i.age, %i.agf
  br i1 %.not.i782, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store ptr %i.agc, ptr %i.age, align 8, !tbaa !20
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  store ptr %i.agg, ptr %i.lh, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE9push_backERKS2_.exit791

bb.dx:                                            ; preds = %bb.dv
  %i.agh = load ptr, ptr %19, align 8, !tbaa !52  ; 4 uses
  %i.agi = ptrtoint ptr %i.age to i64
  %i.agj = ptrtoint ptr %i.agh to i64             ; 2 uses
  %i.agk = sub i64 %i.agi, %i.agj                 ; 5 uses
  %i.agl = icmp eq i64 %i.agk, 9223372036854775800
  br i1 %i.agl, label %bb.dy, label %_ZNKSt6vectorIPN4pbrt8SDVertexESaIS2_EE12_M_check_lenEmPKc.exit.i.i783

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
          to label %.noexc789 unwind label %.loopexit.split-lp1613

.noexc789:                                        ; preds = %bb.dy
  unreachable

_ZNKSt6vectorIPN4pbrt8SDVertexESaIS2_EE12_M_check_lenEmPKc.exit.i.i783: ; preds = %bb.dx
  %i.agm = ashr exact i64 %i.agk, 3               ; 3 uses
  %.sroa.speculated.i.i.i784 = call i64 @llvm.umax.i64(i64 %i.agm, i64 1)
  %i.agn = add nsw i64 %.sroa.speculated.i.i.i784, %i.agm ; 2 uses
  %i.ago = icmp ult i64 %i.agn, %i.agm
  %i.agp = call i64 @llvm.umin.i64(i64 %i.agn, i64 1152921504606846975)
  %i.agq = select i1 %i.ago, i64 1152921504606846975, i64 %i.agp ; 3 uses
  %.not.i.i.i785 = icmp ne i64 %i.agq, 0
  call void @llvm.assume(i1 %.not.i.i.i785)
  %i.agr = shl nuw nsw i64 %i.agq, 3
  %i.ags = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agr) #17
          to label %.noexc790 unwind label %.loopexit1612 ; 4 uses

.noexc790:                                        ; preds = %_ZNKSt6vectorIPN4pbrt8SDVertexESaIS2_EE12_M_check_lenEmPKc.exit.i.i783
  %i.agt = getelementptr inbounds i8, ptr %i.ags, i64 %i.agk ; 2 uses
  store ptr %i.agc, ptr %i.agt, align 8, !tbaa !20
  %i.agu = icmp sgt i64 %i.agk, 0
  br i1 %i.agu, label %bb.dz, label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i786

bb.dz:                                            ; preds = %.noexc790
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ags, ptr align 8 %i.agh, i64 %i.agk, i1 false)
  br label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i786

_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i786: ; preds = %bb.dz, %.noexc790
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %.not.i17.i.i787 = icmp eq ptr %i.agh, null
  br i1 %.not.i17.i.i787, label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i788, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i786
  %i.agw = load ptr, ptr %i.li, align 8, !tbaa !51
  %i.agx = ptrtoint ptr %i.agw to i64
  %i.agy = sub i64 %i.agx, %i.agj
  call void @_ZdlPvm(ptr noundef nonnull %i.agh, i64 noundef %i.agy) #19
  br label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i788

_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i788: ; preds = %bb.ea, %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i786
  store ptr %i.ags, ptr %19, align 8, !tbaa !52
  store ptr %i.agv, ptr %i.lh, align 8, !tbaa !53
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.ags, i64 %i.agq
  store ptr %i.agz, ptr %i.li, align 8, !tbaa !51
  br label %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE9push_backERKS2_.exit791

_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE9push_backERKS2_.exit791: ; preds = %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i788, %bb.dw
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agc, i64 32
  store i8 1, ptr %i.aha, align 8, !tbaa !153
end_hunk_1
begin_hunk_2_@_ZN4pbrt13LoopSubdivideEPKNS_9TransformEbiN4pstd4spanIKiEENS4_IKNS_6Point3IfEEEENS3_3pmr21polymorphic_allocatorISt4byteEE:.noexc
  br label %.body1309

bb.ec:                                            ; preds = %_ZNSt6vectorIPN4pbrt8SDVertexESaIS2_EE9push_backERKS2_.exit791
  %i.ahn = fmul <2 x float> %.sroa.0406.0.copyload, splat (float 3.750000e-01) ; 2 uses
  %i.aho = fmul float %.sroa.2407.0.copyload, 3.750000e-01 ; 2 uses
  store <2 x float> %i.ahn, ptr %i.agc, align 8
  store float %i.aho, ptr %.sroa.5.0..sroa_idx.i.i779, align 8
  %.sroa.0374.0.copyload = load <2 x float>, ptr %.sroa.speculated.i775, align 8
  %.sroa.2375.0.copyload = load float, ptr %.sroa.2397.0..sroa_idx, align 8, !tbaa !163
  %i.ahp = fmul float %.sroa.2375.0.copyload, 3.750000e-01
  %i.ahq = fmul <2 x float> %.sroa.0374.0.copyload, splat (float 3.750000e-01)
  %i.ahr = fadd <2 x float> %i.ahq, %i.ahn        ; 2 uses
  store <2 x float> %i.ahr, ptr %i.agc, align 8, !tbaa !163
  %i.ahs = fadd float %i.aho, %i.ahp              ; 2 uses
  store float %i.ahs, ptr %.sroa.5.0..sroa_idx.i.i779, align 8, !tbaa !167
  %i.aht = load ptr, ptr %i.adz, align 8, !tbaa !20 ; 3 uses
  %.not.i812 = icmp eq ptr %i.aht, %.sroa.speculated5.i774
  %.not12.i = icmp eq ptr %i.aht, %.sroa.speculated.i775
  %or.cond.i = or i1 %.not.i812, %.not12.i
  br i1 %or.cond.i, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.ahu = load ptr, ptr %i.aec, align 8, !tbaa !20 ; 3 uses
  %.not.1.i = icmp eq ptr %i.ahu, %.sroa.speculated5.i774
  %.not12.1.i = icmp eq ptr %i.ahu, %.sroa.speculated.i775
  %or.cond.1.i = or i1 %.not.1.i, %.not12.1.i
  br i1 %or.cond.1.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ahv = load ptr, ptr %i.aed, align 8, !tbaa !20 ; 3 uses
  %.not.2.i = icmp eq ptr %i.ahv, %.sroa.speculated5.i774
  %.not12.2.i = icmp eq ptr %i.ahv, %.sroa.speculated.i775
  %or.cond.2.i = or i1 %.not.2.i, %.not12.2.i
  br i1 %or.cond.2.i, label %.invoke2324, label %bb.ef

.invoke2324:                                      ; preds = %bb.eh, %bb.ee
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 69, ptr noundef nonnull @.str.2) #18
          to label %.cont2325 unwind label %.loopexit.split-lp1613

.cont2325:                                        ; preds = %.invoke2324
  unreachable

bb.ef:                                            ; preds = %bb.ec, %bb.ed, %bb.ee
  %.lcssa.i = phi ptr [ %i.aht, %bb.ec ], [ %i.ahu, %bb.ed ], [ %i.ahv, %bb.ee ] ; 2 uses
  %.sroa.0362.0.copyload = load <2 x float>, ptr %.lcssa.i, align 8
  %.sroa.2363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %.sroa.2363.0.copyload = load float, ptr %.sroa.2363.0..sroa_idx, align 8, !tbaa !163
  %i.ahw = fmul float %.sroa.2363.0.copyload, 1.250000e-01
  %i.ahx = fmul <2 x float> %.sroa.0362.0.copyload, splat (float 1.250000e-01)
  %i.ahy = fadd <2 x float> %i.ahr, %i.ahx        ; 2 uses
  store <2 x float> %i.ahy, ptr %i.agc, align 8, !tbaa !163
  %i.ahz = fadd float %i.ahs, %i.ahw              ; 2 uses
  store float %i.ahz, ptr %.sroa.5.0..sroa_idx.i.i779, align 8, !tbaa !167
  %i.aia = load ptr, ptr %i.ahb, align 8, !tbaa !23 ; 3 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !20 ; 3 uses
  %.not.i822 = icmp eq ptr %i.aib, %.sroa.speculated5.i774
  %.not12.i823 = icmp eq ptr %i.aib, %.sroa.speculated.i775
  %or.cond.i824 = or i1 %.not.i822, %.not12.i823
  br i1 %or.cond.i824, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !20 ; 3 uses
  %.not.1.i826 = icmp eq ptr %i.aid, %.sroa.speculated5.i774
  %.not12.1.i827 = icmp eq ptr %i.aid, %.sroa.speculated.i775
  %or.cond.1.i828 = or i1 %.not.1.i826, %.not12.1.i827
  br i1 %or.cond.1.i828, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !20 ; 3 uses
  %.not.2.i829 = icmp eq ptr %i.aif, %.sroa.speculated5.i774
  %.not12.2.i830 = icmp eq ptr %i.aif, %.sroa.speculated.i775
  %or.cond.2.i831 = or i1 %.not.2.i829, %.not12.2.i830
  br i1 %or.cond.2.i831, label %.invoke2324, label %bb.ei

bb.ei:                                            ; preds = %bb.ef, %bb.eg, %bb.eh
  %.lcssa.i825 = phi ptr [ %i.aib, %bb.ef ], [ %i.aid, %bb.eg ], [ %i.aif, %bb.eh ] ; 2 uses
  %.sroa.0350.0.copyload = load <2 x float>, ptr %.lcssa.i825, align 8
  %.sroa.2351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.i825, i64 8
  %.sroa.2351.0.copyload = load float, ptr %.sroa.2351.0..sroa_idx, align 8, !tbaa !163
  %i.aig = fmul float %.sroa.2351.0.copyload, 1.250000e-01
  %i.aih = fmul <2 x float> %.sroa.0350.0.copyload, splat (float 1.250000e-01)
  %i.aii = fadd <2 x float> %i.ahy, %i.aih
  store <2 x float> %i.aii, ptr %i.agc, align 8, !tbaa !163
  %i.aij = fadd float %i.ahz, %i.aig
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eb
  %storemerge = phi float [ %i.aij, %bb.ei ], [ %i.ahm, %bb.eb ]
  store float %storemerge, ptr %.sroa.5.0..sroa_idx.i.i779, align 8, !tbaa !167
  %i.aik = load ptr, ptr %i.ly, align 8, !tbaa !28 ; 2 uses
  %.not10.i.i.i.i842 = icmp eq ptr %i.aik, null
  br i1 %.not10.i.i.i.i842, label %.critedge.i855, label %.lr.ph.i.i.i.i843

.lr.ph.i.i.i.i843:                                ; preds = %bb.ej, %.lr.ph.i.i.i.i843
  %.012.i.i.i.i844 = phi ptr [ %.1.i.i.i.i850, %.lr.ph.i.i.i.i843 ], [ %i.aik, %bb.ej ] ; 6 uses
  %.0811.i.i.i.i845 = phi ptr [ %.19.i.i.i.i847, %.lr.ph.i.i.i.i843 ], [ %i.lx, %bb.ej ] ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i844, i64 32
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !20 ; 2 uses
  %i.ain = icmp eq ptr %i.aim, %.sroa.speculated5.i774
  %i.aio = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i844, i64 40
  %i.aip = load ptr, ptr %i.aio, align 8
  %i.aiq = icmp ult ptr %i.aip, %.sroa.speculated.i775
  %i.air = icmp ult ptr %i.aim, %.sroa.speculated5.i774
  %.0.i.i.i.i.i.i846 = select i1 %i.ain, i1 %i.aiq, i1 %i.air ; 4 uses
  %.19.i.i.i.i847 = select i1 %.0.i.i.i.i.i.i846, ptr %.0811.i.i.i.i845, ptr %.012.i.i.i.i844 ; 5 uses
  %.1.in.v.i.i.i.i848 = select i1 %.0.i.i.i.i.i.i846, i64 24, i64 16
  %.1.in.i.i.i.i849 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i844, i64 %.1.in.v.i.i.i.i848
  %.1.i.i.i.i850 = load ptr, ptr %.1.in.i.i.i.i849, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i851 = icmp eq ptr %.1.i.i.i.i850, null
  br i1 %.not.i.i.i.i851, label %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i852, label %.lr.ph.i.i.i.i843, !llvm.loop !118

_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i852: ; preds = %.lr.ph.i.i.i.i843
  %i.ais = icmp eq ptr %.19.i.i.i.i847, %i.lx
  br i1 %i.ais, label %.critedge.i855, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i852
  %.19.i.i.i.i847.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i846, ptr %.0811.i.i.i.i845, ptr %.012.i.i.i.i844
  %.19.i.i.i.i847.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i847.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ait = load ptr, ptr %.19.i.i.i.i847.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !20 ; 2 uses
  %i.aiu = icmp eq ptr %.sroa.speculated5.i774, %i.ait
  %.19.i.i.i.i847.sroa.sel1474.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i.i.i846, ptr %.0811.i.i.i.i845, ptr %.012.i.i.i.i844
  %.19.i.i.i.i847.sroa.sel1474.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i847.sroa.sel1474.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.aiv = load ptr, ptr %.19.i.i.i.i847.sroa.sel1474.v.sroa.sel.v.sroa.sel, align 8
  %i.aiw = icmp ult ptr %.sroa.speculated.i775, %i.aiv
  %i.aix = icmp ult ptr %.sroa.speculated5.i774, %i.ait
  %.0.i.i.i853 = select i1 %i.aiu, i1 %i.aiw, i1 %i.aix
  br i1 %.0.i.i.i853, label %.critedge.i855, label %bb.ep

.critedge.i855:                                   ; preds = %bb.ek, %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i852, %bb.ej
  %.08.lcssa.i.i.i11.i856 = phi ptr [ %.19.i.i.i.i847, %bb.ek ], [ %.19.i.i.i.i847, %_ZNSt3mapIN4pbrt6SDEdgeEPNS0_8SDVertexESt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i852 ], [ %i.lx, %bb.ej ]
  %i.aiy = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17
          to label %.noexc1318 unwind label %.loopexit1612 ; 10 uses

.noexc1318:                                       ; preds = %.critedge.i855
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 32 ; 3 uses
  store ptr %.sroa.speculated5.i774, ptr %i.aiz, align 8
  %.sroa.10.0..sroa_idx1981 = getelementptr inbounds nuw i8, ptr %i.aiy, i64 40
  store ptr %.sroa.speculated.i775, ptr %.sroa.10.0..sroa_idx1981, align 8, !tbaa !151
  %.sroa.14.0..sroa_idx1985 = getelementptr inbounds nuw i8, ptr %i.aiy, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx1985, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx1986 = getelementptr inbounds nuw i8, ptr %i.aiy, i64 64
  store i32 -1, ptr %.sroa.15.0..sroa_idx1986, align 8, !tbaa !31
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiy, i64 72
  store ptr null, ptr %i.aja, align 8, !tbaa !166
  %i.ajb = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr %.08.lcssa.i.i.i11.i856, ptr noundef nonnull align 8 dereferenceable(36) %i.aiz)
          to label %bb.el unwind label %_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i1311 ; 2 uses

bb.el:                                            ; preds = %.noexc1318
  %i.ajc = extractvalue { ptr, ptr } %i.ajb, 0    ; 2 uses
  %i.ajd = extractvalue { ptr, ptr } %i.ajb, 1    ; 5 uses
  %.not.i1312 = icmp eq ptr %i.ajd, null
  br i1 %.not.i1312, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.not.i.i.i1313 = icmp ne ptr %i.ajc, null
  %i.aje = icmp eq ptr %i.ajd, %i.lx
  %or.cond.i.i.i1314 = or i1 %.not.i.i.i1313, %i.aje
  br i1 %or.cond.i.i.i1314, label %.thread.i1316, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  %i.ajg = load ptr, ptr %i.aiz, align 8, !tbaa !20 ; 2 uses
  %i.ajh = load ptr, ptr %i.ajf, align 8, !tbaa !20 ; 2 uses
  %i.aji = icmp eq ptr %i.ajg, %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aiy, i64 40
  %i.ajk = load ptr, ptr %i.ajj, align 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajd, i64 40
  %i.ajm = load ptr, ptr %i.ajl, align 8
  %i.ajn = icmp ult ptr %i.ajk, %i.ajm
  %i.ajo = icmp ult ptr %i.ajg, %i.ajh
  %.0.i.i.i.i.i1315 = select i1 %i.aji, i1 %i.ajn, i1 %i.ajo
  br label %.thread.i1316

.thread.i1316:                                    ; preds = %bb.en, %bb.em
  %i.ajp = phi i1 [ %.0.i.i.i.i.i1315, %bb.en ], [ true, %bb.em ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ajp, ptr noundef nonnull %i.aiy, ptr noundef nonnull %i.ajd, ptr noundef nonnull align 8 dereferenceable(32) %i.lx) #20
  %i.ajq = load i64, ptr %i.mb, align 8, !tbaa !30
  %i.ajr = add i64 %i.ajq, 1
  store i64 %i.ajr, ptr %i.mb, align 8, !tbaa !30
  br label %bb.ep

_ZNSt8_Rb_treeIN4pbrt6SDEdgeESt4pairIKS1_PNS0_8SDVertexEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i1311: ; preds = %.noexc1318
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aiy, i64 noundef 80) #19
  br label %.body1309

bb.eo:                                            ; preds = %bb.el
  call void @_ZdlPvm(ptr noundef nonnull %i.aiy, i64 noundef 80) #19
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ek, %bb.eo, %.thread.i1316
  %.sroa.06.0.i854 = phi ptr [ %.19.i.i.i.i847, %bb.ek ], [ %i.aiy, %.thread.i1316 ], [ %i.ajc, %bb.eo ]
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i854, i64 72
  store ptr %i.agc, ptr %i.ajt, align 8, !tbaa !20
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.dt
  br i1 %i.aeh, label %bb.dm, label %bb.dn, !llvm.loop !119

._crit_edge1796:                                  ; preds = %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit, %._crit_edge1791
  %i.aju = load ptr, ptr %15, align 8, !tbaa !160 ; 3 uses
  %i.ajv = load ptr, ptr %i.kk, align 8, !tbaa !160 ; 3 uses
  %.not15991798 = icmp eq ptr %i.aju, %i.ajv
  br i1 %.not15991798, label %._crit_edge1807, label %.lr.ph1801

.lr.ph1795:                                       ; preds = %._crit_edge1791, %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit
  %.sroa.01451.01793 = phi ptr [ %i.akn, %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit ], [ %i.adx, %._crit_edge1791 ] ; 2 uses
  %i.ajw = load ptr, ptr %.sroa.01451.01793, align 8, !tbaa !20 ; 5 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 16
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !36 ; 4 uses
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !20
  %i.aka = icmp eq ptr %i.ajz, %i.ajw
  br i1 %i.aka, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit, label %bb.er

bb.er:                                            ; preds = %.lr.ph1795
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !20
  %i.akd = icmp eq ptr %i.akc, %i.ajw
  br i1 %i.akd, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajy, i64 16
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !20
  %i.akg = icmp eq ptr %i.akf, %i.ajw
  br i1 %i.akg, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
          to label %.noexc859 unwind label %bb.eu

.noexc859:                                        ; preds = %bb.et
  unreachable

_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit:        ; preds = %bb.es, %bb.er, %.lr.ph1795
  %.0711.lcssa.wide.i = phi i64 [ 0, %.lr.ph1795 ], [ 1, %bb.er ], [ 2, %bb.es ]
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ajy, i64 48
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %.0711.lcssa.wide.i
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !23
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajw, i64 24
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !161
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  store ptr %i.akj, ptr %i.akm, align 8, !tbaa !36
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.01451.01793, i64 8 ; 2 uses
  %.not1598 = icmp eq ptr %i.akn, %i.ady
  br i1 %.not1598, label %._crit_edge1796, label %.lr.ph1795

bb.eu:                                            ; preds = %bb.et
  %i.ako = landingpad { ptr, i32 }
          cleanup
  br label %.body1309

.lr.ph1801:                                       ; preds = %._crit_edge1796, %bb.fs
  %.sroa.01447.01799 = phi ptr [ %i.apl, %bb.fs ], [ %i.aju, %._crit_edge1796 ] ; 2 uses
  %i.akp = load ptr, ptr %.sroa.01447.01799, align 8, !tbaa !23 ; 13 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 48 ; 4 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 72 ; 6 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akp, i64 24 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akp, i64 56 ; 4 uses
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !23
  %i.akv = load ptr, ptr %i.akr, align 8, !tbaa !23
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  store ptr %i.aku, ptr %i.akw, align 8, !tbaa !23
  %i.akx = load ptr, ptr %i.akr, align 8, !tbaa !23
  %i.aky = load ptr, ptr %i.akq, align 8, !tbaa !23
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 32
  store ptr %i.akx, ptr %i.akz, align 8, !tbaa !23
  %i.ala = load ptr, ptr %i.aks, align 8, !tbaa !23 ; 5 uses
  %.not = icmp eq ptr %i.ala, null
  br i1 %.not, label %bb.ey, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph1801
  %i.alb = load ptr, ptr %i.akp, align 8, !tbaa !20 ; 3 uses
  %i.alc = load ptr, ptr %i.ala, align 8, !tbaa !20
  %i.ald = icmp eq ptr %i.alc, %i.alb
  br i1 %i.ald, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !20
  %i.alg = icmp eq ptr %i.alf, %i.alb
  br i1 %i.alg, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ala, i64 16
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !20
  %i.alj = icmp eq ptr %i.ali, %i.alb
  br i1 %i.alj, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862, label %.invoke2326

_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862:     ; preds = %bb.ex, %bb.ew, %bb.ev
  %.0711.lcssa.wide.i860 = phi i64 [ 0, %bb.ev ], [ 1, %bb.ew ], [ 2, %bb.ex ]
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ala, i64 48
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %.0711.lcssa.wide.i860
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !23
  br label %bb.ey

bb.ey:                                            ; preds = %.lr.ph1801, %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862
  %i.aln = phi ptr [ %i.alm, %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862 ], [ null, %.lr.ph1801 ]
  %i.alo = load ptr, ptr %i.akq, align 8, !tbaa !23
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  store ptr %i.aln, ptr %i.alp, align 8, !tbaa !23
  %i.alq = getelementptr inbounds nuw i8, ptr %i.akp, i64 40 ; 2 uses
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !23 ; 5 uses
  %.not613 = icmp eq ptr %i.alr, null
  br i1 %.not613, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.als = load ptr, ptr %i.akp, align 8, !tbaa !20 ; 3 uses
  %i.alt = load ptr, ptr %i.alr, align 8, !tbaa !20
  %i.alu = icmp eq ptr %i.alt, %i.als
  br i1 %i.alu, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit865, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !20
  %i.alx = icmp eq ptr %i.alw, %i.als
  br i1 %i.alx, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit865, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alr, i64 16
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !20
  %i.ama = icmp eq ptr %i.alz, %i.als
  br i1 %i.ama, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit865, label %.invoke2326

.invoke2326:                                      ; preds = %bb.fb, %bb.fj, %bb.fr, %bb.ex, %bb.ff, %bb.fn
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 58, ptr noundef nonnull @.str.3) #18
          to label %.cont2327 unwind label %bb.ft

.cont2327:                                        ; preds = %.invoke2326
  unreachable

_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit865:     ; preds = %bb.fb, %bb.fa, %bb.ez
  %.0711.lcssa.wide.i863 = phi i64 [ 0, %bb.ez ], [ 1, %bb.fa ], [ 2, %bb.fb ]
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alr, i64 48
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.amb, i64 %.0711.lcssa.wide.i863
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !23
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ey, %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit865
  %i.ame = phi ptr [ %i.amd, %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit865 ], [ null, %bb.ey ]
  %i.amf = load ptr, ptr %i.akq, align 8, !tbaa !23
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 40
  store ptr %i.ame, ptr %i.amg, align 8, !tbaa !23
  %i.amh = getelementptr inbounds nuw i8, ptr %i.akp, i64 64 ; 4 uses
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !23
  %i.amj = load ptr, ptr %i.akr, align 8, !tbaa !23
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 32
  store ptr %i.ami, ptr %i.amk, align 8, !tbaa !23
  %i.aml = load ptr, ptr %i.akr, align 8, !tbaa !23
  %i.amm = load ptr, ptr %i.akt, align 8, !tbaa !23
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 40
  store ptr %i.aml, ptr %i.amn, align 8, !tbaa !23
  %i.amo = getelementptr inbounds nuw i8, ptr %i.akp, i64 32 ; 2 uses
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !23 ; 5 uses
  %.not.1 = icmp eq ptr %i.amp, null
  br i1 %.not.1, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.amq = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !20 ; 3 uses
  %i.ams = load ptr, ptr %i.amp, align 8, !tbaa !20
  %i.amt = icmp eq ptr %i.ams, %i.amr
  br i1 %i.amt, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862.1, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !20
  %i.amw = icmp eq ptr %i.amv, %i.amr
  br i1 %i.amw, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862.1, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amp, i64 16
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !20
  %i.amz = icmp eq ptr %i.amy, %i.amr
  br i1 %i.amz, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862.1, label %.invoke2326

_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862.1:   ; preds = %bb.ff, %bb.fe, %bb.fd
  %.0711.lcssa.wide.i860.1 = phi i64 [ 0, %bb.fd ], [ 1, %bb.fe ], [ 2, %bb.ff ]
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amp, i64 48
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.ana, i64 %.0711.lcssa.wide.i860.1
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !23
  br label %bb.fg

bb.fg:                                            ; preds = %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862.1, %bb.fc
  %i.and = phi ptr [ %i.anc, %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit862.1 ], [ null, %bb.fc ]
  %i.ane = load ptr, ptr %i.akt, align 8, !tbaa !23
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 32
  store ptr %i.and, ptr %i.anf, align 8, !tbaa !23
  %i.ang = load ptr, ptr %i.aks, align 8, !tbaa !23 ; 5 uses
  %.not613.1 = icmp eq ptr %i.ang, null
  br i1 %.not613.1, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.anh = getelementptr inbounds nuw i8, ptr %i.akp, i64 8
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !20 ; 3 uses
  %i.anj = load ptr, ptr %i.ang, align 8, !tbaa !20
  %i.ank = icmp eq ptr %i.anj, %i.ani
  br i1 %i.ank, label %_ZNK4pbrt6SDFace4vnumEPNS_8SDVertexE.exit865.1, label %bb.fi

end_hunk_2
