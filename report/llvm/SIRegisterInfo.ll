Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIRegisterInfo?download=true
inline.NumInlined: 3359
inline.NumDeleted: 1309
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK4llvm14SIRegisterInfo9spillSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbbb:bb.a
  %i.fo = load ptr, ptr %i.t, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.057.0.copyload = load ptr, ptr %i.fo, align 8, !tbaa !463
  store ptr %.sroa.057.0.copyload, ptr %24, align 8, !tbaa !463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.fp = load ptr, ptr %i.aj, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !505
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -144064
  %i.ft = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.fn, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i32 %.sroa.0186.0.extract.trunc) ; 2 uses
  %i.fu = extractvalue { ptr, ptr } %i.ft, 0      ; 5 uses
  %i.fv = extractvalue { ptr, ptr } %i.ft, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store ptr null, ptr %i.dx, align 8, !tbaa !509, !alias.scope !944
  %i.fw = select i1 %i.fm, i32 67108864, i32 0    ; 2 uses
  store i32 %.sroa.0189.0, ptr %i.dy, align 4, !tbaa !8, !alias.scope !944
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
  store i32 %.sroa.0186.0.extract.trunc, ptr %i.ed, align 4, !tbaa !8, !alias.scope !950
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
  store ptr %.sroa.0191.0, ptr %26, align 8, !tbaa !953
  store i64 %.sroa.6192.0, ptr %.sroa.6192.0..sroa_idx, align 8, !tbaa !41
  %i.gc = call noundef ptr @_ZNK4llvm15SIFrameLowering26buildCFIForSGPRToVGPRSpillERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterENS_8ArrayRefINS_14SIRegisterInfo10SpilledRegEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(360) %i.gb, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %25, i32 17, ptr noundef nonnull byval(%"class.llvm::ArrayRef.399") align 8 %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.gd = load ptr, ptr %i.aa, align 8, !tbaa !840
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  store ptr null, ptr %27, align 8, !tbaa !462
  %i.ge = call noundef ptr @_ZNK4llvm15SIFrameLowering26buildCFIForSGPRToVGPRSpillERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_i(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(360) %i.gd, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %27, i32 %.sroa.0189.0, i32 %.sroa.0186.0.extract.trunc, i32 noundef %.sroa.6187.0.extract.trunc) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.0106 = phi ptr [ %i.gc, %bb.n ], [ null, %bb.m ], [ %i.ge, %bb.o ], [ null, %bb.k ] ; 2 uses
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
  %.01117.i.i.i.i.i = phi i32 [ %i.gx, %bb.t ], [ %i.gk, %bb.s ]
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.gs ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !969, !noalias !968
  %i.gv = icmp eq ptr %1, %i.gu
  br i1 %i.gv, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i, label %bb.t, !prof !759

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.gw = add nuw i32 %.01117.i.i.i.i.i, 1
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
  %.not117 = icmp eq ptr %.0106, null
  br i1 %.not117, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit
  %i.hq = call i64 @_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %4, ptr noundef nonnull align 8 dereferenceable(80) %.0106, i1 noundef zeroext false) ; 0 uses
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
  %.pre239 = load i32, ptr %i.aw, align 8, !tbaa !912
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ht = phi i32 [ %.pre239, %bb.y ], [ %i.hr, %bb.x ]
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
  %i.hy = trunc nuw i8 %i.hx to i1                ; 3 uses
  %i.hz = select i1 %i.hy, i32 32, i32 64
  %29 = add i32 %i.hw, -1
  %i.ia = add i32 %29, %i.hz
  %i.ib = select i1 %i.hy, i32 5, i32 6           ; 3 uses
  %i.ic = lshr i32 %i.ia, %i.ib                   ; 2 uses
  %.not222 = icmp eq i32 %i.ic, 0
  br i1 %.not222, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.ac
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
  %.v = select i1 %i.hy, i64 31, i64 63
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
  br label %bb.ad

._crit_edge221:                                   ; preds = %.critedge.thread, %bb.ac
  call void @_ZN4llvm16SGPRSpillBuilder7restoreEv(ptr noundef nonnull align 8 dereferenceable(136) %23)
  br label %.loopexit

bb.ad:                                            ; preds = %.lr.ph220, %.critedge.thread
  %.0107218 = phi i32 [ 0, %.lr.ph220 ], [ %i.jj, %.critedge.thread ] ; 4 uses
  %i.ji = shl i32 %.0107218, %i.ib                ; 2 uses
  %i.jj = add nuw nsw i32 %.0107218, 1            ; 3 uses
  %i.jk = shl i32 %i.jj, %i.ib
  %i.jl = load i32, ptr %i.aw, align 8, !tbaa !52
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.jl, i32 %i.jk) ; 2 uses
  %i.jm = icmp ult i32 %i.ji, %.sroa.speculated
  br i1 %i.jm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.jn = zext i32 %i.ji to i64
  %wide.trip.count236 = zext i32 %.sroa.speculated to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge, %bb.ad
  call void @_ZN4llvm16SGPRSpillBuilder16readWriteTmpVGPREjb(ptr noundef nonnull align 8 dereferenceable(136) %23, i32 noundef %.0107218, i1 noundef zeroext false)
  %i.jo = load i32, ptr %23, align 8
  %i.jp = icmp eq i32 %i.jo, 7698
  %or.cond204 = select i1 %8, i1 %i.jp, i1 false
  br i1 %or.cond204, label %.critedge, label %.critedge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge
  %indvars.iv233 = phi i64 [ %i.jn, %.lr.ph.preheader ], [ %i.so, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge ] ; 4 uses
  %.0109217 = phi i32 [ 268435456, %.lr.ph.preheader ], [ 0, %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152._crit_edge ]
  %i.jq = load i32, ptr %i.aw, align 8, !tbaa !912
  %i.jr = icmp eq i32 %i.jq, 1
  %i.js = load i32, ptr %23, align 8, !tbaa !52   ; 2 uses
  br i1 %i.jr, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.jt = load ptr, ptr %i.r, align 8, !tbaa !942
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv233
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !9
  %i.jw = sext i16 %i.jv to i32
  %i.jx = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.js, i32 noundef %i.jw) #27
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %.lr.ph, %bb.ae
  %.sroa.0170.0 = phi i32 [ %i.jx, %bb.ae ], [ %i.js, %.lr.ph ]
  %i.jy = load ptr, ptr %i.aa, align 8, !tbaa !840 ; 2 uses
  %i.jz = load ptr, ptr %i.t, align 8, !tbaa !841, !nonnull !193, !align !194
  %.sroa.019.0.copyload = load ptr, ptr %i.jz, align 8, !tbaa !463
  %i.ka = load ptr, ptr %i.aj, align 8, !tbaa !943, !nonnull !193, !align !194
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !505
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -144064
  %.sroa.018.0.copyload = load i32, ptr %i.v, align 8, !tbaa !52
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !464 ; 6 uses
  %i.kg = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.kf, ptr noundef nonnull align 8 dereferenceable(32) %i.kd, ptr %.sroa.019.0.copyload, i1 noundef zeroext false) #27 ; 19 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef %i.kg) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ki = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %1, ptr %i.kk, align 8, !tbaa !461
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.kg, align 8
  %i.kl = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.km = or disjoint i64 %i.kl, %i.ki
  store i64 %i.km, ptr %i.kg, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %i.kg, ptr %i.kn, align 8, !tbaa !461
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ko = ptrtoint ptr %i.kg to i64               ; 3 uses
  %i.kp = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.kq = or disjoint i64 %i.kp, %i.ko
  store i64 %i.kq, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr null, ptr %i.ih, align 8, !tbaa !509, !alias.scope !991
  store i32 %.sroa.018.0.copyload, ptr %i.ii, align 4, !tbaa !8, !alias.scope !991
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false), !alias.scope !991
  store i32 16777216, ptr %15, align 8, !alias.scope !991
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kg, ptr noundef nonnull align 8 dereferenceable(1065) %i.kf, ptr noundef nonnull align 8 dereferenceable(32) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store ptr null, ptr %i.ik, align 8, !tbaa !509, !alias.scope !994
  store i32 %.sroa.0170.0, ptr %i.im, align 4, !tbaa !8, !alias.scope !994
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false), !alias.scope !994
  store i32 %i.il, ptr %14, align 8, !alias.scope !994
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kg, ptr noundef nonnull align 8 dereferenceable(1065) %i.kf, ptr noundef nonnull align 8 dereferenceable(32) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.kr = and i64 %.v, %indvars.iv233
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i32 1, ptr %13, align 8, !alias.scope !997
  store ptr null, ptr %i.io, align 8, !tbaa !509, !alias.scope !997
  store i64 %i.kr, ptr %i.ip, align 8, !tbaa !8, !alias.scope !997
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kg, ptr noundef nonnull align 8 dereferenceable(1065) %i.kf, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %.sroa.016.0.copyload = load i32, ptr %i.v, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr null, ptr %i.iq, align 8, !tbaa !509, !alias.scope !1000
  store i32 %.sroa.016.0.copyload, ptr %i.ir, align 4, !tbaa !8, !alias.scope !1000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, i8 0, i64 16, i1 false), !alias.scope !1000
  store i32 %.0109217, ptr %12, align 8, !alias.scope !1000
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kg, ptr noundef nonnull align 8 dereferenceable(1065) %i.kf, ptr noundef nonnull align 8 dereferenceable(32) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br i1 %.not, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %i.ks = icmp eq i64 %indvars.iv233, 0
  br i1 %i.ks, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.kt = load ptr, ptr %i.it, align 8, !tbaa !954, !noalias !1003 ; 3 uses
  %i.ku = load ptr, ptr %i.iu, align 8, !tbaa !966, !noalias !1003 ; 2 uses
  %i.kv = load i32, ptr %i.iv, align 4, !tbaa !967, !noalias !1003 ; 4 uses
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %.loopexit.i.i.i143, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kx = add i32 %i.kv, -1                       ; 2 uses
  %i.ky = and i32 %i.kx, %i.jc                    ; 3 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = lshr i64 %i.kz, 5
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !52, !noalias !1012
  %i.ld = and i32 %i.ky, 31
  %i.le = lshr i32 %i.lc, %i.ld
  %i.lf = trunc i32 %i.le to i1
  br i1 %i.lf, label %.lr.ph.i.i.i.i.i148, label %.loopexit.i.i.i143, !prof !757

.lr.ph.i.i.i.i.i148:                              ; preds = %bb.ah, %bb.ai
  %i.lg = phi i64 [ %i.lm, %bb.ai ], [ %i.kz, %bb.ah ]
  %.01117.i.i.i.i.i149 = phi i32 [ %i.ll, %bb.ai ], [ %i.ky, %bb.ah ]
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.lg ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !969, !noalias !1012
  %i.lj = icmp eq ptr %1, %i.li
  br i1 %i.lj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150, label %bb.ai, !prof !759

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i148
  %i.lk = add nuw i32 %.01117.i.i.i.i.i149, 1
  %i.ll = and i32 %i.lk, %i.kx                    ; 3 uses
  %i.lm = zext i32 %i.ll to i64                   ; 2 uses
  %i.ln = lshr i64 %i.lm, 5
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !52, !noalias !1012
  %i.lq = and i32 %i.ll, 31
  %i.lr = lshr i32 %i.lp, %i.lq
  %i.ls = trunc i32 %i.lr to i1
  br i1 %i.ls, label %.lr.ph.i.i.i.i.i148, label %.loopexit.i.i.i143, !prof !758

.loopexit.i.i.i143:                               ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.lt = zext i32 %i.kv to i64                   ; 2 uses
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.lt
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150: ; preds = %.lr.ph.i.i.i.i.i148
  %.pre.i151 = zext i32 %i.kv to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150, %.loopexit.i.i.i143
  %.pre-phi.i145 = phi i64 [ %.pre.i151, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150 ], [ %i.lt, %.loopexit.i.i.i143 ]
  %.lcssa.sink.i.i.i146 = phi ptr [ %i.lh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.loopexit.i150 ], [ %i.lu, %.loopexit.i.i.i143 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %.pre-phi.i145
  %i.lw = icmp eq ptr %.lcssa.sink.i.i.i146, %i.lv
  br i1 %i.lw, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i144
  %i.lx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i146, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !8  ; 2 uses
  %i.lz = and i64 %i.ly, -8
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store ptr %i.kg, ptr %i.mb, align 8, !tbaa !970
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.it, ptr noundef nonnull %.lcssa.sink.i.i.i146, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store ptr %i.kg, ptr %11, align 8, !tbaa !974
  store i64 %i.ly, ptr %i.jd, align 8, !tbaa !8
  %i.mc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.it, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.jd), !noalias !1013 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit152

bb.ak:                                            ; preds = %bb.af
  %i.md = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !549 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !461
  %i.mh = load ptr, ptr %i.it, align 8            ; 2 uses
  %i.mi = load ptr, ptr %i.iu, align 8            ; 2 uses
  %i.mj = load i32, ptr %i.iv, align 4
  %.fr18.i.i = freeze i32 %i.mj                   ; 3 uses
  %i.mk = icmp eq i32 %.fr18.i.i, 0
  %i.ml = add i32 %.fr18.i.i, -1                  ; 2 uses
  %i.mm = zext i32 %.fr18.i.i to i64
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mh, i64 %i.mm ; 3 uses
  br i1 %i.mk, label %.split16.us.i30.i, label %.split.i17.i

.split.i17.i:                                     ; preds = %bb.ak, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i
  %.sroa.010.0.i18.i = phi ptr [ %.sroa.0.1.i.i.i.i20.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i ], [ %i.kg, %bb.ak ] ; 2 uses
  %i.mo = icmp eq ptr %.sroa.010.0.i18.i, %i.mg
  br i1 %i.mo, label %.split16.us.i30.i, label %bb.al

.split16.us.i30.i:                                ; preds = %.split.i17.i, %bb.ak
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !1018
  %i.mr = zext i32 %i.mq to i64
  %i.ms = load ptr, ptr %i.iw, align 8, !tbaa !202
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.mr
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i

bb.al:                                            ; preds = %.split.i17.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i = load i64, ptr %.sroa.010.0.i18.i, align 8
  %i.mu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19.i, -8
  %i.mv = inttoptr i64 %i.mu to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mv) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i = load i64, ptr %i.mv, align 8
  %i.mw = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i, 4
  %.not.i5.i.i.i.i = icmp eq i64 %i.mw, 0
  br i1 %.not.i5.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28.i: ; preds = %bb.al
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 44
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !554
  %i.mz = and i32 %i.my, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not45.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.nb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29.i ], [ %i.mv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.na = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.nb = inttoptr i64 %i.na to ptr               ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 44
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !554
  %i.ne = and i32 %i.nd, 4
  %.not4.i.i.i.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29.i, !llvm.loop !1019

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28.i, %bb.al
  %.sroa.0.1.i.i.i.i20.i = phi ptr [ %i.mv, %bb.al ], [ %i.mv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28.i ], [ %i.nb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29.i ] ; 3 uses
  %i.nf = ptrtoint ptr %.sroa.0.1.i.i.i.i20.i to i64
  %i.ng = mul i64 %i.nf, -4658895280553007687     ; 2 uses
  %i.nh = lshr i64 %i.ng, 31
  %i.ni = xor i64 %i.nh, %i.ng
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = and i32 %i.ml, %i.nj                    ; 3 uses
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %i.nm = lshr i64 %i.nl, 5
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !52, !noalias !1020
  %i.np = and i32 %i.nk, 31
  %i.nq = lshr i32 %i.no, %i.np
  %i.nr = trunc i32 %i.nq to i1
  br i1 %i.nr, label %.lr.ph.i.i.i.i26.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i, !prof !757

.lr.ph.i.i.i.i26.i:                               ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i, %bb.am
  %i.ns = phi i64 [ %i.ny, %bb.am ], [ %i.nl, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i ]
  %.01117.i.i.i.i27.i = phi i32 [ %i.nx, %bb.am ], [ %i.nk, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i ]
  %i.nt = getelementptr inbounds nuw [16 x i8], ptr %i.mh, i64 %i.ns ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !969, !noalias !1020
  %i.nv = icmp eq ptr %.sroa.0.1.i.i.i.i20.i, %i.nu
  br i1 %i.nv, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i, label %bb.am, !prof !759

bb.am:                                            ; preds = %.lr.ph.i.i.i.i26.i
  %i.nw = add nuw i32 %.01117.i.i.i.i27.i, 1
  %i.nx = and i32 %i.nw, %i.ml                    ; 3 uses
  %i.ny = zext i32 %i.nx to i64                   ; 2 uses
  %i.nz = lshr i64 %i.ny, 5
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !52, !noalias !1020
  %i.oc = and i32 %i.nx, 31
  %i.od = lshr i32 %i.ob, %i.oc
  %i.oe = trunc i32 %i.od to i1
  br i1 %i.oe, label %.lr.ph.i.i.i.i26.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i, !prof !758

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i: ; preds = %bb.am, %.lr.ph.i.i.i.i26.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i
  %.lcssa.sink.i.i.i22.i = phi ptr [ %i.mn, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i.i ], [ %i.mn, %bb.am ], [ %i.nt, %.lr.ph.i.i.i.i26.i ] ; 2 uses
  %.not.i23.i = icmp eq ptr %.lcssa.sink.i.i.i22.i, %i.mn
  br i1 %.not.i23.i, label %.split.i17.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21.i
  %i.of = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i22.i, i64 8
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit.i: ; preds = %.thread.i.i, %.split16.us.i30.i
  %.sroa.0.2.in.i24.i = phi ptr [ %i.mt, %.split16.us.i30.i ], [ %i.of, %.thread.i.i ]
  %.sroa.0.2.i25.i = load i64, ptr %.sroa.0.2.in.i24.i, align 8, !tbaa !8
  %i.og = and i64 %.sroa.0.2.i25.i, -8
  %i.oh = inttoptr i64 %i.og to ptr               ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
end_hunk_0
begin_hunk_1_@_ZNK4llvm14SIRegisterInfo11restoreSGPRENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEiPNS_12RegScavengerEPNS_11SlotIndexesEPNS_13LiveIntervalsEbb:bb.a
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !969, !noalias !1254
  %i.or = icmp eq ptr %i.iu, %i.oq
  br i1 %i.or, label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111, label %bb.al, !prof !759

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.os = add nuw i32 %.01624.i.i, 1
  %i.ot = and i32 %i.os, %i.ob                    ; 3 uses
  %i.ou = zext i32 %i.ot to i64                   ; 2 uses
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.ou ; 2 uses
  %i.ow = lshr i64 %i.ou, 5
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !52, !noalias !1254
  %i.oz = and i32 %i.ot, 31
  %i.pa = lshr i32 %i.oy, %i.oz
  %i.pb = trunc i32 %i.pa to i1
  br i1 %i.pb, label %.lr.ph.i.i, label %.loopexit.i, !prof !758, !llvm.loop !1040

.loopexit.i:                                      ; preds = %bb.al, %bb.ak, %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.oi, %bb.ak ], [ null, %_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb.exit ], [ %i.ov, %bb.al ]
  %i.pc = load i32, ptr %i.hp, align 8, !tbaa !1041, !noalias !1254
  %i.pd = shl i32 %i.pc, 2
  %i.pe = add i32 %i.pd, 4
  %i.pf = mul i32 %i.nz, 3
  %.not.i.i112 = icmp ult i32 %i.pe, %i.pf
  br i1 %.not.i.i112, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, label %bb.am, !prof !759

bb.am:                                            ; preds = %.loopexit.i
  %i.pg = shl i32 %i.nz, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.hk, i32 noundef %i.pg), !noalias !1254
  %i.ph = load ptr, ptr %i.hk, align 8, !tbaa !954, !noalias !1255 ; 5 uses
  %i.pi = load ptr, ptr %i.hl, align 8, !tbaa !966, !noalias !1255 ; 5 uses
  %i.pj = load i32, ptr %i.hm, align 4, !tbaa !967, !noalias !1255 ; 2 uses
  %i.pk = icmp ne i32 %i.pj, 0
  call void @llvm.assume(i1 %i.pk)
  %i.pl = add i32 %i.pj, -1                       ; 2 uses
  %i.pm = mul i64 %i.jc, -4658895280553007687     ; 2 uses
  %i.pn = lshr i64 %i.pm, 31
  %i.po = xor i64 %i.pn, %i.pm
  %i.pp = trunc i64 %i.po to i32
  %i.pq = and i32 %i.pl, %i.pp                    ; 3 uses
  %i.pr = zext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.ph, i64 %i.pr ; 2 uses
  %i.pt = lshr i64 %i.pr, 5
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !52, !noalias !1254
  %i.pw = and i32 %i.pq, 31
  %i.px = lshr i32 %i.pv, %i.pw
  %i.py = trunc i32 %i.px to i1
  br i1 %i.py, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, !prof !757

.lr.ph.i:                                         ; preds = %bb.am, %bb.an
  %i.pz = phi ptr [ %i.qf, %bb.an ], [ %i.ps, %bb.am ] ; 2 uses
  %.01624.i = phi i32 [ %i.qd, %bb.an ], [ %i.pq, %bb.am ]
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !969, !noalias !1254
  %i.qb = icmp eq ptr %i.iu, %i.qa
  br i1 %i.qb, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, label %bb.an, !prof !759

bb.an:                                            ; preds = %.lr.ph.i
  %i.qc = add nuw i32 %.01624.i, 1
  %i.qd = and i32 %i.qc, %i.pl                    ; 3 uses
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.ph, i64 %i.qe ; 2 uses
  %i.qg = lshr i64 %i.qe, 5
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !52, !noalias !1254
  %i.qj = and i32 %i.qd, 31
  %i.qk = lshr i32 %i.qi, %i.qj
  %i.ql = trunc i32 %i.qk to i1
  br i1 %i.ql, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, !prof !758, !llvm.loop !1040

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i: ; preds = %bb.an, %.lr.ph.i, %bb.am, %.loopexit.i
  %i.qm = phi ptr [ %i.nx, %.loopexit.i ], [ %i.ph, %bb.am ], [ %i.ph, %.lr.ph.i ], [ %i.ph, %bb.an ]
  %i.qn = phi ptr [ %i.ny, %.loopexit.i ], [ %i.pi, %bb.am ], [ %i.pi, %.lr.ph.i ], [ %i.pi, %bb.an ]
  %i.qo = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.ps, %bb.am ], [ %i.qf, %bb.an ], [ %i.pz, %.lr.ph.i ] ; 3 uses
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = ashr exact i64 %i.qr, 4                 ; 2 uses
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = and i32 %i.qt, 31
  %i.qv = shl nuw i32 1, %i.qu
  %i.qw = lshr i64 %i.qs, 5
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qw ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !52, !noalias !1254
  %i.qz = or i32 %i.qv, %i.qy
  store i32 %i.qz, ptr %i.qx, align 4, !tbaa !52, !noalias !1254
  %i.ra = load i32, ptr %i.hp, align 8, !tbaa !1041, !noalias !1254
  %i.rb = add i32 %i.ra, 1
  store i32 %i.rb, ptr %i.hp, align 8, !tbaa !1041, !noalias !1254
  store ptr %i.iu, ptr %i.qo, align 8, !tbaa !969, !noalias !1254
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store i64 %i.nw, ptr %i.rc, align 8, !tbaa !8, !noalias !1254
  br label %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111

_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit111: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, %bb.ad, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i103, %bb.y
  %lftr.wideiv = trunc i64 %indvars.iv.next170 to i32
  %exitcond172.not = icmp eq i32 %.sroa.speculated, %lftr.wideiv
  br i1 %exitcond172.not, label %.loopexit, label %bb.v, !llvm.loop !1260

.loopexit144:                                     ; preds = %_ZN4llvm11SlotIndexes25replaceMachineInstrInMapsERNS_12MachineInstrES2_.exit, %._crit_edge
  %i.rd = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27 ; 0 uses
  %.not78 = icmp eq ptr %5, null
  br i1 %.not78, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit144
  %i.re = load i32, ptr %19, align 8, !tbaa !570
  call void @_ZN4llvm13LiveIntervals27removeAllRegUnitsForPhysRegENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(424) %5, i32 %i.re)
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit144, %bb.ao, %_ZNK4llvm21SIMachineFunctionInfo31getSGPRSpillToPhysicalVGPRLanesEi.exit
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
  %i.ar = trunc nuw i8 %i.aq to i1                ; 3 uses
  %i.as = select i1 %i.ar, i32 32, i32 64
  %15 = add i32 %i.ap, -1
  %i.at = add i32 %15, %i.as
  %i.au = select i1 %i.ar, i32 5, i32 6           ; 5 uses
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
  %.v = select i1 %i.ar, i32 31, i32 63           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bq = zext nneg i32 %.v to i64
  br label %bb.b

.loopexit112:                                     ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge, %bb.b
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
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph116, %.loopexit112
  %.0115 = phi i32 [ 0, %.lr.ph116 ], [ %i.ce, %.loopexit112 ] ; 2 uses
  %i.cd = shl i32 %.0115, %i.au                   ; 3 uses
  %i.ce = add nuw nsw i32 %.0115, 1               ; 3 uses
  %i.cf = shl i32 %i.ce, %i.au
  %i.cg = load i32, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated107 = call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.cf) ; 3 uses
  %i.ch = icmp ult i32 %i.cd, %.sroa.speculated107
  br i1 %i.ch, label %.lr.ph.preheader, label %.loopexit112

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ci = zext i32 %i.cd to i64                   ; 2 uses
  %i.cj = icmp eq i32 %i.cg, 1
  %i.ck = load i32, ptr %14, align 8, !tbaa !52   ; 2 uses
  br i1 %i.cj, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !942
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.ci
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
  %i.dj = and i32 %i.cd, %.v
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
  %i.dn = or disjoint i64 %i.ci, 1                ; 3 uses
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
  %lftr.wideiv.peel = trunc nuw i64 %i.dn to i32
  %exitcond.peel.not = icmp eq i32 %.sroa.speculated107, %lftr.wideiv.peel
  br i1 %exitcond.peel.not, label %.loopexit112, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge
  %indvars.iv = phi i64 [ %i.ew, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit._crit_edge ], [ %i.dn, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.peel._crit_edge ] ; 3 uses
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !912
  %i.dt = icmp eq i32 %i.ds, 1
  %i.du = load i32, ptr %14, align 8, !tbaa !52   ; 2 uses
  br i1 %i.dt, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !942
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv
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
  %i.et = and i64 %indvars.iv, %i.bq
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
  %i.ew = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
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
  %lftr.wideiv = trunc i64 %i.ew to i32
  %exitcond.not = icmp eq i32 %.sroa.speculated107, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit112, label %.lr.ph, !llvm.loop !1277

.loopexit:                                        ; preds = %bb.j, %bb.g
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
  %.063120 = phi i32 [ 0, %.lr.ph122 ], [ %i.fh, %.loopexit ] ; 2 uses
  %i.fg = shl i32 %.063120, %i.au                 ; 2 uses
  %i.fh = add nuw nsw i32 %.063120, 1             ; 3 uses
  %i.fi = shl i32 %i.fh, %i.au
  %i.fj = load i32, ptr %i.am, align 8, !tbaa !52
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.fj, i32 %i.fi) ; 3 uses
  %i.fk = icmp ult i32 %i.fg, %.sroa.speculated
  br i1 %i.fk, label %.lr.ph119.preheader, label %.loopexit

.lr.ph119.preheader:                              ; preds = %bb.g
  %i.fl = zext i32 %i.fg to i64
  %i.fm = zext i32 %.sroa.speculated to i64
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
end_hunk_1
