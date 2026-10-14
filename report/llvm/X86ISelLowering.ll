Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 337
begin_hunk_0_@_ZL13combineSelectPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 40
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !638
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %101, i8 0, i64 16, i1 false)
  %i.amc = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %.sroa.0106.0.copyload, ptr %.sroa.2108.0.copyload, ptr nonnull %.sroa.01266.0.copyload, i32 %.sroa.71268.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.amb, i32 noundef 22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %101, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract99 = extractvalue { ptr, i32 } %i.amc, 0
  %.fca.1.extract100 = extractvalue { ptr, i32 } %i.amc, 1
  %.sroa.096.0.copyload = load i16, ptr %40, align 8, !tbaa !345
  %.sroa.298.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !471
  store ptr %.sroa.01468.3, ptr %102, align 8, !tbaa !465
  %.sroa.56.0..sroa_idx1540 = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i32 %.sroa.56.3, ptr %.sroa.56.0..sroa_idx1540, align 8, !tbaa !240
  %.sroa.71.0..sroa_idx1579 = getelementptr inbounds nuw i8, ptr %102, i64 12
  store i32 %.sroa.71.0.copyload, ptr %.sroa.71.0..sroa_idx1579, align 4
  store ptr %.sroa.01583.3, ptr %103, align 8, !tbaa !465
  %.sroa.51.0..sroa_idx1648 = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 %.sroa.51.3, ptr %.sroa.51.0..sroa_idx1648, align 8, !tbaa !240
  %.sroa.66.0..sroa_idx1685 = getelementptr inbounds nuw i8, ptr %103, i64 12
  store i32 %.sroa.66.0.copyload, ptr %.sroa.66.0..sroa_idx1685, align 4
  %i.amd = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %.sroa.096.0.copyload, ptr %.sroa.298.0.copyload, ptr %.fca.0.extract99, i32 %.fca.1.extract100, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %102, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %103, i32 0)
  br label %.critedge953

_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread:        ; preds = %bb.hr, %.split1762, %bb.hp
  %.sroa.086.0.copyload = load i16, ptr %40, align 8, !tbaa !345 ; 2 uses
  %.not.i1256 = icmp eq i16 %.sroa.086.0.copyload, 0
  br i1 %.not.i1256, label %.critedge947, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1257

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1257: ; preds = %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread
  %i.ame = zext i16 %.sroa.086.0.copyload to i64
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %i.ame
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !337
  %.not1783 = icmp eq ptr %i.amg, null
  br i1 %.not1783, label %.critedge947, label %bb.ht

bb.ht:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1257
  %i.amh = load i32, ptr %i.p, align 8, !tbaa !342 ; 2 uses
  %i.ami = icmp sgt i32 %i.amh, 6
  %i.amj = icmp eq i32 %i.cx, 32
  %or.cond47 = and i1 %i.amj, %i.ami
  br i1 %or.cond47, label %.critedge949, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.amk = icmp sgt i32 %i.amh, 7
  %i.aml = icmp eq i32 %i.cx, 64
  %or.cond49 = and i1 %i.aml, %i.amk
  br i1 %or.cond49, label %.critedge949, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.amm = getelementptr inbounds nuw i8, ptr %3, i64 513
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !361, !range !79, !noundef !80
  %i.amo = trunc nuw i8 %i.amn to i1
  br i1 %i.amo, label %.critedge949, label %.critedge947

.critedge949:                                     ; preds = %bb.hu, %bb.ht, %bb.hv
  %i.amp = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG22isKnownToBeAPowerOfTwoENS_7SDValueEbj(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %i.alh, i32 %i.alj, i1 noundef zeroext false, i32 noundef 0) #39
  br i1 %i.amp, label %bb.hw, label %.critedge947

bb.hw:                                            ; preds = %.critedge949
  store ptr %100, ptr %104, align 8, !tbaa !688
  %i.amq = getelementptr inbounds nuw i8, ptr %104, i64 8
  store i64 1, ptr %i.amq, align 8, !tbaa !689
  %i.amr = call { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 212, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %.sroa.0.0.copyload.i.i1249, ptr %.sroa.21.0.copyload.i.i1251, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %104, i32 0) #39 ; 2 uses
  %.fca.0.extract76 = extractvalue { ptr, i32 } %i.amr, 0 ; 2 uses
  %.not1784 = icmp eq ptr %.fca.0.extract76, null
  br i1 %.not1784, label %.critedge947, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %.fca.1.extract77 = extractvalue { ptr, i32 } %i.amr, 1
  %i.ams = load ptr, ptr %i.ale, align 8, !tbaa !638
  store ptr %.fca.0.extract76, ptr %105, align 8, !tbaa !465
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %105, i64 8
  store i32 %.fca.1.extract77, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  %i.amt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 198, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %.sroa.0.0.copyload.i.i1249, ptr %.sroa.21.0.copyload.i.i1251, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ams, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %105) #39 ; 2 uses
  %.fca.0.extract66 = extractvalue { ptr, i32 } %i.amt, 0
  %.fca.1.extract67 = extractvalue { ptr, i32 } %i.amt, 1
  %.sroa.062.0.copyload = load i16, ptr %41, align 8, !tbaa !345
  %.sroa.264.0.copyload = load ptr, ptr %i.bz, align 8, !tbaa !471
  %i.amu = load ptr, ptr %38, align 8, !tbaa !472
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 40
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !638
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, i8 0, i64 16, i1 false)
  %i.amy = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %.sroa.062.0.copyload, ptr %.sroa.264.0.copyload, ptr %.fca.0.extract66, i32 %.fca.1.extract67, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.amx, i32 noundef 20, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %106, i1 noundef zeroext false, i32 0) ; 2 uses
  %.fca.0.extract55 = extractvalue { ptr, i32 } %i.amy, 0
  %.fca.1.extract56 = extractvalue { ptr, i32 } %i.amy, 1
  %.sroa.052.0.copyload = load i16, ptr %40, align 8, !tbaa !345
  %.sroa.254.0.copyload = load ptr, ptr %i.bs, align 8, !tbaa !471
  store ptr %.sroa.01468.3, ptr %107, align 8, !tbaa !465
  %.sroa.56.0..sroa_idx1542 = getelementptr inbounds nuw i8, ptr %107, i64 8
  store i32 %.sroa.56.3, ptr %.sroa.56.0..sroa_idx1542, align 8, !tbaa !240
  %.sroa.71.0..sroa_idx1581 = getelementptr inbounds nuw i8, ptr %107, i64 12
  store i32 %.sroa.71.0.copyload, ptr %.sroa.71.0..sroa_idx1581, align 4
  store ptr %.sroa.01583.3, ptr %108, align 8, !tbaa !465
  %.sroa.51.0..sroa_idx1650 = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i32 %.sroa.51.3, ptr %.sroa.51.0..sroa_idx1650, align 8, !tbaa !240
  %.sroa.66.0..sroa_idx1687 = getelementptr inbounds nuw i8, ptr %108, i64 12
  store i32 %.sroa.66.0.copyload, ptr %.sroa.66.0..sroa_idx1687, align 4
  %i.amz = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getSelectERKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %37, i16 %.sroa.052.0.copyload, ptr %.sroa.254.0.copyload, ptr %.fca.0.extract55, i32 %.fca.1.extract56, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %107, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %108, i32 0)
  br label %.critedge953

.critedge947:                                     ; preds = %_ZNK4llvm5APInt10isPowerOf2Ev.exit.thread, %bb.hw, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1257, %.critedge949, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #39
  br label %.critedge45

.critedge913:                                     ; preds = %bb.ag, %bb.af
  %.sroa.40.2 = phi i32 [ %.sroa.51.0.copyload, %bb.af ], [ %.sroa.56.0.copyload, %bb.ag ]
  %.sroa.01689.2 = phi ptr [ %.sroa.01583.0.copyload, %bb.af ], [ %.sroa.01468.0.copyload, %bb.ag ]
  %i.ana = icmp eq ptr %i.gd, null
  %or.cond1768 = select i1 %i.gc, i1 true, i1 %i.ana
  br i1 %or.cond1768, label %_ZN4llvm5APIntD2Ev.exit.i1258, label %bb.hy

bb.hy:                                            ; preds = %.critedge913
  call void @_ZdaPv(ptr noundef nonnull %i.gd) #42
  br label %_ZN4llvm5APIntD2Ev.exit.i1258

_ZN4llvm5APIntD2Ev.exit.i1258:                    ; preds = %bb.hy, %.critedge913
  %i.anb = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.anc = load i32, ptr %i.anb, align 8, !tbaa !643
  %i.and = icmp ugt i32 %i.anc, 64
  br i1 %i.and, label %bb.hz, label %_ZN4llvm9KnownBitsD2Ev.exit1259

bb.hz:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i1258
  %i.ane = load ptr, ptr %42, align 8, !tbaa !357 ; 2 uses
  %i.anf = icmp eq ptr %i.ane, null
  br i1 %i.anf, label %_ZN4llvm9KnownBitsD2Ev.exit1259, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @_ZdaPv(ptr noundef nonnull %i.ane) #42
  br label %_ZN4llvm9KnownBitsD2Ev.exit1259

_ZN4llvm9KnownBitsD2Ev.exit1259:                  ; preds = %_ZN4llvm5APIntD2Ev.exit.i1258, %bb.hz, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #39
  br label %.critedge45

.critedge915:                                     ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj1EED2Ev.exit1027, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, %bb.ao
  %.sroa.40.3 = phi i32 [ %.fca.1.extract716, %bb.ao ], [ %.fca.1.extract629, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ], [ %.sroa.40.1, %_ZN4llvm11SmallVectorINS_7SDValueELj1EED2Ev.exit1027 ]
  %.sroa.01689.3 = phi ptr [ %.fca.0.extract715, %bb.ao ], [ %.fca.0.extract628, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread ], [ %.sroa.01689.1, %_ZN4llvm11SmallVectorINS_7SDValueELj1EED2Ev.exit1027 ]
  %i.ang = load ptr, ptr %43, align 8, !tbaa !83  ; 2 uses
  %i.anh = icmp eq ptr %i.ang, %i.hc
  br i1 %i.anh, label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit1260, label %bb.ib

bb.ib:                                            ; preds = %.critedge915
  call void @free(ptr noundef %i.ang) #39
  br label %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit1260

_ZN4llvm11SmallVectorIiLj64EED2Ev.exit1260:       ; preds = %.critedge915, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #39
  br label %.critedge45

.critedge953:                                     ; preds = %bb.hx, %bb.hs
  %.pn = phi { ptr, i32 } [ %i.amz, %bb.hx ], [ %i.amd, %bb.hs ] ; 2 uses
  %.sroa.01689.5 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.40.5 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #39
  br label %.critedge45

.critedge45:                                      ; preds = %.lr.ph.i.i1234, %bb.hg, %.critedge33.thread, %bb.eh, %bb.ej, %switch.lookup, %bb.ho, %.critedge947, %.critedge41, %bb.hd, %bb.he, %bb.hf, %_ZNK4llvm7SDValue9hasOneUseEv.exit1243, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit1246, %bb.hl, %bb.hm, %bb.hn, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1178, %bb.fu, %_ZNK4llvm8TypeSizecvmEv.exit1112, %bb.ga, %bb.fg, %.critedge953, %.critedge943, %bb.fw, %bb.fv, %_ZL27combineSelectOfTwoConstantsPN4llvm6SDNodeERNS_12SelectionDAGERKNS_5SDLocE.exit, %.critedge919, %.critedge917, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit1260, %_ZN4llvm9KnownBitsD2Ev.exit1259, %bb.ae, %bb.gk, %bb.gg, %bb.ft, %bb.fn, %bb.ez, %.thread1722
  %.sroa.40.6 = phi i32 [ %.fca.1.extract732, %bb.ae ], [ %.sroa.40.2, %_ZN4llvm9KnownBitsD2Ev.exit1259 ], [ %.sroa.40.3, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit1260 ], [ %.fca.1.extract605, %.critedge917 ], [ %.fca.1.extract471, %_ZNK4llvm8TypeSizecvmEv.exit1112 ], [ %.sroa.18.2.i, %_ZL27combineSelectOfTwoConstantsPN4llvm6SDNodeERNS_12SelectionDAGERKNS_5SDLocE.exit ], [ 0, %bb.ho ], [ %.fca.1.extract305, %bb.fg ], [ %.fca.1.extract285, %bb.fn ], [ %.fca.1.extract265, %bb.ft ], [ %.fca.1.extract581, %.thread1722 ], [ %.fca.1.extract255, %bb.fv ], [ %.fca.1.extract251, %bb.fw ], [ %.fca.1.extract227, %bb.ga ], [ %.fca.1.extract207, %bb.gg ], [ %.fca.1.extract183, %bb.gk ], [ %.fca.1.extract122, %.critedge943 ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1178 ], [ %.sroa.40.5, %.critedge953 ], [ %.fca.1.extract340, %bb.ez ], [ %.fca.1.extract598, %.critedge919 ], [ %.fca.1.extract390, %bb.ej ], [ 0, %bb.fu ], [ 0, %bb.hn ], [ 0, %bb.hm ], [ 0, %bb.hl ], [ 0, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit1246 ], [ 0, %_ZNK4llvm7SDValue9hasOneUseEv.exit1243 ], [ 0, %bb.hf ], [ 0, %bb.he ], [ 0, %bb.hd ], [ 0, %.critedge41 ], [ 0, %.critedge33.thread ], [ 0, %bb.hg ], [ 0, %.critedge947 ], [ %.fca.1.extract420, %bb.eh ], [ %.fca.1.extract363, %switch.lookup ], [ 0, %.lr.ph.i.i1234 ]
  %.sroa.01689.6 = phi ptr [ %.fca.0.extract731, %bb.ae ], [ %.sroa.01689.2, %_ZN4llvm9KnownBitsD2Ev.exit1259 ], [ %.sroa.01689.3, %_ZN4llvm11SmallVectorIiLj64EED2Ev.exit1260 ], [ %.fca.0.extract604, %.critedge917 ], [ %.fca.0.extract470, %_ZNK4llvm8TypeSizecvmEv.exit1112 ], [ %.sroa.0114.2.i, %_ZL27combineSelectOfTwoConstantsPN4llvm6SDNodeERNS_12SelectionDAGERKNS_5SDLocE.exit ], [ null, %bb.ho ], [ %.fca.0.extract304, %bb.fg ], [ %.fca.0.extract284, %bb.fn ], [ %.fca.0.extract264, %bb.ft ], [ %.fca.0.extract580, %.thread1722 ], [ %.fca.0.extract254, %bb.fv ], [ %.fca.0.extract250, %bb.fw ], [ %.fca.0.extract226, %bb.ga ], [ %.fca.0.extract206, %bb.gg ], [ %.fca.0.extract182, %bb.gk ], [ %.fca.0.extract121, %.critedge943 ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1178 ], [ %.sroa.01689.5, %.critedge953 ], [ %.fca.0.extract339, %bb.ez ], [ %.fca.0.extract597, %.critedge919 ], [ %.fca.0.extract389, %bb.ej ], [ null, %bb.fu ], [ null, %bb.hn ], [ null, %bb.hm ], [ null, %bb.hl ], [ null, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit1246 ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit1243 ], [ null, %bb.hf ], [ null, %bb.he ], [ null, %bb.hd ], [ null, %.critedge41 ], [ null, %.critedge33.thread ], [ null, %bb.hg ], [ null, %.critedge947 ], [ %.fca.0.extract419, %bb.eh ], [ %.fca.0.extract362, %switch.lookup ], [ null, %.lr.ph.i.i1234 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #39
  %i.ani = insertvalue { ptr, i32 } poison, ptr %.sroa.01689.6, 0
  %i.anj = insertvalue { ptr, i32 } %i.ani, i32 %.sroa.40.6, 1
  br label %bb.ic

bb.ic:                                            ; preds = %_ZL13commuteSelectPN4llvm6SDNodeERNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE.exit, %bb.a, %.critedge45
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.o, %bb.a ], [ %i.bn, %_ZL13commuteSelectPN4llvm6SDNodeERNS_12SelectionDAGERKNS_5SDLocERKNS_12X86SubtargetE.exit ], [ %i.anj, %.critedge45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #39
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL14combineBitcastPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(519752) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 12 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 9 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 12 uses
  %15 = alloca %class.anon.1921, align 8          ; 7 uses
  %16 = alloca %"class.llvm::SmallVector.402", align 8 ; 16 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %24 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %25 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %26 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %27 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %28 = alloca %"struct.llvm::EVT", align 8       ; 56 uses
  %29 = alloca %"struct.llvm::EVT", align 8       ; 39 uses
  %30 = alloca %"class.llvm::SDLoc", align 8      ; 14 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"class.llvm::SmallVector.527", align 8 ; 8 uses
  %35 = alloca %"class.llvm::ArrayRef.420", align 8 ; 3 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %37 = alloca %"class.llvm::SmallVector.527", align 8 ; 16 uses
  %38 = alloca %"class.llvm::ArrayRef.420", align 8 ; 3 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %40 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %41 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %44 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 5 uses
  %45 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %46 = alloca %"class.llvm::ArrayRef.420", align 8 ; 3 uses
  %47 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %48 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %51 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %52 = alloca %"class.llvm::SmallVector.1919", align 8 ; 13 uses
  %53 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %55 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %56 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %57 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %59 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %60 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %62 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %66 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %67 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %68 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %69 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %70 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %71 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %72 = alloca %"class.llvm::SmallVector.527", align 8 ; 7 uses
  %73 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %74 = alloca %"class.llvm::ArrayRef.420", align 8 ; 3 uses
  %75 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %76 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %77 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 3 uses
  %.sroa.01179.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !465 ; 47 uses
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.66.0.copyload = load i32, ptr %.sroa.66.0..sroa_idx, align 8, !tbaa !240 ; 14 uses
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.91.0.copyload = load i32, ptr %.sroa.91.0..sroa_idx, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !469  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !345 ; 5 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !471 ; 2 uses
  store i16 %.sroa.0.0.copyload.i, ptr %28, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 28 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #39
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !469
  %i.h = zext i32 %.sroa.66.0.copyload to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i, ptr %29, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 12 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !684  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1129 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !673
  store i64 %i.q, ptr %30, align 8, !tbaa !673
  %i.r = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !674
  store i32 %i.t, ptr %i.r, align 8, !tbaa !676
  %i.u = call fastcc { ptr, i32 } @_ZL18combineBitcastvxi1RN4llvm12SelectionDAGENS_3EVTENS_7SDValueERKNS_5SDLocERKNS_12X86SubtargetE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr nonnull %.sroa.01179.0.copyload, i32 %.sroa.66.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %30, ptr noundef nonnull align 8 dereferenceable(519752) %3) ; 2 uses
  %.fca.0.extract518 = extractvalue { ptr, i32 } %i.u, 0 ; 2 uses
  %.not1310 = icmp eq ptr %.fca.0.extract518, null
  br i1 %.not1310, label %bb.c, label %.critedge624

bb.c:                                             ; preds = %bb.b
  %i.v = load i16, ptr %28, align 8, !tbaa !641   ; 3 uses
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = icmp eq ptr %i.w, null
  %i.y = and i16 %i.v, -3
  %i.z = icmp eq i16 %i.y, 20
  %or.cond = select i1 %i.z, i1 %i.x, i1 false
  %.pre = load i16, ptr %29, align 8, !tbaa !641  ; 4 uses
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i16 %.pre, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.aa = add i16 %.pre, -2
  %spec.select.i.i = icmp ult i16 %i.aa, 10
  br i1 %spec.select.i.i, label %bb.e, label %bb.g

_ZNK4llvm3EVT15isScalarIntegerEv.exit:            ; preds = %bb.d
  %i.ab = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.ab, label %bb.e, label %.thread

bb.e:                                             ; preds = %.split, %_ZNK4llvm3EVT15isScalarIntegerEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !342
  %i.ae = icmp sgt i32 %i.ad, 8
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %.sroa.01179.0.copyload, ptr %31, align 8, !tbaa !465
  %.sroa.66.0..sroa_idx1222 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.sroa.66.0.copyload, ptr %.sroa.66.0..sroa_idx1222, align 8, !tbaa !240
  %.sroa.91.0..sroa_idx1238 = getelementptr inbounds nuw i8, ptr %31, i64 12
  store i32 %.sroa.91.0.copyload, ptr %.sroa.91.0..sroa_idx1238, align 4
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 5, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31) #39 ; 2 uses
  %.fca.0.extract501 = extractvalue { ptr, i32 } %i.af, 0
  %.fca.1.extract502 = extractvalue { ptr, i32 } %i.af, 1
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 26, ptr null, ptr %.fca.0.extract501, i32 %.fca.1.extract502) #39 ; 2 uses
  %.fca.0.extract491 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract492 = extractvalue { ptr, i32 } %i.ag, 1
  %.sroa.0488.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2490.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  store ptr %.fca.0.extract491, ptr %32, align 8, !tbaa !465
  %.sroa.66.0..sroa_idx1224 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract492, ptr %.sroa.66.0..sroa_idx1224, align 8, !tbaa !240
  %.sroa.91.0..sroa_idx1240 = getelementptr inbounds nuw i8, ptr %32, i64 12
  store i32 %.sroa.91.0.copyload, ptr %.sroa.91.0..sroa_idx1240, align 4
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %30, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract484 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract485 = extractvalue { ptr, i32 } %i.ah, 1
  store ptr %.fca.0.extract484, ptr %33, align 8
  %.sroa.2487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract485, ptr %.sroa.2487.0..sroa_idx, align 8
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0488.0.copyload, ptr %.sroa.2490.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #39 ; 2 uses
  %.fca.0.extract480 = extractvalue { ptr, i32 } %i.ai, 0
  br label %.critedge624

bb.g:                                             ; preds = %bb.c, %.split, %bb.e
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = and i16 %.pre, -3
  %i.am = icmp eq i16 %i.al, 20
  %or.cond1299 = select i1 %i.am, i1 %i.ak, i1 false
  br i1 %or.cond1299, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.not.i650 = icmp eq i16 %i.v, 0
  br i1 %.not.i650, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit652, label %.split1251

.split1251:                                       ; preds = %bb.h
  %i.an = add i16 %i.v, -2
  %spec.select.i.i651 = icmp ult i16 %i.an, 10
  br i1 %spec.select.i.i651, label %bb.i, label %.thread

_ZNK4llvm3EVT15isScalarIntegerEv.exit652:         ; preds = %bb.h
  %i.ao = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.ao, label %bb.i, label %.thread

bb.i:                                             ; preds = %.split1251, %_ZNK4llvm3EVT15isScalarIntegerEv.exit652
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !342
  %i.ar = icmp sgt i32 %i.aq, 8
  br i1 %i.ar, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !468
  %i.au = icmp eq i32 %i.at, 165
  br i1 %i.au, label %bb.k, label %.split.i

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 64 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !677
  %i.ax = zext i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !638
  %i.bb = and i64 %i.ay, 4294967295
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %.sroa.01163.0.copyload = load ptr, ptr %i.bc, align 8, !tbaa !465 ; 2 uses
  %.sroa.61165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.61165.0.copyload = load i32, ptr %.sroa.61165.0..sroa_idx, align 8, !tbaa !240
  %i.bd = call noundef zeroext i1 @_ZN4llvm3ISD21isBuildVectorAllZerosEPKNS_6SDNodeE(ptr noundef %.sroa.01163.0.copyload) #39
  br i1 %i.bd, label %bb.l, label %.critedge622

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01163.0.copyload, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !469
  %i.bg = zext i32 %.sroa.61165.0.copyload to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %.sroa.0.0.copyload.i.i653 = load i16, ptr %i.bh, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i654 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.21.0.copyload.i.i655 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i654, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i653, ptr %29, align 8, !tbaa !345
  store ptr %.sroa.21.0.copyload.i.i655, ptr %i.j, align 8, !tbaa !471
  %i.bi = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %29)
  %i.bj = udiv i32 8, %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #39
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !638
  %i.bl = load i16, ptr %i.av, align 8, !tbaa !677
  %i.bm = zext i16 %i.bl to i64
  call void @_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2INS_5SDUseEvEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(80) %34, ptr %i.bk, i64 %i.bm)
  %i.bn = zext nneg i32 %i.bj to i64
  %.sroa.0469.0.copyload = load i16, ptr %29, align 8, !tbaa !345
  %.sroa.2471.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !471
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0469.0.copyload, ptr %.sroa.2471.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract465 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract466 = extractvalue { ptr, i32 } %i.bo, 1
  call void @_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEmS1_(ptr noundef nonnull align 8 dereferenceable(16) %34, i64 noundef %i.bn, ptr %.fca.0.extract465, i32 %.fca.1.extract466)
  %i.bp = load ptr, ptr %34, align 8, !tbaa !83
  store ptr %i.bp, ptr %35, align 8, !tbaa !688
  %i.bq = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !633
  %i.bt = zext i32 %i.bs to i64
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !689
  %i.bu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 26, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %35) #39 ; 2 uses
  %.fca.0.extract458 = extractvalue { ptr, i32 } %i.bu, 0
  %.fca.1.extract459 = extractvalue { ptr, i32 } %i.bu, 1
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 5, ptr null, ptr %.fca.0.extract458, i32 %.fca.1.extract459) #39 ; 2 uses
  %.fca.0.extract448 = extractvalue { ptr, i32 } %i.bv, 0
  %.fca.1.extract449 = extractvalue { ptr, i32 } %i.bv, 1
  %.sroa.0445.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2447.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  store ptr %.fca.0.extract448, ptr %36, align 8, !tbaa !465
  %.sroa.66.0..sroa_idx1226 = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.fca.1.extract449, ptr %.sroa.66.0..sroa_idx1226, align 8, !tbaa !240
  %.sroa.91.0..sroa_idx1242 = getelementptr inbounds nuw i8, ptr %36, i64 12
  store i32 %.sroa.91.0.copyload, ptr %.sroa.91.0..sroa_idx1242, align 4
  %i.bw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0445.0.copyload, ptr %.sroa.2447.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36) #39 ; 2 uses
  %.fca.0.extract441 = extractvalue { ptr, i32 } %i.bw, 0
  %i.bx = load ptr, ptr %34, align 8, !tbaa !83   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.bx) #39
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #39
  br label %.critedge624

.critedge622:                                     ; preds = %bb.k
  %.pre1343 = load i16, ptr %29, align 8, !tbaa !641 ; 2 uses
  %.not.i.i660 = icmp eq i16 %.pre1343, 0
  br i1 %.not.i.i660, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.j, %.critedge622
  %i.ca = phi i16 [ %.pre1343, %.critedge622 ], [ %.pre, %bb.j ] ; 3 uses
  %i.cb = add i16 %i.ca, -163
  %spec.select.i.i.i = icmp ult i16 %i.cb, 53
  br i1 %spec.select.i.i.i, label %bb.n, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %.critedge622
  %i.cc = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.cd = zext i16 %i.ca to i64
  %i.ce = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !339
  %i.ch = zext i16 %i.cg to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.o:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.ci = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.o
  %i.cj = phi i16 [ %i.ca, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ 0, %bb.o ]
  %i.ck = phi i32 [ %i.ch, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.ci, %bb.o ] ; 3 uses
  %i.cl = udiv i32 8, %i.ck                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #39
  %.sroa.2439.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %i.cm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %27, i16 %i.cj, ptr %.sroa.2439.0.copyload) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39
  %.fca.0.extract433 = extractvalue { ptr, i32 } %i.cm, 0 ; 12 uses
  %.fca.1.extract434 = extractvalue { ptr, i32 } %i.cm, 1 ; 12 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 9 uses
  store ptr %i.cn, ptr %37, align 8, !tbaa !83
  %i.co = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  store i32 0, ptr %i.co, align 8, !tbaa !633
  %i.cp = getelementptr inbounds nuw i8, ptr %37, i64 12
  store i32 4, ptr %i.cp, align 4, !tbaa !634
  %i.cq = icmp ult i32 %i.ck, 2
  br i1 %i.cq, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.cr = zext nneg i32 %i.cl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %37, ptr noundef nonnull %i.cn, i64 noundef %i.cr, i64 noundef 16) #39
  %i.cs = load ptr, ptr %37, align 8, !tbaa !83   ; 17 uses
  store ptr %.fca.0.extract433, ptr %i.cs, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !240
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %.fca.0.extract433, ptr %i.ct, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !240
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store ptr %.fca.0.extract433, ptr %i.cu, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !240
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store ptr %.fca.0.extract433, ptr %i.cv, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !240
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  store ptr %.fca.0.extract433, ptr %i.cw, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !240
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  store ptr %.fca.0.extract433, ptr %i.cx, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !240
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store ptr %.fca.0.extract433, ptr %i.cy, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !240
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  store ptr %.fca.0.extract433, ptr %i.cz, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store i32 %.fca.1.extract434, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !240
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.not.i662 = icmp ugt i32 %i.ck, 8
  br i1 %.not.i662, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  store ptr %.fca.0.extract433, ptr %i.cn, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %37, i64 24
  store i32 %.fca.1.extract434, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !240
  %.not.i.i.i.i.i = icmp eq i32 %i.cl, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %37, i64 32
  store ptr %.fca.0.extract433, ptr %i.da, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %37, i64 40
  store i32 %.fca.1.extract434, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !240
  %.not.i.i.i.i.i.1 = icmp eq i32 %i.cl, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.db = getelementptr inbounds nuw i8, ptr %37, i64 48
  store ptr %.fca.0.extract433, ptr %i.db, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %37, i64 56
  store i32 %.fca.1.extract434, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !240
  %.not.i.i.i.i.i.2 = icmp eq i32 %i.cl, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.dc = getelementptr inbounds nuw i8, ptr %37, i64 64
  store ptr %.fca.0.extract433, ptr %i.dc, align 8, !tbaa !465
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %37, i64 72
  store i32 %.fca.1.extract434, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3, align 8, !tbaa !240
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit

_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.preheader.i.i.i, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.dd = phi ptr [ %i.cs, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.cn, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.3 ], [ %i.cn, %.lr.ph.i.i.i.i.i.2 ], [ %i.cn, %.lr.ph.i.i.i.i.i.1 ], [ %i.cn, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store i32 %i.cl, ptr %i.co, align 8, !tbaa !633
  store ptr %.sroa.01179.0.copyload, ptr %i.dd, align 8, !tbaa !465
  %.sroa.66.0..sroa_idx1232 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %.sroa.66.0.copyload, ptr %.sroa.66.0..sroa_idx1232, align 8, !tbaa !240
  store ptr %i.dd, ptr %38, align 8, !tbaa !688
  %i.de = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.df = load i32, ptr %i.co, align 8, !tbaa !633
  %i.dg = zext i32 %i.df to i64
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !689
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 26, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %38) #39 ; 2 uses
  %.fca.0.extract426 = extractvalue { ptr, i32 } %i.dh, 0
  %.fca.1.extract427 = extractvalue { ptr, i32 } %i.dh, 1
  %i.di = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 5, ptr null, ptr %.fca.0.extract426, i32 %.fca.1.extract427) #39 ; 2 uses
  %.fca.0.extract416 = extractvalue { ptr, i32 } %i.di, 0
  %.fca.1.extract417 = extractvalue { ptr, i32 } %i.di, 1
  %.sroa.0413.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2415.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  store ptr %.fca.0.extract416, ptr %39, align 8, !tbaa !465
  %.sroa.66.0..sroa_idx1228 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 %.fca.1.extract417, ptr %.sroa.66.0..sroa_idx1228, align 8, !tbaa !240
  %.sroa.91.0..sroa_idx1244 = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 %.sroa.91.0.copyload, ptr %.sroa.91.0..sroa_idx1244, align 4
  %i.dj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %30, i16 %.sroa.0413.0.copyload, ptr %.sroa.2415.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39) #39 ; 2 uses
  %.fca.0.extract409 = extractvalue { ptr, i32 } %i.dj, 0
  %i.dk = load ptr, ptr %37, align 8, !tbaa !83   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cn
  br i1 %i.dl, label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit663, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit
  call void @free(ptr noundef %i.dk) #39
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit663

_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit663: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EEC2EmRKS1_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #39
  br label %.critedge624

.thread:                                          ; preds = %_ZNK4llvm3EVT15isScalarIntegerEv.exit, %bb.g, %.split1251, %_ZNK4llvm3EVT15isScalarIntegerEv.exit652, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #39
  br label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

bb.q:                                             ; preds = %bb.a
  %i.dm = icmp sgt i32 %i.n, 2
  br i1 %i.dm, label %bb.r, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

bb.r:                                             ; preds = %bb.q
  %.not.i.i664 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i664, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i665

.split.i665:                                      ; preds = %bb.r
  %i.dn = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i.i666 = icmp ult i16 %i.dn, 197
  br i1 %spec.select.i.i.i666, label %bb.s, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %bb.r
  %i.do = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.do, label %bb.t, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

bb.s:                                             ; preds = %.split.i665
  %i.dp = zext nneg i16 %.sroa.0.0.copyload.i to i64
  %i.dq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 -2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !345
  %i.dt = insertvalue { i16, ptr } poison, i16 %i.ds, 0
  %i.du = insertvalue { i16, ptr } %i.dt, ptr null, 1
  br label %_ZNK4llvm3EVT10isVectorOfES0_.exit

bb.t:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.dv = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #39
  br label %_ZNK4llvm3EVT10isVectorOfES0_.exit

_ZNK4llvm3EVT10isVectorOfES0_.exit:               ; preds = %bb.s, %bb.t
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.du, %bb.s ], [ %i.dv, %bb.t ] ; 2 uses
  %i.dw = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0
  %i.dx = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  %.not.i.i.i = icmp eq i16 %i.dw, 2
  %i.dy = icmp eq ptr %i.dx, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.dy, i1 false
  br i1 %.not4.i.i, label %bb.u, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

bb.u:                                             ; preds = %_ZNK4llvm3EVT10isVectorOfES0_.exit
  %i.dz = load i16, ptr %29, align 8, !tbaa !641  ; 2 uses
  %.not.i667 = icmp eq i16 %i.dz, 0
  br i1 %.not.i667, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit669, label %.split1252

.split1252:                                       ; preds = %bb.u
  %i.ea = add i16 %i.dz, -2
  %spec.select.i.i668 = icmp ult i16 %i.ea, 10
  br i1 %spec.select.i.i668, label %bb.v, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

_ZNK4llvm3EVT15isScalarIntegerEv.exit669:         ; preds = %bb.u
  %i.eb = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.eb, label %bb.v, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread

bb.v:                                             ; preds = %.split1252, %_ZNK4llvm3EVT15isScalarIntegerEv.exit669
  %.sroa.0406.0.copyload = load i16, ptr %28, align 8, !tbaa !345 ; 3 uses
  %.not.i670 = icmp eq i16 %.sroa.0406.0.copyload, 0
  br i1 %.not.i670, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.ed = zext i16 %.sroa.0406.0.copyload to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !337
  %.not1308 = icmp eq ptr %i.ef, null
  br i1 %.not1308, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %.sroa.2405.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #39
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !673
  store i64 %i.eh, ptr %40, align 8, !tbaa !673
  %i.ei = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !674
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !676
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 395
  %.val = load i8, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 411
  %.val641 = load i8, ptr %i.em, align 1
  %i.en = call fastcc { ptr, i32 } @_ZL26combineBitcastToBoolVectorN4llvm3EVTENS_7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetEj(i16 %.sroa.0406.0.copyload, ptr %.sroa.2405.0.copyload, ptr nonnull %.sroa.01179.0.copyload, i32 %.sroa.66.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %40, ptr noundef nonnull align 8 dereferenceable(920) %1, i8 %.val, i8 %.val641, i32 noundef 0) ; 2 uses
  %.fca.0.extract396 = extractvalue { ptr, i32 } %i.en, 0 ; 2 uses
  %.fca.1.extract397 = extractvalue { ptr, i32 } %i.en, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #39
  %.not1309 = icmp eq ptr %.fca.0.extract396, null
  br i1 %.not1309, label %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread, label %.critedge636

_ZNK4llvm3EVT10isVectorOfES0_.exit.thread:        ; preds = %bb.v, %.split.i665, %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split1252, %.thread, %bb.q, %bb.w, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm3EVT15isScalarIntegerEv.exit669, %_ZNK4llvm3EVT10isVectorOfES0_.exit
  %i.eo = load i16, ptr %28, align 8, !tbaa !641
  %.not.i.i671 = icmp eq i16 %i.eo, 5
  %i.ep = load ptr, ptr %i.e, align 8
  %i.eq = icmp eq ptr %i.ep, null
  %.not4.i672 = select i1 %.not.i.i671, i1 %i.eq, i1 false
  br i1 %.not4.i672, label %bb.x, label %.critedge

bb.x:                                             ; preds = %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread
  %i.er = load i16, ptr %29, align 8, !tbaa !641
  %.not.i.i673 = icmp eq i16 %i.er, 26
  %i.es = load ptr, ptr %i.j, align 8
  %i.et = icmp eq ptr %i.es, null
  %.not4.i674 = select i1 %.not.i.i673, i1 %i.et, i1 false
  br i1 %.not4.i674, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !342
  %i.ew = icmp sgt i32 %i.ev, 8
  br i1 %i.ew, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 411
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !364, !range !79, !noundef !80
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !468
  %i.fc = icmp eq i32 %i.fb, 167
  br i1 %i.fc, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !638 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !472
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !467
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !469
  %i.fk = zext i32 %i.fh to i64
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fk ; 2 uses
  %.sroa.0.0.copyload.i.i675 = load i16, ptr %i.fl, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i676 = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.21.0.copyload.i.i677 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i676, align 8, !tbaa !471
  %.not.i.i680 = icmp eq i16 %.sroa.0.0.copyload.i.i675, 27
  %i.fm = icmp eq ptr %.sroa.21.0.copyload.i.i677, null
  %.not4.i681 = select i1 %.not.i.i680, i1 %i.fm, i1 false
  br i1 %.not4.i681, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %.sroa.0393.0.copyload = load ptr, ptr %i.fn, align 8, !tbaa !465
  %.sroa.2394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %.sroa.2394.0.copyload = load i32, ptr %.sroa.2394.0..sroa_idx, align 8, !tbaa !240
  %i.fo = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0393.0.copyload, i32 %.sroa.2394.0.copyload) #39
  br i1 %i.fo, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #39
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !673
  store i64 %i.fq, ptr %41, align 8, !tbaa !673
  %i.fr = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !674
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !676
  %.sroa.0390.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2392.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.fu = load ptr, ptr %i.fd, align 8, !tbaa !638 ; 2 uses
  %.sroa.0387.0.copyload = load ptr, ptr %i.fu, align 8, !tbaa !465
  %.sroa.2388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.sroa.2388.0.copyload = load i32, ptr %.sroa.2388.0..sroa_idx, align 8, !tbaa !240
  %i.fv = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 6, ptr null, ptr %.sroa.0387.0.copyload, i32 %.sroa.2388.0.copyload) #39 ; 2 uses
  %.fca.0.extract383 = extractvalue { ptr, i32 } %i.fv, 0
  %.fca.1.extract384 = extractvalue { ptr, i32 } %i.fv, 1
  store ptr %.fca.0.extract383, ptr %42, align 8
  %.sroa.2386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.fca.1.extract384, ptr %.sroa.2386.0..sroa_idx, align 8
  %i.fw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %41, i16 %.sroa.0390.0.copyload, ptr %.sroa.2392.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42) #39 ; 2 uses
  %.fca.0.extract379 = extractvalue { ptr, i32 } %i.fw, 0
  %.fca.1.extract380 = extractvalue { ptr, i32 } %i.fw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #39
  br label %.critedge636

.critedge:                                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %_ZNK4llvm3EVT10isVectorOfES0_.exit.thread, %bb.ac
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 24 ; 11 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !468
  %i.fz = icmp eq i32 %i.fy, 849
  br i1 %i.fz, label %bb.ae, label %.critedge626

bb.ae:                                            ; preds = %.critedge
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.ga, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.critedge626, label %.lr.ph.i.i

bb.af:                                            ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.ge, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.gb, align 8, !tbaa !466 ; 2 uses
  %.not.i.i682 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i682, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.af
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.af ], [ %.sroa.018.022.i.i, %bb.ae ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.af ], [ 1, %bb.ae ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !467
  %i.ge = icmp ne i32 %i.gd, %.sroa.66.0.copyload ; 2 uses
  %i.gf = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.ge, i1 true, i1 %i.gf
  br i1 %cond.i.i, label %bb.af, label %.critedge626

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.af
  %i.gg = icmp eq i32 %.214.i.i, 0
  br i1 %i.gg, label %bb.ag, label %.critedge626

bb.ag:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.gh = load i16, ptr %28, align 8, !tbaa !641  ; 5 uses
  %.not.i683 = icmp eq i16 %i.gh, 0               ; 2 uses
  br i1 %.not.i683, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = add i16 %i.gh, -12
  %or.cond.i.i = icmp ult i16 %i.gi, 7
  %i.gj = add i16 %i.gh, -105
  %or.cond3.i.i = icmp ult i16 %i.gj, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.gk = add i16 %i.gh, -195
  %spec.select.i.i684 = icmp ult i16 %i.gk, 21
  %i.gl = or i1 %spec.select.i.i684, %or.cond4.i.i
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit

bb.ai:                                            ; preds = %bb.ag
  %i.gm = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %bb.ah, %bb.ai
  %i.gn = phi i1 [ %i.gl, %bb.ah ], [ %i.gm, %bb.ai ]
  %i.go = load i16, ptr %29, align 8, !tbaa !641  ; 7 uses
  %.not.i685 = icmp eq i16 %i.go, 0               ; 2 uses
  br i1 %.not.i685, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.gp = add i16 %i.go, -12
  %or.cond.i.i686 = icmp ult i16 %i.gp, 7
  %i.gq = add i16 %i.go, -105
  %or.cond3.i.i687 = icmp ult i16 %i.gq, 58
  %or.cond4.i.i688 = or i1 %or.cond.i.i686, %or.cond3.i.i687
  %i.gr = add i16 %i.go, -195
  %spec.select.i.i689 = icmp ult i16 %i.gr, 21
  %i.gs = or i1 %spec.select.i.i689, %or.cond4.i.i688
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit690

bb.ak:                                            ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.gt = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br label %_ZNK4llvm3EVT15isFloatingPointEv.exit690

_ZNK4llvm3EVT15isFloatingPointEv.exit690:         ; preds = %bb.aj, %bb.ak
  %i.gu = phi i1 [ %i.gs, %bb.aj ], [ %i.gt, %bb.ak ]
  %i.gv = xor i1 %i.gn, %i.gu
  br i1 %i.gv, label %bb.al, label %.critedge626

bb.al:                                            ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit690
  br i1 %.not.i683, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split1255

.split1255:                                       ; preds = %bb.al
  %i.gw = add i16 %i.gh, -19
  %spec.select.i.i692 = icmp ult i16 %i.gw, 197
  br i1 %spec.select.i.i692, label %bb.am, label %.critedge626

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.al
  %i.gx = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.gx, label %bb.am, label %.critedge626

bb.am:                                            ; preds = %.split1255, %_ZNK4llvm3EVT8isVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #39
  br i1 %.not.i685, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.am
  %i.gy = add i16 %i.go, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.gy, 197
  br i1 %spec.select.i.i.i.i, label %bb.an, label %bb.ap

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.am
  %i.gz = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.gz, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %.split.i.i
  %i.ha = zext nneg i16 %i.go to i64
  %i.hb = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -2
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !345
  %i.he = insertvalue { i16, ptr } poison, i16 %i.hd, 0
  %i.hf = insertvalue { i16, ptr } %i.he, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.ao:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.hg = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #39
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.ap:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %.sroa.31.0.copyload.i.i = load ptr, ptr %i.j, align 8, !tbaa !471
  %i.hh = insertvalue { i16, ptr } poison, i16 %i.go, 0
  %i.hi = insertvalue { i16, ptr } %i.hh, ptr %.sroa.31.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.ap, %bb.ao, %bb.an
  %.fca.1.insert.merged.i.i694 = phi { i16, ptr } [ %i.hi, %bb.ap ], [ %i.hf, %bb.an ], [ %i.hg, %bb.ao ] ; 2 uses
  %i.hj = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i694, 0 ; 3 uses
  store i16 %i.hj, ptr %26, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.hl = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i694, 1
  store ptr %i.hl, ptr %i.hk, align 8
  %.not.i.i695 = icmp eq i16 %i.hj, 0
  br i1 %.not.i.i695, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.hm = zext i16 %i.hj to i64
  %i.hn = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ho, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.ar:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.hp = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #40
  %i.hq = extractvalue { i64, i8 } %i.hp, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.aq, %bb.ar
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.aq ], [ %i.hq, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #39
  %i.hr = trunc i64 %.pn.i.i to i32               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #39
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 88
  %.sroa.0.0.copyload.i696 = load i16, ptr %i.hs, align 8, !tbaa !345 ; 5 uses
  %.sroa.21.0..sroa_idx.i697 = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 96
  %.sroa.21.0.copyload.i698 = load ptr, ptr %.sroa.21.0..sroa_idx.i697, align 8, !tbaa !471 ; 2 uses
  %.fca.0.insert.i699 = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i696, 0
  %.fca.1.insert.i700 = insertvalue { i16, ptr } %.fca.0.insert.i699, ptr %.sroa.21.0.copyload.i698, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i696, ptr %43, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %.sroa.21.0.copyload.i698, ptr %i.ht, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #39
  %.not.i.i.i701 = icmp eq i16 %.sroa.0.0.copyload.i696, 0
  br i1 %.not.i.i.i701, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i711, label %.split.i.i702

.split.i.i702:                                    ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.hu = add i16 %.sroa.0.0.copyload.i696, -19
  %spec.select.i.i.i.i703 = icmp ult i16 %i.hu, 197
  br i1 %spec.select.i.i.i.i703, label %bb.as, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i706

_ZNK4llvm3EVT8isVectorEv.exit.i.i711:             ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.hv = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %43) #40
  br i1 %i.hv, label %bb.at, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i706

bb.as:                                            ; preds = %.split.i.i702
  %i.hw = zext nneg i16 %.sroa.0.0.copyload.i696 to i64
  %i.hx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !345
  %i.ia = insertvalue { i16, ptr } poison, i16 %i.hz, 0
  %i.ib = insertvalue { i16, ptr } %i.ia, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i706

bb.at:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i711
  %i.ic = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %43) #39
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i706

_ZNK4llvm3EVT13getScalarTypeEv.exit.i706:         ; preds = %.split.i.i702, %_ZNK4llvm3EVT8isVectorEv.exit.i.i711, %bb.at, %bb.as
  %.fca.1.insert.merged.i.i707 = phi { i16, ptr } [ %i.ic, %bb.at ], [ %i.ib, %bb.as ], [ %.fca.1.insert.i700, %_ZNK4llvm3EVT8isVectorEv.exit.i.i711 ], [ %.fca.1.insert.i700, %.split.i.i702 ] ; 2 uses
  %i.id = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i707, 0 ; 3 uses
  store i16 %i.id, ptr %25, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.if = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i707, 1
  store ptr %i.if, ptr %i.ie, align 8
  %.not.i.i708 = icmp eq i16 %i.id, 0
  br i1 %.not.i.i708, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i706
  %i.ig = zext i16 %i.id to i64
  %i.ih = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ig
  %i.ii = getelementptr i8, ptr %i.ih, i64 -16
  %.sroa.0.0.copyload.i.i.i709 = load i64, ptr %i.ii, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit712

bb.av:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i706
  %i.ij = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #40
  %i.ik = extractvalue { i64, i8 } %i.ij, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit712

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit712:     ; preds = %bb.au, %bb.av
  %.pn.i.i710 = phi i64 [ %.sroa.0.0.copyload.i.i.i709, %bb.au ], [ %i.ik, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #39
  %i.il = trunc i64 %.pn.i.i710 to i32            ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #39
  %i.im = icmp ult i32 %i.il, 32
  br i1 %i.im, label %.critedge626, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit712
  %i.in = load i16, ptr %28, align 8, !tbaa !641  ; 7 uses
  %.not.i713 = icmp eq i16 %i.in, 0               ; 2 uses
  br i1 %.not.i713, label %_ZNK4llvm3EVT15isFloatingPointEv.exit718, label %.split1256

.split1256:                                       ; preds = %bb.aw
  %i.io = add i16 %i.in, -12
  %or.cond.i.i714 = icmp ult i16 %i.io, 7
  %i.ip = add i16 %i.in, -105
  %or.cond3.i.i715 = icmp ult i16 %i.ip, 58
  %or.cond4.i.i716 = or i1 %or.cond.i.i714, %or.cond3.i.i715
  %i.iq = add i16 %i.in, -195
  %spec.select.i.i717 = icmp ult i16 %i.iq, 21
  %i.ir = or i1 %spec.select.i.i717, %or.cond4.i.i716
  br i1 %i.ir, label %bb.ax, label %bb.bc

_ZNK4llvm3EVT15isFloatingPointEv.exit718:         ; preds = %bb.aw
  %i.is = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.is, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %.split1256, %_ZNK4llvm3EVT15isFloatingPointEv.exit718
  %i.it = call i32 @llvm.fshl.i32(i32 %i.il, i32 %i.il, i32 28)
  switch i32 %i.it, label %.unreachabledefault.i [
    i32 1, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit
    i32 2, label %bb.ay
    i32 4, label %bb.az
    i32 5, label %bb.ba
    i32 8, label %bb.bb
  ]

bb.ay:                                            ; preds = %bb.ax
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.az:                                            ; preds = %bb.ax
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.ba:                                            ; preds = %bb.ax
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

.unreachabledefault.i:                            ; preds = %bb.ax
  unreachable

bb.bb:                                            ; preds = %bb.ax
  %i.iu = icmp eq i32 %i.il, 128
  call void @llvm.assume(i1 %i.iu)
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

bb.bc:                                            ; preds = %.split1256, %_ZNK4llvm3EVT15isFloatingPointEv.exit718
  %i.iv = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.il)
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %.split.i720, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

.split.i720:                                      ; preds = %bb.bc
  %i.ix = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.il, i1 true) ; 2 uses
  %i.iy = icmp samesign ult i32 %i.ix, 10
  br i1 %i.iy, label %switch.lookup.i, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

switch.lookup.i:                                  ; preds = %.split.i720
  %switch.idx.cast.i = trunc nuw nsw i32 %i.ix to i16
  %switch.offset.i = add nuw nsw i16 %switch.idx.cast.i, 2
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit

_ZN4llvm3MVT18getFloatingPointVTEj.exit:          ; preds = %switch.lookup.i, %.split.i720, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.sroa.0368.0 = phi i16 [ 13, %bb.ax ], [ 17, %bb.bb ], [ 14, %bb.ay ], [ 15, %bb.az ], [ 16, %bb.ba ], [ %switch.offset.i, %switch.lookup.i ], [ 0, %.split.i720 ], [ 0, %bb.bc ]
  br i1 %.not.i713, label %_ZNK4llvm3EVT15isFloatingPointEv.exit726, label %.split1257

.split1257:                                       ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit
  %i.iz = add i16 %i.in, -12
  %or.cond.i.i722 = icmp ult i16 %i.iz, 7
  %i.ja = add i16 %i.in, -105
  %or.cond3.i.i723 = icmp ult i16 %i.ja, 58
  %or.cond4.i.i724 = or i1 %or.cond.i.i722, %or.cond3.i.i723
  %i.jb = add i16 %i.in, -195
  %spec.select.i.i725 = icmp ult i16 %i.jb, 21
  %i.jc = or i1 %spec.select.i.i725, %or.cond4.i.i724
  br i1 %i.jc, label %bb.bd, label %bb.bi

_ZNK4llvm3EVT15isFloatingPointEv.exit726:         ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit
  %i.jd = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.jd, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %.split1257, %_ZNK4llvm3EVT15isFloatingPointEv.exit726
  %i.je = call i32 @llvm.fshl.i32(i32 %i.hr, i32 %i.hr, i32 28)
  switch i32 %i.je, label %.unreachabledefault.i728 [
    i32 1, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729
    i32 2, label %bb.be
    i32 4, label %bb.bf
    i32 5, label %bb.bg
    i32 8, label %bb.bh
  ]

bb.be:                                            ; preds = %bb.bd
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729

bb.bf:                                            ; preds = %bb.bd
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729

bb.bg:                                            ; preds = %bb.bd
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729

.unreachabledefault.i728:                         ; preds = %bb.bd
  unreachable

bb.bh:                                            ; preds = %bb.bd
  %i.jf = icmp eq i32 %i.hr, 128
  call void @llvm.assume(i1 %i.jf)
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729

bb.bi:                                            ; preds = %.split1257, %_ZNK4llvm3EVT15isFloatingPointEv.exit726
  %i.jg = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hr)
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %.split.i731, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729

.split.i731:                                      ; preds = %bb.bi
  %i.ji = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hr, i1 true) ; 2 uses
  %i.jj = icmp samesign ult i32 %i.ji, 10
  br i1 %i.jj, label %switch.lookup.i732, label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729

switch.lookup.i732:                               ; preds = %.split.i731
  %switch.idx.cast.i733 = trunc nuw nsw i32 %i.ji to i16
  %switch.offset.i734 = add nuw nsw i16 %switch.idx.cast.i733, 2
  br label %_ZN4llvm3MVT18getFloatingPointVTEj.exit729

_ZN4llvm3MVT18getFloatingPointVTEj.exit729:       ; preds = %switch.lookup.i732, %.split.i731, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd
  %.sroa.0366.0 = phi i16 [ 13, %bb.bd ], [ 17, %bb.bh ], [ 14, %bb.be ], [ 15, %bb.bf ], [ 16, %bb.bg ], [ %switch.offset.i734, %switch.lookup.i732 ], [ 0, %.split.i731 ], [ 0, %bb.bi ]
  %i.jk = load i16, ptr %29, align 8, !tbaa !641  ; 3 uses
  %.not.i.i736 = icmp eq i16 %i.jk, 0
  br i1 %.not.i.i736, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i740, label %.split.i737

.split.i737:                                      ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit729
  %i.jl = add i16 %i.jk, -163
  %spec.select.i.i.i738 = icmp ult i16 %i.jl, 53
  br i1 %spec.select.i.i.i738, label %bb.bj, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i739

_ZNK4llvm3EVT16isScalableVectorEv.exit.i740:      ; preds = %_ZN4llvm3MVT18getFloatingPointVTEj.exit729
  %i.jm = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.jm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i740, %.split.i737
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i739:  ; preds = %.split.i737
  %i.jn = zext i16 %i.jk to i64
  %i.jo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 -2
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !339
  %i.jr = zext i16 %i.jq to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741

bb.bk:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i740
  %i.js = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741

_ZNK4llvm3EVT20getVectorNumElementsEv.exit741:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i739, %bb.bk
  %i.jt = phi i32 [ %i.jr, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i739 ], [ %i.js, %bb.bk ]
  %i.ju = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0366.0, i32 noundef %i.jt)
  %i.jv = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %i.ju, ptr null, i16 1, ptr null) #39 ; 2 uses
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  %i.jx = extractvalue { ptr, i32 } %i.jv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #39
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !638 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %44, ptr noundef nonnull align 8 dereferenceable(12) %i.jz, i64 12, i1 false), !tbaa.struct !683
  %i.ka = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.kb = load i32, ptr %i.fx, align 8, !tbaa !468
  switch i32 %i.kb, label %bb.bm [
    i32 317, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 357, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 491, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 385, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 493, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 492, label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit
    i32 386, label %bb.bl
    i32 387, label %bb.bl
    i32 524, label %bb.bl
  ]

bb.bl:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741
  br label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit

bb.bm:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741
  br label %_ZNK4llvm9MemSDNode10getBasePtrEv.exit

_ZNK4llvm9MemSDNode10getBasePtrEv.exit:           ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741, %bb.bl, %bb.bm
  %.sink.i = phi i64 [ 40, %bb.bm ], [ 120, %bb.bl ], [ 80, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741 ], [ 80, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741 ], [ 80, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741 ], [ 80, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741 ], [ 80, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741 ], [ 80, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit741 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sink.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ka, ptr noundef nonnull align 8 dereferenceable(12) %i.kc, i64 12, i1 false), !tbaa.struct !683
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #39
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !673
  store i64 %i.ke, ptr %45, align 8, !tbaa !673
  %i.kf = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !674
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !676
  store ptr %44, ptr %46, align 8, !tbaa !688
  %i.ki = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 2, ptr %i.ki, align 8, !tbaa !689
  store i16 %.sroa.0368.0, ptr %47, align 8, !tbaa !345
  %i.kj = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr null, ptr %i.kj, align 8, !tbaa !705
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.kk, align 8
  %i.kl = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 849, ptr noundef nonnull align 8 dereferenceable(12) %45, ptr %i.jw, i32 %i.jx, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %46, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %47, ptr noundef %i.km) #39 ; 2 uses
  %.fca.0.extract352 = extractvalue { ptr, i32 } %i.kn, 0 ; 2 uses
  %.fca.1.extract353 = extractvalue { ptr, i32 } %i.kn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #39
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.01179.0.copyload, i32 1, ptr %.fca.0.extract352, i32 1) #39
  %.sroa.0343.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2345.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.ko = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0343.0.copyload, ptr %.sroa.2345.0.copyload, ptr %.fca.0.extract352, i32 %.fca.1.extract353) #39 ; 2 uses
  %.fca.0.extract336 = extractvalue { ptr, i32 } %i.ko, 0
  %.fca.1.extract337 = extractvalue { ptr, i32 } %i.ko, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #39
  br label %.critedge636

.critedge626:                                     ; preds = %.lr.ph.i.i, %bb.ae, %.split1255, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit712, %_ZNK4llvm3EVT8isVectorEv.exit, %_ZNK4llvm3EVT15isFloatingPointEv.exit690, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %.critedge
  %i.kp = load i16, ptr %28, align 8, !tbaa !641
  %.not.i.i744 = icmp eq i16 %i.kp, 13
  %i.kq = load ptr, ptr %i.e, align 8
  %i.kr = icmp eq ptr %i.kq, null
  %.not4.i745 = select i1 %.not.i.i744, i1 %i.kr, i1 false
  br i1 %.not4.i745, label %bb.bn, label %.critedge11

bb.bn:                                            ; preds = %.critedge626
  %i.ks = load i16, ptr %29, align 8, !tbaa !641
  %.not.i.i746 = icmp eq i16 %i.ks, 6
  %i.kt = load ptr, ptr %i.j, align 8
  %i.ku = icmp eq ptr %i.kt, null
  %.not4.i747 = select i1 %.not.i.i746, i1 %i.ku, i1 false
  br i1 %.not4.i747, label %bb.bo, label %.critedge11

bb.bo:                                            ; preds = %bb.bn
  %i.kv = call { ptr, i32 } @_ZN4llvm20peekThroughTruncatesENS_7SDValueE(ptr %.sroa.01179.0.copyload, i32 %.sroa.66.0.copyload) #39
  %.fca.0.extract329 = extractvalue { ptr, i32 } %i.kv, 0 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.fca.0.extract329, i64 24
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !468
  %i.ky = icmp eq i32 %i.kx, 164
  br i1 %i.ky, label %bb.bp, label %.critedge11

bb.bp:                                            ; preds = %bb.bo
  %i.kz = getelementptr inbounds nuw i8, ptr %.fca.0.extract329, i64 40 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !638 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #39
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !472
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !467
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !469
  %i.lg = zext i32 %i.ld to i64
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.lg ; 2 uses
  %.sroa.0.0.copyload.i.i.i748 = load i16, ptr %i.lh, align 8, !tbaa !345 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i.i748, ptr %24, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.li, align 8
  %.not.i.i749 = icmp eq i16 %.sroa.0.0.copyload.i.i.i748, 0
  br i1 %.not.i.i749, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lj = zext i16 %.sroa.0.0.copyload.i.i.i748 to i64
  %i.lk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.lj ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.ll, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.lk, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.br:                                            ; preds = %bb.bp
  %i.lm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %24) #40
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.bq, %bb.br
  %.pn.i.i750 = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.bq ], [ %i.lm, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #39
  %.fca.1.extract326 = extractvalue { i64, i8 } %.pn.i.i750, 1
  %i.ln = trunc nuw i8 %.fca.1.extract326 to i1
  br i1 %i.ln, label %bb.bs, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.bs:                                            ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.85) #41
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract325 = extractvalue { i64, i8 } %.pn.i.i750, 0
  %i.lo = icmp eq i64 %.fca.0.extract325, 128
  br i1 %i.lo, label %bb.bt, label %.critedge11

bb.bt:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  %.sroa.0322.0.copyload = load ptr, ptr %i.lp, align 8, !tbaa !465
  %.sroa.2323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  %.sroa.2323.0.copyload = load i32, ptr %.sroa.2323.0..sroa_idx, align 8, !tbaa !240
  %i.lq = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0322.0.copyload, i32 %.sroa.2323.0.copyload) #39
  br i1 %i.lq, label %.critedge628, label %.critedge11

.critedge628:                                     ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #39
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !673
  store i64 %i.ls, ptr %48, align 8, !tbaa !673
  %i.lt = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !674
  store i32 %i.lv, ptr %i.lt, align 8, !tbaa !676
  %.sroa.0319.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2321.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.lw = load ptr, ptr %i.kz, align 8, !tbaa !638 ; 2 uses
  %.sroa.0316.0.copyload = load ptr, ptr %i.lw, align 8, !tbaa !465
  %.sroa.2317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.sroa.2317.0.copyload = load i32, ptr %.sroa.2317.0..sroa_idx, align 8, !tbaa !240
  %i.lx = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 112, ptr null, ptr %.sroa.0316.0.copyload, i32 %.sroa.2317.0.copyload) #39 ; 2 uses
  %.fca.0.extract312 = extractvalue { ptr, i32 } %i.lx, 0
  %.fca.1.extract313 = extractvalue { ptr, i32 } %i.lx, 1
  store ptr %.fca.0.extract312, ptr %49, align 8
  %.sroa.2315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 %.fca.1.extract313, ptr %.sroa.2315.0..sroa_idx, align 8
  %i.ly = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %48, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract308 = extractvalue { ptr, i32 } %i.ly, 0
  %.fca.1.extract309 = extractvalue { ptr, i32 } %i.ly, 1
  store ptr %.fca.0.extract308, ptr %50, align 8
  %.sroa.2311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.fca.1.extract309, ptr %.sroa.2311.0..sroa_idx, align 8
  %i.lz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %48, i16 %.sroa.0319.0.copyload, ptr %.sroa.2321.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #39 ; 2 uses
  %.fca.0.extract304 = extractvalue { ptr, i32 } %i.lz, 0
  %.fca.1.extract305 = extractvalue { ptr, i32 } %i.lz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #39
  br label %.critedge636

.critedge11:                                      ; preds = %bb.bt, %bb.bo, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.bn, %.critedge626
  %i.ma = load i16, ptr %28, align 8, !tbaa !641
  %.not.i.i751 = icmp eq i16 %i.ma, 248
  %i.mb = load ptr, ptr %i.e, align 8
  %i.mc = icmp eq ptr %i.mb, null
  %.not4.i752 = select i1 %.not.i.i751, i1 %i.mc, i1 false
  br i1 %.not4.i752, label %bb.bu, label %bb.dp

bb.bu:                                            ; preds = %.critedge11
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #39
  %i.md = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  store i32 1, ptr %i.md, align 8, !tbaa !643
  store i64 0, ptr %51, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #39
  %i.me = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 3 uses
  store ptr %i.me, ptr %52, align 8, !tbaa !83
  %i.mf = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  store i32 0, ptr %i.mf, align 8, !tbaa !633
  %i.mg = getelementptr inbounds nuw i8, ptr %52, i64 12
  store i32 1, ptr %i.mg, align 4, !tbaa !634
  %i.mh = call fastcc noundef zeroext i1 @_ZL29getTargetConstantBitsFromNodeN4llvm7SDValueEjRNS_5APIntERNS_15SmallVectorImplIS1_EEbb(ptr %.sroa.01179.0.copyload, i32 %.sroa.66.0.copyload, i32 noundef 64, ptr noundef nonnull align 8 dereferenceable(12) %51, ptr noundef nonnull align 8 dereferenceable(16) %52, i1 noundef zeroext true, i1 noundef zeroext true)
  br i1 %i.mh, label %bb.bv, label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #39
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 72
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !673
  store i64 %i.mj, ptr %53, align 8, !tbaa !673
  %i.mk = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 68
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !674
  store i32 %i.mm, ptr %i.mk, align 8, !tbaa !676
  %i.mn = load ptr, ptr %52, align 8, !tbaa !83   ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !643 ; 2 uses
  %i.mq = icmp ult i32 %i.mp, 65
  br i1 %i.mq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.neg.i = add nsw i32 %i.mp, -64
  %i.mr = load i64, ptr %i.mn, align 8, !tbaa !357
  %i.ms = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mr, i1 false)
  %i.mt = trunc nuw nsw i64 %i.ms to i32
  %i.mu = add nsw i32 %.neg.i, %i.mt
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

bb.bx:                                            ; preds = %bb.bv
  %i.mv = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.mn) #40
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

_ZNK4llvm5APInt11countl_zeroEv.exit:              ; preds = %bb.bw, %bb.bx
  %.0.i = phi i32 [ %i.mu, %bb.bw ], [ %i.mv, %bb.bx ]
  %i.mw = icmp ugt i32 %.0.i, 31
  br i1 %i.mw, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit
  %.sroa.0295.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2297.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #39
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %55, ptr noundef nonnull align 8 dereferenceable(12) %i.mn, i32 noundef 32) #39
  %i.mx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %55, ptr noundef nonnull align 8 dereferenceable(12) %53, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract291 = extractvalue { ptr, i32 } %i.mx, 0
  %.fca.1.extract292 = extractvalue { ptr, i32 } %i.mx, 1
  store ptr %.fca.0.extract291, ptr %54, align 8
  %.sroa.2294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i32 %.fca.1.extract292, ptr %.sroa.2294.0..sroa_idx, align 8
  %i.my = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 740, ptr noundef nonnull align 8 dereferenceable(12) %53, i16 %.sroa.0295.0.copyload, ptr %.sroa.2297.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %54) #39
  %i.mz = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !643
  %i.nb = icmp ugt i32 %i.na, 64
  br i1 %i.nb, label %bb.bz, label %_ZN4llvm5APIntD2Ev.exit

bb.bz:                                            ; preds = %bb.by
  %i.nc = load ptr, ptr %55, align 8, !tbaa !357  ; 2 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %_ZN4llvm5APIntD2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.nc) #42
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.by, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #39
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #39
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr noundef nonnull align 8 dereferenceable(12) %i.mn) #39
  %.sroa.0284.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2286.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.ne = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPERKNS_7APFloatERKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(12) %53, i16 15, ptr null, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract278 = extractvalue { ptr, i32 } %i.ne, 0
  %.fca.1.extract279 = extractvalue { ptr, i32 } %i.ne, 1
  %i.nf = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0284.0.copyload, ptr %.sroa.2286.0.copyload, ptr %.fca.0.extract278, i32 %.fca.1.extract279) #39
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %56) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #39
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZN4llvm5APIntD2Ev.exit
  %.pn1317 = phi { ptr, i32 } [ %i.my, %_ZN4llvm5APIntD2Ev.exit ], [ %i.nf, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #39
  br label %.critedge634

bb.cd:                                            ; preds = %bb.bu
  %i.ng = load i32, ptr %i.fx, align 8, !tbaa !468 ; 2 uses
  %i.nh = icmp eq i32 %i.ng, 162
  br i1 %i.nh, label %bb.ce, label %.critedge630.thread

bb.ce:                                            ; preds = %bb.cd
  %i.ni = load i16, ptr %29, align 8, !tbaa !641  ; 4 uses
  %.not.i.i753 = icmp eq i16 %i.ni, 71
  %i.nj = load ptr, ptr %i.j, align 8
  %i.nk = icmp eq ptr %i.nj, null
  %.not.i.i755 = icmp eq i16 %i.ni, 58
  %i.nl = or i1 %.not.i.i753, %.not.i.i755
  %.not.i.i757 = icmp eq i16 %i.ni, 47
  %i.nm = or i1 %.not.i.i757, %i.nl
  %or.cond1301 = select i1 %i.nm, i1 %i.nk, i1 false
  br i1 %or.cond1301, label %_ZNK4llvm3EVT13getScalarTypeEv.exit, label %.critedge630.thread1408

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %bb.ce
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40 ; 3 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !638 ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !472
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !467
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 48
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !469
  %i.nu = zext i32 %i.nr to i64
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %i.nu ; 2 uses
  %.sroa.0.0.copyload.i.i759 = load i16, ptr %i.nv, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i760 = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %.sroa.21.0.copyload.i.i761 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i760, align 8, !tbaa !471
  %i.nw = zext nneg i16 %i.ni to i64              ; 2 uses
  %i.nx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 -2
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !345
  %.not.i.i769 = icmp eq i16 %.sroa.0.0.copyload.i.i759, %i.nz
  %i.oa = icmp eq ptr %.sroa.21.0.copyload.i.i761, null
  %.not4.i770 = select i1 %.not.i.i769, i1 %i.oa, i1 false
  br i1 %.not4.i770, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit776, label %.critedge630.thread1408

_ZNK4llvm3EVT20getVectorNumElementsEv.exit776:    ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.ob = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.nw
  %i.oc = getelementptr i8, ptr %i.ob, i64 -2
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !339 ; 2 uses
  %i.oe = zext i16 %i.od to i32                   ; 2 uses
  %.not1331 = icmp eq i16 %i.od, 1
  br i1 %.not1331, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit776
  %i.of = lshr i32 %i.oe, 1
  %i.og = zext nneg i32 %i.of to i64
  br label %bb.cf

._crit_edge:                                      ; preds = %bb.cf
  br i1 %i.oq, label %._crit_edge.thread, label %.critedge630

bb.cf:                                            ; preds = %.lr.ph, %bb.cf
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.cf ] ; 3 uses
  %.06091334 = phi i1 [ true, %.lr.ph ], [ %i.oo, %bb.cf ]
  %.06101333 = phi i1 [ true, %.lr.ph ], [ %i.oq, %bb.cf ]
  %.06111332 = phi i32 [ 1, %.lr.ph ], [ %i.or, %bb.cf ]
  %i.oh = load ptr, ptr %i.nn, align 8, !tbaa !638
  %i.oi = getelementptr inbounds nuw [40 x i8], ptr %i.oh, i64 %indvars.iv ; 2 uses
  %.sroa.01098.0.copyload = load ptr, ptr %i.oi, align 8, !tbaa !465 ; 2 uses
  %.sroa.51099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %.sroa.51099.0.copyload = load i32, ptr %.sroa.51099.0..sroa_idx, align 8, !tbaa !240
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.01098.0.copyload, i64 24
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !468
  %i.ol = add i32 %i.ok, -53
  %spec.select.i.i777 = icmp ult i32 %i.ol, 2
  %i.om = icmp samesign uge i64 %indvars.iv, %i.og
  %i.on = or i1 %i.om, %spec.select.i.i777
  %i.oo = and i1 %.06091334, %i.on                ; 2 uses
  %i.op = call noundef zeroext i1 @_ZN4llvm21isNullConstantOrUndefENS_7SDValueE(ptr %.sroa.01098.0.copyload, i32 %.sroa.51099.0.copyload) #39
  %i.oq = and i1 %.06101333, %i.op                ; 2 uses
  %i.or = add i32 %.06111332, 1                   ; 2 uses
  %.not = icmp eq i32 %i.or, %i.oe
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %._crit_edge, label %bb.cf, !llvm.loop !3518

._crit_edge.thread:                               ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit776, %._crit_edge
  %.0609.lcssa1407 = phi i1 [ %i.oo, %._crit_edge ], [ true, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit776 ]
  %i.os = load ptr, ptr %i.nn, align 8, !tbaa !638 ; 3 uses
  %.sroa.0251.0.copyload = load ptr, ptr %i.os, align 8, !tbaa !465 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #39
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0251.0.copyload, i64 72
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !673
  store i64 %i.ou, ptr %57, align 8, !tbaa !673
  %i.ov = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0251.0.copyload, i64 68
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !674
  store i32 %i.ox, ptr %i.ov, align 8, !tbaa !676
  br i1 %.0609.lcssa1407, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %._crit_edge.thread
  %i.oy = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.0251.0.copyload, i32 %.sroa.8.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %57, i16 7, ptr null) #39
  br label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.thread
  %i.oz = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.0251.0.copyload, i32 %.sroa.8.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %57, i16 7, ptr null) #39
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn = phi { ptr, i32 } [ %i.oy, %bb.cg ], [ %i.oz, %bb.ch ] ; 2 uses
  %.sroa.5246.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0245.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.0228.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2230.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  store ptr %.sroa.0245.0, ptr %58, align 8, !tbaa !465
  %.sroa.8.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i32 %.sroa.5246.0, ptr %.sroa.8.0..sroa_idx253, align 8, !tbaa !240
  %.sroa.12.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %58, i64 12
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx255, align 4
  %i.pa = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 740, ptr noundef nonnull align 8 dereferenceable(12) %57, i16 %.sroa.0228.0.copyload, ptr %.sroa.2230.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %58) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #39
  br label %.critedge634

.critedge630:                                     ; preds = %._crit_edge
  %.pr.pre = load i32, ptr %i.fx, align 8, !tbaa !468 ; 2 uses
  %i.pb = icmp eq i32 %.pr.pre, 162
  br i1 %i.pb, label %.critedge630.thread1408, label %.critedge630.thread

.critedge630.thread1408:                          ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit, %bb.ce, %.critedge630
  %78 = load <1 x i16>, ptr %29, align 8
  %i.pc = load ptr, ptr %i.j, align 8
  %i.pd = icmp eq ptr %i.pc, null
  %i.pe = shufflevector <1 x i16> %78, <1 x i16> poison, <4 x i32> zeroinitializer
  %i.pf = icmp eq <4 x i16> %i.pe, <i16 134, i16 71, i16 58, i16 47>
  %i.pg = bitcast <4 x i1> %i.pf to i4
  %i.ph = icmp ne i4 %i.pg, 0
  %or.cond1304 = select i1 %i.ph, i1 %i.pd, i1 false
  br i1 %or.cond1304, label %bb.cj, label %.critedge632

bb.cj:                                            ; preds = %.critedge630.thread1408
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 72
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !673
  store i64 %i.pj, ptr %14, align 8, !tbaa !673
  %i.pk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 68
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !674
  store i32 %i.pm, ptr %i.pk, align 8, !tbaa !676
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 64
  %i.po = load i16, ptr %i.pn, align 8, !tbaa !677 ; 8 uses
  %i.pp = zext i16 %i.po to i32
  %i.pq = call { ptr, i32 } @_ZNK4llvm17BuildVectorSDNode13getSplatValueEPNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.01179.0.copyload, ptr noundef null) #39 ; 2 uses
  %.fca.0.extract75.i = extractvalue { ptr, i32 } %i.pq, 0 ; 3 uses
  %.fca.1.extract76.i = extractvalue { ptr, i32 } %i.pq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  store ptr %1, ptr %15, align 8, !tbaa !738
  %i.pr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %3, ptr %i.pr, align 8, !tbaa !85
  %i.ps = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %14, ptr %i.ps, align 8, !tbaa !740
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  %i.pt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.pt, ptr %16, align 8, !tbaa !83
  %i.pu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 12 uses
  store i32 0, ptr %i.pu, align 8, !tbaa !633
  %i.pv = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 4 uses
  store i32 8, ptr %i.pv, align 4, !tbaa !634
  %i.pw = load ptr, ptr %i.k, align 8, !tbaa !684 ; 6 uses
  %.not132.i = icmp eq ptr %.fca.0.extract75.i, null
  br i1 %.not132.i, label %.preheader.i, label %bb.ck

.preheader.i:                                     ; preds = %bb.cj
  %.not133.i = icmp eq i16 %i.po, 0
  br i1 %.not133.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40
  %i.py = zext i16 %i.po to i64
  br label %bb.cs

bb.ck:                                            ; preds = %bb.cj
  %i.pz = getelementptr inbounds nuw i8, ptr %.fca.0.extract75.i, i64 24
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !468
  %i.qb = add i32 %i.qa, -53
  %spec.select.i.i.i786 = icmp ult i32 %i.qb, 2
  br i1 %spec.select.i.i.i786, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.qc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 248, ptr null) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %bb.db

bb.cm:                                            ; preds = %bb.ck
  %i.qd = call fastcc { ptr, i32 } @"_ZZL20createMMXBuildVectorPN4llvm17BuildVectorSDNodeERNS_12SelectionDAGERKNS_12X86SubtargetEENK3$_0clENS_7SDValueE"(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr nonnull %.fca.0.extract75.i, i32 %.fca.1.extract76.i) ; 2 uses
  %.fca.0.extract59.i = extractvalue { ptr, i32 } %i.qd, 0 ; 12 uses
  %.fca.1.extract60.i = extractvalue { ptr, i32 } %i.qd, 1 ; 12 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !342
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.qh = icmp eq i16 %i.po, 8
  br i1 %i.qh, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !464
  %i.qk = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.qj) #39
  %i.ql = load ptr, ptr %i.pw, align 8, !tbaa !72
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = call i16 %i.qn(ptr noundef nonnull align 8 dereferenceable(518435) %i.pw, ptr noundef nonnull align 8 dereferenceable(912) %i.qk, i32 noundef 0) #39, !inline_history !3519
  %i.qp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 15968, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %i.qo, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract51.i = extractvalue { ptr, i32 } %i.qp, 0
  %.fca.1.extract52.i = extractvalue { ptr, i32 } %i.qp, 1
  store ptr %.fca.0.extract51.i, ptr %17, align 8
  %.sroa.254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract52.i, ptr %.sroa.254.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract59.i, ptr %18, align 8, !tbaa !465
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract60.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !240
  store ptr %.fca.0.extract59.i, ptr %19, align 8, !tbaa !465
  %.sroa.12.0..sroa_idx124.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract60.i, ptr %.sroa.12.0..sroa_idx124.i, align 8, !tbaa !240
  %i.qq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 248, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #39 ; 2 uses
  %.fca.0.extract47.i = extractvalue { ptr, i32 } %i.qq, 0
  %.fca.1.extract48.i = extractvalue { ptr, i32 } %i.qq, 1
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.0120.0.i = phi ptr [ %.fca.0.extract47.i, %bb.co ], [ %.fca.0.extract59.i, %bb.cn ]
  %.sroa.12.0.i = phi i32 [ %.fca.1.extract48.i, %bb.co ], [ %.fca.1.extract60.i, %bb.cn ]
  %i.qr = icmp ugt i16 %i.po, 2
  %i.qs = select i1 %i.qr, i64 0, i64 68
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !464
  %i.qv = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.qu) #39
  %i.qw = load ptr, ptr %i.pw, align 8, !tbaa !72
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = call i16 %i.qy(ptr noundef nonnull align 8 dereferenceable(518435) %i.pw, ptr noundef nonnull align 8 dereferenceable(912) %i.qv, i32 noundef 0) #39, !inline_history !3519
  %i.ra = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 16043, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %i.qz, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract41.i = extractvalue { ptr, i32 } %i.ra, 0
  %.fca.1.extract42.i = extractvalue { ptr, i32 } %i.ra, 1
  store ptr %.fca.0.extract41.i, ptr %20, align 8
  %.sroa.244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract42.i, ptr %.sroa.244.0..sroa_idx.i, align 8
  store ptr %.sroa.0120.0.i, ptr %21, align 8, !tbaa !465
  %.sroa.12.0..sroa_idx126.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.sroa.12.0.i, ptr %.sroa.12.0..sroa_idx126.i, align 8, !tbaa !240
  %i.rb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.qs, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract37.i = extractvalue { ptr, i32 } %i.rb, 0
  %.fca.1.extract38.i = extractvalue { ptr, i32 } %i.rb, 1
  store ptr %.fca.0.extract37.i, ptr %22, align 8
  %.sroa.240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract38.i, ptr %.sroa.240.0..sroa_idx.i, align 8
  %i.rc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 248, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #39
  br label %bb.db

bb.cq:                                            ; preds = %bb.cm
  %i.rd = zext i16 %i.po to i64                   ; 4 uses
  %i.re = load i32, ptr %i.pu, align 8, !tbaa !633 ; 2 uses
  %i.rf = zext i32 %i.re to i64                   ; 2 uses
  %i.rg = add nuw nsw i64 %i.rf, %i.rd            ; 2 uses
  %i.rh = load i32, ptr %i.pv, align 4, !tbaa !634
  %i.ri = zext i32 %i.rh to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.rg, %i.ri
  br i1 %.not.i.i.i.i, label %bb.cr, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i.i, !prof !648

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.pt, i64 noundef %i.rg, i64 noundef 16) #39
  %.pre.i.i = load i32, ptr %i.pu, align 8, !tbaa !633 ; 2 uses
  %.pre5.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i.i: ; preds = %bb.cr, %bb.cq
  %.pre-phi.i.i = phi i64 [ %i.rf, %bb.cq ], [ %.pre5.i.i, %bb.cr ]
  %i.rj = phi i32 [ %i.re, %bb.cq ], [ %.pre.i.i, %bb.cr ]
  %.not7.i.i.i.i.i = icmp eq i16 %i.po, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i.i
  %i.rk = load ptr, ptr %16, align 8, !tbaa !83
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.rk, i64 %.pre-phi.i.i ; 2 uses
  %xtraiter = and i64 %i.rd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i787.prol.loopexit, label %.lr.ph.i.i.i.i.i787.prol

.lr.ph.i.i.i.i.i787.prol:                         ; preds = %.lr.ph.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i787.prol
  %.09.i.i.i.i.i788.prol = phi ptr [ %i.rn, %.lr.ph.i.i.i.i.i787.prol ], [ %i.rl, %.lr.ph.i.i.i.preheader.i.i ] ; 3 uses
  %.068.i.i.i.i.i789.prol = phi i64 [ %i.rm, %.lr.ph.i.i.i.i.i787.prol ], [ %i.rd, %.lr.ph.i.i.i.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i787.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i ]
  store ptr %.fca.0.extract59.i, ptr %.09.i.i.i.i.i788.prol, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788.prol, i64 8
  store i32 %.fca.1.extract60.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.prol, align 8, !tbaa !240
  %i.rm = add nsw i64 %.068.i.i.i.i.i789.prol, -1 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i787.prol.loopexit, label %.lr.ph.i.i.i.i.i787.prol, !llvm.loop !3520

.lr.ph.i.i.i.i.i787.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i787.prol, %.lr.ph.i.i.i.preheader.i.i
  %.09.i.i.i.i.i788.unr = phi ptr [ %i.rl, %.lr.ph.i.i.i.preheader.i.i ], [ %i.rn, %.lr.ph.i.i.i.i.i787.prol ]
  %.068.i.i.i.i.i789.unr = phi i64 [ %i.rd, %.lr.ph.i.i.i.preheader.i.i ], [ %i.rm, %.lr.ph.i.i.i.i.i787.prol ]
  %i.ro = icmp ult i16 %i.po, 8
  br i1 %i.ro, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i787

.lr.ph.i.i.i.i.i787:                              ; preds = %.lr.ph.i.i.i.i.i787.prol.loopexit, %.lr.ph.i.i.i.i.i787
  %.09.i.i.i.i.i788 = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i787 ], [ %.09.i.i.i.i.i788.unr, %.lr.ph.i.i.i.i.i787.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i789 = phi i64 [ %i.rw, %.lr.ph.i.i.i.i.i787 ], [ %.068.i.i.i.i.i789.unr, %.lr.ph.i.i.i.i.i787.prol.loopexit ]
  store ptr %.fca.0.extract59.i, ptr %.09.i.i.i.i.i788, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788, i64 8
  store i32 %.fca.1.extract60.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !240
  %i.rp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788, i64 16
  store ptr %.fca.0.extract59.i, ptr %i.rp, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788, i64 24
  store i32 %.fca.1.extract60.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !240
  %i.rq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788, i64 32
  store ptr %.fca.0.extract59.i, ptr %i.rq, align 8, !tbaa !465
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788, i64 40
  store i32 %.fca.1.extract60.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !240
  %i.rr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i788, i64 48
  store ptr %.fca.0.extract59.i, ptr %i.rr, align 8, !tbaa !465
end_hunk_0
begin_hunk_1_@_ZL14combineBitcastPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8
  %i.sx = call i16 %i.sw(ptr noundef nonnull align 8 dereferenceable(518435) %i.pw, ptr noundef nonnull align 8 dereferenceable(912) %i.st, i32 noundef 0) #39, !inline_history !3519
  %i.sy = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef %i.sr, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %i.sx, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.sy, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.sy, 1
  store ptr %.fca.0.extract6.i, ptr %23, align 8, !tbaa !465
  store i32 %.fca.1.extract7.i, ptr %.sroa.412.0..sroa_idx.i, align 8, !tbaa !240
  %.pre138.i = load ptr, ptr %16, align 8, !tbaa !83
  br label %bb.da

bb.cw:                                            ; preds = %bb.da
  %i.sz = lshr i32 %i.sn, 1                       ; 7 uses
  %i.ta = zext nneg i32 %i.sz to i64              ; 3 uses
  %i.tb = load i32, ptr %i.pu, align 8, !tbaa !633 ; 3 uses
  %i.tc = icmp eq i32 %i.sz, %i.tb
  br i1 %i.tc, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.td = icmp ult i32 %i.sz, %i.tb
  br i1 %i.td, label %.sink.split.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.te = load i32, ptr %i.pv, align 4, !tbaa !634
  %i.tf = icmp ugt i32 %i.sz, %i.te
  br i1 %i.tf, label %bb.cz, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.pt, i64 noundef %i.ta, i64 noundef 16) #39
  %.pre.i.i.i = load i32, ptr %i.pu, align 8, !tbaa !633
  %.pre139.i = load ptr, ptr %16, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i: ; preds = %bb.cz, %bb.cy
  %i.tg = phi ptr [ %i.tx, %bb.cy ], [ %.pre139.i, %bb.cz ] ; 2 uses
  %.pre-phi.i.i.in.i = phi i32 [ %i.tb, %bb.cy ], [ %.pre.i.i.i, %bb.cz ] ; 2 uses
  %i.th = getelementptr inbounds nuw [16 x i8], ptr %i.tg, i64 %i.ta
  %.not11.i.i.i = icmp eq i32 %i.sz, %.pre-phi.i.i.in.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  %.pre-phi.i.i.i = zext i32 %.pre-phi.i.i.in.i to i64 ; 2 uses
  %i.ti = getelementptr [16 x i8], ptr %i.tg, i64 %.pre-phi.i.i.i ; 2 uses
  %i.tj = sub nsw i64 %i.ta, %.pre-phi.i.i.i
  %i.tk = shl nsw i64 %i.tj, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.ti, i8 0, i64 %i.tk, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %i.tm, %.lr.ph.i.i.i ], [ %i.ti, %.lr.ph.preheader.i.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i.i, align 8, !tbaa !472
  %i.tl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i32 0, ptr %i.tl, align 8, !tbaa !467
  %i.tm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i792 = icmp eq ptr %i.tm, %i.th
  br i1 %.not.i.i.i792, label %.sink.split.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

.sink.split.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i, %bb.cx
  store i32 %i.sz, ptr %i.pu, align 8, !tbaa !633
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit.i: ; preds = %.sink.split.i.i.i, %bb.cw
  %i.tn = icmp ugt i32 %i.sn, 3
  br i1 %i.tn, label %bb.cv, label %._crit_edge.i, !llvm.loop !3522

bb.da:                                            ; preds = %bb.da, %bb.cv
  %i.to = phi ptr [ %.pre138.i, %bb.cv ], [ %i.tx, %bb.da ] ; 2 uses
  %.0135.i = phi i32 [ 0, %bb.cv ], [ %i.tz, %bb.da ] ; 4 uses
  %i.tp = zext i32 %.0135.i to i64
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %i.to, i64 %i.tp
  %i.tr = or disjoint i32 %.0135.i, 1
  %i.ts = zext i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.to, i64 %i.ts
  %i.tu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 48, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 248, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.tq, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.tt) #39 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.tu, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.tu, 1
  %i.tv = lshr exact i32 %.0135.i, 1
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = load ptr, ptr %16, align 8, !tbaa !83   ; 3 uses
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %i.tx, i64 %i.tw ; 2 uses
  store ptr %.fca.0.extract.i, ptr %i.ty, align 8, !tbaa !465
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !240
  %i.tz = add i32 %.0135.i, 2                     ; 2 uses
  %.not106.i = icmp eq i32 %i.tz, %i.sn
  br i1 %.not106.i, label %bb.cw, label %bb.da, !llvm.loop !3523

._crit_edge.i:                                    ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit.i, %.loopexit.i, %.preheader.i
  %i.ua = load ptr, ptr %16, align 8, !tbaa !83   ; 2 uses
  %.sroa.0102.0.copyload.i = load ptr, ptr %i.ua, align 8, !tbaa !465
  %.sroa.4103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %.sroa.4103.0.copyload.i = load i32, ptr %.sroa.4103.0..sroa_idx.i, align 8, !tbaa !240
  %i.ub = insertvalue { ptr, i32 } poison, ptr %.sroa.0102.0.copyload.i, 0
  %i.uc = insertvalue { ptr, i32 } %i.ub, i32 %.sroa.4103.0.copyload.i, 1
  br label %bb.db

bb.db:                                            ; preds = %._crit_edge.i, %bb.cp, %bb.cl
  %.fca.1.insert.merged.i791 = phi { ptr, i32 } [ %i.qc, %bb.cl ], [ %i.rc, %bb.cp ], [ %i.uc, %._crit_edge.i ]
  %i.ud = load ptr, ptr %16, align 8, !tbaa !83   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.pt
  br i1 %i.ue, label %_ZL20createMMXBuildVectorPN4llvm17BuildVectorSDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @free(ptr noundef %i.ud) #39
  br label %_ZL20createMMXBuildVectorPN4llvm17BuildVectorSDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit

_ZL20createMMXBuildVectorPN4llvm17BuildVectorSDNodeERNS_12SelectionDAGERKNS_12X86SubtargetE.exit: ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %.critedge634

.critedge630.thread:                              ; preds = %bb.cd, %.critedge630
  %i.uf = phi i32 [ %.pr.pre, %.critedge630 ], [ %i.ng, %bb.cd ]
  switch i32 %i.uf, label %.critedge632 [
    i32 164, label %bb.dd
    i32 167, label %bb.dd
  ]

bb.dd:                                            ; preds = %.critedge630.thread, %.critedge630.thread
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40 ; 2 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !638 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 40
  %.sroa.0217.0.copyload = load ptr, ptr %i.ui, align 8, !tbaa !465
  %.sroa.2218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %.sroa.2218.0.copyload = load i32, ptr %.sroa.2218.0..sroa_idx, align 8, !tbaa !240
  %i.uj = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0217.0.copyload, i32 %.sroa.2218.0.copyload) #39
  br i1 %i.uj, label %bb.de, label %.critedge632

bb.de:                                            ; preds = %bb.dd
  %i.uk = load ptr, ptr %i.ug, align 8, !tbaa !638 ; 2 uses
  %.sroa.01084.0.copyload = load ptr, ptr %i.uk, align 8, !tbaa !465 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #39
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.01084.0.copyload, i64 48
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !469
  %i.un = zext i32 %.sroa.7.0.copyload to i64
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %i.um, i64 %i.un ; 2 uses
  %.sroa.0.0.copyload.i.i795 = load i16, ptr %i.uo, align 8, !tbaa !345 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i796 = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %.sroa.21.0.copyload.i.i797 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i796, align 8, !tbaa !471
  store i16 %.sroa.0.0.copyload.i.i795, ptr %59, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr %.sroa.21.0.copyload.i.i797, ptr %i.up, align 8
  %.not.i800 = icmp eq i16 %.sroa.0.0.copyload.i.i795, 0
  br i1 %.not.i800, label %.split1259, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.uq = add i16 %.sroa.0.0.copyload.i.i795, -19
  %spec.select.i.i.i801 = icmp ult i16 %i.uq, 144
  br i1 %spec.select.i.i.i801, label %_ZNK4llvm3EVT14is128BitVectorEv.exit, label %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread

_ZNK4llvm3EVT14is128BitVectorEv.exit.thread:      ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #39
  br label %.critedge632

.split1259:                                       ; preds = %bb.de
  %i.ur = call noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %59) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #39
  br i1 %i.ur, label %bb.dg, label %.critedge632

_ZNK4llvm3EVT14is128BitVectorEv.exit:             ; preds = %bb.df
  %i.us = zext nneg i16 %.sroa.0.0.copyload.i.i795 to i64
  %i.ut = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.ut, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.uu, align 16
  %i.uv = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 128
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #39
  br i1 %i.uv, label %bb.dg, label %.critedge632

bb.dg:                                            ; preds = %.split1259, %_ZNK4llvm3EVT14is128BitVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #39
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.01084.0.copyload, i64 72
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !673
  store i64 %i.ux, ptr %60, align 8, !tbaa !673
  %i.uy = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.01084.0.copyload, i64 68
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !674
  store i32 %i.va, ptr %i.uy, align 8, !tbaa !676
  %.sroa.0211.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2213.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.vb = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 94, ptr null, ptr nonnull %.sroa.01084.0.copyload, i32 %.sroa.7.0.copyload) #39 ; 2 uses
  %.fca.0.extract204 = extractvalue { ptr, i32 } %i.vb, 0
  %.fca.1.extract205 = extractvalue { ptr, i32 } %i.vb, 1
  store ptr %.fca.0.extract204, ptr %61, align 8
  %.sroa.2207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i32 %.fca.1.extract205, ptr %.sroa.2207.0..sroa_idx, align 8
  %i.vc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 742, ptr noundef nonnull align 8 dereferenceable(12) %60, i16 %.sroa.0211.0.copyload, ptr %.sroa.2213.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %61) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #39
  br label %.critedge634

.critedge632:                                     ; preds = %.critedge630.thread, %.critedge630.thread1408, %_ZNK4llvm3EVT14is128BitVectorEv.exit, %_ZNK4llvm3EVT14is128BitVectorEv.exit.thread, %.split1259, %bb.dd
  %i.vd = load i16, ptr %29, align 8, !tbaa !641
  %.not.i.i802 = icmp eq i16 %i.vd, 71
  %i.ve = load ptr, ptr %i.j, align 8
  %i.vf = icmp eq ptr %i.ve, null
  %.not4.i803 = select i1 %.not.i.i802, i1 %i.vf, i1 false
  br i1 %.not4.i803, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %.critedge632
  %i.vg = load i32, ptr %i.fx, align 8, !tbaa !468
  %i.vh = icmp eq i32 %i.vg, 240
  br i1 %i.vh, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #39
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 72
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !673
  store i64 %i.vj, ptr %62, align 8, !tbaa !673
  %i.vk = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 68
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !674
  store i32 %i.vm, ptr %i.vk, align 8, !tbaa !676
  store ptr %.sroa.01179.0.copyload, ptr %63, align 8, !tbaa !465
  %.sroa.66.0..sroa_idx1230 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 %.sroa.66.0.copyload, ptr %.sroa.66.0..sroa_idx1230, align 8, !tbaa !240
  %.sroa.91.0..sroa_idx1246 = getelementptr inbounds nuw i8, ptr %63, i64 12
  store i32 %.sroa.91.0.copyload, ptr %.sroa.91.0..sroa_idx1246, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.vn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 71, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  %.fca.0.extract190 = extractvalue { ptr, i32 } %i.vn, 0
  %.fca.1.extract191 = extractvalue { ptr, i32 } %i.vn, 1
  store ptr %.fca.0.extract190, ptr %64, align 8
  %.sroa.2193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i32 %.fca.1.extract191, ptr %.sroa.2193.0..sroa_idx, align 8
  %i.vo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %62, i16 73, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %63, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %64) #39 ; 2 uses
  %.fca.0.extract186 = extractvalue { ptr, i32 } %i.vo, 0
  %.fca.1.extract187 = extractvalue { ptr, i32 } %i.vo, 1
  %.sroa.0183.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2185.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.vp = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 94, ptr null, ptr %.fca.0.extract186, i32 %.fca.1.extract187) #39 ; 2 uses
  %.fca.0.extract176 = extractvalue { ptr, i32 } %i.vp, 0
  %.fca.1.extract177 = extractvalue { ptr, i32 } %i.vp, 1
  store ptr %.fca.0.extract176, ptr %65, align 8
  %.sroa.2179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %65, i64 8
  store i32 %.fca.1.extract177, ptr %.sroa.2179.0..sroa_idx, align 8
  %i.vq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 742, ptr noundef nonnull align 8 dereferenceable(12) %62, i16 %.sroa.0183.0.copyload, ptr %.sroa.2185.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %65) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #39
  br label %.critedge634

bb.dj:                                            ; preds = %.critedge632, %bb.dh
  %i.vr = load ptr, ptr %52, align 8, !tbaa !83   ; 3 uses
  %i.vs = load i32, ptr %i.mf, align 8, !tbaa !633 ; 2 uses
  %.not4.i.i804 = icmp eq i32 %i.vs, 0
  br i1 %.not4.i.i804, label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.dj
  %i.vt = zext i32 %i.vs to i64
  %.idx.i = shl nuw nsw i64 %i.vt, 4
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.idx.i
  br label %.lr.ph.i.i805

.lr.ph.i.i805:                                    ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.vv, %_ZN4llvm5APIntD2Ev.exit.i.i ], [ %i.vu, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.vv = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 3 uses
  %i.vw = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !643
  %i.vy = icmp ugt i32 %i.vx, 64
  br i1 %i.vy, label %bb.dk, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.dk:                                            ; preds = %.lr.ph.i.i805
  %i.vz = load ptr, ptr %i.vv, align 8, !tbaa !357 ; 2 uses
  %i.wa = icmp eq ptr %i.vz, null
  br i1 %i.wa, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZdaPv(ptr noundef nonnull %i.vz) #42
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.dl, %bb.dk, %.lr.ph.i.i805
  %.not.i.i806 = icmp eq ptr %i.vr, %i.vv
  br i1 %.not.i.i806, label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i805, !llvm.loop !4

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %.pre.i807 = load ptr, ptr %52, align 8, !tbaa !83
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %bb.dj
  %i.wb = phi ptr [ %.pre.i807, %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.vr, %bb.dj ] ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.me
  br i1 %i.wc, label %_ZN4llvm11SmallVectorINS_5APIntELj1EED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.i
  call void @free(ptr noundef %i.wb) #39
  br label %_ZN4llvm11SmallVectorINS_5APIntELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_5APIntELj1EED2Ev.exit:   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5APIntELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #39
  %i.wd = load i32, ptr %i.md, align 8, !tbaa !643
  %i.we = icmp ugt i32 %i.wd, 64
  br i1 %i.we, label %bb.dn, label %_ZN4llvm5APIntD2Ev.exit808

bb.dn:                                            ; preds = %_ZN4llvm11SmallVectorINS_5APIntELj1EED2Ev.exit
  %i.wf = load ptr, ptr %51, align 8, !tbaa !357  ; 2 uses
  %i.wg = icmp eq ptr %i.wf, null
  br i1 %i.wg, label %_ZN4llvm5APIntD2Ev.exit808, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.wf) #42
  br label %_ZN4llvm5APIntD2Ev.exit808

_ZN4llvm5APIntD2Ev.exit808:                       ; preds = %_ZN4llvm11SmallVectorINS_5APIntELj1EED2Ev.exit, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #39
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit808, %.critedge11
  %i.wh = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 5 uses
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !342
  %i.wj = icmp sgt i32 %i.wi, 8
  br i1 %i.wj, label %bb.dq, label %.critedge17

bb.dq:                                            ; preds = %bb.dp
  %i.wk = load i16, ptr %28, align 8, !tbaa !641  ; 2 uses
  %.not.i809 = icmp eq i16 %i.wk, 0
  br i1 %.not.i809, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit811, label %.split1260

.split1260:                                       ; preds = %bb.dq
  %i.wl = add i16 %i.wk, -2
  %spec.select.i.i810 = icmp ult i16 %i.wl, 10
  br i1 %spec.select.i.i810, label %bb.dr, label %_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread

_ZNK4llvm3EVT15isScalarIntegerEv.exit811:         ; preds = %bb.dq
  %i.wm = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.wm, label %bb.dr, label %_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread

bb.dr:                                            ; preds = %.split1260, %_ZNK4llvm3EVT15isScalarIntegerEv.exit811
  %i.wn = load i16, ptr %29, align 8, !tbaa !641  ; 3 uses
  %.not.i.i812 = icmp eq i16 %i.wn, 0
  br i1 %.not.i.i812, label %_ZNK4llvm3EVT8isVectorEv.exit.i819, label %.split.i813

.split.i813:                                      ; preds = %bb.dr
  %i.wo = add i16 %i.wn, -19
  %spec.select.i.i.i814 = icmp ult i16 %i.wo, 197
  br i1 %spec.select.i.i.i814, label %bb.ds, label %_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread

_ZNK4llvm3EVT8isVectorEv.exit.i819:               ; preds = %bb.dr
  %i.wp = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.wp, label %bb.dt, label %_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread

bb.ds:                                            ; preds = %.split.i813
  %i.wq = zext nneg i16 %i.wn to i64
  %i.wr = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.wq
  %i.ws = getelementptr i8, ptr %i.wr, i64 -2
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !345
  %i.wu = insertvalue { i16, ptr } poison, i16 %i.wt, 0
  %i.wv = insertvalue { i16, ptr } %i.wu, ptr null, 1
  br label %_ZNK4llvm3EVT10isVectorOfES0_.exit820

bb.dt:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i819
  %i.ww = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #39
  br label %_ZNK4llvm3EVT10isVectorOfES0_.exit820

_ZNK4llvm3EVT10isVectorOfES0_.exit820:            ; preds = %bb.ds, %bb.dt
  %.fca.1.insert.merged.i.i816 = phi { i16, ptr } [ %i.wv, %bb.ds ], [ %i.ww, %bb.dt ] ; 2 uses
  %i.wx = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i816, 0
  %i.wy = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i816, 1
  %.not.i.i.i817 = icmp eq i16 %i.wx, 2
  %i.wz = icmp eq ptr %i.wy, null
  %.not4.i.i818 = select i1 %.not.i.i.i817, i1 %i.wz, i1 false
  br i1 %.not4.i.i818, label %bb.du, label %_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread

bb.du:                                            ; preds = %_ZNK4llvm3EVT10isVectorOfES0_.exit820
  %i.xa = call noundef zeroext i1 @_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE(ptr noundef %.sroa.01179.0.copyload) #39
  br i1 %i.xa, label %bb.dv, label %_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread

bb.dv:                                            ; preds = %bb.du
  %i.xb = call fastcc { ptr, i32 } @_ZL28combinevXi1ConstantToIntegerN4llvm7SDValueERNS_12SelectionDAGE(ptr %.sroa.01179.0.copyload, i32 %.sroa.66.0.copyload, ptr noundef nonnull align 8 dereferenceable(920) %1) ; 2 uses
  %.fca.0.extract165 = extractvalue { ptr, i32 } %i.xb, 0
  %.fca.1.extract166 = extractvalue { ptr, i32 } %i.xb, 1
  br label %.critedge636

_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread:     ; preds = %.split.i813, %_ZNK4llvm3EVT8isVectorEv.exit.i819, %.split1260, %bb.du, %_ZNK4llvm3EVT10isVectorOfES0_.exit820, %_ZNK4llvm3EVT15isScalarIntegerEv.exit811
  %.pr1261 = load i32, ptr %i.wh, align 8, !tbaa !342
  %i.xc = icmp sgt i32 %.pr1261, 8
  br i1 %i.xc, label %bb.dw, label %.critedge17

bb.dw:                                            ; preds = %_ZNK4llvm3EVT10isVectorOfES0_.exit820.thread
  %i.xd = load i16, ptr %29, align 8, !tbaa !641  ; 2 uses
  %.not.i821 = icmp eq i16 %i.xd, 0
  br i1 %.not.i821, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit823, label %.split1263

.split1263:                                       ; preds = %bb.dw
  %i.xe = add i16 %i.xd, -2
  %spec.select.i.i822 = icmp ult i16 %i.xe, 10
  br i1 %spec.select.i.i822, label %bb.dx, label %.critedge15

_ZNK4llvm3EVT15isScalarIntegerEv.exit823:         ; preds = %bb.dw
  %i.xf = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.xf, label %bb.dx, label %.critedge15

bb.dx:                                            ; preds = %.split1263, %_ZNK4llvm3EVT15isScalarIntegerEv.exit823
  %i.xg = load i16, ptr %28, align 8, !tbaa !641  ; 3 uses
  %.not.i824 = icmp eq i16 %i.xg, 0
  br i1 %.not.i824, label %_ZNK4llvm3EVT8isVectorEv.exit826, label %.split1264

.split1264:                                       ; preds = %bb.dx
  %i.xh = add i16 %i.xg, -19
  %spec.select.i.i825 = icmp ult i16 %i.xh, 197
  br i1 %spec.select.i.i825, label %bb.dy, label %.critedge15

_ZNK4llvm3EVT8isVectorEv.exit826:                 ; preds = %bb.dx
  %i.xi = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.xi, label %bb.dz, label %.critedge15

bb.dy:                                            ; preds = %.split1264
  %i.xj = zext nneg i16 %i.xg to i64
  %i.xk = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.xj
  %i.xl = getelementptr i8, ptr %i.xk, i64 -2
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !345
  %i.xn = insertvalue { i16, ptr } poison, i16 %i.xm, 0
  %i.xo = insertvalue { i16, ptr } %i.xn, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.dz:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit826
  %i.xp = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #39
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.dy, %bb.dz
  %.fca.1.insert.merged.i828 = phi { i16, ptr } [ %i.xo, %bb.dy ], [ %i.xp, %bb.dz ] ; 2 uses
  %i.xq = extractvalue { i16, ptr } %.fca.1.insert.merged.i828, 0
  %i.xr = extractvalue { i16, ptr } %.fca.1.insert.merged.i828, 1
  %.not.i.i829 = icmp eq i16 %i.xq, 2
  %i.xs = icmp eq ptr %i.xr, null
  %.not4.i830 = select i1 %.not.i.i829, i1 %i.xs, i1 false
  br i1 %.not4.i830, label %bb.ea, label %.critedge15

bb.ea:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.xt = load i32, ptr %i.fx, align 8, !tbaa !468
  switch i32 %i.xt, label %.critedge15 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.ea, %bb.ea
  %i.xu = call noundef zeroext i1 @_ZNK4llvm14ConstantSDNode9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01179.0.copyload)
  br i1 %i.xu, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #39
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 72
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !673
  store i64 %i.xw, ptr %66, align 8, !tbaa !673
  %i.xx = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 68
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !674
  store i32 %i.xz, ptr %i.xx, align 8, !tbaa !676
  %.sroa.0157.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2159.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.ya = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %66, i16 %.sroa.0157.0.copyload, ptr %.sroa.2159.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract153 = extractvalue { ptr, i32 } %i.ya, 0
  %.fca.1.extract154 = extractvalue { ptr, i32 } %i.ya, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #39
  br label %.critedge636

bb.ec:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 88
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !654
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.ye = load i8, ptr %i.yd, align 1
  %i.yf = icmp slt i8 %i.ye, 0
  br i1 %i.yf, label %bb.ed, label %.critedge15

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #39
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 72
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !673
  store i64 %i.yh, ptr %67, align 8, !tbaa !673
  %i.yi = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 68
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !674
  store i32 %i.yk, ptr %i.yi, align 8, !tbaa !676
  %.sroa.0147.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.2149.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %i.yl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %67, i16 %.sroa.0147.0.copyload, ptr %.sroa.2149.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract143 = extractvalue { ptr, i32 } %i.yl, 0
  %.fca.1.extract144 = extractvalue { ptr, i32 } %i.yl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #39
  br label %.critedge636

.critedge15:                                      ; preds = %bb.ea, %_ZNK4llvm3EVT8isVectorEv.exit826, %_ZNK4llvm3EVT15isScalarIntegerEv.exit823, %.split1263, %.split1264, %bb.ec, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %.pr1268 = load i32, ptr %i.wh, align 8, !tbaa !342
  %i.ym = icmp sgt i32 %.pr1268, 8
  br i1 %i.ym, label %bb.ee, label %.critedge17

bb.ee:                                            ; preds = %.critedge15
  %i.yn = load i16, ptr %29, align 8, !tbaa !641  ; 2 uses
  %.not.i831 = icmp eq i16 %i.yn, 0
  br i1 %.not.i831, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit833, label %.split1269

.split1269:                                       ; preds = %bb.ee
  %i.yo = add i16 %i.yn, -2
  %spec.select.i.i832 = icmp ult i16 %i.yo, 10
  br i1 %spec.select.i.i832, label %bb.ef, label %.critedge17

_ZNK4llvm3EVT15isScalarIntegerEv.exit833:         ; preds = %bb.ee
  %i.yp = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.yp, label %bb.ef, label %.critedge17

bb.ef:                                            ; preds = %.split1269, %_ZNK4llvm3EVT15isScalarIntegerEv.exit833
  %i.yq = load i16, ptr %28, align 8, !tbaa !641  ; 3 uses
  %.not.i.i834 = icmp eq i16 %i.yq, 0
  br i1 %.not.i.i834, label %_ZNK4llvm3EVT8isVectorEv.exit.i841, label %.split.i835

.split.i835:                                      ; preds = %bb.ef
  %i.yr = add i16 %i.yq, -19
  %spec.select.i.i.i836 = icmp ult i16 %i.yr, 197
  br i1 %spec.select.i.i.i836, label %bb.eg, label %.critedge17

_ZNK4llvm3EVT8isVectorEv.exit.i841:               ; preds = %bb.ef
  %i.ys = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.ys, label %bb.eh, label %.critedge17

bb.eg:                                            ; preds = %.split.i835
  %i.yt = zext nneg i16 %i.yq to i64
  %i.yu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.yt
  %i.yv = getelementptr i8, ptr %i.yu, i64 -2
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !345
  %i.yx = insertvalue { i16, ptr } poison, i16 %i.yw, 0
  %i.yy = insertvalue { i16, ptr } %i.yx, ptr null, 1
  br label %_ZNK4llvm3EVT10isVectorOfES0_.exit842

bb.eh:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i841
  %i.yz = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #39
  br label %_ZNK4llvm3EVT10isVectorOfES0_.exit842

_ZNK4llvm3EVT10isVectorOfES0_.exit842:            ; preds = %bb.eg, %bb.eh
  %.fca.1.insert.merged.i.i838 = phi { i16, ptr } [ %i.yy, %bb.eg ], [ %i.yz, %bb.eh ] ; 2 uses
  %i.za = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i838, 0
  %i.zb = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i838, 1
  %.not.i.i.i839 = icmp eq i16 %i.za, 2
  %i.zc = icmp eq ptr %i.zb, null
  %.not4.i.i840 = select i1 %.not.i.i.i839, i1 %i.zc, i1 false
  br i1 %.not4.i.i840, label %bb.ei, label %.critedge17

bb.ei:                                            ; preds = %_ZNK4llvm3EVT10isVectorOfES0_.exit842
  %i.zd = load i16, ptr %28, align 8, !tbaa !641  ; 4 uses
  %.not.i.i843 = icmp eq i16 %i.zd, 0
  br i1 %.not.i.i843, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i847, label %.split.i844

.split.i844:                                      ; preds = %bb.ei
  %i.ze = add i16 %i.zd, -163
  %spec.select.i.i.i845 = icmp ult i16 %i.ze, 53
  br i1 %spec.select.i.i.i845, label %bb.ej, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit848.thread

_ZNK4llvm3EVT16isScalableVectorEv.exit.i847:      ; preds = %bb.ei
  %i.zf = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.zf, label %bb.ej, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit848

bb.ej:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i847, %.split.i844
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #41
  unreachable

_ZNK4llvm3EVT20getVectorNumElementsEv.exit848:    ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i847
  %i.zg = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  %i.zh = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.zg)
  %or.cond1306 = icmp eq i32 %i.zh, 1
  br i1 %or.cond1306, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i854, label %.critedge17

_ZNK4llvm3EVT20getVectorNumElementsEv.exit848.thread: ; preds = %.split.i844
  %i.zi = zext i16 %i.zd to i64
  %i.zj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 -2
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !339
  %i.zm = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.zl)
  %or.cond13061410 = icmp eq i16 %i.zm, 1
  br i1 %or.cond13061410, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i853, label %.critedge17

_ZNK4llvm3EVT16isScalableVectorEv.exit.i854:      ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit848
  %i.zn = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br i1 %i.zn, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i854
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i853:  ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit848.thread
  %i.zo = zext i16 %i.zd to i64
  %i.zp = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.zo
  %i.zq = getelementptr i8, ptr %i.zp, i64 -2
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !339
  %i.zs = zext i16 %i.zr to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit855

bb.el:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i854
  %i.zt = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #40
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit855

_ZNK4llvm3EVT20getVectorNumElementsEv.exit855:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i853, %bb.el
  %i.zu = phi i32 [ %i.zs, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i853 ], [ %i.zt, %bb.el ] ; 2 uses
  %i.zv = load i32, ptr %i.fx, align 8, !tbaa !468 ; 2 uses
  %i.zw = icmp eq i32 %i.zv, 230
  br i1 %i.zw, label %bb.em, label %_ZNK4llvm7SDValue9hasOneUseEv.exit867.thread

bb.em:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit855
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 56
  %.sroa.018.022.i.i856 = load ptr, ptr %i.zx, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i857 = icmp eq ptr %.sroa.018.022.i.i856, null
  br i1 %.not23.i.i857, label %.critedge17, label %.lr.ph.i.i858

bb.en:                                            ; preds = %.lr.ph.i.i858
  %.214.i.i861 = select i1 %i.aab, i32 %.01224.i.i860, i32 0 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i859, i64 32
  %.sroa.018.0.i.i865 = load ptr, ptr %i.zy, align 8, !tbaa !466 ; 2 uses
  %.not.i.i866 = icmp eq ptr %.sroa.018.0.i.i865, null
  br i1 %.not.i.i866, label %_ZNK4llvm7SDValue9hasOneUseEv.exit867, label %.lr.ph.i.i858

.lr.ph.i.i858:                                    ; preds = %bb.em, %bb.en
  %.sroa.018.025.i.i859 = phi ptr [ %.sroa.018.0.i.i865, %bb.en ], [ %.sroa.018.022.i.i856, %bb.em ] ; 2 uses
  %.01224.i.i860 = phi i32 [ %.214.i.i861, %bb.en ], [ 1, %bb.em ] ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i859, i64 8
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !467
  %i.aab = icmp ne i32 %i.aaa, %.sroa.66.0.copyload ; 2 uses
  %i.aac = icmp ne i32 %.01224.i.i860, 0
  %cond.i.i862 = select i1 %i.aab, i1 true, i1 %i.aac
  br i1 %cond.i.i862, label %bb.en, label %.critedge17

_ZNK4llvm7SDValue9hasOneUseEv.exit867:            ; preds = %bb.en
  %i.aad = icmp eq i32 %.214.i.i861, 0
  br i1 %i.aad, label %bb.eo, label %.critedge17

bb.eo:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit867
  %i.aae = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !638 ; 2 uses
  %.sroa.01058.0.copyload1061 = load ptr, ptr %i.aaf, align 8, !tbaa !465 ; 2 uses
  %.sroa.81062.0..sroa_idx1063 = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %.sroa.81062.0.copyload1064 = load i32, ptr %.sroa.81062.0..sroa_idx1063, align 8, !tbaa !240
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.01058.0.copyload1061, i64 24
  %.pre1342 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !468
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit867.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit867.thread:     ; preds = %bb.eo, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit855
  %i.aag = phi i32 [ %.pre1342, %bb.eo ], [ %i.zv, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit855 ]
  %.sroa.81062.0 = phi i32 [ %.sroa.81062.0.copyload1064, %bb.eo ], [ %.sroa.66.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit855 ]
  %.sroa.01058.0 = phi ptr [ %.sroa.01058.0.copyload1061, %bb.eo ], [ %.sroa.01179.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit855 ] ; 2 uses
  %i.aah = icmp eq i32 %i.aag, 745
  br i1 %i.aah, label %bb.ep, label %.critedge17

bb.ep:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit867.thread
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.01058.0, i64 56
  %.sroa.018.022.i.i868 = load ptr, ptr %i.aai, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i869 = icmp eq ptr %.sroa.018.022.i.i868, null
  br i1 %.not23.i.i869, label %.critedge17, label %.lr.ph.i.i870

bb.eq:                                            ; preds = %.lr.ph.i.i870
  %.214.i.i873 = select i1 %i.aam, i32 %.01224.i.i872, i32 0 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i871, i64 32
  %.sroa.018.0.i.i877 = load ptr, ptr %i.aaj, align 8, !tbaa !466 ; 2 uses
  %.not.i.i878 = icmp eq ptr %.sroa.018.0.i.i877, null
  br i1 %.not.i.i878, label %_ZNK4llvm7SDValue9hasOneUseEv.exit879, label %.lr.ph.i.i870

.lr.ph.i.i870:                                    ; preds = %bb.ep, %bb.eq
  %.sroa.018.025.i.i871 = phi ptr [ %.sroa.018.0.i.i877, %bb.eq ], [ %.sroa.018.022.i.i868, %bb.ep ] ; 2 uses
  %.01224.i.i872 = phi i32 [ %.214.i.i873, %bb.eq ], [ 1, %bb.ep ] ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i871, i64 8
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !467
  %i.aam = icmp ne i32 %i.aal, %.sroa.81062.0     ; 2 uses
  %i.aan = icmp ne i32 %.01224.i.i872, 0
  %cond.i.i874 = select i1 %i.aam, i1 true, i1 %i.aan
  br i1 %cond.i.i874, label %bb.eq, label %.critedge17

_ZNK4llvm7SDValue9hasOneUseEv.exit879:            ; preds = %bb.eq
  %i.aao = icmp eq i32 %.214.i.i873, 0
  br i1 %i.aao, label %bb.er, label %.critedge17

bb.er:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit879
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.01058.0, i64 40
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !638 ; 2 uses
  %.sroa.01054.0.copyload = load ptr, ptr %i.aaq, align 8, !tbaa !465 ; 2 uses
  %.sroa.8.0..sroa_idx1055 = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %.sroa.8.0.copyload1056 = load i32, ptr %.sroa.8.0..sroa_idx1055, align 8, !tbaa !240 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.01054.0.copyload, i64 48
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !469
  %i.aat = zext i32 %.sroa.8.0.copyload1056 to i64
  %i.aau = getelementptr inbounds nuw [16 x i8], ptr %i.aas, i64 %i.aat
  %.sroa.0.0.copyload.i.i.i880 = load i16, ptr %i.aau, align 8, !tbaa !345 ; 3 uses
  %i.aav = add i16 %.sroa.0.0.copyload.i.i.i880, -163
  %spec.select.i.i881 = icmp ult i16 %i.aav, 53
  br i1 %spec.select.i.i881, label %bb.es, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.es:                                            ; preds = %bb.er
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.84) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.er
  %i.aaw = zext i16 %.sroa.0.0.copyload.i.i.i880 to i64 ; 2 uses
  %i.aax = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.aaw
end_hunk_1
begin_hunk_2_@_ZL14combineBitcastPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE:bb.a
  br i1 %cond.i.i.i.i.i.i, label %bb.ff, label %_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit.thread1278

_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES7_Lb1ELb0EEES8_S8_EEEEEEEbNS_7SDValueEOT_.exit.i: ; preds = %bb.ff
  %i.aem = icmp eq i32 %.214.i.i.i.i.i.i, 0
  br i1 %i.aem, label %bb.fg, label %_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit.thread1278

bb.fg:                                            ; preds = %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES7_Lb1ELb0EEES8_S8_EEEEEEEbNS_7SDValueEOT_.exit.i
  %.sroa.054.0.copyload.i = load i16, ptr %4, align 8, !tbaa !345 ; 4 uses
  %.sroa.256.0.copyload.i = load ptr, ptr %i.ack, align 8, !tbaa !471 ; 4 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.12.i, i64 24
  %i.aeo = load i32, ptr %i.aen, align 8, !tbaa !468
  %i.aep = icmp eq i32 %i.aeo, 248
  br i1 %i.aep, label %bb.fh, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i

bb.fh:                                            ; preds = %bb.fg
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.0.12.i, i64 40
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !638 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aer, align 8, !tbaa !465
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !240
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, i64 48
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !469
  %i.aeu = zext i32 %.sroa.2.0.copyload.i.i.i.i.i.i to i64
  %i.aev = getelementptr inbounds nuw [16 x i8], ptr %i.aet, i64 %i.aeu ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i16, ptr %i.aev, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !471
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.054.0.copyload.i
  %i.aew = icmp eq ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.256.0.copyload.i
  %.not4.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %i.aew, i1 false
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %bb.fi, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i

bb.fi:                                            ; preds = %bb.fh
  %i.aex = getelementptr inbounds nuw i8, ptr %.sroa.0.12.i, i64 56
  %.sroa.018.022.i.i.i.i.i89.i = load ptr, ptr %i.aex, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i.i.i.i90.i = icmp eq ptr %.sroa.018.022.i.i.i.i.i89.i, null
  br i1 %.not23.i.i.i.i.i90.i, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i, label %.lr.ph.i.i.i.i.i91.i

bb.fj:                                            ; preds = %.lr.ph.i.i.i.i.i91.i
  %.214.i.i.i.i.i94.i = select i1 %i.afb, i32 %.01224.i.i.i.i.i93.i, i32 0 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i.i92.i, i64 32
  %.sroa.018.0.i.i.i.i.i97.i = load ptr, ptr %i.aey, align 8, !tbaa !466 ; 2 uses
  %.not.i.i.i.i.i98.i = icmp eq ptr %.sroa.018.0.i.i.i.i.i97.i, null
  br i1 %.not.i.i.i.i.i98.i, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.i, label %.lr.ph.i.i.i.i.i91.i

.lr.ph.i.i.i.i.i91.i:                             ; preds = %bb.fi, %bb.fj
  %.sroa.018.025.i.i.i.i.i92.i = phi ptr [ %.sroa.018.0.i.i.i.i.i97.i, %bb.fj ], [ %.sroa.018.022.i.i.i.i.i89.i, %bb.fi ] ; 2 uses
  %.01224.i.i.i.i.i93.i = phi i32 [ %.214.i.i.i.i.i94.i, %bb.fj ], [ 1, %bb.fi ] ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i.i92.i, i64 8
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !467
  %i.afb = icmp ne i32 %i.afa, %.sroa.12.12.i     ; 2 uses
  %i.afc = icmp ne i32 %.01224.i.i.i.i.i93.i, 0
  %cond.i.i.i.i.i95.i = select i1 %i.afb, i1 true, i1 %i.afc
  br i1 %cond.i.i.i.i.i95.i, label %bb.fj, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i

_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.i: ; preds = %bb.fj
  %i.afd = icmp eq i32 %.214.i.i.i.i.i94.i, 0
  br i1 %i.afd, label %.critedge.i, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i

_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i: ; preds = %.lr.ph.i.i.i.i.i91.i, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.i, %bb.fi, %bb.fh, %bb.fg
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.0129.6.i, i64 24
  %i.aff = load i32, ptr %i.afe, align 8, !tbaa !468
  %i.afg = icmp eq i32 %i.aff, 248
  br i1 %i.afg, label %bb.fk, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i

bb.fk:                                            ; preds = %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0129.6.i, i64 40
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !638 ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i101.i = load ptr, ptr %i.afi, align 8, !tbaa !465
  %.sroa.2.0..sroa_idx.i.i.i.i.i102.i = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i103.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i102.i, align 8, !tbaa !240
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i101.i, i64 48
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !469
  %i.afl = zext i32 %.sroa.2.0.copyload.i.i.i.i.i103.i to i64
  %i.afm = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %i.afl ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i104.i = load i16, ptr %i.afm, align 8, !tbaa !345
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i105.i = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %.sroa.21.0.copyload.i.i.i.i.i.i.i.i106.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i.i.i105.i, align 8, !tbaa !471
  %.not.i.i.i.i.i.i.i.i.i110.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i104.i, %.sroa.054.0.copyload.i
  %i.afn = icmp eq ptr %.sroa.21.0.copyload.i.i.i.i.i.i.i.i106.i, %.sroa.256.0.copyload.i
  %.not4.i.i.i.i.i.i.i.i111.i = select i1 %.not.i.i.i.i.i.i.i.i.i110.i, i1 %i.afn, i1 false
  br i1 %.not4.i.i.i.i.i.i.i.i111.i, label %bb.fl, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i

bb.fl:                                            ; preds = %bb.fk
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0129.6.i, i64 56
  %.sroa.018.022.i.i.i.i.i117.i = load ptr, ptr %i.afo, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i.i.i.i118.i = icmp eq ptr %.sroa.018.022.i.i.i.i.i117.i, null
  br i1 %.not23.i.i.i.i.i118.i, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i, label %.lr.ph.i.i.i.i.i119.i

bb.fm:                                            ; preds = %.lr.ph.i.i.i.i.i119.i
  %.214.i.i.i.i.i122.i = select i1 %i.afs, i32 %.01224.i.i.i.i.i121.i, i32 0 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i.i120.i, i64 32
  %.sroa.018.0.i.i.i.i.i125.i = load ptr, ptr %i.afp, align 8, !tbaa !466 ; 2 uses
  %.not.i.i.i.i.i126.i = icmp eq ptr %.sroa.018.0.i.i.i.i.i125.i, null
  br i1 %.not.i.i.i.i.i126.i, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.i, label %.lr.ph.i.i.i.i.i119.i

.lr.ph.i.i.i.i.i119.i:                            ; preds = %bb.fl, %bb.fm
  %.sroa.018.025.i.i.i.i.i120.i = phi ptr [ %.sroa.018.0.i.i.i.i.i125.i, %bb.fm ], [ %.sroa.018.022.i.i.i.i.i117.i, %bb.fl ] ; 2 uses
  %.01224.i.i.i.i.i121.i = phi i32 [ %.214.i.i.i.i.i122.i, %bb.fm ], [ 1, %bb.fl ] ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i.i.i120.i, i64 8
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !467
  %i.afs = icmp ne i32 %i.afr, %.sroa.15.3.i      ; 2 uses
  %i.aft = icmp ne i32 %.01224.i.i.i.i.i121.i, 0
  %cond.i.i.i.i.i123.i = select i1 %i.afs, i1 true, i1 %i.aft
  br i1 %cond.i.i.i.i.i123.i, label %bb.fm, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i

_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.i: ; preds = %bb.fm
  %i.afu = icmp eq i32 %.214.i.i.i.i.i122.i, 0
  br i1 %i.afu, label %.critedge.i, label %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i

.critedge.i:                                      ; preds = %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.i, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !673
  store i64 %i.afw, ptr %6, align 8, !tbaa !673
  %i.afx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !674
  store i32 %i.afz, ptr %i.afx, align 8, !tbaa !676
  %i.aga = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.054.0.copyload.i, ptr %.sroa.256.0.copyload.i, ptr nonnull %.sroa.0.12.i, i32 %.sroa.12.12.i) #39 ; 2 uses
  %.fca.0.extract35.i = extractvalue { ptr, i32 } %i.aga, 0
  %.fca.1.extract36.i = extractvalue { ptr, i32 } %i.aga, 1
  store ptr %.fca.0.extract35.i, ptr %7, align 8
  %.sroa.238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract36.i, ptr %.sroa.238.0..sroa_idx.i, align 8
  %.sroa.032.0.copyload.i = load i16, ptr %4, align 8, !tbaa !345
  %.sroa.234.0.copyload.i = load ptr, ptr %i.ack, align 8, !tbaa !471
  %i.agb = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.032.0.copyload.i, ptr %.sroa.234.0.copyload.i, ptr nonnull %.sroa.0129.6.i, i32 %.sroa.15.3.i) #39 ; 2 uses
  %.fca.0.extract25.i = extractvalue { ptr, i32 } %i.agb, 0
  %.fca.1.extract26.i = extractvalue { ptr, i32 } %i.agb, 1
  store ptr %.fca.0.extract25.i, ptr %8, align 8
  %.sroa.228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract26.i, ptr %.sroa.228.0..sroa_idx.i, align 8
  %i.agc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.adw, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.054.0.copyload.i, ptr %.sroa.256.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit

_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i: ; preds = %.lr.ph.i.i.i.i.i119.i, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.i, %bb.fl, %bb.fk, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit.thread184.i
  %i.agd = call noundef zeroext i1 @_ZN4llvm3ISD30isBuildVectorOfConstantSDNodesEPKNS_6SDNodeE(ptr noundef nonnull %.sroa.0129.6.i) #39
  br i1 %i.agd, label %bb.fn, label %_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit.thread1278

bb.fn:                                            ; preds = %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i
  %i.age = call fastcc { ptr, i32 } @_ZL28combinevXi1ConstantToIntegerN4llvm7SDValueERNS_12SelectionDAGE(ptr nonnull %.sroa.0129.6.i, i32 %.sroa.15.3.i, ptr noundef nonnull align 8 dereferenceable(920) %1) ; 2 uses
  %.fca.0.extract13.i = extractvalue { ptr, i32 } %i.age, 0
  %.fca.1.extract14.i = extractvalue { ptr, i32 } %i.age, 1
  %i.agf = load i32, ptr %i.adv, align 8, !tbaa !468
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !673
  store i64 %i.agh, ptr %9, align 8, !tbaa !673
  %i.agi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !674
  store i32 %i.agk, ptr %i.agi, align 8, !tbaa !676
  %.sroa.010.0.copyload.i = load i16, ptr %4, align 8, !tbaa !345 ; 2 uses
  %.sroa.212.0.copyload.i = load ptr, ptr %i.ack, align 8, !tbaa !471 ; 2 uses
  %i.agl = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.010.0.copyload.i, ptr %.sroa.212.0.copyload.i, ptr nonnull %.sroa.0.12.i, i32 %.sroa.12.12.i) #39 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.agl, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.agl, 1
  store ptr %.fca.0.extract1.i, ptr %10, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  store ptr %.fca.0.extract13.i, ptr %11, align 8, !tbaa !465
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract14.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !240
  %i.agm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef %i.agf, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.010.0.copyload.i, ptr %.sroa.212.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit

_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit.thread1278: ; preds = %.lr.ph.i.i.i.i.i.i897, %_ZNK4llvm3EVT10isVectorOfES0_.exit82.i, %.split134.i, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_14UnaryOpc_matchINS0_15ValueType_matchINS0_11Value_matchEZNS0_12m_SpecificVTENS_3EVTEEUlS6_E_EELb0EEEEEEEbNS_7SDValueEOT_.exit127.thread185.i, %_ZNK4llvm3EVT15isScalarIntegerEv.exit85.i, %_ZN4llvm14SDPatternMatch8sd_matchINS0_11NUses_matchILj1ENS0_2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES7_Lb1ELb0EEES8_S8_EEEEEEEbNS_7SDValueEOT_.exit.i, %.split.i75.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i29.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i81.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i.i, %bb.fe, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i176.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i.i228.i, %_ZN4llvm14SDPatternMatch2OrIJNS0_15BinaryOpc_matchINS0_10Value_bindINS0_11Value_matchEEES5_Lb1ELb0EEES6_S6_EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread.i.i.i.i.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i29.i226.i, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i29.i174.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %.sink.split

_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit: ; preds = %.critedge.i, %bb.fn
  %.pn1312 = phi { ptr, i32 } [ %i.agc, %.critedge.i ], [ %i.agm, %bb.fn ] ; 2 uses
  %.sroa.0121.1.i = extractvalue { ptr, i32 } %.pn1312, 0 ; 2 uses
  %.sroa.13122.1.i = extractvalue { ptr, i32 } %.pn1312, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.not1314 = icmp eq ptr %.sroa.0121.1.i, null
  br i1 %.not1314, label %bb.fo, label %.critedge636

.sink.split:                                      ; preds = %.critedge17, %_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit.thread1278
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.fo

bb.fo:                                            ; preds = %.sink.split, %_ZL27combineCastedMaskArithmeticPN4llvm6SDNodeERNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE.exit
  %i.agn = load i32, ptr %i.fx, align 8, !tbaa !468 ; 2 uses
  %i.ago = icmp eq i32 %i.agn, 163
  br i1 %i.ago, label %bb.fp, label %.critedge21

bb.fp:                                            ; preds = %bb.fo
  %i.agp = load i16, ptr %29, align 8, !tbaa !641 ; 4 uses
  %.not.i.i906 = icmp eq i16 %i.agp, 0
  br i1 %.not.i.i906, label %_ZNK4llvm3EVT8isVectorEv.exit.i913, label %.split.i907

.split.i907:                                      ; preds = %bb.fp
  %i.agq = add i16 %i.agp, -19
  %spec.select.i.i.i908 = icmp ult i16 %i.agq, 197
  br i1 %spec.select.i.i.i908, label %bb.fq, label %bb.fs

_ZNK4llvm3EVT8isVectorEv.exit.i913:               ; preds = %bb.fp
  %i.agr = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.agr, label %bb.fr, label %bb.fs

bb.fq:                                            ; preds = %.split.i907
  %i.ags = zext nneg i16 %i.agp to i64
  %i.agt = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ags
  %i.agu = getelementptr i8, ptr %i.agt, i64 -2
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !345
  %i.agw = insertvalue { i16, ptr } poison, i16 %i.agv, 0
  %i.agx = insertvalue { i16, ptr } %i.agw, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit914

bb.fr:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i913
  %i.agy = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #39
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit914

bb.fs:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i913, %.split.i907
  %.sroa.31.0.copyload.i910 = load ptr, ptr %i.j, align 8, !tbaa !471
  %i.agz = insertvalue { i16, ptr } poison, i16 %i.agp, 0
  %i.aha = insertvalue { i16, ptr } %i.agz, ptr %.sroa.31.0.copyload.i910, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit914

_ZNK4llvm3EVT13getScalarTypeEv.exit914:           ; preds = %bb.fq, %bb.fr, %bb.fs
  %.fca.1.insert.merged.i912 = phi { i16, ptr } [ %i.aha, %bb.fs ], [ %i.agx, %bb.fq ], [ %i.agy, %bb.fr ] ; 2 uses
  %i.ahb = extractvalue { i16, ptr } %.fca.1.insert.merged.i912, 0
  %i.ahc = extractvalue { i16, ptr } %.fca.1.insert.merged.i912, 1
  %.sroa.074.0.copyload = load i16, ptr %28, align 8, !tbaa !345
  %.sroa.276.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !471
  %.not.i.i915 = icmp eq i16 %i.ahb, %.sroa.074.0.copyload
  %i.ahd = icmp eq ptr %i.ahc, %.sroa.276.0.copyload
  %.not4.i916 = select i1 %.not.i.i915, i1 %i.ahd, i1 false
  br i1 %.not4.i916, label %bb.ft, label %.critedge21thread-pre-split

bb.ft:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit914
  %i.ahe = load i16, ptr %29, align 8, !tbaa !641 ; 3 uses
  %.not.i.i917 = icmp eq i16 %i.ahe, 0
  br i1 %.not.i.i917, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i921, label %.split.i918

.split.i918:                                      ; preds = %bb.ft
  %i.ahf = add i16 %i.ahe, -163
  %spec.select.i.i.i919 = icmp ult i16 %i.ahf, 53
  br i1 %spec.select.i.i.i919, label %bb.fu, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i920

_ZNK4llvm3EVT16isScalableVectorEv.exit.i921:      ; preds = %bb.ft
  %i.ahg = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br i1 %i.ahg, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i921, %.split.i918
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.86) #41
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i920:  ; preds = %.split.i918
  %i.ahh = zext i16 %i.ahe to i64
  %i.ahi = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ahh
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 -2
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !339
  %i.ahl = zext i16 %i.ahk to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit922

bb.fv:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i921
  %i.ahm = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #40
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit922

_ZNK4llvm3EVT20getVectorNumElementsEv.exit922:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i920, %bb.fv
  %i.ahn = phi i32 [ %i.ahl, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i920 ], [ %i.ahm, %bb.fv ]
  %i.aho = icmp eq i32 %i.ahn, 1
  br i1 %i.aho, label %bb.fw, label %.critedge21thread-pre-split

bb.fw:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit922
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !638 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 40
  %.sroa.01248.0.copyload = load ptr, ptr %i.ahr, align 8, !tbaa !465
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahq, i64 48
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !240
  br label %.critedge636

.critedge21thread-pre-split:                      ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit922, %_ZNK4llvm3EVT13getScalarTypeEv.exit914
  %.pr1283 = load i32, ptr %i.fx, align 8, !tbaa !468
  br label %.critedge21

.critedge21:                                      ; preds = %.critedge21thread-pre-split, %bb.fo
  %i.ahs = phi i32 [ %.pr1283, %.critedge21thread-pre-split ], [ %i.agn, %bb.fo ]
  %switch.tableidx = add i32 %i.ahs, -193         ; 2 uses
  %i.aht = icmp ult i32 %switch.tableidx, 3
  br i1 %i.aht, label %switch.lookup, label %.critedge636

switch.lookup:                                    ; preds = %.critedge21
  %i.ahu = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL24convertIntLogicToFPLogicjRKN4llvm5SDLocENS_3EVTENS_7SDValueES4_RNS_12SelectionDAGERNS_14TargetLowering15DAGCombinerInfoERKNS_12X86SubtargetE, i64 %i.ahu
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32      ; 2 uses
  %i.ahv = load i32, ptr %i.wh, align 8, !tbaa !342 ; 2 uses
  %i.ahw = icmp sgt i32 %i.ahv, 0
  br i1 %i.ahw, label %bb.fx, label %.thread1284

bb.fx:                                            ; preds = %switch.lookup
  %i.ahx = load i16, ptr %28, align 8, !tbaa !641 ; 2 uses
  %.not.i.i923 = icmp eq i16 %i.ahx, 14
  %i.ahy = load ptr, ptr %i.e, align 8
  %i.ahz = icmp eq ptr %i.ahy, null               ; 2 uses
  %.not4.i924 = select i1 %.not.i.i923, i1 %i.ahz, i1 false
  br i1 %.not4.i924, label %bb.gd, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.not1315 = icmp eq i32 %i.ahv, 1
  br i1 %.not1315, label %.thread1284, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not.i.i925 = icmp eq i16 %i.ahx, 15
  %.not4.i926 = select i1 %.not.i.i925, i1 %i.ahz, i1 false
  br i1 %.not4.i926, label %bb.gd, label %.thread1284

.thread1284:                                      ; preds = %switch.lookup, %bb.fz, %bb.fy
  %i.aia = phi i1 [ false, %bb.fy ], [ true, %bb.fz ], [ false, %switch.lookup ]
  %i.aib = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.aic = load i8, ptr %i.aib, align 4, !tbaa !363, !range !79, !noundef !80
  %i.aid = trunc nuw i8 %i.aic to i1
  br i1 %i.aid, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %.thread1284
  %i.aie = load i16, ptr %28, align 8, !tbaa !641
  %.not.i.i927 = icmp eq i16 %i.aie, 13
  %i.aif = load ptr, ptr %i.e, align 8
  %i.aig = icmp eq ptr %i.aif, null
  %.not4.i928 = select i1 %.not.i.i927, i1 %i.aig, i1 false
  br i1 %.not4.i928, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.thread1284
  br i1 %i.aia, label %bb.gc, label %.critedge636

bb.gc:                                            ; preds = %bb.gb
  %i.aih = load i16, ptr %28, align 8, !tbaa !641 ; 5 uses
  %.not.i929 = icmp eq i16 %i.aih, 0
  br i1 %.not.i929, label %.critedge636, label %.split1285

.split1285:                                       ; preds = %bb.gc
  %i.aii = add i16 %i.aih, -2
  %or.cond.i.i930 = icmp ult i16 %i.aii, 10
  %i.aij = add i16 %i.aih, -19                    ; 2 uses
  %or.cond3.i.i931 = icmp ult i16 %i.aij, 86
  %or.cond4.i.i932 = or i1 %or.cond.i.i930, %or.cond3.i.i931
  %i.aik = add i16 %i.aih, -163
  %spec.select.i.i933 = icmp ult i16 %i.aik, 32
  %i.ail = or i1 %spec.select.i.i933, %or.cond4.i.i932
  %spec.select.i.i935 = icmp ult i16 %i.aij, 197
  %or.cond1307 = and i1 %i.ail, %spec.select.i.i935
  br i1 %or.cond1307, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit938, label %.critedge636

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit938: ; preds = %.split1285
  %i.aim = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.ain = zext nneg i16 %i.aih to i64
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %i.ain
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !337
  %.not1316 = icmp eq ptr %i.aip, null
  br i1 %.not1316, label %.critedge636, label %bb.gd

bb.gd:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit938, %bb.ga, %bb.fz, %bb.fx
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 40
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !638 ; 4 uses
  %.sroa.01026.0.copyload = load ptr, ptr %i.air, align 8, !tbaa !465 ; 4 uses
  %.sroa.101032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %.sroa.101032.0.copyload = load i32, ptr %.sroa.101032.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 40
  %.sroa.01018.0.copyload = load ptr, ptr %i.ais, align 8, !tbaa !465 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.air, i64 48
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #39
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 72
  %i.aiu = load i64, ptr %i.ait, align 8, !tbaa !673
  store i64 %i.aiu, ptr %75, align 8, !tbaa !673
  %i.aiv = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 68
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !674
  store i32 %i.aix, ptr %i.aiv, align 8, !tbaa !676
  %i.aiy = getelementptr inbounds nuw i8, ptr %.sroa.01179.0.copyload, i64 56 ; 2 uses
  %.sroa.018.022.i.i939 = load ptr, ptr %i.aiy, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i940 = icmp eq ptr %.sroa.018.022.i.i939, null
  br i1 %.not23.i.i940, label %.critedge25, label %.lr.ph.i.i941

bb.ge:                                            ; preds = %.lr.ph.i.i941
  %.214.i.i944 = select i1 %i.ajc, i32 %.01224.i.i943, i32 0 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i942, i64 32
  %.sroa.018.0.i.i948 = load ptr, ptr %i.aiz, align 8, !tbaa !466 ; 2 uses
  %.not.i.i949 = icmp eq ptr %.sroa.018.0.i.i948, null
  br i1 %.not.i.i949, label %_ZNK4llvm7SDValue9hasOneUseEv.exit950, label %.lr.ph.i.i941

.lr.ph.i.i941:                                    ; preds = %bb.gd, %bb.ge
  %.sroa.018.025.i.i942 = phi ptr [ %.sroa.018.0.i.i948, %bb.ge ], [ %.sroa.018.022.i.i939, %bb.gd ] ; 2 uses
  %.01224.i.i943 = phi i32 [ %.214.i.i944, %bb.ge ], [ 1, %bb.gd ] ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i942, i64 8
  %i.ajb = load i32, ptr %i.aja, align 8, !tbaa !467
  %i.ajc = icmp ne i32 %i.ajb, %.sroa.66.0.copyload ; 2 uses
  %i.ajd = icmp ne i32 %.01224.i.i943, 0
  %cond.i.i945 = select i1 %i.ajc, i1 true, i1 %i.ajd
  br i1 %cond.i.i945, label %bb.ge, label %.critedge23

_ZNK4llvm7SDValue9hasOneUseEv.exit950:            ; preds = %bb.ge
  %i.aje = icmp eq i32 %.214.i.i944, 0
  br i1 %i.aje, label %bb.gf, label %.critedge23

bb.gf:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit950
  %i.ajf = getelementptr inbounds nuw i8, ptr %.sroa.01026.0.copyload, i64 24
  %i.ajg = load i32, ptr %i.ajf, align 8, !tbaa !468
  %i.ajh = icmp eq i32 %i.ajg, 248
  br i1 %i.ajh, label %bb.gg, label %.critedge23

bb.gg:                                            ; preds = %bb.gf
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.01026.0.copyload, i64 56
  %.sroa.018.022.i.i951 = load ptr, ptr %i.aji, align 8, !tbaa !466 ; 2 uses
  %.not23.i.i952 = icmp eq ptr %.sroa.018.022.i.i951, null
  br i1 %.not23.i.i952, label %.critedge23, label %.lr.ph.i.i953

bb.gh:                                            ; preds = %.lr.ph.i.i953
  %.214.i.i956 = select i1 %i.ajm, i32 %.01224.i.i955, i32 0 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i954, i64 32
  %.sroa.018.0.i.i960 = load ptr, ptr %i.ajj, align 8, !tbaa !466 ; 2 uses
  %.not.i.i961 = icmp eq ptr %.sroa.018.0.i.i960, null
  br i1 %.not.i.i961, label %_ZNK4llvm7SDValue9hasOneUseEv.exit962, label %.lr.ph.i.i953

.lr.ph.i.i953:                                    ; preds = %bb.gg, %bb.gh
  %.sroa.018.025.i.i954 = phi ptr [ %.sroa.018.0.i.i960, %bb.gh ], [ %.sroa.018.022.i.i951, %bb.gg ] ; 2 uses
  %.01224.i.i955 = phi i32 [ %.214.i.i956, %bb.gh ], [ 1, %bb.gg ] ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i954, i64 8
  %i.ajl = load i32, ptr %i.ajk, align 8, !tbaa !467
  %i.ajm = icmp ne i32 %i.ajl, %.sroa.101032.0.copyload ; 2 uses
  %i.ajn = icmp ne i32 %.01224.i.i955, 0
  %cond.i.i957 = select i1 %i.ajm, i1 true, i1 %i.ajn
  br i1 %cond.i.i957, label %bb.gh, label %.critedge23

_ZNK4llvm7SDValue9hasOneUseEv.exit962:            ; preds = %bb.gh
  %i.ajo = icmp eq i32 %.214.i.i956, 0
  br i1 %i.ajo, label %bb.gi, label %.critedge23

bb.gi:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit962
end_hunk_2
begin_hunk_3_@_ZL36lowerShuffleAsDecomposedShuffleMergeRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERKNS_5APIntERKNS_12X86SubtargetERNS_12SelectionDAGE:bb.a
  %i.gm = lshr i64 %i.ge, 1
  %.not17.i352 = icmp ule i64 %.112.ph.i346, %i.gm
  %spec.select.i353 = select i1 %.not17.i352, i1 %i.gl, i1 false
  br i1 %spec.select.i353, label %bb.bg, label %_ZNK4llvm8TypeSizecvmEv.exit.i

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %bb.ao, %_ZL27isSingleElementRepeatedMaskN4llvm8ArrayRefIiEE.exit.thread, %_ZL27isSingleElementRepeatedMaskN4llvm8ArrayRefIiEE.exit355
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.gn = sdiv i32 %i.l, 2                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.go = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %1, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  %.fca.0.extract76.i = extractvalue { ptr, i32 } %i.go, 0
  %.fca.1.extract77.i = extractvalue { ptr, i32 } %i.go, 1
  store ptr %.fca.0.extract76.i, ptr %16, align 16
  %.sroa.279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i32 %.fca.1.extract77.i, ptr %.sroa.279.0..sroa_idx.i, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.gq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %1, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  %.fca.0.extract71.i = extractvalue { ptr, i32 } %i.gq, 0
  %.fca.1.extract72.i = extractvalue { ptr, i32 } %i.gq, 1
  store ptr %.fca.0.extract71.i, ptr %i.gp, align 16
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 5 uses
  store i32 %.fca.1.extract72.i, ptr %.sroa.274.0..sroa_idx.i, align 8
  %.not53.i = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %.not53.i, label %.thread35.i, label %.lr.ph.i357

.lr.ph.i357:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.gr = and i64 %i.d, 4294967295
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ba, %.lr.ph.i357
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.i357 ], [ %indvars.iv.next.i362, %bb.ba ] ; 3 uses
  %.056.i = phi i8 [ 1, %.lr.ph.i357 ], [ %.2.i, %bb.ba ] ; 3 uses
  %.011655.i = phi i8 [ 1, %.lr.ph.i357 ], [ %.2118.i, %bb.ba ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0435.0.copyload, i64 %indvars.iv.i358
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !240 ; 4 uses
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gv = and i64 %indvars.iv.i358, 1
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %i.gv ; 7 uses
  %i.gx = icmp slt i32 %i.gt, %i.e
  %i.gy = load ptr, ptr %i.gw, align 16, !tbaa !472 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !468
  %i.hb = add i32 %i.ha, -53
  %spec.select.i.i.i359 = icmp ult i32 %i.hb, 2   ; 2 uses
  br i1 %i.gx, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  br i1 %spec.select.i.i.i359, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = icmp eq ptr %i.gy, %.sroa.0118.0.copyload
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.he = load i32, ptr %i.hd, align 8
  %i.hf = icmp eq i32 %i.he, %.sroa.2119.0.copyload
  %i.hg = select i1 %i.hc, i1 %i.hf, i1 false
  br i1 %i.hg, label %bb.au, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread

bb.au:                                            ; preds = %bb.at, %bb.as
  store ptr %.sroa.0118.0.copyload, ptr %i.gw, align 16, !tbaa !465
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.sroa.2119.0.copyload, ptr %.sroa.518.0..sroa_idx.i, align 8, !tbaa !240
  br label %bb.ay

bb.av:                                            ; preds = %bb.ar
  br i1 %spec.select.i.i.i359, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hh = icmp eq ptr %i.gy, %.sroa.0115.0.copyload
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = icmp eq i32 %i.hj, %.sroa.2116.0.copyload
  %i.hl = select i1 %i.hh, i1 %i.hk, i1 false
  br i1 %i.hl, label %bb.ax, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store ptr %.sroa.0115.0.copyload, ptr %i.gw, align 16, !tbaa !465
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %.sroa.2116.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !240
  %i.hm = sub nsw i32 %i.gt, %i.e
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.0124.i = phi i32 [ %i.gt, %bb.au ], [ %i.hm, %bb.ax ]
  %.0124.fr.i = freeze i32 %.0124.i               ; 4 uses
  %i.hn = icmp eq i32 %.0124.fr.i, -1
  br i1 %i.hn, label %.split.loop.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.ay, %bb.az
  %.0129.i = phi i32 [ %i.hp, %bb.az ], [ 0, %bb.ay ] ; 4 uses
  %.not137.i = icmp eq i32 %.0129.i, %i.e
  br i1 %.not137.i, label %.split.loop.exit.i, label %bb.az

bb.az:                                            ; preds = %.split.i
  %i.ho = add nsw i32 %.0129.i, %i.gn
  %i.hp = add nsw i32 %.0129.i, %i.l              ; 2 uses
  %i.hq = icmp sge i32 %.0124.fr.i, %.0129.i      ; 2 uses
  %i.hr = icmp slt i32 %.0124.fr.i, %i.ho         ; 3 uses
  %i.hs = icmp slt i32 %.0124.fr.i, %i.hp         ; 2 uses
  %i.ht = select i1 %i.hr, i1 %i.hq, i1 %i.hs
  br i1 %i.ht, label %.split.loop.exit45.loopexit.i, label %.split.i, !llvm.loop !4333

.split.loop.exit45.loopexit.i:                    ; preds = %bb.az
  %.not65.i = xor i1 %i.hr, true
  %i.hu = and i1 %i.hs, %.not65.i
  %i.hv = and i1 %i.hq, %i.hr
  %i.hw = select i1 %i.hv, i8 %.056.i, i8 0
  %i.hx = select i1 %i.hu, i8 %.011655.i, i8 0
  br label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %.split.i, %.split.loop.exit45.loopexit.i, %bb.ay
  %.1128.i = phi i8 [ %.011655.i, %bb.ay ], [ %i.hx, %.split.loop.exit45.loopexit.i ], [ 0, %.split.i ] ; 2 uses
  %.1126.i = phi i8 [ %.056.i, %bb.ay ], [ %i.hw, %.split.loop.exit45.loopexit.i ], [ 0, %.split.i ] ; 2 uses
  %i.hy = icmp ne i8 %.1126.i, 0
  %i.hz = icmp ne i8 %.1128.i, 0
  %or.cond4.i = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %or.cond4.i, label %bb.ba, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread

bb.ba:                                            ; preds = %.split.loop.exit.i, %bb.aq
  %.2118.i = phi i8 [ %.011655.i, %bb.aq ], [ %.1128.i, %.split.loop.exit.i ]
  %.2.i = phi i8 [ %.056.i, %bb.aq ], [ %.1126.i, %.split.loop.exit.i ] ; 2 uses
  %indvars.iv.next.i362 = add nuw nsw i64 %indvars.iv.i358, 1 ; 2 uses
  %.not.i363 = icmp eq i64 %indvars.iv.next.i362, %i.gr
  br i1 %.not.i363, label %.thread35.loopexit.i, label %bb.aq, !llvm.loop !4334

.thread35.loopexit.i:                             ; preds = %bb.ba
  %i.ia = trunc nuw i8 %.2.i to i1
  %i.ib = select i1 %i.ia, i32 840, i32 839
  br label %.thread35.i

.thread35.i:                                      ; preds = %.thread35.loopexit.i, %_ZNK4llvm8TypeSizecvmEv.exit.i
  %.0.lcssa.i = phi i32 [ 840, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ %i.ib, %.thread35.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ic, ptr %17, align 8, !tbaa !83
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store i32 0, ptr %i.id, align 8, !tbaa !633
  %i.ie = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 32, ptr %i.ie, align 4, !tbaa !634
  br i1 %i.v, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i: ; preds = %.thread35.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %17, ptr noundef nonnull %i.ic, i64 noundef %i.r, i64 noundef 4) #39
  %i.if = load ptr, ptr %17, align 8, !tbaa !83
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %.thread35.i
  %.not.i.i364 = icmp eq i64 %sext, 0
  br i1 %.not.i.i364, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i, label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i
  %.sink.i = phi ptr [ %i.if, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.loopexit.i ], [ %i.ic, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i365 = ashr exact i64 %sext, 30
  call void @llvm.memset.p0.i64(ptr align 4 %.sink.i, i8 -1, i64 %.idx.i.i.i.i.i.i.i365, i1 false), !tbaa !240
  br label %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i

_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i:      ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.sink.split.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.e, ptr %i.id, align 8, !tbaa !633
  br i1 %.not53.i, label %._crit_edge.i367, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i
  %i.ig = load ptr, ptr %16, align 16             ; 2 uses
  %i.ih = icmp eq ptr %.sroa.0115.0.copyload, %i.ig ; 2 uses
  %i.ii = load ptr, ptr %i.gp, align 16           ; 2 uses
  %i.ij = icmp eq ptr %.sroa.0115.0.copyload, %i.ii ; 2 uses
  %i.ik = icmp eq ptr %.sroa.0118.0.copyload, %i.ig ; 2 uses
  %i.il = icmp eq ptr %.sroa.0118.0.copyload, %i.ii ; 2 uses
  %i.im = load ptr, ptr %17, align 8              ; 8 uses
  %i.in = and i64 %i.d, 4294967295                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.in, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph59.i
  %i.io = shl nuw nsw i64 %i.in, 2                ; 2 uses
  %i.ip = getelementptr i8, ptr %i.im, i64 %i.io  ; 2 uses
  %i.iq = getelementptr i8, ptr %.sroa.0435.0.copyload, i64 %i.io
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 28
  %bound0 = icmp ult ptr %i.im, %i.iq
  %bound1 = icmp ult ptr %.sroa.0435.0.copyload, %i.ip
  %found.conflict = and i1 %bound0, %bound1
  %bound0659 = icmp ult ptr %i.im, %i.ir
  %bound1660 = icmp ult ptr %.sroa.279.0..sroa_idx.i, %i.ip
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx = or i1 %found.conflict, %found.conflict661
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 4294967292               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.2119.0.copyload, i64 0 ; 2 uses
  %broadcast.splatinsert662 = insertelement <4 x i32> poison, i32 %.sroa.2116.0.copyload, i64 0 ; 2 uses
  %i.is = load <4 x i32>, ptr %.sroa.279.0..sroa_idx.i, align 8 ; 2 uses
  %i.it = icmp eq <4 x i32> %broadcast.splatinsert662, %i.is
  %i.iu = shufflevector <4 x i1> %i.it, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.iv = select i1 %i.ih, <4 x i1> %i.iu, <4 x i1> zeroinitializer ; 2 uses
  %i.iw = xor <4 x i1> %i.iv, splat (i1 true)
  %i.ix = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !4343
  %i.iy = insertelement <4 x i32> poison, i32 %i.ix, i64 0
  %i.iz = icmp eq <4 x i32> %broadcast.splatinsert662, %i.iy
  %i.ja = shufflevector <4 x i1> %i.iz, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.jb = select i1 %i.ij, <4 x i1> %i.ja, <4 x i1> zeroinitializer
  %i.jc = icmp eq <4 x i32> %broadcast.splatinsert, %i.is
  %i.jd = shufflevector <4 x i1> %i.jc, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.je = select i1 %i.ik, <4 x i1> %i.jd, <4 x i1> zeroinitializer ; 2 uses
  %i.jf = xor <4 x i1> %i.je, splat (i1 true)
  %i.jg = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !4343
  %i.jh = insertelement <4 x i32> poison, i32 %i.jg, i64 0
  %i.ji = icmp eq <4 x i32> %broadcast.splatinsert, %i.jh
  %i.jj = shufflevector <4 x i1> %i.ji, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.jk = select i1 %i.il, <4 x i1> %i.jj, <4 x i1> zeroinitializer
  %broadcast.splatinsert664 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat665 = shufflevector <4 x i32> %broadcast.splatinsert664, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert666 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat667 = shufflevector <4 x i32> %broadcast.splatinsert666, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert668 = insertelement <4 x i32> poison, i32 %i.gn, i64 0
  %broadcast.splat669 = shufflevector <4 x i32> %broadcast.splatinsert668, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue675, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue675 ] ; 6 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0435.0.copyload, i64 %index
  %wide.load = load <4 x i32>, ptr %i.jl, align 4, !tbaa !240, !alias.scope !4344 ; 3 uses
  %i.jm = icmp sgt <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.jn = icmp slt <4 x i32> %wide.load, %broadcast.splat665 ; 3 uses
  %i.jo = select <4 x i1> %i.jn, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat665
  %i.jp = sub nsw <4 x i32> %wide.load, %i.jo
  %i.jq = freeze <4 x i32> %i.jp                  ; 3 uses
  %i.jr = call <4 x i32> @llvm.masked.srem.v4i32(<4 x i32> %i.jq, <4 x i32> %broadcast.splat667, <4 x i1> %i.jm)
  %i.js = sub nsw <4 x i32> %i.jq, %i.jr
  %i.jt = call <4 x i32> @llvm.masked.srem.v4i32(<4 x i32> %i.jq, <4 x i32> %broadcast.splat669, <4 x i1> %i.jm)
  %i.ju = shl nuw nsw <4 x i32> %i.jt, splat (i32 1)
  %i.jv = add nsw <4 x i32> %i.ju, %i.js
  %i.jw = xor <4 x i1> %i.jn, splat (i1 true)
  %i.jx = select <4 x i1> %i.jm, <4 x i1> %i.jw, <4 x i1> zeroinitializer ; 2 uses
  %i.jy = select <4 x i1> %i.jx, <4 x i1> %i.iw, <4 x i1> zeroinitializer
  %i.jz = select <4 x i1> %i.jm, <4 x i1> %i.jn, <4 x i1> zeroinitializer ; 2 uses
  %i.ka = select <4 x i1> %i.jz, <4 x i1> %i.jf, <4 x i1> zeroinitializer
  %i.kb = select <4 x i1> %i.ka, <4 x i1> %i.jk, <4 x i1> zeroinitializer
  %i.kc = select <4 x i1> %i.jy, <4 x i1> %i.jb, <4 x i1> %i.kb ; 2 uses
  %i.kd = select <4 x i1> %i.jz, <4 x i1> %i.je, <4 x i1> zeroinitializer
  %i.ke = select <4 x i1> %i.jx, <4 x i1> %i.iv, <4 x i1> %i.kd
  %i.kf = or <4 x i1> %i.ke, %i.kc                ; 4 uses
  %i.kg = zext <4 x i1> %i.kc to <4 x i32>
  %predphi = add nsw <4 x i32> %i.jv, %i.kg       ; 4 uses
  %i.kh = extractelement <4 x i1> %i.kf, i64 0
  br i1 %i.kh, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index
  %i.kj = extractelement <4 x i32> %predphi, i64 0
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.kk = extractelement <4 x i1> %i.kf, i64 1
  br i1 %i.kk, label %pred.store.if670, label %pred.store.continue671

pred.store.if670:                                 ; preds = %pred.store.continue
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = extractelement <4 x i32> %predphi, i64 1
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue671

pred.store.continue671:                           ; preds = %pred.store.if670, %pred.store.continue
  %i.ko = extractelement <4 x i1> %i.kf, i64 2
  br i1 %i.ko, label %pred.store.if672, label %pred.store.continue673

pred.store.if672:                                 ; preds = %pred.store.continue671
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = extractelement <4 x i32> %predphi, i64 2
  store i32 %i.kr, ptr %i.kq, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue673

pred.store.continue673:                           ; preds = %pred.store.if672, %pred.store.continue671
  %i.ks = extractelement <4 x i1> %i.kf, i64 3
  br i1 %i.ks, label %pred.store.if674, label %pred.store.continue675

pred.store.if674:                                 ; preds = %pred.store.continue673
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  %i.kv = extractelement <4 x i32> %predphi, i64 3
  store i32 %i.kv, ptr %i.ku, align 4, !tbaa !240, !alias.scope !4345, !noalias !4346
  br label %pred.store.continue675

pred.store.continue675:                           ; preds = %pred.store.if674, %pred.store.continue673
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !4339

middle.block:                                     ; preds = %pred.store.continue675
  %cmp.n = icmp eq i64 %i.in, %n.vec
  br i1 %cmp.n, label %._crit_edge.i367, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph59.i, %middle.block
  %indvars.iv62.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph59.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i367:                                 ; preds = %bb.bf, %middle.block, %_ZN4llvm11SmallVectorIiLj32EEC2EmRKi.exit.i
  store ptr %16, ptr %18, align 8, !tbaa !688
  %i.kx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.kx, align 8, !tbaa !689
  %i.ky = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef %.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(12) %0, i16 %1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %18) #39 ; 2 uses
  %.fca.0.extract13.i = extractvalue { ptr, i32 } %i.ky, 0
  %.fca.1.extract14.i = extractvalue { ptr, i32 } %i.ky, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.kz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %9, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %1, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.kz, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.kz, 1
  store ptr %.fca.0.extract5.i, ptr %19, align 8
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.28.0..sroa_idx.i, align 8
  %i.la = load ptr, ptr %17, align 8, !tbaa !83
  store ptr %i.la, ptr %20, align 8, !tbaa !691
  %i.lb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.lc = load i32, ptr %i.id, align 8, !tbaa !633
  %i.ld = zext i32 %i.lc to i64
  store i64 %i.ld, ptr %i.lb, align 8, !tbaa !692
  %i.le = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %9, i16 %1, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %.fca.0.extract13.i, i32 %.fca.1.extract14.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %20) #39 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.le, 0 ; 2 uses
  %i.lf = load ptr, ptr %17, align 8, !tbaa !83   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ic
  br i1 %i.lg, label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i367
  call void @free(ptr noundef %i.lf) #39
  br label %_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bf
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.bf ], [ %indvars.iv62.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0435.0.copyload, i64 %indvars.iv62.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !240 ; 3 uses
  %i.lj = icmp slt i32 %i.li, 0
  br i1 %i.lj, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %scalar.ph
  %.not141.i = icmp slt i32 %i.li, %i.e           ; 2 uses
  %i.lk = select i1 %.not141.i, i32 0, i32 %i.e
  %spec.select.i366 = sub nsw i32 %i.li, %i.lk
  %spec.select.fr.i = freeze i32 %spec.select.i366 ; 3 uses
  %i.ll = srem i32 %spec.select.fr.i, %i.l
  %i.lm = sub nsw i32 %spec.select.fr.i, %i.ll
  %i.ln = srem i32 %spec.select.fr.i, %i.gn
  %i.lo = shl nuw nsw i32 %i.ln, 1
  %i.lp = add nsw i32 %i.lo, %i.lm                ; 3 uses
  %i.lq = load i32, ptr %.sroa.279.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %.not141.i, label %bb.bd, label %.critedge.i

bb.bd:                                            ; preds = %bb.bc
  %i.lr = icmp eq i32 %.sroa.2119.0.copyload, %i.lq
  %i.ls = select i1 %i.ik, i1 %i.lr, i1 false
  br i1 %i.ls, label %.sink.split.i, label %.critedge143.i

.critedge.i:                                      ; preds = %bb.bc
  %i.lt = icmp eq i32 %.sroa.2116.0.copyload, %i.lq
  %i.lu = select i1 %i.ih, i1 %i.lt, i1 false
  br i1 %i.lu, label %.sink.split.i, label %.critedge145.i

.critedge143.i:                                   ; preds = %bb.bd
  %i.lv = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8
  %i.lw = icmp eq i32 %.sroa.2119.0.copyload, %i.lv
  %i.lx = select i1 %i.il, i1 %i.lw, i1 false
  br i1 %i.lx, label %bb.be, label %bb.bf

.critedge145.i:                                   ; preds = %.critedge.i
  %i.ly = load i32, ptr %.sroa.274.0..sroa_idx.i, align 8
  %i.lz = icmp eq i32 %.sroa.2116.0.copyload, %i.ly
  %i.ma = select i1 %i.ij, i1 %i.lz, i1 false
  br i1 %i.ma, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge145.i, %.critedge143.i
  %i.mb = add nsw i32 %i.lp, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.be, %.critedge.i, %bb.bd
  %.sink72.i = phi i32 [ %i.mb, %bb.be ], [ %i.lp, %.critedge.i ], [ %i.lp, %bb.bd ]
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv62.i
  store i32 %.sink72.i, ptr %i.mc, align 4, !tbaa !240
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split.i, %.critedge145.i, %.critedge143.i, %scalar.ph
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %.not140.i = icmp eq i64 %indvars.iv.next63.i, %i.in
  br i1 %.not140.i, label %._crit_edge.i367, label %scalar.ph, !llvm.loop !4340

_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit.thread: ; preds = %bb.aw, %bb.at, %.split.loop.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.bg

_ZL29lowerShuffleAsUNPCKAndPermuteRKN4llvm5SDLocENS_3MVTENS_7SDValueES4_NS_8ArrayRefIiEERNS_12SelectionDAGE.exit: ; preds = %._crit_edge.i367, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %.not528 = icmp eq ptr %.fca.0.extract.i, null
end_hunk_3
