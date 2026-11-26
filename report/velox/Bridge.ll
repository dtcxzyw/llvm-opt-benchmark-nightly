Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Bridge?download=true
inline.NumInlined: 27247
inline.NumDeleted: 6058
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE:bb.a
  %wide.load1686 = load <4 x i64>, ptr %i.ge, align 4
  %wide.load1687 = load <4 x i64>, ptr %i.gf, align 4
  %wide.load1688 = load <4 x i64>, ptr %i.gg, align 4
  %i.gh = lshr <4 x i64> %wide.load1685, splat (i64 32)
  %i.gi = lshr <4 x i64> %wide.load1686, splat (i64 32)
  %i.gj = lshr <4 x i64> %wide.load1687, splat (i64 32)
  %i.gk = lshr <4 x i64> %wide.load1688, splat (i64 32)
  %i.gl = trunc nuw <4 x i64> %i.gh to <4 x i32>
  %i.gm = trunc nuw <4 x i64> %i.gi to <4 x i32>
  %i.gn = trunc nuw <4 x i64> %i.gj to <4 x i32>
  %i.go = trunc nuw <4 x i64> %i.gk to <4 x i32>
  %i.gp = add <4 x i32> %vec.phi1680, %i.gl       ; 2 uses
  %i.gq = add <4 x i32> %vec.phi1681, %i.gm       ; 2 uses
  %i.gr = add <4 x i32> %vec.phi1682, %i.gn       ; 2 uses
  %i.gs = add <4 x i32> %vec.phi1683, %i.go       ; 2 uses
  %index.next1689 = add nuw i64 %index1679, 16    ; 2 uses
  %i.gt = icmp eq i64 %index.next1689, %n.vec1677
  br i1 %i.gt, label %middle.block1690, label %vector.body1678, !llvm.loop !3014

middle.block1690:                                 ; preds = %vector.body1678
  %bin.rdx1691 = add <4 x i32> %i.gq, %i.gp
  %bin.rdx1692 = add <4 x i32> %i.gr, %bin.rdx1691
  %bin.rdx1693 = add <4 x i32> %i.gs, %bin.rdx1692
  %i.gu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1693) ; 3 uses
  %cmp.n1694 = icmp eq i64 %i.ep, %n.vec1677
  br i1 %cmp.n1694, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i, label %vec.epilog.iter.check1696

vec.epilog.iter.check1696:                        ; preds = %middle.block1690
  %min.epilog.iters.check1698 = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check1698, label %.lr.ph.i32.i.preheader, label %vec.epilog.ph1699, !prof !1450

vec.epilog.ph1699:                                ; preds = %vector.main.loop.iter.check1674, %vec.epilog.iter.check1696
  %vec.epilog.resume.val1700 = phi i64 [ %n.vec1677, %vec.epilog.iter.check1696 ], [ 0, %vector.main.loop.iter.check1674 ]
  %bc.merge.rdx1701 = phi i32 [ %i.gu, %vec.epilog.iter.check1696 ], [ 0, %vector.main.loop.iter.check1674 ]
  %n.vec1702 = and i64 %i.ep, 4611686018427387900 ; 3 uses
  %i.gv = shl i64 %n.vec1702, 3
  %i.gw = getelementptr i8, ptr %i.eg, i64 %i.gv
  %i.gx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1701, i64 0
  br label %vec.epilog.vector.body1703

vec.epilog.vector.body1703:                       ; preds = %vec.epilog.vector.body1703, %vec.epilog.ph1699
  %index1704 = phi i64 [ %vec.epilog.resume.val1700, %vec.epilog.ph1699 ], [ %index.next1708, %vec.epilog.vector.body1703 ] ; 2 uses
  %vec.phi1705 = phi <4 x i32> [ %i.gx, %vec.epilog.ph1699 ], [ %i.hb, %vec.epilog.vector.body1703 ]
  %i.gy = shl i64 %index1704, 3
  %next.gep1706 = getelementptr i8, ptr %i.eg, i64 %i.gy
  %wide.load1707 = load <4 x i64>, ptr %next.gep1706, align 4
  %i.gz = lshr <4 x i64> %wide.load1707, splat (i64 32)
  %i.ha = trunc nuw <4 x i64> %i.gz to <4 x i32>
  %i.hb = add <4 x i32> %vec.phi1705, %i.ha       ; 2 uses
  %index.next1708 = add nuw i64 %index1704, 4     ; 2 uses
  %i.hc = icmp eq i64 %index.next1708, %n.vec1702
  br i1 %i.hc, label %vec.epilog.middle.block1709, label %vec.epilog.vector.body1703, !llvm.loop !3015

vec.epilog.middle.block1709:                      ; preds = %vec.epilog.vector.body1703
  %i.hd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hb) ; 2 uses
  %cmp.n1710 = icmp eq i64 %i.ep, %n.vec1702
  br i1 %cmp.n1710, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %iter.check1695, %vec.epilog.iter.check1696, %vec.epilog.middle.block1709
  %.0612.i33.i.ph = phi i32 [ 0, %iter.check1695 ], [ %i.gu, %vec.epilog.iter.check1696 ], [ %i.hd, %vec.epilog.middle.block1709 ]
  %.sroa.08.011.i34.i.ph = phi ptr [ %i.eg, %iter.check1695 ], [ %i.gc, %vec.epilog.iter.check1696 ], [ %i.gw, %vec.epilog.middle.block1709 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.0612.i33.i = phi i32 [ %i.hf, %.lr.ph.i32.i ], [ %.0612.i33.i.ph, %.lr.ph.i32.i.preheader ]
  %.sroa.08.011.i34.i = phi ptr [ %i.hg, %.lr.ph.i32.i ], [ %.sroa.08.011.i34.i.ph, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.he = load i64, ptr %.sroa.08.011.i34.i, align 4
  %.sroa.3.0.extract.shift.i35.i = lshr i64 %i.he, 32
  %.sroa.3.0.extract.trunc.i36.i = trunc nuw i64 %.sroa.3.0.extract.shift.i35.i to i32
  %i.hf = add nsw i32 %.0612.i33.i, %.sroa.3.0.extract.trunc.i36.i ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i34.i, i64 8 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.ei
  br i1 %i.hh, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i, label %.lr.ph.i32.i, !llvm.loop !3016

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i: ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i
  %.0.i31.ph.i = phi i32 [ %i.fz, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i ], [ 0, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #38
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i: ; preds = %.lr.ph.i32.i, %middle.block1690, %vec.epilog.middle.block1709, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i
  %.0.i31.i = phi i32 [ %.0.i31.ph.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i ], [ %i.hd, %vec.epilog.middle.block1709 ], [ %i.gu, %middle.block1690 ], [ %i.hf, %.lr.ph.i32.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38, !noalias !3113
  store i32 %i.ee, ptr %43, align 16, !tbaa !1475, !alias.scope !3114, !noalias !3113
  %i.hi = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i32 %.0.i31.i, ptr %i.hi, align 16, !tbaa !1475, !alias.scope !3114, !noalias !3113
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr nonnull @.str.32, i64 11, i64 17, ptr nonnull %43)
          to label %.noexc130 unwind label %bb.bd

.noexc130:                                        ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #38, !noalias !3113
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr nonnull @.str.32) #47
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc130
  unreachable

bb.z:                                             ; preds = %.noexc130
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %44, align 8, !tbaa !1479 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !1475
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  br label %.body132

bb.aa:                                            ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread151.i, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #38
  %i.hp = load i64, ptr %3, align 8, !tbaa !1451  ; 2 uses
  %i.hq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hp, i64 1) ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hq, 1
  br i1 %i.hr, label %bb.ab, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i, !prof !1474

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #38, !noalias !3115
  store ptr @.str.16, ptr %41, align 16, !tbaa !1475, !noalias !3115
  %i.hs = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 %i.hp, ptr %i.hs, align 16, !tbaa !1475, !noalias !3115
  %i.ht = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i64 1, ptr %i.ht, align 16, !tbaa !1475, !noalias !3115
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr nonnull @.str.24, i64 20, i64 1100, ptr nonnull %41)
          to label %.noexc131 unwind label %bb.bd

.noexc131:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38, !noalias !3115
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr nonnull @.str.24) #47
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %.noexc131
  unreachable

bb.ad:                                            ; preds = %.noexc131
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %42, align 8, !tbaa !1479 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ad
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !1475
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  br label %.body132

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i: ; preds = %bb.aa
  %i.ia = extractvalue { i64, i1 } %i.hq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38
  %i.ib = getelementptr inbounds nuw i8, ptr %46, i64 4
  store i8 0, ptr %i.ib, align 4, !tbaa !1480
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %45, i64 noundef %i.ia, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %46, i1 noundef zeroext false)
          to label %.noexc134 unwind label %bb.bd

.noexc134:                                        ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  %i.ic = load ptr, ptr %45, align 8, !tbaa !1440 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !1485
  %i.if = and i8 %i.ie, 2
  %.not.i.i123 = icmp eq i8 %i.if, 0
  br i1 %.not.i.i123, label %bb.af, label %bb.ae, !prof !1486

bb.ae:                                            ; preds = %.noexc134
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %.noexc134
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !1487 ; 4 uses
  %.val.i124 = load i8, ptr %i.x, align 8, !tbaa !1390, !range !1397, !noundef !1398
  %i.ii = trunc nuw i8 %.val.i124 to i1
  br i1 %i.ii, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ij = load i32, ptr %i.ed, align 8, !tbaa !1388 ; 2 uses
  %i.ik = icmp slt i32 %i.ij, 2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1490 ; 3 uses
  br i1 %i.ik, label %.loopexit97.i, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %bb.ag
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !1491
  %wide.trip.count.i.i = zext nneg i32 %i.ij to i64
  %.pre.i.i = load i32, ptr %.pre.i, align 4, !tbaa !1492
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit97.i, label %bb.ai, !llvm.loop !3023

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i38.i
  %70 = phi i32 [ %.pre.i.i, %.lr.ph.i38.i ], [ %i.ip, %bb.ah ]
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i38.i ], [ %indvars.iv.next.i.i, %bb.ah ] ; 3 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %indvars.iv.i.i
  %71 = getelementptr i8, ptr %i.in, i64 -4
  %i.io = load i32, ptr %71, align 4, !tbaa !1492
  %i.ip = add nsw i32 %i.io, %70                  ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i.i
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !1492
  %.not.i39.i = icmp eq i32 %i.ip, %i.ir
  br i1 %.not.i39.i, label %bb.ah, label %.preheader.i.i

.loopexit97.i:                                    ; preds = %bb.ah, %bb.ag
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.it = load i32, ptr %i.is, align 8, !tbaa !1396 ; 3 uses
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = shl nsw i64 %i.iu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ih, ptr align 4 %.pre.i, i64 %i.iv, i1 false)
  %i.iw = icmp eq i32 %i.it, 0
  br i1 %i.iw, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.loopexit97.i
  %i.ix = add nsw i32 %i.it, -1
  %i.iy = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1490
  %i.iz = sext i32 %i.ix to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !1492
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1491
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.iz
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !1492
  %i.jg = add nsw i32 %i.jf, %i.jb
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i

.preheader.i.i:                                   ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %67, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.eb, align 8, !tbaa !1390
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !1396
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph.i49.preheader.i, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i

.lr.ph.i49.preheader.i:                           ; preds = %.preheader.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 3 uses
  br label %.lr.ph.i49.i

bb.ak:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %67, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.eb, align 8, !tbaa !1390
  %i.jm = load ptr, ptr %1, align 8, !tbaa !1447  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1447 ; 2 uses
  %i.jp = icmp eq ptr %i.jm, %i.jo
  br i1 %i.jp, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i, label %.lr.ph42.i.preheader.i

.lr.ph42.i.preheader.i:                           ; preds = %bb.ak
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 3 uses
  br label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph42.i.preheader.i
  %.promoted629 = phi ptr [ %.promoted629729, %._crit_edge.i.i ], [ null, %.lr.ph42.i.preheader.i ] ; 2 uses
  %.promoted625 = phi ptr [ %.promoted625727, %._crit_edge.i.i ], [ null, %.lr.ph42.i.preheader.i ] ; 2 uses
  %.promoted621 = phi ptr [ %.promoted621725, %._crit_edge.i.i ], [ null, %.lr.ph42.i.preheader.i ] ; 2 uses
  %.186.i = phi i32 [ %.287.i, %._crit_edge.i.i ], [ 0, %.lr.ph42.i.preheader.i ] ; 2 uses
  %.2.i = phi i32 [ %.3.i, %._crit_edge.i.i ], [ 0, %.lr.ph42.i.preheader.i ] ; 2 uses
  %.sroa.032.040.i.i = phi ptr [ %i.ka, %._crit_edge.i.i ], [ %i.jm, %.lr.ph42.i.preheader.i ] ; 2 uses
  %i.ju = load i64, ptr %.sroa.032.040.i.i, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.ju, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.jv = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i, 0
  br i1 %i.jv, label %.lr.ph39.preheader.i.i, label %._crit_edge.i.i

.lr.ph39.preheader.i.i:                           ; preds = %.lr.ph42.i.i
  %i.jw = shl i64 %i.ju, 32
  %i.jx = ashr exact i64 %i.jw, 32
  %i.jy = sext i32 %.186.i to i64
  br label %.lr.ph39.i.i

._crit_edge.i.loopexit.i:                         ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i
  store ptr %i.mq, ptr %i.js, align 8
  store ptr %i.mp, ptr %i.jt, align 8
  store ptr %i.mo, ptr %67, align 8
  %i.jz = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %.lr.ph42.i.i
  %.promoted629729 = phi ptr [ %.promoted629, %.lr.ph42.i.i ], [ %i.mo, %._crit_edge.i.loopexit.i ]
  %.promoted625727 = phi ptr [ %.promoted625, %.lr.ph42.i.i ], [ %i.mp, %._crit_edge.i.loopexit.i ]
  %.promoted621725 = phi ptr [ %.promoted621, %.lr.ph42.i.i ], [ %i.mq, %._crit_edge.i.loopexit.i ]
  %.287.i = phi i32 [ %.186.i, %.lr.ph42.i.i ], [ %i.jz, %._crit_edge.i.loopexit.i ] ; 2 uses
  %.3.i = phi i32 [ %.2.i, %.lr.ph42.i.i ], [ %.5.i, %._crit_edge.i.loopexit.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.032.040.i.i, i64 8 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.jo
  br i1 %i.kb, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_11ArrayVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit.i, label %.lr.ph42.i.i

.lr.ph39.i.i:                                     ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, %.lr.ph39.preheader.i.i
  %i.kc = phi ptr [ %i.mo, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.promoted629, %.lr.ph39.preheader.i.i ] ; 13 uses
  %i.kd = phi ptr [ %i.mp, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.promoted625, %.lr.ph39.preheader.i.i ] ; 8 uses
  %i.ke = phi ptr [ %i.mq, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.promoted621, %.lr.ph39.preheader.i.i ] ; 7 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.jy, %.lr.ph39.preheader.i.i ] ; 2 uses
  %.4.i = phi i32 [ %.5.i, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.2.i, %.lr.ph39.preheader.i.i ] ; 3 uses
  %indvars.iv46.i.i = phi i64 [ %indvars.iv.next47.i.i, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ 0, %.lr.ph39.preheader.i.i ] ; 2 uses
  %i.kf = add nsw i64 %indvars.iv46.i.i, %i.jx    ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %indvars.iv.i
  store i32 %.4.i, ptr %i.kg, align 4, !tbaa !1492
  %i.kh = load ptr, ptr %0, align 8, !tbaa !1472
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = trunc nsw i64 %i.kf to i32
  %i.kl = invoke noundef zeroext i1 %i.kj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.kk)
          to label %.noexc53.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit, !inline_history !3024

.noexc53.i:                                       ; preds = %.lr.ph39.i.i
  br i1 %i.kl, label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_11ArrayVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc53.i
  %i.km = load ptr, ptr %i.jq, align 8, !tbaa !1490
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.kf
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !1492 ; 2 uses
  %i.kp = load ptr, ptr %i.jr, align 8, !tbaa !1491 ; 2 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kf
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !1492 ; 2 uses
  %.not.i.i.i.i.i127 = icmp eq ptr %i.ke, %i.kd
  br i1 %.not.i.i.i.i.i127, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.ko, ptr %i.ke, align 4, !tbaa !3117
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !3118
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.kt = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.ku = ptrtoint ptr %i.kc to i64               ; 3 uses
  %i.kv = sub i64 %i.kt, %i.ku                    ; 4 uses
  %i.kw = icmp eq i64 %i.kv, 9223372036854775800
  br i1 %i.kw, label %.invoke.i.loopexit, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.kx = ashr exact i64 %i.kv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kx, i64 1)
  %i.ky = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.kx ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.kx
  %i.la = call i64 @llvm.umin.i64(i64 %i.ky, i64 1152921504606846975)
  %i.lb = select i1 %i.kz, i64 1152921504606846975, i64 %i.la ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.lb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.lc = shl nuw nsw i64 %i.lb, 3
  %i.ld = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #46
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit ; 10 uses

.noexc55.i:                                       ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kv ; 2 uses
  store i32 %i.ko, ptr %i.le, align 4, !tbaa !3117
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store i32 %i.kr, ptr %i.lf, align 4, !tbaa !3118
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kc, %i.kd
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i, label %iter.check1770

iter.check1770:                                   ; preds = %.noexc55.i
  %i.lg = ptrtoaddr ptr %i.ld to i64
  %i.lh = add i64 %i.kt, -8
  %i.li = sub i64 %i.lh, %i.ku                    ; 3 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 5 uses
  %min.iters.check1752 = icmp ult i64 %i.li, 24
  %i.ll = sub i64 %i.ku, %i.lg
  %diff.check1754 = icmp ugt i64 %i.ll, -128
  %or.cond = or i1 %min.iters.check1752, %diff.check1754
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check1755

vector.main.loop.iter.check1755:                  ; preds = %iter.check1770
  %min.iters.check1756 = icmp ult i64 %i.li, 120
  br i1 %min.iters.check1756, label %vec.epilog.ph1774, label %vector.ph1757

vector.ph1757:                                    ; preds = %vector.main.loop.iter.check1755
  %i.lm = and i64 %i.lk, 12
  %n.vec1758 = and i64 %i.lk, 4611686018427387888 ; 4 uses
  %i.ln = shl i64 %n.vec1758, 3                   ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ld, i64 %i.ln  ; 2 uses
  %i.lp = getelementptr i8, ptr %i.kc, i64 %i.ln
  br label %vector.body1759

vector.body1759:                                  ; preds = %vector.ph1757, %vector.body1759
  %index1760 = phi i64 [ 0, %vector.ph1757 ], [ %index.next1767, %vector.body1759 ] ; 2 uses
  %i.lq = shl i64 %index1760, 3                   ; 2 uses
  %next.gep1761 = getelementptr i8, ptr %i.ld, i64 %i.lq ; 4 uses
  %next.gep1762 = getelementptr i8, ptr %i.kc, i64 %i.lq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  call void @llvm.experimental.noalias.scope.decl(metadata !3120)
  %i.lr = getelementptr i8, ptr %next.gep1762, i64 32
  %i.ls = getelementptr i8, ptr %next.gep1762, i64 64
  %i.lt = getelementptr i8, ptr %next.gep1762, i64 96
  %wide.load1763 = load <4 x i64>, ptr %next.gep1762, align 4, !alias.scope !3120
  %wide.load1764 = load <4 x i64>, ptr %i.lr, align 4, !alias.scope !3120
  %wide.load1765 = load <4 x i64>, ptr %i.ls, align 4, !alias.scope !3120
  %wide.load1766 = load <4 x i64>, ptr %i.lt, align 4, !alias.scope !3120
  %i.lu = getelementptr i8, ptr %next.gep1761, i64 32
  %i.lv = getelementptr i8, ptr %next.gep1761, i64 64
  %i.lw = getelementptr i8, ptr %next.gep1761, i64 96
  store <4 x i64> %wide.load1763, ptr %next.gep1761, align 4, !alias.scope !3119
  store <4 x i64> %wide.load1764, ptr %i.lu, align 4, !alias.scope !3119
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_117exportToArrowImplERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolE:bb.a
  %wide.load1536 = load <4 x i64>, ptr %i.agh, align 4
  %wide.load1537 = load <4 x i64>, ptr %i.agi, align 4
  %wide.load1538 = load <4 x i64>, ptr %i.agj, align 4
  %i.agk = lshr <4 x i64> %wide.load1535, splat (i64 32)
  %i.agl = lshr <4 x i64> %wide.load1536, splat (i64 32)
  %i.agm = lshr <4 x i64> %wide.load1537, splat (i64 32)
  %i.agn = lshr <4 x i64> %wide.load1538, splat (i64 32)
  %i.ago = trunc nuw <4 x i64> %i.agk to <4 x i32>
  %i.agp = trunc nuw <4 x i64> %i.agl to <4 x i32>
  %i.agq = trunc nuw <4 x i64> %i.agm to <4 x i32>
  %i.agr = trunc nuw <4 x i64> %i.agn to <4 x i32>
  %i.ags = add <4 x i32> %vec.phi1530, %i.ago     ; 2 uses
  %i.agt = add <4 x i32> %vec.phi1531, %i.agp     ; 2 uses
  %i.agu = add <4 x i32> %vec.phi1532, %i.agq     ; 2 uses
  %i.agv = add <4 x i32> %vec.phi1533, %i.agr     ; 2 uses
  %index.next1539 = add nuw i64 %index1529, 16    ; 2 uses
  %i.agw = icmp eq i64 %index.next1539, %n.vec1527
  br i1 %i.agw, label %middle.block1540, label %vector.body1528, !llvm.loop !3051

middle.block1540:                                 ; preds = %vector.body1528
  %bin.rdx1541 = add <4 x i32> %i.agt, %i.ags
  %bin.rdx1542 = add <4 x i32> %i.agu, %bin.rdx1541
  %bin.rdx1543 = add <4 x i32> %i.agv, %bin.rdx1542
  %i.agx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1543) ; 3 uses
  %cmp.n1544 = icmp eq i64 %i.aes, %n.vec1527
  br i1 %cmp.n1544, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i268, label %vec.epilog.iter.check1546

vec.epilog.iter.check1546:                        ; preds = %middle.block1540
  %min.epilog.iters.check1548 = icmp eq i64 %i.agd, 0
  br i1 %min.epilog.iters.check1548, label %.lr.ph.i32.i281.preheader, label %vec.epilog.ph1549, !prof !1450

vec.epilog.ph1549:                                ; preds = %vector.main.loop.iter.check1524, %vec.epilog.iter.check1546
  %vec.epilog.resume.val1550 = phi i64 [ %n.vec1527, %vec.epilog.iter.check1546 ], [ 0, %vector.main.loop.iter.check1524 ]
  %bc.merge.rdx1551 = phi i32 [ %i.agx, %vec.epilog.iter.check1546 ], [ 0, %vector.main.loop.iter.check1524 ]
  %n.vec1552 = and i64 %i.aes, 4611686018427387900 ; 3 uses
  %i.agy = shl i64 %n.vec1552, 3
  %i.agz = getelementptr i8, ptr %i.aej, i64 %i.agy
  %i.aha = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1551, i64 0
  br label %vec.epilog.vector.body1553

vec.epilog.vector.body1553:                       ; preds = %vec.epilog.vector.body1553, %vec.epilog.ph1549
  %index1554 = phi i64 [ %vec.epilog.resume.val1550, %vec.epilog.ph1549 ], [ %index.next1558, %vec.epilog.vector.body1553 ] ; 2 uses
  %vec.phi1555 = phi <4 x i32> [ %i.aha, %vec.epilog.ph1549 ], [ %i.ahe, %vec.epilog.vector.body1553 ]
  %i.ahb = shl i64 %index1554, 3
  %next.gep1556 = getelementptr i8, ptr %i.aej, i64 %i.ahb
  %wide.load1557 = load <4 x i64>, ptr %next.gep1556, align 4
  %i.ahc = lshr <4 x i64> %wide.load1557, splat (i64 32)
  %i.ahd = trunc nuw <4 x i64> %i.ahc to <4 x i32>
  %i.ahe = add <4 x i32> %vec.phi1555, %i.ahd     ; 2 uses
  %index.next1558 = add nuw i64 %index1554, 4     ; 2 uses
  %i.ahf = icmp eq i64 %index.next1558, %n.vec1552
  br i1 %i.ahf, label %vec.epilog.middle.block1559, label %vec.epilog.vector.body1553, !llvm.loop !3052

vec.epilog.middle.block1559:                      ; preds = %vec.epilog.vector.body1553
  %i.ahg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ahe) ; 2 uses
  %cmp.n1560 = icmp eq i64 %i.aes, %n.vec1552
  br i1 %cmp.n1560, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i268, label %.lr.ph.i32.i281.preheader

.lr.ph.i32.i281.preheader:                        ; preds = %iter.check1545, %vec.epilog.iter.check1546, %vec.epilog.middle.block1559
  %.0612.i33.i282.ph = phi i32 [ 0, %iter.check1545 ], [ %i.agx, %vec.epilog.iter.check1546 ], [ %i.ahg, %vec.epilog.middle.block1559 ]
  %.sroa.08.011.i34.i283.ph = phi ptr [ %i.aej, %iter.check1545 ], [ %i.agf, %vec.epilog.iter.check1546 ], [ %i.agz, %vec.epilog.middle.block1559 ]
  br label %.lr.ph.i32.i281

.lr.ph.i32.i281:                                  ; preds = %.lr.ph.i32.i281.preheader, %.lr.ph.i32.i281
  %.0612.i33.i282 = phi i32 [ %i.ahi, %.lr.ph.i32.i281 ], [ %.0612.i33.i282.ph, %.lr.ph.i32.i281.preheader ]
  %.sroa.08.011.i34.i283 = phi ptr [ %i.ahj, %.lr.ph.i32.i281 ], [ %.sroa.08.011.i34.i283.ph, %.lr.ph.i32.i281.preheader ] ; 2 uses
  %i.ahh = load i64, ptr %.sroa.08.011.i34.i283, align 4
  %.sroa.3.0.extract.shift.i35.i284 = lshr i64 %i.ahh, 32
  %.sroa.3.0.extract.trunc.i36.i285 = trunc nuw i64 %.sroa.3.0.extract.shift.i35.i284 to i32
  %i.ahi = add nsw i32 %.0612.i33.i282, %.sroa.3.0.extract.trunc.i36.i285 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i34.i283, i64 8 ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.ael
  br i1 %i.ahk, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i268, label %.lr.ph.i32.i281, !llvm.loop !3053

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i266: ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i161, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i286
  %.0.i31.ph.i267 = phi i32 [ %i.agc, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i161 ], [ 0, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i286 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i268

_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i268: ; preds = %.lr.ph.i32.i281, %middle.block1540, %vec.epilog.middle.block1559, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i266
  %.0.i31.i269 = phi i32 [ %.0.i31.ph.i267, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.sink.split.i266 ], [ %i.ahg, %vec.epilog.middle.block1559 ], [ %i.agx, %middle.block1540 ], [ %i.ahi, %.lr.ph.i32.i281 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38, !noalias !3124
  store i32 %i.aeh, ptr %37, align 16, !tbaa !1475, !alias.scope !3125, !noalias !3124
  %i.ahl = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i32 %.0.i31.i269, ptr %i.ahl, align 16, !tbaa !1475, !alias.scope !3125, !noalias !3124
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr nonnull @.str.32, i64 11, i64 17, ptr nonnull %37)
          to label %.noexc288.a unwind label %bb.fz

.noexc288.a:                                      ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit37.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #38, !noalias !3124
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr nonnull @.str.32) #47
          to label %bb.es unwind label %bb.et

bb.es:                                            ; preds = %.noexc288.a
  unreachable

bb.et:                                            ; preds = %.noexc288.a
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  %i.ahn = load ptr, ptr %38, align 8, !tbaa !1479 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ahp = icmp eq ptr %i.ahn, %i.aho
  br i1 %i.ahp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %bb.et
  %i.ahq = load i64, ptr %i.aho, align 8, !tbaa !1475
  %i.ahr = add i64 %i.ahq, 1
  call void @_ZdlPvm(ptr noundef %i.ahn, i64 noundef %i.ahr) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i271: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  br label %.body290

bb.eu:                                            ; preds = %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread.i161, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.thread151.i278, %_ZNK8facebook5velox12_GLOBAL__N_19Selection5countEv.exit.i286
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  %i.ahs = load i64, ptr %3, align 8, !tbaa !1451 ; 2 uses
  %i.aht = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ahs, i64 1) ; 2 uses
  %i.ahu = extractvalue { i64, i1 } %i.aht, 1
  br i1 %i.ahu, label %bb.ev, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i163, !prof !1474

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38, !noalias !3126
  store ptr @.str.16, ptr %35, align 16, !tbaa !1475, !noalias !3126
  %i.ahv = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.ahs, ptr %i.ahv, align 16, !tbaa !1475, !noalias !3126
  %i.ahw = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 1, ptr %i.ahw, align 16, !tbaa !1475, !noalias !3126
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr nonnull @.str.24, i64 20, i64 1100, ptr nonnull %35)
          to label %.noexc289 unwind label %bb.fz

.noexc289:                                        ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38, !noalias !3126
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr nonnull @.str.24) #47
          to label %bb.ew unwind label %bb.ex

bb.ew:                                            ; preds = %.noexc289
  unreachable

bb.ex:                                            ; preds = %.noexc289
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  %i.ahy = load ptr, ptr %36, align 8, !tbaa !1479 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.aia = icmp eq ptr %i.ahy, %i.ahz
  br i1 %i.aia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i263: ; preds = %bb.ex
  %i.aib = load i64, ptr %i.ahz, align 8, !tbaa !1475
  %i.aic = add i64 %i.aib, 1
  call void @_ZdlPvm(ptr noundef %i.ahy, i64 noundef %i.aic) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i264: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  br label %.body290

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i163: ; preds = %bb.eu
  %i.aid = extractvalue { i64, i1 } %i.aht, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  %i.aie = getelementptr inbounds nuw i8, ptr %40, i64 4
  store i8 0, ptr %i.aie, align 4, !tbaa !1480
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %39, i64 noundef %i.aid, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %40, i1 noundef zeroext false)
          to label %.noexc292 unwind label %bb.fz

.noexc292:                                        ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #38
  %i.aif = load ptr, ptr %39, align 8, !tbaa !1440 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 44
  %i.aih = load i8, ptr %i.aig, align 4, !tbaa !1485
  %i.aii = and i8 %i.aih, 2
  %.not.i.i164 = icmp eq i8 %i.aii, 0
  br i1 %.not.i.i164, label %bb.ez, label %bb.ey, !prof !1486

bb.ey:                                            ; preds = %.noexc292
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #47
          to label %.noexc.i169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i165.loopexit.split-lp.loopexit.split-lp

.noexc.i169:                                      ; preds = %bb.ey
  unreachable

bb.ez:                                            ; preds = %.noexc292
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 16
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !1487 ; 4 uses
  %.val.i170 = load i8, ptr %i.x, align 8, !tbaa !1390, !range !1397, !noundef !1398
  %i.ail = trunc nuw i8 %.val.i170 to i1
  br i1 %i.ail, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aim = load i32, ptr %i.aeg, align 8, !tbaa !1388 ; 2 uses
  %i.ain = icmp slt i32 %i.aim, 2
  %.phi.trans.insert.i171 = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.pre.i172 = load ptr, ptr %.phi.trans.insert.i171, align 8, !tbaa !1490 ; 3 uses
  br i1 %i.ain, label %.loopexit97.i262, label %.lr.ph.i38.i173

.lr.ph.i38.i173:                                  ; preds = %bb.fa
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !1491
  %wide.trip.count.i.i174 = zext nneg i32 %i.aim to i64
  %.pre.i.i175 = load i32, ptr %.pre.i172, align 4, !tbaa !1492
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fc
  %indvars.iv.next.i.i260 = add nuw nsw i64 %indvars.iv.i.i176, 1 ; 2 uses
  %exitcond.not.i.i261 = icmp eq i64 %indvars.iv.next.i.i260, %wide.trip.count.i.i174
  br i1 %exitcond.not.i.i261, label %.loopexit97.i262, label %bb.fc, !llvm.loop !3060

bb.fc:                                            ; preds = %bb.fb, %.lr.ph.i38.i173
  %72 = phi i32 [ %.pre.i.i175, %.lr.ph.i38.i173 ], [ %i.ais, %bb.fb ]
  %indvars.iv.i.i176 = phi i64 [ 1, %.lr.ph.i38.i173 ], [ %indvars.iv.next.i.i260, %bb.fb ] ; 3 uses
  %i.aiq = getelementptr [4 x i8], ptr %i.aip, i64 %indvars.iv.i.i176
  %73 = getelementptr i8, ptr %i.aiq, i64 -4
  %i.air = load i32, ptr %73, align 4, !tbaa !1492
  %i.ais = add nsw i32 %i.air, %72                ; 2 uses
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.pre.i172, i64 %indvars.iv.i.i176
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !1492
  %.not.i39.i177 = icmp eq i32 %i.ais, %i.aiu
  br i1 %.not.i39.i177, label %bb.fb, label %.preheader.i.i180

.loopexit97.i262:                                 ; preds = %bb.fb, %bb.fa
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aiw = load i32, ptr %i.aiv, align 8, !tbaa !1396 ; 3 uses
  %i.aix = sext i32 %i.aiw to i64                 ; 2 uses
  %i.aiy = shl nsw i64 %i.aix, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aik, ptr align 4 %.pre.i172, i64 %i.aiy, i1 false)
  %i.aiz = icmp eq i32 %i.aiw, 0
  br i1 %i.aiz, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i, label %bb.fd

bb.fd:                                            ; preds = %.loopexit97.i262
  %i.aja = add nsw i32 %i.aiw, -1
  %i.ajb = load ptr, ptr %.phi.trans.insert.i171, align 8, !tbaa !1490
  %i.ajc = sext i32 %i.aja to i64                 ; 2 uses
  %i.ajd = getelementptr inbounds [4 x i8], ptr %i.ajb, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !1492
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !1491
  %i.ajh = getelementptr inbounds [4 x i8], ptr %i.ajg, i64 %i.ajc
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !1492
  %i.ajj = add nsw i32 %i.aji, %i.aje
  br label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i

.preheader.i.i180:                                ; preds = %bb.fc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %66, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.aee, align 8, !tbaa !1390
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ajl = load i32, ptr %i.ajk, align 8, !tbaa !1396
  %i.ajm = icmp sgt i32 %i.ajl, 0
  br i1 %i.ajm, label %.lr.ph.i49.preheader.i197, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i

.lr.ph.i49.preheader.i197:                        ; preds = %.preheader.i.i180
  %i.ajn = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 3 uses
  br label %.lr.ph.i49.i198

bb.fe:                                            ; preds = %bb.ez
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %66, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.aee, align 8, !tbaa !1390
  %i.ajp = load ptr, ptr %1, align 8, !tbaa !1447 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !1447 ; 2 uses
  %i.ajs = icmp eq ptr %i.ajp, %i.ajr
  br i1 %i.ajs, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.i, label %.lr.ph42.i.preheader.i222

.lr.ph42.i.preheader.i222:                        ; preds = %bb.fe
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 3 uses
  br label %.lr.ph42.i.i223

.lr.ph42.i.i223:                                  ; preds = %._crit_edge.i.i229, %.lr.ph42.i.preheader.i222
  %.promoted605 = phi ptr [ %.promoted605722, %._crit_edge.i.i229 ], [ null, %.lr.ph42.i.preheader.i222 ] ; 2 uses
  %.promoted601 = phi ptr [ %.promoted601720, %._crit_edge.i.i229 ], [ null, %.lr.ph42.i.preheader.i222 ] ; 2 uses
  %.promoted597 = phi ptr [ %.promoted597718, %._crit_edge.i.i229 ], [ null, %.lr.ph42.i.preheader.i222 ] ; 2 uses
  %.186.i224 = phi i32 [ %.287.i230, %._crit_edge.i.i229 ], [ 0, %.lr.ph42.i.preheader.i222 ] ; 2 uses
  %.2.i225 = phi i32 [ %.3.i231, %._crit_edge.i.i229 ], [ 0, %.lr.ph42.i.preheader.i222 ] ; 2 uses
  %.sroa.032.040.i.i226 = phi ptr [ %i.akd, %._crit_edge.i.i229 ], [ %i.ajp, %.lr.ph42.i.preheader.i222 ] ; 2 uses
  %i.ajx = load i64, ptr %.sroa.032.040.i.i226, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i227 = lshr i64 %i.ajx, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i.i228 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i227 to i32
  %i.ajy = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i228, 0
  br i1 %i.ajy, label %.lr.ph39.preheader.i.i232, label %._crit_edge.i.i229

.lr.ph39.preheader.i.i232:                        ; preds = %.lr.ph42.i.i223
  %i.ajz = shl i64 %i.ajx, 32
  %i.aka = ashr exact i64 %i.ajz, 32
  %i.akb = sext i32 %.186.i224 to i64
  br label %.lr.ph39.i.i233

._crit_edge.i.loopexit.i244:                      ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i
  store ptr %i.amt, ptr %i.ajv, align 8
  store ptr %i.ams, ptr %i.ajw, align 8
  store ptr %i.amr, ptr %66, align 8
  %i.akc = trunc nsw i64 %indvars.iv.next.i237 to i32
  br label %._crit_edge.i.i229

._crit_edge.i.i229:                               ; preds = %._crit_edge.i.loopexit.i244, %.lr.ph42.i.i223
  %.promoted605722 = phi ptr [ %.promoted605, %.lr.ph42.i.i223 ], [ %i.amr, %._crit_edge.i.loopexit.i244 ]
  %.promoted601720 = phi ptr [ %.promoted601, %.lr.ph42.i.i223 ], [ %i.ams, %._crit_edge.i.loopexit.i244 ]
  %.promoted597718 = phi ptr [ %.promoted597, %.lr.ph42.i.i223 ], [ %i.amt, %._crit_edge.i.loopexit.i244 ]
  %.287.i230 = phi i32 [ %.186.i224, %.lr.ph42.i.i223 ], [ %i.akc, %._crit_edge.i.loopexit.i244 ] ; 2 uses
  %.3.i231 = phi i32 [ %.2.i225, %.lr.ph42.i.i223 ], [ %.5.i241, %._crit_edge.i.loopexit.i244 ] ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.032.040.i.i226, i64 8 ; 2 uses
  %i.ake = icmp eq ptr %i.akd, %i.ajr
  br i1 %i.ake, label %_ZNK8facebook5velox12_GLOBAL__N_19Selection5applyIZNS1_13exportOffsetsINS0_9MapVectorEEEvRKT_RKS2_R10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS2_EUliE_EEvOS6_.exit.loopexit.i, label %.lr.ph42.i.i223

.lr.ph39.i.i233:                                  ; preds = %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, %.lr.ph39.preheader.i.i232
  %i.akf = phi ptr [ %i.amr, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.promoted605, %.lr.ph39.preheader.i.i232 ] ; 13 uses
  %i.akg = phi ptr [ %i.ams, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.promoted601, %.lr.ph39.preheader.i.i232 ] ; 8 uses
  %i.akh = phi ptr [ %i.amt, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.promoted597, %.lr.ph39.preheader.i.i232 ] ; 7 uses
  %indvars.iv.i234 = phi i64 [ %indvars.iv.next.i237, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %i.akb, %.lr.ph39.preheader.i.i232 ] ; 2 uses
  %.4.i235 = phi i32 [ %.5.i241, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ %.2.i225, %.lr.ph39.preheader.i.i232 ] ; 3 uses
  %indvars.iv46.i.i236 = phi i64 [ %indvars.iv.next47.i.i242, %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i ], [ 0, %.lr.ph39.preheader.i.i232 ] ; 2 uses
  %i.aki = add nsw i64 %indvars.iv46.i.i236, %i.aka ; 4 uses
  %indvars.iv.next.i237 = add nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %indvars.iv.i234
  store i32 %.4.i235, ptr %i.akj, align 4, !tbaa !1492
  %i.akk = load ptr, ptr %0, align 8, !tbaa !1472
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 32
  %i.akm = load ptr, ptr %i.akl, align 8
  %i.akn = trunc nsw i64 %i.aki to i32
  %i.ako = invoke noundef zeroext i1 %i.akm(ptr noundef nonnull align 8 dereferenceable(161) %0, i32 noundef %i.akn)
          to label %.noexc53.i238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i165.loopexit, !inline_history !3061

.noexc53.i238:                                    ; preds = %.lr.ph39.i.i233
  br i1 %i.ako, label %_ZZN8facebook5velox12_GLOBAL__N_113exportOffsetsINS0_9MapVectorEEEvRKT_RKNS1_9SelectionER10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderERS7_ENKUliE_clEi.exit.i.i, label %bb.ff

bb.ff:                                            ; preds = %.noexc53.i238
  %i.akp = load ptr, ptr %i.ajt, align 8, !tbaa !1490
  %i.akq = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.aki
  %i.akr = load i32, ptr %i.akq, align 4, !tbaa !1492 ; 2 uses
  %i.aks = load ptr, ptr %i.aju, align 8, !tbaa !1491 ; 2 uses
  %i.akt = getelementptr inbounds [4 x i8], ptr %i.aks, i64 %i.aki
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !1492 ; 2 uses
  %.not.i.i.i.i.i239 = icmp eq ptr %i.akh, %i.akg
  br i1 %.not.i.i.i.i.i239, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store i32 %i.akr, ptr %i.akh, align 4, !tbaa !3117
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  store i32 %i.aku, ptr %i.akv, align 4, !tbaa !3118
  br label %_ZN8facebook5velox12_GLOBAL__N_19Selection8addRangeEii.exit.i.i.i240

bb.fh:                                            ; preds = %bb.ff
  %i.akw = ptrtoint ptr %i.akg to i64             ; 2 uses
  %i.akx = ptrtoint ptr %i.akf to i64             ; 3 uses
  %i.aky = sub i64 %i.akw, %i.akx                 ; 4 uses
  %i.akz = icmp eq i64 %i.aky, 9223372036854775800
  br i1 %i.akz, label %.invoke.i220.loopexit, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i245

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i245: ; preds = %bb.fh
  %i.ala = ashr exact i64 %i.aky, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i246 = call i64 @llvm.umax.i64(i64 %i.ala, i64 1)
  %i.alb = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i246, %i.ala ; 2 uses
  %i.alc = icmp ult i64 %i.alb, %i.ala
  %i.ald = call i64 @llvm.umin.i64(i64 %i.alb, i64 1152921504606846975)
  %i.ale = select i1 %i.alc, i64 1152921504606846975, i64 %i.ald ; 3 uses
  %.not.i.i.i.i.i.i.i247 = icmp ne i64 %i.ale, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i247)
  %i.alf = shl nuw nsw i64 %i.ale, 3
  %i.alg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alf) #46
          to label %.noexc55.i248 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i165.loopexit ; 10 uses

.noexc55.i248:                                    ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i245
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.aky ; 2 uses
  store i32 %i.akr, ptr %i.alh, align 4, !tbaa !3117
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 4
  store i32 %i.aku, ptr %i.ali, align 4, !tbaa !3118
  %.not10.i.i.i.i.i.i.i.i.i249 = icmp eq ptr %i.akf, %i.akg
  br i1 %.not10.i.i.i.i.i.i.i.i.i249, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i.i.i.i.i254, label %iter.check1616

iter.check1616:                                   ; preds = %.noexc55.i248
  %i.alj = ptrtoaddr ptr %i.alg to i64
  %i.alk = add i64 %i.akw, -8
  %i.all = sub i64 %i.alk, %i.akx                 ; 3 uses
  %i.alm = lshr i64 %i.all, 3
  %i.aln = add nuw nsw i64 %i.alm, 1              ; 5 uses
  %min.iters.check1598 = icmp ult i64 %i.all, 24
  %i.alo = sub i64 %i.akx, %i.alj
  %diff.check1600 = icmp ugt i64 %i.alo, -128
  %or.cond1788 = or i1 %min.iters.check1598, %diff.check1600
  br i1 %or.cond1788, label %.lr.ph.i.i.i.i.i.i.i.i.i250.preheader, label %vector.main.loop.iter.check1601

vector.main.loop.iter.check1601:                  ; preds = %iter.check1616
  %min.iters.check1602 = icmp ult i64 %i.all, 120
  br i1 %min.iters.check1602, label %vec.epilog.ph1620, label %vector.ph1603

vector.ph1603:                                    ; preds = %vector.main.loop.iter.check1601
  %i.alp = and i64 %i.aln, 12
  %n.vec1604 = and i64 %i.aln, 4611686018427387888 ; 4 uses
  %i.alq = shl i64 %n.vec1604, 3                  ; 2 uses
  %i.alr = getelementptr i8, ptr %i.alg, i64 %i.alq ; 2 uses
  %i.als = getelementptr i8, ptr %i.akf, i64 %i.alq
  br label %vector.body1605

vector.body1605:                                  ; preds = %vector.ph1603, %vector.body1605
  %index1606 = phi i64 [ 0, %vector.ph1603 ], [ %index.next1613, %vector.body1605 ] ; 2 uses
  %i.alt = shl i64 %index1606, 3                  ; 2 uses
  %next.gep1607 = getelementptr i8, ptr %i.alg, i64 %i.alt ; 4 uses
  %next.gep1608 = getelementptr i8, ptr %i.akf, i64 %i.alt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3127)
  call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %i.alu = getelementptr i8, ptr %next.gep1608, i64 32
  %i.alv = getelementptr i8, ptr %next.gep1608, i64 64
  %i.alw = getelementptr i8, ptr %next.gep1608, i64 96
  %wide.load1609 = load <4 x i64>, ptr %next.gep1608, align 4, !alias.scope !3128
  %wide.load1610 = load <4 x i64>, ptr %i.alu, align 4, !alias.scope !3128
  %wide.load1611 = load <4 x i64>, ptr %i.alv, align 4, !alias.scope !3128
  %wide.load1612 = load <4 x i64>, ptr %i.alw, align 4, !alias.scope !3128
  %i.alx = getelementptr i8, ptr %next.gep1607, i64 32
  %i.aly = getelementptr i8, ptr %next.gep1607, i64 64
  %i.alz = getelementptr i8, ptr %next.gep1607, i64 96
  store <4 x i64> %wide.load1609, ptr %next.gep1607, align 4, !alias.scope !3127
  store <4 x i64> %wide.load1610, ptr %i.alx, align 4, !alias.scope !3127
  store <4 x i64> %wide.load1611, ptr %i.aly, align 4, !alias.scope !3127
end_hunk_1
