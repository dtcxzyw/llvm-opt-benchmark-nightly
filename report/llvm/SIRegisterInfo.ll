Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIRegisterInfo?download=true
inline.NumInlined: 3359
inline.NumDeleted: 1309
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK4llvm14SIRegisterInfo9spillSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbbb:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.fp = load ptr, ptr %i.aj, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !505
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -144064
  %i.ft = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.fn, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i32 %.sroa.0187.0.extract.trunc) ; 2 uses
  %i.fu = extractvalue { ptr, ptr } %i.ft, 0      ; 5 uses
  %i.fv = extractvalue { ptr, ptr } %i.ft, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store ptr null, ptr %i.dx, align 8, !tbaa !509, !alias.scope !944
  %i.fw = select i1 %i.fm, i32 67108864, i32 0    ; 2 uses
  store i32 %.sroa.0190.0, ptr %i.dy, align 4, !tbaa !8, !alias.scope !944
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false), !alias.scope !944
  store i32 %i.fw, ptr %22, align 8, !alias.scope !944
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fv, ptr noundef nonnull align 8 dereferenceable(1065) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.fx = ashr i64 %i.fh, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store i32 1, ptr %21, align 8, !alias.scope !947
  store ptr null, ptr %i.ea, align 8, !tbaa !509, !alias.scope !947
  store i64 %i.fx, ptr %i.eb, align 8, !tbaa !8, !alias.scope !947
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fv, ptr noundef nonnull align 8 dereferenceable(1065) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  store ptr null, ptr %i.ec, align 8, !tbaa !509, !alias.scope !950
  store i32 %.sroa.0187.0.extract.trunc, ptr %i.ed, align 4, !tbaa !8, !alias.scope !950
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false), !alias.scope !950
  store i32 0, ptr %20, align 8, !alias.scope !950
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fv, ptr noundef nonnull align 8 dereferenceable(1065) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br i1 %8, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.fy = load i32, ptr %23, align 8, !tbaa !570
  %i.fz = icmp eq i32 %i.fy, 7698
  br i1 %i.fz, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ga = icmp eq i64 %indvars.iv, %i.eu
  br i1 %i.ga, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.gb = load ptr, ptr %i.aa, align 8, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  store ptr null, ptr %25, align 8, !tbaa !462
  store ptr %.sroa.0192.0, ptr %26, align 8, !tbaa !953
  store i64 %.sroa.6193.0, ptr %.sroa.6193.0..sroa_idx, align 8, !tbaa !41
  %i.gc = call noundef ptr @_ZNK4llvm15SIFrameLowering26buildCFIForSGPRToVGPRSpillERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterENS_8ArrayRefINS_14SIRegisterInfo10SpilledRegEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(360) %i.gb, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %25, i32 17, ptr noundef nonnull byval(%"class.llvm::ArrayRef.399") align 8 %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.gd = load ptr, ptr %i.aa, align 8, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  store ptr null, ptr %27, align 8, !tbaa !462
  %i.ge = call noundef ptr @_ZNK4llvm15SIFrameLowering26buildCFIForSGPRToVGPRSpillERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_i(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(360) %i.gd, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %27, i32 %.sroa.0190.0, i32 %.sroa.0187.0.extract.trunc, i32 noundef %.sroa.6188.0.extract.trunc) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.0107 = phi ptr [ %i.gc, %bb.n ], [ null, %bb.m ], [ %i.ge, %bb.o ], [ null, %bb.k ] ; 2 uses
  br i1 %.not116, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.fi, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.gf = load ptr, ptr %i.eg, align 8, !tbaa !954, !noalias !957 ; 3 uses
  %i.gg = load ptr, ptr %i.eh, align 8, !tbaa !966, !noalias !957 ; 2 uses
  %i.gh = load i32, ptr %i.ei, align 4, !tbaa !967, !noalias !957 ; 4 uses
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.loopexit.i.i.i132, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gj = add i32 %i.gh, -1                       ; 2 uses
  %i.gk = and i32 %i.gj, %i.em                    ; 3 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = lshr i64 %i.gl, 5
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !52, !noalias !968
  %i.gp = and i32 %i.gk, 31
  %i.gq = lshr i32 %i.go, %i.gp
  %i.gr = trunc i32 %i.gq to i1
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i132, !prof !757

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %bb.t
  %i.gs = phi i64 [ %i.gy, %bb.t ], [ %i.gl, %bb.s ]
  %.017.i.i.i.i.i = phi i32 [ %i.gx, %bb.t ], [ %i.gk, %bb.s ]
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.gs ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !969, !noalias !968
  %i.gv = icmp eq ptr %1, %i.gu
  br i1 %i.gv, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i, label %bb.t, !prof !759

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.gw = add nuw i32 %.017.i.i.i.i.i, 1
  %i.gx = and i32 %i.gw, %i.gj                    ; 3 uses
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = lshr i64 %i.gy, 5
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !52, !noalias !968
  %i.hc = and i32 %i.gx, 31
  %i.hd = lshr i32 %i.hb, %i.hc
  %i.he = trunc i32 %i.hd to i1
  br i1 %i.he, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i132, !prof !758

.loopexit.i.i.i132:                               ; preds = %bb.t, %bb.s, %bb.r
  %i.hf = zext i32 %i.gh to i64                   ; 2 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.hf
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i135 = zext i32 %i.gh to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i, %.loopexit.i.i.i132
  %.pre-phi.i133 = phi i64 [ %.pre.i135, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i ], [ %i.hf, %.loopexit.i.i.i132 ]
  %.lcssa.sink.i.i.i134 = phi ptr [ %i.gt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i ], [ %i.hg, %.loopexit.i.i.i132 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %.pre-phi.i133
  %i.hi = icmp eq ptr %.lcssa.sink.i.i.i134, %i.hh
  br i1 %i.hi, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i134, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !8  ; 2 uses
  %i.hl = and i64 %i.hk, -8
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store ptr %i.fv, ptr %i.hn, align 8, !tbaa !970
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.eg, ptr noundef nonnull %.lcssa.sink.i.i.i134, ptr noundef nonnull align 1 dereferenceable(1) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store ptr %i.fv, ptr %19, align 8, !tbaa !974
  store i64 %i.hk, ptr %i.en, align 8, !tbaa !8
  %i.ho = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.en), !noalias !979 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit

bb.v:                                             ; preds = %bb.q
  %i.hp = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr noundef nonnull align 8 dereferenceable(80) %i.fv, i1 noundef zeroext false) ; 0 uses
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit

_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit: ; preds = %bb.u, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %bb.v
  %.not117 = icmp eq ptr %.0107, null
  br i1 %.not117, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit
  %i.hq = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr noundef nonnull align 8 dereferenceable(80) %.0107, i1 noundef zeroext false) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, %bb.w, %bb.p
  %i.hr = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.hs = icmp ugt i32 %i.hr, 1
  %or.cond4 = select i1 %i.fi, i1 %i.hs, i1 false
  br i1 %or.cond4, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.044.0.copyload = load i32, ptr %23, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr null, ptr %i.eo, align 8, !tbaa !509, !alias.scope !984
  store i32 %.sroa.044.0.copyload, ptr %i.ep, align 4, !tbaa !8, !alias.scope !984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false), !alias.scope !984
  store i32 50331648, ptr %17, align 8, !alias.scope !984
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fv, ptr noundef nonnull align 8 dereferenceable(1065) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %.pre240 = load i32, ptr %i.aw, align 8, !tbaa !912
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ht = phi i32 [ %.pre240, %bb.y ], [ %i.hr, %bb.x ]
  %i.hu = icmp ugt i32 %i.ht, 1
  %or.cond6 = select i1 %i.fi, i1 true, i1 %i.fj
  %or.cond = select i1 %i.hu, i1 %or.cond6, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.043.0.copyload = load i32, ptr %23, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store ptr null, ptr %i.er, align 8, !tbaa !509, !alias.scope !987
  %i.hv = or disjoint i32 %i.fw, 33554432
  store i32 %.sroa.043.0.copyload, ptr %i.es, align 4, !tbaa !8, !alias.scope !987
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false), !alias.scope !987
  store i32 %i.hv, ptr %16, align 8, !alias.scope !987
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fv, ptr noundef nonnull align 8 dereferenceable(1065) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !990

bb.ac:                                            ; preds = %bb.h
  call void @_ZN4llvm16SGPRSpillBuilder7prepareEv(ptr noundef nonnull align 8 dereferenceable(136) %23)
  %i.hw = load i32, ptr %i.aw, align 8, !tbaa !912 ; 2 uses
  %i.hx = load i8, ptr %i.al, align 8, !tbaa !910, !range !200, !noundef !193
  %i.hy = trunc nuw i8 %i.hx to i1                ; 2 uses
  %i.hz = select i1 %i.hy, i32 31, i32 63         ; 2 uses
  %i.ia = add i32 %i.hz, %i.hw
  %i.ib = select i1 %i.hy, i32 5, i32 6           ; 4 uses
  %i.ic = lshr i32 %i.ia, %i.ib                   ; 2 uses
  %.not223 = icmp eq i32 %i.ic, 0
  br i1 %.not223, label %._crit_edge222, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.ac
  %i.id = icmp eq i32 %i.hw, 1
  %i.ie = load i8, ptr %i.s, align 4, !range !200
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = select i1 %i.id, i1 %i.if, i1 false
  %i.ih = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ij = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.il = select i1 %i.ig, i32 67108864, i32 0
  %i.im = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.in = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.not = icmp eq ptr %4, null
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 7 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 124 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 3 uses
  %i.iz = mul i64 %.cast.i.i, -4658895280553007687 ; 2 uses
  %i.ja = lshr i64 %i.iz, 31
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jh = icmp ne ptr %4, null
  %29 = shl nuw nsw i32 1, %i.ib
  %i.ji = zext nneg i32 %i.hz to i64
  br label %bb.ad

._crit_edge222:                                   ; preds = %.critedge.thread, %bb.ac
  call void @_ZN4llvm16SGPRSpillBuilder7restoreEv(ptr noundef nonnull align 8 dereferenceable(136) %23)
  br label %.loopexit

bb.ad:                                            ; preds = %.lr.ph221, %.critedge.thread
  %indvars.iv234 = phi i32 [ 0, %.lr.ph221 ], [ %indvars.iv.next235, %.critedge.thread ] ; 2 uses
  %.0108219 = phi i32 [ 0, %.lr.ph221 ], [ %i.jk, %.critedge.thread ] ; 4 uses
  %i.jj = shl i32 %.0108219, %i.ib
  %i.jk = add nuw nsw i32 %.0108219, 1            ; 3 uses
  %i.jl = shl i32 %i.jk, %i.ib
  %i.jm = load i32, ptr %i.aw, align 8, !tbaa !52
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.jm, i32 %i.jl) ; 2 uses
  %i.jn = icmp ult i32 %i.jj, %.sroa.speculated
  br i1 %i.jn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.jo = zext i32 %indvars.iv234 to i64
  %wide.trip.count237 = zext i32 %.sroa.speculated to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge, %bb.ad
  call void @_ZN4llvm16SGPRSpillBuilder16readWriteTmpVGPREjb(ptr noundef nonnull align 8 dereferenceable(136) %23, i32 noundef %.0108219, i1 noundef zeroext false)
  %i.jp = load i32, ptr %23, align 8
  %i.jq = icmp eq i32 %i.jp, 7698
  %or.cond205 = select i1 %8, i1 %i.jq, i1 false
  br i1 %or.cond205, label %.critedge, label %.critedge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge
  %indvars.iv234.a = phi i64 [ %i.jo, %.lr.ph.preheader ], [ %i.sp, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge ] ; 4 uses
  %.0109218 = phi i32 [ 268435456, %.lr.ph.preheader ], [ 0, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge ]
  %i.jr = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.js = icmp eq i32 %i.jr, 1
  %i.jt = load i32, ptr %23, align 8, !tbaa !52   ; 2 uses
  br i1 %i.js, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.ju = load ptr, ptr %i.r, align 8, !tbaa !942
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %indvars.iv234.a
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !9
  %i.jx = sext i16 %i.jw to i32
  %i.jy = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.jt, i32 noundef %i.jx) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %.lr.ph, %bb.ae
  %.sroa.0171.0 = phi i32 [ %i.jy, %bb.ae ], [ %i.jt, %.lr.ph ]
  %i.jz = load ptr, ptr %i.aa, align 8, !tbaa !840 ; 2 uses
  %i.ka = load ptr, ptr %i.t, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.019.0.copyload = load ptr, ptr %i.ka, align 8, !tbaa !463
  %i.kb = load ptr, ptr %i.aj, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !505
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -144064
  %.sroa.018.0.copyload = load i32, ptr %i.v, align 8, !tbaa !52
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !464 ; 6 uses
  %i.kh = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %i.ke, ptr %.sroa.019.0.copyload, i1 noundef zeroext false) #27 ; 19 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr noundef %i.kh) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.kj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store ptr %1, ptr %i.kl, align 8, !tbaa !461
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.kh, align 8
  %i.km = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.kn = or disjoint i64 %i.km, %i.kj
  store i64 %i.kn, ptr %i.kh, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %i.kh, ptr %i.ko, align 8, !tbaa !461
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.kp = ptrtoint ptr %i.kh to i64               ; 3 uses
  %i.kq = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.kr = or disjoint i64 %i.kq, %i.kp
  store i64 %i.kr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr null, ptr %i.ih, align 8, !tbaa !509, !alias.scope !991
  store i32 %.sroa.018.0.copyload, ptr %i.ii, align 4, !tbaa !8, !alias.scope !991
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false), !alias.scope !991
  store i32 16777216, ptr %15, align 8, !alias.scope !991
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kh, ptr noundef nonnull align 8 dereferenceable(1065) %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store ptr null, ptr %i.ik, align 8, !tbaa !509, !alias.scope !994
  store i32 %.sroa.0171.0, ptr %i.im, align 4, !tbaa !8, !alias.scope !994
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false), !alias.scope !994
  store i32 %i.il, ptr %14, align 8, !alias.scope !994
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kh, ptr noundef nonnull align 8 dereferenceable(1065) %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.ks = and i64 %indvars.iv234.a, %i.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i32 1, ptr %13, align 8, !alias.scope !997
  store ptr null, ptr %i.io, align 8, !tbaa !509, !alias.scope !997
  store i64 %i.ks, ptr %i.ip, align 8, !tbaa !8, !alias.scope !997
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kh, ptr noundef nonnull align 8 dereferenceable(1065) %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %.sroa.016.0.copyload = load i32, ptr %i.v, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr null, ptr %i.iq, align 8, !tbaa !509, !alias.scope !1000
  store i32 %.sroa.016.0.copyload, ptr %i.ir, align 4, !tbaa !8, !alias.scope !1000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, i8 0, i64 16, i1 false), !alias.scope !1000
  store i32 %.0109218, ptr %12, align 8, !alias.scope !1000
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kh, ptr noundef nonnull align 8 dereferenceable(1065) %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br i1 %.not, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %i.kt = icmp eq i64 %indvars.iv234.a, 0
  br i1 %i.kt, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ku = load ptr, ptr %i.it, align 8, !tbaa !954, !noalias !1003 ; 3 uses
  %i.kv = load ptr, ptr %i.iu, align 8, !tbaa !966, !noalias !1003 ; 2 uses
  %i.kw = load i32, ptr %i.iv, align 4, !tbaa !967, !noalias !1003 ; 4 uses
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %.loopexit.i.i.i143, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ky = add i32 %i.kw, -1                       ; 2 uses
  %i.kz = and i32 %i.ky, %i.jc                    ; 3 uses
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = lshr i64 %i.la, 5
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !52, !noalias !1012
  %i.le = and i32 %i.kz, 31
  %i.lf = lshr i32 %i.ld, %i.le
  %i.lg = trunc i32 %i.lf to i1
  br i1 %i.lg, label %.lr.ph.i.i.i.i.i148, label %.loopexit.i.i.i143, !prof !757

.lr.ph.i.i.i.i.i148:                              ; preds = %bb.ah, %bb.ai
  %i.lh = phi i64 [ %i.ln, %bb.ai ], [ %i.la, %bb.ah ]
  %.017.i.i.i.i.i149 = phi i32 [ %i.lm, %bb.ai ], [ %i.kz, %bb.ah ]
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.lh ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !969, !noalias !1012
  %i.lk = icmp eq ptr %1, %i.lj
  br i1 %i.lk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150, label %bb.ai, !prof !759

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i148
  %i.ll = add nuw i32 %.017.i.i.i.i.i149, 1
  %i.lm = and i32 %i.ll, %i.ky                    ; 3 uses
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %i.lo = lshr i64 %i.ln, 5
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !52, !noalias !1012
  %i.lr = and i32 %i.lm, 31
  %i.ls = lshr i32 %i.lq, %i.lr
  %i.lt = trunc i32 %i.ls to i1
  br i1 %i.lt, label %.lr.ph.i.i.i.i.i148, label %.loopexit.i.i.i143, !prof !758

.loopexit.i.i.i143:                               ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.lu = zext i32 %i.kw to i64                   ; 2 uses
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.lu
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150: ; preds = %.lr.ph.i.i.i.i.i148
  %.pre.i151 = zext i32 %i.kw to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150, %.loopexit.i.i.i143
  %.pre-phi.i145 = phi i64 [ %.pre.i151, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150 ], [ %i.lu, %.loopexit.i.i.i143 ]
  %.lcssa.sink.i.i.i146 = phi ptr [ %i.li, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150 ], [ %i.lv, %.loopexit.i.i.i143 ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %.pre-phi.i145
  %i.lx = icmp eq ptr %.lcssa.sink.i.i.i146, %i.lw
  br i1 %i.lx, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144
  %i.ly = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i146, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !8  ; 2 uses
  %i.ma = and i64 %i.lz, -8
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store ptr %i.kh, ptr %i.mc, align 8, !tbaa !970
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.it, ptr noundef nonnull %.lcssa.sink.i.i.i146, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %i.kh, ptr %11, align 8, !tbaa !974
  store i64 %i.lz, ptr %i.jd, align 8, !tbaa !8
  %i.md = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.it, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.jd), !noalias !1013 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152

bb.ak:                                            ; preds = %bb.af
  %i.me = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !549 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !461
  %i.mi = load ptr, ptr %i.it, align 8            ; 2 uses
  %i.mj = load ptr, ptr %i.iu, align 8            ; 2 uses
  %i.mk = load i32, ptr %i.iv, align 4
  %.fr18.i.i = freeze i32 %i.mk                   ; 3 uses
  %i.ml = icmp eq i32 %.fr18.i.i, 0
  %i.mm = add i32 %.fr18.i.i, -1                  ; 2 uses
  %i.mn = zext i32 %.fr18.i.i to i64
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.mn ; 3 uses
  br i1 %i.ml, label %.split16.us.i30.i, label %.split.i17.i

.split.i17.i:                                     ; preds = %bb.ak, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i
  %.sroa.010.0.i18.i = phi ptr [ %.sroa.0.1.i.i.i.i20.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i ], [ %i.kh, %bb.ak ] ; 2 uses
  %i.mp = icmp eq ptr %.sroa.010.0.i18.i, %i.mh
  br i1 %i.mp, label %.split16.us.i30.i, label %bb.al

.split16.us.i30.i:                                ; preds = %.split.i17.i, %bb.ak
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !1018
  %i.ms = zext i32 %i.mr to i64
  %i.mt = load ptr, ptr %i.iw, align 8, !tbaa !202
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.ms
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i

bb.al:                                            ; preds = %.split.i17.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i = load i64, ptr %.sroa.010.0.i18.i, align 8
  %i.mv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i, -8
  %i.mw = inttoptr i64 %i.mv to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mw) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i = load i64, ptr %i.mw, align 8
  %i.mx = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i, 4
  %.not.i5.i.i.i.i = icmp eq i64 %i.mx, 0
end_hunk_0
begin_hunk_1_@_ZNK4llvm14SIRegisterInfo9spillSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbbb:bb.a
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i: ; preds = %.thread.i.i, %.split16.us.i30.i
  %.sroa.0.2.in.i24.i = phi ptr [ %i.mu, %.split16.us.i30.i ], [ %i.og, %.thread.i.i ]
  %.sroa.0.2.i25.i = load i64, ptr %.sroa.0.2.in.i24.i, align 8, !tbaa !8
  %i.oh = and i64 %.sroa.0.2.i25.i, -8
  %i.oi = inttoptr i64 %i.oh to ptr               ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !1025 ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !1026
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !1026 ; 2 uses
  %i.op = sub i32 %i.om, %i.oo
  %i.oq = lshr i32 %i.op, 1
  %i.or = and i32 %i.oq, 2147483644               ; 2 uses
  %i.os = add i32 %i.or, %i.oo
  %i.ot = load ptr, ptr %4, align 8, !tbaa !1027  ; 2 uses
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = add i64 %i.ou, 32                       ; 2 uses
  %i.ow = load i64, ptr %i.ix, align 8, !tbaa !1028
  %i.ox = icmp ult i64 %i.ov, %i.ow
  br i1 %i.ox, label %bb.an, label %bb.ao, !prof !759

bb.an:                                            ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i
  %i.oy = inttoptr i64 %i.ov to ptr
  store ptr %i.oy, ptr %4, align 8, !tbaa !1027
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i

bb.ao:                                            ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i
  %i.oz = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(416) %4, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i

_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i153 = phi ptr [ %i.ot, %bb.an ], [ %i.oz, %bb.ao ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i.i153, i8 0, i64 16, i1 false)
  %i.pa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i153, i64 16
  store ptr %i.kh, ptr %i.pa, align 8, !tbaa !970
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i153, i64 24
  store i32 %i.os, ptr %i.pb, align 8, !tbaa !1026
  %i.pc = load ptr, ptr %i.ok, align 8, !tbaa !1029 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i153, i64 8
  store ptr %i.ok, ptr %i.pd, align 8, !tbaa !1025
  store ptr %i.pc, ptr %.0.i.i.i.i153, align 8, !tbaa !1029
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store ptr %.0.i.i.i.i153, ptr %i.pe, align 8, !tbaa !1025
  store ptr %.0.i.i.i.i153, ptr %i.ok, align 8, !tbaa !1029
  %i.pf = icmp eq i32 %i.or, 0
  br i1 %i.pf, label %bb.ap, label %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit

bb.ap:                                            ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i
  call void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr nonnull %.0.i.i.i.i153) #27
  br label %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit

_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit: ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i, %bb.ap
  %i.pg = ptrtoint ptr %.0.i.i.i.i153 to i64
  %i.ph = load ptr, ptr %i.it, align 8, !tbaa !954, !noalias !1030 ; 3 uses
  %i.pi = load ptr, ptr %i.iu, align 8, !tbaa !966, !noalias !1030 ; 3 uses
  %i.pj = load i32, ptr %i.iv, align 4, !tbaa !967, !noalias !1030 ; 4 uses
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit
  %i.pl = add i32 %i.pj, -1                       ; 2 uses
  %i.pm = mul i64 %i.kp, -4658895280553007687     ; 2 uses
  %i.pn = lshr i64 %i.pm, 31
  %i.po = xor i64 %i.pn, %i.pm
  %i.pp = trunc i64 %i.po to i32
  %i.pq = and i32 %i.pl, %i.pp                    ; 3 uses
  %i.pr = zext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.ph, i64 %i.pr ; 2 uses
  %i.pt = lshr i64 %i.pr, 5
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !52, !noalias !1039
  %i.pw = and i32 %i.pq, 31
  %i.px = lshr i32 %i.pv, %i.pw
  %i.py = trunc i32 %i.px to i1
  br i1 %i.py, label %.lr.ph.i.i, label %.loopexit.i, !prof !757

.lr.ph.i.i:                                       ; preds = %bb.aq, %bb.ar
  %i.pz = phi ptr [ %i.qf, %bb.ar ], [ %i.ps, %bb.aq ]
  %.024.i.i = phi i32 [ %i.qd, %bb.ar ], [ %i.pq, %bb.aq ]
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !969, !noalias !1039
  %i.qb = icmp eq ptr %i.kh, %i.qa
  br i1 %i.qb, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152, label %bb.ar, !prof !759

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.qc = add nuw i32 %.024.i.i, 1
  %i.qd = and i32 %i.qc, %i.pl                    ; 3 uses
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.ph, i64 %i.qe ; 2 uses
  %i.qg = lshr i64 %i.qe, 5
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !52, !noalias !1039
  %i.qj = and i32 %i.qd, 31
  %i.qk = lshr i32 %i.qi, %i.qj
  %i.ql = trunc i32 %i.qk to i1
  br i1 %i.ql, label %.lr.ph.i.i, label %.loopexit.i, !prof !758, !llvm.loop !1040

.loopexit.i:                                      ; preds = %bb.ar, %bb.aq, %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ps, %bb.aq ], [ null, %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit ], [ %i.qf, %bb.ar ]
  %i.qm = load i32, ptr %i.iy, align 8, !tbaa !1041, !noalias !1039
  %i.qn = shl i32 %i.qm, 2
  %i.qo = add i32 %i.qn, 4
  %i.qp = mul i32 %i.pj, 3
  %.not.i.i155 = icmp ult i32 %i.qo, %i.qp
  br i1 %.not.i.i155, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, label %bb.as, !prof !759

bb.as:                                            ; preds = %.loopexit.i
  %i.qq = shl i32 %i.pj, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.it, i32 noundef %i.qq), !noalias !1039
  %i.qr = load ptr, ptr %i.it, align 8, !tbaa !954, !noalias !1042 ; 5 uses
  %i.qs = load ptr, ptr %i.iu, align 8, !tbaa !966, !noalias !1042 ; 5 uses
  %i.qt = load i32, ptr %i.iv, align 4, !tbaa !967, !noalias !1042 ; 2 uses
  %i.qu = icmp ne i32 %i.qt, 0
  call void @llvm.assume(i1 %i.qu)
  %i.qv = add i32 %i.qt, -1                       ; 2 uses
  %i.qw = mul i64 %i.kp, -4658895280553007687     ; 2 uses
  %i.qx = lshr i64 %i.qw, 31
  %i.qy = xor i64 %i.qx, %i.qw
  %i.qz = trunc i64 %i.qy to i32
  %i.ra = and i32 %i.qv, %i.qz                    ; 3 uses
  %i.rb = zext i32 %i.ra to i64                   ; 2 uses
  %i.rc = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %i.rb ; 2 uses
  %i.rd = lshr i64 %i.rb, 5
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !52, !noalias !1039
  %i.rg = and i32 %i.ra, 31
  %i.rh = lshr i32 %i.rf, %i.rg
  %i.ri = trunc i32 %i.rh to i1
  br i1 %i.ri, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, !prof !757

.lr.ph.i:                                         ; preds = %bb.as, %bb.at
  %i.rj = phi ptr [ %i.rp, %bb.at ], [ %i.rc, %bb.as ] ; 2 uses
  %.024.i = phi i32 [ %i.rn, %bb.at ], [ %i.ra, %bb.as ]
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !969, !noalias !1039
  %i.rl = icmp eq ptr %i.kh, %i.rk
  br i1 %i.rl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, label %bb.at, !prof !759

bb.at:                                            ; preds = %.lr.ph.i
  %i.rm = add nuw i32 %.024.i, 1
  %i.rn = and i32 %i.rm, %i.qv                    ; 3 uses
  %i.ro = zext i32 %i.rn to i64                   ; 2 uses
  %i.rp = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %i.ro ; 2 uses
  %i.rq = lshr i64 %i.ro, 5
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !52, !noalias !1039
  %i.rt = and i32 %i.rn, 31
  %i.ru = lshr i32 %i.rs, %i.rt
  %i.rv = trunc i32 %i.ru to i1
  br i1 %i.rv, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, !prof !758, !llvm.loop !1040

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i: ; preds = %bb.at, %.lr.ph.i, %bb.as, %.loopexit.i
  %i.rw = phi ptr [ %i.ph, %.loopexit.i ], [ %i.qr, %bb.as ], [ %i.qr, %.lr.ph.i ], [ %i.qr, %bb.at ]
  %i.rx = phi ptr [ %i.pi, %.loopexit.i ], [ %i.qs, %bb.as ], [ %i.qs, %.lr.ph.i ], [ %i.qs, %bb.at ]
  %i.ry = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.rc, %bb.as ], [ %i.rp, %bb.at ], [ %i.rj, %.lr.ph.i ] ; 3 uses
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = ptrtoint ptr %i.rw to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = ashr exact i64 %i.sb, 4                 ; 2 uses
  %i.sd = trunc i64 %i.sc to i32
  %i.se = and i32 %i.sd, 31
  %i.sf = shl nuw i32 1, %i.se
  %i.sg = lshr i64 %i.sc, 5
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.sg ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !52, !noalias !1039
  %i.sj = or i32 %i.sf, %i.si
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !52, !noalias !1039
  %i.sk = load i32, ptr %i.iy, align 8, !tbaa !1041, !noalias !1039
  %i.sl = add i32 %i.sk, 1
  store i32 %i.sl, ptr %i.iy, align 8, !tbaa !1041, !noalias !1039
  store ptr %i.kh, ptr %i.ry, align 8, !tbaa !969, !noalias !1039
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i64 %i.pg, ptr %i.sm, align 8, !tbaa !8, !noalias !1039
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152

_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, %bb.aj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %i.sn = load i32, ptr %i.aw, align 8, !tbaa !912 ; 2 uses
  %i.so = icmp ugt i32 %i.sn, 1
  %i.sp = add nuw nsw i64 %indvars.iv234.a, 1     ; 3 uses
  br i1 %i.so, label %bb.au, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge

bb.au:                                            ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152
  %i.sq = zext i32 %i.sn to i64
  %i.sr = icmp ne i64 %i.sp, %i.sq
  %i.ss = load i8, ptr %i.s, align 4, !range !200
  %.sroa.013.0.copyload = load i32, ptr %23, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr null, ptr %i.je, align 8, !tbaa !509, !alias.scope !1047
  %.not.i154206 = icmp eq i8 %i.ss, 0
  %.not.i154 = select i1 %i.sr, i1 true, i1 %.not.i154206
  %i.st = select i1 %.not.i154, i32 33554432, i32 100663296
  store i32 %.sroa.013.0.copyload, ptr %i.jf, align 4, !tbaa !8, !alias.scope !1047
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i8 0, i64 16, i1 false), !alias.scope !1047
  store i32 %i.st, ptr %9, align 8, !alias.scope !1047
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kh, ptr noundef nonnull align 8 dereferenceable(1065) %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge

_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge: ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152, %bb.au
  %30 = icmp samesign ult i64 %i.sp, %wide.trip.count237
  br i1 %30, label %.lr.ph, label %._crit_edge, !llvm.loop !1050

.critedge:                                        ; preds = %._crit_edge
  %i.su = load i32, ptr %i.y, align 4, !tbaa !839
  %i.sv = mul i32 %i.su, %.0108219
  %i.sw = zext i32 %i.sv to i64
  %i.sx = load ptr, ptr %i.ad, align 8, !tbaa !832, !nonnull !193, !align !194
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !416 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !565
  %i.td = add i32 %i.tc, %2
  %i.te = zext i32 %i.td to i64
  %i.tf = load ptr, ptr %i.ta, align 8, !tbaa !566
  %i.tg = getelementptr inbounds nuw [40 x i8], ptr %i.tf, i64 %i.te
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !567
  %i.ti = add nsw i64 %i.th, %i.sw
  %i.tj = load ptr, ptr %i.a, align 8, !tbaa !254, !nonnull !193, !align !194
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 384
  %i.tl = load i8, ptr %i.tk, align 8, !tbaa !223
  %i.tm = zext nneg i8 %i.tl to i64
  %i.tn = shl i64 %i.ti, %i.tm
  %i.to = load ptr, ptr %i.aa, align 8, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  store ptr null, ptr %28, align 8, !tbaa !462
  %i.tp = call noundef ptr @_ZNK4llvm15SIFrameLowering26buildCFIForSGPRToVMEMSpillERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterEl(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(360) %i.to, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %28, i32 17, i64 noundef %i.tn) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %i.tq = icmp ne ptr %i.tp, null
  %or.cond8 = and i1 %i.jh, %i.tq
  br i1 %or.cond8, label %bb.av, label %.critedge.thread

bb.av:                                            ; preds = %.critedge
  %i.tr = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr noundef nonnull align 8 dereferenceable(80) %i.tp, i1 noundef zeroext false) ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %._crit_edge, %bb.av, %.critedge
  %indvars.iv.next235 = add i32 %indvars.iv234, %29
  %exitcond239.not = icmp eq i32 %i.jk, %i.ic
  br i1 %exitcond239.not, label %._crit_edge222, label %bb.ad, !llvm.loop !1051

.loopexit:                                        ; preds = %bb.ab, %._crit_edge222
  %i.ts = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27 ; 0 uses
  %i.tt = load ptr, ptr %i.ag, align 8, !tbaa !843, !nonnull !193, !align !194
  %i.tu = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 908 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !1052
  %i.tx = add i32 %i.tw, %i.tu
  store i32 %i.tx, ptr %i.tv, align 4, !tbaa !1052
  %.not115 = icmp eq ptr %5, null
  br i1 %.not115, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit
  %i.ty = load i32, ptr %23, align 8, !tbaa !570
  call void @_ZN4llvm13LiveIntervals27removeAllRegUnitsForPhysRegENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(424) %5, i32 %i.ty)
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit, %bb.aw, %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit
  %.0 = xor i1 %or.cond.not, true
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK4llvm14SIRegisterInfo19getReturnAddressRegERKNS_15MachineFunctionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1065) %1) local_unnamed_addr #0 align 2 {
bb.a:
  ret i32 7698
}

declare noundef ptr @_ZNK4llvm15SIFrameLowering26buildCFIForSGPRToVGPRSpillERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterENS_8ArrayRefINS_14SIRegisterInfo10SpilledRegEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(8), i32, ptr noundef byval(%"class.llvm::ArrayRef.399") align 8) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm15SIFrameLowering26buildCFIForSGPRToVGPRSpillERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(8), i32, i32, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.561", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !549  ; 4 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load i32, ptr %i.h, align 4
  %.fr17.i = freeze i32 %i.i                      ; 3 uses
  %i.j = icmp eq i32 %.fr17.i, 0
  %i.k = add i32 %.fr17.i, -1                     ; 2 uses
  %i.l = zext i32 %.fr17.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.l ; 3 uses
  br i1 %i.j, label %.split16.us.i, label %.split.i

.split.i:                                         ; preds = %bb.b, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i
  %.sroa.010.0.i = phi ptr [ %i.x, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ], [ %1, %bb.b ] ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.0.i, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !554
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !461  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !554
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !1053

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.split.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.0.i, %.split.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !461  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %.split16.us.i, label %bb.c

.split16.us.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1018
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !202
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  br label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !52, !noalias !1054
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !757

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !969, !noalias !1054
  %i.av = icmp eq ptr %i.x, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, label %bb.d, !prof !759

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !52, !noalias !1054
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !758

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.sink.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.m
  br i1 %.not.i, label %.split.i, label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %.split16.us.i
  %.pn.i = phi ptr [ %i.ae, %.split16.us.i ], [ %.lcssa.sink.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ]
  %.sroa.0.2.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !8
  %i.bf = and i64 %.sroa.0.2.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1029
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !461
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bp = load i32, ptr %i.bo, align 4
  %.fr18.i = freeze i32 %i.bp                     ; 3 uses
  %i.bq = icmp eq i32 %.fr18.i, 0
  %i.br = add i32 %.fr18.i, -1                    ; 2 uses
  %i.bs = zext i32 %.fr18.i to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bs ; 3 uses
  br i1 %i.bq, label %.split16.us.i30, label %.split.i17

.split.i17:                                       ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %.sroa.010.0.i18 = phi ptr [ %.sroa.0.1.i.i.i.i20, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21 ], [ %1, %bb.e ] ; 2 uses
  %i.bu = icmp eq ptr %.sroa.010.0.i18, %i.bj
  br i1 %i.bu, label %.split16.us.i30, label %bb.f

.split16.us.i30:                                  ; preds = %.split.i17, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !1018
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !202
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.by
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

bb.f:                                             ; preds = %.split.i17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19 = load i64, ptr %.sroa.010.0.i18, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19, -8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28: ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !554
  %i.cg = and i32 %i.cf, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvm14SIRegisterInfo11restoreSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbb:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i84.sink200, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !941
  %i.dp = icmp eq ptr %i.do, %i.dm
  br label %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit

_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit: ; preds = %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit.sink.split, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4findERKi.exit.i82, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4findERKi.exit.i
  %.sroa.5.0 = phi i1 [ true, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4findERKi.exit.i ], [ true, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4findERKi.exit.i82 ], [ %i.dp, %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit.sink.split ] ; 2 uses
  %.sroa.0136.0 = phi ptr [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4findERKi.exit.i ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4findERKi.exit.i82 ], [ %i.dm, %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit.sink.split ]
  %or.cond.not = and i1 %6, %.sroa.5.0            ; 2 uses
  br i1 %or.cond.not, label %bb.ap, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit
  br i1 %.sroa.5.0, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.not79 = icmp eq ptr %4, null
  %i.dz = add nsw i32 %spec.select.i.i, -1
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.ed = mul i64 %.cast.i.i, -4658895280553007687 ; 2 uses
  %i.ee = lshr i64 %i.ed, 31
  %i.ef = xor i64 %i.ee, %i.ed
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ei = zext nneg i32 %i.dz to i64
  %wide.trip.count = zext nneg i32 %spec.select.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit ] ; 5 uses
  %i.ej = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.ek = icmp eq i32 %i.ej, 1
  %i.el = load i32, ptr %19, align 8, !tbaa !52   ; 2 uses
  br i1 %i.ek, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.em = load ptr, ptr %i.r, align 8, !tbaa !942
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %indvars.iv
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !9
  %i.ep = sext i16 %i.eo to i32
  %i.eq = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.el, i32 noundef %i.ep) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.0135.0 = phi i32 [ %i.eq, %bb.j ], [ %i.el, %bb.i ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0136.0, i64 %indvars.iv ; 2 uses
  %.sroa.041.0.copyload = load i32, ptr %i.er, align 4, !tbaa !52
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !52
  %i.es = load ptr, ptr %i.aa, align 8, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.et = load ptr, ptr %i.t, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.039.0.copyload = load ptr, ptr %i.et, align 8, !tbaa !463
  store ptr %.sroa.039.0.copyload, ptr %20, align 8, !tbaa !463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  %i.eu = load ptr, ptr %i.aj, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !505
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -140416
  %i.ey = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.es, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, i32 %.sroa.0135.0) ; 2 uses
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0      ; 3 uses
  %i.fa = extractvalue { ptr, ptr } %i.ey, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  store ptr null, ptr %i.dr, align 8, !tbaa !509, !alias.scope !1187
  store i32 %.sroa.041.0.copyload, ptr %i.ds, align 4, !tbaa !8, !alias.scope !1187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false), !alias.scope !1187
  store i32 0, ptr %18, align 8, !alias.scope !1187
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fa, ptr noundef nonnull align 8 dereferenceable(1065) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.fb = sext i32 %.sroa.4.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store i32 1, ptr %17, align 8, !alias.scope !1190
  store ptr null, ptr %i.du, align 8, !tbaa !509, !alias.scope !1190
  store i64 %i.fb, ptr %i.dv, align 8, !tbaa !8, !alias.scope !1190
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fa, ptr noundef nonnull align 8 dereferenceable(1065) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.fc = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.fd = icmp ugt i32 %i.fc, 1
  %i.fe = icmp eq i64 %indvars.iv, 0
  %or.cond3 = and i1 %i.fe, %i.fd
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.036.0.copyload = load i32, ptr %19, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store ptr null, ptr %i.dw, align 8, !tbaa !509, !alias.scope !1193
  store i32 %.sroa.036.0.copyload, ptr %i.dx, align 4, !tbaa !8, !alias.scope !1193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !alias.scope !1193
  store i32 50331648, ptr %16, align 8, !alias.scope !1193
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fa, ptr noundef nonnull align 8 dereferenceable(1065) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not79, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = icmp eq i64 %indvars.iv, %i.ei
  br i1 %i.ff, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.fg = load ptr, ptr %i.ea, align 8, !tbaa !954, !noalias !1196 ; 3 uses
  %i.fh = load ptr, ptr %i.eb, align 8, !tbaa !966, !noalias !1196 ; 2 uses
  %i.fi = load i32, ptr %i.ec, align 4, !tbaa !967, !noalias !1196 ; 4 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %.loopexit.i.i.i94, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = add i32 %i.fi, -1                       ; 2 uses
  %i.fl = and i32 %i.fk, %i.eg                    ; 3 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = lshr i64 %i.fm, 5
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !52, !noalias !1205
  %i.fq = and i32 %i.fl, 31
  %i.fr = lshr i32 %i.fp, %i.fq
  %i.fs = trunc i32 %i.fr to i1
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i94, !prof !757

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.ft = phi i64 [ %i.fz, %bb.q ], [ %i.fm, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.fy, %bb.q ], [ %i.fl, %bb.p ]
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ft ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !969, !noalias !1205
  %i.fw = icmp eq ptr %1, %i.fv
  br i1 %i.fw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i, label %bb.q, !prof !759

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = add nuw i32 %.017.i.i.i.i.i, 1
  %i.fy = and i32 %i.fx, %i.fk                    ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = lshr i64 %i.fz, 5
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !52, !noalias !1205
  %i.gd = and i32 %i.fy, 31
  %i.ge = lshr i32 %i.gc, %i.gd
  %i.gf = trunc i32 %i.ge to i1
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i94, !prof !758

.loopexit.i.i.i94:                                ; preds = %bb.q, %bb.p, %bb.o
  %i.gg = zext i32 %i.fi to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.gg
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i97 = zext i32 %i.fi to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i, %.loopexit.i.i.i94
  %.pre-phi.i95 = phi i64 [ %.pre.i97, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i ], [ %i.gg, %.loopexit.i.i.i94 ]
  %.lcssa.sink.i.i.i96 = phi ptr [ %i.fu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i ], [ %i.gh, %.loopexit.i.i.i94 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %.pre-phi.i95
  %i.gj = icmp eq ptr %.lcssa.sink.i.i.i96, %i.gi
  br i1 %i.gj, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i96, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !8  ; 2 uses
  %i.gm = and i64 %i.gl, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store ptr %i.fa, ptr %i.go, align 8, !tbaa !970
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull %.lcssa.sink.i.i.i96, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr %i.fa, ptr %15, align 8, !tbaa !974
  store i64 %i.gl, ptr %i.eh, align 8, !tbaa !8
  %i.gp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.eh), !noalias !1206 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit

bb.s:                                             ; preds = %bb.n
  %i.gq = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr noundef nonnull align 8 dereferenceable(80) %i.fa, i1 noundef zeroext false) ; 0 uses
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit

_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit: ; preds = %bb.r, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %bb.s, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit145, label %bb.i, !llvm.loop !1211

bb.t:                                             ; preds = %bb.h
  call void @_ZN4llvm16SGPRSpillBuilder7prepareEv(ptr noundef nonnull align 8 dereferenceable(136) %19)
  %i.gr = load i8, ptr %i.al, align 8, !tbaa !910, !range !200, !noundef !193
  %i.gs = trunc nuw i8 %i.gr to i1                ; 2 uses
  %i.gt = select i1 %i.gs, i32 32, i32 64
  %i.gu = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.gv = add i32 %i.gu, -1
  %i.gw = add i32 %i.gv, %i.gt
  %i.gx = select i1 %i.gs, i32 5, i32 6           ; 4 uses
  %i.gy = lshr i32 %i.gw, %i.gx                   ; 2 uses
  %.not159 = icmp eq i32 %i.gy, 0
  br i1 %.not159, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.t
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not = icmp eq ptr %4, null
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 124 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 3 uses
  %i.hq = mul i64 %.cast.i.i, -4658895280553007687 ; 2 uses
  %i.hr = lshr i64 %i.hq, 31
  %i.hs = xor i64 %i.hr, %i.hq
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %21 = shl nuw nsw i32 1, %i.gx
  br label %bb.u

.loopexit:                                        ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111, %bb.u
  %indvars.iv.next171 = add i32 %indvars.iv170, %21
  %exitcond174.not = icmp eq i32 %i.hw, %i.gy
  br i1 %exitcond174.not, label %._crit_edge, label %bb.u, !llvm.loop !1212

._crit_edge:                                      ; preds = %.loopexit, %bb.t
  call void @_ZN4llvm16SGPRSpillBuilder7restoreEv(ptr noundef nonnull align 8 dereferenceable(136) %19)
  br label %.loopexit145

bb.u:                                             ; preds = %.lr.ph158, %.loopexit
  %indvars.iv170 = phi i32 [ 0, %.lr.ph158 ], [ %indvars.iv.next171, %.loopexit ] ; 2 uses
  %.071157 = phi i32 [ 0, %.lr.ph158 ], [ %i.hw, %.loopexit ] ; 3 uses
  call void @_ZN4llvm16SGPRSpillBuilder16readWriteTmpVGPREjb(ptr noundef nonnull align 8 dereferenceable(136) %19, i32 noundef %.071157, i1 noundef zeroext true)
  %i.hv = shl i32 %.071157, %i.gx
  %i.hw = add nuw nsw i32 %.071157, 1             ; 3 uses
  %i.hx = shl i32 %i.hw, %i.gx
  %i.hy = load i32, ptr %i.aw, align 8, !tbaa !52
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.hy, i32 %i.hx) ; 3 uses
  %i.hz = icmp ult i32 %i.hv, %.sroa.speculated
  br i1 %i.hz, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.u
  %22 = zext i32 %indvars.iv170 to i64
  %23 = add i32 %.sroa.speculated, -1
  %i.ia = zext i32 %.sroa.speculated to i64       ; 2 uses
  %i.ib = zext i32 %23 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111
  %indvars.iv170.a = phi i64 [ %22, %.lr.ph ], [ %indvars.iv.next171.a, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111 ] ; 5 uses
  %i.ic = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.id = icmp eq i32 %i.ic, 1
  %i.ie = load i32, ptr %19, align 8, !tbaa !52   ; 2 uses
  br i1 %i.id, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.if = load ptr, ptr %i.r, align 8, !tbaa !942
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv170.a
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !9
  %i.ii = sext i16 %i.ih to i32
  %i.ij = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.ie, i32 noundef %i.ii) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %bb.v, %bb.w
  %.sroa.0125.0 = phi i32 [ %i.ij, %bb.w ], [ %i.ie, %bb.v ]
  %indvars.iv.next171.a = add nuw nsw i64 %indvars.iv170.a, 1 ; 3 uses
  %.not144 = icmp eq i64 %indvars.iv.next171.a, %i.ia
  %i.ik = load ptr, ptr %i.aa, align 8, !tbaa !840 ; 2 uses
  %i.il = load ptr, ptr %i.t, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.012.0.copyload = load ptr, ptr %i.il, align 8, !tbaa !463
  %i.im = load ptr, ptr %i.aj, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !505
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -140416
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !464 ; 5 uses
  %i.is = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr %.sroa.012.0.copyload, i1 noundef zeroext false) #27 ; 18 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.it, ptr noundef %i.is) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.iu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store ptr %1, ptr %i.iw, align 8, !tbaa !461
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.is, align 8
  %i.ix = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.iy = or disjoint i64 %i.ix, %i.iu
  store i64 %i.iy, ptr %i.is, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %i.is, ptr %i.iz, align 8, !tbaa !461
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ja = ptrtoint ptr %i.is to i64               ; 3 uses
  %i.jb = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.jc = or disjoint i64 %i.jb, %i.ja
  store i64 %i.jc, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr null, ptr %i.gz, align 8, !tbaa !509, !alias.scope !1213
  store i32 %.sroa.0125.0, ptr %i.ha, align 4, !tbaa !8, !alias.scope !1213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 0, i64 16, i1 false), !alias.scope !1213
  store i32 16777216, ptr %13, align 8, !alias.scope !1213
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(1065) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %.sroa.010.0.copyload = load i32, ptr %i.v, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr null, ptr %i.hc, align 8, !tbaa !509, !alias.scope !1216
  %i.jd = select i1 %.not144, i32 67108864, i32 0
  store i32 %.sroa.010.0.copyload, ptr %i.hd, align 4, !tbaa !8, !alias.scope !1216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false), !alias.scope !1216
  store i32 %i.jd, ptr %12, align 8, !alias.scope !1216
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(1065) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i32 1, ptr %11, align 8, !alias.scope !1219
  store ptr null, ptr %i.hf, align 8, !tbaa !509, !alias.scope !1219
  store i64 %indvars.iv170.a, ptr %i.hg, align 8, !tbaa !8, !alias.scope !1219
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(1065) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.je = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.jf = icmp ugt i32 %i.je, 1
  %i.jg = icmp eq i64 %indvars.iv170.a, 0
  %or.cond5 = and i1 %i.jg, %i.jf
  br i1 %or.cond5, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %.sroa.09.0.copyload = load i32, ptr %19, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr null, ptr %i.hh, align 8, !tbaa !509, !alias.scope !1222
  store i32 %.sroa.09.0.copyload, ptr %i.hi, align 4, !tbaa !8, !alias.scope !1222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i8 0, i64 16, i1 false), !alias.scope !1222
  store i32 50331648, ptr %10, align 8, !alias.scope !1222
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(1065) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  br i1 %.not, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jh = icmp eq i64 %indvars.iv170.a, %i.ib
  br i1 %i.jh, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ji = load ptr, ptr %i.hk, align 8, !tbaa !954, !noalias !1225 ; 3 uses
  %i.jj = load ptr, ptr %i.hl, align 8, !tbaa !966, !noalias !1225 ; 2 uses
  %i.jk = load i32, ptr %i.hm, align 4, !tbaa !967, !noalias !1225 ; 4 uses
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %.loopexit.i.i.i102, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jm = add i32 %i.jk, -1                       ; 2 uses
  %i.jn = and i32 %i.jm, %i.ht                    ; 3 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = lshr i64 %i.jo, 5
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !52, !noalias !1234
  %i.js = and i32 %i.jn, 31
  %i.jt = lshr i32 %i.jr, %i.js
  %i.ju = trunc i32 %i.jt to i1
  br i1 %i.ju, label %.lr.ph.i.i.i.i.i107, label %.loopexit.i.i.i102, !prof !757

.lr.ph.i.i.i.i.i107:                              ; preds = %bb.ab, %bb.ac
  %i.jv = phi i64 [ %i.kb, %bb.ac ], [ %i.jo, %bb.ab ]
  %.017.i.i.i.i.i108 = phi i32 [ %i.ka, %bb.ac ], [ %i.jn, %bb.ab ]
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !969, !noalias !1234
  %i.jy = icmp eq ptr %1, %i.jx
  br i1 %i.jy, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i109, label %bb.ac, !prof !759

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i107
  %i.jz = add nuw i32 %.017.i.i.i.i.i108, 1
  %i.ka = and i32 %i.jz, %i.jm                    ; 3 uses
  %i.kb = zext i32 %i.ka to i64                   ; 2 uses
  %i.kc = lshr i64 %i.kb, 5
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !52, !noalias !1234
  %i.kf = and i32 %i.ka, 31
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = trunc i32 %i.kg to i1
  br i1 %i.kh, label %.lr.ph.i.i.i.i.i107, label %.loopexit.i.i.i102, !prof !758

.loopexit.i.i.i102:                               ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ki = zext i32 %i.jk to i64                   ; 2 uses
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %i.ki
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i103

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i109: ; preds = %.lr.ph.i.i.i.i.i107
  %.pre.i110 = zext i32 %i.jk to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i103

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i103: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i109, %.loopexit.i.i.i102
  %.pre-phi.i104 = phi i64 [ %.pre.i110, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i109 ], [ %i.ki, %.loopexit.i.i.i102 ]
  %.lcssa.sink.i.i.i105 = phi ptr [ %i.jw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i109 ], [ %i.kj, %.loopexit.i.i.i102 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %.pre-phi.i104
  %i.kl = icmp eq ptr %.lcssa.sink.i.i.i105, %i.kk
  br i1 %i.kl, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i103
  %i.km = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i105, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !8  ; 2 uses
  %i.ko = and i64 %i.kn, -8
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store ptr %i.is, ptr %i.kq, align 8, !tbaa !970
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.hk, ptr noundef nonnull %.lcssa.sink.i.i.i105, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %i.is, ptr %9, align 8, !tbaa !974
  store i64 %i.kn, ptr %i.hu, align 8, !tbaa !8
  %i.kr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.hu), !noalias !1235 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111

bb.ae:                                            ; preds = %bb.z
  %i.ks = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !549 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 56
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !461
  %i.kw = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.kx = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.ky = load i32, ptr %i.hm, align 4
  %.fr18.i.i = freeze i32 %i.ky                   ; 3 uses
  %i.kz = icmp eq i32 %.fr18.i.i, 0
  %i.la = add i32 %.fr18.i.i, -1                  ; 2 uses
  %i.lb = zext i32 %.fr18.i.i to i64
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %i.lb ; 3 uses
  br i1 %i.kz, label %.split16.us.i30.i, label %.split.i17.i

.split.i17.i:                                     ; preds = %bb.ae, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i
  %.sroa.010.0.i18.i = phi ptr [ %.sroa.0.1.i.i.i.i20.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i ], [ %i.is, %bb.ae ] ; 2 uses
  %i.ld = icmp eq ptr %.sroa.010.0.i18.i, %i.kv
  br i1 %i.ld, label %.split16.us.i30.i, label %bb.af

.split16.us.i30.i:                                ; preds = %.split.i17.i, %bb.ae
  %i.le = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !1018
  %i.lg = zext i32 %i.lf to i64
  %i.lh = load ptr, ptr %i.hn, align 8, !tbaa !202
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.lh, i64 %i.lg
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i

bb.af:                                            ; preds = %.split.i17.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i = load i64, ptr %.sroa.010.0.i18.i, align 8
  %i.lj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i, -8
  %i.lk = inttoptr i64 %i.lj to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lk) ]
end_hunk_2
begin_hunk_3_@_ZNK4llvm14SIRegisterInfo11restoreSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbb:bb.a
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !969, !noalias !1240
  %i.mk = icmp eq ptr %.sroa.0.1.i.i.i.i20.i, %i.mj
  br i1 %i.mk, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i, label %bb.ag, !prof !759

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i26.i
  %i.ml = add nuw i32 %.017.i.i.i.i27.i, 1
  %i.mm = and i32 %i.ml, %i.la                    ; 3 uses
  %i.mn = zext i32 %i.mm to i64                   ; 2 uses
  %i.mo = lshr i64 %i.mn, 5
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !52, !noalias !1240
  %i.mr = and i32 %i.mm, 31
  %i.ms = lshr i32 %i.mq, %i.mr
  %i.mt = trunc i32 %i.ms to i1
  br i1 %i.mt, label %.lr.ph.i.i.i.i26.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i, !prof !758

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i: ; preds = %bb.ag, %.lr.ph.i.i.i.i26.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i
  %.lcssa.sink.i.i.i22.i = phi ptr [ %i.lc, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i ], [ %i.lc, %bb.ag ], [ %i.mi, %.lr.ph.i.i.i.i26.i ] ; 2 uses
  %.not.i23.i = icmp eq ptr %.lcssa.sink.i.i.i22.i, %i.lc
  br i1 %.not.i23.i, label %.split.i17.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i22.i, i64 8
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i: ; preds = %.thread.i.i, %.split16.us.i30.i
  %.sroa.0.2.in.i24.i = phi ptr [ %i.li, %.split16.us.i30.i ], [ %i.mu, %.thread.i.i ]
  %.sroa.0.2.i25.i = load i64, ptr %.sroa.0.2.in.i24.i, align 8, !tbaa !8
  %i.mv = and i64 %.sroa.0.2.i25.i, -8
  %i.mw = inttoptr i64 %i.mv to ptr               ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !1025 ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !1026
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !1026 ; 2 uses
  %i.nd = sub i32 %i.na, %i.nc
  %i.ne = lshr i32 %i.nd, 1
  %i.nf = and i32 %i.ne, 2147483644               ; 2 uses
  %i.ng = add i32 %i.nf, %i.nc
  %i.nh = load ptr, ptr %4, align 8, !tbaa !1027  ; 2 uses
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = add i64 %i.ni, 32                       ; 2 uses
  %i.nk = load i64, ptr %i.ho, align 8, !tbaa !1028
  %i.nl = icmp ult i64 %i.nj, %i.nk
  br i1 %i.nl, label %bb.ah, label %bb.ai, !prof !759

bb.ah:                                            ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i
  %i.nm = inttoptr i64 %i.nj to ptr
  store ptr %i.nm, ptr %4, align 8, !tbaa !1027
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i

bb.ai:                                            ; preds = %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i
  %i.nn = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(416) %4, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i

_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i112 = phi ptr [ %i.nh, %bb.ah ], [ %i.nn, %bb.ai ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i.i112, i8 0, i64 16, i1 false)
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i112, i64 16
  store ptr %i.is, ptr %i.no, align 8, !tbaa !970
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i112, i64 24
  store i32 %i.ng, ptr %i.np, align 8, !tbaa !1026
  %i.nq = load ptr, ptr %i.my, align 8, !tbaa !1029 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i112, i64 8
  store ptr %i.my, ptr %i.nr, align 8, !tbaa !1025
  store ptr %i.nq, ptr %.0.i.i.i.i112, align 8, !tbaa !1029
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %.0.i.i.i.i112, ptr %i.ns, align 8, !tbaa !1025
  store ptr %.0.i.i.i.i112, ptr %i.my, align 8, !tbaa !1029
  %i.nt = icmp eq i32 %i.nf, 0
  br i1 %i.nt, label %bb.aj, label %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit

bb.aj:                                            ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i
  call void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr nonnull %.0.i.i.i.i112) #27
  br label %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit

_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit: ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit.i, %bb.aj
  %i.nu = ptrtoint ptr %.0.i.i.i.i112 to i64
  %i.nv = load ptr, ptr %i.hk, align 8, !tbaa !954, !noalias !1245 ; 3 uses
  %i.nw = load ptr, ptr %i.hl, align 8, !tbaa !966, !noalias !1245 ; 3 uses
  %i.nx = load i32, ptr %i.hm, align 4, !tbaa !967, !noalias !1245 ; 4 uses
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit
  %i.nz = add i32 %i.nx, -1                       ; 2 uses
  %i.oa = mul i64 %i.ja, -4658895280553007687     ; 2 uses
  %i.ob = lshr i64 %i.oa, 31
  %i.oc = xor i64 %i.ob, %i.oa
  %i.od = trunc i64 %i.oc to i32
  %i.oe = and i32 %i.nz, %i.od                    ; 3 uses
  %i.of = zext i32 %i.oe to i64                   ; 2 uses
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.of ; 2 uses
  %i.oh = lshr i64 %i.of, 5
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !52, !noalias !1254
  %i.ok = and i32 %i.oe, 31
  %i.ol = lshr i32 %i.oj, %i.ok
  %i.om = trunc i32 %i.ol to i1
  br i1 %i.om, label %.lr.ph.i.i, label %.loopexit.i, !prof !757

.lr.ph.i.i:                                       ; preds = %bb.ak, %bb.al
  %i.on = phi ptr [ %i.ot, %bb.al ], [ %i.og, %bb.ak ]
  %.024.i.i = phi i32 [ %i.or, %bb.al ], [ %i.oe, %bb.ak ]
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !969, !noalias !1254
  %i.op = icmp eq ptr %i.is, %i.oo
  br i1 %i.op, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111, label %bb.al, !prof !759

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.oq = add nuw i32 %.024.i.i, 1
  %i.or = and i32 %i.oq, %i.nz                    ; 3 uses
  %i.os = zext i32 %i.or to i64                   ; 2 uses
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.os ; 2 uses
  %i.ou = lshr i64 %i.os, 5
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !52, !noalias !1254
  %i.ox = and i32 %i.or, 31
  %i.oy = lshr i32 %i.ow, %i.ox
  %i.oz = trunc i32 %i.oy to i1
  br i1 %i.oz, label %.lr.ph.i.i, label %.loopexit.i, !prof !758, !llvm.loop !1040

.loopexit.i:                                      ; preds = %bb.al, %bb.ak, %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.og, %bb.ak ], [ null, %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit ], [ %i.ot, %bb.al ]
  %i.pa = load i32, ptr %i.hp, align 8, !tbaa !1041, !noalias !1254
  %i.pb = shl i32 %i.pa, 2
  %i.pc = add i32 %i.pb, 4
  %i.pd = mul i32 %i.nx, 3
  %.not.i.i113 = icmp ult i32 %i.pc, %i.pd
  br i1 %.not.i.i113, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, label %bb.am, !prof !759

bb.am:                                            ; preds = %.loopexit.i
  %i.pe = shl i32 %i.nx, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hk, i32 noundef %i.pe), !noalias !1254
  %i.pf = load ptr, ptr %i.hk, align 8, !tbaa !954, !noalias !1255 ; 5 uses
  %i.pg = load ptr, ptr %i.hl, align 8, !tbaa !966, !noalias !1255 ; 5 uses
  %i.ph = load i32, ptr %i.hm, align 4, !tbaa !967, !noalias !1255 ; 2 uses
  %i.pi = icmp ne i32 %i.ph, 0
  call void @llvm.assume(i1 %i.pi)
  %i.pj = add i32 %i.ph, -1                       ; 2 uses
  %i.pk = mul i64 %i.ja, -4658895280553007687     ; 2 uses
  %i.pl = lshr i64 %i.pk, 31
  %i.pm = xor i64 %i.pl, %i.pk
  %i.pn = trunc i64 %i.pm to i32
  %i.po = and i32 %i.pj, %i.pn                    ; 3 uses
  %i.pp = zext i32 %i.po to i64                   ; 2 uses
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.pf, i64 %i.pp ; 2 uses
  %i.pr = lshr i64 %i.pp, 5
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !52, !noalias !1254
  %i.pu = and i32 %i.po, 31
  %i.pv = lshr i32 %i.pt, %i.pu
  %i.pw = trunc i32 %i.pv to i1
  br i1 %i.pw, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, !prof !757

.lr.ph.i:                                         ; preds = %bb.am, %bb.an
  %i.px = phi ptr [ %i.qd, %bb.an ], [ %i.pq, %bb.am ] ; 2 uses
  %.024.i = phi i32 [ %i.qb, %bb.an ], [ %i.po, %bb.am ]
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !969, !noalias !1254
  %i.pz = icmp eq ptr %i.is, %i.py
  br i1 %i.pz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, label %bb.an, !prof !759

bb.an:                                            ; preds = %.lr.ph.i
  %i.qa = add nuw i32 %.024.i, 1
  %i.qb = and i32 %i.qa, %i.pj                    ; 3 uses
  %i.qc = zext i32 %i.qb to i64                   ; 2 uses
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.pf, i64 %i.qc ; 2 uses
  %i.qe = lshr i64 %i.qc, 5
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !52, !noalias !1254
  %i.qh = and i32 %i.qb, 31
  %i.qi = lshr i32 %i.qg, %i.qh
  %i.qj = trunc i32 %i.qi to i1
  br i1 %i.qj, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, !prof !758, !llvm.loop !1040

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i: ; preds = %bb.an, %.lr.ph.i, %bb.am, %.loopexit.i
  %i.qk = phi ptr [ %i.nv, %.loopexit.i ], [ %i.pf, %bb.am ], [ %i.pf, %.lr.ph.i ], [ %i.pf, %bb.an ]
  %i.ql = phi ptr [ %i.nw, %.loopexit.i ], [ %i.pg, %bb.am ], [ %i.pg, %.lr.ph.i ], [ %i.pg, %bb.an ]
  %i.qm = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.pq, %bb.am ], [ %i.qd, %bb.an ], [ %i.px, %.lr.ph.i ] ; 3 uses
  %i.qn = ptrtoint ptr %i.qm to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = ashr exact i64 %i.qp, 4                 ; 2 uses
  %i.qr = trunc i64 %i.qq to i32
  %i.qs = and i32 %i.qr, 31
  %i.qt = shl nuw i32 1, %i.qs
  %i.qu = lshr i64 %i.qq, 5
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.qu ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !52, !noalias !1254
  %i.qx = or i32 %i.qt, %i.qw
  store i32 %i.qx, ptr %i.qv, align 4, !tbaa !52, !noalias !1254
  %i.qy = load i32, ptr %i.hp, align 8, !tbaa !1041, !noalias !1254
  %i.qz = add i32 %i.qy, 1
  store i32 %i.qz, ptr %i.hp, align 8, !tbaa !1041, !noalias !1254
  store ptr %i.is, ptr %i.qm, align 8, !tbaa !969, !noalias !1254
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i64 %i.nu, ptr %i.ra, align 8, !tbaa !8, !noalias !1254
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111

_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, %bb.ad, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i103, %bb.y
  %24 = icmp samesign ult i64 %indvars.iv.next171.a, %i.ia
  br i1 %24, label %bb.v, label %.loopexit, !llvm.loop !1260

.loopexit145:                                     ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, %._crit_edge
  %i.rb = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27 ; 0 uses
  %.not78 = icmp eq ptr %5, null
  br i1 %.not78, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit145
  %i.rc = load i32, ptr %19, align 8, !tbaa !570
  call void @_ZN4llvm13LiveIntervals27removeAllRegUnitsForPhysRegENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(424) %5, i32 %i.rc)
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit145, %bb.ao, %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit
  %.0 = xor i1 %or.cond.not, true
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo18spillEmergencySGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_17MachineBasicBlockENS_8RegisterEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(360) %2, i32 %3, ptr noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 10 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %14 = alloca %"struct.llvm::SGPRSpillBuilder", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.e = load i8, ptr %i.d, align 1, !tbaa !226, !range !200, !noundef !193 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  store i32 %3, ptr %14, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %.cast.i = ptrtoint ptr %1 to i64
  store i64 %.cast.i, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 36 ; 4 uses
  store i8 0, ptr %i.i, align 4, !tbaa !905
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.k, ptr %i.j, align 8, !tbaa !581
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 60
  store i32 0, ptr %i.m, align 4, !tbaa !570
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.l, i8 0, i64 9, i1 false)
  store i32 0, ptr %i.n, align 8, !tbaa !906
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 4, ptr %i.o, align 4, !tbaa !839
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 72
  store ptr %4, ptr %i.p, align 8, !tbaa !842
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !549  ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !840
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !464  ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !907
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !397
  store ptr %i.y, ptr %i.w, align 8, !tbaa !908
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 4 uses
  store ptr %i.c, ptr %i.z, align 8, !tbaa !559
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 112
  store ptr %0, ptr %i.aa, align 8, !tbaa !909
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 120 ; 2 uses
  store i8 %i.e, ptr %i.ab, align 8, !tbaa !910
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 124
  %i.ad = zext i32 %3 to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @_ZZNK4llvm21AMDGPUGenRegisterInfo19getPhysRegBaseClassENS_10MCRegisterEE7Mapping, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !9
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 %i.ag
  %i.ai = tail call noundef i32 @_ZN4llvm6AMDGPU14getRegBitWidthERKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(62) %i.ah) #27
  %i.aj = lshr i32 %i.ai, 5                       ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm14SIRegisterInfo13RegSplitPartsE, i64 24), align 8, !tbaa !203
  %i.al = zext nneg i32 %i.aj to i64
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !911
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !41
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.aj, i32 1)
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 10 uses
  store i32 %spec.select.i, ptr %i.am, align 8, !tbaa !912
  %.sink16.i = select i1 %i.f, i32 4, i32 2
  %.sink15.i = select i1 %i.f, i32 5256, i32 5259
  %.sink.i = select i1 %i.f, i32 5280, i32 5281
  store i32 %.sink16.i, ptr %i.ac, align 4, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 128
  store i32 %.sink15.i, ptr %i.an, align 8, !tbaa !913
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 132
  store i32 %.sink.i, ptr %i.ao, align 4, !tbaa !914
  call void @_ZN4llvm16SGPRSpillBuilder7prepareEv(ptr noundef nonnull align 8 dereferenceable(136) %14)
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !912 ; 2 uses
  %i.aq = load i8, ptr %i.ab, align 8, !tbaa !910, !range !200, !noundef !193
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = select i1 %i.ar, i32 31, i32 63         ; 3 uses
  %i.at = add i32 %i.as, %i.ap
  %i.au = select i1 %i.ar, i32 5, i32 6           ; 7 uses
  %i.av = lshr i32 %i.at, %i.au                   ; 3 uses
  %.not124 = icmp eq i32 %i.av, 0
  br i1 %.not124, label %._crit_edge.thread, label %.lr.ph116

._crit_edge.thread:                               ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.aw, ptr %i.g, align 8
  store ptr %2, ptr %i.q, align 8, !tbaa !840
  br label %._crit_edge123

.lr.ph116:                                        ; preds = %bb.a
  %i.ax = icmp eq i32 %i.ap, 1
  %i.ay = load i8, ptr %i.i, align 4, !range !200
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bf = select i1 %i.ba, i32 67108864, i32 0    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %15 = shl nuw nsw i32 1, %i.au
  %i.bq = zext nneg i32 %i.as to i64
  br label %bb.b

.loopexit112:                                     ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge, %bb.b
  %indvars.iv.next = add i32 %indvars.iv, %15
  %exitcond128.not = icmp eq i32 %i.ce, %i.av
  br i1 %exitcond128.not, label %.lr.ph122, label %bb.b, !llvm.loop !1261

.lr.ph122:                                        ; preds = %.loopexit112
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr %i.br, ptr %i.g, align 8
  store ptr %2, ptr %i.q, align 8, !tbaa !840
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %16 = shl nuw nsw i32 1, %i.au
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph116, %.loopexit112
  %indvars.iv = phi i32 [ 0, %.lr.ph116 ], [ %indvars.iv.next, %.loopexit112 ] ; 3 uses
  %.0115 = phi i32 [ 0, %.lr.ph116 ], [ %i.ce, %.loopexit112 ] ; 2 uses
  %17 = zext i32 %indvars.iv to i64               ; 2 uses
  %i.cd = shl i32 %.0115, %i.au
  %i.ce = add nuw nsw i32 %.0115, 1               ; 3 uses
  %i.cf = shl i32 %i.ce, %i.au
  %i.cg = load i32, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated107 = call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.cf) ; 2 uses
  %i.ch = icmp ult i32 %i.cd, %.sroa.speculated107
  br i1 %i.ch, label %.lr.ph.preheader, label %.loopexit112

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ci = zext i32 %.sroa.speculated107 to i64    ; 2 uses
  %i.cj = icmp eq i32 %i.cg, 1
  %i.ck = load i32, ptr %14, align 8, !tbaa !52   ; 2 uses
  br i1 %i.cj, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !942
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %17
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !9
  %i.co = sext i16 %i.cn to i32
  %i.cp = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.ck, i32 noundef %i.co) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel: ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.0105.0.peel = phi i32 [ %i.cp, %bb.c ], [ %i.ck, %.lr.ph.preheader ]
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !840 ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.026.0.copyload.peel = load ptr, ptr %i.cr, align 8, !tbaa !463
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !505
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -365760
  %.sroa.025.0.copyload.peel = load i32, ptr %i.l, align 8, !tbaa !52
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !464 ; 6 uses
  %i.cy = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr %.sroa.026.0.copyload.peel, i1 noundef zeroext false) #27 ; 11 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef %i.cy) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.peel = load i64, ptr %1, align 8
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.peel, -8 ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %1, ptr %i.dc, align 8, !tbaa !461
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.peel = load i64, ptr %i.cy, align 8
  %i.dd = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.peel, 7
  %i.de = or disjoint i64 %i.dd, %i.da
  store i64 %i.de, ptr %i.cy, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.cy, ptr %i.df, align 8, !tbaa !461
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.peel = load i64, ptr %1, align 8
  %i.dg = ptrtoint ptr %i.cy to i64
  %i.dh = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.peel, 7
  %i.di = or disjoint i64 %i.dh, %i.dg
  store i64 %i.di, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr null, ptr %i.bb, align 8, !tbaa !509, !alias.scope !1262
  store i32 %.sroa.025.0.copyload.peel, ptr %i.bc, align 4, !tbaa !8, !alias.scope !1262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !1262
  store i32 16777216, ptr %13, align 8, !alias.scope !1262
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(1065) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr null, ptr %i.be, align 8, !tbaa !509, !alias.scope !1265
  store i32 %.sroa.0105.0.peel, ptr %i.bg, align 4, !tbaa !8, !alias.scope !1265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !1265
  store i32 %i.bf, ptr %12, align 8, !alias.scope !1265
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(1065) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.dj = and i32 %indvars.iv, %i.as
  %i.dk = zext nneg i32 %i.dj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i32 1, ptr %11, align 8, !alias.scope !1268
  store ptr null, ptr %i.bi, align 8, !tbaa !509, !alias.scope !1268
  store i64 %i.dk, ptr %i.bj, align 8, !tbaa !8, !alias.scope !1268
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(1065) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %.sroa.023.0.copyload.peel = load i32, ptr %i.l, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr null, ptr %i.bk, align 8, !tbaa !509, !alias.scope !1271
  store i32 %.sroa.023.0.copyload.peel, ptr %i.bl, align 4, !tbaa !8, !alias.scope !1271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !alias.scope !1271
  store i32 268435456, ptr %10, align 8, !alias.scope !1271
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(1065) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.dl = load i32, ptr %i.am, align 8, !tbaa !912 ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, 1
  %i.dn = or disjoint i64 %17, 1                  ; 3 uses
  br i1 %i.dm, label %bb.d, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge

bb.d:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel
  %i.do = zext i32 %i.dl to i64
  %i.dp = icmp ne i64 %i.dn, %i.do
  %i.dq = load i8, ptr %i.i, align 4, !range !200
  %.sroa.022.0.copyload.peel = load i32, ptr %14, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr null, ptr %i.bn, align 8, !tbaa !509, !alias.scope !1274
  %.not.i69111.peel = icmp eq i8 %i.dq, 0
  %.not.i69.peel = select i1 %i.dp, i1 true, i1 %.not.i69111.peel
  %i.dr = select i1 %.not.i69.peel, i32 33554432, i32 100663296
  store i32 %.sroa.022.0.copyload.peel, ptr %i.bo, align 4, !tbaa !8, !alias.scope !1274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !1274
  store i32 %i.dr, ptr %9, align 8, !alias.scope !1274
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(1065) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel, %bb.d
  %18 = icmp samesign ult i64 %i.dn, %i.ci
  br i1 %18, label %.lr.ph, label %.loopexit112

.lr.ph:                                           ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge
  %indvars.iv.a = phi i64 [ %i.ew, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge ], [ %i.dn, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge ] ; 3 uses
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !912
  %i.dt = icmp eq i32 %i.ds, 1
  %i.du = load i32, ptr %14, align 8, !tbaa !52   ; 2 uses
  br i1 %i.dt, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !942
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.a
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !9
  %i.dy = sext i16 %i.dx to i32
  %i.dz = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.du, i32 noundef %i.dy) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %.lr.ph, %bb.e
  %.sroa.0105.0 = phi i32 [ %i.dz, %bb.e ], [ %i.du, %.lr.ph ]
  %i.ea = load ptr, ptr %i.q, align 8, !tbaa !840 ; 2 uses
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.026.0.copyload = load ptr, ptr %i.eb, align 8, !tbaa !463
  %i.ec = load ptr, ptr %i.z, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !505
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -365760
  %.sroa.025.0.copyload = load i32, ptr %i.l, align 8, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !464 ; 6 uses
  %i.ei = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr %.sroa.026.0.copyload, i1 noundef zeroext false) #27 ; 11 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef %i.ei) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ek = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %1, ptr %i.em, align 8, !tbaa !461
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.ei, align 8
  %i.en = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.eo = or disjoint i64 %i.en, %i.ek
  store i64 %i.eo, ptr %i.ei, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ei, ptr %i.ep, align 8, !tbaa !461
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.eq = ptrtoint ptr %i.ei to i64
  %i.er = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.es = or disjoint i64 %i.er, %i.eq
  store i64 %i.es, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr null, ptr %i.bb, align 8, !tbaa !509, !alias.scope !1262
  store i32 %.sroa.025.0.copyload, ptr %i.bc, align 4, !tbaa !8, !alias.scope !1262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !1262
  store i32 16777216, ptr %13, align 8, !alias.scope !1262
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(1065) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr null, ptr %i.be, align 8, !tbaa !509, !alias.scope !1265
  store i32 %.sroa.0105.0, ptr %i.bg, align 4, !tbaa !8, !alias.scope !1265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !1265
  store i32 %i.bf, ptr %12, align 8, !alias.scope !1265
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(1065) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.et = and i64 %indvars.iv.a, %i.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i32 1, ptr %11, align 8, !alias.scope !1268
  store ptr null, ptr %i.bi, align 8, !tbaa !509, !alias.scope !1268
  store i64 %i.et, ptr %i.bj, align 8, !tbaa !8, !alias.scope !1268
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(1065) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %.sroa.023.0.copyload = load i32, ptr %i.l, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr null, ptr %i.bk, align 8, !tbaa !509, !alias.scope !1271
  store i32 %.sroa.023.0.copyload, ptr %i.bl, align 4, !tbaa !8, !alias.scope !1271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !alias.scope !1271
  store i32 0, ptr %10, align 8, !alias.scope !1271
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(1065) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.eu = load i32, ptr %i.am, align 8, !tbaa !912 ; 2 uses
  %i.ev = icmp ugt i32 %i.eu, 1
  %i.ew = add nuw nsw i64 %indvars.iv.a, 1        ; 3 uses
  br i1 %i.ev, label %bb.f, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge

bb.f:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %i.ex = zext i32 %i.eu to i64
  %i.ey = icmp ne i64 %i.ew, %i.ex
  %i.ez = load i8, ptr %i.i, align 4, !range !200
  %.sroa.022.0.copyload = load i32, ptr %14, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr null, ptr %i.bn, align 8, !tbaa !509, !alias.scope !1274
  %.not.i69111 = icmp eq i8 %i.ez, 0
  %.not.i69 = select i1 %i.ey, i1 true, i1 %.not.i69111
  %i.fa = select i1 %.not.i69, i32 33554432, i32 100663296
  store i32 %.sroa.022.0.copyload, ptr %i.bo, align 4, !tbaa !8, !alias.scope !1274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !1274
  store i32 %i.fa, ptr %9, align 8, !alias.scope !1274
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ei, ptr noundef nonnull align 8 dereferenceable(1065) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, %bb.f
  %19 = icmp samesign ult i64 %i.ew, %i.ci
  br i1 %19, label %.lr.ph, label %.loopexit112, !llvm.loop !1277

.loopexit:                                        ; preds = %bb.j, %bb.g
  %indvars.iv.next131 = add i32 %indvars.iv130, %16
  %exitcond134.not = icmp eq i32 %i.fh, %i.av
  br i1 %exitcond134.not, label %._crit_edge123, label %bb.g, !llvm.loop !1278

._crit_edge123:                                   ; preds = %.loopexit, %._crit_edge.thread
  call void @_ZN4llvm16SGPRSpillBuilder7restoreEv(ptr noundef nonnull align 8 dereferenceable(136) %14)
  %i.fb = load ptr, ptr %i.w, align 8, !tbaa !843, !nonnull !193, !align !194
  %i.fc = load i32, ptr %i.am, align 8, !tbaa !912
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 908 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !1052
  %i.ff = add i32 %i.fe, %i.fc
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !1052
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  ret i1 false

bb.g:                                             ; preds = %.lr.ph122, %.loopexit
  %indvars.iv130 = phi i32 [ 0, %.lr.ph122 ], [ %indvars.iv.next131, %.loopexit ] ; 2 uses
  %.063120 = phi i32 [ 0, %.lr.ph122 ], [ %i.fh, %.loopexit ] ; 2 uses
  %i.fg = shl i32 %.063120, %i.au
  %i.fh = add nuw nsw i32 %.063120, 1             ; 3 uses
  %i.fi = shl i32 %i.fh, %i.au
  %i.fj = load i32, ptr %i.am, align 8, !tbaa !52
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.fj, i32 %i.fi) ; 2 uses
  %i.fk = icmp ult i32 %i.fg, %.sroa.speculated
  br i1 %i.fk, label %.lr.ph119.preheader, label %.loopexit

.lr.ph119.preheader:                              ; preds = %bb.g
  %i.fl = zext i32 %indvars.iv130 to i64
  %i.fm = zext i32 %.sroa.speculated to i64       ; 2 uses
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %bb.j
  %indvars.iv129 = phi i64 [ %i.fl, %.lr.ph119.preheader ], [ %indvars.iv.next130, %bb.j ] ; 4 uses
  %i.fn = load i32, ptr %i.am, align 8, !tbaa !912
  %i.fo = icmp eq i32 %i.fn, 1
  %i.fp = load i32, ptr %14, align 8, !tbaa !52   ; 2 uses
  br i1 %i.fo, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit80, label %bb.h

bb.h:                                             ; preds = %.lr.ph119
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !942
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv129
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !9
  %i.ft = sext i16 %i.fs to i32
  %i.fu = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.fp, i32 noundef %i.ft) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit80

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit80: ; preds = %.lr.ph119, %bb.h
  %.sroa.090.0 = phi i32 [ %i.fu, %bb.h ], [ %i.fp, %.lr.ph119 ]
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 3 uses
  %.not = icmp eq i64 %indvars.iv.next130, %i.fm
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !840 ; 2 uses
  %i.fw = load ptr, ptr %i.j, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.04.0.copyload = load ptr, ptr %i.fw, align 8, !tbaa !463
  %i.fx = load ptr, ptr %i.z, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !505
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -343968
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !464 ; 5 uses
  %i.gd = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr %.sroa.04.0.copyload, i1 noundef zeroext false) #27 ; 10 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, ptr noundef %i.gd) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i72 = load i64, ptr %i.br, align 8
  %i.gf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i72, -8 ; 2 uses
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.br, ptr %i.gh, align 8, !tbaa !461
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i73 = load i64, ptr %i.gd, align 8
  %i.gi = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i73, 7
  %i.gj = or disjoint i64 %i.gi, %i.gf
  store i64 %i.gj, ptr %i.gd, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.gd, ptr %i.gk, align 8, !tbaa !461
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i74 = load i64, ptr %i.br, align 8
  %i.gl = ptrtoint ptr %i.gd to i64
  %i.gm = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i74, 7
  %i.gn = or disjoint i64 %i.gm, %i.gl
  store i64 %i.gn, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr null, ptr %i.bs, align 8, !tbaa !509, !alias.scope !1279
  store i32 %.sroa.090.0, ptr %i.bt, align 4, !tbaa !8, !alias.scope !1279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !1279
  store i32 16777216, ptr %8, align 8, !alias.scope !1279
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gd, ptr noundef nonnull align 8 dereferenceable(1065) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.sroa.02.0.copyload = load i32, ptr %i.l, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr null, ptr %i.bv, align 8, !tbaa !509, !alias.scope !1282
  %i.go = select i1 %.not, i32 67108864, i32 0
  store i32 %.sroa.02.0.copyload, ptr %i.bw, align 4, !tbaa !8, !alias.scope !1282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false), !alias.scope !1282
  store i32 %i.go, ptr %7, align 8, !alias.scope !1282
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gd, ptr noundef nonnull align 8 dereferenceable(1065) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 1, ptr %6, align 8, !alias.scope !1285
  store ptr null, ptr %i.by, align 8, !tbaa !509, !alias.scope !1285
  store i64 %indvars.iv129, ptr %i.bz, align 8, !tbaa !8, !alias.scope !1285
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gd, ptr noundef nonnull align 8 dereferenceable(1065) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.gp = load i32, ptr %i.am, align 8, !tbaa !912
  %i.gq = icmp ugt i32 %i.gp, 1
  %i.gr = icmp eq i64 %indvars.iv129, 0
  %or.cond = and i1 %i.gr, %i.gq
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit80
  %.sroa.0.0.copyload = load i32, ptr %14, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr null, ptr %i.ca, align 8, !tbaa !509, !alias.scope !1288
  store i32 %.sroa.0.0.copyload, ptr %i.cb, align 4, !tbaa !8, !alias.scope !1288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !alias.scope !1288
  store i32 50331648, ptr %5, align 8, !alias.scope !1288
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gd, ptr noundef nonnull align 8 dereferenceable(1065) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit80
  %20 = icmp samesign ult i64 %indvars.iv.next130, %i.fm
  br i1 %20, label %.lr.ph119, label %.loopexit, !llvm.loop !1291
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo34eliminateSGPRToVGPRSpillFrameIndexENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEb(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !438
  switch i32 %i.b, label %bb.e [
    i32 4475, label %bb.b
    i32 4509, label %bb.b
    i32 4490, label %bb.b
    i32 4487, label %bb.b
    i32 4484, label %bb.b
    i32 4481, label %bb.b
    i32 4478, label %bb.b
    i32 4515, label %bb.b
    i32 4512, label %bb.b
    i32 4499, label %bb.b
    i32 4477, label %bb.c
    i32 4511, label %bb.c
    i32 4508, label %bb.c
    i32 4505, label %bb.c
    i32 4498, label %bb.c
    i32 4495, label %bb.c
    i32 4492, label %bb.c
    i32 4489, label %bb.c
    i32 4486, label %bb.c
    i32 4483, label %bb.c
    i32 4480, label %bb.c
    i32 4517, label %bb.c
    i32 4514, label %bb.c
    i32 4501, label %bb.c
    i32 4476, label %bb.d
    i32 4510, label %bb.d
    i32 4507, label %bb.d
    i32 4504, label %bb.d
    i32 4497, label %bb.d
    i32 4494, label %bb.d
    i32 4491, label %bb.d
    i32 4488, label %bb.d
    i32 4485, label %bb.d
    i32 4482, label %bb.d
    i32 4479, label %bb.d
    i32 4516, label %bb.d
    i32 4513, label %bb.d
    i32 4500, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.013 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo9spillSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbbb(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %6, i1 noundef zeroext %.013)
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo11restoreSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbb(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %6)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %i.c, %bb.c ], [ %i.d, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo19eliminateFrameIndexENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nonnull %1, i32 %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %26 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %27 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %28 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %30 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %31 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %32 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %33 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %34 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %35 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %36 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %37 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %38 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %39 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %40 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %41 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %42 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %43 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %44 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %45 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %46 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %47 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %48 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %49 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %50 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %51 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %52 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %53 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %54 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %55 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %56 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %57 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %58 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %59 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %60 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %61 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %62 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %63 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %64 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %65 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %66 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %67 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %68 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %69 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %70 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %71 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %72 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %73 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %74 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %75 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %76 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %77 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %78 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %79 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %80 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 5 uses
  %81 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 5 uses
  %82 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 5 uses
  %83 = alloca %"class.llvm::MachineInstrBundleIterator", align 8 ; 5 uses
  %84 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %85 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %86 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %87 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %88 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %89 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 7 uses
  %90 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %91 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %92 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %93 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %94 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %95 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %96 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %97 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %98 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %99 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %100 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %101 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %102 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %103 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %104 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %105 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %106 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %107 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %108 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %109 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %110 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %111 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %112 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %113 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %114 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %115 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %116 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %117 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %118 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %119 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %120 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %121 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %122 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !549  ; 39 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !397  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 25 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !254, !nonnull !193, !align !194 ; 31 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 912 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 45 uses
end_hunk_3
