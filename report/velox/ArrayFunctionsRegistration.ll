inline.NumInlined: 171860
inline.NumDeleted: 43815
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEnEESB_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKS1_SU_SW_EUlSU_E_EEvSU_:bb.a
  br i1 %.not2.i.i, label %bb.aw, label %.noexc43

bb.aw:                                            ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i
  %i.oq = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIiE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.nv)
          to label %.noexc43 unwind label %.loopexit282 ; 0 uses

.noexc43:                                         ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i, %bb.aw
  %i.or = sext i32 %i.nr to i64                   ; 2 uses
  %i.os = getelementptr inbounds [16 x i8], ptr %i.nu, i64 %i.or
  %i.ot = load ptr, ptr %i.ej, align 8, !tbaa !46802, !noalias !46844
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !3515, !noalias !46844
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.ov, i64 %i.or
  store i128 %.0.copyload.i.i.i.i.i86, ptr %i.os, align 16, !tbaa !4279
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.oy = load i32, ptr %i.ox, align 16, !tbaa !46837
  store i32 %i.oy, ptr %i.ow, align 4, !tbaa !3
  %i.oz = load i64, ptr %i.ee, align 8, !tbaa !1619 ; 3 uses
  %i.pa = icmp ugt i64 %i.oz, 255
  call void @llvm.assume(i1 %i.pa)
  %i.pb = load ptr, ptr %i.cp, align 8, !tbaa !46822 ; 3 uses
  %i.pc = getelementptr inbounds nuw [32 x i8], ptr %i.pb, i64 %i.mr ; 2 uses
  %i.pd = load i128, ptr %i.pc, align 16, !tbaa !4279
  %i.pe = trunc i128 %i.pd to i64                 ; 2 uses
  %i.pf = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.pe) ; 3 uses
  %i.pg = lshr i64 %i.pf, 24
  %i.ph = or i64 %i.pg, 128                       ; 2 uses
  %i.pi = add i64 %i.pf, %i.pe                    ; 2 uses
  %i.pj = shl nuw nsw i64 %i.ph, 1
  %i.pk = or disjoint i64 %i.pj, 1
  %i.pl = trunc nuw i64 %i.ph to i8
  %i.pm = insertelement <16 x i8> poison, i8 %i.pl, i64 0
  %i.pn = shufflevector <16 x i8> %i.pm, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.po = and i64 %i.oz, 255
  %i.pp = load ptr, ptr %i.cq, align 8, !tbaa !46769
  br label %.noexc61

.noexc61:                                         ; preds = %.noexc63, %.noexc43
  %.0.i = phi i64 [ %i.pi, %.noexc43 ], [ %i.qg, %.noexc63 ] ; 2 uses
  %i.pq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.po)
  %i.pr = getelementptr inbounds nuw [64 x i8], ptr %i.pp, i64 %i.pq ; 3 uses
  %i.ps = load <16 x i8>, ptr %i.pr, align 16
  %i.pt = icmp eq <16 x i8> %i.ps, %i.pn
  %i.pu = bitcast <16 x i1> %i.pt to i16
  %i.pv = and i16 %i.pu, 4095
  %i.pw = zext nneg i16 %i.pv to i32
  %i.px = icmp ne ptr %i.pr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc62, %.noexc61
  %.sroa.0200.0 = phi i32 [ %i.pw, %.noexc61 ], [ %i.qb, %.noexc62 ] ; 4 uses
  %.not281 = icmp eq i32 %.sroa.0200.0, 0
  br i1 %.not281, label %.noexc63, label %.noexc62

.noexc62:                                         ; preds = %.critedge.i
  %i.pz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0200.0, i1 true)
  %i.qa = add nsw i32 %.sroa.0200.0, -1
  %i.qb = and i32 %i.qa, %.sroa.0200.0
  %i.qc = zext nneg i32 %i.pz to i64              ; 4 uses
  call void @llvm.assume(i1 %i.px)
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !3
  %i.qf = icmp eq i32 %i.mq, %i.qe
  br i1 %i.qf, label %.noexc54, label %.critedge.i, !prof !721, !llvm.loop !46848

.noexc63:                                         ; preds = %.critedge.i
  %i.qg = add i64 %i.pk, %.0.i
  br label %.noexc61, !llvm.loop !46849

.noexc54:                                         ; preds = %.noexc62
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.qc
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %i.qc, -4
  %i.qj = getelementptr inbounds i8, ptr %i.qi, i64 %.neg.i.i.i.i ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 14 ; 2 uses
  %i.ql = load i8, ptr %i.qk, align 2, !tbaa !35483
  %.not.i20.i = icmp ult i8 %i.ql, 16             ; 2 uses
  %i.qm = lshr i64 %i.pf, 23
  %i.qn = or i64 %i.qm, 257
  %.sroa.5.0.i.i = select i1 %.not.i20.i, i64 1, i64 %i.qn
  %.sroa.04.0.i.i = select i1 %.not.i20.i, i64 0, i64 %i.pi ; 2 uses
  %i.qo = add i64 %i.oz, -256
  store i64 %i.qo, ptr %i.ee, align 8, !tbaa !1619
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qc ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !13
  %.not.i.i.i.i.i = icmp sgt i8 %i.qq, -1
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i

bb.ax:                                            ; preds = %.noexc54
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i: ; preds = %.noexc54
  store i8 0, ptr %i.qp, align 1, !tbaa !13
  %i.qr = load i8, ptr %i.qk, align 2, !tbaa !35483
  %.not.i.i.i.i101 = icmp ult i8 %i.qr, 16
  %.pre.i102 = load i64, ptr %i.ee, align 8, !tbaa !1619 ; 3 uses
  br i1 %.not.i.i.i.i101, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i
  %i.qs = load ptr, ptr %i.cq, align 8, !tbaa !46769 ; 4 uses
  %i.qt = and i64 %.pre.i102, 255                 ; 2 uses
  %i.qu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i.i, i64 range(i64 0, 256) %i.qt) ; 3 uses
  %i.qv = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.qu
  %i.qw = icmp eq ptr %i.qv, %i.qj
  br i1 %i.qw, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ba, %bb.ay
  %.011.lcssa.i.i.i.i = phi i8 [ 0, %bb.ay ], [ -16, %bb.ba ]
  %i.qx = phi i64 [ %i.qu, %bb.ay ], [ %i.ri, %bb.ba ]
  %i.qy = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 14 ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 2, !tbaa !35483
  %i.rb = add i8 %i.ra, %.011.lcssa.i.i.i.i
  store i8 %i.rb, ptr %i.qz, align 2, !tbaa !35483
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ay, %bb.ba
  %i.rc = phi i64 [ %i.ri, %bb.ba ], [ %i.qu, %bb.ay ]
  %.01026.i.i.i.i = phi i64 [ %i.rh, %bb.ba ], [ %.sroa.04.0.i.i, %bb.ay ]
  %i.rd = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 15 ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq i8 %i.rf, -2
  br i1 %.not.i17.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  %i.rg = add i8 %i.rf, -1
  store i8 %i.rg, ptr %i.re, align 1, !tbaa !35479
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i.i.i.i
  %i.rh = add i64 %.01026.i.i.i.i, %.sroa.5.0.i.i ; 2 uses
  %i.ri = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.rh, i64 range(i64 0, 256) %i.qt) ; 3 uses
  %i.rj = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.ri
  %i.rk = icmp eq ptr %i.rj, %i.qj
  br i1 %i.rk, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i: ; preds = %.thread.i.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i
  %i.rl = lshr i64 %.pre.i102, 8                  ; 5 uses
  %.not.i103 = icmp eq i64 %i.rl, %i.mr
  br i1 %.not.i103, label %.noexc29, label %bb.bb

bb.bb:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i
  %i.rm = trunc i64 %i.rl to i32
  %i.rn = icmp ne i64 %i.rl, 0
  call void @llvm.assume(i1 %i.rn)
  %i.ro = load ptr, ptr %i.cp, align 8, !tbaa !46822
  %i.rp = and i64 %i.rl, 4294967295
  %i.rq = getelementptr inbounds nuw [32 x i8], ptr %i.ro, i64 %i.rp
  %i.rr = load i128, ptr %i.rq, align 16, !tbaa !4279
  %i.rs = trunc i128 %i.rr to i64                 ; 2 uses
  %i.rt = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.rs) ; 2 uses
  %i.ru = lshr i64 %i.rt, 24
  %i.rv = or i64 %i.ru, 128                       ; 2 uses
  %i.rw = add i64 %i.rt, %i.rs
  %i.rx = shl nuw nsw i64 %i.rv, 1
  %i.ry = or disjoint i64 %i.rx, 1
  %i.rz = trunc nuw i64 %i.rv to i8
  %i.sa = insertelement <16 x i8> poison, i8 %i.rz, i64 0
  %i.sb = shufflevector <16 x i8> %i.sa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.sc = and i64 %.pre.i102, 255
  %i.sd = load ptr, ptr %i.cq, align 8, !tbaa !46769
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %.0.i.i105 = phi i64 [ %i.rw, %bb.bb ], [ %i.su, %bb.be ] ; 2 uses
  %i.se = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i105, i64 range(i64 0, 256) %i.sc)
  %i.sf = getelementptr inbounds nuw [64 x i8], ptr %i.sd, i64 %i.se ; 3 uses
  %i.sg = load <16 x i8>, ptr %i.sf, align 16
  %i.sh = icmp eq <16 x i8> %i.sg, %i.sb
  %i.si = bitcast <16 x i1> %i.sh to i16
  %i.sj = and i16 %i.si, 4095
  %i.sk = zext nneg i16 %i.sj to i32
  %i.sl = icmp ne ptr %i.sf, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  br label %.critedge.i.i107

.critedge.i.i107:                                 ; preds = %bb.bd, %bb.bc
  %.sroa.025.0.i = phi i32 [ %i.sk, %bb.bc ], [ %i.sp, %bb.bd ] ; 4 uses
  %.not46.i = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not46.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i.i107
  %i.sn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0.i, i1 true)
  %i.so = add nsw i32 %.sroa.025.0.i, -1
  %i.sp = and i32 %i.so, %.sroa.025.0.i
  %i.sq = zext nneg i32 %i.sn to i64              ; 2 uses
  call void @llvm.assume(i1 %i.sl)
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !3
  %i.st = icmp eq i32 %i.ss, %i.rm
  br i1 %i.st, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i, label %.critedge.i.i107, !prof !721, !llvm.loop !46848

bb.be:                                            ; preds = %.critedge.i.i107
  %i.su = add i64 %i.ry, %.0.i.i105
  br label %bb.bc, !llvm.loop !46849

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i: ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pb) ]
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sq
  store i32 %i.mq, ptr %i.sv, align 4, !tbaa !3
  %i.sw = getelementptr inbounds nuw [32 x i8], ptr %i.pb, i64 %i.rl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.pc, ptr noundef nonnull align 1 dereferenceable(32) %i.sw, i64 32, i1 false)
  br label %.noexc29

.noexc29:                                         ; preds = %bb.ar, %.noexc39, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i, %.noexc24
  %i.sx = load i32, ptr %7, align 8, !tbaa !31474, !noalias !46850
  %i.sy = load i32, ptr %i.bc, align 8, !tbaa !31474
  %i.sz = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.ta = sext i32 %i.sx to i64
  %sext.i110 = sext i32 %i.sy to i64              ; 2 uses
  %indvars.iv.next.i112419 = add nsw i64 %i.ta, 1 ; 3 uses
  %i.tb = trunc nsw i64 %indvars.iv.next.i112419 to i32 ; 3 uses
  store i32 %i.tb, ptr %7, align 8, !tbaa !31474, !noalias !797
  %i.tc = icmp eq i64 %indvars.iv.next.i112419, %sext.i110
  br i1 %i.tc, label %.noexc30, label %.lr.ph421.preheader

.lr.ph421.preheader:                              ; preds = %.noexc29
  %i.td = load ptr, ptr %i.sz, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 5 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i113 = icmp eq ptr %i.tf, null
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 58
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 57
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 59
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  br label %.lr.ph421

bb.bf:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115
  %indvars.iv.next.i112 = add nsw i64 %indvars.iv.next.i112420, 1 ; 3 uses
  %i.tk = trunc nsw i64 %indvars.iv.next.i112 to i32 ; 3 uses
  store i32 %i.tk, ptr %7, align 8, !tbaa !31474, !noalias !797
  %i.tl = icmp eq i64 %indvars.iv.next.i112, %sext.i110
  br i1 %i.tl, label %.noexc30, label %.lr.ph421, !llvm.loop !31484

.lr.ph421:                                        ; preds = %.lr.ph421.preheader, %bb.bf
  %i.tm = phi i32 [ %i.tk, %bb.bf ], [ %i.tb, %.lr.ph421.preheader ] ; 2 uses
  %indvars.iv.next.i112420 = phi i64 [ %indvars.iv.next.i112, %bb.bf ], [ %indvars.iv.next.i112419, %.lr.ph421.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i113, label %.noexc30, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph421
  %i.tn = load i8, ptr %i.tg, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.to = trunc nuw i8 %i.tn to i1
  %i.tp = load i8, ptr %i.th, align 1, !range !796
  %i.tq = trunc nuw i8 %i.tp to i1
  %or.cond.i.i.i.i114 = select i1 %i.to, i1 true, i1 %i.tq
  br i1 %or.cond.i.i.i.i114, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tr = lshr i64 %indvars.iv.next.i112420, 6
  %i.ts = and i64 %i.tr, 67108863
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.ts
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !855
  %i.tv = and i64 %indvars.iv.next.i112420, 63
  %i.tw = shl nuw i64 1, %i.tv
  %i.tx = and i64 %i.tu, %i.tw
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115

bb.bi:                                            ; preds = %bb.bg
  %i.ty = load i8, ptr %i.ti, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.tz = trunc nuw i8 %i.ty to i1
  br i1 %i.tz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ua = load i64, ptr %i.tf, align 8, !tbaa !855
  %i.ub = and i64 %i.ua, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115

bb.bk:                                            ; preds = %bb.bi
  %i.uc = load ptr, ptr %i.tj, align 8, !tbaa !1529
  %i.ud = shl nsw i64 %indvars.iv.next.i112420, 2
  %i.ue = getelementptr inbounds i8, ptr %i.uc, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.ug = zext i32 %i.uf to i64                   ; 2 uses
  %i.uh = lshr i64 %i.ug, 6
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.uh
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !855
  %i.uk = and i64 %i.ug, 63
  %i.ul = shl nuw i64 1, %i.uk
  %i.um = and i64 %i.ul, %i.uj
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115: ; preds = %bb.bk, %bb.bj, %bb.bh
  %.0.i.i.i.in.i116 = phi i64 [ %i.tx, %bb.bh ], [ %i.ub, %bb.bj ], [ %i.um, %bb.bk ]
  %.0.i.i.i.not.i117 = icmp eq i64 %.0.i.i.i.in.i116, 0
  br i1 %.0.i.i.i.not.i117, label %bb.bf, label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115..noexc30_crit_edge, !llvm.loop !31484

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115..noexc30_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115
  br label %.noexc30, !llvm.loop !31484

.noexc30:                                         ; preds = %bb.bf, %.lr.ph421, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115..noexc30_crit_edge, %.noexc29
  %.lcssa403 = phi i32 [ %i.tm, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i115..noexc30_crit_edge ], [ %i.tb, %.noexc29 ], [ %i.tk, %bb.bf ], [ %i.tm, %.lr.ph421 ] ; 2 uses
  %i.un = icmp eq i32 %i.dx, %.lcssa403
  br i1 %i.un, label %._crit_edge, label %bb.an

._crit_edge:                                      ; preds = %.noexc30, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  store ptr null, ptr %8, align 8, !tbaa !1533, !alias.scope !46853
  %i.uo = load ptr, ptr %i.bg, align 8, !tbaa !46807, !nonnull !797, !align !916 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 80
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !46785 ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 24 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 72 ; 3 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !46789
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 96
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !1286 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 44
  %i.ux = load i8, ptr %i.uw, align 4, !tbaa !1287
  %i.uy = and i8 %i.ux, 2
  %.not.i.i.i.i125 = icmp eq i8 %i.uy, 0
  br i1 %.not.i.i.i.i125, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, label %.invoke, !prof !721

.invoke:                                          ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, %._crit_edge
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont unwind label %bb.bl

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i: ; preds = %._crit_edge
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uo, i64 76 ; 3 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !46790
  %i.vb = load i32, ptr %i.ur, align 8, !tbaa !1121
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !1292
  %i.ve = sext i32 %i.vb to i64                   ; 2 uses
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.ve
  store i32 %i.va, ptr %i.vf, align 4, !tbaa !3
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uq, i64 112
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !1286 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 44
  %i.vj = load i8, ptr %i.vi, align 4, !tbaa !1287
  %i.vk = and i8 %i.vj, 2
  %.not.i4.i.i.i = icmp eq i8 %i.vk, 0
  br i1 %.not.i4.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i, label %.invoke, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !1292
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.ve
  store i32 %i.ut, ptr %i.vn, align 4, !tbaa !3
  %i.vo = load i32, ptr %i.ur, align 8, !tbaa !1121
  %i.vp = load ptr, ptr %i.uq, align 8, !tbaa !78
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 144
  %i.vr = load ptr, ptr %i.vq, align 8
  invoke void %i.vr(ptr noundef nonnull align 8 dereferenceable(94) %i.uq, i32 noundef %i.vo, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit unwind label %bb.bl, !inline_history !46856

bb.bl:                                            ; preds = %.invoke, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i
  %i.vs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.vt = load ptr, ptr %8, align 8, !tbaa !1533
  %.not.i131 = icmp eq ptr %i.vt, null
  br i1 %.not.i131, label %_ZN8facebook5velox6StatusD2Ev.exit132, label %bb.bm, !prof !721

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit132

_ZN8facebook5velox6StatusD2Ev.exit132:            ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i
  %i.vu = load i32, ptr %i.us, align 8, !tbaa !46780
  %i.vv = load i32, ptr %i.uz, align 4, !tbaa !46781
  %i.vw = add nsw i32 %i.vv, %i.vu
  store i32 %i.vw, ptr %i.uz, align 4, !tbaa !46781
  store i32 0, ptr %i.us, align 8, !tbaa !46780
  %i.vx = load ptr, ptr %8, align 8, !tbaa !1533
  %.not.i133 = icmp eq ptr %i.vx, null
  br i1 %.not.i133, label %_ZN8facebook5velox6StatusD2Ev.exit134, label %bb.bn, !prof !721

bb.bn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit134

_ZN8facebook5velox6StatusD2Ev.exit134:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES9_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

.loopexit282:                                     ; preds = %bb.at, %exp2.i.i.i.noexc, %.noexc92, %bb.au, %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.aa
  %lpad.loopexit283 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.av, %.noexc18, %.noexc15
  %lpad.loopexit.split-lp284 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEnEESB_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
  br i1 %.not2.i.i, label %bb.ap, label %.noexc50

bb.ap:                                            ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i
  %i.nx = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIiE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.nc)
          to label %.noexc50 unwind label %.loopexit286 ; 0 uses

.noexc50:                                         ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i, %bb.ap
  %i.ny = sext i32 %i.my to i64                   ; 2 uses
  %i.nz = getelementptr inbounds [16 x i8], ptr %i.nb, i64 %i.ny
  %i.oa = load ptr, ptr %i.dq, align 8, !tbaa !46802, !noalias !46912
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !3515, !noalias !46912
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.ny
  store i128 %.0.copyload.i.i.i.i.i89, ptr %i.nz, align 16, !tbaa !4279
  %i.oe = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.of = load i32, ptr %i.oe, align 16, !tbaa !46837
  store i32 %i.of, ptr %i.od, align 4, !tbaa !3
  %i.og = load i64, ptr %i.dl, align 8, !tbaa !1619 ; 3 uses
  %i.oh = icmp ugt i64 %i.og, 255
  call void @llvm.assume(i1 %i.oh)
  %i.oi = load ptr, ptr %i.bw, align 8, !tbaa !46822 ; 3 uses
  %i.oj = getelementptr inbounds nuw [32 x i8], ptr %i.oi, i64 %i.ly ; 2 uses
  %i.ok = load i128, ptr %i.oj, align 16, !tbaa !4279
  %i.ol = trunc i128 %i.ok to i64                 ; 2 uses
  %i.om = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ol) ; 3 uses
  %i.on = lshr i64 %i.om, 24
  %i.oo = or i64 %i.on, 128                       ; 2 uses
  %i.op = add i64 %i.om, %i.ol                    ; 2 uses
  %i.oq = shl nuw nsw i64 %i.oo, 1
  %i.or = or disjoint i64 %i.oq, 1
  %i.os = trunc nuw i64 %i.oo to i8
  %i.ot = insertelement <16 x i8> poison, i8 %i.os, i64 0
  %i.ou = shufflevector <16 x i8> %i.ot, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ov = and i64 %i.og, 255
  %i.ow = load ptr, ptr %i.bx, align 8, !tbaa !46769
  br label %.noexc68

.noexc68:                                         ; preds = %.noexc70, %.noexc50
  %.0.i = phi i64 [ %i.op, %.noexc50 ], [ %i.pn, %.noexc70 ] ; 2 uses
  %i.ox = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.ov)
  %i.oy = getelementptr inbounds nuw [64 x i8], ptr %i.ow, i64 %i.ox ; 3 uses
  %i.oz = load <16 x i8>, ptr %i.oy, align 16
  %i.pa = icmp eq <16 x i8> %i.oz, %i.ou
  %i.pb = bitcast <16 x i1> %i.pa to i16
  %i.pc = and i16 %i.pb, 4095
  %i.pd = zext nneg i16 %i.pc to i32
  %i.pe = icmp ne ptr %i.oy, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc69, %.noexc68
  %.sroa.0203.0 = phi i32 [ %i.pd, %.noexc68 ], [ %i.pi, %.noexc69 ] ; 4 uses
  %.not285 = icmp eq i32 %.sroa.0203.0, 0
  br i1 %.not285, label %.noexc70, label %.noexc69

.noexc69:                                         ; preds = %.critedge.i
  %i.pg = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0203.0, i1 true)
  %i.ph = add nsw i32 %.sroa.0203.0, -1
  %i.pi = and i32 %i.ph, %.sroa.0203.0
  %i.pj = zext nneg i32 %i.pg to i64              ; 4 uses
  call void @llvm.assume(i1 %i.pe)
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !3
  %i.pm = icmp eq i32 %i.lx, %i.pl
  br i1 %i.pm, label %.noexc61, label %.critedge.i, !prof !721, !llvm.loop !46848

.noexc70:                                         ; preds = %.critedge.i
  %i.pn = add i64 %i.or, %.0.i
  br label %.noexc68, !llvm.loop !46849

.noexc61:                                         ; preds = %.noexc69
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pj
  %i.pp = getelementptr inbounds i8, ptr %i.po, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %i.pj, -4
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 %.neg.i.i.i.i ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 14 ; 2 uses
  %i.ps = load i8, ptr %i.pr, align 2, !tbaa !35483
  %.not.i20.i = icmp ult i8 %i.ps, 16             ; 2 uses
  %i.pt = lshr i64 %i.om, 23
  %i.pu = or i64 %i.pt, 257
  %.sroa.5.0.i.i = select i1 %.not.i20.i, i64 1, i64 %i.pu
  %.sroa.04.0.i.i = select i1 %.not.i20.i, i64 0, i64 %i.op ; 2 uses
  %i.pv = add i64 %i.og, -256
  store i64 %i.pv, ptr %i.dl, align 8, !tbaa !1619
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.pj ; 2 uses
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !13
  %.not.i.i.i.i.i = icmp sgt i8 %i.px, -1
  br i1 %.not.i.i.i.i.i, label %bb.aq, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i

bb.aq:                                            ; preds = %.noexc61
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i: ; preds = %.noexc61
  store i8 0, ptr %i.pw, align 1, !tbaa !13
  %i.py = load i8, ptr %i.pr, align 2, !tbaa !35483
  %.not.i.i.i.i104 = icmp ult i8 %i.py, 16
  %.pre.i105 = load i64, ptr %i.dl, align 8, !tbaa !1619 ; 3 uses
  br i1 %.not.i.i.i.i104, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i
  %i.pz = load ptr, ptr %i.bx, align 8, !tbaa !46769 ; 4 uses
  %i.qa = and i64 %.pre.i105, 255                 ; 2 uses
  %i.qb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i.i, i64 range(i64 0, 256) %i.qa) ; 3 uses
  %i.qc = getelementptr inbounds nuw [64 x i8], ptr %i.pz, i64 %i.qb
  %i.qd = icmp eq ptr %i.qc, %i.pq
  br i1 %i.qd, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.at, %bb.ar
  %.011.lcssa.i.i.i.i = phi i8 [ 0, %bb.ar ], [ -16, %bb.at ]
  %i.qe = phi i64 [ %i.qb, %bb.ar ], [ %i.qp, %bb.at ]
  %i.qf = getelementptr inbounds nuw [64 x i8], ptr %i.pz, i64 %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 14 ; 2 uses
  %i.qh = load i8, ptr %i.qg, align 2, !tbaa !35483
  %i.qi = add i8 %i.qh, %.011.lcssa.i.i.i.i
  store i8 %i.qi, ptr %i.qg, align 2, !tbaa !35483
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ar, %bb.at
  %i.qj = phi i64 [ %i.qp, %bb.at ], [ %i.qb, %bb.ar ]
  %.01026.i.i.i.i = phi i64 [ %i.qo, %bb.at ], [ %.sroa.04.0.i.i, %bb.ar ]
  %i.qk = getelementptr inbounds nuw [64 x i8], ptr %i.pz, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 15 ; 2 uses
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq i8 %i.qm, -2
  br i1 %.not.i17.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qn = add i8 %i.qm, -1
  store i8 %i.qn, ptr %i.ql, align 1, !tbaa !35479
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i
  %i.qo = add i64 %.01026.i.i.i.i, %.sroa.5.0.i.i ; 2 uses
  %i.qp = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.qo, i64 range(i64 0, 256) %i.qa) ; 3 uses
  %i.qq = getelementptr inbounds nuw [64 x i8], ptr %i.pz, i64 %i.qp
  %i.qr = icmp eq ptr %i.qq, %i.pq
  br i1 %i.qr, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i: ; preds = %.thread.i.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i
  %i.qs = lshr i64 %.pre.i105, 8                  ; 5 uses
  %.not.i106 = icmp eq i64 %i.qs, %i.ly
  br i1 %.not.i106, label %.noexc36, label %bb.au

bb.au:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = icmp ne i64 %i.qs, 0
  call void @llvm.assume(i1 %i.qu)
  %i.qv = load ptr, ptr %i.bw, align 8, !tbaa !46822
  %i.qw = and i64 %i.qs, 4294967295
  %i.qx = getelementptr inbounds nuw [32 x i8], ptr %i.qv, i64 %i.qw
  %i.qy = load i128, ptr %i.qx, align 16, !tbaa !4279
  %i.qz = trunc i128 %i.qy to i64                 ; 2 uses
  %i.ra = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.qz) ; 2 uses
  %i.rb = lshr i64 %i.ra, 24
  %i.rc = or i64 %i.rb, 128                       ; 2 uses
  %i.rd = add i64 %i.ra, %i.qz
  %i.re = shl nuw nsw i64 %i.rc, 1
  %i.rf = or disjoint i64 %i.re, 1
  %i.rg = trunc nuw i64 %i.rc to i8
  %i.rh = insertelement <16 x i8> poison, i8 %i.rg, i64 0
  %i.ri = shufflevector <16 x i8> %i.rh, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.rj = and i64 %.pre.i105, 255
  %i.rk = load ptr, ptr %i.bx, align 8, !tbaa !46769
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.0.i.i108 = phi i64 [ %i.rd, %bb.au ], [ %i.sb, %bb.ax ] ; 2 uses
  %i.rl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i108, i64 range(i64 0, 256) %i.rj)
  %i.rm = getelementptr inbounds nuw [64 x i8], ptr %i.rk, i64 %i.rl ; 3 uses
  %i.rn = load <16 x i8>, ptr %i.rm, align 16
  %i.ro = icmp eq <16 x i8> %i.rn, %i.ri
  %i.rp = bitcast <16 x i1> %i.ro to i16
  %i.rq = and i16 %i.rp, 4095
  %i.rr = zext nneg i16 %i.rq to i32
  %i.rs = icmp ne ptr %i.rm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rm, i64 16 ; 2 uses
  br label %.critedge.i.i110

.critedge.i.i110:                                 ; preds = %bb.aw, %bb.av
  %.sroa.025.0.i = phi i32 [ %i.rr, %bb.av ], [ %i.rw, %bb.aw ] ; 4 uses
  %.not46.i = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not46.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i.i110
  %i.ru = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0.i, i1 true)
  %i.rv = add nsw i32 %.sroa.025.0.i, -1
  %i.rw = and i32 %i.rv, %.sroa.025.0.i
  %i.rx = zext nneg i32 %i.ru to i64              ; 2 uses
  call void @llvm.assume(i1 %i.rs)
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !3
  %i.sa = icmp eq i32 %i.rz, %i.qt
  br i1 %i.sa, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i, label %.critedge.i.i110, !prof !721, !llvm.loop !46848

bb.ax:                                            ; preds = %.critedge.i.i110
  %i.sb = add i64 %i.rf, %.0.i.i108
  br label %bb.av, !llvm.loop !46849

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oi) ]
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.rx
  store i32 %i.lx, ptr %i.sc, align 4, !tbaa !3
  %i.sd = getelementptr inbounds nuw [32 x i8], ptr %i.oi, i64 %i.qs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.oj, ptr noundef nonnull align 1 dereferenceable(32) %i.sd, i64 32, i1 false)
  br label %.noexc36

.noexc36:                                         ; preds = %bb.ak, %.noexc46, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i, %.noexc31
  %i.se = load i32, ptr %8, align 8, !tbaa !31474, !noalias !46915
  %i.sf = load i32, ptr %i.ah, align 8, !tbaa !31474
  %i.sg = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.sh = sext i32 %i.se to i64
  %sext.i113 = sext i32 %i.sf to i64              ; 2 uses
  %indvars.iv.next.i115415 = add nsw i64 %i.sh, 1 ; 3 uses
  %i.si = trunc nsw i64 %indvars.iv.next.i115415 to i32 ; 3 uses
  store i32 %i.si, ptr %8, align 8, !tbaa !31474, !noalias !797
  %i.sj = icmp eq i64 %indvars.iv.next.i115415, %sext.i113
  br i1 %i.sj, label %.noexc37, label %.lr.ph417.preheader

.lr.ph417.preheader:                              ; preds = %.noexc36
  %i.sk = load ptr, ptr %i.sg, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.sm, null
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 58
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 57
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 59
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  br label %.lr.ph417

bb.ay:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118
  %indvars.iv.next.i115 = add nsw i64 %indvars.iv.next.i115416, 1 ; 3 uses
  %i.sr = trunc nsw i64 %indvars.iv.next.i115 to i32 ; 3 uses
  store i32 %i.sr, ptr %8, align 8, !tbaa !31474, !noalias !797
  %i.ss = icmp eq i64 %indvars.iv.next.i115, %sext.i113
  br i1 %i.ss, label %.noexc37, label %.lr.ph417, !llvm.loop !31484

.lr.ph417:                                        ; preds = %.lr.ph417.preheader, %bb.ay
  %i.st = phi i32 [ %i.sr, %bb.ay ], [ %i.si, %.lr.ph417.preheader ] ; 2 uses
  %indvars.iv.next.i115416 = phi i64 [ %indvars.iv.next.i115, %bb.ay ], [ %indvars.iv.next.i115415, %.lr.ph417.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i116, label %.noexc37, label %bb.az

bb.az:                                            ; preds = %.lr.ph417
  %i.su = load i8, ptr %i.sn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.sv = trunc nuw i8 %i.su to i1
  %i.sw = load i8, ptr %i.so, align 1, !range !796
  %i.sx = trunc nuw i8 %i.sw to i1
  %or.cond.i.i.i.i117 = select i1 %i.sv, i1 true, i1 %i.sx
  br i1 %or.cond.i.i.i.i117, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.sy = lshr i64 %indvars.iv.next.i115416, 6
  %i.sz = and i64 %i.sy, 67108863
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sz
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !855
  %i.tc = and i64 %indvars.iv.next.i115416, 63
  %i.td = shl nuw i64 1, %i.tc
  %i.te = and i64 %i.tb, %i.td
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118

bb.bb:                                            ; preds = %bb.az
  %i.tf = load i8, ptr %i.sp, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.th = load i64, ptr %i.sm, align 8, !tbaa !855
  %i.ti = and i64 %i.th, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118

bb.bd:                                            ; preds = %bb.bb
  %i.tj = load ptr, ptr %i.sq, align 8, !tbaa !1529
  %i.tk = shl nsw i64 %indvars.iv.next.i115416, 2
  %i.tl = getelementptr inbounds i8, ptr %i.tj, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !3
  %i.tn = zext i32 %i.tm to i64                   ; 2 uses
  %i.to = lshr i64 %i.tn, 6
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.to
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !855
  %i.tr = and i64 %i.tn, 63
  %i.ts = shl nuw i64 1, %i.tr
  %i.tt = and i64 %i.ts, %i.tq
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118: ; preds = %bb.bd, %bb.bc, %bb.ba
  %.0.i.i.i.in.i119 = phi i64 [ %i.te, %bb.ba ], [ %i.ti, %bb.bc ], [ %i.tt, %bb.bd ]
  %.0.i.i.i.not.i120 = icmp eq i64 %.0.i.i.i.in.i119, 0
  br i1 %.0.i.i.i.not.i120, label %bb.ay, label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118..noexc37_crit_edge, !llvm.loop !31484

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118..noexc37_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118
  br label %.noexc37, !llvm.loop !31484

.noexc37:                                         ; preds = %bb.ay, %.lr.ph417, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118..noexc37_crit_edge, %.noexc36
  %.lcssa403 = phi i32 [ %i.st, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i118..noexc37_crit_edge ], [ %i.si, %.noexc36 ], [ %i.sr, %bb.ay ], [ %i.st, %.lr.ph417 ] ; 2 uses
  %i.tu = icmp eq i32 %i.de, %.lcssa403
  br i1 %i.tu, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %.noexc37, %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  store ptr null, ptr %9, align 8, !tbaa !1533, !alias.scope !46918
  %i.tv = load ptr, ptr %i.an, align 8, !tbaa !46807, !nonnull !797, !align !916 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 80
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !46785 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 24 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 72 ; 3 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !46789
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 96
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !1286 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 44
  %i.ue = load i8, ptr %i.ud, align 4, !tbaa !1287
  %i.uf = and i8 %i.ue, 2
  %.not.i.i.i.i128 = icmp eq i8 %i.uf, 0
  br i1 %.not.i.i.i.i128, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, label %.invoke, !prof !721

.invoke:                                          ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, %._crit_edge
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont unwind label %bb.be

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i: ; preds = %._crit_edge
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tv, i64 76 ; 3 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !46790
  %i.ui = load i32, ptr %i.ty, align 8, !tbaa !1121
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !1292
  %i.ul = sext i32 %i.ui to i64                   ; 2 uses
  %i.um = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.ul
  store i32 %i.uh, ptr %i.um, align 4, !tbaa !3
  %i.un = getelementptr inbounds nuw i8, ptr %i.tx, i64 112
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !1286 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 44
  %i.uq = load i8, ptr %i.up, align 4, !tbaa !1287
  %i.ur = and i8 %i.uq, 2
  %.not.i4.i.i.i = icmp eq i8 %i.ur, 0
  br i1 %.not.i4.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i, label %.invoke, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !1292
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ut, i64 %i.ul
  store i32 %i.ua, ptr %i.uu, align 4, !tbaa !3
  %i.uv = load i32, ptr %i.ty, align 8, !tbaa !1121
  %i.uw = load ptr, ptr %i.tx, align 8, !tbaa !78
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 144
  %i.uy = load ptr, ptr %i.ux, align 8
  invoke void %i.uy(ptr noundef nonnull align 8 dereferenceable(94) %i.tx, i32 noundef %i.uv, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit unwind label %bb.be, !inline_history !46856

bb.be:                                            ; preds = %.invoke, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i
  %i.uz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.va = load ptr, ptr %9, align 8, !tbaa !1533
  %.not.i134 = icmp eq ptr %i.va, null
  br i1 %.not.i134, label %_ZN8facebook5velox6StatusD2Ev.exit135, label %bb.bf, !prof !721

bb.bf:                                            ; preds = %bb.be
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit135

_ZN8facebook5velox6StatusD2Ev.exit135:            ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i
  %i.vb = load i32, ptr %i.tz, align 8, !tbaa !46780
  %i.vc = load i32, ptr %i.ug, align 4, !tbaa !46781
  %i.vd = add nsw i32 %i.vc, %i.vb
  store i32 %i.vd, ptr %i.ug, align 4, !tbaa !46781
  store i32 0, ptr %i.tz, align 8, !tbaa !46780
  %i.ve = load ptr, ptr %9, align 8, !tbaa !1533
  %.not.i136 = icmp eq ptr %i.ve, null
  br i1 %.not.i136, label %_ZN8facebook5velox6StatusD2Ev.exit137, label %bb.bg, !prof !721

bb.bg:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit137

_ZN8facebook5velox6StatusD2Ev.exit137:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES9_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

.loopexit286:                                     ; preds = %bb.am, %exp2.i.i.i.noexc, %.noexc95, %bb.an, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.t
  %lpad.loopexit287 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ao, %.noexc25, %.noexc22
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEnEESB_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
  br i1 %.not2.i.i, label %bb.aq, label %.noexc124

bb.aq:                                            ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i
  %i.ou = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIiE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.nz)
          to label %.noexc124 unwind label %.loopexit689 ; 0 uses

.noexc124:                                        ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i, %bb.aq
  %i.ov = sext i32 %i.nv to i64                   ; 2 uses
  %i.ow = getelementptr inbounds [16 x i8], ptr %i.ny, i64 %i.ov
  %i.ox = load ptr, ptr %i.en, align 8, !tbaa !46802, !noalias !46949
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !3515, !noalias !46949
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.ov
  store i128 %.0.copyload.i.i.i.i.i152, ptr %i.ow, align 16, !tbaa !4279, !noalias !46931
  %i.pb = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.pc = load i32, ptr %i.pb, align 16, !tbaa !46837, !noalias !46931
  store i32 %i.pc, ptr %i.pa, align 4, !tbaa !3, !noalias !46931
  %i.pd = load i64, ptr %i.ei, align 8, !tbaa !1619, !noalias !46931 ; 3 uses
  %i.pe = icmp ugt i64 %i.pd, 255
  call void @llvm.assume(i1 %i.pe)
  %i.pf = load ptr, ptr %i.ct, align 8, !tbaa !46822 ; 3 uses
  %i.pg = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.mv ; 2 uses
  %i.ph = load i128, ptr %i.pg, align 16, !tbaa !4279
  %i.pi = trunc i128 %i.ph to i64                 ; 2 uses
  %i.pj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.pi) ; 3 uses
  %i.pk = lshr i64 %i.pj, 24
  %i.pl = or i64 %i.pk, 128                       ; 2 uses
  %i.pm = add i64 %i.pj, %i.pi                    ; 2 uses
  %i.pn = shl nuw nsw i64 %i.pl, 1
  %i.po = or disjoint i64 %i.pn, 1
  %i.pp = trunc nuw i64 %i.pl to i8
  %i.pq = insertelement <16 x i8> poison, i8 %i.pp, i64 0
  %i.pr = shufflevector <16 x i8> %i.pq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ps = and i64 %i.pd, 255
  %i.pt = load ptr, ptr %i.cu, align 8, !tbaa !46769, !noalias !46931
  br label %.noexc127

.noexc127:                                        ; preds = %.noexc129, %.noexc124
  %.0.i.i93 = phi i64 [ %i.pm, %.noexc124 ], [ %i.qk, %.noexc129 ] ; 2 uses
  %i.pu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i93, i64 range(i64 0, 256) %i.ps)
  %i.pv = getelementptr inbounds nuw [64 x i8], ptr %i.pt, i64 %i.pu ; 3 uses
  %i.pw = load <16 x i8>, ptr %i.pv, align 16
  %i.px = icmp eq <16 x i8> %i.pw, %i.pr
  %i.py = bitcast <16 x i1> %i.px to i16
  %i.pz = and i16 %i.py, 4095
  %i.qa = zext nneg i16 %i.pz to i32
  %i.qb = icmp ne ptr %i.pv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  br label %.critedge.i.i95

.critedge.i.i95:                                  ; preds = %.noexc128, %.noexc127
  %.sroa.0526.0 = phi i32 [ %i.qa, %.noexc127 ], [ %i.qf, %.noexc128 ] ; 4 uses
  %.not688 = icmp eq i32 %.sroa.0526.0, 0
  br i1 %.not688, label %.noexc129, label %.noexc128

.noexc128:                                        ; preds = %.critedge.i.i95
  %i.qd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0526.0, i1 true)
  %i.qe = add nsw i32 %.sroa.0526.0, -1
  %i.qf = and i32 %i.qe, %.sroa.0526.0
  %i.qg = zext nneg i32 %i.qd to i64              ; 4 uses
  call void @llvm.assume(i1 %i.qb), !noalias !46931
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3, !noalias !46931
  %i.qj = icmp eq i32 %i.mu, %i.qi
  br i1 %i.qj, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i, label %.critedge.i.i95, !prof !721, !llvm.loop !46848

.noexc129:                                        ; preds = %.critedge.i.i95
  %i.qk = add i64 %i.po, %.0.i.i93
  br label %.noexc127, !llvm.loop !46849

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i: ; preds = %.noexc128
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qg
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %i.qg, -4
  %i.qn = getelementptr inbounds i8, ptr %i.qm, i64 %.neg.i.i.i.i ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 14 ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 2, !tbaa !35483
  %.not.i20.i = icmp ult i8 %i.qp, 16             ; 2 uses
  %i.qq = lshr i64 %i.pj, 23
  %i.qr = or i64 %i.qq, 257
  %.sroa.5.0.i.i = select i1 %.not.i20.i, i64 1, i64 %i.qr
  %.sroa.04.0.i.i = select i1 %.not.i20.i, i64 0, i64 %i.pm ; 2 uses
  %i.qs = add i64 %i.pd, -256
  store i64 %i.qs, ptr %i.ei, align 8, !tbaa !1619
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qg ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !13
  %.not.i.i.i.i.i = icmp sgt i8 %i.qu, -1
  br i1 %.not.i.i.i.i.i, label %bb.ar, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i

bb.ar:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i
  store i8 0, ptr %i.qt, align 1, !tbaa !13
  %i.qv = load i8, ptr %i.qo, align 2, !tbaa !35483
  %.not.i.i.i.i167 = icmp ult i8 %i.qv, 16
  %.pre.i168 = load i64, ptr %i.ei, align 8, !tbaa !1619 ; 3 uses
  br i1 %.not.i.i.i.i167, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i
  %i.qw = load ptr, ptr %i.cu, align 8, !tbaa !46769 ; 4 uses
  %i.qx = and i64 %.pre.i168, 255                 ; 2 uses
  %i.qy = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i.i, i64 range(i64 0, 256) %i.qx) ; 3 uses
  %i.qz = getelementptr inbounds nuw [64 x i8], ptr %i.qw, i64 %i.qy
  %i.ra = icmp eq ptr %i.qz, %i.qn
  br i1 %i.ra, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.au, %bb.as
  %.011.lcssa.i.i.i.i = phi i8 [ 0, %bb.as ], [ -16, %bb.au ]
  %i.rb = phi i64 [ %i.qy, %bb.as ], [ %i.rm, %bb.au ]
  %i.rc = getelementptr inbounds nuw [64 x i8], ptr %i.qw, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 14 ; 2 uses
  %i.re = load i8, ptr %i.rd, align 2, !tbaa !35483
  %i.rf = add i8 %i.re, %.011.lcssa.i.i.i.i
  store i8 %i.rf, ptr %i.rd, align 2, !tbaa !35483
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.as, %bb.au
  %i.rg = phi i64 [ %i.rm, %bb.au ], [ %i.qy, %bb.as ]
  %.01026.i.i.i.i = phi i64 [ %i.rl, %bb.au ], [ %.sroa.04.0.i.i, %bb.as ]
  %i.rh = getelementptr inbounds nuw [64 x i8], ptr %i.qw, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 15 ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq i8 %i.rj, -2
  br i1 %.not.i17.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %i.rk = add i8 %i.rj, -1
  store i8 %i.rk, ptr %i.ri, align 1, !tbaa !35479
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.i.i.i
  %i.rl = add i64 %.01026.i.i.i.i, %.sroa.5.0.i.i ; 2 uses
  %i.rm = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.rl, i64 range(i64 0, 256) %i.qx) ; 3 uses
  %i.rn = getelementptr inbounds nuw [64 x i8], ptr %i.qw, i64 %i.rm
  %i.ro = icmp eq ptr %i.rn, %i.qn
  br i1 %i.ro, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i: ; preds = %.thread.i.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i
  %i.rp = lshr i64 %.pre.i168, 8                  ; 5 uses
  %.not.i169 = icmp eq i64 %i.rp, %i.mv
  br i1 %.not.i169, label %_ZN5folly3f146detail16F14VectorMapImplIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEESaISt4pairIKniEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPS9_EENSI_IPKS9_EEOT_.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = icmp ne i64 %i.rp, 0
  call void @llvm.assume(i1 %i.rr)
  %i.rs = load ptr, ptr %i.ct, align 8, !tbaa !46822
  %i.rt = and i64 %i.rp, 4294967295
  %i.ru = getelementptr inbounds nuw [32 x i8], ptr %i.rs, i64 %i.rt
  %i.rv = load i128, ptr %i.ru, align 16, !tbaa !4279
  %i.rw = trunc i128 %i.rv to i64                 ; 2 uses
  %i.rx = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.rw) ; 2 uses
  %i.ry = lshr i64 %i.rx, 24
  %i.rz = or i64 %i.ry, 128                       ; 2 uses
  %i.sa = add i64 %i.rx, %i.rw
  %i.sb = shl nuw nsw i64 %i.rz, 1
  %i.sc = or disjoint i64 %i.sb, 1
  %i.sd = trunc nuw i64 %i.rz to i8
  %i.se = insertelement <16 x i8> poison, i8 %i.sd, i64 0
  %i.sf = shufflevector <16 x i8> %i.se, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.sg = and i64 %.pre.i168, 255
  %i.sh = load ptr, ptr %i.cu, align 8, !tbaa !46769
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %.0.i.i171 = phi i64 [ %i.sa, %bb.av ], [ %i.sy, %bb.ay ] ; 2 uses
  %i.si = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i171, i64 range(i64 0, 256) %i.sg)
  %i.sj = getelementptr inbounds nuw [64 x i8], ptr %i.sh, i64 %i.si ; 3 uses
  %i.sk = load <16 x i8>, ptr %i.sj, align 16
  %i.sl = icmp eq <16 x i8> %i.sk, %i.sf
  %i.sm = bitcast <16 x i1> %i.sl to i16
  %i.sn = and i16 %i.sm, 4095
  %i.so = zext nneg i16 %i.sn to i32
  %i.sp = icmp ne ptr %i.sj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  br label %.critedge.i.i173

.critedge.i.i173:                                 ; preds = %bb.ax, %bb.aw
  %.sroa.025.0.i = phi i32 [ %i.so, %bb.aw ], [ %i.st, %bb.ax ] ; 4 uses
  %.not46.i = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not46.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i.i173
  %i.sr = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0.i, i1 true)
  %i.ss = add nsw i32 %.sroa.025.0.i, -1
  %i.st = and i32 %i.ss, %.sroa.025.0.i
  %i.su = zext nneg i32 %i.sr to i64              ; 2 uses
  call void @llvm.assume(i1 %i.sp)
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !3
  %i.sx = icmp eq i32 %i.sw, %i.rq
  br i1 %i.sx, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i174, label %.critedge.i.i173, !prof !721, !llvm.loop !46848

bb.ay:                                            ; preds = %.critedge.i.i173
  %i.sy = add i64 %i.sc, %.0.i.i171
  br label %bb.aw, !llvm.loop !46849

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i174: ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pf) ]
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.su
  store i32 %i.mu, ptr %i.sz, align 4, !tbaa !3
  %i.ta = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.rp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.pg, ptr noundef nonnull align 1 dereferenceable(32) %i.ta, i64 32, i1 false)
  br label %_ZN5folly3f146detail16F14VectorMapImplIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEESaISt4pairIKniEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPS9_EENSI_IPKS9_EEOT_.exit.i

_ZN5folly3f146detail16F14VectorMapImplIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEESaISt4pairIKniEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPS9_EENSI_IPKS9_EEOT_.exit.i: ; preds = %bb.al, %.noexc118, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i174, %.noexc112
  %i.tb = load i32, ptr %11, align 8, !tbaa !31474, !noalias !46952
  %i.tc = load i32, ptr %i.bh, align 8, !tbaa !31474
  %i.td = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.te = sext i32 %i.tb to i64
  %sext.i177 = sext i32 %i.tc to i64              ; 2 uses
  %indvars.iv.next.i179970 = add nsw i64 %i.te, 1 ; 3 uses
  %i.tf = trunc nsw i64 %indvars.iv.next.i179970 to i32 ; 3 uses
  store i32 %i.tf, ptr %11, align 8, !tbaa !31474, !noalias !797
  %i.tg = icmp eq i64 %indvars.iv.next.i179970, %sext.i177
  br i1 %i.tg, label %.noexc133, label %.lr.ph972.preheader

.lr.ph972.preheader:                              ; preds = %_ZN5folly3f146detail16F14VectorMapImplIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEESaISt4pairIKniEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPS9_EENSI_IPKS9_EEOT_.exit.i
  %i.th = load ptr, ptr %i.td, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 5 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.tj, null
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 58
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 57
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 59
  %i.tn = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  br label %.lr.ph972

bb.az:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182
  %indvars.iv.next.i179 = add nsw i64 %indvars.iv.next.i179971, 1 ; 3 uses
  %i.to = trunc nsw i64 %indvars.iv.next.i179 to i32 ; 3 uses
  store i32 %i.to, ptr %11, align 8, !tbaa !31474, !noalias !797
  %i.tp = icmp eq i64 %indvars.iv.next.i179, %sext.i177
  br i1 %i.tp, label %.noexc133, label %.lr.ph972, !llvm.loop !31484

.lr.ph972:                                        ; preds = %.lr.ph972.preheader, %bb.az
  %i.tq = phi i32 [ %i.to, %bb.az ], [ %i.tf, %.lr.ph972.preheader ] ; 2 uses
  %indvars.iv.next.i179971 = phi i64 [ %indvars.iv.next.i179, %bb.az ], [ %indvars.iv.next.i179970, %.lr.ph972.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i180, label %.noexc133, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph972
  %i.tr = load i8, ptr %i.tk, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ts = trunc nuw i8 %i.tr to i1
  %i.tt = load i8, ptr %i.tl, align 1, !range !796
  %i.tu = trunc nuw i8 %i.tt to i1
  %or.cond.i.i.i.i181 = select i1 %i.ts, i1 true, i1 %i.tu
  br i1 %or.cond.i.i.i.i181, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.tv = lshr i64 %indvars.iv.next.i179971, 6
  %i.tw = and i64 %i.tv, 67108863
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.tw
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !855
  %i.tz = and i64 %indvars.iv.next.i179971, 63
  %i.ua = shl nuw i64 1, %i.tz
  %i.ub = and i64 %i.ty, %i.ua
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182

bb.bc:                                            ; preds = %bb.ba
  %i.uc = load i8, ptr %i.tm, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ue = load i64, ptr %i.tj, align 8, !tbaa !855
  %i.uf = and i64 %i.ue, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182

bb.be:                                            ; preds = %bb.bc
  %i.ug = load ptr, ptr %i.tn, align 8, !tbaa !1529
  %i.uh = shl nsw i64 %indvars.iv.next.i179971, 2
  %i.ui = getelementptr inbounds i8, ptr %i.ug, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !3
  %i.uk = zext i32 %i.uj to i64                   ; 2 uses
  %i.ul = lshr i64 %i.uk, 6
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8, !tbaa !855
  %i.uo = and i64 %i.uk, 63
  %i.up = shl nuw i64 1, %i.uo
  %i.uq = and i64 %i.up, %i.un
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182: ; preds = %bb.be, %bb.bd, %bb.bb
  %.0.i.i.i.in.i183 = phi i64 [ %i.ub, %bb.bb ], [ %i.uf, %bb.bd ], [ %i.uq, %bb.be ]
  %.0.i.i.i.not.i184 = icmp eq i64 %.0.i.i.i.in.i183, 0
  br i1 %.0.i.i.i.not.i184, label %bb.az, label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182..noexc133_crit_edge, !llvm.loop !31484

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182..noexc133_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182
  br label %.noexc133, !llvm.loop !31484

.noexc133:                                        ; preds = %bb.az, %.lr.ph972, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182..noexc133_crit_edge, %_ZN5folly3f146detail16F14VectorMapImplIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEESaISt4pairIKniEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPS9_EENSI_IPKS9_EEOT_.exit.i
  %.lcssa958 = phi i32 [ %i.tq, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i182..noexc133_crit_edge ], [ %i.tf, %_ZN5folly3f146detail16F14VectorMapImplIniNS_23HeterogeneousAccessHashInvEENS_26HeterogeneousAccessEqualToInvEESaISt4pairIKniEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPS9_EENSI_IPKS9_EEOT_.exit.i ], [ %i.to, %bb.az ], [ %i.tq, %.lr.ph972 ] ; 2 uses
  %i.ur = icmp eq i32 %i.eb, %.lcssa958
  br i1 %i.ur, label %._crit_edge770, label %bb.ah

._crit_edge770:                                   ; preds = %.noexc133, %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33, !noalias !46931
  store ptr null, ptr %12, align 8, !tbaa !1533, !alias.scope !46955
  %i.us = load ptr, ptr %i.bk, align 8, !tbaa !46807, !nonnull !797, !align !916 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 80
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !46785 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 24 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 72 ; 3 uses
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !46789
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 96
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !1286 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 44
  %i.vb = load i8, ptr %i.va, align 4, !tbaa !1287
  %i.vc = and i8 %i.vb, 2
  %.not.i.i.i.i192 = icmp eq i8 %i.vc, 0
  br i1 %.not.i.i.i.i192, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, label %.invoke, !prof !721

.invoke:                                          ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, %._crit_edge770
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont unwind label %bb.bf

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i: ; preds = %._crit_edge770
  %i.vd = getelementptr inbounds nuw i8, ptr %i.us, i64 76 ; 3 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !46790
  %i.vf = load i32, ptr %i.uv, align 8, !tbaa !1121
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !1292
  %i.vi = sext i32 %i.vf to i64                   ; 2 uses
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.vi
  store i32 %i.ve, ptr %i.vj, align 4, !tbaa !3
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uu, i64 112
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !1286 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 44
  %i.vn = load i8, ptr %i.vm, align 4, !tbaa !1287
  %i.vo = and i8 %i.vn, 2
  %.not.i4.i.i.i = icmp eq i8 %i.vo, 0
  br i1 %.not.i4.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i, label %.invoke, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !1292
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %i.vi
  store i32 %i.ux, ptr %i.vr, align 4, !tbaa !3
  %i.vs = load i32, ptr %i.uv, align 8, !tbaa !1121
  %i.vt = load ptr, ptr %i.uu, align 8, !tbaa !78
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 144
  %i.vv = load ptr, ptr %i.vu, align 8
  invoke void %i.vv(ptr noundef nonnull align 8 dereferenceable(94) %i.uu, i32 noundef %i.vs, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clImEEDaSQ_.exit unwind label %bb.bf, !inline_history !46856

bb.bf:                                            ; preds = %.invoke, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i
  %i.vw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.vx = load ptr, ptr %12, align 8, !tbaa !1533
  %.not.i198 = icmp eq ptr %i.vx, null
  br i1 %.not.i198, label %_ZN8facebook5velox6StatusD2Ev.exit199, label %bb.bg, !prof !721

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  br label %_ZN8facebook5velox6StatusD2Ev.exit199

_ZN8facebook5velox6StatusD2Ev.exit199:            ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.body82

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clImEEDaSQ_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i
  %i.vy = load i32, ptr %i.uw, align 8, !tbaa !46780
  %i.vz = load i32, ptr %i.vd, align 4, !tbaa !46781
  %i.wa = add nsw i32 %i.vz, %i.vy
  store i32 %i.wa, ptr %i.vd, align 4, !tbaa !46781
  store i32 0, ptr %i.uw, align 8, !tbaa !46780
  %i.wb = load ptr, ptr %12, align 8, !tbaa !1533
  %.not.i200 = icmp eq ptr %i.wb, null
  br i1 %.not.i200, label %_ZN8facebook5velox6StatusD2Ev.exit201, label %bb.bh, !prof !721

bb.bh:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clImEEDaSQ_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  br label %_ZN8facebook5velox6StatusD2Ev.exit201

_ZN8facebook5velox6StatusD2Ev.exit201:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clImEEDaSQ_.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES9_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clImEEDaSS_.exit

.loopexit689:                                     ; preds = %bb.an, %exp2.i.i.i.noexc, %.noexc158, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body82

.loopexit.split-lp.loopexit:                      ; preds = %bb.u
  %lpad.loopexit690 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body82

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ap, %.noexc106, %.noexc103
  %lpad.loopexit.split-lp691 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body82

end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecEnEESB_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSH_EEEE8applyUdfIZNKSK_7iterateIJNS3_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSL_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
  br i1 %.not2.i.i287, label %bb.dm, label %.noexc56

bb.dm:                                            ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i286
  %i.alx = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIiE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.alc)
          to label %.noexc56 unwind label %.loopexit700 ; 0 uses

.noexc56:                                         ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i286, %bb.dm
  %i.aly = sext i32 %i.aky to i64                 ; 2 uses
  %i.alz = getelementptr inbounds [16 x i8], ptr %i.alb, i64 %i.aly
  %i.ama = load ptr, ptr %i.abq, align 8, !tbaa !46802, !noalias !46980
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 24
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !3515, !noalias !46980
  %i.amd = getelementptr inbounds [4 x i8], ptr %i.amc, i64 %i.aly
  store i128 %.0.copyload.i.i.i.i.i273, ptr %i.alz, align 16, !tbaa !4279
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.amf = load i32, ptr %i.ame, align 16, !tbaa !46837
  store i32 %i.amf, ptr %i.amd, align 4, !tbaa !3
  %i.amg = load i64, ptr %i.abl, align 8, !tbaa !1619 ; 3 uses
  %i.amh = icmp ugt i64 %i.amg, 255
  call void @llvm.assume(i1 %i.amh)
  %i.ami = load ptr, ptr %i.zw, align 8, !tbaa !46822 ; 3 uses
  %i.amj = getelementptr inbounds nuw [32 x i8], ptr %i.ami, i64 %i.ajy ; 2 uses
  %i.amk = load i128, ptr %i.amj, align 16, !tbaa !4279
  %i.aml = trunc i128 %i.amk to i64               ; 2 uses
  %i.amm = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.aml) ; 3 uses
  %i.amn = lshr i64 %i.amm, 24
  %i.amo = or i64 %i.amn, 128                     ; 2 uses
  %i.amp = add i64 %i.amm, %i.aml                 ; 2 uses
  %i.amq = shl nuw nsw i64 %i.amo, 1
  %i.amr = or disjoint i64 %i.amq, 1
  %i.ams = trunc nuw i64 %i.amo to i8
  %i.amt = insertelement <16 x i8> poison, i8 %i.ams, i64 0
  %i.amu = shufflevector <16 x i8> %i.amt, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.amv = and i64 %i.amg, 255
  %i.amw = load ptr, ptr %i.zx, align 8, !tbaa !46769
  br label %.noexc74

.noexc74:                                         ; preds = %.noexc76, %.noexc56
  %.0.i = phi i64 [ %i.amp, %.noexc56 ], [ %i.ann, %.noexc76 ] ; 2 uses
  %i.amx = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.amv)
  %i.amy = getelementptr inbounds nuw [64 x i8], ptr %i.amw, i64 %i.amx ; 3 uses
  %i.amz = load <16 x i8>, ptr %i.amy, align 16
  %i.ana = icmp eq <16 x i8> %i.amz, %i.amu
  %i.anb = bitcast <16 x i1> %i.ana to i16
  %i.anc = and i16 %i.anb, 4095
  %i.and = zext nneg i16 %i.anc to i32
  %i.ane = icmp ne ptr %i.amy, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amy, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc75, %.noexc74
  %.sroa.0465.0 = phi i32 [ %i.and, %.noexc74 ], [ %i.ani, %.noexc75 ] ; 4 uses
  %.not686 = icmp eq i32 %.sroa.0465.0, 0
  br i1 %.not686, label %.noexc76, label %.noexc75

.noexc75:                                         ; preds = %.critedge.i
  %i.ang = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0465.0, i1 true)
  %i.anh = add nsw i32 %.sroa.0465.0, -1
  %i.ani = and i32 %i.anh, %.sroa.0465.0
  %i.anj = zext nneg i32 %i.ang to i64            ; 4 uses
  call void @llvm.assume(i1 %i.ane)
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %i.anj
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !3
  %i.anm = icmp eq i32 %i.ajx, %i.anl
  br i1 %i.anm, label %.noexc67, label %.critedge.i, !prof !721, !llvm.loop !46848

.noexc76:                                         ; preds = %.critedge.i
  %i.ann = add i64 %i.amr, %.0.i
  br label %.noexc74, !llvm.loop !46849

.noexc67:                                         ; preds = %.noexc75
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.anf, i64 %i.anj
  %i.anp = getelementptr inbounds i8, ptr %i.ano, i64 -16
  %.neg.i.i.i.i301 = mul nsw i64 %i.anj, -4
  %i.anq = getelementptr inbounds i8, ptr %i.anp, i64 %.neg.i.i.i.i301 ; 4 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 14 ; 2 uses
  %i.ans = load i8, ptr %i.anr, align 2, !tbaa !35483
  %.not.i20.i302 = icmp ult i8 %i.ans, 16         ; 2 uses
  %i.ant = lshr i64 %i.amm, 23
  %i.anu = or i64 %i.ant, 257
  %.sroa.5.0.i.i303 = select i1 %.not.i20.i302, i64 1, i64 %i.anu
  %.sroa.04.0.i.i304 = select i1 %.not.i20.i302, i64 0, i64 %i.amp ; 2 uses
  %i.anv = add i64 %i.amg, -256
  store i64 %i.anv, ptr %i.abl, align 8, !tbaa !1619
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anq, i64 %i.anj ; 2 uses
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !13
  %.not.i.i.i.i.i305 = icmp sgt i8 %i.anx, -1
  br i1 %.not.i.i.i.i.i305, label %bb.dn, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i306

bb.dn:                                            ; preds = %.noexc67
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i306: ; preds = %.noexc67
  store i8 0, ptr %i.anw, align 1, !tbaa !13
  %i.any = load i8, ptr %i.anr, align 2, !tbaa !35483
  %.not.i.i.i.i307 = icmp ult i8 %i.any, 16
  %.pre.i308 = load i64, ptr %i.abl, align 8, !tbaa !1619 ; 3 uses
  br i1 %.not.i.i.i.i307, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i314, label %bb.do

bb.do:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i306
  %i.anz = load ptr, ptr %i.zx, align 8, !tbaa !46769 ; 4 uses
  %i.aoa = and i64 %.pre.i308, 255                ; 2 uses
  %i.aob = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i.i304, i64 range(i64 0, 256) %i.aoa) ; 3 uses
  %i.aoc = getelementptr inbounds nuw [64 x i8], ptr %i.anz, i64 %i.aob
  %i.aod = icmp eq ptr %i.aoc, %i.anq
  br i1 %i.aod, label %.thread.i.i.i.i312, label %.lr.ph.i.i.i.i309

.thread.i.i.i.i312:                               ; preds = %bb.dq, %bb.do
  %.011.lcssa.i.i.i.i313 = phi i8 [ 0, %bb.do ], [ -16, %bb.dq ]
  %i.aoe = phi i64 [ %i.aob, %bb.do ], [ %i.aop, %bb.dq ]
  %i.aof = getelementptr inbounds nuw [64 x i8], ptr %i.anz, i64 %i.aoe
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 14 ; 2 uses
  %i.aoh = load i8, ptr %i.aog, align 2, !tbaa !35483
  %i.aoi = add i8 %i.aoh, %.011.lcssa.i.i.i.i313
  store i8 %i.aoi, ptr %i.aog, align 2, !tbaa !35483
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i314

.lr.ph.i.i.i.i309:                                ; preds = %bb.do, %bb.dq
  %i.aoj = phi i64 [ %i.aop, %bb.dq ], [ %i.aob, %bb.do ]
  %.01026.i.i.i.i310 = phi i64 [ %i.aoo, %bb.dq ], [ %.sroa.04.0.i.i304, %bb.do ]
  %i.aok = getelementptr inbounds nuw [64 x i8], ptr %i.anz, i64 %i.aoj
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 15 ; 2 uses
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i.i311 = icmp eq i8 %i.aom, -2
  br i1 %.not.i17.i.i.i.i311, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i.i.i309
  %i.aon = add i8 %i.aom, -1
  store i8 %i.aon, ptr %i.aol, align 1, !tbaa !35479
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.lr.ph.i.i.i.i309
  %i.aoo = add i64 %.01026.i.i.i.i310, %.sroa.5.0.i.i303 ; 2 uses
  %i.aop = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.aoo, i64 range(i64 0, 256) %i.aoa) ; 3 uses
  %i.aoq = getelementptr inbounds nuw [64 x i8], ptr %i.anz, i64 %i.aop
  %i.aor = icmp eq ptr %i.aoq, %i.anq
  br i1 %i.aor, label %.thread.i.i.i.i312, label %.lr.ph.i.i.i.i309

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i314: ; preds = %.thread.i.i.i.i312, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i306
  %i.aos = lshr i64 %.pre.i308, 8                 ; 5 uses
  %.not.i315 = icmp eq i64 %i.aos, %i.ajy
  br i1 %.not.i315, label %.noexc42, label %bb.dr

bb.dr:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i314
  %i.aot = trunc i64 %i.aos to i32
  %i.aou = icmp ne i64 %i.aos, 0
  call void @llvm.assume(i1 %i.aou)
  %i.aov = load ptr, ptr %i.zw, align 8, !tbaa !46822
  %i.aow = and i64 %i.aos, 4294967295
  %i.aox = getelementptr inbounds nuw [32 x i8], ptr %i.aov, i64 %i.aow
  %i.aoy = load i128, ptr %i.aox, align 16, !tbaa !4279
  %i.aoz = trunc i128 %i.aoy to i64               ; 2 uses
  %i.apa = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.aoz) ; 2 uses
  %i.apb = lshr i64 %i.apa, 24
  %i.apc = or i64 %i.apb, 128                     ; 2 uses
  %i.apd = add i64 %i.apa, %i.aoz
  %i.ape = shl nuw nsw i64 %i.apc, 1
  %i.apf = or disjoint i64 %i.ape, 1
  %i.apg = trunc nuw i64 %i.apc to i8
  %i.aph = insertelement <16 x i8> poison, i8 %i.apg, i64 0
  %i.api = shufflevector <16 x i8> %i.aph, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.apj = and i64 %.pre.i308, 255
  %i.apk = load ptr, ptr %i.zx, align 8, !tbaa !46769
  br label %bb.ds

bb.ds:                                            ; preds = %bb.du, %bb.dr
  %.0.i.i317 = phi i64 [ %i.apd, %bb.dr ], [ %i.aqb, %bb.du ] ; 2 uses
  %i.apl = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i317, i64 range(i64 0, 256) %i.apj)
  %i.apm = getelementptr inbounds nuw [64 x i8], ptr %i.apk, i64 %i.apl ; 3 uses
  %i.apn = load <16 x i8>, ptr %i.apm, align 16
  %i.apo = icmp eq <16 x i8> %i.apn, %i.api
  %i.app = bitcast <16 x i1> %i.apo to i16
  %i.apq = and i16 %i.app, 4095
  %i.apr = zext nneg i16 %i.apq to i32
  %i.aps = icmp ne ptr %i.apm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apm, i64 16 ; 2 uses
  br label %.critedge.i.i319

.critedge.i.i319:                                 ; preds = %bb.dt, %bb.ds
  %.sroa.025.0.i320 = phi i32 [ %i.apr, %bb.ds ], [ %i.apw, %bb.dt ] ; 4 uses
  %.not46.i321 = icmp eq i32 %.sroa.025.0.i320, 0
  br i1 %.not46.i321, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.critedge.i.i319
  %i.apu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0.i320, i1 true)
  %i.apv = add nsw i32 %.sroa.025.0.i320, -1
  %i.apw = and i32 %i.apv, %.sroa.025.0.i320
  %i.apx = zext nneg i32 %i.apu to i64            ; 2 uses
  call void @llvm.assume(i1 %i.aps)
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %i.apx
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !3
  %i.aqa = icmp eq i32 %i.apz, %i.aot
  br i1 %i.aqa, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i322, label %.critedge.i.i319, !prof !721, !llvm.loop !46848

bb.du:                                            ; preds = %.critedge.i.i319
  %i.aqb = add i64 %i.apf, %.0.i.i317
  br label %bb.ds, !llvm.loop !46849

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i322: ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ami) ]
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %i.apx
  store i32 %i.ajx, ptr %i.aqc, align 4, !tbaa !3
  %i.aqd = getelementptr inbounds nuw [32 x i8], ptr %i.ami, i64 %i.aos
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.amj, ptr noundef nonnull align 1 dereferenceable(32) %i.aqd, i64 32, i1 false)
  br label %.noexc42

.noexc42:                                         ; preds = %bb.dh, %.noexc52, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapIS6_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKniEE_EEvSJ_SL_.exit.i314, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyInivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NS7_8PrefetchE.exit.i322, %.noexc37
  %i.aqe = load i32, ptr %16, align 8, !tbaa !31474, !noalias !46983
  %i.aqf = load i32, ptr %i.ag, align 8, !tbaa !31474
  %i.aqg = load ptr, ptr %i.af, align 8           ; 2 uses
  %i.aqh = sext i32 %i.aqe to i64
  %sext.i326 = sext i32 %i.aqf to i64             ; 2 uses
  %indvars.iv.next.i328984 = add nsw i64 %i.aqh, 1 ; 3 uses
  %i.aqi = trunc nsw i64 %indvars.iv.next.i328984 to i32 ; 3 uses
  store i32 %i.aqi, ptr %16, align 8, !tbaa !31474, !noalias !797
  %i.aqj = icmp eq i64 %indvars.iv.next.i328984, %sext.i326
  br i1 %i.aqj, label %.noexc43, label %.lr.ph986.preheader

.lr.ph986.preheader:                              ; preds = %.noexc42
  %i.aqk = load ptr, ptr %i.aqg, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 5 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 24
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i329 = icmp eq ptr %i.aqm, null
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 58
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqk, i64 57
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqk, i64 59
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  br label %.lr.ph986

bb.dv:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331
  %indvars.iv.next.i328 = add nsw i64 %indvars.iv.next.i328985, 1 ; 3 uses
  %i.aqr = trunc nsw i64 %indvars.iv.next.i328 to i32 ; 3 uses
  store i32 %i.aqr, ptr %16, align 8, !tbaa !31474, !noalias !797
  %i.aqs = icmp eq i64 %indvars.iv.next.i328, %sext.i326
  br i1 %i.aqs, label %.noexc43, label %.lr.ph986, !llvm.loop !31484

.lr.ph986:                                        ; preds = %.lr.ph986.preheader, %bb.dv
  %i.aqt = phi i32 [ %i.aqr, %bb.dv ], [ %i.aqi, %.lr.ph986.preheader ] ; 2 uses
  %indvars.iv.next.i328985 = phi i64 [ %indvars.iv.next.i328, %bb.dv ], [ %indvars.iv.next.i328984, %.lr.ph986.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i329, label %.noexc43, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph986
  %i.aqu = load i8, ptr %i.aqn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aqv = trunc nuw i8 %i.aqu to i1
  %i.aqw = load i8, ptr %i.aqo, align 1, !range !796
  %i.aqx = trunc nuw i8 %i.aqw to i1
  %or.cond.i.i.i.i330 = select i1 %i.aqv, i1 true, i1 %i.aqx
  br i1 %or.cond.i.i.i.i330, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aqy = lshr i64 %indvars.iv.next.i328985, 6
  %i.aqz = and i64 %i.aqy, 67108863
  %i.ara = getelementptr inbounds nuw [8 x i8], ptr %i.aqm, i64 %i.aqz
  %i.arb = load i64, ptr %i.ara, align 8, !tbaa !855
  %i.arc = and i64 %indvars.iv.next.i328985, 63
  %i.ard = shl nuw i64 1, %i.arc
  %i.are = and i64 %i.arb, %i.ard
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331

bb.dy:                                            ; preds = %bb.dw
  %i.arf = load i8, ptr %i.aqp, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.arg = trunc nuw i8 %i.arf to i1
  br i1 %i.arg, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.arh = load i64, ptr %i.aqm, align 8, !tbaa !855
  %i.ari = and i64 %i.arh, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331

bb.ea:                                            ; preds = %bb.dy
  %i.arj = load ptr, ptr %i.aqq, align 8, !tbaa !1529
  %i.ark = shl nsw i64 %indvars.iv.next.i328985, 2
  %i.arl = getelementptr inbounds i8, ptr %i.arj, i64 %i.ark
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !3
  %i.arn = zext i32 %i.arm to i64                 ; 2 uses
  %i.aro = lshr i64 %i.arn, 6
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.aqm, i64 %i.aro
  %i.arq = load i64, ptr %i.arp, align 8, !tbaa !855
  %i.arr = and i64 %i.arn, 63
  %i.ars = shl nuw i64 1, %i.arr
  %i.art = and i64 %i.ars, %i.arq
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331: ; preds = %bb.ea, %bb.dz, %bb.dx
  %.0.i.i.i.in.i332 = phi i64 [ %i.are, %bb.dx ], [ %i.ari, %bb.dz ], [ %i.art, %bb.ea ]
  %.0.i.i.i.not.i333 = icmp eq i64 %.0.i.i.i.in.i332, 0
  br i1 %.0.i.i.i.not.i333, label %bb.dv, label %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331..noexc43_crit_edge, !llvm.loop !31484

_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331..noexc43_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331
  br label %.noexc43, !llvm.loop !31484

.noexc43:                                         ; preds = %bb.dv, %.lr.ph986, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331..noexc43_crit_edge, %.noexc42
  %.lcssa939 = phi i32 [ %i.aqt, %_ZNK8facebook5velox4exec9ArrayViewILb1EnE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i331..noexc43_crit_edge ], [ %i.aqi, %.noexc42 ], [ %i.aqr, %bb.dv ], [ %i.aqt, %.lr.ph986 ] ; 2 uses
  %i.aru = icmp eq i32 %i.abe, %.lcssa939
  br i1 %i.aru, label %._crit_edge, label %bb.dd

._crit_edge:                                      ; preds = %.noexc43, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  store ptr null, ptr %17, align 8, !tbaa !1533, !alias.scope !46986
  %i.arv = load ptr, ptr %i.yn, align 8, !tbaa !46807, !nonnull !797, !align !916 ; 4 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 80
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !46785 ; 4 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arv, i64 24 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arv, i64 72 ; 3 uses
  %i.asa = load i32, ptr %i.arz, align 8, !tbaa !46789
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arx, i64 96
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !1286 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 44
  %i.ase = load i8, ptr %i.asd, align 4, !tbaa !1287
  %i.asf = and i8 %i.ase, 2
  %.not.i.i.i.i344 = icmp eq i8 %i.asf, 0
  br i1 %.not.i.i.i.i344, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i345, label %.invoke923, !prof !721

.invoke923:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i345, %._crit_edge
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont924 unwind label %bb.eb

.cont924:                                         ; preds = %.invoke923
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i345: ; preds = %._crit_edge
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arv, i64 76 ; 3 uses
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !46790
  %i.asi = load i32, ptr %i.ary, align 8, !tbaa !1121
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asc, i64 16
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !1292
  %i.asl = sext i32 %i.asi to i64                 ; 2 uses
  %i.asm = getelementptr inbounds [4 x i8], ptr %i.ask, i64 %i.asl
  store i32 %i.ash, ptr %i.asm, align 4, !tbaa !3
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arx, i64 112
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !1286 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 44
  %i.asq = load i8, ptr %i.asp, align 4, !tbaa !1287
  %i.asr = and i8 %i.asq, 2
  %.not.i4.i.i.i346 = icmp eq i8 %i.asr, 0
  br i1 %.not.i4.i.i.i346, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i347, label %.invoke923, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i347: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i345
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aso, i64 16
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !1292
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.ast, i64 %i.asl
  store i32 %i.asa, ptr %i.asu, align 4, !tbaa !3
  %i.asv = load i32, ptr %i.ary, align 8, !tbaa !1121
  %i.asw = load ptr, ptr %i.arx, align 8, !tbaa !78
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 144
  %i.asy = load ptr, ptr %i.asx, align 8
  invoke void %i.asy(ptr noundef nonnull align 8 dereferenceable(94) %i.arx, i32 noundef %i.asv, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit unwind label %bb.eb, !inline_history !46856

bb.eb:                                            ; preds = %.invoke923, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i347
  %i.asz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ata = load ptr, ptr %17, align 8, !tbaa !1533
  %.not.i354 = icmp eq ptr %i.ata, null
  br i1 %.not.i354, label %_ZN8facebook5velox6StatusD2Ev.exit355, label %bb.ec, !prof !721

bb.ec:                                            ; preds = %bb.eb
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %_ZN8facebook5velox6StatusD2Ev.exit355

_ZN8facebook5velox6StatusD2Ev.exit355:            ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapIniEEvE6commitEv.exit.i347
  %i.atb = load i32, ptr %i.arz, align 8, !tbaa !46780
  %i.atc = load i32, ptr %i.asg, align 4, !tbaa !46781
  %i.atd = add nsw i32 %i.atc, %i.atb
  store i32 %i.atd, ptr %i.asg, align 4, !tbaa !46781
  store i32 0, ptr %i.arz, align 8, !tbaa !46780
  %i.ate = load ptr, ptr %17, align 8, !tbaa !1533
  %.not.i356 = icmp eq ptr %i.ate, null
  br i1 %.not.i356, label %_ZN8facebook5velox6StatusD2Ev.exit357, label %bb.ed, !prof !721

bb.ed:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %_ZN8facebook5velox6StatusD2Ev.exit357

_ZN8facebook5velox6StatusD2Ev.exit357:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES7_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE8applyUdfIZNKSG_7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecEnEES9_NS0_3MapIniEENS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE8applyUdfIZNKSI_7iterateIJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSJ_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

.loopexit700:                                     ; preds = %bb.dj, %exp2.i.i.i.noexc289, %.noexc291, %bb.dk, %bb.dm
  %lpad.loopexit702 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp701.loopexit:                   ; preds = %bb.cq
  %lpad.loopexit705 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp701.loopexit.split-lp:          ; preds = %bb.dl, %.noexc31, %.noexc28
  %lpad.loopexit.split-lp706 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKS1_SV_SX_EUlSV_E_EEvSV_:bb.a
  %i.py = load ptr, ptr %i.cp, align 8, !tbaa !47682 ; 3 uses
  %i.pz = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %i.nk ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i104 = load i64, ptr %i.pz, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i105 = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %.sroa.2.0.copyload.i.i.i.i106 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i105, align 8, !tbaa !855
  %i.qa = xor i64 %.sroa.2.0.copyload.i.i.i.i106, %.sroa.0.0.copyload.i.i.i.i104
  %i.qb = mul i64 %i.qa, -7070675565921424023     ; 2 uses
  %i.qc = lshr i64 %i.qb, 47
  %i.qd = xor i64 %.sroa.0.0.copyload.i.i.i.i104, %i.qc
  %i.qe = xor i64 %i.qd, %i.qb
  %i.qf = mul i64 %i.qe, -7070675565921424023     ; 2 uses
  %i.qg = lshr i64 %i.qf, 47
  %i.qh = xor i64 %i.qg, %i.qf
  %i.qi = mul i64 %i.qh, -7070675565921424023     ; 2 uses
  %i.qj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.qi) ; 3 uses
  %i.qk = lshr i64 %i.qj, 24
  %i.ql = or i64 %i.qk, 128                       ; 2 uses
  %i.qm = add i64 %i.qi, %i.qj                    ; 2 uses
  %i.qn = shl nuw nsw i64 %i.ql, 1
  %i.qo = or disjoint i64 %i.qn, 1
  %i.qp = trunc nuw i64 %i.ql to i8
  %i.qq = insertelement <16 x i8> poison, i8 %i.qp, i64 0
  %i.qr = shufflevector <16 x i8> %i.qq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qs = and i64 %i.pw, 255
  %i.qt = load ptr, ptr %i.cq, align 8, !tbaa !47629
  br label %.noexc61

.noexc61:                                         ; preds = %.noexc63, %.noexc43
  %.0.i = phi i64 [ %i.qm, %.noexc43 ], [ %i.rk, %.noexc63 ] ; 2 uses
  %i.qu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.qs)
  %i.qv = getelementptr inbounds nuw [64 x i8], ptr %i.qt, i64 %i.qu ; 3 uses
  %i.qw = load <16 x i8>, ptr %i.qv, align 16
  %i.qx = icmp eq <16 x i8> %i.qw, %i.qr
  %i.qy = bitcast <16 x i1> %i.qx to i16
  %i.qz = and i16 %i.qy, 4095
  %i.ra = zext nneg i16 %i.qz to i32
  %i.rb = icmp ne ptr %i.qv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc62, %.noexc61
  %.sroa.0212.0 = phi i32 [ %i.ra, %.noexc61 ], [ %i.rf, %.noexc62 ] ; 4 uses
  %.not294 = icmp eq i32 %.sroa.0212.0, 0
  br i1 %.not294, label %.noexc63, label %.noexc62

.noexc62:                                         ; preds = %.critedge.i
  %i.rd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0212.0, i1 true)
  %i.re = add nsw i32 %.sroa.0212.0, -1
  %i.rf = and i32 %i.re, %.sroa.0212.0
  %i.rg = zext nneg i32 %i.rd to i64              ; 4 uses
  call void @llvm.assume(i1 %i.rb)
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !3
  %i.rj = icmp eq i32 %i.nj, %i.ri
  br i1 %i.rj, label %.noexc54, label %.critedge.i, !prof !721, !llvm.loop !47707

.noexc63:                                         ; preds = %.critedge.i
  %i.rk = add i64 %i.qo, %.0.i
  br label %.noexc61, !llvm.loop !47708

.noexc54:                                         ; preds = %.noexc62
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rg
  %i.rm = getelementptr inbounds i8, ptr %i.rl, i64 -16
  %.neg.i.i.i = mul nsw i64 %i.rg, -4
  %i.rn = getelementptr inbounds i8, ptr %i.rm, i64 %.neg.i.i.i ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 14 ; 2 uses
  %i.rp = load i8, ptr %i.ro, align 2, !tbaa !35483
  %.not.i164 = icmp ult i8 %i.rp, 16              ; 2 uses
  %i.rq = lshr i64 %i.qj, 23
  %i.rr = or i64 %i.rq, 257
  %.sroa.5.0.i = select i1 %.not.i164, i64 1, i64 %i.rr
  %.sroa.04.0.i = select i1 %.not.i164, i64 0, i64 %i.qm ; 2 uses
  %i.rs = add i64 %i.pw, -256
  store i64 %i.rs, ptr %i.ee, align 8, !tbaa !1619
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rg ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !13
  %.not.i.i.i.i165 = icmp sgt i8 %i.ru, -1
  br i1 %.not.i.i.i.i165, label %bb.ax, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.ax:                                            ; preds = %.noexc54
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %.noexc54
  store i8 0, ptr %i.rt, align 1, !tbaa !13
  %i.rv = load i8, ptr %i.ro, align 2, !tbaa !35483
  %.not.i.i.i = icmp ult i8 %i.rv, 16
  %.pre357 = load i64, ptr %i.ee, align 8, !tbaa !1619 ; 3 uses
  br i1 %.not.i.i.i, label %.noexc117, label %bb.ay

bb.ay:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.rw = load ptr, ptr %i.cq, align 8, !tbaa !47629 ; 4 uses
  %i.rx = and i64 %.pre357, 255                   ; 2 uses
  %i.ry = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %i.rx) ; 3 uses
  %i.rz = getelementptr inbounds nuw [64 x i8], ptr %i.rw, i64 %i.ry
  %i.sa = icmp eq ptr %i.rz, %i.rn
  br i1 %i.sa, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ba, %bb.ay
  %.011.lcssa.i.i.i = phi i8 [ 0, %bb.ay ], [ -16, %bb.ba ]
  %i.sb = phi i64 [ %i.ry, %bb.ay ], [ %i.sm, %bb.ba ]
  %i.sc = getelementptr inbounds nuw [64 x i8], ptr %i.rw, i64 %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 14 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 2, !tbaa !35483
  %i.sf = add i8 %i.se, %.011.lcssa.i.i.i
  store i8 %i.sf, ptr %i.sd, align 2, !tbaa !35483
  br label %.noexc117

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %bb.ba
  %i.sg = phi i64 [ %i.sm, %bb.ba ], [ %i.ry, %bb.ay ]
  %.01026.i.i.i = phi i64 [ %i.sl, %bb.ba ], [ %.sroa.04.0.i, %bb.ay ]
  %i.sh = getelementptr inbounds nuw [64 x i8], ptr %i.rw, i64 %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 15 ; 2 uses
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.sj, -2
  br i1 %.not.i17.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.sk = add i8 %i.sj, -1
  store i8 %i.sk, ptr %i.si, align 1, !tbaa !35479
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i.i.i
  %i.sl = add i64 %.01026.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.sm = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sl, i64 range(i64 0, 256) %i.rx) ; 3 uses
  %i.sn = getelementptr inbounds nuw [64 x i8], ptr %i.rw, i64 %i.sm
  %i.so = icmp eq ptr %i.sn, %i.rn
  br i1 %i.so, label %.thread.i.i.i, label %.lr.ph.i.i.i

.noexc117:                                        ; preds = %.thread.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.sp = lshr i64 %.pre357, 8                    ; 5 uses
  %.not.i109 = icmp eq i64 %i.sp, %i.nk
  br i1 %.not.i109, label %.noexc29, label %bb.bb

bb.bb:                                            ; preds = %.noexc117
  %i.sq = trunc i64 %i.sp to i32
  %i.sr = icmp ne i64 %i.sp, 0
  call void @llvm.assume(i1 %i.sr)
  %i.ss = load ptr, ptr %i.cp, align 8, !tbaa !47682
  %i.st = and i64 %i.sp, 4294967295
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.ss, i64 %i.st ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i110 = load i64, ptr %i.su, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i111 = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i112 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i111, align 8, !tbaa !855
  %i.sv = xor i64 %.sroa.2.0.copyload.i.i.i.i.i112, %.sroa.0.0.copyload.i.i.i.i.i110
  %i.sw = mul i64 %i.sv, -7070675565921424023     ; 2 uses
  %i.sx = lshr i64 %i.sw, 47
  %i.sy = xor i64 %.sroa.0.0.copyload.i.i.i.i.i110, %i.sx
  %i.sz = xor i64 %i.sy, %i.sw
  %i.ta = mul i64 %i.sz, -7070675565921424023     ; 2 uses
  %i.tb = lshr i64 %i.ta, 47
  %i.tc = xor i64 %i.tb, %i.ta
  %i.td = mul i64 %i.tc, -7070675565921424023     ; 2 uses
  %i.te = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.td) ; 2 uses
  %i.tf = lshr i64 %i.te, 24
  %i.tg = or i64 %i.tf, 128                       ; 2 uses
  %i.th = add i64 %i.td, %i.te
  %i.ti = shl nuw nsw i64 %i.tg, 1
  %i.tj = or disjoint i64 %i.ti, 1
  %i.tk = trunc nuw i64 %i.tg to i8
  %i.tl = insertelement <16 x i8> poison, i8 %i.tk, i64 0
  %i.tm = shufflevector <16 x i8> %i.tl, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.tn = and i64 %.pre357, 255
  %i.to = load ptr, ptr %i.cq, align 8, !tbaa !47629
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %.0.i.i114 = phi i64 [ %i.th, %bb.bb ], [ %i.uf, %bb.be ] ; 2 uses
  %i.tp = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i114, i64 range(i64 0, 256) %i.tn)
  %i.tq = getelementptr inbounds nuw [64 x i8], ptr %i.to, i64 %i.tp ; 3 uses
  %i.tr = load <16 x i8>, ptr %i.tq, align 16
  %i.ts = icmp eq <16 x i8> %i.tr, %i.tm
  %i.tt = bitcast <16 x i1> %i.ts to i16
  %i.tu = and i16 %i.tt, 4095
  %i.tv = zext nneg i16 %i.tu to i32
  %i.tw = icmp ne ptr %i.tq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 2 uses
  br label %.critedge.i.i116

.critedge.i.i116:                                 ; preds = %bb.bd, %bb.bc
  %.sroa.024.0.i = phi i32 [ %i.tv, %bb.bc ], [ %i.ua, %bb.bd ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i.i116
  %i.ty = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %i.tz = add nsw i32 %.sroa.024.0.i, -1
  %i.ua = and i32 %i.tz, %.sroa.024.0.i
  %i.ub = zext nneg i32 %i.ty to i64              ; 2 uses
  call void @llvm.assume(i1 %i.tw)
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !3
  %i.ue = icmp eq i32 %i.ud, %i.sq
  br i1 %i.ue, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, label %.critedge.i.i116, !prof !721, !llvm.loop !47707

bb.be:                                            ; preds = %.critedge.i.i116
  %i.uf = add i64 %i.tj, %.0.i.i114
  br label %bb.bc, !llvm.loop !47708

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i: ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.py) ]
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ub
  store i32 %i.nj, ptr %i.ug, align 4, !tbaa !3
  %i.uh = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %i.sp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pz, ptr noundef nonnull align 1 dereferenceable(24) %i.uh, i64 24, i1 false)
  br label %.noexc29

.noexc29:                                         ; preds = %bb.ar, %.noexc39, %.noexc117, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, %.noexc24
  %i.ui = load i32, ptr %7, align 8, !tbaa !32103, !noalias !47709
  %i.uj = load i32, ptr %i.bc, align 8, !tbaa !32103
  %i.uk = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.ul = sext i32 %i.ui to i64
  %sext.i120 = sext i32 %i.uj to i64              ; 2 uses
  %indvars.iv.next.i122433 = add nsw i64 %i.ul, 1 ; 3 uses
  %i.um = trunc nsw i64 %indvars.iv.next.i122433 to i32 ; 3 uses
  store i32 %i.um, ptr %7, align 8, !tbaa !32103, !noalias !797
  %i.un = icmp eq i64 %indvars.iv.next.i122433, %sext.i120
  br i1 %i.un, label %.noexc30, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %.noexc29
  %i.uo = load ptr, ptr %i.uk, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 5 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.uq, null
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 58
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 57
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 59
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  br label %.lr.ph435

bb.bf:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125
  %indvars.iv.next.i122 = add nsw i64 %indvars.iv.next.i122434, 1 ; 3 uses
  %i.uv = trunc nsw i64 %indvars.iv.next.i122 to i32 ; 3 uses
  store i32 %i.uv, ptr %7, align 8, !tbaa !32103, !noalias !797
  %i.uw = icmp eq i64 %indvars.iv.next.i122, %sext.i120
  br i1 %i.uw, label %.noexc30, label %.lr.ph435, !llvm.loop !32113

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %bb.bf
  %i.ux = phi i32 [ %i.uv, %bb.bf ], [ %i.um, %.lr.ph435.preheader ] ; 2 uses
  %indvars.iv.next.i122434 = phi i64 [ %indvars.iv.next.i122, %bb.bf ], [ %indvars.iv.next.i122433, %.lr.ph435.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i123, label %.noexc30, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph435
  %i.uy = load i8, ptr %i.ur, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.uz = trunc nuw i8 %i.uy to i1
  %i.va = load i8, ptr %i.us, align 1, !range !796
  %i.vb = trunc nuw i8 %i.va to i1
  %or.cond.i.i.i.i124 = select i1 %i.uz, i1 true, i1 %i.vb
  br i1 %or.cond.i.i.i.i124, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.vc = lshr i64 %indvars.iv.next.i122434, 6
  %i.vd = and i64 %i.vc, 67108863
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %i.vd
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !855
  %i.vg = and i64 %indvars.iv.next.i122434, 63
  %i.vh = shl nuw i64 1, %i.vg
  %i.vi = and i64 %i.vf, %i.vh
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125

bb.bi:                                            ; preds = %bb.bg
  %i.vj = load i8, ptr %i.ut, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.vk = trunc nuw i8 %i.vj to i1
  br i1 %i.vk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.vl = load i64, ptr %i.uq, align 8, !tbaa !855
  %i.vm = and i64 %i.vl, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125

bb.bk:                                            ; preds = %bb.bi
  %i.vn = load ptr, ptr %i.uu, align 8, !tbaa !1529
  %i.vo = shl nsw i64 %indvars.iv.next.i122434, 2
  %i.vp = getelementptr inbounds i8, ptr %i.vn, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !3
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = lshr i64 %i.vr, 6
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.uq, i64 %i.vs
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !855
  %i.vv = and i64 %i.vr, 63
  %i.vw = shl nuw i64 1, %i.vv
  %i.vx = and i64 %i.vw, %i.vu
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125: ; preds = %bb.bk, %bb.bj, %bb.bh
  %.0.i.i.i.in.i126 = phi i64 [ %i.vi, %bb.bh ], [ %i.vm, %bb.bj ], [ %i.vx, %bb.bk ]
  %.0.i.i.i.not.i127 = icmp eq i64 %.0.i.i.i.in.i126, 0
  br i1 %.0.i.i.i.not.i127, label %bb.bf, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125..noexc30_crit_edge, !llvm.loop !32113

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125..noexc30_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125
  br label %.noexc30, !llvm.loop !32113

.noexc30:                                         ; preds = %bb.bf, %.lr.ph435, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125..noexc30_crit_edge, %.noexc29
  %.lcssa417 = phi i32 [ %i.ux, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i125..noexc30_crit_edge ], [ %i.um, %.noexc29 ], [ %i.uv, %bb.bf ], [ %i.ux, %.lr.ph435 ] ; 2 uses
  %i.vy = icmp eq i32 %i.dx, %.lcssa417
  br i1 %i.vy, label %._crit_edge, label %bb.an

._crit_edge:                                      ; preds = %.noexc30, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  store ptr null, ptr %8, align 8, !tbaa !1533, !alias.scope !47712
  %i.vz = load ptr, ptr %i.bg, align 8, !tbaa !47667, !nonnull !797, !align !916 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 80
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !47645 ; 4 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 24 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 72 ; 3 uses
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !47649
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 96
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !1286 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 44
  %i.wi = load i8, ptr %i.wh, align 4, !tbaa !1287
  %i.wj = and i8 %i.wi, 2
  %.not.i.i.i.i135 = icmp eq i8 %i.wj, 0
  br i1 %.not.i.i.i.i135, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, label %.invoke, !prof !721

.invoke:                                          ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, %._crit_edge
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont unwind label %bb.bl

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i: ; preds = %._crit_edge
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vz, i64 76 ; 3 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !47650
  %i.wm = load i32, ptr %i.wc, align 8, !tbaa !1121
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !1292
  %i.wp = sext i32 %i.wm to i64                   ; 2 uses
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.wp
  store i32 %i.wl, ptr %i.wq, align 4, !tbaa !3
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wb, i64 112
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !1286 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 44
  %i.wu = load i8, ptr %i.wt, align 4, !tbaa !1287
  %i.wv = and i8 %i.wu, 2
  %.not.i4.i.i.i = icmp eq i8 %i.wv, 0
  br i1 %.not.i4.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i, label %.invoke, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !1292
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.wx, i64 %i.wp
  store i32 %i.we, ptr %i.wy, align 4, !tbaa !3
  %i.wz = load i32, ptr %i.wc, align 8, !tbaa !1121
  %i.xa = load ptr, ptr %i.wb, align 8, !tbaa !78
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 144
  %i.xc = load ptr, ptr %i.xb, align 8
  invoke void %i.xc(ptr noundef nonnull align 8 dereferenceable(94) %i.wb, i32 noundef %i.wz, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.bl, !inline_history !47715

bb.bl:                                            ; preds = %.invoke, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i
  %i.xd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.xe = load ptr, ptr %8, align 8, !tbaa !1533
  %.not.i141 = icmp eq ptr %i.xe, null
  br i1 %.not.i141, label %_ZN8facebook5velox6StatusD2Ev.exit142, label %bb.bm, !prof !721

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit142

_ZN8facebook5velox6StatusD2Ev.exit142:            ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i
  %i.xf = load i32, ptr %i.wd, align 8, !tbaa !47640
  %i.xg = load i32, ptr %i.wk, align 4, !tbaa !47641
  %i.xh = add nsw i32 %i.xg, %i.xf
  store i32 %i.xh, ptr %i.wk, align 4, !tbaa !47641
  store i32 0, ptr %i.wd, align 8, !tbaa !47640
  %i.xi = load ptr, ptr %8, align 8, !tbaa !1533
  %.not.i143 = icmp eq ptr %i.xi, null
  br i1 %.not.i143, label %_ZN8facebook5velox6StatusD2Ev.exit144, label %bb.bn, !prof !721

bb.bn:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN8facebook5velox6StatusD2Ev.exit144

_ZN8facebook5velox6StatusD2Ev.exit144:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

.loopexit295:                                     ; preds = %bb.at, %exp2.i.i.i.noexc, %.noexc97, %bb.au, %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.aa
  %lpad.loopexit296 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.av, %.noexc18, %.noexc15
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim:bb.a
  %i.pf = load ptr, ptr %i.bw, align 8, !tbaa !47682 ; 3 uses
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %i.mr ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i107 = load i64, ptr %i.pg, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i108 = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %.sroa.2.0.copyload.i.i.i.i109 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i108, align 8, !tbaa !855
  %i.ph = xor i64 %.sroa.2.0.copyload.i.i.i.i109, %.sroa.0.0.copyload.i.i.i.i107
  %i.pi = mul i64 %i.ph, -7070675565921424023     ; 2 uses
  %i.pj = lshr i64 %i.pi, 47
  %i.pk = xor i64 %.sroa.0.0.copyload.i.i.i.i107, %i.pj
  %i.pl = xor i64 %i.pk, %i.pi
  %i.pm = mul i64 %i.pl, -7070675565921424023     ; 2 uses
  %i.pn = lshr i64 %i.pm, 47
  %i.po = xor i64 %i.pn, %i.pm
  %i.pp = mul i64 %i.po, -7070675565921424023     ; 2 uses
  %i.pq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.pp) ; 3 uses
  %i.pr = lshr i64 %i.pq, 24
  %i.ps = or i64 %i.pr, 128                       ; 2 uses
  %i.pt = add i64 %i.pp, %i.pq                    ; 2 uses
  %i.pu = shl nuw nsw i64 %i.ps, 1
  %i.pv = or disjoint i64 %i.pu, 1
  %i.pw = trunc nuw i64 %i.ps to i8
  %i.px = insertelement <16 x i8> poison, i8 %i.pw, i64 0
  %i.py = shufflevector <16 x i8> %i.px, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.pz = and i64 %i.pd, 255
  %i.qa = load ptr, ptr %i.bx, align 8, !tbaa !47629
  br label %.noexc68

.noexc68:                                         ; preds = %.noexc70, %.noexc50
  %.0.i = phi i64 [ %i.pt, %.noexc50 ], [ %i.qr, %.noexc70 ] ; 2 uses
  %i.qb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.pz)
  %i.qc = getelementptr inbounds nuw [64 x i8], ptr %i.qa, i64 %i.qb ; 3 uses
  %i.qd = load <16 x i8>, ptr %i.qc, align 16
  %i.qe = icmp eq <16 x i8> %i.qd, %i.py
  %i.qf = bitcast <16 x i1> %i.qe to i16
  %i.qg = and i16 %i.qf, 4095
  %i.qh = zext nneg i16 %i.qg to i32
  %i.qi = icmp ne ptr %i.qc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qc, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc69, %.noexc68
  %.sroa.0215.0 = phi i32 [ %i.qh, %.noexc68 ], [ %i.qm, %.noexc69 ] ; 4 uses
  %.not298 = icmp eq i32 %.sroa.0215.0, 0
  br i1 %.not298, label %.noexc70, label %.noexc69

.noexc69:                                         ; preds = %.critedge.i
  %i.qk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0215.0, i1 true)
  %i.ql = add nsw i32 %.sroa.0215.0, -1
  %i.qm = and i32 %i.ql, %.sroa.0215.0
  %i.qn = zext nneg i32 %i.qk to i64              ; 4 uses
  call void @llvm.assume(i1 %i.qi)
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !3
  %i.qq = icmp eq i32 %i.mq, %i.qp
  br i1 %i.qq, label %.noexc61, label %.critedge.i, !prof !721, !llvm.loop !47707

.noexc70:                                         ; preds = %.critedge.i
  %i.qr = add i64 %i.pv, %.0.i
  br label %.noexc68, !llvm.loop !47708

.noexc61:                                         ; preds = %.noexc69
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.qn
  %i.qt = getelementptr inbounds i8, ptr %i.qs, i64 -16
  %.neg.i.i.i = mul nsw i64 %i.qn, -4
  %i.qu = getelementptr inbounds i8, ptr %i.qt, i64 %.neg.i.i.i ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 14 ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 2, !tbaa !35483
  %.not.i167 = icmp ult i8 %i.qw, 16              ; 2 uses
  %i.qx = lshr i64 %i.pq, 23
  %i.qy = or i64 %i.qx, 257
  %.sroa.5.0.i = select i1 %.not.i167, i64 1, i64 %i.qy
  %.sroa.04.0.i = select i1 %.not.i167, i64 0, i64 %i.pt ; 2 uses
  %i.qz = add i64 %i.pd, -256
  store i64 %i.qz, ptr %i.dl, align 8, !tbaa !1619
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qn ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !13
  %.not.i.i.i.i168 = icmp sgt i8 %i.rb, -1
  br i1 %.not.i.i.i.i168, label %bb.aq, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.aq:                                            ; preds = %.noexc61
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %.noexc61
  store i8 0, ptr %i.ra, align 1, !tbaa !13
  %i.rc = load i8, ptr %i.qv, align 2, !tbaa !35483
  %.not.i.i.i = icmp ult i8 %i.rc, 16
  %.pre358 = load i64, ptr %i.dl, align 8, !tbaa !1619 ; 3 uses
  br i1 %.not.i.i.i, label %.noexc120, label %bb.ar

bb.ar:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.rd = load ptr, ptr %i.bx, align 8, !tbaa !47629 ; 4 uses
  %i.re = and i64 %.pre358, 255                   ; 2 uses
  %i.rf = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %i.re) ; 3 uses
  %i.rg = getelementptr inbounds nuw [64 x i8], ptr %i.rd, i64 %i.rf
  %i.rh = icmp eq ptr %i.rg, %i.qu
  br i1 %i.rh, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.at, %bb.ar
  %.011.lcssa.i.i.i = phi i8 [ 0, %bb.ar ], [ -16, %bb.at ]
  %i.ri = phi i64 [ %i.rf, %bb.ar ], [ %i.rt, %bb.at ]
  %i.rj = getelementptr inbounds nuw [64 x i8], ptr %i.rd, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 14 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 2, !tbaa !35483
  %i.rm = add i8 %i.rl, %.011.lcssa.i.i.i
  store i8 %i.rm, ptr %i.rk, align 2, !tbaa !35483
  br label %.noexc120

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.at
  %i.rn = phi i64 [ %i.rt, %bb.at ], [ %i.rf, %bb.ar ]
  %.01026.i.i.i = phi i64 [ %i.rs, %bb.at ], [ %.sroa.04.0.i, %bb.ar ]
  %i.ro = getelementptr inbounds nuw [64 x i8], ptr %i.rd, i64 %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 15 ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.rq, -2
  br i1 %.not.i17.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.rr = add i8 %i.rq, -1
  store i8 %i.rr, ptr %i.rp, align 1, !tbaa !35479
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.i.i
  %i.rs = add i64 %.01026.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.rt = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.rs, i64 range(i64 0, 256) %i.re) ; 3 uses
  %i.ru = getelementptr inbounds nuw [64 x i8], ptr %i.rd, i64 %i.rt
  %i.rv = icmp eq ptr %i.ru, %i.qu
  br i1 %i.rv, label %.thread.i.i.i, label %.lr.ph.i.i.i

.noexc120:                                        ; preds = %.thread.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.rw = lshr i64 %.pre358, 8                    ; 5 uses
  %.not.i112 = icmp eq i64 %i.rw, %i.mr
  br i1 %.not.i112, label %.noexc36, label %bb.au

bb.au:                                            ; preds = %.noexc120
  %i.rx = trunc i64 %i.rw to i32
  %i.ry = icmp ne i64 %i.rw, 0
  call void @llvm.assume(i1 %i.ry)
  %i.rz = load ptr, ptr %i.bw, align 8, !tbaa !47682
  %i.sa = and i64 %i.rw, 4294967295
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %i.rz, i64 %i.sa ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i113 = load i64, ptr %i.sb, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i114 = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i115 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i114, align 8, !tbaa !855
  %i.sc = xor i64 %.sroa.2.0.copyload.i.i.i.i.i115, %.sroa.0.0.copyload.i.i.i.i.i113
  %i.sd = mul i64 %i.sc, -7070675565921424023     ; 2 uses
  %i.se = lshr i64 %i.sd, 47
  %i.sf = xor i64 %.sroa.0.0.copyload.i.i.i.i.i113, %i.se
  %i.sg = xor i64 %i.sf, %i.sd
  %i.sh = mul i64 %i.sg, -7070675565921424023     ; 2 uses
  %i.si = lshr i64 %i.sh, 47
  %i.sj = xor i64 %i.si, %i.sh
  %i.sk = mul i64 %i.sj, -7070675565921424023     ; 2 uses
  %i.sl = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sk) ; 2 uses
  %i.sm = lshr i64 %i.sl, 24
  %i.sn = or i64 %i.sm, 128                       ; 2 uses
  %i.so = add i64 %i.sk, %i.sl
  %i.sp = shl nuw nsw i64 %i.sn, 1
  %i.sq = or disjoint i64 %i.sp, 1
  %i.sr = trunc nuw i64 %i.sn to i8
  %i.ss = insertelement <16 x i8> poison, i8 %i.sr, i64 0
  %i.st = shufflevector <16 x i8> %i.ss, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.su = and i64 %.pre358, 255
  %i.sv = load ptr, ptr %i.bx, align 8, !tbaa !47629
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.0.i.i117 = phi i64 [ %i.so, %bb.au ], [ %i.tm, %bb.ax ] ; 2 uses
  %i.sw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i117, i64 range(i64 0, 256) %i.su)
  %i.sx = getelementptr inbounds nuw [64 x i8], ptr %i.sv, i64 %i.sw ; 3 uses
  %i.sy = load <16 x i8>, ptr %i.sx, align 16
  %i.sz = icmp eq <16 x i8> %i.sy, %i.st
  %i.ta = bitcast <16 x i1> %i.sz to i16
  %i.tb = and i16 %i.ta, 4095
  %i.tc = zext nneg i16 %i.tb to i32
  %i.td = icmp ne ptr %i.sx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 2 uses
  br label %.critedge.i.i119

.critedge.i.i119:                                 ; preds = %bb.aw, %bb.av
  %.sroa.024.0.i = phi i32 [ %i.tc, %bb.av ], [ %i.th, %bb.aw ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i.i119
  %i.tf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %i.tg = add nsw i32 %.sroa.024.0.i, -1
  %i.th = and i32 %i.tg, %.sroa.024.0.i
  %i.ti = zext nneg i32 %i.tf to i64              ; 2 uses
  call void @llvm.assume(i1 %i.td)
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !3
  %i.tl = icmp eq i32 %i.tk, %i.rx
  br i1 %i.tl, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, label %.critedge.i.i119, !prof !721, !llvm.loop !47707

bb.ax:                                            ; preds = %.critedge.i.i119
  %i.tm = add i64 %i.sq, %.0.i.i117
  br label %bb.av, !llvm.loop !47708

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pf) ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.ti
  store i32 %i.mq, ptr %i.tn, align 4, !tbaa !3
  %i.to = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %i.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pg, ptr noundef nonnull align 1 dereferenceable(24) %i.to, i64 24, i1 false)
  br label %.noexc36

.noexc36:                                         ; preds = %bb.ak, %.noexc46, %.noexc120, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, %.noexc31
  %i.tp = load i32, ptr %8, align 8, !tbaa !32103, !noalias !47774
  %i.tq = load i32, ptr %i.ah, align 8, !tbaa !32103
  %i.tr = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ts = sext i32 %i.tp to i64
  %sext.i123 = sext i32 %i.tq to i64              ; 2 uses
  %indvars.iv.next.i125429 = add nsw i64 %i.ts, 1 ; 3 uses
  %i.tt = trunc nsw i64 %indvars.iv.next.i125429 to i32 ; 3 uses
  store i32 %i.tt, ptr %8, align 8, !tbaa !32103, !noalias !797
  %i.tu = icmp eq i64 %indvars.iv.next.i125429, %sext.i123
  br i1 %i.tu, label %.noexc37, label %.lr.ph431.preheader

.lr.ph431.preheader:                              ; preds = %.noexc36
  %i.tv = load ptr, ptr %i.tr, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 5 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i126 = icmp eq ptr %i.tx, null
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 58
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 57
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 59
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  br label %.lr.ph431

bb.ay:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128
  %indvars.iv.next.i125 = add nsw i64 %indvars.iv.next.i125430, 1 ; 3 uses
  %i.uc = trunc nsw i64 %indvars.iv.next.i125 to i32 ; 3 uses
  store i32 %i.uc, ptr %8, align 8, !tbaa !32103, !noalias !797
  %i.ud = icmp eq i64 %indvars.iv.next.i125, %sext.i123
  br i1 %i.ud, label %.noexc37, label %.lr.ph431, !llvm.loop !32113

.lr.ph431:                                        ; preds = %.lr.ph431.preheader, %bb.ay
  %i.ue = phi i32 [ %i.uc, %bb.ay ], [ %i.tt, %.lr.ph431.preheader ] ; 2 uses
  %indvars.iv.next.i125430 = phi i64 [ %indvars.iv.next.i125, %bb.ay ], [ %indvars.iv.next.i125429, %.lr.ph431.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i126, label %.noexc37, label %bb.az

bb.az:                                            ; preds = %.lr.ph431
  %i.uf = load i8, ptr %i.ty, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ug = trunc nuw i8 %i.uf to i1
  %i.uh = load i8, ptr %i.tz, align 1, !range !796
  %i.ui = trunc nuw i8 %i.uh to i1
  %or.cond.i.i.i.i127 = select i1 %i.ug, i1 true, i1 %i.ui
  br i1 %or.cond.i.i.i.i127, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.uj = lshr i64 %indvars.iv.next.i125430, 6
  %i.uk = and i64 %i.uj, 67108863
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.uk
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !855
  %i.un = and i64 %indvars.iv.next.i125430, 63
  %i.uo = shl nuw i64 1, %i.un
  %i.up = and i64 %i.um, %i.uo
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128

bb.bb:                                            ; preds = %bb.az
  %i.uq = load i8, ptr %i.ua, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ur = trunc nuw i8 %i.uq to i1
  br i1 %i.ur, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.us = load i64, ptr %i.tx, align 8, !tbaa !855
  %i.ut = and i64 %i.us, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128

bb.bd:                                            ; preds = %bb.bb
  %i.uu = load ptr, ptr %i.ub, align 8, !tbaa !1529
  %i.uv = shl nsw i64 %indvars.iv.next.i125430, 2
  %i.uw = getelementptr inbounds i8, ptr %i.uu, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !3
  %i.uy = zext i32 %i.ux to i64                   ; 2 uses
  %i.uz = lshr i64 %i.uy, 6
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.uz
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !855
  %i.vc = and i64 %i.uy, 63
  %i.vd = shl nuw i64 1, %i.vc
  %i.ve = and i64 %i.vd, %i.vb
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128: ; preds = %bb.bd, %bb.bc, %bb.ba
  %.0.i.i.i.in.i129 = phi i64 [ %i.up, %bb.ba ], [ %i.ut, %bb.bc ], [ %i.ve, %bb.bd ]
  %.0.i.i.i.not.i130 = icmp eq i64 %.0.i.i.i.in.i129, 0
  br i1 %.0.i.i.i.not.i130, label %bb.ay, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128..noexc37_crit_edge, !llvm.loop !32113

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128..noexc37_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128
  br label %.noexc37, !llvm.loop !32113

.noexc37:                                         ; preds = %bb.ay, %.lr.ph431, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128..noexc37_crit_edge, %.noexc36
  %.lcssa417 = phi i32 [ %i.ue, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i128..noexc37_crit_edge ], [ %i.tt, %.noexc36 ], [ %i.uc, %bb.ay ], [ %i.ue, %.lr.ph431 ] ; 2 uses
  %i.vf = icmp eq i32 %i.de, %.lcssa417
  br i1 %i.vf, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %.noexc37, %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  store ptr null, ptr %9, align 8, !tbaa !1533, !alias.scope !47777
  %i.vg = load ptr, ptr %i.an, align 8, !tbaa !47667, !nonnull !797, !align !916 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 80
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !47645 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 24 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 72 ; 3 uses
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !47649
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 96
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !1286 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 44
  %i.vp = load i8, ptr %i.vo, align 4, !tbaa !1287
  %i.vq = and i8 %i.vp, 2
  %.not.i.i.i.i138 = icmp eq i8 %i.vq, 0
  br i1 %.not.i.i.i.i138, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, label %.invoke, !prof !721

.invoke:                                          ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, %._crit_edge
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont unwind label %bb.be

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i: ; preds = %._crit_edge
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vg, i64 76 ; 3 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !47650
  %i.vt = load i32, ptr %i.vj, align 8, !tbaa !1121
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !1292
  %i.vw = sext i32 %i.vt to i64                   ; 2 uses
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.vw
  store i32 %i.vs, ptr %i.vx, align 4, !tbaa !3
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vi, i64 112
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !1286 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 44
  %i.wb = load i8, ptr %i.wa, align 4, !tbaa !1287
  %i.wc = and i8 %i.wb, 2
  %.not.i4.i.i.i = icmp eq i8 %i.wc, 0
  br i1 %.not.i4.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i, label %.invoke, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !1292
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.vw
  store i32 %i.vl, ptr %i.wf, align 4, !tbaa !3
  %i.wg = load i32, ptr %i.vj, align 8, !tbaa !1121
  %i.wh = load ptr, ptr %i.vi, align 8, !tbaa !78
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 144
  %i.wj = load ptr, ptr %i.wi, align 8
  invoke void %i.wj(ptr noundef nonnull align 8 dereferenceable(94) %i.vi, i32 noundef %i.wg, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.be, !inline_history !47715

bb.be:                                            ; preds = %.invoke, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i
  %i.wk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.wl = load ptr, ptr %9, align 8, !tbaa !1533
  %.not.i144 = icmp eq ptr %i.wl, null
  br i1 %.not.i144, label %_ZN8facebook5velox6StatusD2Ev.exit145, label %bb.bf, !prof !721

bb.bf:                                            ; preds = %bb.be
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit145

_ZN8facebook5velox6StatusD2Ev.exit145:            ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i
  %i.wm = load i32, ptr %i.vk, align 8, !tbaa !47640
  %i.wn = load i32, ptr %i.vr, align 4, !tbaa !47641
  %i.wo = add nsw i32 %i.wn, %i.wm
  store i32 %i.wo, ptr %i.vr, align 4, !tbaa !47641
  store i32 0, ptr %i.vk, align 8, !tbaa !47640
  %i.wp = load ptr, ptr %9, align 8, !tbaa !1533
  %.not.i146 = icmp eq ptr %i.wp, null
  br i1 %.not.i146, label %_ZN8facebook5velox6StatusD2Ev.exit147, label %bb.bg, !prof !721

bb.bg:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN8facebook5velox6StatusD2Ev.exit147

_ZN8facebook5velox6StatusD2Ev.exit147:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

.loopexit299:                                     ; preds = %bb.am, %exp2.i.i.i.noexc, %.noexc100, %bb.an, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.t
  %lpad.loopexit300 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ao, %.noexc25, %.noexc22
  %lpad.loopexit.split-lp301 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi:bb.a
  %i.qd = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.no ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i173 = load i64, ptr %i.qd, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i174 = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.2.0.copyload.i.i.i.i175 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i174, align 8, !tbaa !855
  %i.qe = xor i64 %.sroa.2.0.copyload.i.i.i.i175, %.sroa.0.0.copyload.i.i.i.i173
  %i.qf = mul i64 %i.qe, -7070675565921424023     ; 2 uses
  %i.qg = lshr i64 %i.qf, 47
  %i.qh = xor i64 %.sroa.0.0.copyload.i.i.i.i173, %i.qg
  %i.qi = xor i64 %i.qh, %i.qf
  %i.qj = mul i64 %i.qi, -7070675565921424023     ; 2 uses
  %i.qk = lshr i64 %i.qj, 47
  %i.ql = xor i64 %i.qk, %i.qj
  %i.qm = mul i64 %i.ql, -7070675565921424023     ; 2 uses
  %i.qn = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.qm) ; 3 uses
  %i.qo = lshr i64 %i.qn, 24
  %i.qp = or i64 %i.qo, 128                       ; 2 uses
  %i.qq = add i64 %i.qm, %i.qn                    ; 2 uses
  %i.qr = shl nuw nsw i64 %i.qp, 1
  %i.qs = or disjoint i64 %i.qr, 1
  %i.qt = trunc nuw i64 %i.qp to i8
  %i.qu = insertelement <16 x i8> poison, i8 %i.qt, i64 0
  %i.qv = shufflevector <16 x i8> %i.qu, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qw = and i64 %i.qa, 255
  %i.qx = load ptr, ptr %i.cu, align 8, !tbaa !47629, !noalias !47790
  br label %.noexc127

.noexc127:                                        ; preds = %.noexc129, %.noexc124
  %.0.i.i93 = phi i64 [ %i.qq, %.noexc124 ], [ %i.ro, %.noexc129 ] ; 2 uses
  %i.qy = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i93, i64 range(i64 0, 256) %i.qw)
  %i.qz = getelementptr inbounds nuw [64 x i8], ptr %i.qx, i64 %i.qy ; 3 uses
  %i.ra = load <16 x i8>, ptr %i.qz, align 16
  %i.rb = icmp eq <16 x i8> %i.ra, %i.qv
  %i.rc = bitcast <16 x i1> %i.rb to i16
  %i.rd = and i16 %i.rc, 4095
  %i.re = zext nneg i16 %i.rd to i32
  %i.rf = icmp ne ptr %i.qz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  br label %.critedge.i.i95

.critedge.i.i95:                                  ; preds = %.noexc128, %.noexc127
  %.sroa.0565.0 = phi i32 [ %i.re, %.noexc127 ], [ %i.rj, %.noexc128 ] ; 4 uses
  %.not729 = icmp eq i32 %.sroa.0565.0, 0
  br i1 %.not729, label %.noexc129, label %.noexc128

.noexc128:                                        ; preds = %.critedge.i.i95
  %i.rh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0565.0, i1 true)
  %i.ri = add nsw i32 %.sroa.0565.0, -1
  %i.rj = and i32 %i.ri, %.sroa.0565.0
  %i.rk = zext nneg i32 %i.rh to i64              ; 4 uses
  call void @llvm.assume(i1 %i.rf), !noalias !47790
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !3, !noalias !47790
  %i.rn = icmp eq i32 %i.nn, %i.rm
  br i1 %i.rn, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, label %.critedge.i.i95, !prof !721, !llvm.loop !47707

.noexc129:                                        ; preds = %.critedge.i.i95
  %i.ro = add i64 %i.qs, %.0.i.i93
  br label %.noexc127, !llvm.loop !47708

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i: ; preds = %.noexc128
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rk
  %i.rq = getelementptr inbounds i8, ptr %i.rp, i64 -16
  %.neg.i.i.i = mul nsw i64 %i.rk, -4
  %i.rr = getelementptr inbounds i8, ptr %i.rq, i64 %.neg.i.i.i ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 14 ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 2, !tbaa !35483
  %.not.i403 = icmp ult i8 %i.rt, 16              ; 2 uses
  %i.ru = lshr i64 %i.qn, 23
  %i.rv = or i64 %i.ru, 257
  %.sroa.5.0.i = select i1 %.not.i403, i64 1, i64 %i.rv
  %.sroa.04.0.i = select i1 %.not.i403, i64 0, i64 %i.qq ; 2 uses
  %i.rw = add i64 %i.qa, -256
  store i64 %i.rw, ptr %i.ei, align 8, !tbaa !1619
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rk ; 2 uses
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !13
  %.not.i.i.i.i404 = icmp sgt i8 %i.ry, -1
  br i1 %.not.i.i.i.i404, label %bb.ar, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.ar:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i
  store i8 0, ptr %i.rx, align 1, !tbaa !13
  %i.rz = load i8, ptr %i.rs, align 2, !tbaa !35483
  %.not.i.i.i405 = icmp ult i8 %i.rz, 16
  br i1 %.not.i.i.i405, label %.noexc187, label %bb.as

bb.as:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.sa = load ptr, ptr %i.cu, align 8, !tbaa !47629 ; 4 uses
  %i.sb = load i64, ptr %i.ei, align 8, !tbaa !1619
  %i.sc = and i64 %i.sb, 255                      ; 2 uses
  %i.sd = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %i.sc) ; 3 uses
  %i.se = getelementptr inbounds nuw [64 x i8], ptr %i.sa, i64 %i.sd
  %i.sf = icmp eq ptr %i.se, %i.rr
  br i1 %i.sf, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.au, %bb.as
  %.011.lcssa.i.i.i = phi i8 [ 0, %bb.as ], [ -16, %bb.au ]
  %i.sg = phi i64 [ %i.sd, %bb.as ], [ %i.sr, %bb.au ]
  %i.sh = getelementptr inbounds nuw [64 x i8], ptr %i.sa, i64 %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 14 ; 2 uses
  %i.sj = load i8, ptr %i.si, align 2, !tbaa !35483
  %i.sk = add i8 %i.sj, %.011.lcssa.i.i.i
  store i8 %i.sk, ptr %i.si, align 2, !tbaa !35483
  br label %.noexc187

.lr.ph.i.i.i:                                     ; preds = %bb.as, %bb.au
  %i.sl = phi i64 [ %i.sr, %bb.au ], [ %i.sd, %bb.as ]
  %.01026.i.i.i = phi i64 [ %i.sq, %bb.au ], [ %.sroa.04.0.i, %bb.as ]
  %i.sm = getelementptr inbounds nuw [64 x i8], ptr %i.sa, i64 %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 15 ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.so, -2
  br i1 %.not.i17.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i
  %i.sp = add i8 %i.so, -1
  store i8 %i.sp, ptr %i.sn, align 1, !tbaa !35479
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.i.i
  %i.sq = add i64 %.01026.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.sr = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sq, i64 range(i64 0, 256) %i.sc) ; 3 uses
  %i.ss = getelementptr inbounds nuw [64 x i8], ptr %i.sa, i64 %i.sr
  %i.st = icmp eq ptr %i.ss, %i.rr
  br i1 %i.st, label %.thread.i.i.i, label %.lr.ph.i.i.i

.noexc187:                                        ; preds = %.thread.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.su = load i64, ptr %i.ei, align 8, !tbaa !1619 ; 2 uses
  %i.sv = lshr i64 %i.su, 8                       ; 5 uses
  %.not.i178 = icmp eq i64 %i.sv, %i.no
  br i1 %.not.i178, label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i, label %bb.av

bb.av:                                            ; preds = %.noexc187
  %i.sw = trunc i64 %i.sv to i32
  %i.sx = icmp ne i64 %i.sv, 0
  call void @llvm.assume(i1 %i.sx)
  %i.sy = load ptr, ptr %i.ct, align 8, !tbaa !47682
  %i.sz = and i64 %i.sv, 4294967295
  %i.ta = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %i.sz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i179 = load i64, ptr %i.ta, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i180 = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i181 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i180, align 8, !tbaa !855
  %i.tb = xor i64 %.sroa.2.0.copyload.i.i.i.i.i181, %.sroa.0.0.copyload.i.i.i.i.i179
  %i.tc = mul i64 %i.tb, -7070675565921424023     ; 2 uses
  %i.td = lshr i64 %i.tc, 47
  %i.te = xor i64 %.sroa.0.0.copyload.i.i.i.i.i179, %i.td
  %i.tf = xor i64 %i.te, %i.tc
  %i.tg = mul i64 %i.tf, -7070675565921424023     ; 2 uses
  %i.th = lshr i64 %i.tg, 47
  %i.ti = xor i64 %i.th, %i.tg
  %i.tj = mul i64 %i.ti, -7070675565921424023     ; 2 uses
  %i.tk = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tj) ; 2 uses
  %i.tl = lshr i64 %i.tk, 24
  %i.tm = or i64 %i.tl, 128                       ; 2 uses
  %i.tn = add i64 %i.tj, %i.tk
  %i.to = shl nuw nsw i64 %i.tm, 1
  %i.tp = or disjoint i64 %i.to, 1
  %i.tq = trunc nuw i64 %i.tm to i8
  %i.tr = insertelement <16 x i8> poison, i8 %i.tq, i64 0
  %i.ts = shufflevector <16 x i8> %i.tr, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.tt = and i64 %i.su, 255
  %i.tu = load ptr, ptr %i.cu, align 8, !tbaa !47629
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %.0.i.i183 = phi i64 [ %i.tn, %bb.av ], [ %i.ul, %bb.ay ] ; 2 uses
  %i.tv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i183, i64 range(i64 0, 256) %i.tt)
  %i.tw = getelementptr inbounds nuw [64 x i8], ptr %i.tu, i64 %i.tv ; 3 uses
  %i.tx = load <16 x i8>, ptr %i.tw, align 16
  %i.ty = icmp eq <16 x i8> %i.tx, %i.ts
  %i.tz = bitcast <16 x i1> %i.ty to i16
  %i.ua = and i16 %i.tz, 4095
  %i.ub = zext nneg i16 %i.ua to i32
  %i.uc = icmp ne ptr %i.tw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tw, i64 16 ; 2 uses
  br label %.critedge.i.i185

.critedge.i.i185:                                 ; preds = %bb.ax, %bb.aw
  %.sroa.024.0.i = phi i32 [ %i.ub, %bb.aw ], [ %i.ug, %bb.ax ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i.i185
  %i.ue = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %i.uf = add nsw i32 %.sroa.024.0.i, -1
  %i.ug = and i32 %i.uf, %.sroa.024.0.i
  %i.uh = zext nneg i32 %i.ue to i64              ; 2 uses
  call void @llvm.assume(i1 %i.uc)
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !3
  %i.uk = icmp eq i32 %i.uj, %i.sw
  br i1 %i.uk, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i186, label %.critedge.i.i185, !prof !721, !llvm.loop !47707

bb.ay:                                            ; preds = %.critedge.i.i185
  %i.ul = add i64 %i.tp, %.0.i.i183
  br label %bb.aw, !llvm.loop !47708

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i186: ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qc) ]
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %i.uh
  store i32 %i.nn, ptr %i.um, align 4, !tbaa !3
  %i.un = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.sv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qd, ptr noundef nonnull align 1 dereferenceable(24) %i.un, i64 24, i1 false)
  br label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i

_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i: ; preds = %bb.al, %.noexc118, %.noexc187, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i186, %.noexc112
  %i.uo = load i32, ptr %11, align 8, !tbaa !32103, !noalias !47811
  %i.up = load i32, ptr %i.bh, align 8, !tbaa !32103
  %i.uq = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.ur = sext i32 %i.uo to i64
  %sext.i190 = sext i32 %i.up to i64              ; 2 uses
  %indvars.iv.next.i1921013 = add nsw i64 %i.ur, 1 ; 3 uses
  %i.us = trunc nsw i64 %indvars.iv.next.i1921013 to i32 ; 3 uses
  store i32 %i.us, ptr %11, align 8, !tbaa !32103, !noalias !797
  %i.ut = icmp eq i64 %indvars.iv.next.i1921013, %sext.i190
  br i1 %i.ut, label %.noexc133, label %.lr.ph1015.preheader

.lr.ph1015.preheader:                             ; preds = %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i
  %i.uu = load ptr, ptr %i.uq, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 5 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i193 = icmp eq ptr %i.uw, null
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 58
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 57
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 59
  %i.va = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  br label %.lr.ph1015

bb.az:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195
  %indvars.iv.next.i192 = add nsw i64 %indvars.iv.next.i1921014, 1 ; 3 uses
  %i.vb = trunc nsw i64 %indvars.iv.next.i192 to i32 ; 3 uses
  store i32 %i.vb, ptr %11, align 8, !tbaa !32103, !noalias !797
  %i.vc = icmp eq i64 %indvars.iv.next.i192, %sext.i190
  br i1 %i.vc, label %.noexc133, label %.lr.ph1015, !llvm.loop !32113

.lr.ph1015:                                       ; preds = %.lr.ph1015.preheader, %bb.az
  %i.vd = phi i32 [ %i.vb, %bb.az ], [ %i.us, %.lr.ph1015.preheader ] ; 2 uses
  %indvars.iv.next.i1921014 = phi i64 [ %indvars.iv.next.i192, %bb.az ], [ %indvars.iv.next.i1921013, %.lr.ph1015.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i193, label %.noexc133, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1015
  %i.ve = load i8, ptr %i.ux, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.vf = trunc nuw i8 %i.ve to i1
  %i.vg = load i8, ptr %i.uy, align 1, !range !796
  %i.vh = trunc nuw i8 %i.vg to i1
  %or.cond.i.i.i.i194 = select i1 %i.vf, i1 true, i1 %i.vh
  br i1 %or.cond.i.i.i.i194, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.vi = lshr i64 %indvars.iv.next.i1921014, 6
  %i.vj = and i64 %i.vi, 67108863
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.vj
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !855
  %i.vm = and i64 %indvars.iv.next.i1921014, 63
  %i.vn = shl nuw i64 1, %i.vm
  %i.vo = and i64 %i.vl, %i.vn
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195

bb.bc:                                            ; preds = %bb.ba
  %i.vp = load i8, ptr %i.uz, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.vr = load i64, ptr %i.uw, align 8, !tbaa !855
  %i.vs = and i64 %i.vr, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195

bb.be:                                            ; preds = %bb.bc
  %i.vt = load ptr, ptr %i.va, align 8, !tbaa !1529
  %i.vu = shl nsw i64 %indvars.iv.next.i1921014, 2
  %i.vv = getelementptr inbounds i8, ptr %i.vt, i64 %i.vu
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !3
  %i.vx = zext i32 %i.vw to i64                   ; 2 uses
  %i.vy = lshr i64 %i.vx, 6
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.vy
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !855
  %i.wb = and i64 %i.vx, 63
  %i.wc = shl nuw i64 1, %i.wb
  %i.wd = and i64 %i.wc, %i.wa
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195: ; preds = %bb.be, %bb.bd, %bb.bb
  %.0.i.i.i.in.i196 = phi i64 [ %i.vo, %bb.bb ], [ %i.vs, %bb.bd ], [ %i.wd, %bb.be ]
  %.0.i.i.i.not.i197 = icmp eq i64 %.0.i.i.i.in.i196, 0
  br i1 %.0.i.i.i.not.i197, label %bb.az, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195..noexc133_crit_edge, !llvm.loop !32113

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195..noexc133_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195
  br label %.noexc133, !llvm.loop !32113

.noexc133:                                        ; preds = %bb.az, %.lr.ph1015, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195..noexc133_crit_edge, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i
  %.lcssa1001 = phi i32 [ %i.vd, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i195..noexc133_crit_edge ], [ %i.us, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox9TimestampEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i ], [ %i.vb, %bb.az ], [ %i.vd, %.lr.ph1015 ] ; 2 uses
  %i.we = icmp eq i32 %i.eb, %.lcssa1001
  br i1 %i.we, label %._crit_edge811, label %bb.ah

._crit_edge811:                                   ; preds = %.noexc133, %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33, !noalias !47790
  store ptr null, ptr %12, align 8, !tbaa !1533, !alias.scope !47814
  %i.wf = load ptr, ptr %i.bk, align 8, !tbaa !47667, !nonnull !797, !align !916 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 80
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !47645 ; 4 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wf, i64 24 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 72 ; 3 uses
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !47649
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wh, i64 96
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !1286 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 44
  %i.wo = load i8, ptr %i.wn, align 4, !tbaa !1287
  %i.wp = and i8 %i.wo, 2
  %.not.i.i.i.i205 = icmp eq i8 %i.wp, 0
  br i1 %.not.i.i.i.i205, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, label %.invoke, !prof !721

.invoke:                                          ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i, %._crit_edge811
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont unwind label %bb.bf

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i: ; preds = %._crit_edge811
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wf, i64 76 ; 3 uses
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !47650
  %i.ws = load i32, ptr %i.wi, align 8, !tbaa !1121
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !1292
  %i.wv = sext i32 %i.ws to i64                   ; 2 uses
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.wv
  store i32 %i.wr, ptr %i.ww, align 4, !tbaa !3
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wh, i64 112
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !1286 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 44
  %i.xa = load i8, ptr %i.wz, align 4, !tbaa !1287
  %i.xb = and i8 %i.xa, 2
  %.not.i4.i.i.i = icmp eq i8 %i.xb, 0
  br i1 %.not.i4.i.i.i, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i, label %.invoke, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !1292
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.wv
  store i32 %i.wk, ptr %i.xe, align 4, !tbaa !3
  %i.xf = load i32, ptr %i.wi, align 8, !tbaa !1121
  %i.xg = load ptr, ptr %i.wh, align 8, !tbaa !78
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 144
  %i.xi = load ptr, ptr %i.xh, align 8
  invoke void %i.xi(ptr noundef nonnull align 8 dereferenceable(94) %i.wh, i32 noundef %i.xf, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit unwind label %bb.bf, !inline_history !47715

bb.bf:                                            ; preds = %.invoke, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i
  %i.xj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.xk = load ptr, ptr %12, align 8, !tbaa !1533
  %.not.i211 = icmp eq ptr %i.xk, null
  br i1 %.not.i211, label %_ZN8facebook5velox6StatusD2Ev.exit212, label %bb.bg, !prof !721

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  br label %_ZN8facebook5velox6StatusD2Ev.exit212

_ZN8facebook5velox6StatusD2Ev.exit212:            ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.body82

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i
  %i.xl = load i32, ptr %i.wj, align 8, !tbaa !47640
  %i.xm = load i32, ptr %i.wq, align 4, !tbaa !47641
  %i.xn = add nsw i32 %i.xm, %i.xl
  store i32 %i.xn, ptr %i.wq, align 4, !tbaa !47641
  store i32 0, ptr %i.wj, align 8, !tbaa !47640
  %i.xo = load ptr, ptr %12, align 8, !tbaa !1533
  %.not.i213 = icmp eq ptr %i.xo, null
  br i1 %.not.i213, label %_ZN8facebook5velox6StatusD2Ev.exit214, label %bb.bh, !prof !721

bb.bh:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
  br label %_ZN8facebook5velox6StatusD2Ev.exit214

_ZN8facebook5velox6StatusD2Ev.exit214:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clImEEDaST_.exit

.loopexit730:                                     ; preds = %bb.an, %exp2.i.i.i.noexc, %.noexc166, %bb.ao, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body82

.loopexit.split-lp.loopexit:                      ; preds = %bb.u
  %lpad.loopexit731 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body82

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ap, %.noexc106, %.noexc103
  %lpad.loopexit.split-lp732 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body82

end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_9TimestampEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi:bb.a
  %i.aos = load ptr, ptr %i.abj, align 8, !tbaa !47682 ; 3 uses
  %i.aot = getelementptr inbounds nuw [24 x i8], ptr %i.aos, i64 %i.ame ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i326 = load i64, ptr %i.aot, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i327 = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %.sroa.2.0.copyload.i.i.i.i328 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i327, align 8, !tbaa !855
  %i.aou = xor i64 %.sroa.2.0.copyload.i.i.i.i328, %.sroa.0.0.copyload.i.i.i.i326
  %i.aov = mul i64 %i.aou, -7070675565921424023   ; 2 uses
  %i.aow = lshr i64 %i.aov, 47
  %i.aox = xor i64 %.sroa.0.0.copyload.i.i.i.i326, %i.aow
  %i.aoy = xor i64 %i.aox, %i.aov
  %i.aoz = mul i64 %i.aoy, -7070675565921424023   ; 2 uses
  %i.apa = lshr i64 %i.aoz, 47
  %i.apb = xor i64 %i.apa, %i.aoz
  %i.apc = mul i64 %i.apb, -7070675565921424023   ; 2 uses
  %i.apd = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.apc) ; 3 uses
  %i.ape = lshr i64 %i.apd, 24
  %i.apf = or i64 %i.ape, 128                     ; 2 uses
  %i.apg = add i64 %i.apc, %i.apd                 ; 2 uses
  %i.aph = shl nuw nsw i64 %i.apf, 1
  %i.api = or disjoint i64 %i.aph, 1
  %i.apj = trunc nuw i64 %i.apf to i8
  %i.apk = insertelement <16 x i8> poison, i8 %i.apj, i64 0
  %i.apl = shufflevector <16 x i8> %i.apk, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.apm = and i64 %i.aoq, 255
  %i.apn = load ptr, ptr %i.abk, align 8, !tbaa !47629
  br label %.noexc74

.noexc74:                                         ; preds = %.noexc76, %.noexc56
  %.0.i = phi i64 [ %i.apg, %.noexc56 ], [ %i.aqe, %.noexc76 ] ; 2 uses
  %i.apo = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.apm)
  %i.app = getelementptr inbounds nuw [64 x i8], ptr %i.apn, i64 %i.apo ; 3 uses
  %i.apq = load <16 x i8>, ptr %i.app, align 16
  %i.apr = icmp eq <16 x i8> %i.apq, %i.apl
  %i.aps = bitcast <16 x i1> %i.apr to i16
  %i.apt = and i16 %i.aps, 4095
  %i.apu = zext nneg i16 %i.apt to i32
  %i.apv = icmp ne ptr %i.app, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.apw = getelementptr inbounds nuw i8, ptr %i.app, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc75, %.noexc74
  %.sroa.0504.0 = phi i32 [ %i.apu, %.noexc74 ], [ %i.apz, %.noexc75 ] ; 4 uses
  %.not727 = icmp eq i32 %.sroa.0504.0, 0
  br i1 %.not727, label %.noexc76, label %.noexc75

.noexc75:                                         ; preds = %.critedge.i
  %i.apx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0504.0, i1 true)
  %i.apy = add nsw i32 %.sroa.0504.0, -1
  %i.apz = and i32 %i.apy, %.sroa.0504.0
  %i.aqa = zext nneg i32 %i.apx to i64            ; 4 uses
  call void @llvm.assume(i1 %i.apv)
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.aqa
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !3
  %i.aqd = icmp eq i32 %i.amd, %i.aqc
  br i1 %i.aqd, label %.noexc67, label %.critedge.i, !prof !721, !llvm.loop !47707

.noexc76:                                         ; preds = %.critedge.i
  %i.aqe = add i64 %i.api, %.0.i
  br label %.noexc74, !llvm.loop !47708

.noexc67:                                         ; preds = %.noexc75
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.apw, i64 %i.aqa
  %i.aqg = getelementptr inbounds i8, ptr %i.aqf, i64 -16
  %.neg.i.i.i442 = mul nsw i64 %i.aqa, -4
  %i.aqh = getelementptr inbounds i8, ptr %i.aqg, i64 %.neg.i.i.i442 ; 4 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 14 ; 2 uses
  %i.aqj = load i8, ptr %i.aqi, align 2, !tbaa !35483
  %.not.i443 = icmp ult i8 %i.aqj, 16             ; 2 uses
  %i.aqk = lshr i64 %i.apd, 23
  %i.aql = or i64 %i.aqk, 257
  %.sroa.5.0.i447 = select i1 %.not.i443, i64 1, i64 %i.aql
  %.sroa.04.0.i448 = select i1 %.not.i443, i64 0, i64 %i.apg ; 2 uses
  %i.aqm = add i64 %i.aoq, -256
  store i64 %i.aqm, ptr %i.acy, align 8, !tbaa !1619
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqh, i64 %i.aqa ; 2 uses
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !13
  %.not.i.i.i.i449 = icmp sgt i8 %i.aqo, -1
  br i1 %.not.i.i.i.i449, label %bb.dn, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i450

bb.dn:                                            ; preds = %.noexc67
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i450: ; preds = %.noexc67
  store i8 0, ptr %i.aqn, align 1, !tbaa !13
  %i.aqp = load i8, ptr %i.aqi, align 2, !tbaa !35483
  %.not.i.i.i451 = icmp ult i8 %i.aqp, 16
  %.pre868 = load i64, ptr %i.acy, align 8, !tbaa !1619 ; 3 uses
  br i1 %.not.i.i.i451, label %.noexc342, label %bb.do

bb.do:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i450
  %i.aqq = load ptr, ptr %i.abk, align 8, !tbaa !47629 ; 4 uses
  %i.aqr = and i64 %.pre868, 255                  ; 2 uses
  %i.aqs = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i448, i64 range(i64 0, 256) %i.aqr) ; 3 uses
  %i.aqt = getelementptr inbounds nuw [64 x i8], ptr %i.aqq, i64 %i.aqs
  %i.aqu = icmp eq ptr %i.aqt, %i.aqh
  br i1 %i.aqu, label %.thread.i.i.i455, label %.lr.ph.i.i.i452

.thread.i.i.i455:                                 ; preds = %bb.dq, %bb.do
  %.011.lcssa.i.i.i456 = phi i8 [ 0, %bb.do ], [ -16, %bb.dq ]
  %i.aqv = phi i64 [ %i.aqs, %bb.do ], [ %i.arg, %bb.dq ]
  %i.aqw = getelementptr inbounds nuw [64 x i8], ptr %i.aqq, i64 %i.aqv
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 14 ; 2 uses
  %i.aqy = load i8, ptr %i.aqx, align 2, !tbaa !35483
  %i.aqz = add i8 %i.aqy, %.011.lcssa.i.i.i456
  store i8 %i.aqz, ptr %i.aqx, align 2, !tbaa !35483
  br label %.noexc342

.lr.ph.i.i.i452:                                  ; preds = %bb.do, %bb.dq
  %i.ara = phi i64 [ %i.arg, %bb.dq ], [ %i.aqs, %bb.do ]
  %.01026.i.i.i453 = phi i64 [ %i.arf, %bb.dq ], [ %.sroa.04.0.i448, %bb.do ]
  %i.arb = getelementptr inbounds nuw [64 x i8], ptr %i.aqq, i64 %i.ara
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 15 ; 2 uses
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i454 = icmp eq i8 %i.ard, -2
  br i1 %.not.i17.i.i.i454, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i.i.i452
  %i.are = add i8 %i.ard, -1
  store i8 %i.are, ptr %i.arc, align 1, !tbaa !35479
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.lr.ph.i.i.i452
  %i.arf = add i64 %.01026.i.i.i453, %.sroa.5.0.i447 ; 2 uses
  %i.arg = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.arf, i64 range(i64 0, 256) %i.aqr) ; 3 uses
  %i.arh = getelementptr inbounds nuw [64 x i8], ptr %i.aqq, i64 %i.arg
  %i.ari = icmp eq ptr %i.arh, %i.aqh
  br i1 %i.ari, label %.thread.i.i.i455, label %.lr.ph.i.i.i452

.noexc342:                                        ; preds = %.thread.i.i.i455, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i450
  %i.arj = lshr i64 %.pre868, 8                   ; 5 uses
  %.not.i331 = icmp eq i64 %i.arj, %i.ame
  br i1 %.not.i331, label %.noexc42, label %bb.dr

bb.dr:                                            ; preds = %.noexc342
  %i.ark = trunc i64 %i.arj to i32
  %i.arl = icmp ne i64 %i.arj, 0
  call void @llvm.assume(i1 %i.arl)
  %i.arm = load ptr, ptr %i.abj, align 8, !tbaa !47682
  %i.arn = and i64 %i.arj, 4294967295
  %i.aro = getelementptr inbounds nuw [24 x i8], ptr %i.arm, i64 %i.arn ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i332 = load i64, ptr %i.aro, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i333 = getelementptr inbounds nuw i8, ptr %i.aro, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i334 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i333, align 8, !tbaa !855
  %i.arp = xor i64 %.sroa.2.0.copyload.i.i.i.i.i334, %.sroa.0.0.copyload.i.i.i.i.i332
  %i.arq = mul i64 %i.arp, -7070675565921424023   ; 2 uses
  %i.arr = lshr i64 %i.arq, 47
  %i.ars = xor i64 %.sroa.0.0.copyload.i.i.i.i.i332, %i.arr
  %i.art = xor i64 %i.ars, %i.arq
  %i.aru = mul i64 %i.art, -7070675565921424023   ; 2 uses
  %i.arv = lshr i64 %i.aru, 47
  %i.arw = xor i64 %i.arv, %i.aru
  %i.arx = mul i64 %i.arw, -7070675565921424023   ; 2 uses
  %i.ary = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.arx) ; 2 uses
  %i.arz = lshr i64 %i.ary, 24
  %i.asa = or i64 %i.arz, 128                     ; 2 uses
  %i.asb = add i64 %i.arx, %i.ary
  %i.asc = shl nuw nsw i64 %i.asa, 1
  %i.asd = or disjoint i64 %i.asc, 1
  %i.ase = trunc nuw i64 %i.asa to i8
  %i.asf = insertelement <16 x i8> poison, i8 %i.ase, i64 0
  %i.asg = shufflevector <16 x i8> %i.asf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ash = and i64 %.pre868, 255
  %i.asi = load ptr, ptr %i.abk, align 8, !tbaa !47629
  br label %bb.ds

bb.ds:                                            ; preds = %bb.du, %bb.dr
  %.0.i.i336 = phi i64 [ %i.asb, %bb.dr ], [ %i.asz, %bb.du ] ; 2 uses
  %i.asj = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i336, i64 range(i64 0, 256) %i.ash)
  %i.ask = getelementptr inbounds nuw [64 x i8], ptr %i.asi, i64 %i.asj ; 3 uses
  %i.asl = load <16 x i8>, ptr %i.ask, align 16
  %i.asm = icmp eq <16 x i8> %i.asl, %i.asg
  %i.asn = bitcast <16 x i1> %i.asm to i16
  %i.aso = and i16 %i.asn, 4095
  %i.asp = zext nneg i16 %i.aso to i32
  %i.asq = icmp ne ptr %i.ask, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.asr = getelementptr inbounds nuw i8, ptr %i.ask, i64 16 ; 2 uses
  br label %.critedge.i.i338

.critedge.i.i338:                                 ; preds = %bb.dt, %bb.ds
  %.sroa.024.0.i339 = phi i32 [ %i.asp, %bb.ds ], [ %i.asu, %bb.dt ] ; 4 uses
  %.not44.i340 = icmp eq i32 %.sroa.024.0.i339, 0
  br i1 %.not44.i340, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.critedge.i.i338
  %i.ass = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i339, i1 true)
  %i.ast = add nsw i32 %.sroa.024.0.i339, -1
  %i.asu = and i32 %i.ast, %.sroa.024.0.i339
  %i.asv = zext nneg i32 %i.ass to i64            ; 2 uses
  call void @llvm.assume(i1 %i.asq)
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !3
  %i.asy = icmp eq i32 %i.asx, %i.ark
  br i1 %i.asy, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i341, label %.critedge.i.i338, !prof !721, !llvm.loop !47707

bb.du:                                            ; preds = %.critedge.i.i338
  %i.asz = add i64 %i.asd, %.0.i.i336
  br label %bb.ds, !llvm.loop !47708

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i341: ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aos) ]
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.asr, i64 %i.asv
  store i32 %i.amd, ptr %i.ata, align 4, !tbaa !3
  %i.atb = getelementptr inbounds nuw [24 x i8], ptr %i.aos, i64 %i.arj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aot, ptr noundef nonnull align 1 dereferenceable(24) %i.atb, i64 24, i1 false)
  br label %.noexc42

.noexc42:                                         ; preds = %bb.dh, %.noexc52, %.noexc342, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i341, %.noexc37
  %i.atc = load i32, ptr %16, align 8, !tbaa !32103, !noalias !47842
  %i.atd = load i32, ptr %i.ag, align 8, !tbaa !32103
  %i.ate = load ptr, ptr %i.af, align 8           ; 2 uses
  %i.atf = sext i32 %i.atc to i64
  %sext.i346 = sext i32 %i.atd to i64             ; 2 uses
  %indvars.iv.next.i3481027 = add nsw i64 %i.atf, 1 ; 3 uses
  %i.atg = trunc nsw i64 %indvars.iv.next.i3481027 to i32 ; 3 uses
  store i32 %i.atg, ptr %16, align 8, !tbaa !32103, !noalias !797
  %i.ath = icmp eq i64 %indvars.iv.next.i3481027, %sext.i346
  br i1 %i.ath, label %.noexc43, label %.lr.ph1029.preheader

.lr.ph1029.preheader:                             ; preds = %.noexc42
  %i.ati = load ptr, ptr %i.ate, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 5 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i349 = icmp eq ptr %i.atk, null
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ati, i64 58
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ati, i64 57
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ati, i64 59
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  br label %.lr.ph1029

bb.dv:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351
  %indvars.iv.next.i348 = add nsw i64 %indvars.iv.next.i3481028, 1 ; 3 uses
  %i.atp = trunc nsw i64 %indvars.iv.next.i348 to i32 ; 3 uses
  store i32 %i.atp, ptr %16, align 8, !tbaa !32103, !noalias !797
  %i.atq = icmp eq i64 %indvars.iv.next.i348, %sext.i346
  br i1 %i.atq, label %.noexc43, label %.lr.ph1029, !llvm.loop !32113

.lr.ph1029:                                       ; preds = %.lr.ph1029.preheader, %bb.dv
  %i.atr = phi i32 [ %i.atp, %bb.dv ], [ %i.atg, %.lr.ph1029.preheader ] ; 2 uses
  %indvars.iv.next.i3481028 = phi i64 [ %indvars.iv.next.i348, %bb.dv ], [ %indvars.iv.next.i3481027, %.lr.ph1029.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i349, label %.noexc43, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph1029
  %i.ats = load i8, ptr %i.atl, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.att = trunc nuw i8 %i.ats to i1
  %i.atu = load i8, ptr %i.atm, align 1, !range !796
  %i.atv = trunc nuw i8 %i.atu to i1
  %or.cond.i.i.i.i350 = select i1 %i.att, i1 true, i1 %i.atv
  br i1 %or.cond.i.i.i.i350, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.atw = lshr i64 %indvars.iv.next.i3481028, 6
  %i.atx = and i64 %i.atw, 67108863
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.atk, i64 %i.atx
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !855
  %i.aua = and i64 %indvars.iv.next.i3481028, 63
  %i.aub = shl nuw i64 1, %i.aua
  %i.auc = and i64 %i.atz, %i.aub
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351

bb.dy:                                            ; preds = %bb.dw
  %i.aud = load i8, ptr %i.atn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.aue = trunc nuw i8 %i.aud to i1
  br i1 %i.aue, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.auf = load i64, ptr %i.atk, align 8, !tbaa !855
  %i.aug = and i64 %i.auf, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351

bb.ea:                                            ; preds = %bb.dy
  %i.auh = load ptr, ptr %i.ato, align 8, !tbaa !1529
  %i.aui = shl nsw i64 %indvars.iv.next.i3481028, 2
  %i.auj = getelementptr inbounds i8, ptr %i.auh, i64 %i.aui
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !3
  %i.aul = zext i32 %i.auk to i64                 ; 2 uses
  %i.aum = lshr i64 %i.aul, 6
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %i.atk, i64 %i.aum
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !855
  %i.aup = and i64 %i.aul, 63
  %i.auq = shl nuw i64 1, %i.aup
  %i.aur = and i64 %i.auq, %i.auo
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351: ; preds = %bb.ea, %bb.dz, %bb.dx
  %.0.i.i.i.in.i352 = phi i64 [ %i.auc, %bb.dx ], [ %i.aug, %bb.dz ], [ %i.aur, %bb.ea ]
  %.0.i.i.i.not.i353 = icmp eq i64 %.0.i.i.i.in.i352, 0
  br i1 %.0.i.i.i.not.i353, label %bb.dv, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351..noexc43_crit_edge, !llvm.loop !32113

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351..noexc43_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351
  br label %.noexc43, !llvm.loop !32113

.noexc43:                                         ; preds = %bb.dv, %.lr.ph1029, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351..noexc43_crit_edge, %.noexc42
  %.lcssa982 = phi i32 [ %i.atr, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_9TimestampEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i351..noexc43_crit_edge ], [ %i.atg, %.noexc42 ], [ %i.atp, %bb.dv ], [ %i.atr, %.lr.ph1029 ] ; 2 uses
  %i.aus = icmp eq i32 %i.acr, %.lcssa982
  br i1 %i.aus, label %._crit_edge, label %bb.dd

._crit_edge:                                      ; preds = %.noexc43, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  store ptr null, ptr %17, align 8, !tbaa !1533, !alias.scope !47845
  %i.aut = load ptr, ptr %i.aaa, align 8, !tbaa !47667, !nonnull !797, !align !916 ; 4 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 80
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !47645 ; 4 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aut, i64 24 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.aut, i64 72 ; 3 uses
  %i.auy = load i32, ptr %i.aux, align 8, !tbaa !47649
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auv, i64 96
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !1286 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 44
  %i.avc = load i8, ptr %i.avb, align 4, !tbaa !1287
  %i.avd = and i8 %i.avc, 2
  %.not.i.i.i.i364 = icmp eq i8 %i.avd, 0
  br i1 %.not.i.i.i.i364, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i365, label %.invoke966, !prof !721

.invoke966:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i365, %._crit_edge
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #45
          to label %.cont967 unwind label %bb.eb

.cont967:                                         ; preds = %.invoke966
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i365: ; preds = %._crit_edge
  %i.ave = getelementptr inbounds nuw i8, ptr %i.aut, i64 76 ; 3 uses
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !47650
  %i.avg = load i32, ptr %i.auw, align 8, !tbaa !1121
  %i.avh = getelementptr inbounds nuw i8, ptr %i.ava, i64 16
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !1292
  %i.avj = sext i32 %i.avg to i64                 ; 2 uses
  %i.avk = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.avj
  store i32 %i.avf, ptr %i.avk, align 4, !tbaa !3
  %i.avl = getelementptr inbounds nuw i8, ptr %i.auv, i64 112
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !1286 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 44
  %i.avo = load i8, ptr %i.avn, align 4, !tbaa !1287
  %i.avp = and i8 %i.avo, 2
  %.not.i4.i.i.i366 = icmp eq i8 %i.avp, 0
  br i1 %.not.i4.i.i.i366, label %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i367, label %.invoke966, !prof !721

_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i367: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i.i.i365
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avm, i64 16
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !1292
  %i.avs = getelementptr inbounds [4 x i8], ptr %i.avr, i64 %i.avj
  store i32 %i.auy, ptr %i.avs, align 4, !tbaa !3
  %i.avt = load i32, ptr %i.auw, align 8, !tbaa !1121
  %i.avu = load ptr, ptr %i.auv, align 8, !tbaa !78
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 144
  %i.avw = load ptr, ptr %i.avv, align 8
  invoke void %i.avw(ptr noundef nonnull align 8 dereferenceable(94) %i.auv, i32 noundef %i.avt, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.eb, !inline_history !47715

bb.eb:                                            ; preds = %.invoke966, %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i367
  %i.avx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.avy = load ptr, ptr %17, align 8, !tbaa !1533
  %.not.i374 = icmp eq ptr %i.avy, null
  br i1 %.not.i374, label %_ZN8facebook5velox6StatusD2Ev.exit375, label %bb.ec, !prof !721

bb.ec:                                            ; preds = %bb.eb
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %_ZN8facebook5velox6StatusD2Ev.exit375

_ZN8facebook5velox6StatusD2Ev.exit375:            ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_9TimestampEiEEvE6commitEv.exit.i367
  %i.avz = load i32, ptr %i.aux, align 8, !tbaa !47640
  %i.awa = load i32, ptr %i.ave, align 4, !tbaa !47641
  %i.awb = add nsw i32 %i.awa, %i.avz
  store i32 %i.awb, ptr %i.ave, align 4, !tbaa !47641
  store i32 0, ptr %i.aux, align 8, !tbaa !47640
  %i.awc = load ptr, ptr %17, align 8, !tbaa !1533
  %.not.i376 = icmp eq ptr %i.awc, null
  br i1 %.not.i376, label %_ZN8facebook5velox6StatusD2Ev.exit377, label %bb.ed, !prof !721

bb.ed:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  br label %_ZN8facebook5velox6StatusD2Ev.exit377

_ZN8facebook5velox6StatusD2Ev.exit377:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_9TimestampEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

.loopexit741:                                     ; preds = %bb.dj, %exp2.i.i.i.noexc316, %.noexc318, %bb.dk, %bb.dm
  %lpad.loopexit743 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp742.loopexit:                   ; preds = %bb.cq
  %lpad.loopexit746 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp742.loopexit.split-lp:          ; preds = %bb.dl, %.noexc31, %.noexc28
  %lpad.loopexit.split-lp747 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_7VarcharEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKS1_SV_SX_EUlSV_E_EEvSV_:bb.a
  %i.pj = icmp eq <16 x i8> %i.pi, %i.pc
  %i.pk = bitcast <16 x i1> %i.pj to i16
  %i.pl = and i16 %i.pk, 4095
  %i.pm = zext nneg i16 %i.pl to i32
  %i.pn = icmp ne ptr %i.ph, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc63, %.noexc62
  %.sroa.0208.0 = phi i32 [ %i.pm, %.noexc62 ], [ %i.pr, %.noexc63 ] ; 4 uses
  %.not285 = icmp eq i32 %.sroa.0208.0, 0
  br i1 %.not285, label %.noexc64, label %.noexc63

.noexc63:                                         ; preds = %.critedge.i
  %i.pp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0208.0, i1 true)
  %i.pq = add nsw i32 %.sroa.0208.0, -1
  %i.pr = and i32 %i.pq, %.sroa.0208.0
  %i.ps = zext nneg i32 %i.pp to i64              ; 4 uses
  call void @llvm.assume(i1 %i.pn)
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !3
  %i.pv = icmp eq i32 %i.lo, %i.pu
  br i1 %i.pv, label %.noexc55, label %.critedge.i, !prof !721, !llvm.loop !48221

.noexc64:                                         ; preds = %.critedge.i
  %i.pw = add i64 %i.oz, %.0.i
  br label %.noexc62, !llvm.loop !48222

.noexc55:                                         ; preds = %.noexc63
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.ps
  %i.py = load ptr, ptr %i.da, align 8, !tbaa !48192 ; 4 uses
  %i.pz = getelementptr inbounds i8, ptr %i.px, i64 -16
  %.neg.i.i.i = mul nsw i64 %i.ps, -4
  %i.qa = getelementptr inbounds i8, ptr %i.pz, i64 %.neg.i.i.i ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 14 ; 2 uses
  %i.qc = load i8, ptr %i.qb, align 2, !tbaa !35483
  %.not.i161 = icmp ult i8 %i.qc, 16
  br i1 %.not.i161, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc55
  %i.qd = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %.pre-phi ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.qd, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.bl, align 8
  %i.qe = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.qf = icmp ult i32 %i.qe, 13
  %i.qg = select i1 %i.qf, ptr %i.bm, ptr %.sroa.2.0.copyload.i.i.i
  %i.qh = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.qi = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.qg, i64 noundef %i.qh)
          to label %.noexc164 unwind label %.loopexit286 ; 2 uses

.noexc164:                                        ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.qj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.qi) ; 2 uses
  %i.qk = add i64 %i.qj, %i.qi
  %i.ql = lshr i64 %i.qj, 23
  %i.qm = or i64 %i.ql, 257
  %.pre362 = load i64, ptr %i.eo, align 8, !tbaa !1619
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc164, %.noexc55
  %i.qn = phi i64 [ %i.pd, %.noexc55 ], [ %.pre362, %.noexc164 ]
  %.sroa.5.0.i = phi i64 [ 1, %.noexc55 ], [ %i.qm, %.noexc164 ]
  %.sroa.04.0.i = phi i64 [ 0, %.noexc55 ], [ %i.qk, %.noexc164 ] ; 2 uses
  %i.qo = add i64 %i.qn, -256
  store i64 %i.qo, ptr %i.eo, align 8, !tbaa !1619
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.ps ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !13
  %.not.i.i.i.i162 = icmp sgt i8 %i.qq, -1
  br i1 %.not.i.i.i.i162, label %bb.aq, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %bb.ap
  store i8 0, ptr %i.qp, align 1, !tbaa !13
  %i.qr = load i8, ptr %i.qb, align 2, !tbaa !35483
  %.not.i.i.i163 = icmp ult i8 %i.qr, 16
  %.pre363 = load i64, ptr %i.eo, align 8, !tbaa !1619 ; 2 uses
  br i1 %.not.i.i.i163, label %.noexc125, label %bb.ar

bb.ar:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.qs = load ptr, ptr %i.db, align 8, !tbaa !48136 ; 4 uses
  %i.qt = and i64 %.pre363, 255                   ; 2 uses
  %i.qu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %i.qt) ; 3 uses
  %i.qv = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.qu
  %i.qw = icmp eq ptr %i.qv, %i.qa
  br i1 %i.qw, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.at, %bb.ar
  %.011.lcssa.i.i.i = phi i8 [ 0, %bb.ar ], [ -16, %bb.at ]
  %i.qx = phi i64 [ %i.qu, %bb.ar ], [ %i.ri, %bb.at ]
  %i.qy = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 14 ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 2, !tbaa !35483
  %i.rb = add i8 %i.ra, %.011.lcssa.i.i.i
  store i8 %i.rb, ptr %i.qz, align 2, !tbaa !35483
  br label %.noexc125

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.at
  %i.rc = phi i64 [ %i.ri, %bb.at ], [ %i.qu, %bb.ar ]
  %.01026.i.i.i = phi i64 [ %i.rh, %bb.at ], [ %.sroa.04.0.i, %bb.ar ]
  %i.rd = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 15 ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.rf, -2
  br i1 %.not.i17.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.rg = add i8 %i.rf, -1
  store i8 %i.rg, ptr %i.re, align 1, !tbaa !35479
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.i.i
  %i.rh = add i64 %.01026.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.ri = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.rh, i64 range(i64 0, 256) %i.qt) ; 3 uses
  %i.rj = getelementptr inbounds nuw [64 x i8], ptr %i.qs, i64 %i.ri
  %i.rk = icmp eq ptr %i.rj, %i.qa
  br i1 %i.rk, label %.thread.i.i.i, label %.lr.ph.i.i.i

.noexc125:                                        ; preds = %.thread.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.rl = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %.pre-phi
  %i.rm = lshr i64 %.pre363, 8                    ; 5 uses
  %.not.i117 = icmp eq i64 %i.rm, %.pre-phi
  br i1 %.not.i117, label %.noexc30, label %bb.au

bb.au:                                            ; preds = %.noexc125
  %i.rn = trunc i64 %i.rm to i32
  %i.ro = icmp ne i64 %i.rm, 0
  call void @llvm.assume(i1 %i.ro)
  %i.rp = load ptr, ptr %i.da, align 8, !tbaa !48192
  %i.rq = and i64 %i.rm, 4294967295
  %i.rr = getelementptr inbounds nuw [24 x i8], ptr %i.rp, i64 %i.rq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i118 = load i64, ptr %i.rr, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i119 = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i120 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i119, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i118, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i120, ptr %i.bn, align 8
  %i.rs = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i118 to i32
  %i.rt = icmp ult i32 %i.rs, 13
  %i.ru = select i1 %i.rt, ptr %i.bo, ptr %.sroa.2.0.copyload.i.i.i.i.i120
  %i.rv = and i64 %.sroa.0.0.copyload.i.i.i.i.i118, 4294967295
  %i.rw = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.ru, i64 noundef %i.rv)
          to label %.noexc126 unwind label %.loopexit286 ; 2 uses

.noexc126:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.rx = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.rw) ; 2 uses
  %i.ry = lshr i64 %i.rx, 24
  %i.rz = or i64 %i.ry, 128                       ; 2 uses
  %i.sa = add i64 %i.rx, %i.rw
  %i.sb = shl nuw nsw i64 %i.rz, 1
  %i.sc = or disjoint i64 %i.sb, 1
  %i.sd = trunc nuw i64 %i.rz to i8
  %i.se = insertelement <16 x i8> poison, i8 %i.sd, i64 0
  %i.sf = shufflevector <16 x i8> %i.se, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.sg = load i64, ptr %i.eo, align 8, !tbaa !1619
  %i.sh = and i64 %i.sg, 255
  %i.si = load ptr, ptr %i.db, align 8, !tbaa !48136
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.noexc126
  %.0.i.i122 = phi i64 [ %i.sa, %.noexc126 ], [ %i.sz, %bb.ax ] ; 2 uses
  %i.sj = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i122, i64 range(i64 0, 256) %i.sh)
  %i.sk = getelementptr inbounds nuw [64 x i8], ptr %i.si, i64 %i.sj ; 3 uses
  %i.sl = load <16 x i8>, ptr %i.sk, align 16
  %i.sm = icmp eq <16 x i8> %i.sl, %i.sf
  %i.sn = bitcast <16 x i1> %i.sm to i16
  %i.so = and i16 %i.sn, 4095
  %i.sp = zext nneg i16 %i.so to i32
  %i.sq = icmp ne ptr %i.sk, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sk, i64 16 ; 2 uses
  br label %.critedge.i.i124

.critedge.i.i124:                                 ; preds = %bb.aw, %bb.av
  %.sroa.024.0.i = phi i32 [ %i.sp, %bb.av ], [ %i.su, %bb.aw ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i.i124
  %i.ss = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %i.st = add nsw i32 %.sroa.024.0.i, -1
  %i.su = and i32 %i.st, %.sroa.024.0.i
  %i.sv = zext nneg i32 %i.ss to i64              ; 2 uses
  call void @llvm.assume(i1 %i.sq)
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.sv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !3
  %i.sy = icmp eq i32 %i.sx, %i.rn
  br i1 %i.sy, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, label %.critedge.i.i124, !prof !721, !llvm.loop !48221

bb.ax:                                            ; preds = %.critedge.i.i124
  %i.sz = add i64 %i.sc, %.0.i.i122
  br label %bb.av, !llvm.loop !48222

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i: ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.py) ]
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.sv
  store i32 %i.lo, ptr %i.ta, align 4, !tbaa !3
  %i.tb = getelementptr inbounds nuw [24 x i8], ptr %i.py, i64 %i.rm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.rl, ptr noundef nonnull align 1 dereferenceable(24) %i.tb, i64 24, i1 false)
  br label %.noexc30

.noexc30:                                         ; preds = %.noexc40, %.critedge.i.i._crit_edge, %.noexc125, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.tc = load i32, ptr %16, align 8, !tbaa !32779, !noalias !48223
  %i.td = load i32, ptr %i.bp, align 8, !tbaa !32779
  %i.te = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.tf = sext i32 %i.tc to i64
  %sext.i129 = sext i32 %i.td to i64              ; 2 uses
  %indvars.iv.next.i131459 = add nsw i64 %i.tf, 1 ; 3 uses
  %i.tg = trunc nsw i64 %indvars.iv.next.i131459 to i32 ; 3 uses
  store i32 %i.tg, ptr %16, align 8, !tbaa !32779, !noalias !797
  %i.th = icmp eq i64 %indvars.iv.next.i131459, %sext.i129
  br i1 %i.th, label %.noexc31, label %.lr.ph461.preheader

.lr.ph461.preheader:                              ; preds = %.noexc30
  %i.ti = load ptr, ptr %i.te, align 8, !tbaa !5519, !nonnull !797, !align !916 ; 5 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 24
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.tk, null
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 58
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 57
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 59
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  br label %.lr.ph461

bb.ay:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134
  %indvars.iv.next.i131 = add nsw i64 %indvars.iv.next.i131460, 1 ; 3 uses
  %i.tp = trunc nsw i64 %indvars.iv.next.i131 to i32 ; 3 uses
  store i32 %i.tp, ptr %16, align 8, !tbaa !32779, !noalias !797
  %i.tq = icmp eq i64 %indvars.iv.next.i131, %sext.i129
  br i1 %i.tq, label %.noexc31, label %.lr.ph461, !llvm.loop !32789

.lr.ph461:                                        ; preds = %.lr.ph461.preheader, %bb.ay
  %i.tr = phi i32 [ %i.tp, %bb.ay ], [ %i.tg, %.lr.ph461.preheader ] ; 2 uses
  %indvars.iv.next.i131460 = phi i64 [ %indvars.iv.next.i131, %bb.ay ], [ %indvars.iv.next.i131459, %.lr.ph461.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i132, label %.noexc31, label %bb.az

bb.az:                                            ; preds = %.lr.ph461
  %i.ts = load i8, ptr %i.tl, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.tt = trunc nuw i8 %i.ts to i1
  %i.tu = load i8, ptr %i.tm, align 1, !range !796
  %i.tv = trunc nuw i8 %i.tu to i1
  %or.cond.i.i.i.i133 = select i1 %i.tt, i1 true, i1 %i.tv
  br i1 %or.cond.i.i.i.i133, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.tw = lshr i64 %indvars.iv.next.i131460, 6
  %i.tx = and i64 %i.tw, 67108863
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.tx
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !855
  %i.ua = and i64 %indvars.iv.next.i131460, 63
  %i.ub = shl nuw i64 1, %i.ua
  %i.uc = and i64 %i.tz, %i.ub
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134

bb.bb:                                            ; preds = %bb.az
  %i.ud = load i8, ptr %i.tn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.uf = load i64, ptr %i.tk, align 8, !tbaa !855
  %i.ug = and i64 %i.uf, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134

bb.bd:                                            ; preds = %bb.bb
  %i.uh = load ptr, ptr %i.to, align 8, !tbaa !1529
  %i.ui = shl nsw i64 %indvars.iv.next.i131460, 2
  %i.uj = getelementptr inbounds i8, ptr %i.uh, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !3
  %i.ul = zext i32 %i.uk to i64                   ; 2 uses
  %i.um = lshr i64 %i.ul, 6
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %i.um
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !855
  %i.up = and i64 %i.ul, 63
  %i.uq = shl nuw i64 1, %i.up
  %i.ur = and i64 %i.uq, %i.uo
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134: ; preds = %bb.bd, %bb.bc, %bb.ba
  %.0.i.i.i.in.i135 = phi i64 [ %i.uc, %bb.ba ], [ %i.ug, %bb.bc ], [ %i.ur, %bb.bd ]
  %.0.i.i.i.not.i136 = icmp eq i64 %.0.i.i.i.in.i135, 0
  br i1 %.0.i.i.i.not.i136, label %bb.ay, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134..noexc31_crit_edge, !llvm.loop !32789

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134..noexc31_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134
  br label %.noexc31, !llvm.loop !32789

.noexc31:                                         ; preds = %bb.ay, %.lr.ph461, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134..noexc31_crit_edge, %.noexc30
  %.lcssa443 = phi i32 [ %i.tr, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i134..noexc31_crit_edge ], [ %i.tg, %.noexc30 ], [ %i.tp, %bb.ay ], [ %i.tr, %.lr.ph461 ] ; 2 uses
  %i.us = icmp eq i32 %i.ei, %.lcssa443
  br i1 %i.us, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %.noexc31, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  store ptr null, ptr %18, align 8, !tbaa !1533, !alias.scope !48226
  %i.ut = load ptr, ptr %.pre359, align 8, !tbaa !48177, !nonnull !797, !align !916
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_7VarcharEiEEvE6commitEb(ptr noundef nonnull align 8 dereferenceable(216) %i.uu, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.be

bb.be:                                            ; preds = %._crit_edge
  %i.uv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.uw = load ptr, ptr %18, align 8, !tbaa !1533
  %.not.i144 = icmp eq ptr %i.uw, null
  br i1 %.not.i144, label %_ZN8facebook5velox6StatusD2Ev.exit145, label %bb.bf, !prof !721

bb.bf:                                            ; preds = %bb.be
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
  br label %_ZN8facebook5velox6StatusD2Ev.exit145

_ZN8facebook5velox6StatusD2Ev.exit145:            ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %._crit_edge
  %i.ux = load ptr, ptr %18, align 8, !tbaa !1533
  %.not.i146 = icmp eq ptr %i.ux, null
  br i1 %.not.i146, label %_ZN8facebook5velox6StatusD2Ev.exit147, label %bb.bg, !prof !721

bb.bg:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
  br label %_ZN8facebook5velox6StatusD2Ev.exit147

_ZN8facebook5velox6StatusD2Ev.exit147:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

.loopexit286:                                     ; preds = %bb.ae, %bb.ah, %bb.ai, %exp2.i.i.i.noexc, %.noexc101, %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharEiE6resizeEi.exit.i, %bb.aj, %bb.al, %bb.am, %.noexc44, %bb.au, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc81, %.noexc21
  %lpad.loopexit287 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %.noexc18, %.noexc15
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %.loopexit286, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit145
  %eh.lpad-body = phi { ptr, i32 } [ %i.uv, %_ZN8facebook5velox6StatusD2Ev.exit145 ], [ %lpad.loopexit, %.loopexit286 ], [ %lpad.loopexit287, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp288, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.uy = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.uz = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.va = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #33
  %i.vb = icmp eq i32 %i.uz, %i.va
  br i1 %i.vb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.body
  %i.vc = call ptr @__cxa_begin_catch(ptr %i.uy) #33
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !1568 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 144
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !7  ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 152
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !14
  %i.vj = icmp eq i64 %i.vi, 4
  br i1 %i.vj, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.bh
  %i.vk = load i8, ptr %i.vg, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.vk, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.vm, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 2
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.vo, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vg, i64 3
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.vq, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.vr = load ptr, ptr %i.bq, align 8, !tbaa !48229, !nonnull !797, !align !916
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !48230, !nonnull !797, !align !916 ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16 ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !78
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  %i.vw = load ptr, ptr %i.vv, align 8
end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_7VarcharEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim:bb.a
  %i.os = icmp eq <16 x i8> %i.or, %i.ol
  %i.ot = bitcast <16 x i1> %i.os to i16
  %i.ou = and i16 %i.ot, 4095
  %i.ov = zext nneg i16 %i.ou to i32
  %i.ow = icmp ne ptr %i.oq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc70, %.noexc69
  %.sroa.0211.0 = phi i32 [ %i.ov, %.noexc69 ], [ %i.pa, %.noexc70 ] ; 4 uses
  %.not289 = icmp eq i32 %.sroa.0211.0, 0
  br i1 %.not289, label %.noexc71, label %.noexc70

.noexc70:                                         ; preds = %.critedge.i
  %i.oy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0211.0, i1 true)
  %i.oz = add nsw i32 %.sroa.0211.0, -1
  %i.pa = and i32 %i.oz, %.sroa.0211.0
  %i.pb = zext nneg i32 %i.oy to i64              ; 4 uses
  call void @llvm.assume(i1 %i.ow)
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !3
  %i.pe = icmp eq i32 %i.kx, %i.pd
  br i1 %i.pe, label %.noexc62, label %.critedge.i, !prof !721, !llvm.loop !48221

.noexc71:                                         ; preds = %.critedge.i
  %i.pf = add i64 %i.oi, %.0.i
  br label %.noexc69, !llvm.loop !48222

.noexc62:                                         ; preds = %.noexc70
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pb
  %i.ph = load ptr, ptr %i.cj, align 8, !tbaa !48192 ; 4 uses
  %i.pi = getelementptr inbounds i8, ptr %i.pg, i64 -16
  %.neg.i.i.i = mul nsw i64 %i.pb, -4
  %i.pj = getelementptr inbounds i8, ptr %i.pi, i64 %.neg.i.i.i ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 14 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 2, !tbaa !35483
  %.not.i164 = icmp ult i8 %i.pl, 16
  br i1 %.not.i164, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc62
  %i.pm = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %.pre-phi ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.pm, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.aq, align 8
  %i.pn = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.po = icmp ult i32 %i.pn, 13
  %i.pp = select i1 %i.po, ptr %i.ar, ptr %.sroa.2.0.copyload.i.i.i
  %i.pq = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.pr = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.pp, i64 noundef %i.pq)
          to label %.noexc167 unwind label %.loopexit290 ; 2 uses

.noexc167:                                        ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ps = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.pr) ; 2 uses
  %i.pt = add i64 %i.ps, %i.pr
  %i.pu = lshr i64 %i.ps, 23
  %i.pv = or i64 %i.pu, 257
  %.pre361 = load i64, ptr %i.dx, align 8, !tbaa !1619
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc167, %.noexc62
  %i.pw = phi i64 [ %i.om, %.noexc62 ], [ %.pre361, %.noexc167 ]
  %.sroa.5.0.i = phi i64 [ 1, %.noexc62 ], [ %i.pv, %.noexc167 ]
  %.sroa.04.0.i = phi i64 [ 0, %.noexc62 ], [ %i.pt, %.noexc167 ] ; 2 uses
  %i.px = add i64 %i.pw, -256
  store i64 %i.px, ptr %i.dx, align 8, !tbaa !1619
  %i.py = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pb ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !13
  %.not.i.i.i.i165 = icmp sgt i8 %i.pz, -1
  br i1 %.not.i.i.i.i165, label %bb.aj, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %bb.ai
  store i8 0, ptr %i.py, align 1, !tbaa !13
  %i.qa = load i8, ptr %i.pk, align 2, !tbaa !35483
  %.not.i.i.i166 = icmp ult i8 %i.qa, 16
  %.pre362 = load i64, ptr %i.dx, align 8, !tbaa !1619 ; 2 uses
  br i1 %.not.i.i.i166, label %.noexc128, label %bb.ak

bb.ak:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.qb = load ptr, ptr %i.ck, align 8, !tbaa !48136 ; 4 uses
  %i.qc = and i64 %.pre362, 255                   ; 2 uses
  %i.qd = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %i.qc) ; 3 uses
  %i.qe = getelementptr inbounds nuw [64 x i8], ptr %i.qb, i64 %i.qd
  %i.qf = icmp eq ptr %i.qe, %i.pj
  br i1 %i.qf, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.am, %bb.ak
  %.011.lcssa.i.i.i = phi i8 [ 0, %bb.ak ], [ -16, %bb.am ]
  %i.qg = phi i64 [ %i.qd, %bb.ak ], [ %i.qr, %bb.am ]
  %i.qh = getelementptr inbounds nuw [64 x i8], ptr %i.qb, i64 %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 14 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 2, !tbaa !35483
  %i.qk = add i8 %i.qj, %.011.lcssa.i.i.i
  store i8 %i.qk, ptr %i.qi, align 2, !tbaa !35483
  br label %.noexc128

.lr.ph.i.i.i:                                     ; preds = %bb.ak, %bb.am
  %i.ql = phi i64 [ %i.qr, %bb.am ], [ %i.qd, %bb.ak ]
  %.01026.i.i.i = phi i64 [ %i.qq, %bb.am ], [ %.sroa.04.0.i, %bb.ak ]
  %i.qm = getelementptr inbounds nuw [64 x i8], ptr %i.qb, i64 %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 15 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.qo, -2
  br i1 %.not.i17.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.qp = add i8 %i.qo, -1
  store i8 %i.qp, ptr %i.qn, align 1, !tbaa !35479
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i
  %i.qq = add i64 %.01026.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.qr = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.qq, i64 range(i64 0, 256) %i.qc) ; 3 uses
  %i.qs = getelementptr inbounds nuw [64 x i8], ptr %i.qb, i64 %i.qr
  %i.qt = icmp eq ptr %i.qs, %i.pj
  br i1 %i.qt, label %.thread.i.i.i, label %.lr.ph.i.i.i

.noexc128:                                        ; preds = %.thread.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %.pre-phi
  %i.qv = lshr i64 %.pre362, 8                    ; 5 uses
  %.not.i120 = icmp eq i64 %i.qv, %.pre-phi
  br i1 %.not.i120, label %.noexc37, label %bb.an

bb.an:                                            ; preds = %.noexc128
  %i.qw = trunc i64 %i.qv to i32
  %i.qx = icmp ne i64 %i.qv, 0
  call void @llvm.assume(i1 %i.qx)
  %i.qy = load ptr, ptr %i.cj, align 8, !tbaa !48192
  %i.qz = and i64 %i.qv, 4294967295
  %i.ra = getelementptr inbounds nuw [24 x i8], ptr %i.qy, i64 %i.qz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i121 = load i64, ptr %i.ra, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i122 = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i123 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i122, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i121, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i123, ptr %i.as, align 8
  %i.rb = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i121 to i32
  %i.rc = icmp ult i32 %i.rb, 13
  %i.rd = select i1 %i.rc, ptr %i.at, ptr %.sroa.2.0.copyload.i.i.i.i.i123
  %i.re = and i64 %.sroa.0.0.copyload.i.i.i.i.i121, 4294967295
  %i.rf = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.rd, i64 noundef %i.re)
          to label %.noexc129 unwind label %.loopexit290 ; 2 uses

.noexc129:                                        ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.rg = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.rf) ; 2 uses
  %i.rh = lshr i64 %i.rg, 24
  %i.ri = or i64 %i.rh, 128                       ; 2 uses
  %i.rj = add i64 %i.rg, %i.rf
  %i.rk = shl nuw nsw i64 %i.ri, 1
  %i.rl = or disjoint i64 %i.rk, 1
  %i.rm = trunc nuw i64 %i.ri to i8
  %i.rn = insertelement <16 x i8> poison, i8 %i.rm, i64 0
  %i.ro = shufflevector <16 x i8> %i.rn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.rp = load i64, ptr %i.dx, align 8, !tbaa !1619
  %i.rq = and i64 %i.rp, 255
  %i.rr = load ptr, ptr %i.ck, align 8, !tbaa !48136
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.noexc129
  %.0.i.i125 = phi i64 [ %i.rj, %.noexc129 ], [ %i.si, %bb.aq ] ; 2 uses
  %i.rs = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i125, i64 range(i64 0, 256) %i.rq)
  %i.rt = getelementptr inbounds nuw [64 x i8], ptr %i.rr, i64 %i.rs ; 3 uses
  %i.ru = load <16 x i8>, ptr %i.rt, align 16
  %i.rv = icmp eq <16 x i8> %i.ru, %i.ro
  %i.rw = bitcast <16 x i1> %i.rv to i16
  %i.rx = and i16 %i.rw, 4095
  %i.ry = zext nneg i16 %i.rx to i32
  %i.rz = icmp ne ptr %i.rt, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rt, i64 16 ; 2 uses
  br label %.critedge.i.i127

.critedge.i.i127:                                 ; preds = %bb.ap, %bb.ao
  %.sroa.024.0.i = phi i32 [ %i.ry, %bb.ao ], [ %i.sd, %bb.ap ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge.i.i127
  %i.sb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %i.sc = add nsw i32 %.sroa.024.0.i, -1
  %i.sd = and i32 %i.sc, %.sroa.024.0.i
  %i.se = zext nneg i32 %i.sb to i64              ; 2 uses
  call void @llvm.assume(i1 %i.rz)
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !3
  %i.sh = icmp eq i32 %i.sg, %i.qw
  br i1 %i.sh, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, label %.critedge.i.i127, !prof !721, !llvm.loop !48221

bb.aq:                                            ; preds = %.critedge.i.i127
  %i.si = add i64 %i.rl, %.0.i.i125
  br label %bb.ao, !llvm.loop !48222

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i: ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ph) ]
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.se
  store i32 %i.kx, ptr %i.sj, align 4, !tbaa !3
  %i.sk = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %i.qv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.qu, ptr noundef nonnull align 1 dereferenceable(24) %i.sk, i64 24, i1 false)
  br label %.noexc37

.noexc37:                                         ; preds = %.noexc47, %.critedge.i.i._crit_edge, %.noexc128, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  %i.sl = load i32, ptr %17, align 8, !tbaa !32779, !noalias !48291
  %i.sm = load i32, ptr %i.au, align 8, !tbaa !32779
  %i.sn = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.so = sext i32 %i.sl to i64
  %sext.i132 = sext i32 %i.sm to i64              ; 2 uses
  %indvars.iv.next.i134453 = add nsw i64 %i.so, 1 ; 3 uses
  %i.sp = trunc nsw i64 %indvars.iv.next.i134453 to i32 ; 3 uses
  store i32 %i.sp, ptr %17, align 8, !tbaa !32779, !noalias !797
  %i.sq = icmp eq i64 %indvars.iv.next.i134453, %sext.i132
  br i1 %i.sq, label %.noexc38, label %.lr.ph455.preheader

.lr.ph455.preheader:                              ; preds = %.noexc37
  %i.sr = load ptr, ptr %i.sn, align 8, !tbaa !5519, !nonnull !797, !align !916 ; 5 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 24
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i135 = icmp eq ptr %i.st, null
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 58
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 57
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sr, i64 59
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  br label %.lr.ph455

bb.ar:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137
  %indvars.iv.next.i134 = add nsw i64 %indvars.iv.next.i134454, 1 ; 3 uses
  %i.sy = trunc nsw i64 %indvars.iv.next.i134 to i32 ; 3 uses
  store i32 %i.sy, ptr %17, align 8, !tbaa !32779, !noalias !797
  %i.sz = icmp eq i64 %indvars.iv.next.i134, %sext.i132
  br i1 %i.sz, label %.noexc38, label %.lr.ph455, !llvm.loop !32789

.lr.ph455:                                        ; preds = %.lr.ph455.preheader, %bb.ar
  %i.ta = phi i32 [ %i.sy, %bb.ar ], [ %i.sp, %.lr.ph455.preheader ] ; 2 uses
  %indvars.iv.next.i134454 = phi i64 [ %indvars.iv.next.i134, %bb.ar ], [ %indvars.iv.next.i134453, %.lr.ph455.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i135, label %.noexc38, label %bb.as

bb.as:                                            ; preds = %.lr.ph455
  %i.tb = load i8, ptr %i.su, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.tc = trunc nuw i8 %i.tb to i1
  %i.td = load i8, ptr %i.sv, align 1, !range !796
  %i.te = trunc nuw i8 %i.td to i1
  %or.cond.i.i.i.i136 = select i1 %i.tc, i1 true, i1 %i.te
  br i1 %or.cond.i.i.i.i136, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tf = lshr i64 %indvars.iv.next.i134454, 6
  %i.tg = and i64 %i.tf, 67108863
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.tg
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !855
  %i.tj = and i64 %indvars.iv.next.i134454, 63
  %i.tk = shl nuw i64 1, %i.tj
  %i.tl = and i64 %i.ti, %i.tk
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137

bb.au:                                            ; preds = %bb.as
  %i.tm = load i8, ptr %i.sw, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.tn = trunc nuw i8 %i.tm to i1
  br i1 %i.tn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.to = load i64, ptr %i.st, align 8, !tbaa !855
  %i.tp = and i64 %i.to, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137

bb.aw:                                            ; preds = %bb.au
  %i.tq = load ptr, ptr %i.sx, align 8, !tbaa !1529
  %i.tr = shl nsw i64 %indvars.iv.next.i134454, 2
  %i.ts = getelementptr inbounds i8, ptr %i.tq, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !3
  %i.tu = zext i32 %i.tt to i64                   ; 2 uses
  %i.tv = lshr i64 %i.tu, 6
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.tv
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !855
  %i.ty = and i64 %i.tu, 63
  %i.tz = shl nuw i64 1, %i.ty
  %i.ua = and i64 %i.tz, %i.tx
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137: ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i.i.i.in.i138 = phi i64 [ %i.tl, %bb.at ], [ %i.tp, %bb.av ], [ %i.ua, %bb.aw ]
  %.0.i.i.i.not.i139 = icmp eq i64 %.0.i.i.i.in.i138, 0
  br i1 %.0.i.i.i.not.i139, label %bb.ar, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137..noexc38_crit_edge, !llvm.loop !32789

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137..noexc38_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137
  br label %.noexc38, !llvm.loop !32789

.noexc38:                                         ; preds = %bb.ar, %.lr.ph455, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137..noexc38_crit_edge, %.noexc37
  %.lcssa441 = phi i32 [ %i.ta, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i137..noexc38_crit_edge ], [ %i.sp, %.noexc37 ], [ %i.sy, %bb.ar ], [ %i.ta, %.lr.ph455 ] ; 2 uses
  %i.ub = icmp eq i32 %i.dr, %.lcssa441
  br i1 %i.ub, label %._crit_edge, label %bb.t

._crit_edge:                                      ; preds = %.noexc38, %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  store ptr null, ptr %19, align 8, !tbaa !1533, !alias.scope !48294
  %i.uc = load ptr, ptr %i.ba, align 8, !tbaa !48177, !nonnull !797, !align !916
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_7VarcharEiEEvE6commitEb(ptr noundef nonnull align 8 dereferenceable(216) %i.ud, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.ax

bb.ax:                                            ; preds = %._crit_edge
  %i.ue = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.uf = load ptr, ptr %19, align 8, !tbaa !1533
  %.not.i147 = icmp eq ptr %i.uf, null
  br i1 %.not.i147, label %_ZN8facebook5velox6StatusD2Ev.exit148, label %bb.ay, !prof !721

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %_ZN8facebook5velox6StatusD2Ev.exit148

_ZN8facebook5velox6StatusD2Ev.exit148:            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %._crit_edge
  %i.ug = load ptr, ptr %19, align 8, !tbaa !1533
  %.not.i149 = icmp eq ptr %i.ug, null
  br i1 %.not.i149, label %_ZN8facebook5velox6StatusD2Ev.exit150, label %bb.az, !prof !721

bb.az:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %_ZN8facebook5velox6StatusD2Ev.exit150

_ZN8facebook5velox6StatusD2Ev.exit150:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

.loopexit290:                                     ; preds = %bb.x, %bb.aa, %bb.ab, %exp2.i.i.i.noexc, %.noexc104, %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharEiE6resizeEi.exit.i, %bb.ac, %bb.ae, %bb.af, %.noexc51, %bb.an, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc86, %.noexc28
  %lpad.loopexit291 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ad, %.noexc25, %.noexc22
  %lpad.loopexit.split-lp292 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %.loopexit290, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit148
  %eh.lpad-body = phi { ptr, i32 } [ %i.ue, %_ZN8facebook5velox6StatusD2Ev.exit148 ], [ %lpad.loopexit, %.loopexit290 ], [ %lpad.loopexit291, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp292, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.uh = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.ui = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.uj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #33
  %i.uk = icmp eq i32 %i.ui, %i.uj
  br i1 %i.uk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.body
  %i.ul = call ptr @__cxa_begin_catch(ptr %i.uh) #33
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !1568 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 144
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !7  ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 152
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !14
  %i.us = icmp eq i64 %i.ur, 4
  br i1 %i.us, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ba
  %i.ut = load i8, ptr %i.up, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.ut, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 1
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.uv, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.up, i64 2
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ux, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.up, i64 3
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.uz, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.va = load ptr, ptr %i.av, align 8, !tbaa !48229, !nonnull !797, !align !916
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !48230, !nonnull !797, !align !916 ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !78
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vf = load ptr, ptr %i.ve, align 8
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_7VarcharEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi:bb.a
  %i.qc = icmp eq <16 x i8> %i.qb, %i.pv
  %i.qd = bitcast <16 x i1> %i.qc to i16
  %i.qe = and i16 %i.qd, 4095
  %i.qf = zext nneg i16 %i.qe to i32
  %i.qg = icmp ne ptr %i.qa, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  br label %.critedge.i.i96

.critedge.i.i96:                                  ; preds = %.noexc130, %.noexc129
  %.sroa.0533.0 = phi i32 [ %i.qf, %.noexc129 ], [ %i.qk, %.noexc130 ] ; 4 uses
  %.not688 = icmp eq i32 %.sroa.0533.0, 0
  br i1 %.not688, label %.noexc131, label %.noexc130

.noexc130:                                        ; preds = %.critedge.i.i96
  %i.qi = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0533.0, i1 true)
  %i.qj = add nsw i32 %.sroa.0533.0, -1
  %i.qk = and i32 %i.qj, %.sroa.0533.0
  %i.ql = zext nneg i32 %i.qi to i64              ; 4 uses
  call void @llvm.assume(i1 %i.qg), !noalias !48307
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !3, !noalias !48307
  %i.qo = icmp eq i32 %i.mh, %i.qn
  br i1 %i.qo, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i, label %.critedge.i.i96, !prof !721, !llvm.loop !48221

.noexc131:                                        ; preds = %.critedge.i.i96
  %i.qp = add i64 %i.ps, %.0.i.i94
  br label %.noexc129, !llvm.loop !48222

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i: ; preds = %.noexc130
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.ql
  %i.qr = load ptr, ptr %i.dt, align 8, !tbaa !48192 ; 4 uses
  %i.qs = getelementptr inbounds i8, ptr %i.qq, i64 -16
  %.neg.i.i.i = mul nsw i64 %i.ql, -4
  %i.qt = getelementptr inbounds i8, ptr %i.qs, i64 %.neg.i.i.i ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 14 ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 2, !tbaa !35483
  %.not.i411 = icmp ult i8 %i.qv, 16
  br i1 %.not.i411, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %i.qr, i64 %.pre-phi855 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.qw, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %3, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.cd, align 8
  %i.qx = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.qy = icmp ult i32 %i.qx, 13
  %i.qz = select i1 %i.qy, ptr %i.ce, ptr %.sroa.2.0.copyload.i.i.i
  %i.ra = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.rb = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.qz, i64 noundef %i.ra)
          to label %.noexc414 unwind label %.loopexit689 ; 2 uses

.noexc414:                                        ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.rc = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.rb) ; 2 uses
  %i.rd = add i64 %i.rc, %i.rb
  %i.re = lshr i64 %i.rc, 23
  %i.rf = or i64 %i.re, 257
  %.pre849 = load i64, ptr %i.fh, align 8, !tbaa !1619
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc414, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i
  %i.rg = phi i64 [ %i.pw, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i ], [ %.pre849, %.noexc414 ]
  %.sroa.5.0.i = phi i64 [ 1, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i ], [ %i.rf, %.noexc414 ]
  %.sroa.04.0.i = phi i64 [ 0, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i ], [ %i.rd, %.noexc414 ] ; 2 uses
  %i.rh = add i64 %i.rg, -256
  store i64 %i.rh, ptr %i.fh, align 8, !tbaa !1619
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.ql ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !13
  %.not.i.i.i.i412 = icmp sgt i8 %i.rj, -1
  br i1 %.not.i.i.i.i412, label %bb.ak, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %bb.aj
  store i8 0, ptr %i.ri, align 1, !tbaa !13
  %i.rk = load i8, ptr %i.qu, align 2, !tbaa !35483
  %.not.i.i.i413 = icmp ult i8 %i.rk, 16
  %.pre850 = load i64, ptr %i.fh, align 8, !tbaa !1619 ; 2 uses
  br i1 %.not.i.i.i413, label %.noexc198, label %bb.al

bb.al:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.rl = load ptr, ptr %i.du, align 8, !tbaa !48136 ; 4 uses
  %i.rm = and i64 %.pre850, 255                   ; 2 uses
  %i.rn = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %i.rm) ; 3 uses
  %i.ro = getelementptr inbounds nuw [64 x i8], ptr %i.rl, i64 %i.rn
  %i.rp = icmp eq ptr %i.ro, %i.qt
  br i1 %i.rp, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.an, %bb.al
  %.011.lcssa.i.i.i = phi i8 [ 0, %bb.al ], [ -16, %bb.an ]
  %i.rq = phi i64 [ %i.rn, %bb.al ], [ %i.sb, %bb.an ]
  %i.rr = getelementptr inbounds nuw [64 x i8], ptr %i.rl, i64 %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 14 ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 2, !tbaa !35483
  %i.ru = add i8 %i.rt, %.011.lcssa.i.i.i
  store i8 %i.ru, ptr %i.rs, align 2, !tbaa !35483
  br label %.noexc198

.lr.ph.i.i.i:                                     ; preds = %bb.al, %bb.an
  %i.rv = phi i64 [ %i.sb, %bb.an ], [ %i.rn, %bb.al ]
  %.01026.i.i.i = phi i64 [ %i.sa, %bb.an ], [ %.sroa.04.0.i, %bb.al ]
  %i.rw = getelementptr inbounds nuw [64 x i8], ptr %i.rl, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 15 ; 2 uses
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.ry, -2
  br i1 %.not.i17.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i
  %i.rz = add i8 %i.ry, -1
  store i8 %i.rz, ptr %i.rx, align 1, !tbaa !35479
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.i.i
  %i.sa = add i64 %.01026.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.sb = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.sa, i64 range(i64 0, 256) %i.rm) ; 3 uses
  %i.sc = getelementptr inbounds nuw [64 x i8], ptr %i.rl, i64 %i.sb
  %i.sd = icmp eq ptr %i.sc, %i.qt
  br i1 %i.sd, label %.thread.i.i.i, label %.lr.ph.i.i.i

.noexc198:                                        ; preds = %.thread.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.se = getelementptr inbounds nuw [24 x i8], ptr %i.qr, i64 %.pre-phi855
  %i.sf = lshr i64 %.pre850, 8                    ; 5 uses
  %.not.i189 = icmp eq i64 %i.sf, %.pre-phi855
  br i1 %.not.i189, label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %.noexc198
  %i.sg = trunc i64 %i.sf to i32
  %i.sh = icmp ne i64 %i.sf, 0
  call void @llvm.assume(i1 %i.sh)
  %i.si = load ptr, ptr %i.dt, align 8, !tbaa !48192
  %i.sj = and i64 %i.sf, 4294967295
  %i.sk = getelementptr inbounds nuw [24 x i8], ptr %i.si, i64 %i.sj ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i190 = load i64, ptr %i.sk, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i191 = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i192 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i191, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i190, ptr %15, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i192, ptr %i.cf, align 8
  %i.sl = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i190 to i32
  %i.sm = icmp ult i32 %i.sl, 13
  %i.sn = select i1 %i.sm, ptr %i.cg, ptr %.sroa.2.0.copyload.i.i.i.i.i192
  %i.so = and i64 %.sroa.0.0.copyload.i.i.i.i.i190, 4294967295
  %i.sp = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.sn, i64 noundef %i.so)
          to label %.noexc199 unwind label %.loopexit689 ; 2 uses

.noexc199:                                        ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.sq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sp) ; 2 uses
  %i.sr = lshr i64 %i.sq, 24
  %i.ss = or i64 %i.sr, 128                       ; 2 uses
  %i.st = add i64 %i.sq, %i.sp
  %i.su = shl nuw nsw i64 %i.ss, 1
  %i.sv = or disjoint i64 %i.su, 1
  %i.sw = trunc nuw i64 %i.ss to i8
  %i.sx = insertelement <16 x i8> poison, i8 %i.sw, i64 0
  %i.sy = shufflevector <16 x i8> %i.sx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.sz = load i64, ptr %i.fh, align 8, !tbaa !1619
  %i.ta = and i64 %i.sz, 255
  %i.tb = load ptr, ptr %i.du, align 8, !tbaa !48136
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.noexc199
  %.0.i.i194 = phi i64 [ %i.st, %.noexc199 ], [ %i.ts, %bb.ar ] ; 2 uses
  %i.tc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i194, i64 range(i64 0, 256) %i.ta)
  %i.td = getelementptr inbounds nuw [64 x i8], ptr %i.tb, i64 %i.tc ; 3 uses
  %i.te = load <16 x i8>, ptr %i.td, align 16
  %i.tf = icmp eq <16 x i8> %i.te, %i.sy
  %i.tg = bitcast <16 x i1> %i.tf to i16
  %i.th = and i16 %i.tg, 4095
  %i.ti = zext nneg i16 %i.th to i32
  %i.tj = icmp ne ptr %i.td, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.tk = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  br label %.critedge.i.i196

.critedge.i.i196:                                 ; preds = %bb.aq, %bb.ap
  %.sroa.024.0.i = phi i32 [ %i.ti, %bb.ap ], [ %i.tn, %bb.aq ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i.i196
  %i.tl = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %i.tm = add nsw i32 %.sroa.024.0.i, -1
  %i.tn = and i32 %i.tm, %.sroa.024.0.i
  %i.to = zext nneg i32 %i.tl to i64              ; 2 uses
  call void @llvm.assume(i1 %i.tj)
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !3
  %i.tr = icmp eq i32 %i.tq, %i.sg
  br i1 %i.tr, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i197, label %.critedge.i.i196, !prof !721, !llvm.loop !48221

bb.ar:                                            ; preds = %.critedge.i.i196
  %i.ts = add i64 %i.sv, %.0.i.i194
  br label %bb.ap, !llvm.loop !48222

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i197: ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qr) ]
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.to
  store i32 %i.mh, ptr %i.tt, align 4, !tbaa !3
  %i.tu = getelementptr inbounds nuw [24 x i8], ptr %i.qr, i64 %i.sf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.se, ptr noundef nonnull align 1 dereferenceable(24) %i.tu, i64 24, i1 false)
  br label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i

_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i: ; preds = %.noexc119, %.critedge.i.i.i._crit_edge, %.noexc198, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i197, %.noexc113
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33, !noalias !48307
  %i.tv = load i32, ptr %28, align 8, !tbaa !32779, !noalias !48331
  %i.tw = load i32, ptr %i.ch, align 8, !tbaa !32779
  %i.tx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.ty = sext i32 %i.tv to i64
  %sext.i202 = sext i32 %i.tw to i64              ; 2 uses
  %indvars.iv.next.i2041037 = add nsw i64 %i.ty, 1 ; 3 uses
  %i.tz = trunc nsw i64 %indvars.iv.next.i2041037 to i32 ; 3 uses
  store i32 %i.tz, ptr %28, align 8, !tbaa !32779, !noalias !797
  %i.ua = icmp eq i64 %indvars.iv.next.i2041037, %sext.i202
  br i1 %i.ua, label %.noexc135, label %.lr.ph1039.preheader

.lr.ph1039.preheader:                             ; preds = %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i
  %i.ub = load ptr, ptr %i.tx, align 8, !tbaa !5519, !nonnull !797, !align !916 ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i205 = icmp eq ptr %i.ud, null
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 58
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 57
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 59
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  br label %.lr.ph1039

bb.as:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207
  %indvars.iv.next.i204 = add nsw i64 %indvars.iv.next.i2041038, 1 ; 3 uses
  %i.ui = trunc nsw i64 %indvars.iv.next.i204 to i32 ; 3 uses
  store i32 %i.ui, ptr %28, align 8, !tbaa !32779, !noalias !797
  %i.uj = icmp eq i64 %indvars.iv.next.i204, %sext.i202
  br i1 %i.uj, label %.noexc135, label %.lr.ph1039, !llvm.loop !32789

.lr.ph1039:                                       ; preds = %.lr.ph1039.preheader, %bb.as
  %i.uk = phi i32 [ %i.ui, %bb.as ], [ %i.tz, %.lr.ph1039.preheader ] ; 2 uses
  %indvars.iv.next.i2041038 = phi i64 [ %indvars.iv.next.i204, %bb.as ], [ %indvars.iv.next.i2041037, %.lr.ph1039.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i205, label %.noexc135, label %bb.at

bb.at:                                            ; preds = %.lr.ph1039
  %i.ul = load i8, ptr %i.ue, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.um = trunc nuw i8 %i.ul to i1
  %i.un = load i8, ptr %i.uf, align 1, !range !796
  %i.uo = trunc nuw i8 %i.un to i1
  %or.cond.i.i.i.i206 = select i1 %i.um, i1 true, i1 %i.uo
  br i1 %or.cond.i.i.i.i206, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.up = lshr i64 %indvars.iv.next.i2041038, 6
  %i.uq = and i64 %i.up, 67108863
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.uq
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !855
  %i.ut = and i64 %indvars.iv.next.i2041038, 63
  %i.uu = shl nuw i64 1, %i.ut
  %i.uv = and i64 %i.us, %i.uu
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207

bb.av:                                            ; preds = %bb.at
  %i.uw = load i8, ptr %i.ug, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.uy = load i64, ptr %i.ud, align 8, !tbaa !855
  %i.uz = and i64 %i.uy, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207

bb.ax:                                            ; preds = %bb.av
  %i.va = load ptr, ptr %i.uh, align 8, !tbaa !1529
  %i.vb = shl nsw i64 %indvars.iv.next.i2041038, 2
  %i.vc = getelementptr inbounds i8, ptr %i.va, i64 %i.vb
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !3
  %i.ve = zext i32 %i.vd to i64                   ; 2 uses
  %i.vf = lshr i64 %i.ve, 6
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.vf
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !855
  %i.vi = and i64 %i.ve, 63
  %i.vj = shl nuw i64 1, %i.vi
  %i.vk = and i64 %i.vj, %i.vh
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207: ; preds = %bb.ax, %bb.aw, %bb.au
  %.0.i.i.i.in.i208 = phi i64 [ %i.uv, %bb.au ], [ %i.uz, %bb.aw ], [ %i.vk, %bb.ax ]
  %.0.i.i.i.not.i209 = icmp eq i64 %.0.i.i.i.in.i208, 0
  br i1 %.0.i.i.i.not.i209, label %bb.as, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207..noexc135_crit_edge, !llvm.loop !32789

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207..noexc135_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207
  br label %.noexc135, !llvm.loop !32789

.noexc135:                                        ; preds = %bb.as, %.lr.ph1039, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207..noexc135_crit_edge, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i
  %.lcssa1025 = phi i32 [ %i.uk, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i207..noexc135_crit_edge ], [ %i.tz, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox10StringViewEiNS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_iEESt17integral_constantIbLb1EEE9eraseIntoIRKNS_16variadic_noop_fnEEENS1_23VectorContainerIteratorIPSC_EENSL_IPKSC_EEOT_.exit.i ], [ %i.ui, %bb.as ], [ %i.uk, %.lr.ph1039 ] ; 2 uses
  %i.vl = icmp eq i32 %i.fb, %.lcssa1025
  br i1 %i.vl, label %._crit_edge790, label %bb.u

._crit_edge790:                                   ; preds = %.noexc135, %.noexc109
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33, !noalias !48307
  store ptr null, ptr %30, align 8, !tbaa !1533, !alias.scope !48334
  %i.vm = load ptr, ptr %i.ck, align 8, !tbaa !48177, !nonnull !797, !align !916
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_7VarcharEiEEvE6commitEb(ptr noundef nonnull align 8 dereferenceable(216) %i.vn, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit unwind label %bb.ay

bb.ay:                                            ; preds = %._crit_edge790
  %i.vo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.vp = load ptr, ptr %30, align 8, !tbaa !1533
  %.not.i217 = icmp eq ptr %i.vp, null
  br i1 %.not.i217, label %_ZN8facebook5velox6StatusD2Ev.exit218, label %bb.az, !prof !721

bb.az:                                            ; preds = %bb.ay
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
  br label %_ZN8facebook5velox6StatusD2Ev.exit218

_ZN8facebook5velox6StatusD2Ev.exit218:            ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %.body83

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit: ; preds = %._crit_edge790
  %i.vq = load ptr, ptr %30, align 8, !tbaa !1533
  %.not.i219 = icmp eq ptr %i.vq, null
  br i1 %.not.i219, label %_ZN8facebook5velox6StatusD2Ev.exit220, label %bb.ba, !prof !721

bb.ba:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
  br label %_ZN8facebook5velox6StatusD2Ev.exit220

_ZN8facebook5velox6StatusD2Ev.exit220:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clImEEDaSR_.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clImEEDaST_.exit

.loopexit689:                                     ; preds = %bb.y, %bb.ab, %bb.ac, %exp2.i.i.i.noexc, %.noexc173, %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharEiE6resizeEi.exit.i, %bb.ad, %bb.af, %bb.ag, %.noexc126, %bb.ao, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body83

.loopexit.split-lp.loopexit:                      ; preds = %.noexc150, %.noexc110
  %lpad.loopexit690 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body83

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ae, %.noexc107, %.noexc104
  %lpad.loopexit.split-lp691 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body83

.body83:                                          ; preds = %.loopexit689, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit218
  %eh.lpad-body84 = phi { ptr, i32 } [ %i.vo, %_ZN8facebook5velox6StatusD2Ev.exit218 ], [ %lpad.loopexit, %.loopexit689 ], [ %lpad.loopexit690, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp691, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.vr = extractvalue { ptr, i32 } %eh.lpad-body84, 0 ; 2 uses
  %i.vs = extractvalue { ptr, i32 } %eh.lpad-body84, 1 ; 2 uses
  %i.vt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #33
  %i.vu = icmp eq i32 %i.vs, %i.vt
  br i1 %i.vu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.body83
  %i.vv = call ptr @__cxa_begin_catch(ptr %i.vr) #33
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !1568 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 144
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !7  ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 152
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !14
  %i.wc = icmp eq i64 %i.wb, 4
  br i1 %i.wc, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.bb
  %i.wd = load i8, ptr %i.vz, align 1, !tbaa !13
  %or.cond.not.i.i.i = icmp eq i8 %i.wd, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !13
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.wf, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !13
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.wh, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 3
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !13
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.wj, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.wk = load ptr, ptr %i.ci, align 8, !tbaa !48229, !nonnull !797, !align !916
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !48230, !nonnull !797, !align !916 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 16 ; 2 uses
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !78
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wp = load ptr, ptr %i.wo, align 8
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS3_10VectorExecENS0_7VarcharEEESB_NS0_3MapISC_iEENS0_15ConstantCheckerIJNS0_5ArrayISC_EEEEEJSI_EEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSM_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi:bb.a
  %i.alu = icmp eq <16 x i8> %i.alt, %i.aln
  %i.alv = bitcast <16 x i1> %i.alu to i16
  %i.alw = and i16 %i.alv, 4095
  %i.alx = zext nneg i16 %i.alw to i32
  %i.aly = icmp ne ptr %i.als, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.alz = getelementptr inbounds nuw i8, ptr %i.als, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc76, %.noexc75
  %.sroa.0475.0 = phi i32 [ %i.alx, %.noexc75 ], [ %i.amc, %.noexc76 ] ; 4 uses
  %.not686 = icmp eq i32 %.sroa.0475.0, 0
  br i1 %.not686, label %.noexc77, label %.noexc76

.noexc76:                                         ; preds = %.critedge.i
  %i.ama = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0475.0, i1 true)
  %i.amb = add nsw i32 %.sroa.0475.0, -1
  %i.amc = and i32 %i.amb, %.sroa.0475.0
  %i.amd = zext nneg i32 %i.ama to i64            ; 4 uses
  call void @llvm.assume(i1 %i.aly)
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %i.amd
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !3
  %i.amg = icmp eq i32 %i.ahz, %i.amf
  br i1 %i.amg, label %.noexc68, label %.critedge.i, !prof !721, !llvm.loop !48221

.noexc77:                                         ; preds = %.critedge.i
  %i.amh = add i64 %i.alk, %.0.i
  br label %.noexc75, !llvm.loop !48222

.noexc68:                                         ; preds = %.noexc76
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %i.amd
  %i.amj = load ptr, ptr %i.zl, align 8, !tbaa !48192 ; 4 uses
  %i.amk = getelementptr inbounds i8, ptr %i.ami, i64 -16
  %.neg.i.i.i415 = mul nsw i64 %i.amd, -4
  %i.aml = getelementptr inbounds i8, ptr %i.amk, i64 %.neg.i.i.i415 ; 4 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 14 ; 2 uses
  %i.amn = load i8, ptr %i.amm, align 2, !tbaa !35483
  %.not.i416 = icmp ult i8 %i.amn, 16
  br i1 %.not.i416, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.noexc68
  %i.amo = getelementptr inbounds nuw [24 x i8], ptr %i.amj, i64 %.pre-phi ; 2 uses
  %.sroa.0.0.copyload.i.i.i417 = load i64, ptr %i.amo, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i418 = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  %.sroa.2.0.copyload.i.i.i419 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i418, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.copyload.i.i.i417, ptr %2, align 8
  store ptr %.sroa.2.0.copyload.i.i.i419, ptr %i.ap, align 8
  %i.amp = trunc i64 %.sroa.0.0.copyload.i.i.i417 to i32
  %i.amq = icmp ult i32 %i.amp, 13
  %i.amr = select i1 %i.amq, ptr %i.aq, ptr %.sroa.2.0.copyload.i.i.i419
  %i.ams = and i64 %.sroa.0.0.copyload.i.i.i417, 4294967295
  %i.amt = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.amr, i64 noundef %i.ams)
          to label %.noexc430 unwind label %.loopexit700 ; 2 uses

.noexc430:                                        ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.amu = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.amt) ; 2 uses
  %i.amv = add i64 %i.amu, %i.amt
  %i.amw = lshr i64 %i.amu, 23
  %i.amx = or i64 %i.amw, 257
  %.pre853 = load i64, ptr %i.aaz, align 8, !tbaa !1619
  br label %bb.cy

bb.cy:                                            ; preds = %.noexc430, %.noexc68
  %i.amy = phi i64 [ %i.alo, %.noexc68 ], [ %.pre853, %.noexc430 ]
  %.sroa.5.0.i420 = phi i64 [ 1, %.noexc68 ], [ %i.amx, %.noexc430 ]
  %.sroa.04.0.i421 = phi i64 [ 0, %.noexc68 ], [ %i.amv, %.noexc430 ] ; 2 uses
  %i.amz = add i64 %i.amy, -256
  store i64 %i.amz, ptr %i.aaz, align 8, !tbaa !1619
  %i.ana = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.amd ; 2 uses
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !13
  %.not.i.i.i.i422 = icmp sgt i8 %i.anb, -1
  br i1 %.not.i.i.i.i422, label %bb.cz, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i423

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.19) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i423: ; preds = %bb.cy
  store i8 0, ptr %i.ana, align 1, !tbaa !13
  %i.anc = load i8, ptr %i.amm, align 2, !tbaa !35483
  %.not.i.i.i424 = icmp ult i8 %i.anc, 16
  %.pre854 = load i64, ptr %i.aaz, align 8, !tbaa !1619 ; 2 uses
  br i1 %.not.i.i.i424, label %.noexc365, label %bb.da

bb.da:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i423
  %i.and = load ptr, ptr %i.zm, align 8, !tbaa !48136 ; 4 uses
  %i.ane = and i64 %.pre854, 255                  ; 2 uses
  %i.anf = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i421, i64 range(i64 0, 256) %i.ane) ; 3 uses
  %i.ang = getelementptr inbounds nuw [64 x i8], ptr %i.and, i64 %i.anf
  %i.anh = icmp eq ptr %i.ang, %i.aml
  br i1 %i.anh, label %.thread.i.i.i428, label %.lr.ph.i.i.i425

.thread.i.i.i428:                                 ; preds = %bb.dc, %bb.da
  %.011.lcssa.i.i.i429 = phi i8 [ 0, %bb.da ], [ -16, %bb.dc ]
  %i.ani = phi i64 [ %i.anf, %bb.da ], [ %i.ant, %bb.dc ]
  %i.anj = getelementptr inbounds nuw [64 x i8], ptr %i.and, i64 %i.ani
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 14 ; 2 uses
  %i.anl = load i8, ptr %i.ank, align 2, !tbaa !35483
  %i.anm = add i8 %i.anl, %.011.lcssa.i.i.i429
  store i8 %i.anm, ptr %i.ank, align 2, !tbaa !35483
  br label %.noexc365

.lr.ph.i.i.i425:                                  ; preds = %bb.da, %bb.dc
  %i.ann = phi i64 [ %i.ant, %bb.dc ], [ %i.anf, %bb.da ]
  %.01026.i.i.i426 = phi i64 [ %i.ans, %bb.dc ], [ %.sroa.04.0.i421, %bb.da ]
  %i.ano = getelementptr inbounds nuw [64 x i8], ptr %i.and, i64 %i.ann
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 15 ; 2 uses
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !35479 ; 2 uses
  %.not.i17.i.i.i427 = icmp eq i8 %i.anq, -2
  br i1 %.not.i17.i.i.i427, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i425
  %i.anr = add i8 %i.anq, -1
  store i8 %i.anr, ptr %i.anp, align 1, !tbaa !35479
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i.i.i425
  %i.ans = add i64 %.01026.i.i.i426, %.sroa.5.0.i420 ; 2 uses
  %i.ant = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ans, i64 range(i64 0, 256) %i.ane) ; 3 uses
  %i.anu = getelementptr inbounds nuw [64 x i8], ptr %i.and, i64 %i.ant
  %i.anv = icmp eq ptr %i.anu, %i.aml
  br i1 %i.anv, label %.thread.i.i.i428, label %.lr.ph.i.i.i425

.noexc365:                                        ; preds = %.thread.i.i.i428, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i423
  %i.anw = getelementptr inbounds nuw [24 x i8], ptr %i.amj, i64 %.pre-phi
  %i.anx = lshr i64 %.pre854, 8                   ; 5 uses
  %.not.i354 = icmp eq i64 %i.anx, %.pre-phi
  br i1 %.not.i354, label %.noexc43, label %bb.dd

bb.dd:                                            ; preds = %.noexc365
  %i.any = trunc i64 %i.anx to i32
  %i.anz = icmp ne i64 %i.anx, 0
  call void @llvm.assume(i1 %i.anz)
  %i.aoa = load ptr, ptr %i.zl, align 8, !tbaa !48192
  %i.aob = and i64 %i.anx, 4294967295
  %i.aoc = getelementptr inbounds nuw [24 x i8], ptr %i.aoa, i64 %i.aob ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i355 = load i64, ptr %i.aoc, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i356 = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i357 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i356, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i.i.i.i.i355, ptr %4, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i357, ptr %i.ar, align 8
  %i.aod = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i355 to i32
  %i.aoe = icmp ult i32 %i.aod, 13
  %i.aof = select i1 %i.aoe, ptr %i.as, ptr %.sroa.2.0.copyload.i.i.i.i.i357
  %i.aog = and i64 %.sroa.0.0.copyload.i.i.i.i.i355, 4294967295
  %i.aoh = invoke noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.aof, i64 noundef %i.aog)
          to label %.noexc366 unwind label %.loopexit700 ; 2 uses

.noexc366:                                        ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aoi = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.aoh) ; 2 uses
  %i.aoj = lshr i64 %i.aoi, 24
  %i.aok = or i64 %i.aoj, 128                     ; 2 uses
  %i.aol = add i64 %i.aoi, %i.aoh
  %i.aom = shl nuw nsw i64 %i.aok, 1
  %i.aon = or disjoint i64 %i.aom, 1
  %i.aoo = trunc nuw i64 %i.aok to i8
  %i.aop = insertelement <16 x i8> poison, i8 %i.aoo, i64 0
  %i.aoq = shufflevector <16 x i8> %i.aop, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aor = load i64, ptr %i.aaz, align 8, !tbaa !1619
  %i.aos = and i64 %i.aor, 255
  %i.aot = load ptr, ptr %i.zm, align 8, !tbaa !48136
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %.noexc366
  %.0.i.i359 = phi i64 [ %i.aol, %.noexc366 ], [ %i.apk, %bb.dg ] ; 2 uses
  %i.aou = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i359, i64 range(i64 0, 256) %i.aos)
  %i.aov = getelementptr inbounds nuw [64 x i8], ptr %i.aot, i64 %i.aou ; 3 uses
  %i.aow = load <16 x i8>, ptr %i.aov, align 16
  %i.aox = icmp eq <16 x i8> %i.aow, %i.aoq
  %i.aoy = bitcast <16 x i1> %i.aox to i16
  %i.aoz = and i16 %i.aoy, 4095
  %i.apa = zext nneg i16 %i.aoz to i32
  %i.apb = icmp ne ptr %i.aov, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aov, i64 16 ; 2 uses
  br label %.critedge.i.i361

.critedge.i.i361:                                 ; preds = %bb.df, %bb.de
  %.sroa.024.0.i362 = phi i32 [ %i.apa, %bb.de ], [ %i.apf, %bb.df ] ; 4 uses
  %.not44.i363 = icmp eq i32 %.sroa.024.0.i362, 0
  br i1 %.not44.i363, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.critedge.i.i361
  %i.apd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i362, i1 true)
  %i.ape = add nsw i32 %.sroa.024.0.i362, -1
  %i.apf = and i32 %i.ape, %.sroa.024.0.i362
  %i.apg = zext nneg i32 %i.apd to i64            ; 2 uses
  call void @llvm.assume(i1 %i.apb)
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.apg
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !3
  %i.apj = icmp eq i32 %i.api, %i.any
  br i1 %i.apj, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i364, label %.critedge.i.i361, !prof !721, !llvm.loop !48221

bb.dg:                                            ; preds = %.critedge.i.i361
  %i.apk = add i64 %i.aon, %.0.i.i359
  br label %bb.de, !llvm.loop !48222

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i364: ; preds = %bb.df
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amj) ]
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.apg
  store i32 %i.ahz, ptr %i.apl, align 4, !tbaa !3
  %i.apm = getelementptr inbounds nuw [24 x i8], ptr %i.amj, i64 %i.anx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.anw, ptr noundef nonnull align 1 dereferenceable(24) %i.apm, i64 24, i1 false)
  br label %.noexc43

.noexc43:                                         ; preds = %.noexc53, %.critedge.i.i._crit_edge, %.noexc365, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewEivvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSA_8PrefetchE.exit.i364, %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #33
  %i.apn = load i32, ptr %35, align 8, !tbaa !32779, !noalias !48366
  %i.apo = load i32, ptr %i.at, align 8, !tbaa !32779
  %i.app = load ptr, ptr %i.ai, align 8           ; 2 uses
  %i.apq = sext i32 %i.apn to i64
  %sext.i370 = sext i32 %i.apo to i64             ; 2 uses
  %indvars.iv.next.i3721051 = add nsw i64 %i.apq, 1 ; 3 uses
  %i.apr = trunc nsw i64 %indvars.iv.next.i3721051 to i32 ; 3 uses
  store i32 %i.apr, ptr %35, align 8, !tbaa !32779, !noalias !797
  %i.aps = icmp eq i64 %indvars.iv.next.i3721051, %sext.i370
  br i1 %i.aps, label %.noexc44, label %.lr.ph1053.preheader

.lr.ph1053.preheader:                             ; preds = %.noexc43
  %i.apt = load ptr, ptr %i.app, align 8, !tbaa !5519, !nonnull !797, !align !916 ; 5 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 24
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !1530 ; 4 uses
  %.not.i.i.i.i373 = icmp eq ptr %i.apv, null
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apt, i64 58
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apt, i64 57
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apt, i64 59
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  br label %.lr.ph1053

bb.dh:                                            ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375
  %indvars.iv.next.i372 = add nsw i64 %indvars.iv.next.i3721052, 1 ; 3 uses
  %i.aqa = trunc nsw i64 %indvars.iv.next.i372 to i32 ; 3 uses
  store i32 %i.aqa, ptr %35, align 8, !tbaa !32779, !noalias !797
  %i.aqb = icmp eq i64 %indvars.iv.next.i372, %sext.i370
  br i1 %i.aqb, label %.noexc44, label %.lr.ph1053, !llvm.loop !32789

.lr.ph1053:                                       ; preds = %.lr.ph1053.preheader, %bb.dh
  %i.aqc = phi i32 [ %i.aqa, %bb.dh ], [ %i.apr, %.lr.ph1053.preheader ] ; 2 uses
  %indvars.iv.next.i3721052 = phi i64 [ %indvars.iv.next.i372, %bb.dh ], [ %indvars.iv.next.i3721051, %.lr.ph1053.preheader ] ; 4 uses
  br i1 %.not.i.i.i.i373, label %.noexc44, label %bb.di

bb.di:                                            ; preds = %.lr.ph1053
  %i.aqd = load i8, ptr %i.apw, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aqe = trunc nuw i8 %i.aqd to i1
  %i.aqf = load i8, ptr %i.apx, align 1, !range !796
  %i.aqg = trunc nuw i8 %i.aqf to i1
  %or.cond.i.i.i.i374 = select i1 %i.aqe, i1 true, i1 %i.aqg
  br i1 %or.cond.i.i.i.i374, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aqh = lshr i64 %indvars.iv.next.i3721052, 6
  %i.aqi = and i64 %i.aqh, 67108863
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.aqi
  %i.aqk = load i64, ptr %i.aqj, align 8, !tbaa !855
  %i.aql = and i64 %indvars.iv.next.i3721052, 63
  %i.aqm = shl nuw i64 1, %i.aql
  %i.aqn = and i64 %i.aqk, %i.aqm
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375

bb.dk:                                            ; preds = %bb.di
  %i.aqo = load i8, ptr %i.apy, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.aqp = trunc nuw i8 %i.aqo to i1
  br i1 %i.aqp, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aqq = load i64, ptr %i.apv, align 8, !tbaa !855
  %i.aqr = and i64 %i.aqq, 1
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375

bb.dm:                                            ; preds = %bb.dk
  %i.aqs = load ptr, ptr %i.apz, align 8, !tbaa !1529
  %i.aqt = shl nsw i64 %indvars.iv.next.i3721052, 2
  %i.aqu = getelementptr inbounds i8, ptr %i.aqs, i64 %i.aqt
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !3
  %i.aqw = zext i32 %i.aqv to i64                 ; 2 uses
  %i.aqx = lshr i64 %i.aqw, 6
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.aqx
  %i.aqz = load i64, ptr %i.aqy, align 8, !tbaa !855
  %i.ara = and i64 %i.aqw, 63
  %i.arb = shl nuw i64 1, %i.ara
  %i.arc = and i64 %i.arb, %i.aqz
  br label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375: ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i.i.in.i376 = phi i64 [ %i.aqn, %bb.dj ], [ %i.aqr, %bb.dl ], [ %i.arc, %bb.dm ]
  %.0.i.i.i.not.i377 = icmp eq i64 %.0.i.i.i.in.i376, 0
  br i1 %.0.i.i.i.not.i377, label %bb.dh, label %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375..noexc44_crit_edge, !llvm.loop !32789

_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375..noexc44_crit_edge: ; preds = %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375
  br label %.noexc44, !llvm.loop !32789

.noexc44:                                         ; preds = %bb.dh, %.lr.ph1053, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375..noexc44_crit_edge, %.noexc43
  %.lcssa998 = phi i32 [ %i.aqc, %_ZNK8facebook5velox4exec9ArrayViewILb1ENS0_7VarcharEE18SkipNullsContainer21SkipNullsBaseIterator8hasValueEv.exit.i375..noexc44_crit_edge ], [ %i.apr, %.noexc43 ], [ %i.aqa, %bb.dh ], [ %i.aqc, %.lr.ph1053 ] ; 2 uses
  %i.ard = icmp eq i32 %i.aat, %.lcssa998
  br i1 %i.ard, label %._crit_edge, label %bb.cj

._crit_edge:                                      ; preds = %.noexc44, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #33
  store ptr null, ptr %37, align 8, !tbaa !1533, !alias.scope !48369
  %i.are = load ptr, ptr %i.yc, align 8, !tbaa !48177, !nonnull !797, !align !916
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_3MapINS0_7VarcharEiEEvE6commitEb(ptr noundef nonnull align 8 dereferenceable(216) %i.arf, i1 noundef zeroext true)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.dn

bb.dn:                                            ; preds = %._crit_edge
  %i.arg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.arh = load ptr, ptr %37, align 8, !tbaa !1533
  %.not.i388 = icmp eq ptr %i.arh, null
  br i1 %.not.i388, label %_ZN8facebook5velox6StatusD2Ev.exit389, label %bb.do, !prof !721

bb.do:                                            ; preds = %bb.dn
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
  br label %_ZN8facebook5velox6StatusD2Ev.exit389

_ZN8facebook5velox6StatusD2Ev.exit389:            ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %.body

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %._crit_edge
  %i.ari = load ptr, ptr %37, align 8, !tbaa !1533
  %.not.i390 = icmp eq ptr %i.ari, null
  br i1 %.not.i390, label %_ZN8facebook5velox6StatusD2Ev.exit391, label %bb.dp, !prof !721

bb.dp:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
  br label %_ZN8facebook5velox6StatusD2Ev.exit391

_ZN8facebook5velox6StatusD2Ev.exit391:            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES7_NS0_3MapIS8_iEENS0_15ConstantCheckerIJNS0_5ArrayIS8_EEEEEJSE_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSN_SR_ENKUlSR_E_clIiEEDaSR_.exit, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions22ArrayFrequencyFunctionINS1_10VectorExecENS0_7VarcharEEES9_NS0_3MapISA_iEENS0_15ConstantCheckerIJNS0_5ArrayISA_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit

.loopexit700:                                     ; preds = %bb.cn, %bb.cq, %bb.cr, %exp2.i.i.i.noexc331, %.noexc333, %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharEiE6resizeEi.exit.i323, %bb.cs, %bb.cu, %bb.cv, %.noexc57, %bb.dd, %bb.cx
  %lpad.loopexit702 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp701.loopexit:                   ; preds = %.noexc287, %.noexc34
  %lpad.loopexit705 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.loopexit.split-lp701.loopexit.split-lp:          ; preds = %bb.ct, %.noexc31, %.noexc28
  %lpad.loopexit.split-lp706 = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %.loopexit700, %.loopexit.split-lp701.loopexit.split-lp, %.loopexit.split-lp701.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit389
  %eh.lpad-body = phi { ptr, i32 } [ %i.arg, %_ZN8facebook5velox6StatusD2Ev.exit389 ], [ %lpad.loopexit702, %.loopexit700 ], [ %lpad.loopexit705, %.loopexit.split-lp701.loopexit ], [ %lpad.loopexit.split-lp706, %.loopexit.split-lp701.loopexit.split-lp ] ; 3 uses
  %i.arj = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.ark = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.arl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #33
  %i.arm = icmp eq i32 %i.ark, %i.arl
  br i1 %i.arm, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.body
  %i.arn = call ptr @__cxa_begin_catch(ptr %i.arj) #33
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !1568 ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 144
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !7 ; 4 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arp, i64 152
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !14
  %i.aru = icmp eq i64 %i.art, 4
  br i1 %i.aru, label %.lr.ph.i.i.i.preheader.i392.preheader, label %.loopexit699

.lr.ph.i.i.i.preheader.i392.preheader:            ; preds = %bb.dq
  %i.arv = load i8, ptr %i.arr, align 1, !tbaa !13
  %or.cond.not.i.i.i394 = icmp eq i8 %i.arv, 85
  br i1 %or.cond.not.i.i.i394, label %tailrecurse.i.i.i.i395, label %.loopexit699

tailrecurse.i.i.i.i395:                           ; preds = %.lr.ph.i.i.i.preheader.i392.preheader
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arr, i64 1
  %i.arx = load i8, ptr %i.arw, align 1, !tbaa !13
  %or.cond.not.i.i.i394.1 = icmp eq i8 %i.arx, 83
  br i1 %or.cond.not.i.i.i394.1, label %tailrecurse.i.i.i.i395.1, label %.loopexit699

tailrecurse.i.i.i.i395.1:                         ; preds = %tailrecurse.i.i.i.i395
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  %i.arz = load i8, ptr %i.ary, align 1, !tbaa !13
  %or.cond.not.i.i.i394.2 = icmp eq i8 %i.arz, 69
  br i1 %or.cond.not.i.i.i394.2, label %tailrecurse.i.i.i.i395.2, label %.loopexit699

tailrecurse.i.i.i.i395.2:                         ; preds = %tailrecurse.i.i.i.i395.1
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arr, i64 3
  %i.asb = load i8, ptr %i.asa, align 1, !tbaa !13
  %or.cond.not.i.i.i394.3 = icmp eq i8 %i.asb, 82
  br i1 %or.cond.not.i.i.i394.3, label %tailrecurse.i.i.i.i395.3, label %.loopexit699

tailrecurse.i.i.i.i395.3:                         ; preds = %tailrecurse.i.i.i.i395.2
  %i.asc = load ptr, ptr %i.au, align 8, !tbaa !48229, !nonnull !797, !align !916
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !48230, !nonnull !797, !align !916 ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 16 ; 2 uses
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !78
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 32
  %i.ash = load ptr, ptr %i.asg, align 8
end_hunk_11
