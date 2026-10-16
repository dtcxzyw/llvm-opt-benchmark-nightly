Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PHIElimination?download=true
inline.NumInlined: 2343
inline.NumDeleted: 1272
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm18PHIEliminationPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qn, i64 noundef %i.qt, i64 noundef 4) #17
  br label %_ZN12_GLOBAL__N_118PHIEliminationImplD2Ev.exit

_ZN12_GLOBAL__N_118PHIEliminationImplD2Ev.exit:   ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118PHIEliminationImpl3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 14 uses
  %4 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.472", align 8 ; 11 uses
  %6 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallPtrSet.341", align 8 ; 10 uses
  %8 = alloca %"class.llvm::DebugLoc", align 8    ; 4 uses
  %9 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 3 uses
  %10 = alloca %"class.llvm::MachineDomTreeUpdater", align 8 ; 22 uses
  %11 = alloca %"class.std::vector.344", align 8  ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !472  ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.e, ptr %10, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 16, ptr %i.g, align 4, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 528
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !tbaa !59
  store <2 x ptr> %i.j, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 560
  store i8 1, ptr %i.k, align 8, !tbaa !482
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 568 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 592
  store ptr %i.m, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 576
  store i32 8, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 580
  store i32 0, ptr %i.o, align 4, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 584 ; 2 uses
  store i8 1, ptr %i.p, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 656
  store i8 0, ptr %i.q, align 8, !tbaa !483
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 657
  store i8 0, ptr %i.r, align 1, !tbaa !484
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DisableEdgeSplitting, i64 120), align 8, !tbaa !85, !range !19, !noundef !20
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %.not56 = icmp eq ptr %i.x, null
  br i1 %.not56, label %bb.br, label %.thread

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %.loopexit496

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !485 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not4.i.i.i, label %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.06.i.i.i = phi i32 [ %i.ad, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.sroa.02.05.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.aa, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !485 ; 2 uses
  %i.ad = add i32 %.06.i.i.i, 1                   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not.i.i.i, label %_ZNK4llvm15MachineFunction4sizeEv.exit, label %.lr.ph.i.i.i, !llvm.loop !222

_ZNK4llvm15MachineFunction4sizeEv.exit:           ; preds = %.lr.ph.i.i.i
  %.not907 = icmp eq i32 %i.ad, 0
  br i1 %.not907, label %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15MachineFunction4sizeEv.exit
  %i.ae = zext i32 %i.ad to i64
  call void @_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ae)
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE6resizeEm.exit: ; preds = %bb.d, %_ZNK4llvm15MachineFunction4sizeEv.exit, %bb.e
  %i.af = phi ptr [ %.pre, %bb.e ], [ %i.c, %_ZNK4llvm15MachineFunction4sizeEv.exit ], [ %i.c, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !78 ; 2 uses
  %.not58557 = icmp eq i32 %i.ah, 0
  br i1 %.not58557, label %.loopexit496, label %.lr.ph560

.lr.ph560:                                        ; preds = %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE6resizeEm.exit, %.loopexit495
  %.052558 = phi i32 [ %i.hv, %.loopexit495 ], [ 0, %_ZNSt6vectorIN4llvm15SparseBitVectorILj128EEESaIS2_EE6resizeEm.exit ] ; 8 uses
  %i.ai = or i32 %.052558, -2147483648            ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !43
  %i.ak = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.aj, i32 %i.ai) #17 ; 2 uses
  %.not60 = icmp eq ptr %i.ak, null
  br i1 %.not60, label %.loopexit495, label %bb.f

bb.f:                                             ; preds = %.lr.ph560
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.am = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm13LiveVariables10getVarInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(200) %i.al, i32 %i.ai) #17 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88, !noalias !486 ; 4 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !488, !noalias !486
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.as = icmp samesign ult i64 %indvars.iv.i.i.i.i, 2
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !89, !noalias !486 ; 3 uses
  %.not.i.i.i.i66 = icmp eq i64 %i.au, 0
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  br i1 %.not.i.i.i.i66, label %bb.h, label %.preheader.i.lr.ph, !llvm.loop !225

.preheader.i.lr.ph:                               ; preds = %bb.h
  %i.av = shl i32 %i.aq, 7
  %i.aw = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.au, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.av
  %i.bc = lshr exact i64 %i.au, %i.ay
  %i.bd = lshr i32 %.052558, 7                    ; 7 uses
  %i.be = and i32 %.052558, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = lshr i32 %.052558, 6
  %i.bi = and i32 %i.bh, 1
  %i.bj = zext nneg i32 %i.bi to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit
  %.sroa.10.0554 = phi ptr [ %i.an, %.preheader.i.lr.ph ], [ %.sroa.10.1, %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit ] ; 6 uses
  %.sroa.13.0553 = phi i32 [ %i.bb, %.preheader.i.lr.ph ], [ %.sroa.13.3, %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit ] ; 2 uses
  %.sroa.30.0552 = phi i64 [ %i.bc, %.preheader.i.lr.ph ], [ %.sroa.30.3, %_ZN4llvm15SparseBitVectorILj128EE3setEj.exit ] ; 2 uses
  %i.bk = add i32 %.sroa.13.0553, 1               ; 2 uses
  %i.bl = lshr i64 %.sroa.30.0552, 1              ; 3 uses
  %.not16.i = icmp ne i64 %i.bl, 0
  %i.bm = and i64 %.sroa.30.0552, 2
  %.not717.i = icmp eq i64 %i.bm, 0
  %or.cond18.i = and i1 %.not16.i, %.not717.i
  br i1 %or.cond18.i, label %.lr.ph.i174, label %.critedge.i169

.lr.ph.i174:                                      ; preds = %.preheader.i, %.lr.ph.i174
  %i.bn = phi i32 [ %i.bq, %.lr.ph.i174 ], [ %i.bk, %.preheader.i ]
  %i.bo = phi i64 [ %i.bp, %.lr.ph.i174 ], [ %i.bl, %.preheader.i ] ; 3 uses
  %i.bp = lshr exact i64 %i.bo, 1                 ; 2 uses
  %i.bq = add i32 %i.bn, 1                        ; 2 uses
  %.not.i175 = icmp ne i64 %i.bo, 0
  %i.br = and i64 %i.bo, 2
  %.not7.i = icmp eq i64 %i.br, 0
  %or.cond.i176 = and i1 %.not.i175, %.not7.i
  br i1 %or.cond.i176, label %.lr.ph.i174, label %.critedge.i169, !llvm.loop !226

.critedge.i169:                                   ; preds = %.lr.ph.i174, %.preheader.i
  %.sroa.30.2 = phi i64 [ %i.bl, %.preheader.i ], [ %i.bp, %.lr.ph.i174 ] ; 2 uses
  %.sroa.13.2 = phi i32 [ %i.bk, %.preheader.i ], [ %i.bq, %.lr.ph.i174 ] ; 5 uses
  %.not8.i = icmp eq i64 %.sroa.30.2, 0
  br i1 %.not8.i, label %bb.i, label %_ZN4llvm15SparseBitVectorILj128EE23SparseBitVectorIterator20AdvanceToNextNonZeroEv.exit

bb.i:                                             ; preds = %.critedge.i169
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.10.0554, i64 16
  %i.bt = and i32 %.sroa.13.2, 127                ; 2 uses
  %i.bu = lshr i32 %i.bt, 6                       ; 2 uses
  %i.bv = and i32 %.sroa.13.2, 63
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.10.0554, i64 24 ; 2 uses
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !89, !noalias !489
  %i.ca = zext nneg i32 %i.bv to i64
  %i.cb = shl nsw i64 -1, %i.ca
  %i.cc = and i64 %i.bz, %i.cb                    ; 2 uses
  %.not.i.i170 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i170, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = and i32 %.sroa.13.2, 64
  %i.ce = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cc, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.10.0554, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !489
  %.fr.i.i = freeze i64 %i.ci                     ; 2 uses
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
  br i1 %i.fo, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit
  br i1 %.not467555.old, label %.loopexit495, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !118
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !493
  %.not61 = icmp eq ptr %i.fr, %i.fg
  br i1 %.not61, label %.loopexit495, label %.lr.ph

bb.aa:                                            ; preds = %_ZNK4llvm15SparseBitVectorILj128EE23SparseBitVectorIteratorneERKS2_.exit
  br i1 %.not467555.old, label %.loopexit495, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.aa
end_hunk_0
