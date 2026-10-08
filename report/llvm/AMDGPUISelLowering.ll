Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelLowering?download=true
inline.NumInlined: 5945
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZNK4llvm20AMDGPUTargetLowering13LowerDIVREM24ENS_7SDValueERNS_12SelectionDAGEb:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !22
  %i.ct = icmp ugt i32 %i.cs, 64
  br i1 %i.ct, label %bb.u, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.u:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.cu = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !22
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %bb.w, label %_ZN4llvm5APIntD2Ev.exit.i471

bb.w:                                             ; preds = %_ZN4llvm9KnownBitsD2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !24 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN4llvm5APIntD2Ev.exit.i471, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.da) #28
  br label %_ZN4llvm5APIntD2Ev.exit.i471

_ZN4llvm5APIntD2Ev.exit.i471:                     ; preds = %bb.x, %bb.w, %_ZN4llvm9KnownBitsD2Ev.exit
  %i.dc = load i32, ptr %i.t, align 8, !tbaa !22
  %i.dd = icmp ugt i32 %i.dc, 64
  br i1 %i.dd, label %bb.y, label %_ZN4llvm9KnownBitsD2Ev.exit472

bb.y:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i471
  %i.de = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN4llvm9KnownBitsD2Ev.exit472, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.de) #28
  br label %_ZN4llvm9KnownBitsD2Ev.exit472

_ZN4llvm9KnownBitsD2Ev.exit472:                   ; preds = %_ZN4llvm5APIntD2Ev.exit.i471, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br i1 %i.bg, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit472, %bb.b
  %.1534 = phi i32 [ %i.o, %bb.b ], [ %.0533, %_ZN4llvm9KnownBitsD2Ev.exit472 ]
  %.1 = phi i32 [ %i.n, %bb.b ], [ %.0, %_ZN4llvm9KnownBitsD2Ev.exit472 ]
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.dh = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dg ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -16
  %.sroa.0.0.copyload.i.i473 = load i64, ptr %i.di, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.dh, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i474 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i473, 0
  %.fca.1.insert.i.i475 = insertvalue { i64, i8 } %.fca.0.insert.i.i474, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dj = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.ab, %bb.ac
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i475, %bb.ab ], [ %i.dj, %bb.ac ] ; 2 uses
  %.fca.0.extract337 = extractvalue { i64, i8 } %.pn.i, 0 ; 2 uses
  %.fca.1.extract338 = extractvalue { i64, i8 } %.pn.i, 1
  %i.dk = trunc nuw i8 %.fca.1.extract338 to i1
  br i1 %i.dk, label %bb.ad, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ad:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.dl = trunc i64 %.fca.0.extract337 to i32
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %.1534, i32 %.1)
  %i.dm = sub i32 %i.dl, %.sroa.speculated        ; 2 uses
  %i.dn = add i32 %i.dm, 1                        ; 3 uses
  %i.do = select i1 %4, i32 240, i32 241
  %i.dp = select i1 %4, i32 234, i32 235          ; 2 uses
  %i.dq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25
  br i1 %4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.sroa.0303.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.2305.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.sroa.0380.0.copyload, ptr %17, align 8, !tbaa !186
  %.sroa.8384.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.sroa.8384.0.copyload, ptr %.sroa.8384.0..sroa_idx385, align 8, !tbaa !70
  %.sroa.10391.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %.sroa.10391.0.copyload, ptr %.sroa.10391.0..sroa_idx392, align 4
  store ptr %.sroa.0358.0.copyload, ptr %18, align 8, !tbaa !186
  %.sroa.8362.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.8362.0.copyload, ptr %.sroa.8362.0..sroa_idx363, align 8, !tbaa !70
  %.sroa.10369.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 %.sroa.10369.0.copyload, ptr %.sroa.10369.0..sroa_idx370, align 4
  %i.dr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 195, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0303.0.copyload, ptr %.sroa.2305.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #25 ; 2 uses
  %.fca.0.extract299 = extractvalue { ptr, i32 } %i.dr, 0
  %.fca.1.extract300 = extractvalue { ptr, i32 } %i.dr, 1
  %.sroa.0293.0.copyload = load i16, ptr %11, align 8, !tbaa !61 ; 2 uses
  %.sroa.2295.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85 ; 2 uses
  store ptr %.fca.0.extract299, ptr %19, align 8, !tbaa !186
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract300, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !70
  %i.ds = add i64 %.fca.0.extract337, 4294967294
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0293.0.copyload, ptr %.sroa.2295.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract286 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract287 = extractvalue { ptr, i32 } %i.du, 1
  store ptr %.fca.0.extract286, ptr %20, align 8
  %.sroa.2289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract287, ptr %.sroa.2289.0..sroa_idx, align 8
  %i.dv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 199, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0293.0.copyload, ptr %.sroa.2295.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #25 ; 2 uses
  %.fca.0.extract282 = extractvalue { ptr, i32 } %i.dv, 0
  %.fca.1.extract283 = extractvalue { ptr, i32 } %i.dv, 1
  %.sroa.0276.0.copyload = load i16, ptr %11, align 8, !tbaa !61 ; 2 uses
  %.sroa.2278.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85 ; 2 uses
  store ptr %.fca.0.extract282, ptr %21, align 8, !tbaa !186
  %.sroa.11.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %.fca.1.extract283, ptr %.sroa.11.0..sroa_idx318, align 8, !tbaa !70
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0276.0.copyload, ptr %.sroa.2278.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract269 = extractvalue { ptr, i32 } %i.dw, 0
  %.fca.1.extract270 = extractvalue { ptr, i32 } %i.dw, 1
  store ptr %.fca.0.extract269, ptr %22, align 8
  %.sroa.2272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 %.fca.1.extract270, ptr %.sroa.2272.0..sroa_idx, align 8
  %i.dx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 194, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0276.0.copyload, ptr %.sroa.2278.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %21, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %22) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK4llvm8TypeSizecvmEv.exit
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.ae ], [ %i.dq, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %.sroa.11.0 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0314.0 = extractvalue { ptr, i32 } %.pn, 0
  store ptr %.sroa.0380.0.copyload, ptr %23, align 8, !tbaa !186
  %.sroa.4400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.sroa.8384.0.copyload, ptr %.sroa.4400.0..sroa_idx, align 8, !tbaa !70
  %.sroa.5401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 %.sroa.10391.0.copyload, ptr %.sroa.5401.0..sroa_idx, align 4
  %i.dy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %23) #25 ; 2 uses
  %.fca.0.extract252 = extractvalue { ptr, i32 } %i.dy, 0 ; 2 uses
  %.fca.1.extract253 = extractvalue { ptr, i32 } %i.dy, 1 ; 2 uses
  store ptr %.sroa.0358.0.copyload, ptr %24, align 8, !tbaa !186
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.sroa.8362.0.copyload, ptr %.sroa.4378.0..sroa_idx, align 8, !tbaa !70
  %.sroa.5379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 %.sroa.10369.0.copyload, ptr %.sroa.5379.0..sroa_idx, align 4
  %i.dz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #25 ; 2 uses
  %.fca.0.extract230 = extractvalue { ptr, i32 } %i.dz, 0 ; 3 uses
  %.fca.1.extract231 = extractvalue { ptr, i32 } %i.dz, 1 ; 3 uses
  store ptr %.fca.0.extract252, ptr %25, align 8, !tbaa !186
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract253, ptr %.sroa.5259.0..sroa_idx, align 8, !tbaa !70
  store ptr %.fca.0.extract230, ptr %27, align 8, !tbaa !186
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 %.fca.1.extract231, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !70
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 641, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %27) #25 ; 2 uses
  %.fca.0.extract212 = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract213 = extractvalue { ptr, i32 } %i.ea, 1
  store ptr %.fca.0.extract212, ptr %26, align 8
  %.sroa.2215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %.fca.1.extract213, ptr %.sroa.2215.0..sroa_idx, align 8
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26) #25 ; 2 uses
  %.fca.0.extract208 = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract209 = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract208, ptr %28, align 8, !tbaa !186
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 %.fca.1.extract209, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !70
  %i.ec = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 285, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %28) #25 ; 2 uses
  %.fca.0.extract200 = extractvalue { ptr, i32 } %i.ec, 0 ; 2 uses
  %.fca.1.extract201 = extractvalue { ptr, i32 } %i.ec, 1 ; 2 uses
  store ptr %.fca.0.extract200, ptr %29, align 8, !tbaa !186
  %.sroa.7.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 %.fca.1.extract201, ptr %.sroa.7.0..sroa_idx221, align 8, !tbaa !70
  %i.ed = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %29) #25 ; 2 uses
  %.fca.0.extract192 = extractvalue { ptr, i32 } %i.ed, 0
  %.fca.1.extract193 = extractvalue { ptr, i32 } %i.ed, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !56 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !476, !nonnull !18, !align !217
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !534
  %i.el = icmp eq i32 %i.ek, 26
  br i1 %i.el, label %bb.ag, label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

bb.ag:                                            ; preds = %bb.af
  %i.em = load ptr, ptr %i.ee, align 8, !tbaa !185
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !571
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %.sroa.0.0.copyload.i = load i40, ptr %i.ep, align 8
  %.sroa.0.0.copyload.i.fr = freeze i40 %.sroa.0.0.copyload.i
  %i.eq = and i40 %.sroa.0.0.copyload.i.fr, 16776960
  %or.cond536 = icmp eq i40 %i.eq, 65792
  %spec.select = select i1 %or.cond536, i32 156, i32 607
  br label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit: ; preds = %bb.ag, %bb.af
  %.0452 = phi i32 [ 156, %bb.af ], [ %spec.select, %bb.ag ]
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1224
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = call noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(48) %i.eg) #25
  %i.ev = select i1 %i.eu, i32 %.0452, i32 155
  store ptr %.fca.0.extract192, ptr %30, align 8, !tbaa !186
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 %.fca.1.extract193, ptr %.sroa.4198.0..sroa_idx, align 8, !tbaa !70
  store ptr %.fca.0.extract230, ptr %31, align 8, !tbaa !186
  %.sroa.8.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 %.fca.1.extract231, ptr %.sroa.8.0..sroa_idx239, align 8, !tbaa !70
  store ptr %.fca.0.extract252, ptr %32, align 8, !tbaa !186
  %.sroa.5259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.fca.1.extract253, ptr %.sroa.5259.0..sroa_idx260, align 8, !tbaa !70
  %i.ew = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.ev, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %30, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %31, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %32) #25 ; 2 uses
  %.fca.0.extract181 = extractvalue { ptr, i32 } %i.ew, 0
  %.fca.1.extract182 = extractvalue { ptr, i32 } %i.ew, 1
  store ptr %.fca.0.extract200, ptr %33, align 8, !tbaa !186
  %.sroa.7.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 %.fca.1.extract201, ptr %.sroa.7.0..sroa_idx223, align 8, !tbaa !70
  %i.ex = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %33) #25 ; 2 uses
  %.fca.0.extract173 = extractvalue { ptr, i32 } %i.ex, 0
  %.fca.1.extract174 = extractvalue { ptr, i32 } %i.ex, 1
  store ptr %.fca.0.extract181, ptr %34, align 8, !tbaa !186
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i32 %.fca.1.extract182, ptr %.sroa.6187.0..sroa_idx, align 8, !tbaa !70
  %i.ey = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 261, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %34) #25 ; 2 uses
  %.fca.0.extract165 = extractvalue { ptr, i32 } %i.ey, 0
  %.fca.1.extract166 = extractvalue { ptr, i32 } %i.ey, 1
  store ptr %.fca.0.extract230, ptr %35, align 8, !tbaa !186
  %.sroa.8.0..sroa_idx241 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i32 %.fca.1.extract231, ptr %.sroa.8.0..sroa_idx241, align 8, !tbaa !70
  %i.ez = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 261, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %35) #25 ; 2 uses
  %.fca.0.extract157 = extractvalue { ptr, i32 } %i.ez, 0
  %.fca.1.extract158 = extractvalue { ptr, i32 } %i.ez, 1
  %i.fa = load ptr, ptr %i.ee, align 8, !tbaa !185
  %i.fb = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.fa) #25
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !184
  %.sroa.0151.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.2153.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.fe = load ptr, ptr %0, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 504
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call { i16, ptr } %i.fg(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i16 %.sroa.0151.0.copyload, ptr %.sroa.2153.0.copyload) #25 ; 2 uses
  %i.fi = extractvalue { i16, ptr } %i.fh, 0
  %i.fj = extractvalue { i16, ptr } %i.fh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.fca.0.extract157, ptr %7, align 8
  %.sroa.2481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract158, ptr %.sroa.2481.0..sroa_idx, align 8
  store ptr %.fca.0.extract165, ptr %5, align 8, !tbaa !186
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract166, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !70
  %i.fk = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 3) #25 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.fk, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.fk, 1
  store ptr %.fca.0.extract2.i, ptr %6, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.fl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %i.fi, ptr %i.fj, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, i32 0) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.fca.0.extract139 = extractvalue { ptr, i32 } %i.fl, 0
  %.fca.1.extract140 = extractvalue { ptr, i32 } %i.fl, 1
  %.sroa.0133.0.copyload = load i16, ptr %11, align 8, !tbaa !61 ; 2 uses
  %.sroa.2135.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85 ; 2 uses
  store ptr %.fca.0.extract139, ptr %36, align 8, !tbaa !186
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 %.fca.1.extract140, ptr %.sroa.4149.0..sroa_idx, align 8, !tbaa !70
  store ptr %.sroa.0314.0, ptr %37, align 8, !tbaa !186
  %.sroa.11.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx320, align 8, !tbaa !70
  %i.fm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0133.0.copyload, ptr %.sroa.2135.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract126 = extractvalue { ptr, i32 } %i.fm, 0
  %.fca.1.extract127 = extractvalue { ptr, i32 } %i.fm, 1
  store ptr %.fca.0.extract126, ptr %38, align 8
  %.sroa.2129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract127, ptr %.sroa.2129.0..sroa_idx, align 8
  %i.fn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 219, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0133.0.copyload, ptr %.sroa.2135.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %36, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38) #25 ; 2 uses
  %.fca.0.extract122 = extractvalue { ptr, i32 } %i.fn, 0
  %.fca.1.extract123 = extractvalue { ptr, i32 } %i.fn, 1
  %.sroa.0105.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.2107.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract173, ptr %39, align 8, !tbaa !186
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 %.fca.1.extract174, ptr %.sroa.4179.0..sroa_idx, align 8, !tbaa !70
  store ptr %.fca.0.extract122, ptr %40, align 8, !tbaa !186
  %.sroa.11.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %.fca.1.extract123, ptr %.sroa.11.0..sroa_idx322, align 8, !tbaa !70
  %i.fo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0105.0.copyload, ptr %.sroa.2107.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40) #25 ; 2 uses
  %.fca.0.extract101 = extractvalue { ptr, i32 } %i.fo, 0 ; 3 uses
  %.fca.1.extract102 = extractvalue { ptr, i32 } %i.fo, 1 ; 3 uses
  %.sroa.084.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.286.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract101, ptr %41, align 8, !tbaa !186
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract102, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !70
  store ptr %.sroa.0358.0.copyload, ptr %42, align 8, !tbaa !186
  %.sroa.8362.0..sroa_idx367 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.sroa.8362.0.copyload, ptr %.sroa.8362.0..sroa_idx367, align 8, !tbaa !70
  %.sroa.10369.0..sroa_idx374 = getelementptr inbounds nuw i8, ptr %42, i64 12
  store i32 %.sroa.10369.0.copyload, ptr %.sroa.10369.0..sroa_idx374, align 4
  %i.fp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.084.0.copyload, ptr %.sroa.286.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42) #25 ; 2 uses
  %.fca.0.extract80 = extractvalue { ptr, i32 } %i.fp, 0
  %.fca.1.extract81 = extractvalue { ptr, i32 } %i.fp, 1
  %.sroa.074.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.276.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.sroa.0380.0.copyload, ptr %43, align 8, !tbaa !186
  %.sroa.8384.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %.sroa.8384.0.copyload, ptr %.sroa.8384.0..sroa_idx389, align 8, !tbaa !70
  %.sroa.10391.0..sroa_idx396 = getelementptr inbounds nuw i8, ptr %43, i64 12
  store i32 %.sroa.10391.0.copyload, ptr %.sroa.10391.0..sroa_idx396, align 4
  store ptr %.fca.0.extract80, ptr %44, align 8, !tbaa !186
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.fca.1.extract81, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !70
  %i.fq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.074.0.copyload, ptr %.sroa.276.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %43, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44) #25 ; 2 uses
  %.fca.0.extract70 = extractvalue { ptr, i32 } %i.fq, 0 ; 2 uses
  %.fca.1.extract71 = extractvalue { ptr, i32 } %i.fq, 1 ; 2 uses
  br i1 %4, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit
  %i.fr = load ptr, ptr %i.fc, align 8, !tbaa !184
  %i.fs = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dn)
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %.split.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

.split.i.i:                                       ; preds = %bb.ah
  %i.fu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dn, i1 true) ; 2 uses
  %i.fv = icmp samesign ult i32 %i.fu, 10
  br i1 %i.fv, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i:              ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.fu to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  %i.fw = insertvalue { i16, ptr } poison, i16 %switch.offset.i.i, 0
  %i.fx = insertvalue { i16, ptr } %i.fw, ptr null, 1
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i:       ; preds = %.split.i.i, %bb.ah
  %i.fy = call { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, i32 noundef %i.dn) #25
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.fy, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i ], [ %i.fx, %_ZN4llvm3MVT12getIntegerVTEj.exit.i ] ; 2 uses
  %i.fz = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.ga = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.gb = call { ptr, i32 } @_ZN4llvm12SelectionDAG12getValueTypeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %i.fz, ptr %i.ga) #25 ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.gb, 0 ; 2 uses
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.gb, 1 ; 2 uses
  %.sroa.050.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.252.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract101, ptr %45, align 8, !tbaa !186
  %.sroa.9.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract102, ptr %.sroa.9.0..sroa_idx112, align 8, !tbaa !70
  store ptr %.fca.0.extract56, ptr %46, align 8, !tbaa !186
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.fca.1.extract57, ptr %.sroa.564.0..sroa_idx, align 8, !tbaa !70
  %i.gc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 236, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.050.0.copyload, ptr %.sroa.252.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46) #25
  %.sroa.040.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.242.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract70, ptr %47, align 8, !tbaa !186
  %.sroa.10.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract71, ptr %.sroa.10.0..sroa_idx91, align 8, !tbaa !70
  store ptr %.fca.0.extract56, ptr %48, align 8, !tbaa !186
  %.sroa.564.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i32 %.fca.1.extract57, ptr %.sroa.564.0..sroa_idx65, align 8, !tbaa !70
  %i.gd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 236, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.040.0.copyload, ptr %.sroa.242.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %48) #25
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit
  %i.ge = zext nneg i32 %i.dm to i64
  %notmask = shl nsw i64 -1, %i.ge
  %i.gf = xor i64 %notmask, -1
  %.sroa.026.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.228.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.gg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.gf, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.026.0.copyload, ptr %.sroa.228.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.gg, 0 ; 2 uses
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.gg, 1 ; 2 uses
  %.sroa.016.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.218.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract101, ptr %49, align 8, !tbaa !186
  %.sroa.9.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i32 %.fca.1.extract102, ptr %.sroa.9.0..sroa_idx114, align 8, !tbaa !70
  store ptr %.fca.0.extract22, ptr %50, align 8, !tbaa !186
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.531.0..sroa_idx, align 8, !tbaa !70
  %i.gh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.016.0.copyload, ptr %.sroa.218.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %49, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %50) #25
  %.sroa.08.0.copyload = load i16, ptr %11, align 8, !tbaa !61
  %.sroa.210.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract70, ptr %51, align 8, !tbaa !186
  %.sroa.10.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i32 %.fca.1.extract71, ptr %.sroa.10.0..sroa_idx93, align 8, !tbaa !70
  store ptr %.fca.0.extract22, ptr %52, align 8, !tbaa !186
  %.sroa.531.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.531.0..sroa_idx32, align 8, !tbaa !70
  %i.gi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 193, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.08.0.copyload, ptr %.sroa.210.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %51, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %52) #25
end_hunk_0
begin_hunk_1_@_ZNK4llvm20AMDGPUTargetLowering14LowerUDIVREM64ENS_7SDValueERNS_12SelectionDAGERNS_15SmallVectorImplIS1_EE:bb.a
  %.sroa.01633.0.copyload1638 = load ptr, ptr %i.u, align 8, !tbaa !186 ; 5 uses
  %.sroa.9.0..sroa_idx1647 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %.sroa.9.0.copyload1648 = load i32, ptr %.sroa.9.0..sroa_idx1647, align 8, !tbaa !70 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !535
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25
  call void @_ZN4llvm12SelectionDAG11SplitScalarERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.344") align 8 %91, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %90, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %87) #25
  %.sroa.01660.0.copyload1666 = load ptr, ptr %91, align 8, !tbaa !186 ; 8 uses
  %.sroa.12.0..sroa_idx1677 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %.sroa.12.0.copyload1678 = load i32, ptr %.sroa.12.0..sroa_idx1677, align 8, !tbaa !70 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %91, i64 16
  %.sroa.01690.0.copyload1693 = load ptr, ptr %i.x, align 8, !tbaa !186 ; 9 uses
  %.sroa.13.0..sroa_idx1698 = getelementptr inbounds nuw i8, ptr %91, i64 24
  %.sroa.13.0.copyload1699 = load i32, ptr %.sroa.13.0..sroa_idx1698, align 8, !tbaa !70 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  %.sroa.01032.0.copyload = load ptr, ptr %90, align 8, !tbaa !186
  %.sroa.21033.0..sroa_idx = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 3 uses
  %.sroa.21033.0.copyload = load i32, ptr %.sroa.21033.0..sroa_idx, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25
  %i.y = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  store i32 64, ptr %i.y, align 8, !tbaa !22, !alias.scope !792
  store i64 -4294967296, ptr %92, align 8, !tbaa !24, !alias.scope !792
  %i.z = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.01032.0.copyload, i32 %.sroa.21033.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %92, i32 noundef 0) #25
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.sroa.01029.0.copyload = load ptr, ptr %88, align 8, !tbaa !186
  %.sroa.21030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %88, i64 8
  %.sroa.21030.0.copyload = load i32, ptr %.sroa.21030.0..sroa_idx, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  store i32 64, ptr %i.aa, align 8, !tbaa !22, !alias.scope !793
  store i64 -4294967296, ptr %93, align 8, !tbaa !24, !alias.scope !793
  %i.ab = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG17MaskedValueIsZeroENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr %.sroa.01029.0.copyload, i32 %.sroa.21030.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %93, i32 noundef 0) #25
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !22
  %i.ad = icmp ugt i32 %i.ac, 64
  br i1 %i.ad, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %93, align 8, !tbaa !24   ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4llvm5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #28
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm5APIntD2Ev.exit
  %i.ag = phi i1 [ %i.ab, %_ZN4llvm5APIntD2Ev.exit ], [ false, %bb.a ]
  %i.ah = load i32, ptr %i.y, align 8, !tbaa !22
  %i.ai = icmp ugt i32 %i.ah, 64
  br i1 %i.ai, label %bb.e, label %_ZN4llvm5APIntD2Ev.exit1217

bb.e:                                             ; preds = %.critedge
  %i.aj = load ptr, ptr %92, align 8, !tbaa !24   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvm5APIntD2Ev.exit1217, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #28
  br label %_ZN4llvm5APIntD2Ev.exit1217

_ZN4llvm5APIntD2Ev.exit1217:                      ; preds = %.critedge, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25
  br i1 %i.ag, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit1217
  %.sroa.01022.0.copyload = load i16, ptr %87, align 8, !tbaa !61 ; 2 uses
  %.sroa.21024.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !85 ; 2 uses
  %i.al = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.01022.0.copyload, ptr %.sroa.21024.0.copyload, i16 %.sroa.01022.0.copyload, ptr %.sroa.21024.0.copyload) #25 ; 2 uses
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  %i.an = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.sroa.0.0.copyload1620, ptr %94, align 8, !tbaa !186
  %.sroa.7.0..sroa_idx1621 = getelementptr inbounds nuw i8, ptr %94, i64 8
  store i32 %.sroa.7.0.copyload1627, ptr %.sroa.7.0..sroa_idx1621, align 8, !tbaa !70
  store ptr %.sroa.01660.0.copyload1666, ptr %95, align 8, !tbaa !186
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i32 %.sroa.12.0.copyload1678, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !70
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 69, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr %i.am, i32 %i.an, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %94, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %95) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #25
  %.fca.0.extract1006 = extractvalue { ptr, i32 } %i.ao, 0 ; 2 uses
  store ptr %.fca.0.extract1006, ptr %96, align 8
  %.sroa.21009.0..sroa_idx = getelementptr inbounds nuw i8, ptr %96, i64 8
  store i32 0, ptr %.sroa.21009.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %96, i64 16
  store ptr %.fca.0.extract1035, ptr %i.ap, align 8, !tbaa !186
  %.sroa.21.0..sroa_idx1067 = getelementptr inbounds nuw i8, ptr %96, i64 24
  store i32 %.fca.1.extract1036, ptr %.sroa.21.0..sroa_idx1067, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %84)
  store ptr %96, ptr %84, align 8, !tbaa !536
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 2, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !470
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 71, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %84) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %84)
  %.fca.0.extract1002 = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract1003 = extractvalue { ptr, i32 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #25
  store ptr %.fca.0.extract1006, ptr %97, align 8
  %.sroa.2996.0..sroa_idx = getelementptr inbounds nuw i8, ptr %97, i64 8
  store i32 1, ptr %.sroa.2996.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %97, i64 16
  store ptr %.fca.0.extract1035, ptr %i.ar, align 8, !tbaa !186
  %.sroa.21.0..sroa_idx1069 = getelementptr inbounds nuw i8, ptr %97, i64 24
  store i32 %.fca.1.extract1036, ptr %.sroa.21.0..sroa_idx1069, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %83)
  store ptr %97, ptr %83, align 8, !tbaa !536
  %.sroa.26.0..sroa_idx.i1220 = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 2, ptr %.sroa.26.0..sroa_idx.i1220, align 8, !tbaa !470
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 71, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %83) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  %.fca.0.extract989 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract990 = extractvalue { ptr, i32 } %i.as, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #25
  store ptr %.fca.0.extract1002, ptr %98, align 8, !tbaa !186
  %.sroa.41013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %98, i64 8
  store i32 %.fca.1.extract1003, ptr %.sroa.41013.0..sroa_idx, align 8, !tbaa !70
  %i.at = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %98) #25 ; 2 uses
  %.fca.0.extract983 = extractvalue { ptr, i32 } %i.at, 0 ; 2 uses
  %.fca.1.extract984 = extractvalue { ptr, i32 } %i.at, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !465 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !466
  %.not.i = icmp ult i32 %i.av, %i.ax
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !467

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.fca.0.extract983, i32 %.fca.1.extract984)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.i:                                             ; preds = %bb.g
  %i.ay = zext i32 %i.av to i64
  %i.az = load ptr, ptr %4, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  store ptr %.fca.0.extract983, ptr %i.ba, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %.fca.1.extract984, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.bb = load i32, ptr %i.au, align 8, !tbaa !465
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.au, align 8, !tbaa !465
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.h, %bb.i
  store ptr %.fca.0.extract989, ptr %99, align 8, !tbaa !186
  %.sroa.41000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %99, i64 8
  store i32 %.fca.1.extract990, ptr %.sroa.41000.0..sroa_idx, align 8, !tbaa !70
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %99) #25 ; 2 uses
  %.fca.0.extract977 = extractvalue { ptr, i32 } %i.bd, 0 ; 2 uses
  %.fca.1.extract978 = extractvalue { ptr, i32 } %i.bd, 1 ; 2 uses
  %i.be = load i32, ptr %i.au, align 8, !tbaa !465 ; 2 uses
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !466
  %.not.i1221 = icmp ult i32 %i.be, %i.bf
  br i1 %.not.i1221, label %bb.k, label %bb.j, !prof !467

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.fca.0.extract977, i32 %.fca.1.extract978)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1223

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %4, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  store ptr %.fca.0.extract977, ptr %i.bi, align 1
  %.sroa.32.0..sroa_idx.i1222 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.fca.1.extract978, ptr %.sroa.32.0..sroa_idx.i1222, align 1
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !465
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.au, align 8, !tbaa !465
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit1223

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit1217
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !100
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !185
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !571
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !56 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1224
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(48) %i.bs) #25
  br i1 %i.bw, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit1230

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 144
  %.sroa.0.0.copyload.i = load i40, ptr %i.bx, align 8
  %.sroa.0.0.copyload.i.fr = freeze i40 %.sroa.0.0.copyload.i ; 2 uses
  %201 = and i40 %.sroa.0.0.copyload.i.fr, 65280
  %202 = icmp eq i40 %201, 256
  br i1 %202, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %_ZN4llvm5APIntD2Ev.exit1230

_ZNK4llvm12DenormalModeeqES0_.exit:               ; preds = %bb.n
  %203 = and i40 %.sroa.0.0.copyload.i.fr, 16711680
  %204 = icmp eq i40 %203, 65536
  %spec.select = select i1 %204, i32 156, i32 607
  br label %_ZN4llvm5APIntD2Ev.exit1230

_ZN4llvm5APIntD2Ev.exit1230:                      ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit, %bb.n, %bb.m
  %205 = phi i32 [ 155, %bb.m ], [ 607, %bb.n ], [ %spec.select, %_ZNK4llvm12DenormalModeeqES0_.exit ] ; 2 uses
  store ptr %.sroa.01660.0.copyload1666, ptr %100, align 8, !tbaa !186
  %.sroa.12.0..sroa_idx1667 = getelementptr inbounds nuw i8, ptr %100, i64 8
  store i32 %.sroa.12.0.copyload1678, ptr %.sroa.12.0..sroa_idx1667, align 8, !tbaa !70
  %i.by = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 235, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %100) #25 ; 2 uses
  %.fca.0.extract966 = extractvalue { ptr, i32 } %i.by, 0
  %.fca.1.extract967 = extractvalue { ptr, i32 } %i.by, 1
  store ptr %.sroa.01690.0.copyload1693, ptr %101, align 8, !tbaa !186
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %101, i64 8
  store i32 %.sroa.13.0.copyload1699, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !70
  %i.bz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 235, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %101) #25 ; 2 uses
  %.fca.0.extract959 = extractvalue { ptr, i32 } %i.bz, 0
  %.fca.1.extract960 = extractvalue { ptr, i32 } %i.bz, 1
  store ptr %.fca.0.extract959, ptr %102, align 8, !tbaa !186
  %.sroa.4964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %102, i64 8
  store i32 %.fca.1.extract960, ptr %.sroa.4964.0..sroa_idx, align 8, !tbaa !70
  %i.ca = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef f0x41F0000000000000, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract952 = extractvalue { ptr, i32 } %i.ca, 0
  %.fca.1.extract953 = extractvalue { ptr, i32 } %i.ca, 1
  store ptr %.fca.0.extract952, ptr %103, align 8
  %.sroa.2955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %103, i64 8
  store i32 %.fca.1.extract953, ptr %.sroa.2955.0..sroa_idx, align 8
  store ptr %.fca.0.extract966, ptr %104, align 8, !tbaa !186
  %.sroa.4971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %104, i64 8
  store i32 %.fca.1.extract967, ptr %.sroa.4971.0..sroa_idx, align 8, !tbaa !70
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %205, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %102, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %103, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %104) #25 ; 2 uses
  %.fca.0.extract948 = extractvalue { ptr, i32 } %i.cb, 0
  %.fca.1.extract949 = extractvalue { ptr, i32 } %i.cb, 1
  store ptr %.fca.0.extract948, ptr %105, align 8, !tbaa !186
  %.sroa.4957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %105, i64 8
  store i32 %.fca.1.extract949, ptr %.sroa.4957.0..sroa_idx, align 8, !tbaa !70
  %i.cc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 641, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %105) #25 ; 2 uses
  %.fca.0.extract941 = extractvalue { ptr, i32 } %i.cc, 0
  %.fca.1.extract942 = extractvalue { ptr, i32 } %i.cc, 1
  store ptr %.fca.0.extract941, ptr %106, align 8, !tbaa !186
  %.sroa.4946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %106, i64 8
  store i32 %.fca.1.extract942, ptr %.sroa.4946.0..sroa_idx, align 8, !tbaa !70
  %i.cd = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef f0x43EFFFFF80000000, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract929 = extractvalue { ptr, i32 } %i.cd, 0
  %.fca.1.extract930 = extractvalue { ptr, i32 } %i.cd, 1
  store ptr %.fca.0.extract929, ptr %107, align 8
  %.sroa.2932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %107, i64 8
  store i32 %.fca.1.extract930, ptr %.sroa.2932.0..sroa_idx, align 8
  %i.ce = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %106, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %107) #25 ; 2 uses
  %.fca.0.extract925 = extractvalue { ptr, i32 } %i.ce, 0 ; 2 uses
  %.fca.1.extract926 = extractvalue { ptr, i32 } %i.ce, 1 ; 2 uses
  store ptr %.fca.0.extract925, ptr %108, align 8, !tbaa !186
  %.sroa.5935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i32 %.fca.1.extract926, ptr %.sroa.5935.0..sroa_idx, align 8, !tbaa !70
  %i.cf = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef f0x3DF0000000000000, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract918 = extractvalue { ptr, i32 } %i.cf, 0
  %.fca.1.extract919 = extractvalue { ptr, i32 } %i.cf, 1
  store ptr %.fca.0.extract918, ptr %109, align 8
  %.sroa.2921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %109, i64 8
  store i32 %.fca.1.extract919, ptr %.sroa.2921.0..sroa_idx, align 8
  %i.cg = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 101, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %108, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %109) #25 ; 2 uses
  %.fca.0.extract914 = extractvalue { ptr, i32 } %i.cg, 0
  %.fca.1.extract915 = extractvalue { ptr, i32 } %i.cg, 1
  store ptr %.fca.0.extract914, ptr %110, align 8, !tbaa !186
  %.sroa.4923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i32 %.fca.1.extract915, ptr %.sroa.4923.0..sroa_idx, align 8, !tbaa !70
  %i.ch = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 285, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %110) #25 ; 2 uses
  %.fca.0.extract902 = extractvalue { ptr, i32 } %i.ch, 0 ; 2 uses
  %.fca.1.extract903 = extractvalue { ptr, i32 } %i.ch, 1 ; 2 uses
  store ptr %.fca.0.extract902, ptr %111, align 8, !tbaa !186
  %.sroa.5908.0..sroa_idx = getelementptr inbounds nuw i8, ptr %111, i64 8
  store i32 %.fca.1.extract903, ptr %.sroa.5908.0..sroa_idx, align 8, !tbaa !70
  %i.ci = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %3, double noundef f0xC1F0000000000000, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract895 = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract896 = extractvalue { ptr, i32 } %i.ci, 1
  store ptr %.fca.0.extract895, ptr %112, align 8
  %.sroa.2898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %112, i64 8
  store i32 %.fca.1.extract896, ptr %.sroa.2898.0..sroa_idx, align 8
  store ptr %.fca.0.extract925, ptr %113, align 8, !tbaa !186
  %.sroa.5935.0..sroa_idx936 = getelementptr inbounds nuw i8, ptr %113, i64 8
  store i32 %.fca.1.extract926, ptr %.sroa.5935.0..sroa_idx936, align 8, !tbaa !70
  %i.cj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %205, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 14, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %111, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %112, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %113) #25 ; 2 uses
  %.fca.0.extract891 = extractvalue { ptr, i32 } %i.cj, 0
  %.fca.1.extract892 = extractvalue { ptr, i32 } %i.cj, 1
  %.sroa.0882.0.copyload = load i16, ptr %87, align 8, !tbaa !61
  %.sroa.2884.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !85
  store ptr %.fca.0.extract891, ptr %114, align 8, !tbaa !186
  %.sroa.4900.0..sroa_idx = getelementptr inbounds nuw i8, ptr %114, i64 8
  store i32 %.fca.1.extract892, ptr %.sroa.4900.0..sroa_idx, align 8, !tbaa !70
  %i.ck = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 241, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0882.0.copyload, ptr %.sroa.2884.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %114) #25 ; 2 uses
  %.fca.0.extract878 = extractvalue { ptr, i32 } %i.ck, 0 ; 2 uses
  %.fca.1.extract879 = extractvalue { ptr, i32 } %i.ck, 1 ; 2 uses
  %.sroa.0869.0.copyload = load i16, ptr %87, align 8, !tbaa !61
  %.sroa.2871.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !85
  store ptr %.fca.0.extract902, ptr %115, align 8, !tbaa !186
  %.sroa.5908.0..sroa_idx909 = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i32 %.fca.1.extract903, ptr %.sroa.5908.0..sroa_idx909, align 8, !tbaa !70
  %i.cl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 241, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0869.0.copyload, ptr %.sroa.2871.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %115) #25 ; 2 uses
  %.fca.0.extract865 = extractvalue { ptr, i32 } %i.cl, 0 ; 2 uses
  %.fca.1.extract866 = extractvalue { ptr, i32 } %i.cl, 1 ; 2 uses
  %.sroa.0854.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2856.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #25
  store ptr %.fca.0.extract878, ptr %116, align 8, !tbaa !186
  %.sroa.5887.0..sroa_idx888 = getelementptr inbounds nuw i8, ptr %116, i64 8
  store i32 %.fca.1.extract879, ptr %.sroa.5887.0..sroa_idx888, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %116, i64 16
  store ptr %.fca.0.extract865, ptr %i.cm, align 8, !tbaa !186
  %.sroa.5874.0..sroa_idx875 = getelementptr inbounds nuw i8, ptr %116, i64 24
  store i32 %.fca.1.extract866, ptr %.sroa.5874.0..sroa_idx875, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  store ptr %116, ptr %82, align 8, !tbaa !536
  %.sroa.26.0..sroa_idx.i1231 = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 2, ptr %.sroa.26.0..sroa_idx.i1231, align 8, !tbaa !470
  %i.cn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 71, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %82) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82)
  %.fca.0.extract846 = extractvalue { ptr, i32 } %i.cn, 0
  %.fca.1.extract847 = extractvalue { ptr, i32 } %i.cn, 1
  %i.co = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0854.0.copyload, ptr %.sroa.2856.0.copyload, ptr %.fca.0.extract846, i32 %.fca.1.extract847) #25 ; 2 uses
  %.fca.0.extract842 = extractvalue { ptr, i32 } %i.co, 0 ; 2 uses
  %.fca.1.extract843 = extractvalue { ptr, i32 } %i.co, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #25
  %.sroa.0836.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2838.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.cp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0836.0.copyload, ptr %.sroa.2838.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract832 = extractvalue { ptr, i32 } %i.cp, 0
  %.fca.1.extract833 = extractvalue { ptr, i32 } %i.cp, 1
  %.sroa.0821.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2823.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.cq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0821.0.copyload, ptr %.sroa.2823.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract817 = extractvalue { ptr, i32 } %i.cq, 0 ; 2 uses
  %.fca.1.extract818 = extractvalue { ptr, i32 } %i.cq, 1 ; 2 uses
  %i.cr = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 2, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #25 ; 2 uses
  %.fca.0.extract790 = extractvalue { ptr, i32 } %i.cr, 0 ; 5 uses
  %.fca.1.extract791 = extractvalue { ptr, i32 } %i.cr, 1 ; 5 uses
  %.sroa.0763.0.copyload = load i16, ptr %87, align 8, !tbaa !61
  %.sroa.2765.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.cs = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0763.0.copyload, ptr %.sroa.2765.0.copyload, i16 2, ptr null) #25 ; 2 uses
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0      ; 12 uses
  %i.cu = extractvalue { ptr, i32 } %i.cs, 1      ; 12 uses
  %.sroa.0752.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2754.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract832, ptr %117, align 8, !tbaa !186
  %.sroa.4840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %117, i64 8
  store i32 %.fca.1.extract833, ptr %.sroa.4840.0..sroa_idx, align 8, !tbaa !70
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 60, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0752.0.copyload, ptr %.sroa.2754.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %117, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %90) #25 ; 2 uses
  %.fca.0.extract748 = extractvalue { ptr, i32 } %i.cv, 0 ; 2 uses
  %.fca.1.extract749 = extractvalue { ptr, i32 } %i.cv, 1 ; 2 uses
  %.sroa.0742.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2744.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract748, ptr %118, align 8, !tbaa !186
  %.sroa.5757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %118, i64 8
  store i32 %.fca.1.extract749, ptr %.sroa.5757.0..sroa_idx, align 8, !tbaa !70
  store ptr %.fca.0.extract842, ptr %119, align 8, !tbaa !186
  %.sroa.5859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i32 %.fca.1.extract843, ptr %.sroa.5859.0..sroa_idx, align 8, !tbaa !70
  %i.cw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0742.0.copyload, ptr %.sroa.2744.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %118, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %119) #25 ; 2 uses
  %.fca.0.extract738 = extractvalue { ptr, i32 } %i.cw, 0
  %.fca.1.extract739 = extractvalue { ptr, i32 } %i.cw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #25
  %.sroa.0735.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2737.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract842, ptr %121, align 8, !tbaa !186
  %.sroa.5859.0..sroa_idx860 = getelementptr inbounds nuw i8, ptr %121, i64 8
  store i32 %.fca.1.extract843, ptr %.sroa.5859.0..sroa_idx860, align 8, !tbaa !70
  store ptr %.fca.0.extract738, ptr %122, align 8, !tbaa !186
  %.sroa.4746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %122, i64 8
  store i32 %.fca.1.extract739, ptr %.sroa.4746.0..sroa_idx, align 8, !tbaa !70
  %i.cx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 179, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0735.0.copyload, ptr %.sroa.2737.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %121, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %122) #25 ; 2 uses
  %.fca.0.extract731 = extractvalue { ptr, i32 } %i.cx, 0
  %.fca.1.extract732 = extractvalue { ptr, i32 } %i.cx, 1
  store ptr %.fca.0.extract731, ptr %120, align 8
  %.sroa.2734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %120, i64 8
  store i32 %.fca.1.extract732, ptr %.sroa.2734.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #25
  call void @_ZN4llvm12SelectionDAG11SplitScalarERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.344") align 8 %123, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %120, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %87) #25
  %.sroa.01704.0.copyload1705 = load ptr, ptr %123, align 8, !tbaa !186
  %.sroa.5.0..sroa_idx1707 = getelementptr inbounds nuw i8, ptr %123, i64 8
  %.sroa.5.0.copyload1708 = load i32, ptr %.sroa.5.0..sroa_idx1707, align 8, !tbaa !70
  %i.cy = getelementptr inbounds nuw i8, ptr %123, i64 16
  %.sroa.01710.0.copyload1711 = load ptr, ptr %i.cy, align 8, !tbaa !186
  %.sroa.51712.0..sroa_idx1713 = getelementptr inbounds nuw i8, ptr %123, i64 24
  %.sroa.51712.0.copyload1714 = load i32, ptr %.sroa.51712.0..sroa_idx1713, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #25
  store ptr %.fca.0.extract878, ptr %124, align 8, !tbaa !186
  %.sroa.5887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %124, i64 8
  store i32 %.fca.1.extract879, ptr %.sroa.5887.0..sroa_idx, align 8, !tbaa !70
  store ptr %.sroa.01704.0.copyload1705, ptr %125, align 8, !tbaa !186
  %.sroa.5.0..sroa_idx1706 = getelementptr inbounds nuw i8, ptr %125, i64 8
  store i32 %.sroa.5.0.copyload1708, ptr %.sroa.5.0..sroa_idx1706, align 8, !tbaa !70
  store ptr %.fca.0.extract790, ptr %126, align 8, !tbaa !186
  %.sroa.8799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %126, i64 8
  store i32 %.fca.1.extract791, ptr %.sroa.8799.0..sroa_idx, align 8, !tbaa !70
  %i.cz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 75, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr %i.ct, i32 %i.cu, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %124, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %125, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %126) #25 ; 2 uses
  %.fca.0.extract724 = extractvalue { ptr, i32 } %i.cz, 0 ; 3 uses
  %.fca.1.extract725 = extractvalue { ptr, i32 } %i.cz, 1 ; 2 uses
  store ptr %.fca.0.extract865, ptr %127, align 8, !tbaa !186
  %.sroa.5874.0..sroa_idx = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i32 %.fca.1.extract866, ptr %.sroa.5874.0..sroa_idx, align 8, !tbaa !70
  store ptr %.sroa.01710.0.copyload1711, ptr %128, align 8, !tbaa !186
  %.sroa.51712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %128, i64 8
  store i32 %.sroa.51712.0.copyload1714, ptr %.sroa.51712.0..sroa_idx, align 8, !tbaa !70
  store ptr %.fca.0.extract724, ptr %129, align 8
  %.sroa.2714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %129, i64 8
  store i32 1, ptr %.sroa.2714.0..sroa_idx, align 8
  %i.da = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 75, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr %i.ct, i32 %i.cu, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %127, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %128, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %129) #25 ; 2 uses
  %.fca.0.extract707 = extractvalue { ptr, i32 } %i.da, 0 ; 2 uses
  %.fca.1.extract708 = extractvalue { ptr, i32 } %i.da, 1 ; 2 uses
  %.sroa.0696.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2698.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #25
  store ptr %.fca.0.extract724, ptr %130, align 8, !tbaa !186
  %.sroa.61522.0..sroa_idx1523 = getelementptr inbounds nuw i8, ptr %130, i64 8
  store i32 %.fca.1.extract725, ptr %.sroa.61522.0..sroa_idx1523, align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %130, i64 16
  store ptr %.fca.0.extract707, ptr %i.db, align 8, !tbaa !186
  %.sroa.5720.0..sroa_idx721 = getelementptr inbounds nuw i8, ptr %130, i64 24
  store i32 %.fca.1.extract708, ptr %.sroa.5720.0..sroa_idx721, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %81)
  store ptr %130, ptr %81, align 8, !tbaa !536
  %.sroa.26.0..sroa_idx.i1234 = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 2, ptr %.sroa.26.0..sroa_idx.i1234, align 8, !tbaa !470
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 71, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.303") align 8 %81) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81)
  %.fca.0.extract688 = extractvalue { ptr, i32 } %i.dc, 0
  %.fca.1.extract689 = extractvalue { ptr, i32 } %i.dc, 1
  %i.dd = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 %.sroa.0696.0.copyload, ptr %.sroa.2698.0.copyload, ptr %.fca.0.extract688, i32 %.fca.1.extract689) #25 ; 2 uses
  %.fca.0.extract684 = extractvalue { ptr, i32 } %i.dd, 0 ; 2 uses
  %.fca.1.extract685 = extractvalue { ptr, i32 } %i.dd, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #25
  %.sroa.0678.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2680.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract748, ptr %131, align 8, !tbaa !186
  %.sroa.5757.0..sroa_idx758 = getelementptr inbounds nuw i8, ptr %131, i64 8
  store i32 %.fca.1.extract749, ptr %.sroa.5757.0..sroa_idx758, align 8, !tbaa !70
  store ptr %.fca.0.extract684, ptr %132, align 8, !tbaa !186
  %.sroa.5701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %132, i64 8
  store i32 %.fca.1.extract685, ptr %.sroa.5701.0..sroa_idx, align 8, !tbaa !70
  %i.de = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 61, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0678.0.copyload, ptr %.sroa.2680.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %131, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %132) #25 ; 2 uses
  %.fca.0.extract674 = extractvalue { ptr, i32 } %i.de, 0
  %.fca.1.extract675 = extractvalue { ptr, i32 } %i.de, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #25
  %.sroa.0671.0.copyload = load i16, ptr %86, align 8, !tbaa !61
  %.sroa.2673.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !85
  store ptr %.fca.0.extract684, ptr %134, align 8, !tbaa !186
  %.sroa.5701.0..sroa_idx702 = getelementptr inbounds nuw i8, ptr %134, i64 8
  store i32 %.fca.1.extract685, ptr %.sroa.5701.0..sroa_idx702, align 8, !tbaa !70
  store ptr %.fca.0.extract674, ptr %135, align 8, !tbaa !186
  %.sroa.4682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %135, i64 8
  store i32 %.fca.1.extract675, ptr %.sroa.4682.0..sroa_idx, align 8, !tbaa !70
  %i.df = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 179, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0671.0.copyload, ptr %.sroa.2673.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %134, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %135) #25 ; 2 uses
  %.fca.0.extract667 = extractvalue { ptr, i32 } %i.df, 0
  %.fca.1.extract668 = extractvalue { ptr, i32 } %i.df, 1
  store ptr %.fca.0.extract667, ptr %133, align 8
  %.sroa.2670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %133, i64 8
  store i32 %.fca.1.extract668, ptr %.sroa.2670.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #25
  call void @_ZN4llvm12SelectionDAG11SplitScalarERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.344") align 8 %136, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %133, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %87) #25
  %.sroa.01716.0.copyload1717 = load ptr, ptr %136, align 8, !tbaa !186
  %.sroa.51718.0..sroa_idx1719 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %.sroa.51718.0.copyload1720 = load i32, ptr %.sroa.51718.0..sroa_idx1719, align 8, !tbaa !70
  %i.dg = getelementptr inbounds nuw i8, ptr %136, i64 16
  %.sroa.01722.0.copyload1723 = load ptr, ptr %i.dg, align 8, !tbaa !186
  %.sroa.51724.0..sroa_idx1725 = getelementptr inbounds nuw i8, ptr %136, i64 24
  %.sroa.51724.0.copyload1726 = load i32, ptr %.sroa.51724.0..sroa_idx1725, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #25
  store ptr %.fca.0.extract724, ptr %137, align 8, !tbaa !186
  %.sroa.61522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %137, i64 8
  store i32 %.fca.1.extract725, ptr %.sroa.61522.0..sroa_idx, align 8, !tbaa !70
  store ptr %.sroa.01716.0.copyload1717, ptr %138, align 8, !tbaa !186
  %.sroa.51718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %138, i64 8
  store i32 %.sroa.51718.0.copyload1720, ptr %.sroa.51718.0..sroa_idx, align 8, !tbaa !70
  store ptr %.fca.0.extract790, ptr %139, align 8, !tbaa !186
  %.sroa.8799.0..sroa_idx800 = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i32 %.fca.1.extract791, ptr %.sroa.8799.0..sroa_idx800, align 8, !tbaa !70
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 75, ptr noundef nonnull align 8 dereferenceable(12) %85, ptr %i.ct, i32 %i.cu, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %137, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %138, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %139) #25 ; 2 uses
  %.fca.0.extract660 = extractvalue { ptr, i32 } %i.dh, 0 ; 2 uses
  %.fca.1.extract661 = extractvalue { ptr, i32 } %i.dh, 1
  store ptr %.fca.0.extract707, ptr %140, align 8, !tbaa !186
  %.sroa.5720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i32 %.fca.1.extract708, ptr %.sroa.5720.0..sroa_idx, align 8, !tbaa !70
  store ptr %.sroa.01722.0.copyload1723, ptr %141, align 8, !tbaa !186
end_hunk_1
