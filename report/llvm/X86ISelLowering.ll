Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 338
begin_hunk_0_@_ZL18getFauxShuffleMaskN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIiEERNS4_IS0_EERKNS_12SelectionDAGEjb:bb.a
  %i.nx = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #40
  br i1 %i.nx, label %bb.bo, label %bb.ci

bb.bo:                                            ; preds = %.split1336, %_ZNK4llvm3EVT8isVectorEv.exit852
  %i.ny = getelementptr inbounds nuw i8, ptr %.fca.0.extract321, i64 24
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !468
  %i.oa = icmp eq i32 %i.nz, 167
  br i1 %i.oa, label %bb.bp, label %.critedge13

bb.bp:                                            ; preds = %bb.bo
  %i.ob = getelementptr inbounds nuw i8, ptr %.fca.0.extract321, i64 40 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !638
  %i.od = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %i.oc) ; 2 uses
  %.fca.1.extract318 = extractvalue { i64, i8 } %i.od, 1
  %i.oe = trunc nuw i8 %.fca.1.extract318 to i1
  br i1 %i.oe, label %bb.bq, label %_ZNK4llvm8TypeSizecvmEv.exit853

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit853:                  ; preds = %bb.bp
  %.fca.0.extract317 = extractvalue { i64, i8 } %i.od, 0
  %i.of = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.og = icmp eq i64 %.fca.0.extract317, %i.of
  br i1 %i.og, label %bb.br, label %.critedge13

bb.br:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit853
  %i.oh = load ptr, ptr %i.ob, align 8, !tbaa !638 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !472
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 88
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !654 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !643
  %i.op = icmp ult i32 %i.oo, 65
  %i.oq = load ptr, ptr %i.om, align 8
  %spec.select.i.i.i.i.i854 = select i1 %i.op, ptr %i.om, ptr %i.oq
  %.0.i.i.i.i.i855 = load i64, ptr %spec.select.i.i.i.i.i854, align 8, !tbaa !357
  %.sroa.01161.0.copyload = load ptr, ptr %i.oh, align 8, !tbaa !465 ; 2 uses
  %.sroa.51162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.sroa.51162.0.copyload = load i32, ptr %.sroa.51162.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #39
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.01161.0.copyload, i64 48
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !469
  %i.ot = zext i32 %.sroa.51162.0.copyload to i64
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.os, i64 %i.ot ; 2 uses
  %.sroa.0.0.copyload.i.i856 = load i16, ptr %i.ou, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i857 = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.sroa.21.0.copyload.i.i858 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i857, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i856, ptr %36, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %.sroa.21.0.copyload.i.i858, ptr %i.ov, align 8
  %i.ow = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %36) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #39
  %.sroa.speculated1157 = call i32 @llvm.umax.i32(i32 %i.ow, i32 %i.m) ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.01188.0.copyload, i64 24
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !468
  %i.oz = add i32 %i.oy, -53
  %spec.select.i.i862 = icmp ult i32 %i.oz, 2     ; 3 uses
  br label %bb.bs

.preheader1378:                                   ; preds = %bb.bs
  %i.pa = udiv i32 %.sroa.speculated1157, %i.m    ; 2 uses
  %i.pb = mul i32 %i.pa, %i.in                    ; 3 uses
  %.not7481487 = icmp eq i32 %i.pb, 0
  br i1 %.not7481487, label %._crit_edge1490, label %.lr.ph1489

.lr.ph1489:                                       ; preds = %.preheader1378
  %i.pc = udiv i32 %.sroa.speculated1157, %i.ow
  %i.pd = zext i32 %i.pa to i64
  %i.pe = mul i64 %.0.i.i.i.i.i, %i.pd
  %narrow = select i1 %spec.select.i.i862, i32 0, i32 %.sroa.speculated1157
  %i.pf = trunc i64 %.0.i.i.i.i.i855 to i32
  %i.pg = mul i32 %i.pc, %i.pf
  %i.ph = add i32 %narrow, %i.pg                  ; 2 uses
  %i.pi = load ptr, ptr %3, align 8, !tbaa !83
  %i.pj = getelementptr [4 x i8], ptr %i.pi, i64 %i.pe ; 2 uses
  %i.pk = zext i32 %i.pb to i64                   ; 3 uses
  %min.iters.check1790 = icmp ult i32 %i.pb, 8
  br i1 %min.iters.check1790, label %scalar.ph1789.preheader, label %vector.ph1791

vector.ph1791:                                    ; preds = %.lr.ph1489
  %n.vec1792 = and i64 %i.pk, 4294967288          ; 3 uses
  %broadcast.splatinsert1793 = insertelement <4 x i32> poison, i32 %i.ph, i64 0
  %broadcast.splat1794 = shufflevector <4 x i32> %broadcast.splatinsert1793, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1881 = add <4 x i32> splat (i32 4), %broadcast.splat1794
  br label %vector.body1795

vector.body1795:                                  ; preds = %vector.body1795, %vector.ph1791
  %index1796 = phi i64 [ 0, %vector.ph1791 ], [ %index.next1799, %vector.body1795 ] ; 2 uses
  %vec.ind1797 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph1791 ], [ %vec.ind.next1800, %vector.body1795 ] ; 3 uses
  %i.pl = add <4 x i32> %broadcast.splat1794, %vec.ind1797
  %.reass1882 = add <4 x i32> %vec.ind1797, %invariant.op1881
  %i.pm = getelementptr [4 x i8], ptr %i.pj, i64 %index1796 ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 16
  store <4 x i32> %i.pl, ptr %i.pm, align 4, !tbaa !240
  store <4 x i32> %.reass1882, ptr %i.pn, align 4, !tbaa !240
  %index.next1799 = add nuw i64 %index1796, 8     ; 2 uses
  %vec.ind.next1800 = add <4 x i32> %vec.ind1797, splat (i32 8)
  %i.po = icmp eq i64 %index.next1799, %n.vec1792
  br i1 %i.po, label %middle.block1801, label %vector.body1795, !llvm.loop !4930

middle.block1801:                                 ; preds = %vector.body1795
  %cmp.n1802 = icmp eq i64 %n.vec1792, %i.pk
  br i1 %cmp.n1802, label %._crit_edge1490, label %scalar.ph1789.preheader

scalar.ph1789.preheader:                          ; preds = %.lr.ph1489, %middle.block1801
  %indvars.iv1533.ph = phi i64 [ 0, %.lr.ph1489 ], [ %n.vec1792, %middle.block1801 ]
  br label %scalar.ph1789

bb.bs:                                            ; preds = %bb.br, %bb.bs
  %.06611486 = phi i32 [ 0, %bb.br ], [ %i.pq, %bb.bs ] ; 2 uses
  %i.pp = select i1 %spec.select.i.i862, i32 -1, i32 %.06611486
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.pp)
  %i.pq = add nuw nsw i32 %.06611486, 1           ; 2 uses
  %.not747 = icmp eq i32 %i.pq, %.sroa.speculated1157
  br i1 %.not747, label %.preheader1378, label %bb.bs, !llvm.loop !4931

._crit_edge1490:                                  ; preds = %scalar.ph1789, %middle.block1801, %.preheader1378
  br i1 %spec.select.i.i862, label %bb.bu, label %bb.bt

scalar.ph1789:                                    ; preds = %scalar.ph1789.preheader, %scalar.ph1789
  %indvars.iv1533 = phi i64 [ %indvars.iv.next1534, %scalar.ph1789 ], [ %indvars.iv1533.ph, %scalar.ph1789.preheader ] ; 3 uses
  %i.pr = trunc nuw nsw i64 %indvars.iv1533 to i32
  %i.ps = add i32 %i.ph, %i.pr
  %i.pt = getelementptr [4 x i8], ptr %i.pj, i64 %indvars.iv1533
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !240
  %indvars.iv.next1534 = add nuw nsw i64 %indvars.iv1533, 1 ; 2 uses
  %.not748 = icmp eq i64 %indvars.iv.next1534, %i.pk
  br i1 %.not748, label %._crit_edge1490, label %scalar.ph1789, !llvm.loop !4932

bb.bt:                                            ; preds = %._crit_edge1490
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %.sroa.01188.0.copyload, i32 %.sroa.16.0.copyload)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge1490
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %.sroa.01161.0.copyload, i32 %.sroa.51162.0.copyload)
  br label %bb.ci

.critedge13:                                      ; preds = %bb.bo, %_ZNK4llvm8TypeSizecvmEv.exit853
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #39
  %i.pu = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %35)
  call void @_ZN4llvm5APInt10getAllOnesEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %37, i32 noundef %i.pu)
  %i.pv = add nuw nsw i32 %6, 1
  %i.pw = call fastcc noundef zeroext i1 @_ZL22getTargetShuffleInputsN4llvm7SDValueERKNS_5APIntERNS_15SmallVectorImplIS0_EERNS4_IiEERKNS_12SelectionDAGEjb(ptr nonnull %.fca.0.extract321, i32 %.fca.1.extract322, ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef %i.pv, i1 noundef zeroext %7)
  br i1 %i.pw, label %bb.bv, label %.loopexit1379

bb.bv:                                            ; preds = %.critedge13
  %.sroa.0288.0.copyload = load i16, ptr %31, align 8, !tbaa !345
  %.sroa.2290.0.copyload = load ptr, ptr %i.im, align 8, !tbaa !471
  %.val = load ptr, ptr %34, align 8, !tbaa !83
  %.val768 = load i32, ptr %i.no, align 8, !tbaa !633
  %i.px = call fastcc noundef zeroext i1 @"_ZN4llvm6any_ofIRNS_11SmallVectorINS_7SDValueELj2EEEZL18getFauxShuffleMaskS2_RKNS_5APIntERNS_15SmallVectorImplIiEERNS8_IS2_EERKNS_12SelectionDAGEjbE3$_0EEbOT_T0_"(ptr %.val, i32 %.val768, i16 %.sroa.0288.0.copyload, ptr %.sroa.2290.0.copyload)
  br i1 %i.px, label %.loopexit1379, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.py = load i32, ptr %i.nl, align 8, !tbaa !633 ; 6 uses
  %i.pz = zext i32 %i.py to i64
  %.not744 = icmp eq i32 %i.py, %i.in
  br i1 %.not744, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qa = urem i32 %i.in, %i.py
  %i.qb = udiv i32 %i.in, %i.py
  %i.qc = icmp eq i32 %i.qa, 0
  br i1 %i.qc, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #39
  %i.qd = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  store ptr %i.qd, ptr %38, align 8, !tbaa !83
  %i.qe = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 0, ptr %i.qe, align 8, !tbaa !633
  %i.qf = getelementptr inbounds nuw i8, ptr %38, i64 12
  store i32 64, ptr %i.qf, align 4, !tbaa !634
  %i.qg = load ptr, ptr %33, align 8, !tbaa !83
  call void @_ZN4llvm21narrowShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef %i.qb, ptr %i.qg, i64 %i.pz, ptr noundef nonnull align 8 dereferenceable(16) %38) #39
  %i.qh = call noundef nonnull align 8 dereferenceable(272) ptr @_ZN4llvm11SmallVectorIiLj64EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(272) %33, ptr noundef nonnull align 8 dereferenceable(272) %38) ; 0 uses
  %i.qi = load ptr, ptr %38, align 8, !tbaa !83   ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.qd
  br i1 %i.qj, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef %i.qi) #39
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863:        ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #39
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  %i.qk = udiv i32 %i.py, %i.in                   ; 2 uses
  %i.ql = mul i32 %i.qk, %i.m
  %i.qm = sext i32 %i.qk to i64
  %i.qn = mul i64 %.0.i.i.i.i.i, %i.qm
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863, %bb.ca, %bb.bw
  %.0 = phi i32 [ %i.m, %bb.bw ], [ %i.m, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863 ], [ %i.ql, %bb.ca ] ; 6 uses
  %.0658 = phi i64 [ %.0.i.i.i.i.i, %bb.bw ], [ %.0.i.i.i.i.i, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863 ], [ %i.qn, %bb.ca ]
  %.0657 = phi i32 [ %i.in, %bb.bw ], [ %i.in, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit863 ], [ %i.py, %bb.ca ] ; 10 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.01188.0.copyload, i32 %.sroa.16.0.copyload)
  %i.qo = load ptr, ptr %34, align 8, !tbaa !83   ; 2 uses
  %i.qp = load i32, ptr %i.no, align 8, !tbaa !633
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qo, i64 %i.qq
  call void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendIPS1_vEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.qo, ptr noundef %i.qr)
  %i.qs = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.01188.0.copyload) #39
  br i1 %i.qs, label %bb.cc, label %.preheader1380

.preheader1380:                                   ; preds = %bb.cb
  %.not7451479 = icmp eq i32 %.0, 0
  br i1 %.not7451479, label %.loopexit1381, label %.lr.ph1481

bb.cc:                                            ; preds = %bb.cb
  %i.qt = zext i32 %.0 to i64
  call void @_ZN4llvm15SmallVectorImplIiE6appendEmi(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.qt, i32 noundef -2)
  br label %.loopexit1381

.lr.ph1481:                                       ; preds = %.preheader1380, %.lr.ph1481
  %.06631480 = phi i32 [ %i.qu, %.lr.ph1481 ], [ 0, %.preheader1380 ] ; 2 uses
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.06631480)
  %i.qu = add nuw nsw i32 %.06631480, 1           ; 2 uses
  %.not745 = icmp eq i32 %i.qu, %.0
  br i1 %.not745, label %.loopexit1381, label %.lr.ph1481, !llvm.loop !4933

.loopexit1381:                                    ; preds = %.lr.ph1481, %.preheader1380, %bb.cc
  %.not7461482 = icmp eq i32 %.0657, 0
  br i1 %.not7461482, label %.loopexit1379, label %.lr.ph1485

.lr.ph1485:                                       ; preds = %.loopexit1381
  %i.qv = load ptr, ptr %33, align 8, !tbaa !83   ; 3 uses
  %i.qw = load ptr, ptr %3, align 8, !tbaa !83
  %i.qx = getelementptr [4 x i8], ptr %i.qw, i64 %.0658 ; 3 uses
  %i.qy = zext i32 %.0657 to i64                  ; 2 uses
  %xtraiter1851 = and i64 %i.qy, 1
  %53 = icmp eq i32 %.0657, 1
  br i1 %53, label %.epil.preheader, label %.lr.ph1485.new

.lr.ph1485.new:                                   ; preds = %.lr.ph1485
  %unroll_iter = and i64 %i.qy, 4294967294
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cf, %.lr.ph1485.new
  %indvars.iv1530 = phi i64 [ 0, %.lr.ph1485.new ], [ %indvars.iv.next1531.1, %bb.cf ] ; 4 uses
  %indvars.iv1530.a = phi i64 [ 0, %.lr.ph1485.new ], [ %indvars.iv.next1531.a, %bb.cf ]
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv1530
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !240 ; 4 uses
  %i.rb = icmp sgt i32 %i.ra, -1
  br i1 %i.rb, label %54, label %60

54:                                               ; preds = %bb.cd
  %55 = udiv i32 %i.ra, %.0657
  %56 = add nuw nsw i32 %55, 1
  %57 = mul i32 %56, %.0
  %58 = urem i32 %i.ra, %.0657
  %59 = add i32 %57, %58
  br label %60

60:                                               ; preds = %54, %bb.cd
  %.0667 = phi i32 [ %59, %54 ], [ %i.ra, %bb.cd ]
  %61 = getelementptr [4 x i8], ptr %i.qx, i64 %indvars.iv1530
  store i32 %.0667, ptr %61, align 4, !tbaa !240
  %indvars.iv.next1531 = or disjoint i64 %indvars.iv1530, 1 ; 2 uses
  %62 = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv.next1531
  %63 = load i32, ptr %62, align 4, !tbaa !240    ; 4 uses
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %60
  %i.rc = udiv i32 %63, %.0657
  %i.rd = add nuw nsw i32 %i.rc, 1
  %i.re = mul i32 %i.rd, %.0
  %i.rf = urem i32 %63, %.0657
  %i.rg = add i32 %i.re, %i.rf
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %60
  %.0667.a = phi i32 [ %i.rg, %bb.ce ], [ %63, %60 ]
  %i.rh = getelementptr [4 x i8], ptr %i.qx, i64 %indvars.iv.next1531
  store i32 %.0667.a, ptr %i.rh, align 4, !tbaa !240
  %indvars.iv.next1531.1 = add nuw nsw i64 %indvars.iv1530, 2 ; 2 uses
  %indvars.iv.next1531.a = add i64 %indvars.iv1530.a, 2 ; 2 uses
  %.not746 = icmp eq i64 %indvars.iv.next1531.a, %unroll_iter
  br i1 %.not746, label %.loopexit1379.loopexit.unr-lcssa, label %bb.cd, !llvm.loop !4934

.loopexit1379.loopexit.unr-lcssa:                 ; preds = %bb.cf
  %lcmp.mod1852.not = icmp eq i64 %xtraiter1851, 0
  br i1 %lcmp.mod1852.not, label %.loopexit1379, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit1379.loopexit.unr-lcssa, %.lr.ph1485
  %indvars.iv1530.epil.init = phi i64 [ 0, %.lr.ph1485 ], [ %indvars.iv.next1531.1, %.loopexit1379.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1853 = trunc i32 %.0657 to i1
  call void @llvm.assume(i1 %lcmp.mod1853)
  %65 = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv1530.epil.init
  %66 = load i32, ptr %65, align 4, !tbaa !240    ; 4 uses
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %.loopexit1379.loopexit.epilog-lcssa

68:                                               ; preds = %.epil.preheader
  %69 = udiv i32 %66, %.0657
  %70 = add nuw nsw i32 %69, 1
  %71 = mul i32 %70, %.0
  %72 = urem i32 %66, %.0657
  %73 = add i32 %71, %72
  br label %.loopexit1379.loopexit.epilog-lcssa

.loopexit1379.loopexit.epilog-lcssa:              ; preds = %68, %.epil.preheader
  %.0667.epil = phi i32 [ %73, %68 ], [ %66, %.epil.preheader ]
  %74 = getelementptr [4 x i8], ptr %i.qx, i64 %indvars.iv1530.epil.init
  store i32 %.0667.epil, ptr %74, align 4, !tbaa !240
  br label %.loopexit1379

.loopexit1379:                                    ; preds = %.loopexit1379.loopexit.epilog-lcssa, %.loopexit1379.loopexit.unr-lcssa, %.loopexit1381, %bb.bv, %.critedge13
  %.10 = phi i1 [ false, %.critedge13 ], [ false, %bb.bv ], [ true, %.loopexit1381 ], [ true, %.loopexit1379.loopexit.unr-lcssa ], [ true, %.loopexit1379.loopexit.epilog-lcssa ]
  %i.ri = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !643
  %i.rk = icmp ugt i32 %i.rj, 64
  br i1 %i.rk, label %bb.cg, label %_ZN4llvm5APIntD2Ev.exit864

bb.cg:                                            ; preds = %.loopexit1379
  %i.rl = load ptr, ptr %37, align 8, !tbaa !357  ; 2 uses
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %_ZN4llvm5APIntD2Ev.exit864, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.rl) #42
  br label %_ZN4llvm5APIntD2Ev.exit864

_ZN4llvm5APIntD2Ev.exit864:                       ; preds = %.loopexit1379, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #39
  br label %bb.ci

bb.ci:                                            ; preds = %.split1336, %_ZNK4llvm3EVT8isVectorEv.exit852, %_ZN4llvm5APIntD2Ev.exit864, %bb.bu
  %.11 = phi i1 [ true, %bb.bu ], [ %.10, %_ZN4llvm5APIntD2Ev.exit864 ], [ false, %_ZNK4llvm3EVT8isVectorEv.exit852 ], [ false, %.split1336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #39
  %i.rn = load ptr, ptr %34, align 8, !tbaa !83   ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.nn
  br i1 %i.ro, label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @free(ptr noundef %i.rn) #39
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865

_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865: ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #39
  %i.rp = load ptr, ptr %33, align 8, !tbaa !83   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.nk
  br i1 %i.rq, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865
  call void @free(ptr noundef %i.rp) #39
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866:        ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj2EED2Ev.exit865, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #39
  br label %bb.cl

bb.cl:                                            ; preds = %.critedge11, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866, %_ZSt4iotaIPiiEvT_S1_T0_.exit844, %_ZSt4iotaIPijEvT_S1_T0_.exit, %_ZSt4iotaIPiiEvT_S1_T0_.exit
  %.12 = phi i1 [ true, %_ZSt4iotaIPiiEvT_S1_T0_.exit ], [ true, %_ZSt4iotaIPijEvT_S1_T0_.exit ], [ true, %_ZSt4iotaIPiiEvT_S1_T0_.exit844 ], [ %.11, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit866 ], [ false, %.critedge11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #39
  br label %.critedge765

bb.cm:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.rr = icmp ne i32 %i.ab, 174                  ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !638 ; 2 uses
  %i.ru = zext i1 %i.rr to i64
  %i.rv = getelementptr inbounds nuw [40 x i8], ptr %i.rt, i64 %i.ru ; 2 uses
  %.sroa.01135.0.copyload = load ptr, ptr %i.rv, align 8, !tbaa !465 ; 3 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !240 ; 3 uses
  br i1 %i.rr, label %bb.cn, label %bb.cu

bb.cn:                                            ; preds = %bb.cm
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 80
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !472 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !468
  switch i32 %i.rz, label %.critedge765 [
    i32 37, label %bb.co
    i32 12, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 88
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !654
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = zext i16 %i.l to i64
  %i.se = tail call noundef zeroext i1 @_ZNK4llvm5APInt3ugeEm(ptr noundef nonnull align 8 dereferenceable(12) %i.sc, i64 noundef %i.sd)
  br i1 %i.se, label %.critedge765, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sf = load ptr, ptr %i.rs, align 8, !tbaa !638
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 80
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !472
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 88
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !654 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !643
  %i.sn = icmp ult i32 %i.sm, 65
  %i.so = load ptr, ptr %i.sk, align 8
  %spec.select.i.i.i.i.i867 = select i1 %i.sn, ptr %i.sk, ptr %i.so
  %.0.i.i.i.i.i868 = load i64, ptr %spec.select.i.i.i.i.i867, align 8, !tbaa !357
  %i.sp = trunc i64 %.0.i.i.i.i.i868 to i32       ; 2 uses
  %i.sq = tail call noundef zeroext i1 @_ZN4llvm3X8610isZeroNodeENS_7SDValueE(ptr %.sroa.01135.0.copyload, i32 %.sroa.19.0.copyload)
  br i1 %i.sq, label %bb.cq, label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  %i.sr = load ptr, ptr %i.rs, align 8, !tbaa !638 ; 2 uses
  %.sroa.0262.0.copyload = load ptr, ptr %i.sr, align 8, !tbaa !465
  %.sroa.2263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %.sroa.2263.0.copyload = load i32, ptr %.sroa.2263.0..sroa_idx, align 8, !tbaa !240
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.0262.0.copyload, i32 %.sroa.2263.0.copyload)
  %.not7401464 = icmp eq i16 %i.l, 0
  br i1 %.not7401464, label %.critedge765, label %.lr.ph1467

.lr.ph1467:                                       ; preds = %bb.cq
  %i.ss = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph1467, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit870
  %.06701465 = phi i32 [ 0, %.lr.ph1467 ], [ %i.tc, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit870 ] ; 3 uses
  %i.st = icmp eq i32 %.06701465, %i.sp
  %i.su = select i1 %i.st, i32 -2, i32 %.06701465 ; 2 uses
  %i.sv = load i32, ptr %i.b, align 8, !tbaa !633 ; 2 uses
  %i.sw = load i32, ptr %i.ss, align 4, !tbaa !634
  %.not.i869 = icmp ult i32 %i.sv, %i.sw
  br i1 %.not.i869, label %bb.ct, label %bb.cs, !prof !635

bb.cs:                                            ; preds = %bb.cr
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.su)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit870

bb.ct:                                            ; preds = %bb.cr
  %i.sx = zext i32 %i.sv to i64
  %i.sy = load ptr, ptr %3, align 8, !tbaa !83
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.sx
  store i32 %i.su, ptr %i.sz, align 1
  %i.ta = load i32, ptr %i.b, align 8, !tbaa !633
  %i.tb = add i32 %i.ta, 1
  store i32 %i.tb, ptr %i.b, align 8, !tbaa !633
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit870

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit870: ; preds = %bb.cs, %bb.ct
  %i.tc = add nuw nsw i32 %.06701465, 1           ; 2 uses
  %.not740 = icmp eq i32 %i.tc, %i.m
  br i1 %.not740, label %.critedge765, label %bb.cr, !llvm.loop !4935

bb.cu:                                            ; preds = %bb.cp, %bb.cm
  %.0668 = phi i32 [ %i.sp, %bb.cp ], [ 0, %bb.cm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.01135.0.copyload, i64 48
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !469
  %i.tf = zext i32 %.sroa.19.0.copyload to i64
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %i.tf ; 2 uses
  %.sroa.0.0.copyload.i.i.i871 = load i16, ptr %i.tg, align 8, !tbaa !345 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !471 ; 2 uses
  %.fca.0.insert.i.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i.i871, 0
  %.fca.1.insert.i.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.21.0.copyload.i.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i871, ptr %15, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.th, align 8
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i871, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.cu
  %i.ti = add i16 %.sroa.0.0.copyload.i.i.i871, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.ti, 197
  br i1 %spec.select.i.i.i.i, label %bb.cv, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.cu
  %i.tj = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #40
  br i1 %i.tj, label %bb.cw, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.cv:                                            ; preds = %.split.i.i
  %i.tk = zext nneg i16 %.sroa.0.0.copyload.i.i.i871 to i64
  %i.tl = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.tk
  %i.tm = getelementptr i8, ptr %i.tl, i64 -2
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !345
  %i.to = insertvalue { i16, ptr } poison, i16 %i.tn, 0
  %i.tp = insertvalue { i16, ptr } %i.to, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.cw:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.tq = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.cw, %bb.cv, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.tq, %bb.cw ], [ %i.tp, %bb.cv ], [ %.fca.1.insert.i.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i.i.i, %.split.i.i ] ; 2 uses
  %i.tr = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.tr, ptr %14, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.tt = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.tt, ptr %i.ts, align 8
  %.not.i.i1.i = icmp eq i16 %i.tr, 0
  br i1 %.not.i.i1.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.tu = zext i16 %i.tr to i64
  %i.tv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.tu
  %i.tw = getelementptr i8, ptr %i.tv, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.tw, align 16
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

bb.cy:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.tx = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #40
  %i.ty = extractvalue { i64, i8 } %i.tx, 0
  br label %_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit

_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv.exit: ; preds = %bb.cx, %bb.cy
  %.pn.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.cx ], [ %i.ty, %bb.cy ]
end_hunk_0
