Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/R600OptimizeVectorRegisters?download=true
inline.NumInlined: 1382
inline.NumDeleted: 696
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_119R600VectorRegMerger13RebuildVectorEPNS_10RegSeqInfoEPKS1_RKSt6vectorISt4pairIjjESaIS7_EE:bb.a
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.o
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.fe, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ff = load i32, ptr %.sroa.032.1.i.i.i.i, align 4, !tbaa !119
  %i.fg = icmp eq i32 %i.ff, %i.dx
  br i1 %i.fg, label %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.p
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.fh, %bb.p ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.fi = load i32, ptr %.sroa.032.2.i.i.i.i, align 4, !tbaa !119
  %i.fj = icmp eq i32 %i.fi, %i.dx
  %spec.select.i.i.i.i = select i1 %i.fj, ptr %.sroa.032.2.i.i.i.i, ptr %.sroa.9.0112
  br label %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit

_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  br label %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit

_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit203: ; preds = %bb.k
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit

_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit205: ; preds = %bb.l
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  br label %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit

_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit: ; preds = %bb.i, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit203, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit205, %bb.n, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.n ], [ %i.fm, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit205 ], [ %i.fl, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit203 ], [ %i.fk, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.i ] ; 2 uses
  %.not90 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.sroa.9.0112
  br i1 %.not90, label %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit
  %i.fn = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.fo = sub i64 %i.fn, %i.ce
  %i.fp = getelementptr inbounds i8, ptr %i.z, i64 %i.fo ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 4 uses
  %.not.i.i43 = icmp eq ptr %i.fq, %.sroa.9.0112
  br i1 %.not.i.i43, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.ei, %i.fr                    ; 3 uses
  %i.ft = icmp sgt i64 %i.fs, 4
  br i1 %i.ft, label %bb.s, label %bb.t, !prof !49

bb.s:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fp, ptr nonnull align 4 %i.fq, i64 %i.fs, i1 false)
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

bb.t:                                             ; preds = %bb.r
  %i.fu = icmp eq i64 %i.fs, 4
  br i1 %i.fu, label %bb.u, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

bb.u:                                             ; preds = %bb.t
  %i.fv = load i32, ptr %i.fq, align 4, !tbaa !39
  store i32 %i.fv, ptr %i.fp, align 4, !tbaa !39
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %i.fw = getelementptr inbounds i8, ptr %.sroa.9.0112, i64 -4
  br label %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.thread

_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %.sroa.9.1 = phi ptr [ %i.fw, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.sroa.9.0112, %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit ], [ %.sroa.9.0112, %._crit_edge.i.i.i.i ] ; 5 uses
  %i.fx = add i64 %.pn, 8
  %i.fy = ashr exact i64 %i.fx, 3                 ; 3 uses
  %.not.i.i44 = icmp ult i64 %i.fy, %i.bc
  br i1 %.not.i.i44, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_ZN4llvm4findIRSt6vectorINS_8RegisterESaIS2_EEjEEDaOT_RKT0_.exit.thread
  %i.fz = lshr i64 %i.fy, 5                       ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !39
  %i.gc = trunc nuw i64 %i.fy to i32
  %i.gd = and i32 %i.gc, 31
  %i.ge = shl nsw i32 -1, %i.gd
  %i.gf = and i32 %i.gb, %i.ge                    ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.v
  %i.gh = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %i.gi = icmp eq i64 %i.gh, %i.cg
  br i1 %i.gi, label %._crit_edge, label %.lr.ph235

.lr.ph.i.i:                                       ; preds = %.lr.ph235
  %i.gj = add i64 %i.gl, 1                        ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %i.cg
  br i1 %i.gk, label %._crit_edge, label %.lr.ph235, !llvm.loop !9

.lr.ph235:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.gl = phi i64 [ %i.gj, %.lr.ph.i.i ], [ %i.gh, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !39 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb0EEppEv.exit, !llvm.loop !9

_ZN4llvm16DenseMapIteratorINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb0EEppEv.exit: ; preds = %.lr.ph235, %bb.v
  %.012.lcssa.i.i = phi i64 [ %i.fz, %bb.v ], [ %i.gl, %.lr.ph235 ]
  %.0.lcssa.i.i = phi i32 [ %i.gf, %bb.v ], [ %i.gn, %.lr.ph235 ]
  %i.gp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 8
  %i.gq = shl nuw nsw i32 %i.gp, 3
  %.idx212 = zext nneg i32 %i.gq to i64
  %i.gr = or disjoint i64 %.idx.i.i, %.idx212     ; 2 uses
  %.not = icmp eq i64 %i.gr, %.idx211.a
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge119:                                   ; preds = %.preheader.i.i, %bb.ac, %._crit_edge, %.lr.ph118
  %i.gs = load ptr, ptr %1, align 8, !tbaa !116
  %i.gt = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gs) #17 ; 0 uses
  store ptr %i.cp, ptr %1, align 8, !tbaa !116
  %i.gu = load i32, ptr %i.ax, align 4, !tbaa !79 ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEaSEOS7_.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge119
  %i.gw = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.gx = zext i32 %i.gu to i64                   ; 2 uses
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gx, 31
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = and i64 %i.ha, 1073741820
  %i.hc = add nuw nsw i64 %i.hb, %i.gy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gw, i64 noundef %i.hc, i64 noundef 4) #17
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEaSEOS7_.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEaSEOS7_.exit: ; preds = %._crit_edge119, %bb.w
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.he = load <2 x ptr>, ptr %8, align 16, !tbaa !20
  store ptr null, ptr %8, align 16, !tbaa !140
  store <2 x ptr> %i.he, ptr %i.at, align 8, !tbaa !20
  store ptr null, ptr %i.hd, align 8, !tbaa !141
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.hh = load <2 x i32>, ptr %i.hf, align 16, !tbaa !39
  store i32 0, ptr %i.hf, align 16, !tbaa !39
  store <2 x i32> %i.hh, ptr %i.az, align 8, !tbaa !39
  store i32 0, ptr %i.hg, align 4, !tbaa !39
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !75 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !76
  store ptr %i.z, ptr %i.hi, align 8, !tbaa !75
  store ptr %.sroa.9.0.lcssa, ptr %i.hk, align 8, !tbaa !117
  store ptr %i.aa, ptr %i.hl, align 8, !tbaa !76
  %.not.i.i.i.i.i45 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i45, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm8RegisterESaIS1_EED2Ev.exit:   ; preds = %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEaSEOS7_.exit
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hj to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.hp) #20
  %.pre142 = load i32, ptr %i.hg, align 4, !tbaa !79 ; 2 uses
  %i.hq = icmp eq i32 %.pre142, 0
  br i1 %i.hq, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN4llvm8RegisterESaIS1_EED2Ev.exit
  %i.hr = load ptr, ptr %8, align 16, !tbaa !80
  %i.hs = zext i32 %.pre142 to i64                ; 2 uses
  %i.ht = shl nuw nsw i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.hs, 31
  %i.hv = lshr i64 %i.hu, 3
  %i.hw = and i64 %i.hv, 1073741820
  %i.hx = add nuw nsw i64 %i.hw, %i.ht
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.hr, i64 noundef %i.hx, i64 noundef 4) #17
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEaSEOS7_.exit, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret ptr %i.cp

.lr.ph118.split:                                  ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i, %.lr.ph118
  %.sroa.050.0117 = phi ptr [ %.sroa.0.0.i, %.lr.ph118 ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.050.0117, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !111 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32 ; 4 uses
  %i.ib = load ptr, ptr %3, align 8, !tbaa !400   ; 3 uses
  %i.ic = load ptr, ptr %i.dk, align 8, !tbaa !400 ; 3 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNK12_GLOBAL__N_119R600VectorRegMerger12SwizzleInputERN4llvm12MachineInstrERKSt6vectorISt4pairIjjESaIS6_EE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph118.split
  %.val41 = load ptr, ptr %i.ci, align 8, !tbaa !67
  %i.ie = getelementptr i8, ptr %.val41, i64 8
  %.val41.val = load ptr, ptr %i.ie, align 8, !tbaa !103
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 52
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !99
  %i.ih = zext i32 %i.ig to i64
  %i.ii = sub nsw i64 0, %i.ih
  %i.ij = getelementptr inbounds [32 x i8], ptr %.val41.val, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !105
  %12 = and i64 %i.il, 8192
  %.not.i47 = icmp eq i64 %12, 0
  %13 = select i1 %.not.i47, i64 3, i64 2         ; 4 uses
  %i.im = load ptr, ptr %i.ia, align 8, !tbaa !106 ; 2 uses
  %i.in = getelementptr inbounds nuw [32 x i8], ptr %i.im, i64 %13
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !107
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = add i32 %i.iq, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %.sroa.01.07.i = phi ptr [ %i.ix, %.critedge.i ], [ %i.ib, %.lr.ph.preheader.i ] ; 3 uses
  %i.is = load i32, ptr %.sroa.01.07.i, align 4, !tbaa !134
  %.not18.i = icmp eq i32 %i.is, %i.ir
  br i1 %.not18.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %.lr.ph.i
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !135
  %i.iv = add i32 %i.iu, -1
  %i.iw = zext i32 %i.iv to i64
  store i64 %i.iw, ptr %i.io, align 8, !tbaa !107
  %.pre.i = load ptr, ptr %i.ia, align 8, !tbaa !106
  %.pre14.i = load ptr, ptr %3, align 8, !tbaa !400
  %.pre15.i = load ptr, ptr %i.dk, align 8, !tbaa !400
  br label %.loopexit.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i, i64 8 ; 2 uses
  %.not4.i = icmp eq ptr %i.ix, %i.ic
  br i1 %.not4.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %.critedge.i, %bb.y
  %i.iy = phi ptr [ %.pre15.i, %bb.y ], [ %i.ic, %.critedge.i ] ; 4 uses
  %i.iz = phi ptr [ %.pre14.i, %bb.y ], [ %i.ib, %.critedge.i ] ; 4 uses
  %i.ja = phi ptr [ %.pre.i, %bb.y ], [ %i.im, %.critedge.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.ja, i64 %13
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 48 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !107
  %i.je = trunc i64 %i.jd to i32
  %i.jf = add i32 %i.je, 1
  %.not46.1.i = icmp eq ptr %i.iz, %i.iy
  br i1 %.not46.1.i, label %.loopexit.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.critedge.1.i
  %.sroa.01.07.1.i = phi ptr [ %i.jh, %.critedge.1.i ], [ %i.iz, %.loopexit.i ] ; 3 uses
  %i.jg = load i32, ptr %.sroa.01.07.1.i, align 4, !tbaa !134
  %.not18.1.i = icmp eq i32 %i.jg, %i.jf
  br i1 %.not18.1.i, label %bb.z, label %.critedge.1.i

.critedge.1.i:                                    ; preds = %.lr.ph.1.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.01.07.1.i, i64 8 ; 2 uses
  %.not4.1.i = icmp eq ptr %i.jh, %i.iy
  br i1 %.not4.1.i, label %.loopexit.1.i, label %.lr.ph.1.i

bb.z:                                             ; preds = %.lr.ph.1.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.01.07.1.i, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !135
  %i.jk = add i32 %i.jj, -1
  %i.jl = zext i32 %i.jk to i64
  store i64 %i.jl, ptr %i.jc, align 8, !tbaa !107
  %.pre16.i = load ptr, ptr %i.ia, align 8, !tbaa !106
  %.pre17.i = load ptr, ptr %3, align 8, !tbaa !400
  %.pre18.i = load ptr, ptr %i.dk, align 8, !tbaa !400
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.critedge.1.i, %bb.z, %.loopexit.i
  %i.jm = phi ptr [ %.pre18.i, %bb.z ], [ %i.iy, %.loopexit.i ], [ %i.iy, %.critedge.1.i ] ; 4 uses
  %i.jn = phi ptr [ %.pre17.i, %bb.z ], [ %i.iz, %.loopexit.i ], [ %i.iz, %.critedge.1.i ] ; 4 uses
  %i.jo = phi ptr [ %.pre16.i, %bb.z ], [ %i.ja, %.loopexit.i ], [ %i.ja, %.critedge.1.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.jo, i64 %13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 80 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !107
  %i.js = trunc i64 %i.jr to i32
  %i.jt = add i32 %i.js, 1
  %.not46.2.i = icmp eq ptr %i.jn, %i.jm
  br i1 %.not46.2.i, label %.loopexit.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %.loopexit.1.i, %.critedge.2.i
  %.sroa.01.07.2.i = phi ptr [ %i.jv, %.critedge.2.i ], [ %i.jn, %.loopexit.1.i ] ; 3 uses
  %i.ju = load i32, ptr %.sroa.01.07.2.i, align 4, !tbaa !134
  %.not18.2.i = icmp eq i32 %i.ju, %i.jt
  br i1 %.not18.2.i, label %bb.aa, label %.critedge.2.i

.critedge.2.i:                                    ; preds = %.lr.ph.2.i
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.01.07.2.i, i64 8 ; 2 uses
  %.not4.2.i = icmp eq ptr %i.jv, %i.jm
  br i1 %.not4.2.i, label %.loopexit.2.i, label %.lr.ph.2.i

bb.aa:                                            ; preds = %.lr.ph.2.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.01.07.2.i, i64 4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !135
  %i.jy = add i32 %i.jx, -1
  %i.jz = zext i32 %i.jy to i64
  store i64 %i.jz, ptr %i.jq, align 8, !tbaa !107
  %.pre19.i = load ptr, ptr %i.ia, align 8, !tbaa !106
  %.pre20.i = load ptr, ptr %3, align 8, !tbaa !400
  %.pre21.i = load ptr, ptr %i.dk, align 8, !tbaa !400
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %.critedge.2.i, %bb.aa, %.loopexit.1.i
  %i.ka = phi ptr [ %.pre21.i, %bb.aa ], [ %i.jm, %.loopexit.1.i ], [ %i.jm, %.critedge.2.i ] ; 2 uses
  %i.kb = phi ptr [ %.pre20.i, %bb.aa ], [ %i.jn, %.loopexit.1.i ], [ %i.jn, %.critedge.2.i ] ; 2 uses
  %i.kc = phi ptr [ %.pre19.i, %bb.aa ], [ %i.jo, %.loopexit.1.i ], [ %i.jo, %.critedge.2.i ]
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.kc, i64 %13
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 112 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !107
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = add i32 %i.kg, 1
  %.not46.3.i = icmp eq ptr %i.kb, %i.ka
  br i1 %.not46.3.i, label %_ZNK12_GLOBAL__N_119R600VectorRegMerger12SwizzleInputERN4llvm12MachineInstrERKSt6vectorISt4pairIjjESaIS6_EE.exit, label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %.loopexit.2.i, %.critedge.3.i
  %.sroa.01.07.3.i = phi ptr [ %i.kj, %.critedge.3.i ], [ %i.kb, %.loopexit.2.i ] ; 3 uses
  %i.ki = load i32, ptr %.sroa.01.07.3.i, align 4, !tbaa !134
  %.not18.3.i = icmp eq i32 %i.ki, %i.kh
  br i1 %.not18.3.i, label %bb.ab, label %.critedge.3.i

.critedge.3.i:                                    ; preds = %.lr.ph.3.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.01.07.3.i, i64 8 ; 2 uses
  %.not4.3.i = icmp eq ptr %i.kj, %i.ka
  br i1 %.not4.3.i, label %_ZNK12_GLOBAL__N_119R600VectorRegMerger12SwizzleInputERN4llvm12MachineInstrERKSt6vectorISt4pairIjjESaIS6_EE.exit, label %.lr.ph.3.i

bb.ab:                                            ; preds = %.lr.ph.3.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.01.07.3.i, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !135
  %i.km = add i32 %i.kl, -1
  %i.kn = zext i32 %i.km to i64
  store i64 %i.kn, ptr %i.ke, align 8, !tbaa !107
  br label %_ZNK12_GLOBAL__N_119R600VectorRegMerger12SwizzleInputERN4llvm12MachineInstrERKSt6vectorISt4pairIjjESaIS6_EE.exit

_ZNK12_GLOBAL__N_119R600VectorRegMerger12SwizzleInputERN4llvm12MachineInstrERKSt6vectorISt4pairIjjESaIS6_EE.exit: ; preds = %.critedge.3.i, %.lr.ph118.split, %.loopexit.2.i, %bb.ab
  %i.ko = load ptr, ptr %i.hy, align 8, !tbaa !111
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %_ZNK12_GLOBAL__N_119R600VectorRegMerger12SwizzleInputERN4llvm12MachineInstrERKSt6vectorISt4pairIjjESaIS6_EE.exit
  %.pn.i.i = phi ptr [ %.sroa.050.0117, %_ZNK12_GLOBAL__N_119R600VectorRegMerger12SwizzleInputERN4llvm12MachineInstrERKSt6vectorISt4pairIjjESaIS6_EE.exit ], [ %storemerge.i.i, %.backedge ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !107 ; 5 uses
  %.not.i.i48 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i48, label %._crit_edge119, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kp = load i32, ptr %storemerge.i.i, align 8
  %i.kq = and i32 %i.kp, 16777216
  %.not1.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not1.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i, label %.backedge

.backedge:                                        ; preds = %bb.ad, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i
  br label %bb.ac, !llvm.loop !6

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i: ; preds = %bb.ad
  %i.kr = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !111
  %i.kt = icmp eq ptr %i.ks, %i.ko
  br i1 %i.kt, label %.backedge, label %.lr.ph118.split, !llvm.loop !395
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119R600VectorRegMerger8trackRSIERKNS_10RegSeqInfoE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80, !noalias !413
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122, !noalias !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !79, !noalias !413 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !125, !noalias !413
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i32 %i.h to i64                     ; 4 uses
  %.idx56 = shl nuw nsw i64 %i.l, 3               ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.h, 0
  %or.cond = select i1 %i.k, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %i.o = load i32, ptr %i.f, align 4, !tbaa !39, !noalias !414 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.q = icmp eq i64 %i.n, 1
  br i1 %i.q, label %._crit_edge, label %.lr.ph64

.lr.ph.i.i.i:                                     ; preds = %.lr.ph64
  %i.r = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.n
  br i1 %i.s, label %._crit_edge, label %.lr.ph64, !llvm.loop !411

.lr.ph64:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.t = phi i64 [ %i.r, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39, !noalias !414 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !411

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph64
  %i.x = shl i64 %i.t, 8
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.x, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.o, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i ]
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.z = shl nuw nsw i32 %i.y, 3
  %.idx = zext nneg i32 %i.z to i64
  %i.aa = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not25 = icmp eq i64 %i.aa, %.idx56
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = add nuw nsw i64 %i.l, 31
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit16, %_ZN4llvm16DenseMapIteratorINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEELb1EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E5beginEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !117
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 2
  %i.an = trunc i64 %i.am to i32
  store i32 %i.an, ptr %i.b, align 4, !tbaa !39
  %i.ao = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIPNS_12MachineInstrESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E24lookupOrInsertIntoBucketIjJEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ao, 0 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %1, align 8, !tbaa !127
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !127
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !137
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !43 ; 4 uses
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.e, label %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #19 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !127
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !127
  %i.bk = icmp sgt i64 %i.az, 0
  br i1 %i.bk, label %bb.f, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.not.i17.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bo) #20
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bh, ptr %i.ap, align 8, !tbaa !43
  store ptr %i.bl, ptr %i.aq, align 8, !tbaa !137
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bp, ptr %i.as, align 8, !tbaa !44
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
