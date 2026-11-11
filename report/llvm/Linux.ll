Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Linux?download=true
inline.NumInlined: 2188
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK5clang6driver10toolchains5Linux19AddIAMCUIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE:bb.a
  store ptr %i.n, ptr %5, align 8, !tbaa !34, !alias.scope !502
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.p, ptr %i.s, align 8, !tbaa !34, !alias.scope !502
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.123, ptr %i.t, align 8, !tbaa !34, !alias.scope !502
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2648
  store ptr %5, ptr %4, align 8, !alias.scope !503
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !503
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.w, align 8, !tbaa !41, !alias.scope !503
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 4, ptr %i.x, align 1, !tbaa !42, !alias.scope !503
  store ptr %4, ptr %3, align 8, !alias.scope !504
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.122, ptr %i.y, align 8, !alias.scope !504
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !41, !alias.scope !504
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 3, ptr %i.aa, align 1, !tbaa !42, !alias.scope !504
  %i.ab = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !61
  %.not.i19 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i19, label %bb.f, label %bb.e, !prof !62

bb.e:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit18
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ab)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit20

bb.f:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit18
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %2, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  store ptr %i.ab, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !52
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit20

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit20: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit20, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains5Linux18addSYCLIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(5160) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5080 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5112 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !191, !range !69, !noundef !70
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK5clang12LazyDetectorINS_6driver24SYCLInstallationDetectorEEptEv.exit, label %_ZNSt8optionalIN5clang6driver24SYCLInstallationDetectorEE7emplaceIJRKNS1_6DriverERN4llvm6TripleERKNS8_3opt7ArgListEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOSG_.exit.i.i

_ZNSt8optionalIN5clang6driver24SYCLInstallationDetectorEE7emplaceIJRKNS1_6DriverERN4llvm6TripleERKNS8_3opt7ArgListEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOSG_.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197, !nonnull !70, !align !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5016
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5072
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198, !nonnull !70, !align !146
  tail call void @_ZN5clang6driver24SYCLInstallationDetectorC1ERKNS0_6DriverERKN4llvm6TripleERKNS5_3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(1208) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %i.i) #19
  store i8 1, ptr %i.b, align 8, !tbaa !191
  br label %_ZNK5clang12LazyDetectorINS_6driver24SYCLInstallationDetectorEEptEv.exit

_ZNK5clang12LazyDetectorINS_6driver24SYCLInstallationDetectorEEptEv.exit: ; preds = %bb.a, %_ZNSt8optionalIN5clang6driver24SYCLInstallationDetectorEE7emplaceIJRKNS1_6DriverERN4llvm6TripleERKNS8_3opt7ArgListEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOSG_.exit.i.i
  tail call void @_ZNK5clang6driver24SYCLInstallationDetector18addSYCLIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #19
  ret void
}

declare void @_ZNK5clang6driver24SYCLInstallationDetector18addSYCLIncludeArgsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK5clang6driver10toolchains5Linux12isPIEDefaultERKN4llvm3opt7ArgListE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK5clang6driver10toolchains5Linux30IsAArch64OutlineAtomicsDefaultERKN4llvm3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(5160) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.g = tail call noundef zeroext i1 @_ZNK5clang6driver10toolchains11Generic_GCC10GCCVersion11isOlderThanEiiiN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i32 noundef 9, i32 noundef 3, i32 noundef 1, ptr null, i64 0) #19
  %not. = xor i1 %i.g, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %not., %bb.b ]
  ret i1 %.0
}

declare hidden noundef zeroext i1 @_ZNK5clang6driver10toolchains11Generic_GCC10GCCVersion11isOlderThanEiiiN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, i32 noundef, i32 noundef, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK5clang6driver10toolchains5Linux18IsMathErrnoDefaultEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5160) %0) unnamed_addr #5 align 2 {
_ZNK4llvm6Triple6isMuslEv.exit.thread:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %switch.tableidx = add i32 %i.b, -17            ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 34
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 8589935615, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ne i32 %i.e, 41
  %not.or.cond = xor i1 %or.cond, true
  %.0 = select i1 %not.or.cond, i1 %i.f, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i64 } @_ZNK5clang6driver10toolchains5Linux22getSupportedSanitizersENS_9BoundArchENS0_6Action11OffloadKindE(ptr noundef nonnull align 8 dereferenceable(5160) %0, ptr nofree noundef readonly byval(%"struct.clang::BoundArch") align 8 captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 14 uses
  %i.c = icmp eq i32 %i.b, 23
  br i1 %i.c, label %.thread171, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 24                     ; 5 uses
  %i.e = icmp eq i32 %i.b, 3
  br i1 %i.e, label %.thread171, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %i.b, 4                      ; 4 uses
  switch i32 %i.b, label %.thread171 [
    i32 1, label %bb.d
    i32 38, label %bb.d
    i32 2, label %bb.d
  ]

.thread171:                                       ; preds = %bb.c, %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.c ], [ true, %bb.b ], [ false, %bb.a ]
  %i.h = phi i1 [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ true, %bb.a ]
  %i.i = icmp eq i32 %i.b, 39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %.thread171
  %i.j = phi i1 [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.g, %.thread171 ]
  %i.k = phi i1 [ %i.d, %bb.c ], [ %i.d, %bb.c ], [ %i.d, %bb.c ], [ %i.h, %.thread171 ] ; 4 uses
  %i.l = phi i1 [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ], [ %i.i, %.thread171 ] ; 2 uses
  %i.m = freeze i1 %i.j                           ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28
  %i.p = tail call { i64, i64 } @_ZNK5clang6driver9ToolChain22getSupportedSanitizersENS_9BoundArchENS0_6Action11OffloadKindE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull byval(%"struct.clang::BoundArch") align 8 %1, i32 noundef %2) #19 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  br i1 %i.m, label %bb.e, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  %i.r = or i64 %i.q, 144132780262043663
  switch i32 %i.b, label %.thread172 [
    i32 41, label %bb.e
    i32 34, label %bb.e
    i32 19, label %bb.e
    i32 18, label %bb.e
    i32 14, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  %i.s = or i64 %i.q, 144273517750398991
  br label %.thread172

.thread172:                                       ; preds = %switch.early.test, %bb.e
  %.sroa.0124.0 = phi i64 [ %i.s, %bb.e ], [ %i.r, %switch.early.test ] ; 2 uses
  %i.t = icmp eq i32 %i.b, 41                     ; 4 uses
  %i.u = and i32 %i.b, -2                         ; 2 uses
  %spec.select.i122 = icmp eq i32 %i.u, 18
  %or.cond = or i1 %i.t, %spec.select.i122
  %or.cond3 = or i1 %or.cond, %i.m                ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.p, 1        ; 2 uses
  %i.w = icmp eq i32 %i.o, 17
  %i.x = icmp eq i32 %i.b, 12                     ; 4 uses
  %i.y = icmp eq i32 %i.b, 34                     ; 5 uses
  %i.z = and i32 %i.b, -3
  %spec.select.i123 = icmp eq i32 %i.z, 28        ; 4 uses
  %i.aa = icmp eq i32 %i.b, 14                    ; 3 uses
  %spec.select.i = icmp eq i32 %i.u, 16
  %i.ab = icmp eq i32 %i.b, 40
  %or.cond13 = or i1 %i.ab, %or.cond3             ; 2 uses
  %or.cond15 = or i1 %i.l, %or.cond13
  %or.cond17 = or i1 %i.k, %or.cond15
  %or.cond19 = or i1 %spec.select.i123, %or.cond17
  %or.cond21 = or i1 %i.y, %or.cond19
  %or.cond23 = or i1 %i.x, %or.cond21
  %or.cond25 = or i1 %i.aa, %or.cond23
  %i.ac = or i64 %.sroa.0124.0, 262144
  %spec.select = select i1 %or.cond25, i64 %i.ac, i64 %.sroa.0124.0 ; 3 uses
  %or.cond31 = or i1 %i.k, %or.cond3
  %or.cond33 = or i1 %i.y, %or.cond31
  %or.cond35 = or i1 %i.aa, %or.cond33
  %or.cond37 = or i1 %spec.select.i123, %or.cond35
  %i.ad = or i64 %spec.select, 32768
  %.sroa.0124.2 = select i1 %or.cond37, i64 %i.ad, i64 %spec.select ; 2 uses
  %or.cond39 = or i1 %i.t, %i.m                   ; 2 uses
  %or.cond41 = or i1 %i.y, %or.cond39
  %or.cond43 = or i1 %i.x, %or.cond41
  %i.ae = or i64 %.sroa.0124.2, 16384
  %.sroa.0124.3 = select i1 %or.cond43, i64 %i.ae, i64 %.sroa.0124.2 ; 2 uses
  %or.cond45 = or i1 %i.t, %i.y
  %or.cond47 = or i1 %or.cond45, %i.k
  %i.af = or i64 %.sroa.0124.3, 2048
  %.sroa.0124.4 = select i1 %or.cond47, i64 %i.af, i64 %.sroa.0124.3 ; 2 uses
  %or.cond55 = or i1 %spec.select.i, %or.cond13
  %or.cond57 = or i1 %i.l, %or.cond55
  %or.cond59 = or i1 %i.k, %or.cond57
  %or.cond61 = or i1 %i.x, %or.cond59
  %or.cond63 = or i1 %i.aa, %or.cond61
  %or.cond65 = or i1 %spec.select.i123, %or.cond63
  %or.cond67 = or i1 %i.y, %or.cond65
  %i.ag = or i64 %i.v, 512
  %.sroa.44.5 = select i1 %or.cond67, i64 %i.ag, i64 %i.v
  %or.cond71 = or i1 %spec.select.i123, %or.cond39
  %i.ah = or i64 %.sroa.0124.4, 16
  %.sroa.0124.6 = select i1 %or.cond71, i64 %i.ah, i64 %.sroa.0124.4 ; 2 uses
  %i.ai = or i64 %.sroa.0124.6, 288230376151711744
  %.sroa.0124.7 = select i1 %i.x, i64 %i.ai, i64 %.sroa.0124.6 ; 2 uses
  %3 = or i64 %.sroa.0124.7, 32
  %4 = or i64 %spec.select, 116784
  %spec.select174 = select i1 %i.m, i64 %3, i64 %.sroa.0124.7
  %.sroa.0124.9 = select i1 %i.t, i64 %4, i64 %spec.select174 ; 2 uses
  %i.aj = or i64 %.sroa.0124.9, 1024
  %spec.select175 = select i1 %i.w, i64 %.sroa.0124.9, i64 %i.aj ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !30
  %i.al = icmp eq i32 %i.ak, 23
  %i.am = and i64 %spec.select175, -67108865
  %.sroa.0124.11 = select i1 %i.al, i64 %i.am, i64 %spec.select175
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0124.11, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.44.5, 1
  ret { i64, i64 } %.fca.1.insert
}

declare { i64, i64 } @_ZNK5clang6driver9ToolChain22getSupportedSanitizersENS_9BoundArchENS0_6Action11OffloadKindE(ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef byval(%"struct.clang::BoundArch") align 8, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains5Linux16addProfileRTLibsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(5160) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN5clang6driver9ToolChain14needsProfileRTERKN4llvm3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 5, ptr %i.c, align 1, !tbaa !42
  store ptr @.str.132, ptr %3, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.160, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 22, ptr %i.e, align 8, !tbaa !34
  %i.f = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.f)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %2, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  store ptr %i.f, ptr %i.m, align 1
  %i.n = load i32, ptr %i.g, align 8, !tbaa !52
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit, %bb.a
  call void @_ZNK5clang6driver9ToolChain16addProfileRTLibsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #19
  ret void
}

declare void @_ZNK5clang6driver9ToolChain16addProfileRTLibsERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains5Linux12addExtraOptsERN4llvm11SmallVectorIPKcLj16EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5160) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %.sroa.05.09 = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.05.09, align 8, !tbaa !33 ; 2 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.i = load i32, ptr %i.f, align 4, !tbaa !61
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.g)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %1, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  store ptr %i.g, ptr %i.l, align 1
  %i.m = load i32, ptr %i.e, align 8, !tbaa !52
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.e, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_ZNK5clang6driver10toolchains5Linux16getDefaultLinkerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5160) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = icmp eq i32 %i.b, 17
  %spec.select = select i1 %i.c, ptr @.str.135, ptr @.str.161
  ret ptr %spec.select
}

declare hidden noundef ptr @_ZNK5clang6driver10toolchains11Generic_GCC7getToolENS0_6Action11ActionClassE(ptr noundef nonnull align 8 dereferenceable(5136), i32 noundef) unnamed_addr #3

declare void @_ZNK5clang6driver9ToolChain23buildCompilerRTBasenameB5cxx11ERKN4llvm3opt7ArgListENS2_9StringRefENS1_8FileTypeEbb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(2568), ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang6driver10toolchains5LinuxD2Ev(ptr noundef nonnull align 8 dead_on_return(5160) dereferenceable(5160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 848) (i8, ptr @_ZTVN5clang6driver10toolchains5LinuxE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !34
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  tail call void @_ZN5clang6driver10toolchains11Generic_GCCD2Ev(ptr noundef nonnull align 8 dead_on_return(5136) dereferenceable(5136) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang6driver10toolchains5LinuxD0Ev(ptr noundef nonnull align 8 dereferenceable(5160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 848) (i8, ptr @_ZTVN5clang6driver10toolchains5LinuxE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !34
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21, !inline_history !505
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

end_hunk_0
