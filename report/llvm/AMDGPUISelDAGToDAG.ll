Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelDAGToDAG?download=true
begin_hunk_0_@_ZNK4llvm18AMDGPUDAGToDAGISel15SelectWMMAVISrcENS_7SDValueERS1_:bb.a
bb.au:                                            ; preds = %.peel.next, %bb.az
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.az ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [40 x i8], ptr %.pre323, i64 %indvars.iv ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !415
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !415
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !404 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !407 ; 3 uses
  %i.hs = icmp ult i32 %i.hr, 65
  br i1 %i.hs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ht = load i64, ptr %i.hp, align 8, !tbaa !201
  %i.hu = icmp eq i32 %i.hr, 0
  %i.hv = sub nuw nsw i32 64, %i.hr
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = shl i64 %i.ht, %i.hw
  %i.hy = ashr exact i64 %i.hx, %i.hw
  %.0.i.i227 = select i1 %i.hu, i64 0, i64 %i.hy
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit228

bb.aw:                                            ; preds = %bb.au
  %i.hz = load ptr, ptr %i.hp, align 8, !tbaa !201
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !14
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit228

_ZNK4llvm5APInt12getSExtValueEv.exit228:          ; preds = %bb.av, %bb.aw
  %.0.i226 = phi i64 [ %.0.i.i227, %bb.av ], [ %i.ia, %bb.aw ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !404 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !407 ; 3 uses
  %i.ig = icmp ult i32 %i.if, 65
  br i1 %i.ig, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit228
  %i.ih = load i64, ptr %i.id, align 8, !tbaa !201
  %i.ii = icmp eq i32 %i.if, 0
  %i.ij = sub nuw nsw i32 64, %i.if
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = shl i64 %i.ih, %i.ik
  %i.im = ashr exact i64 %i.il, %i.ik
  %.0.i.i230 = select i1 %i.ii, i64 0, i64 %i.im
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit231

bb.ay:                                            ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit228
  %i.in = load ptr, ptr %i.id, align 8, !tbaa !201
  %i.io = load i64, ptr %i.in, align 8, !tbaa !14
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit231

_ZNK4llvm5APInt12getSExtValueEv.exit231:          ; preds = %bb.ay, %bb.ax
  %.0.i229 = phi i64 [ %.0.i.i230, %bb.ax ], [ %i.io, %bb.ay ]
  %i.ip = shl i64 %.0.i229, 32
  %i.iq = add nsw i64 %i.ip, %.0.i226
  %.not169 = icmp eq i64 %i.iq, %i.ha
  br i1 %.not169, label %bb.az, label %.thread303

bb.az:                                            ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit231
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not170 = icmp samesign ult i64 %indvars.iv.next, %i.hi
  br i1 %.not170, label %bb.au, label %._crit_edge, !llvm.loop !910

._crit_edge:                                      ; preds = %bb.az, %_ZN4llvm5APIntD2Ev.exit232.peel._crit_edge, %.preheader
  %.0152.lcssa = phi i64 [ 0, %.preheader ], [ %i.ha, %_ZN4llvm5APIntD2Ev.exit232.peel._crit_edge ], [ %i.ha, %bb.az ]
  %i.ir = load ptr, ptr %i.fl, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.it = load i64, ptr %i.is, align 8, !tbaa !393
  store i64 %i.it, ptr %15, align 8, !tbaa !393
  %i.iu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !394
  store i32 %i.iw, ptr %i.iu, align 8, !tbaa !395
  %i.ix = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ir, i64 noundef %.0152.lcssa, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ix, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ix, 1
  store ptr %.fca.0.extract, ptr %3, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.thread303

.thread303:                                       ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit231, %_ZN4llvm5APIntD2Ev.exit232.peel, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, %._crit_edge, %bb.am, %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm9BitVectorD2Ev.exit197
  %.23 = phi i1 [ true, %_ZN4llvm9BitVectorD2Ev.exit ], [ true, %_ZN4llvm9BitVectorD2Ev.exit197 ], [ true, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit ], [ false, %bb.am ], [ true, %._crit_edge ], [ false, %_ZN4llvm5APIntD2Ev.exit232.peel ], [ false, %_ZNK4llvm5APInt12getSExtValueEv.exit231 ]
  ret i1 %.23
}

declare { ptr, i32 } @_ZNK4llvm17BuildVectorSDNode13getSplatValueEPNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8optionalIN4llvm5APIntEEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !905, !range !518, !noundef !142
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !407
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !407
  %i.i = icmp ult i32 %i.h, 65
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %1, align 8, !tbaa !201
  store i64 %i.j, ptr %0, align 8, !tbaa !201
  %i.k = load i32, ptr %i.g, align 8, !tbaa !407
  store i32 %i.k, ptr %i.d, align 8, !tbaa !407
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !407  ; 2 uses
  store i32 %i.m, ptr %i.d, align 8, !tbaa !407
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %1, align 8, !tbaa !201
  store i64 %i.o, ptr %0, align 8, !tbaa !201
  br label %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #24
  br label %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit

_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit: ; preds = %bb.g, %bb.h
  store i8 1, ptr %i.a, align 8, !tbaa !905
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %bb.e, %bb.d, %_ZNSt19_Optional_base_implIN4llvm5APIntESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !519    ; 4 uses
  %.not.i = icmp eq i16 %i.a, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i16 %i.a, -19
  %spec.select.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split
  %i.d = zext nneg i16 %i.a to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !382
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.j = tail call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %.sroa.31.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..0..sroa_idx, align 8, !tbaa !398
  %i.k = insertvalue { i16, ptr } poison, i16 %i.a, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %.sroa.31.0.copyload, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.b, %bb.d
  %.fca.1.insert.merged = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret { i16, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #24
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %2) #24
  br label %_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit

_ZN4llvm7APFloat7StorageC2IJRKNS_5APIntEEEERKNS_12fltSemanticsEDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel18SelectSWMMACIndex8ENS_7SDValueERS1_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  store ptr %1, ptr %3, align 8, !tbaa !385
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !387
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !388
  %i.c = icmp eq i32 %i.b, 200
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !384  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !388
  switch i32 %i.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !415
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !390
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !372
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.p, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.q, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.r = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.s = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %.sroa.0.0.copyload.i.i18 = load i64, ptr %i.t, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.s, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i19 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i18, 0
  %.fca.1.insert.i.i20 = insertvalue { i64, i8 } %.fca.0.insert.i.i19, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.u = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.d, %bb.e
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i20, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.fca.1.extract6 = extractvalue { i64, i8 } %.pn.i, 1
  %i.v = trunc nuw i8 %.fca.1.extract6 to i1
  br i1 %i.v, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract5 = extractvalue { i64, i8 } %.pn.i, 0
  %i.w = icmp eq i64 %.fca.0.extract5, 32
  %i.x = icmp ne ptr %.0.i.i.i, null
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !404  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !407
  %i.ad = icmp ult i32 %i.ac, 65
  %i.ae = load ptr, ptr %i.aa, align 8
  %spec.select.i.i.i = select i1 %i.ad, ptr %i.aa, ptr %i.ae ; 2 uses
  %.0.i.i.i21 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !201
  %i.af = and i64 %.0.i.i.i21, 7
  %i.ag = icmp eq i64 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.i.i.i23 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !201
  %i.ah = lshr i64 %.0.i.i.i23, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !397
  %i.ai = and i64 %i.ah, 4294967295
  br label %bb.i

.critedge:                                        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.critedge, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.ai, %bb.h ], [ 0, %bb.g ], [ 0, %.critedge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !393
  store i64 %i.am, ptr %6, align 8, !tbaa !393
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !394
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !395
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ak, i64 noundef %.1, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aq, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aq, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !387
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel19SelectSWMMACIndex16ENS_7SDValueERS1_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  store ptr %1, ptr %3, align 8, !tbaa !385
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !387
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !388
  %i.c = icmp eq i32 %i.b, 200
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !384  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !415  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !388
  switch i32 %i.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !415
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !390
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !372
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.p, align 8, !tbaa !382 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !398
  store i16 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.q, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.r = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.s = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.t, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.s, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i18 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i17, 0
  %.fca.1.insert.i.i19 = insertvalue { i64, i8 } %.fca.0.insert.i.i18, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.u = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.d, %bb.e
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i19, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.fca.1.extract6 = extractvalue { i64, i8 } %.pn.i, 1
end_hunk_0
