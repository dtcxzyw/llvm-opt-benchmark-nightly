Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanAnalysis?download=true
inline.NumInlined: 3821
inline.NumDeleted: 2022
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE17properlyDominatesEPKS1_S4_:bb.a
  %i.bl = phi i64 [ %i.br, %bb.g ], [ %i.be, %bb.f ]
  %.017.i.i.i.i.i15 = phi i32 [ %i.bq, %bb.g ], [ %i.bd, %bb.f ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bl ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !70, !noalias !328
  %i.bo = icmp eq ptr %2, %i.bn
  br i1 %i.bo, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i16, label %bb.g, !prof !134

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i14
  %i.bp = add nuw i32 %.017.i.i.i.i.i15, 1
  %i.bq = and i32 %i.bp, %i.ax                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 5
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !152, !noalias !328
  %i.bv = and i32 %i.bq, 31
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i14, label %.loopexit.i.i.i.i8, !prof !157

.loopexit.i.i.i.i8:                               ; preds = %bb.g, %bb.f, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit
  %i.by = zext i32 %i.g to i64                    ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.by
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i9

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i16: ; preds = %.lr.ph.i.i.i.i.i14
  %.pre.i.i17 = zext i32 %i.g to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i9

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i9: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i16, %.loopexit.i.i.i.i8
  %.pre-phi.i.i10 = phi i64 [ %.pre.i.i17, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i16 ], [ %i.by, %.loopexit.i.i.i.i8 ]
  %.lcssa.sink.i.i.i.i11 = phi ptr [ %i.bm, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i16 ], [ %i.bz, %.loopexit.i.i.i.i8 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.pre-phi.i.i10
  %.not.i.i12 = icmp eq ptr %.lcssa.sink.i.i.i.i11, %i.ca
  br i1 %.not.i.i12, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i13

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i13: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i9
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i11, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !152 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !11
  %i.cf = icmp ugt i32 %i.ce, %i.cc
  br i1 %i.cf, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit18, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit18: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i13
  %i.cg = zext i32 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !327 ; 10 uses
  %i.cl = icmp ne ptr %i.ck, %i.aw
  %i.cm = icmp ne ptr %i.ck, null
  %or.cond.i = and i1 %i.cl, %i.cm
  br i1 %or.cond.i, label %bb.h, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit

bb.h:                                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit18
  %.not23.i = icmp eq ptr %i.aw, null
  br i1 %.not23.i, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !333
  %i.cp = icmp eq ptr %i.co, %i.aw
  br i1 %i.cp, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !333
  %i.cs = icmp eq ptr %i.cr, %i.ck
  br i1 %i.cs, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !336 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !336
  %.not.i = icmp ult i32 %i.cu, %i.cw
  br i1 %.not.i, label %bb.l, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !337, !range !49, !noundef !50
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.db = load i32, ptr %i.da, align 8, !tbaa !338
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !338
  %.not.i.i19 = icmp ult i32 %i.db, %i.dd
  br i1 %.not.i.i19, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  %i.df = load i32, ptr %i.de, align 4, !tbaa !339
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !339
  %i.di = icmp ule i32 %i.df, %i.dh
  br label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit

bb.o:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !340
  %i.dl = add i32 %i.dk, 1                        ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !340
  %i.dm = icmp ugt i32 %i.dl, 32
  br i1 %i.dm, label %bb.p, label %.preheader.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE16updateDFSNumbersEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !338
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !338
  %.not.i20.i = icmp ult i32 %i.do, %i.dq
  br i1 %.not.i20.i, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !339
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !339
  %i.dv = icmp ule i32 %i.ds, %i.du
  br label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.r
  %.0.i.i = phi ptr [ %i.dx, %bb.r ], [ %i.ck, %bb.o ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !333 ; 3 uses
  %.not.i22.i = icmp eq ptr %i.dx, null
  br i1 %.not.i22.i, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS1_EES6_.exit.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !336
  %.not7.i.i = icmp ult i32 %i.dz, %i.cu
  br i1 %.not7.i.i, label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS1_EES6_.exit.i, label %.preheader.i, !llvm.loop !341

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS1_EES6_.exit.i: ; preds = %bb.r, %.preheader.i
  %i.ea = icmp eq ptr %.0.i.i, %i.aw
  br label %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit

_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS1_EES6_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i9, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i13, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS1_EES6_.exit.i, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit18, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE7getNodeEPKS1_.exit18 ], [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ %i.di, %bb.n ], [ %i.ea, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS1_EES6_.exit.i ], [ %i.dv, %bb.q ], [ false, %bb.m ], [ false, %bb.p ], [ true, %_ZNK4llvm17DominatorTreeBaseINS_11VPBlockBaseELb0EE12getNodeIndexEPKS1_.exit.i13 ], [ true, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11VPBlockBaseEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.i.i9 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm15VPRegisterUsage9spillCostERKNS_19TargetTransformInfoENS1_14TargetCostKindEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not65 = icmp eq i32 %i.d, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not38 = icmp eq i32 %3, 0
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.059.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.059.1, %bb.e ]
  %.sroa.461.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.461.1, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.059.0.lcssa, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.461.0.lcssa, 1
  ret { i64, i32 } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.068 = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.e ] ; 5 uses
  %.sroa.461.067 = phi i32 [ 0, %.lr.ph ], [ %.sroa.461.1, %bb.e ] ; 2 uses
  %.sroa.059.066 = phi i64 [ 0, %.lr.ph ], [ %.sroa.059.1, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.068, i64 4
  br i1 %.not38, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %.068, align 4, !tbaa !152
  %i.i = tail call noundef i32 @_ZNK4llvm19TargetTransformInfo20getNumberOfRegistersEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.h) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ %3, %bb.b ]   ; 2 uses
  %i.k = load i32, ptr %i.g, align 4, !tbaa !152  ; 2 uses
  %i.l = icmp ugt i32 %i.k, %i.j
  br i1 %i.l, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.a, label %bb.e

_ZN4llvmmlERKNS_15InstructionCostES2_.exit.a:     ; preds = %bb.d
  %i.m = sub nuw i32 %i.k, %i.j
  %i.n = load i32, ptr %.068, align 4, !tbaa !152
  %i.o = tail call { i64, i32 } @_ZNK4llvm19TargetTransformInfo25getRegisterClassSpillCostEjNS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.n, i32 noundef %2) #14 ; 2 uses
  %.fca.0.extract9 = extractvalue { i64, i32 } %i.o, 0
  %.fca.1.extract10 = extractvalue { i64, i32 } %i.o, 1
  %i.p = load i32, ptr %.068, align 4, !tbaa !152
  %i.q = tail call { i64, i32 } @_ZNK4llvm19TargetTransformInfo26getRegisterClassReloadCostEjNS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.p, i32 noundef %2) #14 ; 2 uses
  %.fca.0.extract5 = extractvalue { i64, i32 } %i.q, 0
  %.fca.1.extract6 = extractvalue { i64, i32 } %i.q, 1
  %i.r = icmp eq i32 %.fca.1.extract6, 1
  %.0.i.i = tail call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract9, i64 %.fca.0.extract5) ; 3 uses
  %i.s = zext i32 %i.m to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.t, i64 %.0.i.i)
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %4, label %6

4:                                                ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.a
  %5 = icmp sgt i64 %.0.i.i, 0
  %spec.select64 = select i1 %5, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

6:                                                ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit.a
  %7 = mul nsw i64 %.0.i.i, %i.t
  %8 = ashr exact i64 %7, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

_ZN4llvmmlERKNS_15InstructionCostES2_.exit:       ; preds = %4, %6
  %.0.i.i42 = phi i64 [ %8, %6 ], [ %spec.select64, %4 ]
  %9 = icmp eq i32 %.fca.1.extract10, 1
  %10 = select i1 %i.r, i1 true, i1 %9
  %spec.select = select i1 %10, i32 1, i32 %.sroa.461.067
  %.0.i46 = tail call i64 @llvm.sadd.sat.i64(i64 %.sroa.059.066, i64 %.0.i.i42)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit, %bb.d
  %.sroa.059.1 = phi i64 [ %.0.i46, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit ], [ %.sroa.059.066, %bb.d ] ; 2 uses
  %.sroa.461.1 = phi i32 [ %spec.select, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit ], [ %.sroa.461.067, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.068, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef i32 @_ZNK4llvm19TargetTransformInfo20getNumberOfRegistersEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare { i64, i32 } @_ZNK4llvm19TargetTransformInfo25getRegisterClassSpillCostEjNS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare { i64, i32 } @_ZNK4llvm19TargetTransformInfo26getRegisterClassReloadCostEjNS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm29calculateRegisterUsageForPlanERNS_5VPlanENS_8ArrayRefINS_12ElementCountEEERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.117") align 8 %0, ptr noundef nonnull align 8 dereferenceable(816) %1, ptr nofree readonly captures(none) %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(17) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.122", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallDenseMap", align 8 ; 22 uses
  %8 = alloca %"class.llvm::SmallPtrSet.126", align 8 ; 28 uses
  %9 = alloca %"class.llvm::SmallSetVector.129", align 8 ; 19 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvm::ReversePostOrderTraversal", align 8 ; 9 uses
  %11 = alloca %"class.llvm::VPBlockDeepTraversalWrapper", align 8 ; 4 uses
  %12 = alloca %"class.llvm::SmallDenseMap.183", align 8 ; 7 uses
  %13 = alloca %"class.llvm::SmallPtrSet.126", align 8 ; 16 uses
  %14 = alloca %"class.llvm::SmallVector.190", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %15 = alloca %"struct.llvm::SmallMapVector.98", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"struct.llvm::VPRegisterUsage", align 8 ; 17 uses
  %17 = alloca %"struct.llvm::SmallMapVector.98", align 8 ; 11 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 64, ptr %i.h, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 6 uses
  store i32 1, ptr %7, align 8
  store i32 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.j, ptr %8, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 8, ptr %i.k, align 8, !tbaa !342
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 13 uses
  store i32 0, ptr %i.l, align 4, !tbaa !343
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store i8 1, ptr %i.m, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %9, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 9 uses
  store i32 0, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 3 uses
  store i32 8, ptr %i.q, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.s = load i32, ptr %i.r, align 8, !tbaa !11
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.t, ptr %i.a, align 8, !tbaa !126
  %i.u = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_7VPValueENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = call noundef ptr @_ZN4llvm5VPlan19getVectorLoopRegionEv(ptr noundef nonnull align 8 dereferenceable(816) %1) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %i.v, ptr %11, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 8, ptr %i.y, align 4, !tbaa !12
  call void @_ZN4llvm25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11GraphTraitsIS4_EEE10InitializeERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.z = load ptr, ptr %10, align 8, !tbaa !8, !noalias !344 ; 6 uses
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !11, !noalias !344 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %.idx.i = shl nuw nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i ; 2 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11GraphTraitsIS7_EEEEEEDaOT0_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.014.0.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.014.0.i.i, i64 -8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70, !noalias !357
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !74, !noalias !357
  %i.ah = add i8 %i.ag, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ah, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11GraphTraitsIS7_EEEEEEDaOT0_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not.i.i.i.i.i, label %.critedge127, label %.lr.ph.i.i.i.i.i, !llvm.loop !360

_ZN4llvm12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11GraphTraitsIS7_EEEEEEDaOT0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.sroa.014.1.i.i = phi ptr [ %i.ac, %bb.c ], [ %.sroa.014.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not548620 = icmp eq ptr %.sroa.014.1.i.i, %i.z
  br i1 %.not548620, label %.critedge127, label %.lr.ph622

.lr.ph622:                                        ; preds = %_ZN4llvm12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_11GraphTraitsIS7_EEEEEEDaOT0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph622, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_ISt16reverse_iteratorIPPNS_11VPBlockBaseEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIS5_EENS_11GraphTraitsISD_EEEEEEDaOT0_EUlS5_E_RS4_EEZNS9_ISA_SH_EEDaSJ_EUlSL_E_St26bidirectional_iterator_tagEEZNS9_ISA_SH_EEDaSJ_EUlSL_E0_PSA_EESP_SO_SR_lPSR_SR_EppEv.exit
  %.sroa.0503.0621 = phi ptr [ %.sroa.014.1.i.i, %.lr.ph622 ], [ %.sroa.0503.2, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_ISt16reverse_iteratorIPPNS_11VPBlockBaseEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockERNS_25ReversePostOrderTraversalINS_27VPBlockDeepTraversalWrapperIS5_EENS_11GraphTraitsISD_EEEEEEDaOT0_EUlS5_E_RS4_EEZNS9_ISA_SH_EEDaSJ_EUlSL_E_St26bidirectional_iterator_tagEEZNS9_ISA_SH_EEDaSJ_EUlSL_E0_PSA_EESP_SO_SR_lPSR_SR_EppEv.exit ]
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0503.0621, i64 -8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !361
  %.not.not = icmp eq ptr %i.as, null
  br i1 %.not.not, label %.critedge127, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 112 ; 2 uses
  %.sroa.0493.0610 = load ptr, ptr %i.at, align 8, !tbaa !71 ; 2 uses
  %.not549611 = icmp eq ptr %.sroa.0493.0610, %i.au
  br i1 %.not549611, label %._crit_edge615, label %.lr.ph614

._crit_edge615:                                   ; preds = %._crit_edge, %bb.f
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !362
  %i.aw = icmp eq ptr %i.aq, %i.av
  br i1 %i.aw, label %bb.ao, label %.loopexit572

.lr.ph614:                                        ; preds = %bb.f, %._crit_edge
  %.sroa.0493.0612 = phi ptr [ %.sroa.0493.0, %._crit_edge ], [ %.sroa.0493.0610, %bb.f ] ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0493.0612, i64 -16 ; 2 uses
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.az = load i32, ptr %i.h, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !134

bb.g:                                             ; preds = %.lr.ph614
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.ax)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %.lr.ph614
  %i.ba = zext i32 %i.ay to i64
  %i.bb = load ptr, ptr %6, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  store ptr %i.ax, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !11
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.g, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE9push_backES2_.exit: ; preds = %bb.g, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0493.0612, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0493.0612, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %.idx = shl nuw nsw i64 %i.bj, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %.not122608 = icmp eq i32 %i.bi, 0
  br i1 %.not122608, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge125, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE9push_backES2_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0493.0612, i64 8
  %.sroa.0493.0 = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 2 uses
  %.not549 = icmp eq ptr %.sroa.0493.0, %i.au
  br i1 %.not549, label %._crit_edge615, label %.lr.ph614

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE9push_backES2_.exit, %.critedge125
  %.0113609 = phi ptr [ %i.ol, %.critedge125 ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12VPRecipeBaseELb1EE9push_backES2_.exit ] ; 2 uses
  %i.bm = load ptr, ptr %.0113609, align 8, !tbaa !126 ; 26 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !128 ; 2 uses
  %i.bp = and i8 %i.bo, -2
  %spec.select.i.i.i.i.i.i.i.i = icmp eq i8 %i.bp, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.lr.ph
  %i.bq = load i32, ptr %i.g, align 8, !tbaa !11
  %i.br = load i32, ptr %7, align 8, !noalias !363 ; 2 uses
  %i.bs = and i32 %i.br, 1
  %.not.i.i.i.i341 = icmp eq i32 %i.bs, 0         ; 3 uses
end_hunk_0
