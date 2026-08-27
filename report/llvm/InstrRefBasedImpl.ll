Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrRefBasedImpl?download=true
inline.NumInlined: 14561
inline.NumDeleted: 6355
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrE:bb.a
  %i.cp = icmp eq ptr %.lcssa.sink.i.i.i, %i.co
  br i1 %i.cp, label %_ZN15TransferTracker11clobberMlocEN15LiveDebugValues6LocIdxEN4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEEb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN15LiveDebugValues6LocIdxENS_8SmallSetIjLj4ESt4lessIjEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bk, i64 3136
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.be
  %.sroa.03.0.copyload.i = load i64, ptr %i.cs, align 8, !tbaa !33
  call void @_ZN15TransferTracker11clobberMlocEN15LiveDebugValues6LocIdxENS0_10ValueIDNumEN4llvm26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEEb(ptr noundef nonnull align 8 dereferenceable(3600) %i.bk, i32 %.sroa.0.0.copyload.i, i64 %.sroa.03.0.copyload.i, ptr nonnull %1, i1 noundef zeroext true)
  br label %_ZN15TransferTracker11clobberMlocEN15LiveDebugValues6LocIdxEN4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEEb.exit

_ZN15TransferTracker11clobberMlocEN15LiveDebugValues6LocIdxEN4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEEb.exit: ; preds = %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN15LiveDebugValues6LocIdxENS_8SmallSetIjLj4ESt4lessIjEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i, %bb.i
  %i.ct = add nuw i32 %.056191, 1                 ; 2 uses
  %i.cu = load ptr, ptr %i.ad, align 8, !tbaa !546 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 288
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !198 ; 2 uses
  %i.cx = icmp ult i32 %i.ct, %i.cw
  br i1 %i.cx, label %bb.e, label %.loopexit, !llvm.loop !1205

.loopexit:                                        ; preds = %_ZN15TransferTracker11clobberMlocEN15LiveDebugValues6LocIdxEN4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEEb.exit, %.preheader, %.critedge2
  %i.cy = call i64 @_ZN15LiveDebugValues16InstrRefBasedLDV18isSpillInstructionERKN4llvm12MachineInstrEPNS1_15MachineFunctionE(ptr noundef nonnull readonly align 8 dereferenceable(2320) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr readnone poison)
  %.not.i = icmp samesign ult i64 %i.cy, 4294967296
  br i1 %.not.i, label %_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit.thread, label %_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit

_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit: ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !1189 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call i32 %i.dc(ptr noundef nonnull align 8 dereferenceable(112) %i.cz, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #23, !inline_history !1206 ; 7 uses
  store i32 %i.dd, ptr %i.c, align 4, !tbaa !113
  %.not185 = icmp eq i32 %i.dd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.not185, label %_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !33 ; 4 uses
  %i.dg = icmp ugt i64 %i.df, 7
  call void @llvm.assume(i1 %i.dg)
  %i.dh = and i64 %i.df, 7
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dj = inttoptr i64 %i.df to ptr               ; 2 uses
  store ptr %i.dj, ptr %i.de, align 8, !tbaa !33
  br label %_ZN15LiveDebugValues16InstrRefBasedLDV28extractSpillBaseRegAndOffsetERKN4llvm12MachineInstrE.exit

bb.l:                                             ; preds = %bb.j
  %i.dk = and i64 %i.df, -8
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.pre.i68 = load ptr, ptr %i.dm, align 8, !tbaa !615
  br label %_ZN15LiveDebugValues16InstrRefBasedLDV28extractSpillBaseRegAndOffsetERKN4llvm12MachineInstrE.exit

_ZN15LiveDebugValues16InstrRefBasedLDV28extractSpillBaseRegAndOffsetERKN4llvm12MachineInstrE.exit: ; preds = %bb.k, %bb.l
  %i.dn = phi ptr [ %i.dj, %bb.k ], [ %.pre.i68, %bb.l ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.dn, align 8
  %i.do = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -5
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !617
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !620
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 0, ptr %6, align 4, !tbaa !119
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !633 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !634
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 216
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call { i64, i64 } %i.ea(ptr noundef nonnull align 8 dereferenceable(21) %i.dv, ptr noundef nonnull align 8 dereferenceable(1065) %i.dx, i32 noundef %i.dr, ptr noundef nonnull align 4 dereferenceable(4) %6) #23, !inline_history !671 ; 2 uses
  %i.ec = extractvalue { i64, i64 } %i.eb, 0
  %i.ed = extractvalue { i64, i64 } %i.eb, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 10 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !546
  %i.eg = load i32, ptr %6, align 4, !tbaa !119
  store i32 %i.eg, ptr %7, align 8, !tbaa !371
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ec, ptr %i.eh, align 8, !tbaa !266
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !266
  %i.ei = call range(i64 0, 8589934592) i64 @_ZN15LiveDebugValues11MLocTracker18getOrTrackSpillLocENS_8SpillLocE(ptr noundef nonnull align 8 dereferenceable(872) %i.ef, ptr noundef nonnull byval(%"struct.LiveDebugValues::SpillLoc") align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.0162.0.extract.trunc = trunc i64 %i.ei to i32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !613 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !855, !noalias !1207
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !859, !noalias !1207
  %i.ep = zext i32 %i.dd to i64                   ; 3 uses
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !860, !noalias !1207
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.et ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !117, !noalias !1207 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i.i.i.i, label %select.unfold._crit_edge, label %.lr.ph194

.lr.ph194:                                        ; preds = %_ZN15LiveDebugValues16InstrRefBasedLDV28extractSpillBaseRegAndOffsetERKN4llvm12MachineInstrE.exit
  %i.ew = zext i16 %i.ev to i32
  %i.ex = add i32 %i.dd, %i.ew
  %i.ey = add i32 %.sroa.0162.0.extract.trunc, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %bb.p

select.unfold._crit_edge.loopexit:                ; preds = %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit80"
  %.pre = load ptr, ptr %i.ej, align 8, !tbaa !613
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold._crit_edge.loopexit, %_ZN15LiveDebugValues16InstrRefBasedLDV28extractSpillBaseRegAndOffsetERKN4llvm12MachineInstrE.exit
  %i.fa = phi ptr [ %.pre, %select.unfold._crit_edge.loopexit ], [ %i.ek, %_ZN15LiveDebugValues16InstrRefBasedLDV28extractSpillBaseRegAndOffsetERKN4llvm12MachineInstrE.exit ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1210
  %i.fd = call { i64, i8 } @_ZNK4llvm18TargetRegisterInfo16getRegSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316) %i.fa, i32 %i.dd, ptr noundef nonnull align 8 dereferenceable(520) %i.fc) #23 ; 2 uses
  %.fca.1.extract14 = extractvalue { i64, i8 } %i.fd, 1
  %i.fe = trunc nuw i8 %.fca.1.extract14 to i1
  br i1 %i.fe, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.m:                                             ; preds = %select.unfold._crit_edge
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %select.unfold._crit_edge
  %.fca.0.extract13 = extractvalue { i64, i8 } %i.fd, 0
  %i.ff = load ptr, ptr %i.ee, align 8, !tbaa !546 ; 3 uses
  %i.fg = trunc i64 %.fca.0.extract13 to i32
  %.sroa.0131.0.insert.ext = and i32 %i.fg, 65535
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %.sroa.0131.0.insert.ext, ptr %5, align 4
  %i.fh = add i32 %.sroa.0162.0.extract.trunc, -1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 288
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !198
  %i.fk = mul i32 %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 824
  %i.fm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIttEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEES2_IPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.fl, ptr noundef nonnull align 2 dereferenceable(4) %5)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !113
  %i.fp = add i32 %i.fo, %i.fk
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 284
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !112
  %i.fs = add i32 %i.fp, %i.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ft = load ptr, ptr %i.ee, align 8, !tbaa !546 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !114 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ep ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !115 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, -1
  br i1 %i.fy, label %bb.n, label %_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.fz = call i32 @_ZN15LiveDebugValues11MLocTracker13trackRegisterEj(ptr noundef nonnull align 8 dereferenceable(872) %i.ft, i32 noundef %i.dd) ; 2 uses
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !113
  %.pre.i70 = load ptr, ptr %i.ee, align 8, !tbaa !546 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i70, i64 64
  %.pre1.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !114
  br label %_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i

_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i: ; preds = %bb.n, %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ga = phi ptr [ %.pre1.i, %bb.n ], [ %i.fv, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %i.gb = phi ptr [ %.pre.i70, %bb.n ], [ %i.ft, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %.sroa.05.0.copyload.i.i.i = phi i32 [ %i.fz, %bb.n ], [ %i.fx, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.gd = zext i32 %.sroa.05.0.copyload.i.i.i to i64
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gd
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.gf, align 8, !tbaa !33
  %i.gg = zext i32 %i.fs to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gg
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.gh, align 4, !tbaa !113 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gj = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !21
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  store i64 %.sroa.04.0.copyload.i.i, ptr %i.gl, align 8, !tbaa !33
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !687 ; 2 uses
  %.not.i69 = icmp eq ptr %i.gn, null
  br i1 %.not.i69, label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit", label %bb.o

bb.o:                                             ; preds = %_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i
  %i.go = load ptr, ptr %i.ee, align 8, !tbaa !546
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !114
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ep
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.gr, align 4, !tbaa !113
  call void @_ZN15TransferTracker13transferMlocsEN15LiveDebugValues6LocIdxES1_N4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(3600) %i.gn, i32 %.sroa.02.0.copyload.i.i, i32 %.sroa.0.0.copyload.i.i, ptr nonnull %1)
  br label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit"

bb.p:                                             ; preds = %.lr.ph194, %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit80"
  %.pn = phi ptr [ %i.eu, %.lr.ph194 ], [ %.sroa.5147.0193, %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit80" ]
  %.sroa.0145.0192 = phi i32 [ %i.ex, %.lr.ph194 ], [ %i.iu, %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit80" ] ; 2 uses
  %.sroa.5147.0193 = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.gs = load ptr, ptr %i.ee, align 8, !tbaa !546 ; 2 uses
  %i.gt = and i32 %.sroa.0145.0192, 65535         ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.gv = zext nneg i32 %i.gt to i64              ; 3 uses
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !114
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gv ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !115
  %i.gz = icmp eq i32 %i.gy, -1
  br i1 %i.gz, label %bb.q, label %_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit

bb.q:                                             ; preds = %bb.p
  %i.ha = call i32 @_ZN15LiveDebugValues11MLocTracker13trackRegisterEj(ptr noundef nonnull align 8 dereferenceable(872) %i.gs, i32 noundef %i.gt)
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !113
  br label %_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit

_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit: ; preds = %bb.p, %bb.q
  %i.hb = load ptr, ptr %i.ej, align 8, !tbaa !613
  %i.hc = call noundef i32 @_ZNK4llvm14MCRegisterInfo14getSubRegIndexENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240) %i.hb, i32 %i.dd, i32 %i.gt) #23 ; 2 uses
  %i.hd = load ptr, ptr %i.ee, align 8, !tbaa !546 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !306, !nonnull !19, !align !307
  %i.hg = call noundef i32 @_ZNK4llvm18TargetRegisterInfo16getSubRegIdxSizeEj(ptr noundef nonnull align 8 dereferenceable(316) %i.hf, i32 noundef %i.hc) #23
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !306, !nonnull !19, !align !307
  %i.hi = call noundef i32 @_ZNK4llvm18TargetRegisterInfo18getSubRegIdxOffsetEj(ptr noundef nonnull align 8 dereferenceable(316) %i.hh, i32 noundef %i.hc) #23
  %.sroa.2.0.insert.ext.i = shl i32 %i.hi, 16
  %.sroa.0.0.insert.ext.i = and i32 %i.hg, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %.sroa.0.0.insert.insert.i, ptr %4, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 288
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !198
  %i.hl = mul i32 %i.hk, %i.ey
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 824
  %i.hn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIttEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEES2_IPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hm, ptr noundef nonnull align 2 dereferenceable(4) %4)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.hn, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !113
  %i.hq = add i32 %i.hp, %i.hl
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 284
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !112
  %i.ht = add i32 %i.hq, %i.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.hu = load ptr, ptr %i.ee, align 8, !tbaa !546 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !114 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.gv ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !115 ; 2 uses
  %i.hz = icmp eq i32 %i.hy, -1
  br i1 %i.hz, label %bb.r, label %_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i71

bb.r:                                             ; preds = %_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit
  %i.ia = call i32 @_ZN15LiveDebugValues11MLocTracker13trackRegisterEj(ptr noundef nonnull align 8 dereferenceable(872) %i.hu, i32 noundef %i.gt) ; 2 uses
  store i32 %i.ia, ptr %i.hx, align 4, !tbaa !113
  %.pre.i77 = load ptr, ptr %i.ee, align 8, !tbaa !546 ; 2 uses
  %.phi.trans.insert.i78 = getelementptr inbounds nuw i8, ptr %.pre.i77, i64 64
  %.pre1.i79 = load ptr, ptr %.phi.trans.insert.i78, align 8, !tbaa !114
  br label %_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i71

_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i71: ; preds = %bb.r, %_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit
  %i.ib = phi ptr [ %.pre1.i79, %bb.r ], [ %i.hw, %_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit ]
  %i.ic = phi ptr [ %.pre.i77, %bb.r ], [ %i.hu, %_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit ]
  %.sroa.05.0.copyload.i.i.i72 = phi i32 [ %i.ia, %bb.r ], [ %i.hy, %_ZN15LiveDebugValues11MLocTracker21lookupOrTrackRegisterEj.exit ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.ie = zext i32 %.sroa.05.0.copyload.i.i.i72 to i64
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !21
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ie
  %.sroa.04.0.copyload.i.i73 = load i64, ptr %i.ig, align 8, !tbaa !33
  %i.ih = zext i32 %i.ht to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ih
  %.sroa.0.0.copyload.i.i74 = load i32, ptr %i.ii, align 4, !tbaa !113 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ik = zext i32 %.sroa.0.0.copyload.i.i74 to i64
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !21
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ik
  store i64 %.sroa.04.0.copyload.i.i73, ptr %i.im, align 8, !tbaa !33
  %i.in = load ptr, ptr %i.ez, align 8, !tbaa !687 ; 2 uses
  %.not.i75 = icmp eq ptr %i.in, null
  br i1 %.not.i75, label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit80", label %bb.s

bb.s:                                             ; preds = %_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i71
  %i.io = load ptr, ptr %i.ee, align 8, !tbaa !546
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !114
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.gv
  %.sroa.02.0.copyload.i.i76 = load i32, ptr %i.ir, align 4, !tbaa !113
  call void @_ZN15TransferTracker13transferMlocsEN15LiveDebugValues6LocIdxES1_N4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(3600) %i.in, i32 %.sroa.02.0.copyload.i.i76, i32 %.sroa.0.0.copyload.i.i74, ptr nonnull %1)
  br label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit80"

"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit80": ; preds = %_ZN15LiveDebugValues11MLocTracker7readRegEN4llvm8RegisterE.exit.i71, %bb.s
  %i.is = load i16, ptr %.sroa.5147.0193, align 2, !tbaa !117 ; 2 uses
  %i.it = zext i16 %i.is to i32
  %i.iu = add i32 %.sroa.0145.0192, %i.it
  %.not.i.i = icmp eq i16 %i.is, 0
  br i1 %.not.i.i, label %select.unfold._crit_edge.loopexit, label %bb.p

_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit.thread: ; preds = %.loopexit, %_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit
  %i.iv = call i64 @_ZN15LiveDebugValues16InstrRefBasedLDV20isRestoreInstructionERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj(ptr noundef nonnull align 8 dereferenceable(2320) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr poison, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 2 uses
  %.sroa.0126.0.extract.trunc = trunc i64 %i.iv to i32 ; 2 uses
  %.not187 = icmp samesign ult i64 %i.iv, 4294967296
  br i1 %.not187, label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit", label %bb.t

bb.t:                                             ; preds = %_ZN15LiveDebugValues16InstrRefBasedLDV15isLocationSpillERKN4llvm12MachineInstrEPNS1_15MachineFunctionERj.exit.thread
  %i.iw = load i32, ptr %i.c, align 4, !tbaa !113 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !613
  %i.iz = call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.iy, i32 %i.iw) #23 ; 2 uses
  %i.ja = extractvalue { ptr, i64 } %i.iz, 0      ; 2 uses
  %i.jb = extractvalue { ptr, i64 } %i.iz, 1      ; 2 uses
  %.idx = shl nuw nsw i64 %i.jb, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx
  %.not188195 = icmp eq i64 %i.jb, 0
  br i1 %.not188195, label %._crit_edge, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.t
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 428
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN15LiveDebugValues11MLocTracker6defRegEN4llvm8RegisterEjj.exit, %bb.t
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !613 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !855, !noalias !1211
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !859, !noalias !1211
  %i.jl = zext i32 %i.iw to i64                   ; 2 uses
  %i.jm = getelementptr inbounds nuw [24 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !860, !noalias !1211
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %i.jp ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !117, !noalias !1211 ; 2 uses
  %.not.i.i.i.i82 = icmp eq i16 %i.jr, 0
  br i1 %.not.i.i.i.i82, label %select.unfold180._crit_edge, label %.lr.ph201

.lr.ph201:                                        ; preds = %._crit_edge
  %i.js = zext i16 %i.jr to i32
  %i.jt = add i32 %i.iw, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.jv = add i32 %.sroa.0126.0.extract.trunc, -1
  br label %bb.y

bb.u:                                             ; preds = %.lr.ph197, %_ZN15LiveDebugValues11MLocTracker6defRegEN4llvm8RegisterEjj.exit
  %.sroa.0123.0196 = phi ptr [ %i.ja, %.lr.ph197 ], [ %i.ku, %_ZN15LiveDebugValues11MLocTracker6defRegEN4llvm8RegisterEjj.exit ] ; 2 uses
  %i.jw = load ptr, ptr %i.jd, align 8, !tbaa !546 ; 3 uses
  %i.jx = load i16, ptr %.sroa.0123.0196, align 2, !tbaa !117 ; 2 uses
  %i.jy = load i32, ptr %i.je, align 8, !tbaa !609
  %i.jz = load i32, ptr %i.jf, align 4, !tbaa !928
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.kb = zext i16 %i.jx to i64
  %i.kc = load ptr, ptr %i.ka, align 8, !tbaa !114
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.kb ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !115 ; 2 uses
  %i.kf = icmp eq i32 %i.ke, -1
  br i1 %i.kf, label %bb.v, label %_ZN15LiveDebugValues11MLocTracker6defRegEN4llvm8RegisterEjj.exit

bb.v:                                             ; preds = %bb.u
  %i.kg = zext i16 %i.jx to i32
  %i.kh = call i32 @_ZN15LiveDebugValues11MLocTracker13trackRegisterEj(ptr noundef nonnull align 8 dereferenceable(872) %i.jw, i32 noundef %i.kg) ; 2 uses
  store i32 %i.kh, ptr %i.kd, align 4, !tbaa !113
  br label %_ZN15LiveDebugValues11MLocTracker6defRegEN4llvm8RegisterEjj.exit

_ZN15LiveDebugValues11MLocTracker6defRegEN4llvm8RegisterEjj.exit: ; preds = %bb.u, %bb.v
  %.sroa.05.0.copyload.i.i = phi i32 [ %i.kh, %bb.v ], [ %i.ke, %bb.u ]
  %i.ki = zext i32 %i.jz to i64
  %i.kj = and i32 %i.jy, 1048575
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl nuw nsw i64 %i.ki, 20
  %i.km = and i64 %i.kl, 1099510579200
  %i.kn = or disjoint i64 %i.km, %i.kk
  %i.ko = zext i32 %.sroa.05.0.copyload.i.i to i64 ; 2 uses
  %i.kp = shl i64 %i.ko, 40
  %i.kq = or disjoint i64 %i.kp, %i.kn
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !21
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.ko
  store i64 %i.kq, ptr %i.kt, align 8, !tbaa !33
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0123.0196, i64 2 ; 2 uses
  %.not188 = icmp eq ptr %i.ku, %i.jc
  br i1 %.not188, label %._crit_edge, label %bb.u, !llvm.loop !1214

select.unfold180._crit_edge.loopexit:             ; preds = %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_1clENS1_8RegisterEj.exit100"
  %.pre204 = load ptr, ptr %i.ix, align 8, !tbaa !613
  br label %select.unfold180._crit_edge

select.unfold180._crit_edge:                      ; preds = %select.unfold180._crit_edge.loopexit, %._crit_edge
  %i.kv = phi ptr [ %.pre204, %select.unfold180._crit_edge.loopexit ], [ %i.jg, %._crit_edge ]
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !1210
  %i.ky = call { i64, i8 } @_ZNK4llvm18TargetRegisterInfo16getRegSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316) %i.kv, i32 %i.iw, ptr noundef nonnull align 8 dereferenceable(520) %i.kx) #23 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ky, 1
  %i.kz = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.kz, label %bb.w, label %_ZNK4llvm8TypeSizecvmEv.exit86

bb.w:                                             ; preds = %select.unfold180._crit_edge
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.10) #24
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit86:                   ; preds = %select.unfold180._crit_edge
  %.fca.0.extract = extractvalue { i64, i8 } %i.ky, 0
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !546 ; 3 uses
  %i.lc = trunc i64 %.fca.0.extract to i32
  %.sroa.0103.0.insert.ext = and i32 %i.lc, 65535
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %.sroa.0103.0.insert.ext, ptr %3, align 4
  %i.ld = add i32 %.sroa.0126.0.extract.trunc, -1
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 288
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !198
  %i.lg = mul i32 %i.lf, %i.ld
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 824
  %i.li = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIttEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEES2_IPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.lh, ptr noundef nonnull align 2 dereferenceable(4) %3)
  %.fca.0.extract.i.i87 = extractvalue { ptr, i8 } %i.li, 0
  %i.lj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i87, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !113
  %i.ll = add i32 %i.lk, %i.lg
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 284
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !112
  %i.lo = add i32 %i.ll, %i.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val66.val = load ptr, ptr %i.la, align 8, !tbaa !546 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val66.val, i64 64
  %i.lq = zext i32 %i.lo to i64
  %i.lr = load ptr, ptr %i.lp, align 8, !tbaa !114 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lq
  %.sroa.0.0.copyload.i.i88 = load i32, ptr %i.ls, align 4, !tbaa !113
  %i.lt = getelementptr inbounds nuw i8, ptr %.val66.val, i64 32 ; 2 uses
  %i.lu = zext i32 %.sroa.0.0.copyload.i.i88 to i64
  %i.lv = load ptr, ptr %i.lt, align 8, !tbaa !21 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lu
  %.sroa.02.0.copyload.i.i89 = load i64, ptr %i.lw, align 8, !tbaa !33
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.jl ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !115 ; 2 uses
  %i.lz = icmp eq i32 %i.ly, -1
  br i1 %i.lz, label %bb.x, label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_1clENS1_8RegisterEj.exit"

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit86
  %i.ma = call i32 @_ZN15LiveDebugValues11MLocTracker13trackRegisterEj(ptr noundef nonnull align 8 dereferenceable(872) %.val66.val, i32 noundef %i.iw) ; 2 uses
  store i32 %i.ma, ptr %i.lx, align 4, !tbaa !113
  %.pre.i91 = load ptr, ptr %i.lt, align 8, !tbaa !21
  br label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_1clENS1_8RegisterEj.exit"

"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_1clENS1_8RegisterEj.exit": ; preds = %_ZNK4llvm8TypeSizecvmEv.exit86, %bb.x
  %i.mb = phi ptr [ %.pre.i91, %bb.x ], [ %i.lv, %_ZNK4llvm8TypeSizecvmEv.exit86 ]
  %.sroa.05.0.copyload.i.i.i90 = phi i32 [ %i.ma, %bb.x ], [ %i.ly, %_ZNK4llvm8TypeSizecvmEv.exit86 ]
  %i.mc = zext i32 %.sroa.05.0.copyload.i.i.i90 to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.mc
  store i64 %.sroa.02.0.copyload.i.i89, ptr %i.md, align 8, !tbaa !33
  br label %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_0clENS1_8RegisterEj.exit"

bb.y:                                             ; preds = %.lr.ph201, %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_1clENS1_8RegisterEj.exit100"
  %.sroa.0112.0199 = phi i32 [ %i.jt, %.lr.ph201 ], [ %i.nq, %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_1clENS1_8RegisterEj.exit100" ] ; 2 uses
  %.pn221 = phi ptr [ %i.jq, %.lr.ph201 ], [ %.sroa.5113.0198, %"_ZZN15LiveDebugValues16InstrRefBasedLDV26transferSpillOrRestoreInstERN4llvm12MachineInstrEENK3$_1clENS1_8RegisterEj.exit100" ]
  %.sroa.5113.0198 = getelementptr inbounds nuw i8, ptr %.pn221, i64 2 ; 2 uses
  %i.me = load ptr, ptr %i.ix, align 8, !tbaa !613
  %i.mf = and i32 %.sroa.0112.0199, 65535         ; 3 uses
  %i.mg = call noundef i32 @_ZNK4llvm14MCRegisterInfo14getSubRegIndexENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240) %i.me, i32 %i.iw, i32 %i.mf) #23 ; 2 uses
  %i.mh = load ptr, ptr %i.ju, align 8, !tbaa !546 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !306, !nonnull !19, !align !307
  %i.mk = call noundef i32 @_ZNK4llvm18TargetRegisterInfo16getSubRegIdxSizeEj(ptr noundef nonnull align 8 dereferenceable(316) %i.mj, i32 noundef %i.mg) #23
  %i.ml = load ptr, ptr %i.mi, align 8, !tbaa !306, !nonnull !19, !align !307
  %i.mm = call noundef i32 @_ZNK4llvm18TargetRegisterInfo18getSubRegIdxOffsetEj(ptr noundef nonnull align 8 dereferenceable(316) %i.ml, i32 noundef %i.mg) #23
  %.sroa.2.0.insert.ext.i92 = shl i32 %i.mm, 16
  %.sroa.0.0.insert.ext.i93 = and i32 %i.mk, 65535
  %.sroa.0.0.insert.insert.i94 = or disjoint i32 %.sroa.2.0.insert.ext.i92, %.sroa.0.0.insert.ext.i93
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 %.sroa.0.0.insert.insert.i94, ptr %2, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 288
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !198
  %i.mp = mul i32 %i.mo, %i.jv
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mh, i64 824
  %i.mr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIttEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEES2_IPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.mq, ptr noundef nonnull align 2 dereferenceable(4) %2)
  %.fca.0.extract.i.i.i95 = extractvalue { ptr, i8 } %i.mr, 0
  %i.ms = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i95, i64 4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !113
  %i.mu = add i32 %i.mt, %i.mp
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mh, i64 284
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !112
  %i.mx = add i32 %i.mu, %i.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.val67.val = load ptr, ptr %i.ju, align 8, !tbaa !546 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.val67.val, i64 64
  %i.mz = zext i32 %i.mx to i64
  %i.na = load ptr, ptr %i.my, align 8, !tbaa !114 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.mz
  %.sroa.0.0.copyload.i.i96 = load i32, ptr %i.nb, align 4, !tbaa !113
  %i.nc = getelementptr inbounds nuw i8, ptr %.val67.val, i64 32 ; 2 uses
  %i.nd = zext i32 %.sroa.0.0.copyload.i.i96 to i64
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !21 ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nd
  %.sroa.02.0.copyload.i.i97 = load i64, ptr %i.nf, align 8, !tbaa !33
end_hunk_0
