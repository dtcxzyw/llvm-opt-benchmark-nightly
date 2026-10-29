Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MCSubtargetInfo?download=true
inline.NumInlined: 622
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm15MCSubtargetInfoC2ERKNS_6TripleENS_9StringRefES4_S4_NS_11StringTableENS_8ArrayRefINS_18SubtargetFeatureKVEEENS6_INS_18SubtargetSubTypeKVEEEPKNS_12MCSchedModelEPKNS_19MCWriteProcResEntryEPKNS_19MCWriteLatencyEntryEPKNS_18MCReadAdvanceEntryEPKNS_10InstrStageEPKjSR_:bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #23
  unreachable

bb.f:                                             ; preds = %_ZN4llvm6TripleC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %3, ptr %i.b, align 8, !tbaa !14
  %i.x = icmp ugt i64 %3, 15
  br i1 %i.x, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.y, ptr %i.t, align 8, !tbaa !24
  %i.z = load i64, ptr %i.b, align 8, !tbaa !14
  store i64 %i.z, ptr %i.u, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.aa = phi ptr [ %i.y, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  switch i64 %3, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %2, align 1, !tbaa !19
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !25
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !22
  %i.ai = icmp eq ptr %4, null
  %i.aj = icmp ne i64 %5, 0
  %or.cond.i.i.i9 = and i1 %i.ai, %i.aj
  br i1 %or.cond.i.i.i9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #23
  unreachable

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %5, ptr %i.a, align 8, !tbaa !14
  %i.ak = icmp ugt i64 %5, 15
  br i1 %i.ak, label %bb.l, label %._crit_edge.i.i.i.i10

bb.l:                                             ; preds = %bb.k
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !24
  %i.am = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %bb.l, %bb.k
  %i.an = phi ptr [ %i.al, %bb.l ], [ %i.ah, %bb.k ] ; 2 uses
  switch i64 %5, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit11
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i10
  %i.ao = load i8, ptr %4, align 1, !tbaa !19
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit11

bb.n:                                             ; preds = %._crit_edge.i.i.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %4, i64 %5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit11: ; preds = %._crit_edge.i.i.i.i10, %bb.m, %bb.n
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !25
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !102
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !103
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !104
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %10, ptr %i.aw, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %11, ptr %i.ax, align 8, !tbaa !105
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %12, ptr %i.ay, align 8, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %13, ptr %i.az, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %14, ptr %i.ba, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %15, ptr %i.bb, align 8, !tbaa !109
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %16, ptr %i.bc, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i8 0, i64 48, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bg, align 8, !tbaa !25
  store i8 0, ptr %i.bf, align 8, !tbaa !19
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.bk = load i64, ptr %i.aq, align 8, !tbaa !25
  call void @_ZN4llvm15MCSubtargetInfo19InitMCProcessorInfoENS_9StringRefES1_S1_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr %i.bh, i64 %i.bi, ptr %i.bj, i64 %i.bk, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm15MCSubtargetInfo13ToggleFeatureEm(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(320) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = and i64 %1, 63
  %i.c = shl nuw i64 1, %i.b
  %i.d = lshr i64 %1, 6
  %i.e = and i64 %i.d, 67108863
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = xor i64 %i.g, %i.c
  store i64 %i.h, ptr %i.f, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm15MCSubtargetInfo13ToggleFeatureERKNS_13FeatureBitsetE(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(320) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = load i64, ptr %i.a, align 8, !tbaa !14
  %i.d = xor i64 %i.c, %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = xor i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = xor i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  %i.s = xor i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = xor i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ac = xor i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm15MCSubtargetInfo26SetFeatureBitsTransitivelyERKNS_13FeatureBitsetE(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(320) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @_ZL14SetImpliedBitsRN4llvm13FeatureBitsetES0_NS_8ArrayRefINS_18SubtargetFeatureKVEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull byval(%"class.llvm::FeatureBitset") align 8 %1, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14SetImpliedBitsRN4llvm13FeatureBitsetES0_NS_8ArrayRefINS_18SubtargetFeatureKVEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef byval(%"class.llvm::FeatureBitset") align 8 captures(none) %1, ptr nofree readonly captures(address) %2, i64 %3) unnamed_addr #4 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8          ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load <2 x i64>, ptr %.sroa.11.0..sroa_idx, align 8 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load <2 x i64>, ptr %.sroa.19.0..sroa_idx, align 8
  %.fr119 = freeze <2 x i64> %i.c                 ; 3 uses
  %i.d = shufflevector <2 x i64> %i.a, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i64> %i.d
  %i.e = icmp ne <4 x i64> %.fr, zeroinitializer
  %i.f = extractelement <2 x i64> %.fr119, i64 0  ; 2 uses
  %4 = extractelement <2 x i64> %.fr119, i64 1    ; 2 uses
  %5 = bitcast <4 x i1> %i.e to i4
  %i.g = icmp ne i4 %5, 0
  %6 = or i64 %4, %i.f
  %i.h = icmp ne i64 %6, 0
  %op.rdx117 = or i1 %i.g, %i.h
  br i1 %op.rdx117, label %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph, label %._crit_edge88

_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph: ; preds = %bb.a
  %.idx = mul nuw nsw i64 %3, 56
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not58 = icmp eq i64 %3, 0
  %i.j = extractelement <2 x i64> %i.a, i64 0
  %i.k = extractelement <2 x i64> %i.a, i64 1
  %i.l = extractelement <2 x i64> %i.b, i64 0
  %i.m = extractelement <2 x i64> %i.b, i64 1
  br i1 %.not58, label %._crit_edge88, label %_ZNK4llvm13FeatureBitset3anyEv.exit.thread

_ZNK4llvm13FeatureBitset3anyEv.exit.thread:       ; preds = %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph, %._crit_edge
  %i.n = phi <2 x i64> [ %i.w, %._crit_edge ], [ %i.a, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ] ; 2 uses
  %i.o = phi <2 x i64> [ %i.x, %._crit_edge ], [ %i.b, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ] ; 2 uses
  %i.p = phi <2 x i64> [ %i.y, %._crit_edge ], [ %.fr119, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ] ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.q = xor <2 x i64> %i.n, splat (i64 -1)
  %i.r = xor <2 x i64> %i.o, splat (i64 -1)
  %i.s = xor <2 x i64> %i.p, splat (i64 -1)
  %i.t = and <2 x i64> %i.ba, %i.q                ; 2 uses
  store <2 x i64> %i.t, ptr %1, align 8
  %i.u = and <2 x i64> %i.bb, %i.r                ; 2 uses
  store <2 x i64> %i.u, ptr %.sroa.11.0..sroa_idx, align 8
  %i.v = and <2 x i64> %i.bc, %i.s
  %.fr122 = freeze <2 x i64> %i.v                 ; 3 uses
  store <2 x i64> %.fr122, ptr %.sroa.19.0..sroa_idx, align 8
  %i.w = or <2 x i64> %i.ba, %i.n                 ; 3 uses
  %i.x = or <2 x i64> %i.bb, %i.o                 ; 3 uses
  %i.y = or <2 x i64> %i.bc, %i.p                 ; 3 uses
  %i.z = shufflevector <2 x i64> %i.t, <2 x i64> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr120 = freeze <4 x i64> %i.z
  %i.aa = icmp ne <4 x i64> %.fr120, zeroinitializer
  %i.ab = extractelement <2 x i64> %.fr122, i64 0
  %7 = extractelement <2 x i64> %.fr122, i64 1
  %8 = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp ne i4 %8, 0
  %9 = or i64 %7, %i.ab
  %i.ad = icmp ne i64 %9, 0
  %op.rdx115 = or i1 %i.ac, %i.ad
  br i1 %op.rdx115, label %_ZNK4llvm13FeatureBitset3anyEv.exit.thread, label %._crit_edge88.loopexit, !llvm.loop !110

bb.b:                                             ; preds = %_ZNK4llvm13FeatureBitset3anyEv.exit.thread, %bb.d
  %.065 = phi ptr [ %2, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread ], [ %i.bd, %bb.d ] ; 5 uses
  %i.ae = phi <2 x i64> [ zeroinitializer, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread ], [ %i.ba, %bb.d ] ; 2 uses
  %i.af = phi <2 x i64> [ zeroinitializer, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread ], [ %i.bb, %bb.d ] ; 2 uses
  %i.ag = phi <2 x i64> [ zeroinitializer, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread ], [ %i.bc, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.065, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !68 ; 2 uses
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = lshr i32 %i.ai, 6
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = and i64 %i.al, %i.ap
  %.not57 = icmp eq i64 %i.aq, 0
  br i1 %.not57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.065, i64 8
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !tbaa !14
  %i.at = or <2 x i64> %i.as, %i.ae
  %i.au = getelementptr inbounds nuw i8, ptr %.065, i64 24
  %i.av = load <2 x i64>, ptr %i.au, align 8, !tbaa !14
  %i.aw = or <2 x i64> %i.av, %i.af
  %i.ax = getelementptr inbounds nuw i8, ptr %.065, i64 40
  %i.ay = load <2 x i64>, ptr %i.ax, align 8, !tbaa !14
  %i.az = or <2 x i64> %i.ay, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ba = phi <2 x i64> [ %i.at, %bb.c ], [ %i.ae, %bb.b ] ; 3 uses
  %i.bb = phi <2 x i64> [ %i.aw, %bb.c ], [ %i.af, %bb.b ] ; 3 uses
  %i.bc = phi <2 x i64> [ %i.az, %bb.c ], [ %i.ag, %bb.b ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.065, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge88.loopexit:                           ; preds = %._crit_edge
  %i.be = extractelement <2 x i64> %i.y, i64 1
  %i.bf = extractelement <2 x i64> %i.y, i64 0
  %i.bg = extractelement <2 x i64> %i.x, i64 1
  %i.bh = extractelement <2 x i64> %i.x, i64 0
  %i.bi = extractelement <2 x i64> %i.w, i64 1
  %i.bj = extractelement <2 x i64> %i.w, i64 0
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph, %bb.a
  %.sroa.041.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ], [ %i.bj, %._crit_edge88.loopexit ]
  %.sroa.7.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ], [ %i.bi, %._crit_edge88.loopexit ]
  %.sroa.11.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.l, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ], [ %i.bh, %._crit_edge88.loopexit ]
  %.sroa.1545.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ], [ %i.bg, %._crit_edge88.loopexit ]
  %.sroa.19.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ], [ %i.bf, %._crit_edge88.loopexit ]
  %.sroa.23.0.lcssa = phi i64 [ 0, %bb.a ], [ %4, %_ZNK4llvm13FeatureBitset3anyEv.exit.thread.lr.ph ], [ %i.be, %._crit_edge88.loopexit ]
  %i.bk = load i64, ptr %0, align 8, !tbaa !14
  %i.bl = or i64 %i.bk, %.sroa.041.0.lcssa
  store i64 %i.bl, ptr %0, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14
  %i.bo = or i64 %i.bn, %.sroa.7.0.lcssa
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !14
  %i.br = or i64 %i.bq, %.sroa.11.0.lcssa
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !14
  %i.bu = or i64 %i.bt, %.sroa.1545.0.lcssa
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !14
  %i.bx = or i64 %i.bw, %.sroa.19.0.lcssa
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !14
  %i.ca = or i64 %i.bz, %.sroa.23.0.lcssa
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm15MCSubtargetInfo28ClearFeatureBitsTransitivelyERKNS_13FeatureBitsetE(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(320) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a, %bb.e
  %.08 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]    ; 4 uses
  %i.c = and i32 %.08, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d                      ; 2 uses
  %i.f = lshr i32 %.08, 6
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = and i64 %i.i, %i.e
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = xor i64 %i.e, -1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = and i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !14
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !18
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @_ZL16ClearImpliedBitsRN4llvm13FeatureBitsetEjNS_8ArrayRefINS_18SubtargetFeatureKVEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %.08, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, 384
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !111
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16ClearImpliedBitsRN4llvm13FeatureBitsetEjNS_8ArrayRefINS_18SubtargetFeatureKVEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr nofree readonly captures(address) %2, i64 %3) unnamed_addr #6 {
bb.a:
  %.idx = mul nuw nsw i64 %3, 56
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not14 = icmp eq i64 %3, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = and i32 %1, 63
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c
  %i.e = lshr i32 %1, 6
  %i.f = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.015 = phi ptr [ %2, %.lr.ph ], [ %i.v, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = and i64 %i.i, %i.d
  %.not13 = icmp eq i64 %i.j, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.015, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68   ; 3 uses
  %i.m = and i32 %i.l, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  %i.p = xor i64 %i.o, -1
  %i.q = lshr i32 %i.l, 6
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = and i64 %i.t, %i.p
  store i64 %i.u, ptr %i.s, align 8, !tbaa !14
  tail call fastcc void @_ZL16ClearImpliedBitsRN4llvm13FeatureBitsetEjNS_8ArrayRefINS_18SubtargetFeatureKVEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.l, ptr %2, i64 %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.015, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm15MCSubtargetInfo13ToggleFeatureENS_9StringRefE(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(320) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !19
  switch i8 %i.a, label %_ZN4llvm17SubtargetFeatures9StripFlagENS_9StringRefE.exit [
    i8 45, label %bb.b
    i8 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp ne i64 %2, 0
  %.sroa.speculated4.i.i = zext i1 %i.b to i64    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated4.i.i
  %i.d = sub i64 %2, %.sroa.speculated4.i.i
  br label %_ZN4llvm17SubtargetFeatures9StripFlagENS_9StringRefE.exit

_ZN4llvm17SubtargetFeatures9StripFlagENS_9StringRefE.exit: ; preds = %bb.a, %bb.b
  %.pn4.i = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]
  %.pn.i = phi i64 [ %i.d, %bb.b ], [ %2, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.05.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !18 ; 3 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %i.f = tail call fastcc noundef ptr @_ZL4FindIN4llvm18SubtargetFeatureKVEEPKT_NS0_9StringRefENS0_8ArrayRefIS2_EE(ptr %.pn4.i, i64 %.pn.i, ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

end_hunk_0
