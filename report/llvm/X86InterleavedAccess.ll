Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86InterleavedAccess?download=true
inline.NumInlined: 936
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE

declare noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef byval(%"class.llvm::InsertPosition") align 8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 88, i32 %i.b) #12 ; 5 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.sroa.2.0.copyload = load i64, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 254
  %spec.select.i.i.i = icmp eq i32 %i.h, 18
  br i1 %spec.select.i.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not29.i.i = icmp eq i64 %3, 0
  br i1 %.not29.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.02230.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.02230.i.i = phi ptr [ %i.j, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.02230.i.i, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = and i32 %i.o, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.p, 18
  %.not2428.i.i = icmp eq ptr %i.m, null
  %.not24.i.i = or i1 %.not2428.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i
  br i1 %.not24.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !128
  %i.s = and i32 %i.o, 19
  %i.t = icmp eq i32 %i.s, 19
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %i.t, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.r to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.u = tail call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef nonnull %i.e, i64 %.sroa.0.0.insert.insert.i.i.i.i) #12
  br label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit

_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit: ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.3.i.i = phi ptr [ %i.e, %bb.a ], [ %i.u, %bb.d ], [ %i.e, %bb.b ], [ %i.e, %bb.c ]
  %i.v = and i32 %i.b, 268435455
  tail call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef %.3.i.i, i32 noundef 35, i32 %i.v, ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.2.0.copyload) #12
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %0, ptr %i.w, align 8, !tbaa !292
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.y = tail call noundef ptr @_ZN4llvm17GetElementPtrInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIPNS_5ValueEEE(ptr noundef %0, ptr %2, i64 %3) #12
  store ptr %i.y, ptr %i.x, align 8, !tbaa !293
  tail call void @_ZN4llvm17GetElementPtrInst4initEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4) #12
  ret ptr %i.c
}

declare void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88), i32) local_unnamed_addr #3

declare void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32, ptr, i64) unnamed_addr #3

declare noundef ptr @_ZN4llvm17GetElementPtrInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIPNS_5ValueEEE(ptr noundef, ptr, i64) local_unnamed_addr #3

declare void @_ZN4llvm17GetElementPtrInst4initEPNS_5ValueENS_8ArrayRefIS2_EERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef, i64) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase17CreateAlignedLoadEPNS_4TypeEPNS_5ValueENS_10MaybeAlignEbRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i16 %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(34) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::InsertPosition", align 8 ; 2 uses
  %.sroa.07.0.extract.trunc = trunc i16 %3 to i8
  %i.a = and i16 %3, 256
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #12
  %i.e = tail call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.07.0 = phi i8 [ %.sroa.07.0.extract.trunc, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.g, align 8, !tbaa !297
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.f, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %6, i1 noundef zeroext %4, i8 %.sroa.07.0, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %7) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136, !nonnull !23, !align !24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #12, !inline_history !294
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret ptr %i.f
}

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext, i8, ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #3

declare i16 @_ZN4llvm3MVT5getVTEPNS_4TypeEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12setGroupSizeN4llvm3MVTERNS_15SmallVectorImplIiEE(i16 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %0 to i64                       ; 2 uses
  %i.b = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.a ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.c = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.c, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.d = add i16 %0, -163
  %spec.select.i.i = icmp ult i16 %i.d, 53
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #13
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 16
  %i.f = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.g = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.a
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !130
  %i.j = zext i16 %i.i to i32
  %i.k = sdiv i32 %i.f, 128
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = udiv i32 %i.j, %.sroa.speculated         ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.o = uitofp nneg i32 %i.l to double
  %i.p = fdiv double %i.o, 3.000000e+00
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %i.r = fptosi double %i.q to i32                ; 3 uses
  %i.s = load i32, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %i.t = load i32, ptr %i.n, align 4, !tbaa !127
  %.not.i = icmp ult i32 %i.s, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !132

bb.d:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.r)
  %.pre = load i32, ptr %i.m, align 8, !tbaa !126
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.e:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.u = zext i32 %i.s to i64
  %i.v = load ptr, ptr %1, align 8, !tbaa !125
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.u
  store i32 %i.r, ptr %i.w, align 1
  %i.x = load i32, ptr %i.m, align 8, !tbaa !126
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.m, align 8, !tbaa !126
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.d, %bb.e
  %i.z = phi i32 [ %.pre, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %i.aa = mul nsw i32 %i.r, 3
  %2 = srem i32 %i.aa, %i.l                       ; 2 uses
  %i.ab = sub nsw i32 %i.l, %2
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, 3.000000e+00
  %i.ae = tail call double @llvm.ceil.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i32              ; 3 uses
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !127
  %.not.i.1 = icmp ult i32 %i.z, %i.ag
  br i1 %.not.i.1, label %bb.g, label %bb.f, !prof !132

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.af)
  %.pre17 = load i32, ptr %i.m, align 8, !tbaa !126
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.ah = zext i32 %i.z to i64
  %i.ai = load ptr, ptr %1, align 8, !tbaa !125
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah
  store i32 %i.af, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.m, align 8, !tbaa !126
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.m, align 8, !tbaa !126
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1: ; preds = %bb.g, %bb.f
  %i.am = phi i32 [ %i.al, %bb.g ], [ %.pre17, %bb.f ] ; 2 uses
  %i.an = mul nsw i32 %i.af, 3
  %i.ao = add nsw i32 %i.an, %2
  %i.ap = srem i32 %i.ao, %i.l
  %i.aq = sub nsw i32 %i.l, %i.ap
  %i.ar = sitofp i32 %i.aq to double
  %i.as = fdiv double %i.ar, 3.000000e+00
  %i.at = tail call double @llvm.ceil.f64(double %i.as)
  %i.au = fptosi double %i.at to i32              ; 2 uses
  %i.av = load i32, ptr %i.n, align 4, !tbaa !127
  %.not.i.2 = icmp ult i32 %i.am, %i.av
  br i1 %.not.i.2, label %bb.i, label %bb.h, !prof !132

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.au)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.1
  %i.aw = zext i32 %i.am to i64
  %i.ax = load ptr, ptr %1, align 8, !tbaa !125
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.aw
  store i32 %i.au, ptr %i.ay, align 1
  %i.az = load i32, ptr %i.m, align 8, !tbaa !126
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.m, align 8, !tbaa !126
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.2: ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17DecodePALIGNRMaskN4llvm3MVTEjRNS_15SmallVectorImplIiEEbb(i16 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = add i16 %0, -163
  %spec.select.i.i = icmp ult i16 %i.a, 53
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #13
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %bb.a
  %i.b = zext i16 %0 to i64                       ; 3 uses
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !130  ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 5 uses
  %i.g = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.b ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.h = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.h, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.i = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 16 ; 2 uses
  %i.j = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.k = sdiv i32 %i.j, 128                       ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %i.l = udiv i32 %i.f, %.sroa.speculated         ; 9 uses
  %i.m = sub i32 %i.l, %1
  %i.n = select i1 %3, i32 %1, i32 %i.m
  %i.o = add i16 %0, -19
  %spec.select.i.i.i = icmp ult i16 %i.o, 197
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.p = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !139
  %.phi.trans.insert = zext i16 %i.r to i64
  %.phi.trans.insert50 = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.phi.trans.insert
  %.phi.trans.insert51 = getelementptr i8, ptr %.phi.trans.insert50, i64 -16
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.phi.trans.insert51, align 16
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pre, %bb.d ], [ %.sroa.0.0.copyload.i, %_ZNK4llvm8TypeSizecvmEv.exit ]
  %i.s = lshr i64 %.sroa.0.0.copyload.i.i, 3
  %i.t = trunc i64 %i.s to i32
  %i.u = mul i32 %i.n, %i.t                       ; 2 uses
  %.not41 = icmp eq i16 %i.e, 0
  br i1 %.not41, label %._crit_edge44, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %.not3139 = icmp sgt i32 %i.k, %i.f
  %i.v = sub nsw i32 %i.f, %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br i1 %.not3139, label %._crit_edge44, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %4, label %.preheader.us45, label %.preheader

.preheader.us45:                                  ; preds = %.preheader.lr.ph.split, %._crit_edge.split.us.us
  %.02742.us46 = phi i32 [ %i.aj, %._crit_edge.split.us.us ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us.us, %.preheader.us45
  %.02640.us.us = phi i32 [ 0, %.preheader.us45 ], [ %i.ai, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us.us ] ; 2 uses
  %i.y = add i32 %.02640.us.us, %i.u              ; 3 uses
  %.not32.us.us = icmp ult i32 %i.y, %i.l
  br i1 %.not32.us.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = urem i32 %i.y, %i.l
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.us.us = phi i32 [ %i.y, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = add i32 %.0.us.us, %.02742.us46         ; 2 uses
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !126 ; 2 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !127
  %.not.i.us.us = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.us.us, label %bb.i, label %bb.h, !prof !132

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.aa)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us.us

bb.i:                                             ; preds = %bb.g
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %2, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  store i32 %i.aa, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !126
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.w, align 8, !tbaa !126
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us.us

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us.us: ; preds = %bb.i, %bb.h
  %i.ai = add i32 %.02640.us.us, 1                ; 2 uses
  %.not31.us.us = icmp eq i32 %i.ai, %i.l
  br i1 %.not31.us.us, label %._crit_edge.split.us.us, label %bb.e, !llvm.loop !299

._crit_edge.split.us.us:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us.us
  %i.aj = add i32 %.02742.us46, %i.l              ; 2 uses
  %.not.us47 = icmp eq i32 %i.aj, %i.f
  br i1 %.not.us47, label %._crit_edge44, label %.preheader.us45, !llvm.loop !300

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge.split
  %.02742 = phi i32 [ %i.ak, %._crit_edge.split ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  br label %bb.j

._crit_edge44:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  ret void

._crit_edge.split:                                ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.ak = add i32 %.02742, %i.l                   ; 2 uses
  %.not = icmp eq i32 %i.ak, %i.f
  br i1 %.not, label %._crit_edge44, label %.preheader, !llvm.loop !300

bb.j:                                             ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.02640 = phi i32 [ 0, %.preheader ], [ %i.av, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 2 uses
  %i.al = add i32 %.02640, %i.u                   ; 2 uses
  %.not32 = icmp ult i32 %i.al, %i.l
  %i.am = select i1 %.not32, i32 0, i32 %i.v
  %spec.select = add i32 %i.al, %i.am
  %i.an = add i32 %spec.select, %.02742           ; 2 uses
  %i.ao = load i32, ptr %i.w, align 8, !tbaa !126 ; 2 uses
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !127
  %.not.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !132

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.an)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = zext i32 %i.ao to i64
end_hunk_0
