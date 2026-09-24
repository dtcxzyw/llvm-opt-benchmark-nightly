Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLowering?download=true
inline.NumInlined: 54009
inline.NumDeleted: 7556
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 335
begin_hunk_0_@_ZL21LowerBuildVectorv16i8N4llvm7SDValueERKNS_5SDLocERKNS_5APIntEjjRNS_12SelectionDAGERKNS_12X86SubtargetE:bb.a
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !240
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19) #39 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.cu, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %.thread355, %bb.ad, %bb.y
  %.sroa.0299.1 = phi ptr [ %.fca.0.extract50, %bb.ad ], [ %.fca.0.extract103, %.thread355 ], [ %.sroa.0299.0, %bb.y ], [ %.fca.0.extract57, %bb.ac ] ; 2 uses
  %.sroa.12.1 = phi i32 [ %.fca.1.extract51, %bb.ad ], [ %.fca.1.extract104, %.thread355 ], [ %.sroa.12.0, %bb.y ], [ %.fca.1.extract58, %bb.ac ] ; 2 uses
  %.not368 = icmp eq ptr %.sroa.0329.3373, null
  br i1 %.not368, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32
  %i.cw = or i32 %5, %i.cv
  %or.cond7.not = icmp eq i32 %i.cw, 0
  br i1 %or.cond7.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val = load i32, ptr %i.b, align 8, !tbaa !342
  %i.cx = call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 62, i32 %.val, ptr noundef nonnull align 8 dereferenceable(920) %6, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.cx, 0
  %.fca.1.extract44 = extractvalue { ptr, i32 } %i.cx, 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store ptr %.sroa.0299.1, ptr %20, align 8, !tbaa !465
  store i32 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx303, align 8, !tbaa !240
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 73, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #39 ; 2 uses
  %.fca.0.extract36 = extractvalue { ptr, i32 } %i.cy, 0
  %.fca.1.extract37 = extractvalue { ptr, i32 } %i.cy, 1
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i16 62, ptr null, ptr %.fca.0.extract36, i32 %.fca.1.extract37) #39 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.cz, 0
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.cz, 1
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.0329.4 = phi ptr [ %.sroa.0329.3373, %bb.ae ], [ %.fca.0.extract43, %bb.ag ]
  %.sroa.21.4 = phi i32 [ %.sroa.21.3374, %bb.ae ], [ %.fca.1.extract44, %bb.ag ]
  store ptr %.sroa.0299.1, ptr %21, align 8, !tbaa !465
  store i32 %.sroa.12.1, ptr %.sroa.12.0..sroa_idx305, align 8, !tbaa !240
  %i.da = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 6, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21) #39 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.da, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.da, 1
  store ptr %.sroa.0329.4, ptr %22, align 8, !tbaa !465
  store i32 %.sroa.21.4, ptr %.sroa.21.0..sroa_idx339, align 8, !tbaa !240
  store ptr %.fca.0.extract19, ptr %23, align 8, !tbaa !465
  store i32 %.fca.1.extract20, ptr %.sroa.12.0..sroa_idx307, align 8, !tbaa !240
  %i.db = lshr exact i64 %indvars.iv, 1
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract14 = extractvalue { ptr, i32 } %i.dc, 0
  %.fca.1.extract15 = extractvalue { ptr, i32 } %i.dc, 1
  store ptr %.fca.0.extract14, ptr %24, align 8
  store i32 %.fca.1.extract15, ptr %.sroa.217.0..sroa_idx, align 8
  %i.dd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %6, i32 noundef 163, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 62, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #39 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.dd, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.dd, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.u
  %.sroa.0329.6 = phi ptr [ %.sroa.0329.3373, %bb.u ], [ %.fca.0.extract10, %bb.ai ], [ %.fca.0.extract26, %bb.ah ] ; 2 uses
  %.sroa.21.6 = phi i32 [ %.sroa.21.3374, %bb.u ], [ %.fca.1.extract11, %bb.ai ], [ %.fca.1.extract27, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.de = icmp samesign ult i64 %indvars.iv, 14
  br i1 %i.de, label %bb.u, label %bb.t, !llvm.loop !1612

bb.ak:                                            ; preds = %bb.a, %bb.t, %bb.c
  %.sroa.5.0 = phi i32 [ %.fca.1.extract203, %bb.c ], [ %.fca.1.extract, %bb.t ], [ 0, %bb.a ]
  %.sroa.0351.0 = phi ptr [ %.fca.0.extract202, %bb.c ], [ %.fca.0.extract, %bb.t ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0351.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.5.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL21LowerBuildVectorv4x32N4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGERKNS_12X86SubtargetE(ptr nofree readonly captures(none) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519752) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::ArrayRef.420", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %9 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 360 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !342
  %i.d = icmp slt i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 513
  %i.f = load i8, ptr %i.e, align 1, !range !79
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond357 = select i1 %i.d, i1 true, i1 %i.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !638 ; 11 uses
  br i1 %or.cond357, label %._crit_edge400, label %bb.b

._crit_edge400:                                   ; preds = %bb.a
  %.sroa.0284.0.copyload.pre = load ptr, ptr %.pre, align 8, !tbaa !465
  %.sroa.6286.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.sroa.6286.0.copyload.pre = load i32, ptr %.sroa.6286.0..sroa_idx.phi.trans.insert, align 8, !tbaa !240
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %i.i = load ptr, ptr %.pre, align 8, !tbaa !472 ; 5 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !472
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 88
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.m, %i.o
  %i.q = select i1 %i.k, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !472  ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !472
  %i.v = icmp eq ptr %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.x, %i.z
  %i.ab = select i1 %i.v, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp ne ptr %i.i, %i.t
  %i.ad = icmp ne i32 %i.m, %i.x
  %.not3.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %.not3.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !469
  %i.ag = zext i32 %1 to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ah, align 8, !tbaa !345 ; 3 uses
  %i.ai = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.aj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !345 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %.pre, i64 12, i1 false), !tbaa.struct !683
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false), !tbaa.struct !683
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %i.al, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %.fca.0.extract140 = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract141 = extractvalue { ptr, i32 } %i.ao, 1
  store ptr %.fca.0.extract140, ptr %i.an, align 16
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %.fca.1.extract141, ptr %.sroa.2143.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %i.al, ptr null) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %.fca.0.extract135 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract136 = extractvalue { ptr, i32 } %i.aq, 1
  store ptr %.fca.0.extract135, ptr %i.ap, align 16
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 %.fca.1.extract136, ptr %.sroa.2138.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %9, ptr %6, align 8, !tbaa !686
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !672
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.420") align 8 %6) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.fca.0.extract125 = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract126 = extractvalue { ptr, i32 } %i.ar, 1
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 154, ptr null, ptr %.fca.0.extract125, i32 %.fca.1.extract126) #39 ; 2 uses
  %.fca.0.extract121 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract122 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract121, ptr %10, align 8, !tbaa !465
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract122, ptr %.sroa.4133.0..sroa_idx, align 8, !tbaa !240
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 741, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 154, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #39 ; 2 uses
  %.fca.0.extract114 = extractvalue { ptr, i32 } %i.at, 0
  %.fca.1.extract115 = extractvalue { ptr, i32 } %i.at, 1
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i, ptr null, ptr %.fca.0.extract114, i32 %.fca.1.extract115) #39 ; 2 uses
  %.fca.0.extract106 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract107 = extractvalue { ptr, i32 } %i.au, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.f:                                             ; preds = %._crit_edge400, %bb.d, %bb.c, %bb.b
  %.sroa.6286.0.copyload = phi i32 [ %.sroa.6286.0.copyload.pre, %._crit_edge400 ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.0284.0.copyload = phi ptr [ %.sroa.0284.0.copyload.pre, %._crit_edge400 ], [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0284.0.copyload, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !468
  %i.ay = add i32 %i.ax, -53
  %spec.select.i.i = icmp ult i32 %i.ay, 2
  br i1 %spec.select.i.i, label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload, i32 %.sroa.6286.0.copyload) #39
  br i1 %i.az, label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit:       ; preds = %bb.g
  %i.ba = tail call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload, i32 %.sroa.6286.0.copyload) #39
  %spec.select420 = zext i1 %i.ba to i64
  br label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191

_ZNSt6bitsetILm4EE9referenceaSEb.exit191:         ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit, %bb.g, %bb.f
  %.sroa.0.1329331 = phi i64 [ 1, %bb.f ], [ 0, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit ], [ 0, %bb.g ] ; 4 uses
  %.sroa.0321.1 = phi i64 [ 1, %bb.f ], [ %spec.select420, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit ], [ 1, %bb.g ] ; 2 uses
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %.sroa.0284.0.copyload.1 = load ptr, ptr %i.bc, align 8, !tbaa !465 ; 3 uses
  %.sroa.6286.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %.sroa.6286.0.copyload.1 = load i32, ptr %.sroa.6286.0..sroa_idx.1, align 8, !tbaa !240 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0284.0.copyload.1, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !468
  %i.bf = add i32 %i.be, -53
  %spec.select.i.i.1 = icmp ult i32 %i.bf, 2
  br i1 %spec.select.i.i.1, label %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.1, label %bb.h

bb.h:                                             ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit191
  %i.bg = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload.1, i32 %.sroa.6286.0.copyload.1) #39
  br i1 %i.bg, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.1, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.1

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.1:     ; preds = %bb.h
  %i.bh = tail call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload.1, i32 %.sroa.6286.0.copyload.1) #39
  br i1 %i.bh, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.1, label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.1

_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.1:   ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit191
  %i.bi = or disjoint i64 %.sroa.0.1329331, 2
  br label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.1

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.1: ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.1, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.1, %bb.h
  %.sroa.0.1329332.1 = phi i64 [ %.sroa.0.1329331, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.1 ], [ %.sroa.0.1329331, %bb.h ], [ %i.bi, %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.1 ]
  %i.bj = or disjoint i64 %.sroa.0321.1, 2
  br label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.1

_ZNSt6bitsetILm4EE9referenceaSEb.exit191.1:       ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.1, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.1
  %.sroa.0.1329331.1 = phi i64 [ %.sroa.0.1329332.1, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.1 ], [ %.sroa.0.1329331, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.1 ] ; 2 uses
  %.sroa.0321.1.1 = phi i64 [ %i.bj, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.1 ], [ %.sroa.0321.1, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.1 ] ; 2 uses
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %.sroa.0284.0.copyload.2 = load ptr, ptr %i.bl, align 8, !tbaa !465 ; 3 uses
  %.sroa.6286.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %.sroa.6286.0.copyload.2 = load i32, ptr %.sroa.6286.0..sroa_idx.2, align 8, !tbaa !240 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0284.0.copyload.2, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !468
  %i.bo = add i32 %i.bn, -53
  %spec.select.i.i.2 = icmp ult i32 %i.bo, 2
  br i1 %spec.select.i.i.2, label %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.2, label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.1
  %i.bp = and i64 %.sroa.0.1329331.1, -5          ; 3 uses
  %i.bq = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload.2, i32 %.sroa.6286.0.copyload.2) #39
  br i1 %i.bq, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.2, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.2

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.2:     ; preds = %bb.i
  %i.br = tail call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload.2, i32 %.sroa.6286.0.copyload.2) #39
  br i1 %i.br, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.2, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.2
  %i.bs = and i64 %.sroa.0321.1.1, -5
  br label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.2

_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.2:   ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.1
  %i.bt = or i64 %.sroa.0.1329331.1, 4
  br label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.2

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.2: ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.2, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.2, %bb.i
  %.sroa.0.1329332.2 = phi i64 [ %i.bp, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.2 ], [ %i.bp, %bb.i ], [ %i.bt, %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.2 ]
  %i.bu = or i64 %.sroa.0321.1.1, 4
  br label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.2

_ZNSt6bitsetILm4EE9referenceaSEb.exit191.2:       ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.2, %bb.j
  %.sroa.0.1329331.2 = phi i64 [ %.sroa.0.1329332.2, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.2 ], [ %i.bp, %bb.j ] ; 2 uses
  %.sroa.0321.1.2 = phi i64 [ %i.bu, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.2 ], [ %i.bs, %bb.j ] ; 2 uses
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %.sroa.0284.0.copyload.3 = load ptr, ptr %i.bw, align 8, !tbaa !465 ; 3 uses
  %.sroa.6286.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %.sroa.6286.0.copyload.3 = load i32, ptr %.sroa.6286.0..sroa_idx.3, align 8, !tbaa !240 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0284.0.copyload.3, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !468
  %i.bz = add i32 %i.by, -53
  %spec.select.i.i.3 = icmp ult i32 %i.bz, 2
  br i1 %spec.select.i.i.3, label %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.3, label %bb.k

bb.k:                                             ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.2
  %i.ca = and i64 %.sroa.0.1329331.2, -9          ; 3 uses
  %i.cb = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload.3, i32 %.sroa.6286.0.copyload.3) #39
  br i1 %i.cb, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.3, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.3

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.3:     ; preds = %bb.k
  %i.cc = tail call noundef zeroext i1 @_ZN4llvm16isNullFPConstantENS_7SDValueE(ptr nonnull %.sroa.0284.0.copyload.3, i32 %.sroa.6286.0.copyload.3) #39
  br i1 %i.cc, label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.3, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.3
  %i.cd = and i64 %.sroa.0321.1.2, -9
  br label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.3

_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.3:   ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.2
  %i.ce = or i64 %.sroa.0.1329331.2, 8
  br label %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.3

_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.3: ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.3, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.3, %bb.k
  %.sroa.0.1329332.3 = phi i64 [ %i.ca, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.3 ], [ %i.ca, %bb.k ], [ %i.ce, %_ZNSt6bitsetILm4EE9referenceaSEb.exit.thread.3 ]
  %i.cf = or i64 %.sroa.0321.1.2, 8
  br label %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.3

_ZNSt6bitsetILm4EE9referenceaSEb.exit191.3:       ; preds = %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.3, %bb.l
  %.sroa.0.1329331.3 = phi i64 [ %.sroa.0.1329332.3, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.3 ], [ %i.ca, %bb.l ]
  %.sroa.0321.1.3 = phi i64 [ %i.cf, %_ZN4llvm3X8610isZeroNodeENS_7SDValueE.exit.thread.3 ], [ %i.cd, %bb.l ] ; 7 uses
  %i.cg = and i64 %.sroa.0321.1.3, 1
  %.not361 = icmp eq i64 %i.cg, 0                 ; 2 uses
  br i1 %.not361, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.3
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %.sroa.0265.0.copyload = load ptr, ptr %i.ch, align 8, !tbaa !465 ; 3 uses
  %.sroa.7269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.7269.sroa.0.0.copyload = load i32, ptr %.sroa.7269.0..sroa_idx, align 8, !tbaa !240
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !468
  %.not = icmp eq i32 %i.cj, 164
  br i1 %.not, label %bb.n, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !638 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !472
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !468
  switch i32 %i.cp, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread [
    i32 37, label %bb.o
    i32 12, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !472
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !467
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !469
  %i.cv = zext i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv
  %.sroa.0.0.copyload.i.i.i192 = load i16, ptr %i.cw, align 8, !tbaa !345 ; 2 uses
  %i.cx = add i16 %.sroa.0.0.copyload.i.i.i192, -19
  %spec.select.i.i193 = icmp ult i16 %i.cx, 144
  br i1 %spec.select.i.i193, label %_ZNK4llvm3MVT14is128BitVectorEv.exit, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit:             ; preds = %bb.o
  %i.cy = zext nneg i16 %.sroa.0.0.copyload.i.i.i192 to i64
  %i.cz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 -16
  %.sroa.0.0.copyload.i.i.i194 = load i64, ptr %i.da, align 16
  %i.db = icmp eq i64 %.sroa.0.0.copyload.i.i.i194, 128
  br i1 %i.db, label %bb.p, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.p:                                             ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit, %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.3
  %.sroa.0273.3 = phi ptr [ null, %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.3 ], [ %.sroa.0265.0.copyload, %_ZNK4llvm3MVT14is128BitVectorEv.exit ] ; 3 uses
  %.sroa.7276.3 = phi i32 [ 0, %_ZNSt6bitsetILm4EE9referenceaSEb.exit191.3 ], [ %.sroa.7269.sroa.0.0.copyload, %_ZNK4llvm3MVT14is128BitVectorEv.exit ] ; 2 uses
  %i.dc = and i64 %.sroa.0321.1.3, 2
  %.not361.1 = icmp eq i64 %i.dc, 0               ; 2 uses
  br i1 %.not361.1, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %.sroa.0265.0.copyload.1 = load ptr, ptr %i.de, align 8, !tbaa !465 ; 3 uses
  %.sroa.7269.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %.sroa.7269.sroa.0.0.copyload.1 = load i32, ptr %.sroa.7269.0..sroa_idx.1, align 8, !tbaa !240
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload.1, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !468
  %.not.1 = icmp eq i32 %i.dg, 164
  br i1 %.not.1, label %bb.r, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload.1, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !638 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !472
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !468
  switch i32 %i.dm, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread [
    i32 37, label %bb.s
    i32 12, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !472
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !467
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !469
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ds
  %.sroa.0.0.copyload.i.i.i192.1 = load i16, ptr %i.dt, align 8, !tbaa !345 ; 2 uses
  %i.du = add i16 %.sroa.0.0.copyload.i.i.i192.1, -19
  %spec.select.i.i193.1 = icmp ult i16 %i.du, 144
  br i1 %spec.select.i.i193.1, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.1, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit.1:           ; preds = %bb.s
  %i.dv = zext nneg i16 %.sroa.0.0.copyload.i.i.i192.1 to i64
  %i.dw = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %.sroa.0.0.copyload.i.i.i194.1 = load i64, ptr %i.dx, align 16
  %i.dy = icmp eq i64 %.sroa.0.0.copyload.i.i.i194.1, 128
  br i1 %i.dy, label %bb.t, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.t:                                             ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.1
  %.not184.1 = icmp eq ptr %.sroa.0273.3, null
  br i1 %.not184.1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.p
  %.sroa.0273.3.1 = phi ptr [ %.sroa.0273.3, %bb.p ], [ %.sroa.0265.0.copyload.1, %bb.u ], [ %.sroa.0273.3, %bb.t ] ; 3 uses
  %.sroa.7276.3.1 = phi i32 [ %.sroa.7276.3, %bb.p ], [ %.sroa.7269.sroa.0.0.copyload.1, %bb.u ], [ %.sroa.7276.3, %bb.t ] ; 2 uses
  %.4.1 = phi i32 [ 0, %bb.p ], [ 1, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.dz = and i64 %.sroa.0321.1.3, 4
  %.not361.2 = icmp eq i64 %i.dz, 0               ; 2 uses
  br i1 %.not361.2, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ea = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %.sroa.0265.0.copyload.2 = load ptr, ptr %i.eb, align 8, !tbaa !465 ; 3 uses
  %.sroa.7269.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %.sroa.7269.sroa.0.0.copyload.2 = load i32, ptr %.sroa.7269.0..sroa_idx.2, align 8, !tbaa !240
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload.2, i64 24
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !468
  %.not.2 = icmp eq i32 %i.ed, 164
  br i1 %.not.2, label %bb.x, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload.2, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !638 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !472
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !468
  switch i32 %i.ej, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread [
    i32 37, label %bb.y
    i32 12, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !472
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !467
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !469
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ep
  %.sroa.0.0.copyload.i.i.i192.2 = load i16, ptr %i.eq, align 8, !tbaa !345 ; 2 uses
  %i.er = add i16 %.sroa.0.0.copyload.i.i.i192.2, -19
  %spec.select.i.i193.2 = icmp ult i16 %i.er, 144
  br i1 %spec.select.i.i193.2, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.2, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit.2:           ; preds = %bb.y
  %i.es = zext nneg i16 %.sroa.0.0.copyload.i.i.i192.2 to i64
  %i.et = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 -16
  %.sroa.0.0.copyload.i.i.i194.2 = load i64, ptr %i.eu, align 16
  %i.ev = icmp eq i64 %.sroa.0.0.copyload.i.i.i194.2, 128
  br i1 %i.ev, label %bb.z, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.z:                                             ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.2
  %.not184.2 = icmp eq ptr %.sroa.0273.3.1, null
  br i1 %.not184.2, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.v
  %.sroa.0273.3.2 = phi ptr [ %.sroa.0273.3.1, %bb.v ], [ %.sroa.0265.0.copyload.2, %bb.aa ], [ %.sroa.0273.3.1, %bb.z ] ; 3 uses
  %.sroa.7276.3.2 = phi i32 [ %.sroa.7276.3.1, %bb.v ], [ %.sroa.7269.sroa.0.0.copyload.2, %bb.aa ], [ %.sroa.7276.3.1, %bb.z ] ; 2 uses
  %.4.2 = phi i32 [ %.4.1, %bb.v ], [ 2, %bb.aa ], [ %.4.1, %bb.z ] ; 2 uses
  %i.ew = and i64 %.sroa.0321.1.3, 8
  %.not361.3 = icmp eq i64 %i.ew, 0               ; 2 uses
  br i1 %.not361.3, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ex = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 120
  %.sroa.0265.0.copyload.3 = load ptr, ptr %i.ey, align 8, !tbaa !465 ; 3 uses
  %.sroa.7269.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ex, i64 128
  %.sroa.7269.sroa.0.0.copyload.3 = load i32, ptr %.sroa.7269.0..sroa_idx.3, align 8, !tbaa !240
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload.3, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !468
  %.not.3 = icmp eq i32 %i.fa, 164
  br i1 %.not.3, label %bb.ad, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0265.0.copyload.3, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !638 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !472
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !468
  switch i32 %i.fg, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread [
    i32 37, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !472
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !467
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !469
  %i.fm = zext i32 %i.fj to i64
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fm
  %.sroa.0.0.copyload.i.i.i192.3 = load i16, ptr %i.fn, align 8, !tbaa !345 ; 2 uses
  %i.fo = add i16 %.sroa.0.0.copyload.i.i.i192.3, -19
  %spec.select.i.i193.3 = icmp ult i16 %i.fo, 144
  br i1 %spec.select.i.i193.3, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.3, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit.3:           ; preds = %bb.ae
  %i.fp = zext nneg i16 %.sroa.0.0.copyload.i.i.i192.3 to i64
  %i.fq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 -16
  %.sroa.0.0.copyload.i.i.i194.3 = load i64, ptr %i.fr, align 16
  %i.fs = icmp eq i64 %.sroa.0.0.copyload.i.i.i194.3, 128
  br i1 %i.fs, label %bb.af, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.af:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.3
  %.not184.3 = icmp eq ptr %.sroa.0273.3.2, null
  br i1 %.not184.3, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ab
  %.sroa.0273.3.3 = phi ptr [ %.sroa.0273.3.2, %bb.ab ], [ %.sroa.0265.0.copyload.3, %bb.ag ], [ %.sroa.0273.3.2, %bb.af ] ; 2 uses
  %.sroa.7276.3.3 = phi i32 [ %.sroa.7276.3.2, %bb.ab ], [ %.sroa.7269.sroa.0.0.copyload.3, %bb.ag ], [ %.sroa.7276.3.2, %bb.af ]
  %.4.3 = phi i32 [ %.4.2, %bb.ab ], [ 3, %bb.ag ], [ %.4.2, %bb.af ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0273.3.3, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !638 ; 3 uses
  %.sroa.0249.0.copyload = load ptr, ptr %i.fu, align 8, !tbaa !465 ; 8 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !240 ; 8 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %.sroa.31.0.copyload = load i32, ptr %.sroa.31.0..sroa_idx, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0249.0.copyload, i64 48 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !469
  %i.fx = zext i32 %.sroa.18.0.copyload to i64    ; 2 uses
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.fx
  %.sroa.0.0.copyload.i.i.i195 = load i16, ptr %i.fy, align 8, !tbaa !345 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  br i1 %.not361, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fz = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %.sroa.0238.0.copyload = load ptr, ptr %i.fz, align 8, !tbaa !465 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !638 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !472
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !654 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !643
  %i.gj = icmp ult i32 %i.gi, 65
  %i.gk = load ptr, ptr %i.gg, align 8
  %spec.select.i.i.i.i.i = select i1 %i.gj, ptr %i.gg, ptr %i.gk
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !357 ; 2 uses
  %i.gl = load ptr, ptr %i.gb, align 8, !tbaa !472
  %i.gm = icmp eq ptr %i.gl, %.sroa.0249.0.copyload
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = icmp eq i32 %i.go, %.sroa.18.0.copyload
  %.not3.i196.not = select i1 %i.gm, i1 %i.gp, i1 false
  %i.gq = and i64 %.0.i.i.i.i.i, 4294967295
  %.not185 = icmp eq i64 %i.gq, 0
  %or.cond = and i1 %.not185, %.not3.i196.not
  br i1 %or.cond, label %bb.aj, label %.thread348

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %storemerge = phi i32 [ 4, %bb.ah ], [ 0, %bb.ai ]
  store i32 %storemerge, ptr %i.a, align 16, !tbaa !240
  br i1 %.not361.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gr = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %.sroa.0238.0.copyload.1 = load ptr, ptr %i.gs, align 8, !tbaa !465 ; 2 uses
  %.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload.1, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !638 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !472
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 88
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !654 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !643
  %i.hc = icmp ult i32 %i.hb, 65
  %i.hd = load ptr, ptr %i.gz, align 8
  %spec.select.i.i.i.i.i.1 = select i1 %i.hc, ptr %i.gz, ptr %i.hd
  %.0.i.i.i.i.i.1 = load i64, ptr %spec.select.i.i.i.i.i.1, align 8, !tbaa !357 ; 2 uses
  %i.he = load ptr, ptr %i.gu, align 8, !tbaa !472
  %i.hf = icmp eq ptr %i.he, %.sroa.0249.0.copyload
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hh = load i32, ptr %i.hg, align 8
  %i.hi = icmp eq i32 %i.hh, %.sroa.18.0.copyload
  %.not3.i196.not.1 = select i1 %i.hf, i1 %i.hi, i1 false
  %i.hj = and i64 %.0.i.i.i.i.i.1, 4294967295
  %.not185.1 = icmp eq i64 %i.hj, 1
  %or.cond.1 = and i1 %.not185.1, %.not3.i196.not.1
  br i1 %or.cond.1, label %bb.al, label %.thread348

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink = phi i32 [ 5, %bb.aj ], [ 1, %bb.ak ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sink, ptr %i.hk, align 4, !tbaa !240
  br i1 %.not361.2, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hl = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %.sroa.0238.0.copyload.2 = load ptr, ptr %i.hm, align 8, !tbaa !465 ; 2 uses
  %.sroa.8.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.hl, i64 88
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload.2, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !638 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !472
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 88
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !654 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !643
  %i.hw = icmp ult i32 %i.hv, 65
  %i.hx = load ptr, ptr %i.ht, align 8
  %spec.select.i.i.i.i.i.2 = select i1 %i.hw, ptr %i.ht, ptr %i.hx
  %.0.i.i.i.i.i.2 = load i64, ptr %spec.select.i.i.i.i.i.2, align 8, !tbaa !357 ; 2 uses
  %i.hy = load ptr, ptr %i.ho, align 8, !tbaa !472
  %i.hz = icmp eq ptr %i.hy, %.sroa.0249.0.copyload
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.ib = load i32, ptr %i.ia, align 8
  %i.ic = icmp eq i32 %i.ib, %.sroa.18.0.copyload
  %.not3.i196.not.2 = select i1 %i.hz, i1 %i.ic, i1 false
  %i.id = and i64 %.0.i.i.i.i.i.2, 4294967295
  %.not185.2 = icmp eq i64 %i.id, 2
  %or.cond.2 = and i1 %.not185.2, %.not3.i196.not.2
  br i1 %or.cond.2, label %bb.an, label %.thread348

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink422 = phi i32 [ 6, %bb.al ], [ 2, %bb.am ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sink422, ptr %i.ie, align 8, !tbaa !240
  br i1 %.not361.3, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.if = load ptr, ptr %i.av, align 8, !tbaa !638 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 120
  %.sroa.0238.0.copyload.3 = load ptr, ptr %i.ig, align 8, !tbaa !465 ; 2 uses
  %.sroa.8.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.if, i64 128
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload.3, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !638 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !472
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 88
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !654 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !643
  %i.iq = icmp ult i32 %i.ip, 65
  %i.ir = load ptr, ptr %i.in, align 8
  %spec.select.i.i.i.i.i.3 = select i1 %i.iq, ptr %i.in, ptr %i.ir
  %.0.i.i.i.i.i.3 = load i64, ptr %spec.select.i.i.i.i.i.3, align 8, !tbaa !357 ; 2 uses
  %i.is = load ptr, ptr %i.ii, align 8, !tbaa !472
  %i.it = icmp eq ptr %i.is, %.sroa.0249.0.copyload
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.iv = load i32, ptr %i.iu, align 8
  %i.iw = icmp eq i32 %i.iv, %.sroa.18.0.copyload
  %.not3.i196.not.3 = select i1 %i.it, i1 %i.iw, i1 false
  %i.ix = and i64 %.0.i.i.i.i.i.3, 4294967295
  %.not185.3 = icmp eq i64 %i.ix, 3
  %or.cond.3 = and i1 %.not185.3, %.not3.i196.not.3
  br i1 %or.cond.3, label %bb.ap, label %.thread348

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink424 = phi i32 [ 7, %bb.an ], [ 3, %bb.ao ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sink424, ptr %i.iy, align 4, !tbaa !240
  %i.iz = icmp eq i64 %.sroa.0321.1.3, %.sroa.0.1329331.3
  br i1 %i.iz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ja = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i.i.i195, ptr null) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %.val = load i32, ptr %i.b, align 8, !tbaa !342
  %i.jb = tail call fastcc { ptr, i32 } @_ZL13getZeroVectorN4llvm3MVTERKNS_12X86SubtargetERNS_12SelectionDAGERKNS_5SDLocE(i16 %.sroa.0.0.copyload.i.i.i195, i32 %.val, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.ja, %bb.aq ], [ %i.jb, %bb.ar ] ; 2 uses
  %.sroa.574.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.073.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.jc = load ptr, ptr %i.fv, align 8, !tbaa !469
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.fx
  %.sroa.0.0.copyload.i.i.i197 = load i16, ptr %i.jd, align 8, !tbaa !345
  %.not362 = icmp eq i16 %.sroa.0.0.copyload.i.i.i197, %.sroa.0.0.copyload.i.i.i195
  br i1 %.not362, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.je = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i195, ptr null, ptr nonnull %.sroa.0249.0.copyload, i32 %.sroa.18.0.copyload) #39 ; 2 uses
  %.fca.0.extract52 = extractvalue { ptr, i32 } %i.je, 0
  %.fca.1.extract53 = extractvalue { ptr, i32 } %i.je, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.0249.0 = phi ptr [ %.fca.0.extract52, %bb.at ], [ %.sroa.0249.0.copyload, %bb.as ] ; 3 uses
  %.sroa.18.0 = phi i32 [ %.fca.1.extract53, %bb.at ], [ %.sroa.18.0.copyload, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0249.0, i64 72
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !673
  store i64 %i.jg, ptr %11, align 8, !tbaa !673
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0249.0, i64 68
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !674
  store i32 %i.jj, ptr %i.jh, align 8, !tbaa !676
  store ptr %.sroa.073.0, ptr %12, align 8, !tbaa !465
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sroa.574.0, ptr %.sroa.574.0..sroa_idx, align 8, !tbaa !240
  store ptr %i.a, ptr %13, align 8, !tbaa !691
  %i.jk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 4, ptr %i.jk, align 8, !tbaa !692
  %i.jl = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i195, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr %.sroa.0249.0, i32 %.sroa.18.0, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %13) #39 ; 2 uses
  %.fca.0.extract41 = extractvalue { ptr, i32 } %i.jl, 0
  %.fca.1.extract42 = extractvalue { ptr, i32 } %i.jl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %._crit_edge.thread416

.thread348:                                       ; preds = %bb.ai, %bb.ak, %bb.am, %bb.ao
  %i.jm = phi i1 [ true, %bb.ai ], [ true, %bb.ak ], [ true, %bb.am ], [ false, %bb.ao ]
  %.0178386.lcssa.wide = phi i32 [ 0, %bb.ai ], [ 1, %bb.ak ], [ 2, %bb.am ], [ 3, %bb.ao ] ; 3 uses
  %.sroa.0238.0.copyload.lcssa = phi ptr [ %.sroa.0238.0.copyload, %bb.ai ], [ %.sroa.0238.0.copyload.1, %bb.ak ], [ %.sroa.0238.0.copyload.2, %bb.am ], [ %.sroa.0238.0.copyload.3, %bb.ao ] ; 2 uses
  %.sroa.8.0.copyload.lcssa.in = phi ptr [ %.sroa.8.0..sroa_idx, %bb.ai ], [ %.sroa.8.0..sroa_idx.1, %bb.ak ], [ %.sroa.8.0..sroa_idx.2, %bb.am ], [ %.sroa.8.0..sroa_idx.3, %bb.ao ]
  %.lcssa.in = phi i64 [ %.0.i.i.i.i.i, %bb.ai ], [ %.0.i.i.i.i.i.1, %bb.ak ], [ %.0.i.i.i.i.i.2, %bb.am ], [ %.0.i.i.i.i.i.3, %bb.ao ]
  %.lcssa = trunc i64 %.lcssa.in to i32
  %i.jn = load i32, ptr %i.b, align 8, !tbaa !342
  %i.jo = icmp sgt i32 %i.jn, 4
  br i1 %i.jo, label %bb.av, label %._crit_edge.thread416

bb.av:                                            ; preds = %.thread348
  %.sroa.8.0.copyload.lcssa = load i32, ptr %.sroa.8.0.copyload.lcssa.in, align 8, !tbaa !240
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload.lcssa, i64 40
  %18 = load ptr, ptr %17, align 8, !tbaa !638    ; 3 uses
  %.sroa.0223.0.copyload = load ptr, ptr %18, align 8, !tbaa !465 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.7.0.copyload.a = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !240 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %i.jp = icmp eq ptr %.sroa.0238.0.copyload.lcssa, %.sroa.0273.3.3
  %i.jq = icmp eq i32 %.sroa.8.0.copyload.lcssa, %.sroa.7276.3.3
  %i.jr = select i1 %i.jp, i1 %i.jq, i1 false
  %i.js = icmp eq i32 %.0178386.lcssa.wide, %.4.3
  %or.cond189 = and i1 %i.jr, %i.js               ; 2 uses
  %spec.select = select i1 %or.cond189, ptr null, ptr %.sroa.0249.0.copyload ; 2 uses
  %spec.select358 = select i1 %or.cond189, i32 0, i32 %.sroa.18.0.copyload ; 2 uses
  br i1 %i.jm, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.av
  %19 = zext nneg i32 %.0178386.lcssa.wide to i64
  br label %bb.aw

._crit_edge:                                      ; preds = %_ZNK4llvm5APInteqEm.exit
  br i1 %.1180, label %._crit_edge.thread, label %._crit_edge.thread416

bb.aw:                                            ; preds = %.lr.ph, %_ZNK4llvm5APInteqEm.exit
  %indvars.iv = phi i64 [ %19, %.lr.ph ], [ %indvars.iv.next, %_ZNK4llvm5APInteqEm.exit ] ; 3 uses
  %.sroa.18.2390 = phi i32 [ %spec.select358, %.lr.ph ], [ %.sroa.18.4, %_ZNK4llvm5APInteqEm.exit ] ; 2 uses
  %.sroa.0249.2389 = phi ptr [ %spec.select, %.lr.ph ], [ %.sroa.0249.4, %_ZNK4llvm5APInteqEm.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.jt = shl nuw nsw i64 2, %indvars.iv
  %i.ju = and i64 %i.jt, %.sroa.0321.1.3
  %.not368 = icmp eq i64 %i.ju, 0
  br i1 %.not368, label %bb.ax, label %_ZNK4llvm5APInteqEm.exit

bb.ax:                                            ; preds = %bb.aw
  %20 = load ptr, ptr %i.av, align 8, !tbaa !638
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %20, i64 %indvars.iv.next
  %.sroa.0216.0.copyload = load ptr, ptr %i.jv, align 8, !tbaa !465
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0216.0.copyload, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !638 ; 3 uses
  %.sroa.0212.0.copyload = load ptr, ptr %i.jx, align 8, !tbaa !465 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %.not186 = icmp eq ptr %.sroa.0249.2389, null   ; 2 uses
  %spec.select359 = select i1 %.not186, ptr %.sroa.0212.0.copyload, ptr %.sroa.0249.2389 ; 2 uses
  %i.jy = icmp eq ptr %.sroa.0212.0.copyload, %spec.select359
  %i.jz = icmp eq i32 %.sroa.18.2390, %.sroa.5.0.copyload
  %i.ka = select i1 %.not186, i1 true, i1 %i.jz
  %i.kb = select i1 %i.jy, i1 %i.ka, i1 false
  br i1 %i.kb, label %bb.ay, label %._crit_edge.thread416

bb.ay:                                            ; preds = %bb.ax
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !472
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 88
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !654 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !643 ; 2 uses
  %i.kj = icmp ult i32 %i.ki, 65                  ; 2 uses
  br i1 %i.kj, label %bb.az, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.ay
  %i.kk = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.kg) #40
  %i.kl = sub i32 %i.ki, %i.kk
  %i.km = icmp ult i32 %i.kl, 65
  br i1 %i.km, label %bb.az, label %._crit_edge.thread416

bb.az:                                            ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.ay
  %i.kn = load ptr, ptr %i.kg, align 8
  %spec.select.i.i198 = select i1 %i.kj, ptr %i.kg, ptr %i.kn
  %.0.i.i = load i64, ptr %spec.select.i.i198, align 8, !tbaa !357
  %i.ko = icmp eq i64 %.0.i.i, %indvars.iv.next
  br label %_ZNK4llvm5APInteqEm.exit

_ZNK4llvm5APInteqEm.exit:                         ; preds = %bb.az, %bb.aw
  %.sroa.0249.4 = phi ptr [ %.sroa.0249.2389, %bb.aw ], [ %spec.select359, %bb.az ] ; 2 uses
  %.sroa.18.4 = phi i32 [ %.sroa.18.2390, %bb.aw ], [ %.sroa.5.0.copyload, %bb.az ] ; 2 uses
  %.1180 = phi i1 [ true, %bb.aw ], [ %i.ko, %bb.az ] ; 2 uses
  %i.kp = icmp samesign ult i64 %indvars.iv, 2
  %i.kq = select i1 %i.kp, i1 %.1180, i1 false
  br i1 %i.kq, label %bb.aw, label %._crit_edge, !llvm.loop !1613

._crit_edge.thread:                               ; preds = %bb.av, %._crit_edge
  %.sroa.18.2.lcssa412 = phi i32 [ %.sroa.18.4, %._crit_edge ], [ %spec.select358, %bb.av ] ; 3 uses
  %.sroa.0249.2.lcssa411 = phi ptr [ %.sroa.0249.4, %._crit_edge ], [ %spec.select, %bb.av ] ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0249.2.lcssa411, i64 48
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !469
  %i.kt = zext i32 %.sroa.18.2.lcssa412 to i64
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kt
  %.sroa.0.0.copyload.i.i.i199 = load i16, ptr %i.ku, align 8, !tbaa !345
  %.not366 = icmp eq i16 %.sroa.0.0.copyload.i.i.i199, 136
  br i1 %.not366, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.thread
  %i.kv = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 136, ptr null, ptr nonnull %.sroa.0249.2.lcssa411, i32 %.sroa.18.2.lcssa412) #39 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.kv, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.kv, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.thread
  %.sroa.0249.5 = phi ptr [ %.fca.0.extract24, %bb.ba ], [ %.sroa.0249.2.lcssa411, %._crit_edge.thread ]
  %.sroa.18.5 = phi i32 [ %.fca.1.extract25, %bb.ba ], [ %.sroa.18.2.lcssa412, %._crit_edge.thread ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0223.0.copyload, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !469
  %i.ky = zext i32 %.sroa.7.0.copyload.a to i64
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.kx, i64 %i.ky
  %.sroa.0.0.copyload.i.i.i200 = load i16, ptr %i.kz, align 8, !tbaa !345
  %.not367 = icmp eq i16 %.sroa.0.0.copyload.i.i.i200, 136
  br i1 %.not367, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.la = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 136, ptr null, ptr nonnull %.sroa.0223.0.copyload, i32 %.sroa.7.0.copyload.a) #39 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.la, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.la, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.7.0 = phi i32 [ %.fca.1.extract16, %bb.bc ], [ %.sroa.7.0.copyload.a, %bb.bb ]
  %.sroa.0223.0 = phi ptr [ %.fca.0.extract15, %bb.bc ], [ %.sroa.0223.0.copyload, %bb.bb ]
  %21 = trunc nuw nsw i64 %.sroa.0321.1.3 to i32
  %22 = shl i32 %.lcssa, 6
  %23 = shl nuw nsw i32 %.0178386.lcssa.wide, 4
  %24 = or i32 %23, %21
  %25 = or i32 %24, %22
  store ptr %.sroa.0249.5, ptr %14, align 8, !tbaa !465
  %.sroa.18.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.18.5, ptr %.sroa.18.0..sroa_idx256, align 8, !tbaa !240
  %.sroa.31.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %.sroa.31.0.copyload, ptr %.sroa.31.0..sroa_idx262, align 4
  store ptr %.sroa.0223.0, ptr %15, align 8, !tbaa !465
  %.sroa.7.0..sroa_idx225 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx225, align 8, !tbaa !240
  %.sroa.10.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx227, align 4
  %26 = zext i32 %25 to i64
  %i.lb = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %26, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 5, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #39 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.lb, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.lb, 1
  store ptr %.fca.0.extract9, ptr %16, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.212.0..sroa_idx, align 8
  %i.lc = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 704, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 136, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #39 ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.lc, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.lc, 1
  %i.ld = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0.0.copyload.i.i.i195, ptr null, ptr %.fca.0.extract5, i32 %.fca.1.extract6) #39 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ld, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ld, 1
  br label %._crit_edge.thread416

._crit_edge.thread416:                            ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %bb.ax, %bb.bd, %._crit_edge, %.thread348, %bb.au
  %.sroa.12.6 = phi i32 [ %.fca.1.extract42, %bb.au ], [ 0, %.thread348 ], [ %.fca.1.extract, %bb.bd ], [ 0, %._crit_edge ], [ 0, %bb.ax ], [ 0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ]
  %.sroa.0318.6 = phi ptr [ %.fca.0.extract41, %bb.au ], [ null, %.thread348 ], [ %.fca.0.extract, %bb.bd ], [ null, %._crit_edge ], [ null, %bb.ax ], [ null, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit.thread:      ; preds = %bb.n, %bb.o, %bb.m, %_ZNK4llvm3MVT14is128BitVectorEv.exit, %bb.q, %bb.r, %bb.s, %_ZNK4llvm3MVT14is128BitVectorEv.exit.1, %bb.w, %bb.x, %bb.y, %_ZNK4llvm3MVT14is128BitVectorEv.exit.2, %bb.ac, %bb.ad, %bb.ae, %_ZNK4llvm3MVT14is128BitVectorEv.exit.3, %._crit_edge.thread416, %bb.e
  %.sroa.12.8 = phi i32 [ %.fca.1.extract107, %bb.e ], [ %.sroa.12.6, %._crit_edge.thread416 ], [ 0, %_ZNK4llvm3MVT14is128BitVectorEv.exit.3 ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %_ZNK4llvm3MVT14is128BitVectorEv.exit.2 ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %_ZNK4llvm3MVT14is128BitVectorEv.exit.1 ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %_ZNK4llvm3MVT14is128BitVectorEv.exit ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.n ]
  %.sroa.0318.8 = phi ptr [ %.fca.0.extract106, %bb.e ], [ %.sroa.0318.6, %._crit_edge.thread416 ], [ null, %_ZNK4llvm3MVT14is128BitVectorEv.exit.3 ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %_ZNK4llvm3MVT14is128BitVectorEv.exit.2 ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.w ], [ null, %_ZNK4llvm3MVT14is128BitVectorEv.exit.1 ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.q ], [ null, %_ZNK4llvm3MVT14is128BitVectorEv.exit ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.n ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0318.8, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.12.8, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorINS_7SDValueELj8EEC2Em(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !633
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !634
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 8
  br i1 %i.e, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef 16) #39
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !633
  %.pre13.i.i = zext i32 %.pre.i.i to i64         ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %1, %.pre13.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !83
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.b
  %i.f = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.a, %bb.b ] ; 2 uses
  %.pre-phi.i.i3 = phi i64 [ %.pre13.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr [16 x i8], ptr %i.f, i64 %.pre-phi.i.i3 ; 2 uses
  %i.i = sub i64 %1, %.pre-phi.i.i3
  %i.j = shl i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.j, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.h, %.lr.ph.preheader.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i, align 8, !tbaa !472
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !467
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i, label %.sink.split.i.i, label %.lr.ph.i.i, !llvm.loop !9

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i
  %i.m = trunc i64 %1 to i32
  store i32 %i.m, ptr %i.b, align 8, !tbaa !633
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6resizeEm.exit: ; preds = %bb.a, %.sink.split.i.i
  ret void
}

declare noundef i64 @_ZNK4llvm5APInt22extractBitsAsZExtValueEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZNK4llvm17X86TargetLowering7getMOVLERNS_12SelectionDAGERKNS_5SDLocENS_3MVTENS_7SDValueES7_(ptr noundef nonnull align 8 dereferenceable(518472), ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL10getUnpacklRN4llvm12SelectionDAGERKNS_5SDLocENS_3EVTENS_7SDValueES6_(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i16 %2, ptr %3, ptr %4, i32 %5, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.429", align 8 ; 9 uses
  %8 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !633
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !634
  call void @_ZN4llvm23createUnpackShuffleMaskENS_3EVTERNS_15SmallVectorImplIiEEbb(i16 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.d = load ptr, ptr %7, align 8, !tbaa !83
  store ptr %i.d, ptr %8, align 8, !tbaa !691
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load i32, ptr %i.b, align 8, !tbaa !633
  %i.g = zext i32 %i.f to i64
  store i64 %i.g, ptr %i.e, align 8, !tbaa !692
  %i.h = call fastcc { ptr, i32 } @_ZL16getVectorShuffleRN4llvm12SelectionDAGENS_3EVTERKNS_5SDLocENS_7SDValueES6_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr %4, i32 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.421") align 8 %8)
  %i.i = load ptr, ptr %7, align 8, !tbaa !83     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.i) #39
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  ret { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL22buildFromShuffleMostlyN4llvm7SDValueERKNS_5SDLocERNS_12SelectionDAGE(ptr nofree readonly captures(none) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.1142", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.429", align 8 ; 12 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::ArrayRef.421", align 8 ; 3 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !469
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.d, align 8, !tbaa !345 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !684  ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i [
    i16 1, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
    i16 0, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread
  ]

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = zext i16 %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !337
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %bb.a, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %.pre-phi = phi i64 [ %i.h, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw [537 x i8], ptr %i.f, i64 %.pre-phi
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6347
  %i.m = load i8, ptr %i.l, align 1, !tbaa !235
  %i.n = and i8 %i.m, -5
  %spec.select.i = icmp eq i8 %i.n, 0
  br i1 %spec.select.i, label %bb.b, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i16, ptr %i.o, align 8, !tbaa !677  ; 5 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !633
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 4, ptr %i.t, align 4, !tbaa !634
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.u = zext i16 %i.p to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.w, align 8, !tbaa !633
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 8, ptr %i.x, align 4, !tbaa !634
  %i.y = icmp ugt i16 %i.p, 8
  br i1 %i.y, label %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i

_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.v, i64 noundef %i.u, i64 noundef 4) #39
  %i.z = load ptr, ptr %6, align 8, !tbaa !83
  br label %.lr.ph

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.b
  %.not.i78 = icmp eq i16 %i.p, 0
  br i1 %.not.i78, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  store i32 %i.q, ptr %i.w, align 8, !tbaa !633
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit
  %.sink = phi ptr [ %i.z, %_ZN4llvm11SmallVectorIiLj8EEC2EmRKi.exit.loopexit ], [ %i.v, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i ]
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.u, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.sink, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !240
  store i32 %i.q, ptr %i.w, align 8, !tbaa !633
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
