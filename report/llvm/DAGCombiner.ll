Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN12_GLOBAL__N_111DAGCombiner16visitZERO_EXTENDEPN4llvm6SDNodeE:bb.a
  %.sroa.2945.0.copyload = load i32, ptr %.sroa.2564.0..sroa_idx, align 8, !tbaa !198
  %i.kn = call fastcc { ptr, i32 } @_ZL24tryToFoldExtOfMaskedLoadRN4llvm12SelectionDAGERKNS_14TargetLoweringENS_3EVTEbPNS_6SDNodeENS_7SDValueENS_3ISD11LoadExtTypeENS9_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(920) %i.kj, ptr noundef nonnull align 8 dereferenceable(518435) %i.kk, i16 %.sroa.0357.0.copyload, ptr %.sroa.2359.0.copyload, i1 noundef zeroext %i.km, ptr noundef nonnull %1, ptr %.sroa.0944.0.copyload, i32 %.sroa.2945.0.copyload, i32 noundef 3, i32 noundef 228) ; 2 uses
  %.fca.0.extract353 = extractvalue { ptr, i32 } %i.kn, 0 ; 2 uses
  %.fca.1.extract354 = extractvalue { ptr, i32 } %i.kn, 1
  %.not1031.a = icmp eq ptr %.fca.0.extract353, null
  br i1 %.not1031.a, label %bb.bj, label %bb.eb

bb.bj:                                            ; preds = %bb.bi
  %i.ko = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner14CombineExtLoadEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract349 = extractvalue { ptr, i32 } %i.ko, 0 ; 2 uses
  %.fca.1.extract350 = extractvalue { ptr, i32 } %i.ko, 1
  %.not1032.a = icmp eq ptr %.fca.0.extract349, null
  br i1 %.not1032.a, label %bb.bk, label %bb.eb

bb.bk:                                            ; preds = %bb.bj
  %i.kp = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.kq = load ptr, ptr %i.t, align 8, !tbaa !347, !nonnull !53, !align !197
  %.sroa.0346.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.2348.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216
  %.sroa.0343.0.copyload = load ptr, ptr %2, align 8, !tbaa !74
  %i.kr = call fastcc { ptr, i32 } @_ZL24tryToFoldExtOfAtomicLoadRN4llvm12SelectionDAGERKNS_14TargetLoweringENS_3EVTENS_7SDValueENS_3ISD11LoadExtTypeE(ptr noundef nonnull align 8 dereferenceable(920) %i.kp, ptr noundef nonnull align 8 dereferenceable(518435) %i.kq, i16 %.sroa.0346.0.copyload, ptr %.sroa.2348.0.copyload, ptr %.sroa.0343.0.copyload, i32 noundef 3) ; 2 uses
  %.fca.0.extract339 = extractvalue { ptr, i32 } %i.kr, 0 ; 2 uses
  %.fca.1.extract340 = extractvalue { ptr, i32 } %i.kr, 1
  %.not1033.a = icmp eq ptr %.fca.0.extract339, null
  br i1 %.not1033.a, label %bb.bl, label %bb.eb

bb.bl:                                            ; preds = %bb.bk
  %i.ks = load ptr, ptr %2, align 8, !tbaa !193   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !72
  %i.kv = add i32 %i.ku, -193
  %spec.select.i = icmp ult i32 %i.kv, 3
  br i1 %spec.select.i, label %bb.bm, label %.critedge655

bb.bm:                                            ; preds = %bb.bl
  %i.kw = load ptr, ptr %i.t, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.2337.0.copyload = load i32, ptr %.sroa.2564.0..sroa_idx, align 8, !tbaa !198
  %.sroa.0333.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.2335.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1464
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef zeroext i1 %i.kz(ptr noundef nonnull align 8 dereferenceable(518435) %i.kw, ptr nonnull %i.ks, i32 %.sroa.2337.0.copyload, i16 %.sroa.0333.0.copyload, ptr %.sroa.2335.0.copyload) #36
  br i1 %i.la, label %.critedge655, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lb = load ptr, ptr %2, align 8, !tbaa !193   ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !204 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !193 ; 13 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !72
  %i.lh = icmp eq i32 %i.lg, 316
  br i1 %i.lh, label %bb.bo, label %.critedge655

bb.bo:                                            ; preds = %bb.bn
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !193
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !72
  %i.lm = icmp eq i32 %i.ll, 12
  br i1 %i.lm, label %bb.bp, label %.critedge655

bb.bp:                                            ; preds = %bb.bo
  %i.ln = load i8, ptr %i.kc, align 1, !tbaa !324, !range !52, !noundef !53
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %.critedge655, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lp = load ptr, ptr %i.t, align 8, !tbaa !347, !nonnull !53, !align !197 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !72 ; 3 uses
  %.sroa.0330.0.copyload = load i16, ptr %3, align 8, !tbaa !214 ; 4 uses
  %.sroa.2332.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i731 = icmp eq i16 %.sroa.0330.0.copyload, 1
  %i.ls = icmp eq ptr %.sroa.2332.0.copyload, null
  %.not4.i.i732 = select i1 %.not.i.i.i731, i1 %i.ls, i1 false
  br i1 %.not4.i.i732, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i.i733 = icmp eq i16 %.sroa.0330.0.copyload, 0
  br i1 %.not.i.i733, label %.critedge655, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i734

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i734: ; preds = %bb.br
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 112
  %i.lu = zext i16 %.sroa.0330.0.copyload to i64  ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !398
  %.not.i735 = icmp ne ptr %i.lw, null
  %.not.i5.i = icmp ult i32 %i.lr, 537
  %or.cond.i = and i1 %.not.i5.i, %.not.i735
  br i1 %or.cond.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit738, label %.critedge655

bb.bs:                                            ; preds = %bb.bq
  %.not.i5.old.i = icmp ult i32 %i.lr, 537
  br i1 %.not.i5.old.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit738, label %.critedge655

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit738: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i734, %bb.bs
  %.pre-phi.i737 = phi i64 [ %i.lu, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i734 ], [ 1, %bb.bs ]
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 6184
  %i.ly = zext nneg i32 %i.lr to i64
  %i.lz = getelementptr inbounds nuw [537 x i8], ptr %i.lx, i64 %.pre-phi.i737
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ly
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !400
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %bb.bt, label %.critedge655

bb.bt:                                            ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit738
  %i.md = getelementptr inbounds nuw i8, ptr %i.le, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i739 = load i16, ptr %i.md, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i740 = getelementptr inbounds nuw i8, ptr %i.le, i64 96 ; 2 uses
  %.sroa.21.0.copyload.i741 = load ptr, ptr %.sroa.21.0..sroa_idx.i740, align 8, !tbaa !216
  %i.me = getelementptr inbounds nuw i8, ptr %i.le, i64 104 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.me, align 8
  %i.mf = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.mg) #36
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.me, align 8
  %i.mi = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.mj) #36
  %i.ml = call noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase11isLoadLegalENS_3EVTES1_NS_5AlignEjjb(ptr noundef nonnull align 8 dereferenceable(518435) %i.lp, i16 %.sroa.0330.0.copyload, ptr %.sroa.2332.0.copyload, i16 %.sroa.0.0.copyload.i739, ptr %.sroa.21.0.copyload.i741, i8 %i.mh, i32 noundef %i.mk, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.ml, label %bb.bu, label %.critedge655

bb.bu:                                            ; preds = %bb.bt
  %i.mm = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.mn = load i16, ptr %i.mm, align 8            ; 2 uses
  %i.mo = and i16 %i.mn, 3072
  %.not640 = icmp ne i16 %i.mo, 2048
  %i.mp = and i16 %i.mn, 896
  %i.mq = icmp eq i16 %i.mp, 0
  %or.cond = and i1 %.not640, %i.mq
  br i1 %or.cond, label %bb.bv, label %.critedge655

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.mr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.mr, ptr %17, align 8, !tbaa !43
  %i.ms = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i32 0, ptr %i.ms, align 8, !tbaa !76
  %i.mt = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 4, ptr %i.mt, align 4, !tbaa !77
  %i.mu = load ptr, ptr %2, align 8, !tbaa !193   ; 5 uses
  %i.mv = load i32, ptr %.sroa.2564.0..sroa_idx, align 8, !tbaa !211
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.mw, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i

bb.bw:                                            ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.na, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.mx, align 8, !tbaa !210 ; 2 uses
  %.not.i.i744 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i744, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv, %bb.bw
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.bw ], [ %.sroa.018.022.i.i, %bb.bv ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.bw ], [ 1, %bb.bv ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !211
  %i.na = icmp ne i32 %i.mz, %i.mv                ; 2 uses
  %i.nb = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.na, i1 true, i1 %i.nb
  br i1 %cond.i.i, label %bb.bw, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.bw
  %i.nc = icmp eq i32 %.214.i.i, 0
  br i1 %i.nc, label %.thread1009, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i, %bb.bv, %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !72
  %i.nf = icmp eq i32 %i.ne, 193
  br i1 %i.nf, label %bb.bx, label %.thread1009

bb.bx:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !204
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !193 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !212 ; 2 uses
  %.sroa.0.0.copyload.i745 = load i16, ptr %i.nl, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i746 = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.sroa.21.0.copyload.i747 = load ptr, ptr %.sroa.21.0..sroa_idx.i746, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  store i16 0, ptr %18, align 8, !tbaa !648
  %i.nm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.nm, align 8, !tbaa !649
  %i.nn = getelementptr i8, ptr %i.nj, i64 88
  %.val = load ptr, ptr %i.nn, align 8, !tbaa !403
  %i.no = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111DAGCombiner16isAndLoadExtLoadEPN4llvm14ConstantSDNodeEPNS1_10LoadSDNodeENS1_3EVTERS6_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %.val, ptr noundef nonnull %i.le, i16 %.sroa.0.0.copyload.i745, ptr %.sroa.21.0.copyload.i747, ptr noundef nonnull align 8 dereferenceable(16) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br i1 %i.no, label %.critedge653, label %..thread1009_crit_edge

..thread1009_crit_edge:                           ; preds = %bb.bx
  %.pre1046.a = load ptr, ptr %2, align 8, !tbaa !193
  br label %.thread1009

.thread1009:                                      ; preds = %..thread1009_crit_edge, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %i.np = phi ptr [ %.pre1046.a, %..thread1009_crit_edge ], [ %i.mu, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %i.mu, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ] ; 2 uses
  %.sroa.0291.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.2293.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !204 ; 2 uses
  %.sroa.0288.0.copyload = load ptr, ptr %i.nr, align 8, !tbaa !74
  %.sroa.2289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %.sroa.2289.0.copyload = load i32, ptr %.sroa.2289.0..sroa_idx, align 8, !tbaa !198
  %i.ns = load ptr, ptr %i.t, align 8, !tbaa !347, !nonnull !53, !align !197
  %i.nt = call fastcc noundef zeroext i1 @_ZL23ExtendUsesToFormExtLoadN4llvm3EVTEPNS_6SDNodeENS_7SDValueEjRNS_15SmallVectorImplIS2_EERKNS_14TargetLoweringE(i16 %.sroa.0291.0.copyload, ptr %.sroa.2293.0.copyload, ptr noundef %i.np, ptr %.sroa.0288.0.copyload, i32 %.sroa.2289.0.copyload, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(518435) %i.ns)
  br i1 %i.nt, label %bb.by, label %.critedge653

bb.by:                                            ; preds = %.thread1009
  %i.nu = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.nv = getelementptr inbounds nuw i8, ptr %i.le, i64 72 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !352
  store i64 %i.nw, ptr %19, align 8, !tbaa !352
  %i.nx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.le, i64 68 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !351
  store i32 %i.nz, ptr %i.nx, align 8, !tbaa !396
  %.sroa.0285.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.2287.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216
  %i.oa = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !204 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %.sroa.0.0.copyload.i750 = load i16, ptr %i.md, align 8, !tbaa !214
  %.sroa.21.0.copyload.i752 = load ptr, ptr %.sroa.21.0..sroa_idx.i740, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i750, ptr %20, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.sroa.21.0.copyload.i752, ptr %i.od, align 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.me, align 8
  %i.oe = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.of = inttoptr i64 %i.oe to ptr
  %i.og = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getExtLoadENS_3ISD11LoadExtTypeERKNS_5SDLocENS_3EVTENS_7SDValueES7_S6_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.nu, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(12) %19, i16 %.sroa.0285.0.copyload, ptr %.sroa.2287.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ob, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.oc, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %20, ptr noundef %i.of) #36 ; 2 uses
  %.fca.0.extract281 = extractvalue { ptr, i32 } %i.og, 0 ; 5 uses
  %.fca.1.extract282 = extractvalue { ptr, i32 } %i.og, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  %i.oh = load ptr, ptr %2, align 8, !tbaa !193
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !204
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 40
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !193
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 88
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !403
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load i16, ptr %3, align 8, !tbaa !387   ; 2 uses
  %.not.i755 = icmp eq i16 %i.op, 0
  br i1 %.not.i755, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.oq = zext i16 %i.op to i64
  %i.or = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.oq ; 2 uses
  %i.os = getelementptr i8, ptr %i.or, i64 -16
  %.sroa.0.0.copyload.i.i756 = load i64, ptr %i.os, align 16
  %.sroa.2.0..sroa_idx.i.i757 = getelementptr i8, ptr %i.or, i64 -8
  %.sroa.2.0.copyload.i.i758 = load i8, ptr %.sroa.2.0..sroa_idx.i.i757, align 8
  %.fca.0.insert.i.i759 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i756, 0
  %.fca.1.insert.i.i760 = insertvalue { i64, i8 } %.fca.0.insert.i.i759, i8 %.sroa.2.0.copyload.i.i758, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit762

bb.ca:                                            ; preds = %bb.by
  %i.ot = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit762

_ZNK4llvm3EVT13getSizeInBitsEv.exit762:           ; preds = %bb.bz, %bb.ca
  %.pn.i761 = phi { i64, i8 } [ %.fca.1.insert.i.i760, %bb.bz ], [ %i.ot, %bb.ca ] ; 2 uses
  %.fca.1.extract278 = extractvalue { i64, i8 } %.pn.i761, 1
  %i.ou = trunc nuw i8 %.fca.1.extract278 to i1
  br i1 %i.ou, label %bb.cb, label %_ZNK4llvm8TypeSizecvmEv.exit763

bb.cb:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit762
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit763:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit762
  %.fca.0.extract277 = extractvalue { i64, i8 } %.pn.i761, 0
  %i.ov = trunc i64 %.fca.0.extract277 to i32
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %21, ptr noundef nonnull align 8 dereferenceable(12) %i.oo, i32 noundef %i.ov) #36
  %i.ow = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %i.ox = load ptr, ptr %2, align 8, !tbaa !193
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !72
  %.sroa.0271.0.copyload = load i16, ptr %3, align 8, !tbaa !214 ; 2 uses
  %.sroa.2273.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216 ; 2 uses
  store ptr %.fca.0.extract281, ptr %22, align 8, !tbaa !74
  %.sroa.8.0..sroa_idx938 = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract282, ptr %.sroa.8.0..sroa_idx938, align 8, !tbaa !198
  %i.pa = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ow, ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0271.0.copyload, ptr %.sroa.2273.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract264 = extractvalue { ptr, i32 } %i.pa, 0
  %.fca.1.extract265 = extractvalue { ptr, i32 } %i.pa, 1
  store ptr %.fca.0.extract264, ptr %23, align 8
  %.sroa.2267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract265, ptr %.sroa.2267.0..sroa_idx, align 8
  %i.pb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ow, i32 noundef %i.oz, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0271.0.copyload, ptr %.sroa.2273.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #36 ; 2 uses
  %.fca.0.extract260 = extractvalue { ptr, i32 } %i.pb, 0 ; 2 uses
  %.fca.1.extract261 = extractvalue { ptr, i32 } %i.pb, 1 ; 2 uses
  %i.pc = load ptr, ptr %2, align 8, !tbaa !193
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !204 ; 2 uses
  %.sroa.0257.0.copyload = load ptr, ptr %i.pe, align 8, !tbaa !74
  %.sroa.2258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %.sroa.2258.0.copyload = load i32, ptr %.sroa.2258.0..sroa_idx, align 8, !tbaa !198
  %.val666 = load ptr, ptr %17, align 8, !tbaa !43
  %.val667 = load i32, ptr %i.ms, align 8, !tbaa !76
  call fastcc void @_ZN12_GLOBAL__N_111DAGCombiner15ExtendSetCCUsesERKN4llvm15SmallVectorImplIPNS1_6SDNodeEEENS1_7SDValueES8_NS1_3ISD8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %.val666, i32 %.val667, ptr %.sroa.0257.0.copyload, i32 %.sroa.2258.0.copyload, ptr %.fca.0.extract281, i32 %.fca.1.extract282, i32 noundef 228)
  %i.pf = load ptr, ptr %2, align 8, !tbaa !193
  %i.pg = load i32, ptr %.sroa.2564.0..sroa_idx, align 8, !tbaa !211
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 56
  %.sroa.018.022.i.i764 = load ptr, ptr %i.ph, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i765 = icmp eq ptr %.sroa.018.022.i.i764, null
  br i1 %.not23.i.i765, label %_ZNK4llvm7SDValue9hasOneUseEv.exit775, label %.lr.ph.i.i766

bb.cc:                                            ; preds = %.lr.ph.i.i766
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i767, i64 32
  %.sroa.018.0.i.i773 = load ptr, ptr %i.pi, align 8, !tbaa !210 ; 2 uses
  %.not.i.i774 = icmp eq ptr %.sroa.018.0.i.i773, null
  br i1 %.not.i.i774, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i771, label %.lr.ph.i.i766

.lr.ph.i.i766:                                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit763, %bb.cc
  %.sroa.018.025.i.i767 = phi ptr [ %.sroa.018.0.i.i773, %bb.cc ], [ %.sroa.018.022.i.i764, %_ZNK4llvm8TypeSizecvmEv.exit763 ] ; 2 uses
  %.01224.i.i768 = phi i32 [ %.214.i.i769, %bb.cc ], [ 1, %_ZNK4llvm8TypeSizecvmEv.exit763 ] ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i767, i64 8
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !211
  %i.pl = icmp ne i32 %i.pk, %i.pg                ; 2 uses
  %i.pm = icmp ne i32 %.01224.i.i768, 0
  %.214.i.i769 = select i1 %i.pl, i32 %.01224.i.i768, i32 0 ; 2 uses
  %cond.i.i770 = select i1 %i.pl, i1 true, i1 %i.pm ; 2 uses
  br i1 %cond.i.i770, label %bb.cc, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i771

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i771: ; preds = %.lr.ph.i.i766, %bb.cc
  %i.pn = icmp eq i32 %.214.i.i769, 0
  %i.po = select i1 %cond.i.i770, i1 %i.pn, i1 false
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit775

_ZNK4llvm7SDValue9hasOneUseEv.exit775:            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit763, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i771
  %.not.lcssa.i.i772 = phi i1 [ false, %_ZNK4llvm8TypeSizecvmEv.exit763 ], [ %i.po, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i771 ]
  %i.pp = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %.sroa.018.022.i.i776 = load ptr, ptr %i.pp, align 8, !tbaa !210 ; 2 uses
  %.not23.i.i777 = icmp eq ptr %.sroa.018.022.i.i776, null
  br i1 %.not23.i.i777, label %_ZNK4llvm7SDValue9hasOneUseEv.exit787, label %.lr.ph.i.i778

bb.cd:                                            ; preds = %.lr.ph.i.i778
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i779, i64 32
  %.sroa.018.0.i.i785 = load ptr, ptr %i.pq, align 8, !tbaa !210 ; 2 uses
  %.not.i.i786 = icmp eq ptr %.sroa.018.0.i.i785, null
  br i1 %.not.i.i786, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i783, label %.lr.ph.i.i778

.lr.ph.i.i778:                                    ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit775, %bb.cd
  %.sroa.018.025.i.i779 = phi ptr [ %.sroa.018.0.i.i785, %bb.cd ], [ %.sroa.018.022.i.i776, %_ZNK4llvm7SDValue9hasOneUseEv.exit775 ] ; 2 uses
  %.01224.i.i780 = phi i32 [ %.214.i.i781, %bb.cd ], [ 1, %_ZNK4llvm7SDValue9hasOneUseEv.exit775 ] ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i779, i64 8
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !211
  %i.pt = icmp ne i32 %i.ps, 0                    ; 2 uses
  %i.pu = icmp ne i32 %.01224.i.i780, 0
  %.214.i.i781 = select i1 %i.pt, i32 %.01224.i.i780, i32 0 ; 2 uses
  %cond.i.i782 = select i1 %i.pt, i1 true, i1 %i.pu ; 2 uses
  br i1 %cond.i.i782, label %bb.cd, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i783

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i783: ; preds = %.lr.ph.i.i778, %bb.cd
  %i.pv = icmp eq i32 %.214.i.i781, 0
  %i.pw = select i1 %cond.i.i782, i1 %i.pv, i1 false
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit787

_ZNK4llvm7SDValue9hasOneUseEv.exit787:            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit775, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i783
  %.not.lcssa.i.i784 = phi i1 [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit775 ], [ %i.pw, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i783 ]
  call fastcc void @_ZN12_GLOBAL__N_111DAGCombiner9CombineToEPN4llvm6SDNodeENS1_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr %.fca.0.extract260, i32 %.fca.1.extract261, i1 noundef zeroext true)
  br i1 %.not.lcssa.i.i772, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit787
  %i.px = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.py = load ptr, ptr %2, align 8, !tbaa !193
  %i.pz = load i32, ptr %.sroa.2564.0..sroa_idx, align 8, !tbaa !211
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 48
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !212
  %i.qc = zext i32 %i.pz to i64
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %i.qc ; 2 uses
  %.sroa.0.0.copyload.i.i788 = load i16, ptr %i.qd, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i789 = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.21.0.copyload.i.i790 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i789, align 8, !tbaa !216
  store ptr %.fca.0.extract260, ptr %24, align 8, !tbaa !74
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract261, ptr %.sroa.5275.0..sroa_idx, align 8, !tbaa !198
  %i.qe = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.px, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i788, ptr %.sroa.21.0.copyload.i.i790, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #36 ; 2 uses
  %.fca.0.extract238 = extractvalue { ptr, i32 } %i.qe, 0
  %.fca.1.extract239 = extractvalue { ptr, i32 } %i.qe, 1
  %i.qf = load ptr, ptr %2, align 8, !tbaa !193
  call fastcc void @_ZN12_GLOBAL__N_111DAGCombiner9CombineToEPN4llvm6SDNodeENS1_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %i.qf, ptr %.fca.0.extract238, i32 %.fca.1.extract239, i1 noundef zeroext true)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZNK4llvm7SDValue9hasOneUseEv.exit787
  %i.qg = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  br i1 %.not.lcssa.i.i784, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.qg, ptr %i.le, i32 1, ptr %.fca.0.extract281, i32 1) #36
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111DAGCombiner16visitZERO_EXTENDEPN4llvm6SDNodeE:bb.a
bb.dm:                                            ; preds = %bb.dl
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit877:                  ; preds = %bb.dl
  %.fca.0.extract76 = extractvalue { i64, i8 } %i.xp, 0
  %i.xw = sub i64 %.fca.0.extract76, %.fca.0.extract72
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wx, i64 88 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !403
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.ya = and i64 %i.xw, 4294967295
  %i.yb = call noundef zeroext i1 @_ZNK4llvm5APInt3ugtEm(ptr noundef nonnull align 8 dereferenceable(12) %i.xz, i64 noundef %i.ya)
  br i1 %i.yb, label %bb.dn, label %.critedge661

bb.dn:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit877
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.yc = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.066.0.copyload = load ptr, ptr %35, align 8, !tbaa !74
  %.sroa.267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.267.0.copyload = load i32, ptr %.sroa.267.0..sroa_idx, align 8, !tbaa !198
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %37, ptr noundef nonnull align 8 dereferenceable(920) %i.yc, ptr %.sroa.066.0.copyload, i32 %.sroa.267.0.copyload, i32 noundef 0) #36
  %i.yd = load ptr, ptr %i.xx, align 8, !tbaa !403
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yf = call noundef i32 @_ZNK4llvm9KnownBits20countMinLeadingZerosEv(ptr noundef nonnull align 8 dereferenceable(32) %37)
  %i.yg = zext i32 %i.yf to i64
  %i.yh = call noundef zeroext i1 @_ZNK4llvm5APInt3ugtEm(ptr noundef nonnull align 8 dereferenceable(12) %i.ye, i64 noundef %i.yg)
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %37) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  br i1 %i.yh, label %.critedge663, label %.critedge661

.critedge661:                                     ; preds = %bb.dn, %_ZNK4llvm8TypeSizecvmEv.exit877, %bb.dk
  %i.yi = load i16, ptr %3, align 8, !tbaa !387   ; 2 uses
  %.not.i878 = icmp eq i16 %i.yi, 0
  br i1 %.not.i878, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.critedge661
  %i.yj = zext i16 %i.yi to i64
  %i.yk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.yj ; 2 uses
  %i.yl = getelementptr i8, ptr %i.yk, i64 -16
  %.sroa.0.0.copyload.i.i879 = load i64, ptr %i.yl, align 16
  %.sroa.2.0..sroa_idx.i.i880 = getelementptr i8, ptr %i.yk, i64 -8
  %.sroa.2.0.copyload.i.i881 = load i8, ptr %.sroa.2.0..sroa_idx.i.i880, align 8
  %.fca.0.insert.i.i882 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i879, 0
  %.fca.1.insert.i.i883 = insertvalue { i64, i8 } %.fca.0.insert.i.i882, i8 %.sroa.2.0.copyload.i.i881, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit885

bb.dp:                                            ; preds = %.critedge661
  %i.ym = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit885

_ZNK4llvm3EVT13getSizeInBitsEv.exit885:           ; preds = %bb.do, %bb.dp
  %.pn.i884 = phi { i64, i8 } [ %.fca.1.insert.i.i883, %bb.do ], [ %i.ym, %bb.dp ] ; 2 uses
  %.fca.1.extract63 = extractvalue { i64, i8 } %.pn.i884, 1
  %i.yn = trunc nuw i8 %.fca.1.extract63 to i1
  br i1 %i.yn, label %bb.dq, label %_ZNK4llvm8TypeSizecvmEv.exit886

bb.dq:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit885
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit886:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit885
  %i.yo = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %36) ; 2 uses
  %.fca.1.extract59 = extractvalue { i64, i8 } %i.yo, 1
  %i.yp = trunc nuw i8 %.fca.1.extract59 to i1
  br i1 %i.yp, label %bb.dr, label %_ZNK4llvm8TypeSizecvmEv.exit887

bb.dr:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit886
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit887:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit886
  %.fca.0.extract58 = extractvalue { i64, i8 } %i.yo, 0
  %.fca.0.extract62 = extractvalue { i64, i8 } %.pn.i884, 0
  %i.yq = trunc i64 %.fca.0.extract62 to i32
  %i.yr = add i32 %i.yq, -1
  %i.ys = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yr, i1 false)
  %i.yt = sub nuw nsw i32 32, %i.ys
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = icmp ult i64 %.fca.0.extract58, %i.yu
  br i1 %i.yv, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit887
  %i.yw = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.yx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.yw, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36) #36 ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.yx, 0
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.yx, 1
  store ptr %.fca.0.extract53, ptr %36, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.fca.1.extract54, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !198
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %_ZNK4llvm8TypeSizecvmEv.exit887
  %i.yy = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %i.yz = load ptr, ptr %2, align 8, !tbaa !193
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !72
  %.sroa.050.0.copyload = load i16, ptr %3, align 8, !tbaa !214 ; 2 uses
  %.sroa.252.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216 ; 2 uses
  %i.zc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.yy, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.050.0.copyload, ptr %.sroa.252.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35) #36 ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.zc, 0
  %.fca.1.extract44 = extractvalue { ptr, i32 } %i.zc, 1
  store ptr %.fca.0.extract43, ptr %38, align 8
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract44, ptr %.sroa.246.0..sroa_idx, align 8
  %i.zd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.yy, i32 noundef %i.zb, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.050.0.copyload, ptr %.sroa.252.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36) #36 ; 2 uses
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.zd, 0
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.zd, 1
  br label %.critedge663

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %.lr.ph.i.i865, %bb.di, %bb.dh, %_ZNK4llvm7SDValue9hasOneUseEv.exit874, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %bb.du

bb.du:                                            ; preds = %bb.df, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread, %bb.dg
  %i.ze = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner28matchVSelectOpSizesWithSetCCEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i32 } %i.ze, 0 ; 2 uses
  %.fca.1.extract36 = extractvalue { ptr, i32 } %i.ze, 1
  %.not1038.a = icmp eq ptr %.fca.0.extract35, null
  br i1 %.not1038.a, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %i.zf = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.zg = call fastcc { ptr, i32 } @_ZL10widenCtPopPN4llvm6SDNodeERNS_12SelectionDAGERKNS_5SDLocE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %i.zf, ptr noundef nonnull align 8 dereferenceable(12) %4) ; 2 uses
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.zg, 0 ; 2 uses
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.zg, 1
  %.not1039.a = icmp eq ptr %.fca.0.extract31, null
  br i1 %.not1039.a, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.zh = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.zi = call fastcc { ptr, i32 } @_ZL8widenAbsPN4llvm6SDNodeERNS_12SelectionDAGE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(920) %i.zh) ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.zi, 0 ; 2 uses
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.zi, 1
  %.not1040.a = icmp eq ptr %.fca.0.extract27, null
  br i1 %.not1040.a, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %i.zj = load ptr, ptr %i.t, align 8, !tbaa !347, !nonnull !53, !align !197
  %i.zk = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !321
  %i.zn = call fastcc { ptr, i32 } @_ZL25tryToFoldExtendSelectLoadPN4llvm6SDNodeERKNS_14TargetLoweringERNS_12SelectionDAGERKNS_5SDLocENS_12CombineLevelE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(518435) %i.zj, ptr noundef nonnull align 8 dereferenceable(920) %i.zk, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.zm) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.zn, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.zn, 1
  %.not1041 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not1041, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %.sroa.0.0.copyload.i888 = load i32, ptr %i.kf, align 4, !tbaa !198
  %i.zo = and i32 %.sroa.0.0.copyload.i888, 16
  %.not1042 = icmp eq i32 %i.zo, 0
  br i1 %.not1042, label %.critedge665.a, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.zp = load ptr, ptr %i.t, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %i.zq = load ptr, ptr %2, align 8, !tbaa !193
  %i.zr = load i32, ptr %.sroa.2564.0..sroa_idx, align 8, !tbaa !211
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 48
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !212
  %i.zu = zext i32 %i.zr to i64
  %i.zv = getelementptr inbounds nuw [16 x i8], ptr %i.zt, i64 %i.zu ; 2 uses
  %.sroa.0.0.copyload.i.i889 = load i16, ptr %i.zv, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i890 = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %.sroa.21.0.copyload.i.i891 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i890, align 8, !tbaa !216
  %.sroa.020.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.222.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !216
  %i.zw = load ptr, ptr %i.zp, align 8, !tbaa !45
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 1448
  %i.zy = load ptr, ptr %i.zx, align 8
  %i.zz = call noundef zeroext i1 %i.zy(ptr noundef nonnull align 8 dereferenceable(518435) %i.zp, i16 %.sroa.0.0.copyload.i.i889, ptr %.sroa.21.0.copyload.i.i891, i16 %.sroa.020.0.copyload, ptr %.sroa.222.0.copyload) #36
  br i1 %i.zz, label %.critedge665.a, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aaa = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.aab = load ptr, ptr %i.c, align 8, !tbaa !212
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !350
  %i.aae = zext i16 %i.aad to i32
  %i.aaf = call noundef ptr @_ZN4llvm12SelectionDAG15getNodeIfExistsEjNS_8SDVTListENS_8ArrayRefINS_7SDValueEEEb(ptr noundef nonnull align 8 dereferenceable(920) %i.aaa, i32 noundef 227, ptr %i.aab, i32 %i.aae, ptr nonnull %2, i64 1, i1 noundef zeroext false) #36 ; 2 uses
  %.not642 = icmp eq ptr %i.aaf, null
  br i1 %.not642, label %.critedge665.a, label %bb.eb

.critedge665.a:                                   ; preds = %bb.dy, %bb.ea, %bb.dz
  br label %bb.eb

.critedge649:                                     ; preds = %.critedge, %bb.ab, %bb.ac, %bb.an, %bb.ak
  %.sroa.50.2 = phi i32 [ %.fca.1.extract442, %bb.an ], [ %.fca.1.extract511, %bb.ab ], [ %.fca.1.extract503, %bb.ac ], [ %.fca.1.extract471, %bb.ak ], [ %.sroa.7530.0.copyload, %.critedge ]
  %.sroa.0988.2 = phi ptr [ %.fca.0.extract441, %bb.an ], [ %.fca.0.extract510, %bb.ab ], [ %.fca.0.extract502, %bb.ac ], [ %.fca.0.extract470, %bb.ak ], [ %.sroa.0526.0.copyload, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.eb

.critedge663:                                     ; preds = %bb.dn, %bb.dt
  %.sroa.50.3 = phi i32 [ %.fca.1.extract40, %bb.dt ], [ 0, %bb.dn ]
  %.sroa.0988.3 = phi ptr [ %.fca.0.extract39, %bb.dt ], [ null, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_6SDNodeELj4EED2Ev.exit, %bb.ea, %bb.de, %bb.w, %bb.x, %_ZN4llvm5APIntD2Ev.exit, %bb.dx, %bb.dw, %bb.dv, %bb.du, %.critedge663, %.critedge657, %bb.co, %bb.cn, %.critedge655, %bb.bk, %bb.bj, %bb.bi, %.thread1003, %_ZN4llvm5APIntD2Ev.exit729, %.critedge649, %.critedge665.a
  %.sroa.50.4 = phi i32 [ %.fca.1.extract554, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.1.extract368, %_ZN4llvm5APIntD2Ev.exit729 ], [ %.sroa.50.2, %.critedge649 ], [ %.fca.1.extract361, %.thread1003 ], [ %.fca.1.extract354, %bb.bi ], [ %.fca.1.extract350, %bb.bj ], [ %.fca.1.extract340, %bb.bk ], [ %.fca.1.extract205, %.critedge655 ], [ %.fca.1.extract198, %bb.cn ], [ %.fca.1.extract194, %bb.co ], [ %.fca.1.extract36, %bb.du ], [ %.fca.1.extract32, %bb.dv ], [ %.fca.1.extract28, %bb.dw ], [ %.fca.1.extract, %bb.dx ], [ 0, %.critedge665.a ], [ 0, %bb.w ], [ %.sroa.50.3, %.critedge663 ], [ %.fca.1.extract90, %bb.de ], [ %.sroa.50.0, %.critedge657 ], [ 0, %_ZN4llvm11SmallVectorIPNS_6SDNodeELj4EED2Ev.exit ], [ 0, %bb.x ], [ 0, %bb.ea ]
  %.sroa.0988.4 = phi ptr [ %.fca.0.extract553, %_ZN4llvm5APIntD2Ev.exit ], [ %.fca.0.extract367, %_ZN4llvm5APIntD2Ev.exit729 ], [ %.sroa.0988.2, %.critedge649 ], [ %.fca.0.extract360, %.thread1003 ], [ %.fca.0.extract353, %bb.bi ], [ %.fca.0.extract349, %bb.bj ], [ %.fca.0.extract339, %bb.bk ], [ %.fca.0.extract204, %.critedge655 ], [ %.fca.0.extract197, %bb.cn ], [ %.fca.0.extract193, %bb.co ], [ %.fca.0.extract35, %bb.du ], [ %.fca.0.extract31, %bb.dv ], [ %.fca.0.extract27, %bb.dw ], [ %.fca.0.extract, %bb.dx ], [ null, %.critedge665.a ], [ %1, %bb.w ], [ %.sroa.0988.3, %.critedge663 ], [ %.fca.0.extract89, %bb.de ], [ %.sroa.0988.0, %.critedge657 ], [ %1, %_ZN4llvm11SmallVectorIPNS_6SDNodeELj4EED2Ev.exit ], [ %1, %bb.x ], [ %i.aaf, %bb.ea ]
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.aag = insertvalue { ptr, i32 } poison, ptr %.sroa.0988.4, 0
  %i.aah = insertvalue { ptr, i32 } %i.aag, i32 %.sroa.50.4, 1
  br label %bb.ec

bb.ec:                                            ; preds = %bb.e, %bb.b, %bb.eb, %bb.i, %bb.h, %bb.d
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %bb.e ], [ %i.ai, %bb.h ], [ %i.am, %bb.i ], [ %i.aah, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner15visitANY_EXTENDEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 25 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 21 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SmallVector.981", align 8 ; 11 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %15 = alloca %"class.llvm::SelectionDAG::FlagInserter", align 8 ; 9 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %.sroa.0509.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !74 ; 37 uses
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.c = load <2 x i32>, ptr %.sroa.60.0..sroa_idx, align 8
  %.sroa.60.0.copyload = load i32, ptr %.sroa.60.0..sroa_idx, align 8, !tbaa !198 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.e, align 8, !tbaa !214 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !216 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 18 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !352
  store i64 %i.h, ptr %4, align 8, !tbaa !352
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !351
  store i32 %i.k, ptr %i.i, align 8, !tbaa !396
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0509.0.copyload, i64 24 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !72
  %i.n = add i32 %i.m, -53
  %spec.select.i.i = icmp ult i32 %i.n, 2
  br i1 %spec.select.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.o, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.fca.0.extract311 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract312 = extractvalue { ptr, i32 } %i.p, 1
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !347, !nonnull !53, !align !197
  %i.s = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.u = load i8, ptr %i.t, align 2, !tbaa !325, !range !52, !noundef !53
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = call fastcc { ptr, i32 } @_ZL25tryToFoldExtendOfConstantPN4llvm6SDNodeERKNS_5SDLocERKNS_14TargetLoweringERNS_12SelectionDAGEb(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(518435) %i.r, ptr noundef nonnull align 8 dereferenceable(920) %i.s, i1 noundef zeroext %i.v) ; 2 uses
  %.fca.0.extract301 = extractvalue { ptr, i32 } %i.w, 0 ; 2 uses
  %.fca.1.extract302 = extractvalue { ptr, i32 } %i.w, 1
  %.not596 = icmp eq ptr %.fca.0.extract301, null
  br i1 %.not596, label %bb.d, label %bb.bf

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.l, align 8, !tbaa !72   ; 4 uses
  switch i32 %i.x, label %.critedge [
    i32 229, label %.thread
    i32 228, label %bb.e
    i32 227, label %.thread
    i32 237, label %bb.f
    i32 239, label %bb.f
    i32 238, label %bb.f
    i32 230, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0509.0.copyload, i64 28
  %.sroa.0.0.copyload.i344 = load i32, ptr %i.y, align 4, !tbaa !198
  %i.z = and i32 %.sroa.0.0.copyload.i344, 16
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.d, %bb.e
  %.sroa.0507.0 = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %bb.d ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0298.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.2300.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0509.0.copyload, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !204
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.aa, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0298.0.copyload, ptr %.sroa.2300.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ac, i32 %.sroa.0507.0) #36 ; 2 uses
  %.fca.0.extract293 = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract294 = extractvalue { ptr, i32 } %i.ad, 1
  br label %bb.bf

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0290.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.2292.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0509.0.copyload, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !204
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ae, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0290.0.copyload, ptr %.sroa.2292.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ag) #36 ; 2 uses
  %.fca.0.extract286 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract287 = extractvalue { ptr, i32 } %i.ah, 1
  br label %bb.bf

bb.g:                                             ; preds = %bb.d
  %i.ai = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner15reduceLoadWidthEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %.sroa.0509.0.copyload) ; 2 uses
  %.fca.0.extract282 = extractvalue { ptr, i32 } %i.ai, 0 ; 3 uses
  %.fca.1.extract283 = extractvalue { ptr, i32 } %i.ai, 1
  %.not597 = icmp eq ptr %.fca.0.extract282, null
  br i1 %.not597, label %..critedge_crit_edge, label %bb.h

..critedge_crit_edge:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.l, align 8, !tbaa !72
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq ptr %.fca.0.extract282, %.sroa.0509.0.copyload
  br i1 %.not, label %bb.bf, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0509.0.copyload, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !204
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !193
  call fastcc void @_ZN12_GLOBAL__N_111DAGCombiner9CombineToEPN4llvm6SDNodeENS1_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %.sroa.0509.0.copyload, ptr nonnull %.fca.0.extract282, i32 %.fca.1.extract283, i1 noundef zeroext true)
  call fastcc void @_ZN12_GLOBAL__N_111DAGCombiner13AddToWorklistEPN4llvm6SDNodeEbb(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %i.al, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.bf

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.d
  %i.am = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.x, %bb.d ]
  switch i32 %i.am, label %.thread582 [
    i32 230, label %bb.j
    i32 193, label %bb.k
  ]

bb.j:                                             ; preds = %.critedge
  %i.an = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0509.0.copyload, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !204 ; 2 uses
  %.sroa.0273.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !74
  %.sroa.2274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2274.0.copyload = load i32, ptr %.sroa.2274.0..sroa_idx, align 8, !tbaa !198
  %.sroa.0270.0.copyload = load i16, ptr %3, align 8, !tbaa !214
  %.sroa.2272.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.an, ptr %.sroa.0273.0.copyload, i32 %.sroa.2274.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0270.0.copyload, ptr %.sroa.2272.0.copyload) #36 ; 2 uses
  %.fca.0.extract266 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract267 = extractvalue { ptr, i32 } %i.aq, 1
  br label %bb.bf

bb.k:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0509.0.copyload, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !204 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !193
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !72
  %i.ax = icmp eq i32 %i.aw, 12
  br i1 %i.ax, label %bb.l, label %.thread582

bb.l:                                             ; preds = %bb.k
  %.sroa.0496.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !74 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0496.0.copyload, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !72
  switch i32 %i.az, label %.thread582 [
    i32 230, label %bb.m
    i32 248, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0496.0.copyload, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !204 ; 2 uses
  %.sroa.0492.0.copyload493 = load ptr, ptr %i.bb, align 8, !tbaa !74
  %.sroa.11.0..sroa_idx494 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
end_hunk_1
