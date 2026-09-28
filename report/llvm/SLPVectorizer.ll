Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@_ZNK12_GLOBAL__N_133InstructionsCompatibilityAnalysis11getOperandsERKNS_17InstructionsStateEPN4llvm5ValueE:bb.a
  store i32 6, ptr %i.e, align 4, !tbaa !372
  store ptr %3, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %.sroa.48.0..sroa_idx, align 8
  store i32 2, ptr %i.d, align 8, !tbaa !371
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_117InstructionsState17isCopyableElementEPN4llvm5ValueE(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull %3)
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call fastcc void @_ZN12_GLOBAL__N_19convertToEPN4llvm11InstructionERKNS_17InstructionsStateE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(17) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %0, align 8, !tbaa !359
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !371
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.j, align 4, !tbaa !372
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !371
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EOS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.g) ; 0 uses
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EOS3_.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EOS3_.exit: ; preds = %bb.d, %bb.e
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !359  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt4pairIPN4llvm11InstructionENS0_11SmallVectorIPNS0_5ValueELj6EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EOS3_.exit
  call void @free(ptr noundef %i.n) #31
  br label %_ZNSt4pairIPN4llvm11InstructionENS0_11SmallVectorIPNS0_5ValueELj6EEEED2Ev.exit

_ZNSt4pairIPN4llvm11InstructionENS0_11SmallVectorIPNS0_5ValueELj6EEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2EOS3_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i32, ptr %i.q, align 8, !tbaa !1097
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load ptr, ptr %i.r, align 8, !tbaa !1098 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !580
  %i.u = tail call noundef zeroext i1 @_ZNK4llvm11Instruction13isCommutativeEv(ptr noundef nonnull align 8 dereferenceable(72) %.val5) #35
  %i.v = xor i1 %i.u, true
  %i.w = tail call noundef ptr @_ZN4llvm12ConstantExpr16getBinOpIdentityEjPNS_4TypeEbb(i32 noundef %.val, ptr noundef %i.t, i1 noundef zeroext %i.v, i1 noundef zeroext false) #31
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !359
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.z, align 4, !tbaa !372
  store ptr %3, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  store i32 2, ptr %i.y, align 8, !tbaa !371
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt4pairIPN4llvm11InstructionENS0_11SmallVectorIPNS0_5ValueELj6EEEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL13isCommutativePKN4llvm11InstructionEPKNS_5ValueEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = load i8, ptr %0, align 8, !tbaa !391     ; 3 uses
  %i.c = add i8 %i.b, -85
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.c, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm7CmpInst13isCommutativeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #31
  br label %.thread33

bb.c:                                             ; preds = %bb.a
  %i.e = add i8 %i.b, -62
  %i.f = icmp ult i8 %i.e, -18                    ; 2 uses
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm11Instruction13isCommutativeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #35 ; 2 uses
  %brmerge = or i1 %i.f, %i.g
  %not. = xor i1 %i.f, true
  %.mux = or i1 %i.g, %not.
  br i1 %brmerge, label %.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i8 %i.b, 46
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 8, !tbaa !391
  %i.j = icmp ugt i8 %i.i, 10
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm5Value14hasNUsesOrMoreEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 64) #31
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !876
  %i.n = tail call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value17use_iterator_implIKNS_3UseEEEEEZL13isCommutativePKNS_11InstructionEPKS2_bE3$_0EEbOT_T0_"(ptr %i.m, ptr null, i8 %i.a)
  br i1 %i.n, label %.thread33, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.o = load i8, ptr %0, align 8, !tbaa !391
  %i.p = icmp eq i8 %i.o, 47
  br i1 %i.p, label %bb.i, label %.thread33

bb.i:                                             ; preds = %bb.h
  %i.q = load i8, ptr %1, align 8, !tbaa !391
  %i.r = icmp ugt i8 %i.q, 10
  br i1 %i.r, label %bb.j, label %.thread33

bb.j:                                             ; preds = %bb.i
  %i.s = tail call noundef zeroext i1 @_ZNK4llvm5Value14hasNUsesOrMoreEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 64) #31
  br i1 %i.s, label %.thread33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !876
  %i.v = tail call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value17use_iterator_implIKNS_3UseEEEEEZL13isCommutativePKNS_11InstructionEPKS2_bE3$_1EEbOT_T0_"(ptr %i.u, ptr null)
  br label %.thread33

.thread33:                                        ; preds = %bb.c, %bb.h, %bb.i, %bb.j, %bb.k, %bb.g, %bb.b
  %.2 = phi i1 [ true, %bb.g ], [ %i.d, %bb.b ], [ %i.v, %bb.k ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ %.mux, %bb.c ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZZN12_GLOBAL__N_133InstructionsCompatibilityAnalysis20isCopyablePreferableEN4llvm8ArrayRefIPNS1_5ValueEEERKNS1_13slpvectorizer7BoUpSLPERKNS_17InstructionsStateESC_ENKUlNS2_ISt4pairIS4_S4_EEERbRiE_clESF_SG_SH_(ptr %.0.val, ptr nofree readonly captures(address) %0, i64 %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::slpvectorizer::BoUpSLP::LookAheadHeuristics", align 8 ; 10 uses
  %5 = alloca %"class.llvm::ArrayRef.254", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4840
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !550
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 4880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !670
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 4824
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !671
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL21RootLookAheadMaxDepth, i64 120), align 8, !tbaa !840
  store ptr %i.b, ptr %4, align 8, !tbaa !1240
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !1241
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !1242
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.val, ptr %i.j, align 8, !tbaa !1060
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 2, ptr %i.k, align 8, !tbaa !2030
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.g, ptr %i.l, align 4, !tbaa !2031
  %sext.i = shl i64 %1, 32                        ; 2 uses
  %i.m = ashr exact i64 %sext.i, 32
  %.not30.i = icmp eq i64 %sext.i, 0
  br i1 %.not30.i, label %_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit.thread, label %.lr.ph.preheader.i

_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i32 0, ptr %3, align 4, !tbaa !380
  br label %.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.035.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.419.033.i = phi i8 [ %.sroa.419.1.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.013.032.i = phi i64 [ %i.u, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.018.031.i = phi i32 [ %.sroa.018.1.i, %.lr.ph.i ], [ undef, %.lr.ph.preheader.i ]
  %sext29.i = shl i64 %.sroa.013.032.i, 32
  %i.n = ashr exact i64 %sext29.i, 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1163
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1164
  %i.s = call noundef i32 @_ZNK4llvm13slpvectorizer7BoUpSLP19LookAheadHeuristics18getScoreAtLevelRecEPNS_5ValueES4_PNS_11InstructionES6_iNS_8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.p, ptr noundef %i.r, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.254") align 8 %5) ; 2 uses
  %i.t = icmp sgt i32 %i.s, %.035.i               ; 2 uses
  %.sroa.018.0.extract.trunc.i = trunc i64 %.sroa.013.032.i to i32
  %.sroa.018.1.i = select i1 %i.t, i32 %.sroa.018.0.extract.trunc.i, i32 %.sroa.018.031.i ; 3 uses
  %.sroa.419.1.i = select i1 %i.t, i8 1, i8 %.sroa.419.033.i ; 3 uses
  %.1.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %.035.i) ; 3 uses
  %i.u = add i64 %.sroa.013.032.i, 1              ; 2 uses
  %.not.i = icmp eq i64 %i.u, %i.m
  br i1 %.not.i, label %_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit, label %.lr.ph.i

_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit: ; preds = %.lr.ph.i
  %i.v = zext nneg i8 %.sroa.419.1.i to i64
  %i.w = shl nuw nsw i64 %i.v, 32
  %i.x = zext i32 %.sroa.018.1.i to i64
  %i.y = or disjoint i64 %i.w, %i.x               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i32 %.1.i, ptr %3, align 4, !tbaa !380
  %i.z = icmp eq i32 %.1.i, 15
  br i1 %i.z, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit
  %i.aa = trunc nuw i8 %.sroa.419.1.i to i1
  %i.ab = sext i32 %.sroa.018.1.i to i64
  %i.ac = select i1 %i.aa, i64 %i.ab, i64 0
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1163
  %i.af = call noundef zeroext i1 @_ZN4llvm13slpvectorizer10isConstantEPNS_5ValueE(ptr noundef %i.ae) #31
  br i1 %i.af, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b, %_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit, %_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit.thread
  %.sroa.018.0.insert.insert.i34.ph = phi i64 [ 0, %_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit.thread ], [ %i.y, %_ZNK4llvm13slpvectorizer7BoUpSLP16findBestRootPairENS_8ArrayRefISt4pairIPNS_5ValueES5_EEEi.exit ], [ %i.y, %bb.b ]
  store i8 0, ptr %2, align 1, !tbaa !783
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1164
  %i.ai = call noundef zeroext i1 @_ZN4llvm13slpvectorizer10isConstantEPNS_5ValueE(ptr noundef %i.ah) #31 ; 2 uses
  %i.aj = zext i1 %i.ai to i8
  store i8 %i.aj, ptr %2, align 1, !tbaa !783
  br i1 %i.ai, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.idx = shl nuw nsw i64 %1, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.sroa.03.039 = phi ptr [ %i.ba, %bb.g ], [ %0, %bb.d ] ; 4 uses
  %.sroa.7.038 = phi i64 [ %i.az, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %i.al = load ptr, ptr %.sroa.03.039, align 8, !tbaa !1163
  %i.am = call noundef zeroext i1 @_ZN4llvm13slpvectorizer10isConstantEPNS_5ValueE(ptr noundef %i.al) #31
  br i1 %i.am, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.039, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1164
  %i.ap = call noundef zeroext i1 @_ZN4llvm13slpvectorizer10isConstantEPNS_5ValueE(ptr noundef %i.ao) #31
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !1164
  %i.ar = load ptr, ptr %.sroa.03.039, align 8, !tbaa !1163
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.f
  %.sroa.011.0.insert.ext = and i64 %.sroa.7.038, 4294967295
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.011.0.insert.ext, 4294967296
  store i8 0, ptr %2, align 1, !tbaa !783
  %sext = shl i64 %.sroa.7.038, 32
  %i.at = ashr exact i64 %sext, 28
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !579
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !391
  %i.ax = icmp eq i8 %i.aw, 63
  %i.ay = select i1 %i.ax, i32 30, i32 10
  store i32 %i.ay, ptr %3, align 4, !tbaa !380
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph, %bb.e, %bb.f
  %i.az = add nuw nsw i64 %.sroa.7.038, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.ak
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %.critedge, %.thread, %bb.c
  %.sroa.011.2 = phi i64 [ %.sroa.018.0.insert.insert.i34.ph, %.thread ], [ %i.y, %bb.c ], [ %.sroa.011.0.insert.insert, %.critedge ], [ %i.y, %bb.g ]
  ret i64 %.sroa.011.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_5ValueELj8EEEE6assignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !372
  %i.c = zext i32 %i.b to i64
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj8EEELb0EE13growAndAssignEmRKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !371
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.h, label %_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !359    ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.sroa.speculated, 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEaSERKS3_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEaSERKS3_.exit.i.i.i.i ] ; 9 uses
  %i.l = icmp eq ptr %.06.i.i.i.i, %2
  br i1 %i.l, label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEaSERKS3_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 8, !tbaa !371  ; 6 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !371  ; 4 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp ult i32 %i.p, %i.m
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not29.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not29.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8, !tbaa !359    ; 2 uses
  %i.s = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %.not31.i.i.i.i.i.i = icmp eq i32 %i.m, 1
  br i1 %.not31.i.i.i.i.i.i, label %bb.i, label %bb.h, !prof !664

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.r, i64 %.idx.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !579
  store ptr %i.t, ptr %i.s, align 8, !tbaa !579
  br label %.sink.split.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !372
  %i.w = icmp ult i32 %i.v, %i.m
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.o, align 8, !tbaa !371
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %.06.i.i.i.i, ptr noundef nonnull %i.x, i64 noundef %i.n, i64 noundef 8) #31
  br label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not28.i.i.i.i.i.i, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %2, align 8, !tbaa !359    ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %.not33.i.i.i.i.i.i = icmp eq i32 %i.p, 1
  br i1 %.not33.i.i.i.i.i.i, label %bb.o, label %bb.n, !prof !664

bb.n:                                             ; preds = %bb.m
  %.idx32.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %i.y, i64 %.idx32.i.i.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !579
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !579
  br label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.022.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.q, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !371
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp samesign eq i64 %.022.i.i.i.i.i.i, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !359
  %.idx35.i.i.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i.i.i, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx35.i.i.i.i.i.i
  %i.af = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !359
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.022.i.i.i.i.i.i
  %i.ah = sub nsw i64 %i.ac, %.022.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i.i = shl nsw i64 %i.ah, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 8 %i.ae, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.p, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i, %bb.i, %bb.h, %bb.f
  store i32 %i.m, ptr %i.o, align 8, !tbaa !371
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEaSERKS3_.exit.i.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj8EEaSERKS3_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit.loopexit, label %bb.d, !llvm.loop !9903

_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit.loopexit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEaSERKS3_.exit.i.i.i.i
  %.pre = load i32, ptr %i.e, align 8, !tbaa !371
  %.pre20 = zext i32 %.pre to i64
  br label %_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit

_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit.loopexit, %bb.c
  %.pre-phi = phi i64 [ %.pre20, %_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit.loopexit ], [ %i.g, %bb.c ] ; 5 uses
  %i.aj = icmp ugt i64 %1, %.pre-phi
  br i1 %i.aj, label %.lr.ph.i.i.i, label %bb.s

.lr.ph.i.i.i:                                     ; preds = %_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit
  %i.ak = sub nuw nsw i64 %1, %.pre-phi
  %i.al = load ptr, ptr %0, align 8, !tbaa !359
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.al, i64 %.pre-phi
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj8EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.ba, %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj8EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i ] ; 8 uses
  %.068.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %i.az, %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj8EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 3 uses
  store ptr %i.ao, ptr %.09.i.i.i, align 8, !tbaa !359
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !371
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 12
  store i32 8, ptr %i.aq, align 4, !tbaa !372
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !371 ; 5 uses
  %.not.i.i.i.i.i.i4 = icmp eq i32 %i.ar, 0
  %i.as = icmp eq ptr %.09.i.i.i, %2
  %or.cond.i.i.i.i.i = or i1 %i.as, %.not.i.i.i.i.i.i4
  br i1 %or.cond.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj8EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = icmp ugt i32 %i.ar, 8
  br i1 %i.at, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i7, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i7: ; preds = %bb.r
  %i.au = zext i32 %i.ar to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %.09.i.i.i, ptr noundef nonnull %i.ao, i64 noundef %i.au, i64 noundef 8) #31
  %.pre.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !371 ; 2 uses
  %.not.i.i.i.i.i.i.i8 = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i8, label %.sink.split.i.i.i.i.i.i6, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i7
  %.pre.i.i.i.i = load ptr, ptr %.09.i.i.i, align 8, !tbaa !359
  br label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i, %bb.r
  %i.av = phi ptr [ %.pre.i.i.i.i, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.ao, %bb.r ]
  %i.aw = phi i32 [ %.pre.i.i.i.i.i, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.ar, %bb.r ]
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %2, align 8, !tbaa !359
  %gepdiff.i.i.i.i.i.i5 = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 8 %i.ay, i64 %gepdiff.i.i.i.i.i.i5, i1 false)
  br label %.sink.split.i.i.i.i.i.i6

.sink.split.i.i.i.i.i.i6:                         ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i7
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !371
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj8EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj8EEEJRKS4_EEvPT_DpOT0_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i6, %bb.q
  %i.az = add i64 %.068.i.i.i, -1                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 80
  %.not.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i, label %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit, label %bb.q, !llvm.loop !167

bb.s:                                             ; preds = %_ZSt6fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit
  %i.bb = icmp samesign ult i64 %1, %.pre-phi
  br i1 %i.bb, label %bb.t, label %_ZSt20uninitialized_fill_nIPN4llvm11SmallVectorIPNS0_5ValueELj8EEEmS4_ET_S6_T0_RKT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %0, align 8, !tbaa !359   ; 2 uses
  %i.bd = getelementptr inbounds nuw [80 x i8], ptr %i.bc, i64 %1
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.bc, i64 %.pre-phi
  br label %.lr.ph.i

end_hunk_0
