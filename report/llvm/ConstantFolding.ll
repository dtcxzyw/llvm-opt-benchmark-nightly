Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ConstantFolding?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_123ConstantFoldScalarCall1EN4llvm9StringRefEjPNS0_4TypeENS0_8ArrayRefIPNS0_8ConstantEEEPKNS0_17TargetLibraryInfoEPKNS0_8CallBaseE:bb.a
bb.hn:                                            ; preds = %bb.hi, %bb.hi, %bb.hi, %bb.hi
  %i.ahc = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.adg, i32 noundef 0) #26 ; 3 uses
  %.not.i.i620 = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i620, label %.thread691, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ahd = load i8, ptr %i.ahc, align 8, !tbaa !23
  %i.ahe = icmp eq i8 %i.ahd, 7
  br i1 %i.ahe, label %bb.hp, label %.thread691

bb.hp:                                            ; preds = %bb.ho
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahc, i64 24
  %i.ahg = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_127ConstantFoldSSEConvertToIntERKN4llvm7APFloatEbPNS0_4TypeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.ahf, i1 noundef zeroext true, ptr noundef %3, i1 noundef zeroext true) #28
  br label %.thread691

bb.hq:                                            ; preds = %bb.hi
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.adg, i64 1
  %i.ahi = load i8, ptr %i.ahh, align 1
  %i.ahj = icmp slt i8 %i.ahi, 0
  br i1 %i.ahj, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.ahk = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %3, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #26
  br label %.thread691

bb.hs:                                            ; preds = %bb.hq
  %i.ahl = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %3, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #26
  br label %.thread691

bb.ht:                                            ; preds = %bb.hi
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ags, i64 32
  %i.ahn = load i32, ptr %i.ahm, align 8, !tbaa !57 ; 2 uses
  %.not458811 = icmp eq i32 %i.ahn, 0
  br i1 %.not458811, label %._crit_edge815, label %.lr.ph814

bb.hu:                                            ; preds = %bb.hx
  %i.aho = add nuw i32 %.0812, 1                  ; 2 uses
  %.not458 = icmp eq i32 %i.aho, %i.ahn
  br i1 %.not458, label %._crit_edge815, label %.lr.ph814, !llvm.loop !349

.lr.ph814:                                        ; preds = %bb.ht, %bb.hu
  %.0812 = phi i32 [ %i.aho, %bb.hu ], [ 0, %bb.ht ] ; 2 uses
  %i.ahp = tail call noundef ptr @_ZNK4llvm8Constant19getAggregateElementEj(ptr noundef nonnull align 8 dereferenceable(24) %i.adg, i32 noundef %.0812) #26 ; 3 uses
  %.not459 = icmp eq ptr %i.ahp, null
  br i1 %.not459, label %.thread691, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph814
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 1
  %i.ahr = load i8, ptr %i.ahq, align 1
  %i.ahs = icmp slt i8 %i.ahr, 0
  br i1 %i.ahs, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.aht = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %3, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #26
  br label %.thread691

bb.hx:                                            ; preds = %bb.hv
  %i.ahu = load i8, ptr %i.ahp, align 8, !tbaa !23
  %i.ahv = icmp eq i8 %i.ahu, 5
  br i1 %i.ahv, label %bb.hu, label %.thread691

._crit_edge815:                                   ; preds = %bb.hu, %bb.ht
  %i.ahw = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %3, i64 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #26
  br label %.thread691

.thread691:                                       ; preds = %.lr.ph814, %bb.hx, %.thread694, %bb.hj, %bb.hw, %._crit_edge815, %bb.hs, %bb.hr, %bb.hp, %bb.hm, %bb.ho, %bb.hn, %bb.hl, %bb.hk, %._crit_edge, %bb.he, %_ZN4llvm5APIntD2Ev.exit609, %_ZNK4llvm5APInt8popcountEv.exit, %_ZN4llvm5APIntD2Ev.exit607, %bb.hg, %bb.i, %bb.j, %bb.hh, %bb.hi, %bb.e, %bb.e, %bb.e, %bb.e, %bb.n, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, %bb.k, %bb.b, %bb.f, %bb.c
  %.28 = phi ptr [ %i.i, %bb.c ], [ %.16, %.thread694 ], [ %i.k, %bb.f ], [ null, %bb.k ], [ null, %bb.b ], [ null, %bb.hh ], [ %i.agw, %bb.hj ], [ null, %bb.i ], [ %i.aa, %bb.n ], [ null, %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit ], [ %i.f, %bb.e ], [ %i.f, %bb.e ], [ %i.f, %bb.e ], [ %i.f, %bb.e ], [ null, %bb.ho ], [ null, %bb.hl ], [ %i.agq, %bb.hg ], [ null, %bb.hi ], [ null, %bb.j ], [ %i.afi, %._crit_edge ], [ %i.aex, %bb.he ], [ %i.aea, %_ZN4llvm5APIntD2Ev.exit609 ], [ %i.adx, %_ZNK4llvm5APInt8popcountEv.exit ], [ %i.adj, %_ZN4llvm5APIntD2Ev.exit607 ], [ null, %bb.hk ], [ null, %bb.hn ], [ %i.ahw, %._crit_edge815 ], [ %i.ahk, %bb.hr ], [ %i.ahl, %bb.hs ], [ %i.ahg, %bb.hp ], [ %i.ahb, %bb.hm ], [ %i.aht, %bb.hw ], [ null, %bb.hx ], [ null, %.lr.ph814 ]
  ret ptr %.28
}

declare noundef zeroext i1 @_ZNK4llvm8Constant18isManifestConstantEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11ConstantInt7getTrueERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm20NullPointerIsDefinedEPKNS_8FunctionEj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm7APFloat16convertToIntegerERNS_6APSIntENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(13), i8 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind strictfp uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_124constantFoldCanonicalizeEPKN4llvm4TypeERKNS0_7APFloatEPKNS0_8FunctionE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::APFloat", align 8     ; 9 uses
  %4 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !35     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.c, ptr %1
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, 7
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !58, !nonnull !16, !align !59
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.i = and i8 %i.e, 8
  %i.j = icmp ne i8 %i.i, 0                       ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %i.a, i32 noundef 0) #26
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %i.a, i32 noundef 0) #26
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i: ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !35, !alias.scope !356
  %.not.i.i39 = icmp eq ptr %i.k, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.j) #26
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

bb.f:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %i.j) #26
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit: ; preds = %bb.e, %bb.f
  %i.l = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %trunc.i = trunc i32 %i.n to i8
  switch i8 %trunc.i, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit [
    i8 3, label %bb.h
    i8 2, label %bb.h
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 5, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  br i1 %.not.i.i.i, label %_ZNK4llvm7APFloat10isDenormalEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br i1 %i.o, label %_ZNK4llvm7APFloat8isNormalEv.exit.thread, label %_ZNK4llvm7APFloat8isNormalEv.exit

_ZNK4llvm7APFloat10isDenormalEv.exit.i:           ; preds = %bb.h
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br i1 %i.p, label %_ZNK4llvm7APFloat8isNormalEv.exit.thread, label %_ZNK4llvm7APFloat8isNormalEv.exit

_ZNK4llvm7APFloat8isNormalEv.exit:                ; preds = %.split.i, %_ZNK4llvm7APFloat10isDenormalEv.exit.i
  %i.q = load ptr, ptr %1, align 8, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.r = load ptr, ptr %i.b, align 8
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.r, ptr %1
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 20
  %i.t = load i8, ptr %i.s, align 4               ; 2 uses
  %i.u = and i8 %i.t, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.u, 0
  %i.v = and i8 %i.t, 7
  %i.w = icmp ne i8 %i.v, 3
  %i.x = and i1 %spec.select.i.not.i.i, %i.w
  br i1 %i.x, label %bb.i, label %_ZNK4llvm7APFloat8isNormalEv.exit.thread

_ZNK4llvm7APFloat8isNormalEv.exit.thread:         ; preds = %.split.i, %_ZNK4llvm7APFloat10isDenormalEv.exit.i, %_ZNK4llvm7APFloat8isNormalEv.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !35
  %.not.i.i.i41 = icmp eq ptr %i.y, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8
  %.0.i.i.i42 = select i1 %.not.i.i.i41, ptr %i.z, ptr %1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i42, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, 7
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvm7APFloat8isNormalEv.exit.thread, %_ZNK4llvm7APFloat8isNormalEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !58, !nonnull !16, !align !59
  %i.af = tail call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit

bb.j:                                             ; preds = %_ZNK4llvm7APFloat8isNormalEv.exit.thread
  br i1 %.not.i.i.i41, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %_ZNK4llvm7APFloat10isDenormalEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %_ZNK4llvm7APFloat10isDenormalEv.exit

_ZNK4llvm7APFloat10isDenormalEv.exit:             ; preds = %bb.k, %bb.l
  %.0.i43 = phi i1 [ %i.ag, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp ne ptr %2, null
  %or.cond = and i1 %i.ai, %.0.i43
  br i1 %or.cond, label %bb.m, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit

bb.m:                                             ; preds = %_ZNK4llvm7APFloat10isDenormalEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !35
  %i.ak = tail call i16 @_ZNK4llvm8Function15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 4 dereferenceable(29) %i.aj) #26 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.ak to i8 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i16 %i.ak, 8    ; 3 uses
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.n, label %5

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %0, align 8, !tbaa !58, !nonnull !16, !align !59
  %i.an = tail call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit

5:                                                ; preds = %bb.m
  %6 = icmp eq i16 %.sroa.6.0.extract.shift, 3
  br i1 %6, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %5
  %i.ao = icmp eq i16 %.sroa.6.0.extract.shift, 0 ; 2 uses
  %i.ap = icmp eq i8 %.sroa.0.0.extract.trunc, 3
  %or.cond9 = and i1 %i.ao, %i.ap
  br i1 %or.cond9, label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  %i.aq = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.aq, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ar = load ptr, ptr %i.b, align 8
  %.0.i.i45 = select i1 %.not.i.i44, ptr %i.ar, ptr %1
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 20
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, 8
  %i.av = icmp ne i8 %i.au, 0
  %i.aw = icmp ne i16 %.sroa.6.0.extract.shift, 2
  %or.cond13.not = and i1 %i.aw, %i.av
  br i1 %or.cond13.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp ne i8 %.sroa.0.0.extract.trunc, 2
  %.not = xor i1 %i.ao, true
  %.not37 = or i1 %i.ax, %.not
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = phi i1 [ %.not37, %bb.p ], [ false, %bb.o ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !58, !nonnull !16, !align !59
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %4, ptr noundef nonnull align 4 dereferenceable(29) %i.aq, i1 noundef zeroext %i.ay) #28
  %i.ba = call noundef ptr @_ZN4llvm10ConstantFP3getERNS_11LLVMContextERKNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNK4llvm4Type14isIEEELikeFPTyEv.exit

_ZNK4llvm4Type14isIEEELikeFPTyEv.exit:            ; preds = %bb.n, %bb.q, %5, %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %bb.g, %_ZNK4llvm7APFloat10isDenormalEv.exit, %bb.i, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit
  %.1 = phi ptr [ %i.l, %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit ], [ %i.af, %bb.i ], [ null, %bb.g ], [ null, %_ZNK4llvm7APFloat10isDenormalEv.exit ], [ %i.an, %bb.n ], [ %i.ba, %bb.q ], [ null, %5 ], [ null, %_ZNK4llvm12DenormalModeeqES0_.exit.thread ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm7APFloat15roundToIntegralENS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat15roundToIntegralENS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat15roundToIntegralENS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %1) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloat9clearSignEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.0.i.i = select i1 %.not.i.i, ptr %i.c, ptr %0
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, 8
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %_ZN4llvm7APFloat10changeSignEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm6detail9IEEEFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  br label %_ZN4llvm7APFloat10changeSignEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4llvm6detail13DoubleAPFloat10changeSignEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  br label %_ZN4llvm7APFloat10changeSignEv.exit

_ZN4llvm7APFloat10changeSignEv.exit:              ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZNK4llvm7APFloatmiERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFloat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat8subtractERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 1) #26 ; 0 uses
  br label %_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat8subtractERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 1) #26 ; 0 uses
  br label %_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit

_ZN4llvm7APFloat8subtractERKS0_NS_12RoundingModeE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i64 noundef %2) #26
  br label %_ZN4llvm7APFloat7StorageC2IJRmEEERKNS_12fltSemanticsEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %1, i64 noundef %2) #26
  br label %_ZN4llvm7APFloat7StorageC2IJRmEEERKNS_12fltSemanticsEDpOT_.exit

_ZN4llvm7APFloat7StorageC2IJRmEEERKNS_12fltSemanticsEDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm7APFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind strictfp willreturn memory(read, argmem: readwrite) uwtable
define linkonce_odr hidden void @_ZN4llvm7minimumERKNS_7APFloatES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFloat") align 8 %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %2) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !35
  %.not.i.i.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.c, ptr %1
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, 7                           ; 2 uses
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  %i.h = load ptr, ptr %0, align 8, !tbaa !35, !alias.scope !361
  %.not.i.i = icmp eq ptr %i.h, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !361
  %.0.i.i = select i1 %.not.i.i, ptr %i.j, ptr %0
  tail call void @_ZN4llvm6detail9IEEEFloat9makeQuietEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i) #26
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !35
  %.not.i.i.i15 = icmp eq ptr %i.k, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i.i.i16 = select i1 %.not.i.i.i15, ptr %i.m, ptr %2
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i16, i64 20
  %i.o = load i8, ptr %i.n, align 4               ; 2 uses
  %i.p = and i8 %i.o, 7                           ; 2 uses
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #26
  %i.r = load ptr, ptr %0, align 8, !tbaa !35, !alias.scope !362
  %.not.i.i17 = icmp eq ptr %i.r, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !362
  %.0.i.i18 = select i1 %.not.i.i17, ptr %i.t, ptr %0
  tail call void @_ZN4llvm6detail9IEEEFloat9makeQuietEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i18) #26
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.f, 3
  %i.v = icmp eq i8 %i.p, 3
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = and i8 %i.e, 8
  %i.x = icmp ne i8 %i.w, 0                       ; 2 uses
  %i.y = and i8 %i.o, 8
  %i.z = icmp ne i8 %i.y, 0
  %i.aa = xor i1 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = select i1 %i.x, ptr %1, ptr %2
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #26
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.e
  br i1 %.not.i.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef i32 @_ZNK4llvm6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %_ZNK4llvm7APFloatltERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %_ZNK4llvm7APFloatltERKS0_.exit

_ZNK4llvm7APFloatltERKS0_.exit:                   ; preds = %bb.i, %bb.j
  %.0.i.i30 = phi i32 [ %i.ac, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = icmp eq i32 %.0.i.i30, 0
  %i.af = select i1 %i.ae, ptr %2, ptr %1
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.af) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm7APFloatltERKS0_.exit, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind strictfp uwtable
define linkonce_odr noundef ptr @_ZN4llvm16dyn_cast_or_nullINS_22ConstrainedFPIntrinsicEKNS_8CallBaseEEEDaPT0_(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
end_hunk_0
