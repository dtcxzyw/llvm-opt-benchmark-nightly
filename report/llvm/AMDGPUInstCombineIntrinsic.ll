Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUInstCombineIntrinsic?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1868
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL37simplifyAMDGCNMemoryIntrinsicDemandedRN4llvm12InstCombinerERNS_13IntrinsicInstENS_5APIntEib:bb.a
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4TypeELj6EED2Ev.exit:   ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.critedge126

.critedge126:                                     ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, %bb.am, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, %bb.o, %bb.ad, %_ZN4llvm11SmallVectorIPNS_4TypeELj6EED2Ev.exit, %bb.ah
  %.4 = phi ptr [ null, %bb.ah ], [ null, %bb.o ], [ %i.gw, %bb.ad ], [ %.2, %_ZN4llvm11SmallVectorIPNS_4TypeELj6EED2Ev.exit ], [ null, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i ], [ null, %bb.am ], [ null, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i ]
  %i.mu = load ptr, ptr %6, align 8, !tbaa !163   ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.ae
  br i1 %i.mv, label %_ZN4llvm11SmallVectorIPNS_5ValueELj16EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %.critedge126
  call void @free(ptr noundef %i.mu) #21
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj16EED2Ev.exit: ; preds = %.critedge126, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.not.i.i147 = icmp eq ptr %i.p, null
  br i1 %.not.i.i147, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj16EED2Ev.exit
  store ptr %i.p, ptr %i.o, align 8, !tbaa !385
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.q, align 8
  store i16 %.sroa.2.0.extract.trunc.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.not.i.i.i149 = icmp eq ptr %.sroa.0.0.copyload.i.i, %i.mw
  br i1 %.not.i.i.i149, label %_ZN4llvm13IRBuilderBase16InsertPointGuardD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mx = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -24
  %i.my = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.mx) #21 ; 0 uses
  br label %_ZN4llvm13IRBuilderBase16InsertPointGuardD2Ev.exit

bb.bt:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj16EED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.o, i8 0, i64 18, i1 false)
  br label %_ZN4llvm13IRBuilderBase16InsertPointGuardD2Ev.exit

_ZN4llvm13IRBuilderBase16InsertPointGuardD2Ev.exit: ; preds = %bb.br, %bb.bs, %bb.bt
  %i.mz = ptrtoint ptr %i.r to i64
  store i64 %i.mz, ptr %i.n, align 8, !tbaa !386
  br label %bb.bu

bb.bu:                                            ; preds = %bb.c, %_ZN4llvm13IRBuilderBase16InsertPointGuardD2Ev.exit
  %.5 = phi ptr [ %.4, %_ZN4llvm13IRBuilderBase16InsertPointGuardD2Ev.exit ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase19CreateExtractVectorEPNS_4TypeEPNS_5ValueEmRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(34) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %i.b = alloca [2 x ptr], align 8                ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %6 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %7 = alloca %class.anon.150, align 1            ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353, !nonnull !137, !align !138
  %i.e = tail call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #21
  %i.f = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.e, i64 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %1, ptr %i.a, align 8, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  store ptr %i.i, ptr %i.g, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %2, ptr %i.b, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.j, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %6, align 8, !tbaa !351
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = ptrtoint ptr %7 to i64
  store i64 %i.l, ptr %i.k, align 8, !tbaa !352
  %i.m = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 411, ptr nonnull %i.a, i64 2, ptr nonnull %i.b, i64 2, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %i.m
}

declare noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIPNS_5ValueELj10EEC2IPNS_3UseEEERKNS_14iterator_rangeIT_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 10, ptr %i.c, align 4, !tbaa !164
  %i.d = load ptr, ptr %1, align 8, !tbaa !558    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !559  ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5                   ; 3 uses
  %i.k = icmp ugt i64 %i.j, 10
  br i1 %i.k, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %i.j, i64 noundef 8) #21
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !165 ; 2 uses
  %.pre8.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i = phi i64 [ 0, %bb.a ], [ %.pre8.i, %bb.b ]
  %i.l = phi i32 [ 0, %bb.a ], [ %.pre.i, %bb.b ]
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i
  %i.m = load ptr, ptr %0, align 8, !tbaa !163
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.o = load ptr, ptr %.0810.i.i.i.i.i, align 8, !tbaa !83
  store ptr %i.o, ptr %.011.i.i.i.i.i, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendIPNS_3UseEvEEvT_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i
  %i.r = trunc i64 %i.j to i32
  %i.s = add i32 %i.l, %i.r
  store i32 %i.s, ptr %i.b, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef zeroext i8 @_ZN4llvm6AMDGPU30wmmaScaleF8F6F4FormatToNumRegsEj(i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm6AMDGPU24getImageDimIntrinsicInfoEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm10GCNTTIImpl35simplifyAMDGCNLaneIntrinsicDemandedERNS_12InstCombinerERNS_13IntrinsicInstERKNS_5APIntERS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nofree nonnull readnone align 8 captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.199", align 8 ; 11 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvm::SmallVector.213", align 8 ; 10 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::SmallVector.213", align 8 ; 10 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 255
  %i.i = icmp ne i32 %i.h, 18
  %.not110 = icmp eq ptr %i.e, null
  %.not = or i1 %.not110, %i.i
  br i1 %.not, label %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !76   ; 6 uses
  %i.l = icmp ult i32 %i.k, 65
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.m, i1 false)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %..i = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.o)
  %.neg.i.i = add nsw i32 %i.k, -64
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = add nsw i32 %.neg.i.i, %i.q
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #22
  %i.t = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #22
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.c, %bb.d
  %.0.i108 = phi i32 [ %..i, %bb.c ], [ %i.s, %bb.d ] ; 4 uses
  %.0.i.i = phi i32 [ %i.r, %bb.c ], [ %i.t, %bb.d ]
  %i.u = add i32 %.0.i.i, %.0.i108                ; 3 uses
  %i.v = sub i32 %i.k, %i.u                       ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !358  ; 5 uses
  %i.y = icmp eq i32 %i.v, %i.x
  %i.z = icmp ne i32 %i.v, 1                      ; 3 uses
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !362 ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ab, i32 noundef %i.v) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ad = phi ptr [ %i.ac, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !172
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !173, !nonnull !137, !align !138
  %i.ai = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.af, ptr noundef nonnull align 8 dereferenceable(912) %i.ah, ptr noundef %i.ad, i1 noundef zeroext true)
  %i.aj = extractvalue { i16, ptr } %i.ai, 0      ; 2 uses
  %.not.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit.thread, label %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit

_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit: ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !172
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.am = zext i16 %i.aj to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !175
  %.not111 = icmp eq ptr %i.ao, null
  br i1 %.not111, label %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 268435455
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [32 x i8], ptr %2, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !83 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.aw, ptr %7, align 8, !tbaa !163
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 2, ptr %i.ay, align 4, !tbaa !164
  call void @_ZNK4llvm8CallBase23getOperandBundlesAsDefsERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(16) %7) #21
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !385
  %i.bc = call noundef ptr @_ZNK4llvm10BasicBlock9getModuleEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bb) #21
  %i.bd = getelementptr inbounds i8, ptr %2, i64 -32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !161
  %i.bh = call noundef ptr @_ZN4llvm9Intrinsic22getOrInsertDeclarationEPNS_6ModuleEjNS_8ArrayRefIPNS_4TypeEEE(ptr noundef %i.bc, i32 noundef %i.bg, ptr nonnull %i.a, i64 1) #21 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %i.z, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = zext i32 %.0.i108 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.bj, align 8
  %i.bk = call noundef ptr @_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueEmRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef %i.av, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(34) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !147
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %bb.i, %bb.j
  %i.bn = phi ptr [ %i.bm, %bb.j ], [ null, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !95
  %i.bo = load ptr, ptr %7, align 8, !tbaa !163
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !165
  %i.bq = zext i32 %i.bp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i16 257, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.bo, ptr %6, align 8
  %.sroa.2100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bq, ptr %.sroa.2100.0..sroa_idx, align 8
  %i.bs = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef %i.bn, ptr noundef %i.bh, ptr nonnull %i.b, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.bu = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.bt) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.bv, align 8
  %i.bw = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_mRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef %i.bu, ptr noundef %i.bs, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(34) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bx = zext i32 %i.v to i64                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.by, ptr %11, align 8, !tbaa !163
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.bz, align 8, !tbaa !165
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 12, ptr %i.ca, align 4, !tbaa !164
  %i.cb = icmp ugt i32 %i.v, 12
  br i1 %i.cb, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit: ; preds = %bb.k
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.by, i64 noundef %i.bx, i64 noundef 4) #21
  %i.cc = load ptr, ptr %11, align 8, !tbaa !163
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cc, i8 -1, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !182
  %.pre130.pre = load ptr, ptr %11, align 8
  br label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.k
  %.not.i73 = icmp eq i32 %i.k, %i.u
  br i1 %.not.i73, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit123

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit123: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.bx, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !182
  br label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit:        ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit123, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i
  %.pre = phi ptr [ %i.by, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit123 ], [ %.pre130.pre, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit.loopexit ], [ %i.by, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i ] ; 2 uses
  store i32 %i.v, ptr %i.bz, align 8, !tbaa !165
  %.not71116 = icmp eq i32 %i.k, %i.u             ; 2 uses
  br i1 %.not71116, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre131.a = load i32, ptr %i.bz, align 8, !tbaa !165
  %.pre137.a = zext i32 %.pre131.a to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit
  %.pre-phi = phi i64 [ %.pre137.a, %._crit_edge.loopexit ], [ 0, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.cd, align 8
  %i.ce = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef %i.av, ptr %.pre, i64 %.pre-phi, ptr noundef nonnull align 8 dereferenceable(34) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %.not.i74 = icmp eq ptr %i.bh, null
  br i1 %.not.i74, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit75, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !147
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit75

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit75: ; preds = %._crit_edge, %bb.l
  %i.ch = phi ptr [ %i.cg, %bb.l ], [ null, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !95
  %i.ci = load ptr, ptr %7, align 8, !tbaa !163
  %i.cj = load i32, ptr %i.ax, align 8, !tbaa !165
  %i.ck = zext i32 %i.cj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.ci, ptr %5, align 8
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ck, ptr %.sroa.291.0..sroa_idx, align 8
  %i.cm = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EENS5_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef %i.ch, ptr noundef %i.bh, ptr nonnull %i.c, i64 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.cn = zext i32 %i.x to i64                    ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.co, ptr %14, align 8, !tbaa !163
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !165
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 12, ptr %i.cq, align 4, !tbaa !164
  %i.cr = icmp ugt i32 %i.x, 12
  br i1 %i.cr, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i76

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit: ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit75
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %i.co, i64 noundef %i.cn, i64 noundef 4) #21
  %i.cs = load ptr, ptr %14, align 8, !tbaa !163
  %.idx.i.i.i.i.i.i.i82 = shl nuw nsw i64 %i.cn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cs, i8 -1, i64 %.idx.i.i.i.i.i.i.i82, i1 false), !tbaa !182
  %.pre133.pre = load ptr, ptr %14, align 8
  br label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i76:        ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit75
  %.not.i77 = icmp eq i32 %i.x, 0
  br i1 %.not.i77, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86, label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit122

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit122: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i76
  %.idx.i.i.i.i.i.i78 = shl nuw nsw i64 %i.cn, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.co, i8 -1, i64 %.idx.i.i.i.i.i.i78, i1 false), !tbaa !182
  br label %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86

_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86:      ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit122, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i76
  %.pre132 = phi ptr [ %i.co, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit122 ], [ %.pre133.pre, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86.loopexit ], [ %i.co, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.i.i76 ] ; 2 uses
  store i32 %i.x, ptr %i.cp, align 8, !tbaa !165
  br i1 %.not71116, label %._crit_edge121, label %.lr.ph120

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit ] ; 3 uses
  %i.ct = trunc nuw i64 %indvars.iv to i32
  %i.cu = add i32 %.0.i108, %i.ct                 ; 3 uses
  %i.cv = and i32 %i.cu, 63
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = load i32, ptr %i.j, align 8, !tbaa !76
  %i.cz = icmp ult i32 %i.cy, 65
  %i.da = load ptr, ptr %3, align 8
  %i.db = lshr i32 %i.cu, 6
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dc
  %.in.i.i = select i1 %i.cz, ptr %3, ptr %i.dd
  %i.de = load i64, ptr %.in.i.i, align 8, !tbaa !24
  %i.df = and i64 %i.de, %i.cx
  %.not112 = icmp eq i64 %i.df, 0
  br i1 %.not112, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  store i32 %i.cu, ptr %i.dg, align 4, !tbaa !182
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %.not71 = icmp eq i32 %i.v, %indvars
  br i1 %.not71, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !560

._crit_edge121.loopexit:                          ; preds = %bb.r
  %.pre134 = load i32, ptr %i.cp, align 8, !tbaa !165
  %.pre138 = zext i32 %.pre134 to i64
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %._crit_edge121.loopexit, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86
  %.pre-phi139 = phi i64 [ %.pre138, %._crit_edge121.loopexit ], [ %i.cn, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i16 257, ptr %i.dh, align 8
  %i.di = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef %i.cm, ptr %.pre132, i64 %.pre-phi139, ptr noundef nonnull align 8 dereferenceable(34) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.dj = load ptr, ptr %14, align 8, !tbaa !163  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.co
  br i1 %i.dk, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge121
  call void @free(ptr noundef %i.dj) #21
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %._crit_edge121, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.dl = load ptr, ptr %11, align 8, !tbaa !163  ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.by
  br i1 %i.dm, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit87, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit
  call void @free(ptr noundef %i.dl) #21
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit87

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit87:         ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.s

.lr.ph120:                                        ; preds = %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86, %bb.r
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %bb.r ], [ 0, %_ZN4llvm11SmallVectorIiLj12EEC2EmRKi.exit86 ] ; 2 uses
  %i.dn = trunc nuw i64 %indvars.iv125 to i32     ; 2 uses
  %i.do = add i32 %.0.i108, %i.dn                 ; 3 uses
  %i.dp = and i32 %i.do, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = load i32, ptr %i.j, align 8, !tbaa !76
  %i.dt = icmp ult i32 %i.ds, 65
  %i.du = load ptr, ptr %3, align 8
  %i.dv = lshr i32 %i.do, 6
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dw
  %.in.i.i88 = select i1 %i.dt, ptr %3, ptr %i.dx
  %i.dy = load i64, ptr %.in.i.i88, align 8, !tbaa !24
  %i.dz = and i64 %i.dy, %i.dr
  %.not113 = icmp eq i64 %i.dz, 0
  br i1 %.not113, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph120
  %i.ea = zext i32 %i.do to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre132, i64 %i.ea
  store i32 %i.dn, ptr %i.eb, align 4, !tbaa !182
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph120, %bb.q
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %indvars127 = trunc i64 %indvars.iv.next126 to i32
  %.not72 = icmp eq i32 %i.v, %indvars127
  br i1 %.not72, label %._crit_edge121.loopexit, label %.lr.ph120, !llvm.loop !561

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit87, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  %.066 = phi ptr [ %i.bw, %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit ], [ %i.di, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit87 ]
  %i.ec = load ptr, ptr %7, align 8, !tbaa !163   ; 3 uses
  %i.ed = load i32, ptr %i.ax, align 8, !tbaa !165 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.s
  %i.ee = zext i32 %i.ed to i64
  %.idx.i = mul nuw nsw i64 %i.ee, 56
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.eg, %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i ], [ %i.ef, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %.05.i.i, i64 -56 ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %.05.i.i, i64 -24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ej = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !169
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #23
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.t, %.lr.ph.i.i
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !170 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !24
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #23
  br label %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i

_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i89 = icmp eq ptr %i.ec, %i.eg
  br i1 %.not.i.i89, label %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm17OperandBundleDefTIPNS_5ValueEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !163
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %bb.s
  %i.et = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.ec, %bb.s ] ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.aw
  br i1 %i.eu, label %_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i
  call void @free(ptr noundef %i.et) #21
  br label %_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17OperandBundleDefTIPNS_5ValueEEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit.thread

_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit.thread: ; preds = %bb.g, %_ZNK4llvm5APInt13getActiveBitsEv.exit, %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit, %_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj2EED2Ev.exit, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %.066, %_ZN4llvm11SmallVectorINS_17OperandBundleDefTIPNS_5ValueEEELj2EED2Ev.exit ], [ null, %_ZNK4llvm16BasicTTIImplBaseINS_10GCNTTIImplEE11isTypeLegalEPNS_4TypeE.exit ], [ null, %bb.g ]
  ret ptr %.3
}

declare void @_ZNK4llvm8CallBase23getOperandBundlesAsDefsERNS_15SmallVectorImplINS_17OperandBundleDefTIPNS_5ValueEEEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueEmRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !353, !nonnull !137, !align !138
  %i.c = tail call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #21
  %i.d = tail call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.c, i64 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false) #21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387, !nonnull !137, !align !138 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %1, ptr noundef %i.d) #21, !inline_history !562 ; 2 uses
  %.not.not.i = icmp eq ptr %i.j, null
  br i1 %.not.not.i, label %bb.b, label %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.k, align 8
  %i.l = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 2) #21 ; 4 uses
  call void @_ZN4llvm18ExtractElementInstC1EPNS_5ValueES2_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef %1, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, i64 0) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !388, !nonnull !137, !align !138 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #21, !inline_history !563
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.l) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.l, %bb.b ], [ %i.j, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.b) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !387, !nonnull !137, !align !138 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %1, ptr noundef %i.c, ptr %2, i64 %3) #21, !inline_history !564 ; 2 uses
  %.not.not.i = icmp eq ptr %i.i, null
  br i1 %.not.not.i, label %bb.b, label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 112, i32 2) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17ShuffleVectorInstC1EPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull %1, ptr noundef %i.c, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %6) #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !388, !nonnull !137, !align !138 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #21, !inline_history !565
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZNK4llvm10GCNTTIImpl35simplifyDemandedVectorEltsIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstENS_5APIntERS5_S6_S6_St8functionIFvPNS_11InstructionEjS5_S6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(92) %2, ptr nofree noundef align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(12) %6, ptr nofree noundef align 8 dereferenceable(32) %7) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 -32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !91   ; 4 uses
  switch i32 %i.f, label %bb.m [
    i32 3459, label %bb.b
    i32 3422, label %bb.h
    i32 3447, label %bb.h
    i32 3424, label %bb.h
    i32 3449, label %bb.h
    i32 3455, label %bb.h
    i32 3453, label %bb.h
    i32 3475, label %bb.h
    i32 3587, label %bb.h
    i32 3612, label %bb.h
    i32 3589, label %bb.h
    i32 3614, label %bb.h
    i32 3620, label %bb.h
    i32 3618, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !76
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %3, align 8, !tbaa !24
  store i64 %i.k, ptr %8, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2ERKS0_.exit
end_hunk_0
