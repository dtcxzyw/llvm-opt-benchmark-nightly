Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MCMachOStreamer?download=true
inline.NumInlined: 932
inline.NumDeleted: 563
begin_hunk_0_@_ZN12_GLOBAL__N_115MCMachOStreamer19emitSymbolAttributeEPN4llvm8MCSymbolENS1_12MCSymbolAttrE:bb.a
    i32 6, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 7, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 8, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 11, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 12, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 1, label %bb.t
    i32 15, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 22, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 24, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 17, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 10, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 13, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 29, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 28, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 30, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 31, label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit
    i32 9, label %bb.i
    i32 16, label %bb.j
    i32 23, label %bb.l
    i32 18, label %bb.l
    i32 19, label %bb.m
    i32 20, label %bb.n
    i32 21, label %bb.o
    i32 26, label %bb.p
    i32 25, label %bb.r
    i32 27, label %bb.s
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, -65601
  %i.ak = or disjoint i32 %i.aj, 64
  store i32 %i.ak, ptr %i.ah, align 8
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = or i32 %i.am, 2097152
  store i32 %i.an, ptr %i.al, align 8
  %i.ao = tail call noundef zeroext i1 @_ZNK4llvm8MCSymbol11isUndefinedEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ao, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.al, align 8
  %i.aq = or i32 %i.ap, 65536
  store i32 %i.aq, ptr %i.al, align 8
  br label %bb.u

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = or i32 %i.as, 2097152
  store i32 %i.at, ptr %i.ar, align 8
  br label %bb.u

bb.m:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = or i32 %i.av, 16777216
  store i32 %i.aw, ptr %i.au, align 8
  br label %bb.u

bb.n:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = or i32 %i.ay, 33554432
  store i32 %i.az, ptr %i.ax, align 8
  br label %bb.u

bb.o:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = or i32 %i.bb, 192
  store i32 %i.bc, ptr %i.ba, align 8
  br label %bb.u

bb.p:                                             ; preds = %bb.h
  %i.bd = tail call noundef zeroext i1 @_ZNK4llvm8MCSymbol11isUndefinedEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.bd, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = or i32 %i.bf, 4194304
  store i32 %i.bg, ptr %i.be, align 8
  br label %bb.u

bb.r:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = or i32 %i.bi, 8388608
  store i32 %i.bj, ptr %i.bh, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, 12582912
  store i32 %i.bm, ptr %i.bk, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = or i32 %i.bo, 67108864
  store i32 %i.bp, ptr %i.bn, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.j, %bb.k, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h
  br label %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.c, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.u
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.u ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ true, %bb.c ], [ true, %_ZNSt6vectorIN4llvm16MachObjectWriter18IndirectSymbolDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115MCMachOStreamer14emitSymbolDescEPN4llvm8MCSymbolEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = tail call noundef zeroext i1 @_ZN4llvm11MCAssembler14registerSymbolERKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = shl i32 %2, 16
  %i.g = and i32 %i.e, 65535
  %i.h = or disjoint i32 %i.g, %i.f
  store i32 %i.h, ptr %i.d, align 8
  ret void
}

declare void @_ZN4llvm10MCStreamer18beginCOFFSymbolDefEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer26emitCOFFSymbolStorageClassEi(ptr noundef nonnull align 8 dereferenceable(304), i32 noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer18emitCOFFSymbolTypeEi(ptr noundef nonnull align 8 dereferenceable(304), i32 noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer16endCOFFSymbolDefEv(ptr noundef nonnull align 8 dereferenceable(304)) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer15emitCOFFSafeSEHEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer19emitCOFFSymbolIndexEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer20emitCOFFSectionIndexEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer16emitCOFFSecRel32EPKNS_8MCSymbolEm(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer16emitCOFFImgRel32EPKNS_8MCSymbolEl(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer17emitCOFFSecNumberEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer17emitCOFFSecOffsetEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer26emitXCOFFLocalCommonSymbolEPNS_8MCSymbolEmS2_NS_5AlignE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, i64 noundef, ptr noundef, i8) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer36emitXCOFFSymbolLinkageWithVisibilityEPNS_8MCSymbolENS_12MCSymbolAttrES3_(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer24emitXCOFFRenameDirectiveEPKNS_8MCSymbolENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, ptr, i64) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer24emitXCOFFExceptDirectiveEPKNS_8MCSymbolES3_jjjb(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer21emitXCOFFRefDirectiveEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer17emitXCOFFCInfoSymENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(304), ptr, i64, ptr, i64) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer11emitELFSizeEPNS_8MCSymbolEPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer22emitELFSymverDirectiveEPKNS_8MCSymbolENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, ptr, i64, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115MCMachOStreamer16emitLOHDirectiveEN4llvm9MCLOHTypeERKNS1_15SmallVectorImplIPNS1_8MCSymbolEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val.val, i64 392
  tail call void @_ZN4llvm14MCLOHContainer12addDirectiveENS_9MCLOHTypeERKNS_15SmallVectorImplIPNS_8MCSymbolEEE(ptr noundef nonnull align 8 dereferenceable(1560) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10MCStreamer16emitGNUAttributeEjj(ptr noundef nonnull align 8 dereferenceable(304) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115MCMachOStreamer16emitCommonSymbolEPN4llvm8MCSymbolEmNS1_5AlignE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = tail call noundef zeroext i1 @_ZN4llvm11MCAssembler14registerSymbolERKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %2, ptr %i.f, align 8, !tbaa !124
  %i.g = and i32 %i.e, -63556
  %4 = or disjoint i32 %i.g, 64
  %.sroa.0.0.insert.ext.i.i = zext i8 %3 to i32
  %narrow.i.i.i = shl nuw nsw i32 %.sroa.0.0.insert.ext.i.i, 11
  %i.h = add nuw nsw i32 %narrow.i.i.i, 2048
  %i.i = and i32 %i.h, 63488
  %i.j = or disjoint i32 %i.i, %4
  %i.k = or disjoint i32 %i.j, 2
  store i32 %i.k, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115MCMachOStreamer21emitLocalCommonSymbolEPN4llvm8MCSymbolEmNS1_5AlignE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %1, i64 noundef %2, i8 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120, !nonnull !92, !align !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !345
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 640
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !425
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %i.f, ptr noundef %1, i64 noundef %2, i8 %3, ptr null) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115MCMachOStreamer12emitZerofillEPN4llvm9MCSectionEPNS1_8MCSymbolEmNS1_5AlignENS1_5SMLocE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i8 %4, ptr %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.std::pair.338", align 8    ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 8
  %.not8 = icmp eq i8 %i.c, 0
  br i1 %.not8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120, !nonnull !92, !align !121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !428
  store ptr @.str.3, ptr %7, align 8, !tbaa !124
  store i8 3, ptr %i.f, align 8, !tbaa !429
  call void @_ZN4llvm9MCContext11reportErrorENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.e, ptr %5, ptr noundef nonnull align 8 dereferenceable(34) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !352  ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm10MCStreamer18getPreviousSectionEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !353
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.m, i64 -24
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -16
  %.sroa.0.0.copyload.i6.i = load ptr, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx.i7.i = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.sroa.3.0.copyload.i8.i = load i32, ptr %.sroa.3.0..sroa_idx.i7.i, align 8
  br label %_ZNK4llvm10MCStreamer18getPreviousSectionEv.exit.i

_ZNK4llvm10MCStreamer18getPreviousSectionEv.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i21.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.d ], [ null, %bb.c ]
  %.sroa.3.0.i20.i = phi i32 [ %.sroa.3.0.copyload.i.i, %bb.d ], [ 0, %bb.c ]
  %.sroa.3.0.i9.i = phi i32 [ %.sroa.3.0.copyload.i8.i, %bb.d ], [ 0, %bb.c ]
  %.sroa.0.0.i10.i = phi ptr [ %.sroa.0.0.copyload.i6.i, %bb.d ], [ null, %bb.c ]
  store ptr %.sroa.0.0.i21.i, ptr %6, align 8
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.3.0.i20.i, ptr %.sroa.414.0..sroa_idx.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.0.0.i10.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.3.0.i9.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !354
  %.not.i.i = icmp ult i32 %i.j, %i.r
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !355

bb.e:                                             ; preds = %_ZNK4llvm10MCStreamer18getPreviousSectionEv.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIS1_IPNS_9MCSectionEjES4_ELb1EE15growAndPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZN4llvm10MCStreamer11pushSectionEv.exit

bb.f:                                             ; preds = %_ZNK4llvm10MCStreamer18getPreviousSectionEv.exit.i
  %i.s = zext i32 %i.j to i64
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !353
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.v = load i32, ptr %i.i, align 8, !tbaa !352
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.i, align 8, !tbaa !352
  br label %_ZN4llvm10MCStreamer11pushSectionEv.exit

_ZN4llvm10MCStreamer11pushSectionEv.exit:         ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.x = load ptr, ptr %0, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull %1, i32 noundef 0) #18
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm10MCStreamer11pushSectionEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 600
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(448) %0, i8 %4, i64 noundef 0, i8 noundef zeroext 1, i32 noundef 0) #18
  %i.ad = load ptr, ptr %0, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull %2, ptr null) #18
  call void @_ZN4llvm10MCStreamer9emitZerosEm(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %3) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm10MCStreamer11pushSectionEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(304) %0) #18 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115MCMachOStreamer14emitTBSSSymbolEPN4llvm9MCSectionEPNS1_8MCSymbolEmNS1_5AlignE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i8 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i8 %4, ptr null) #18
  ret void
}

declare void @_ZN4llvm16MCObjectStreamer9emitBytesENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(448), ptr, i64) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer14emitBinaryDataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(304), ptr, i64) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer13emitValueImplEPKNS_6MCExprEjNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef, i32 noundef, ptr) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer12emitIntValueEmj(ptr noundef nonnull align 8 dereferenceable(304), i64 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer12emitIntValueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10MCStreamer17emitIntValueInHexEmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %1, i32 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10MCStreamer28emitIntValueInHexWithPaddingEmj(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 noundef %1, i32 noundef %2) #18
  ret void
}

declare void @_ZN4llvm16MCObjectStreamer16emitULEB128ValueEPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer16emitSLEB128ValueEPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer8emitFillERKNS_6MCExprEmNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer8emitFillERKNS_6MCExprEllNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, ptr) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer8emitNopsEllNS_5SMLocERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(448), i64 noundef, i64 noundef, ptr, ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer20emitValueToAlignmentENS_5AlignElhj(ptr noundef nonnull align 8 dereferenceable(448), i8, i64 noundef, i8 noundef zeroext, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer17emitCodeAlignmentENS_5AlignERKNS_15MCSubtargetInfoEj(ptr noundef nonnull align 8 dereferenceable(448), i8, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer13emitPrefAlignENS_5AlignERKNS_8MCSymbolEbhRKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(448), i8, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 1) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer17emitValueToOffsetEPKNS_6MCExprEhNS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef, i8 noundef zeroext, ptr) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer17emitFileDirectiveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(448), ptr, i64) unnamed_addr #3

declare void @_ZN4llvm16MCObjectStreamer17emitFileDirectiveENS_9StringRefES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(448), ptr, i64, ptr, i64, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef byval(%"class.llvm::StringRef") align 8) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_115MCMachOStreamer9emitIdentEN4llvm9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #6 align 2 {
bb.a:
  unreachable
}

declare void @_ZN4llvm10MCStreamer25tryEmitDwarfFileDirectiveEjNS_9StringRefES1_St8optionalINS_3MD59MD5ResultEES2_IS1_Ej(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(304), i32 noundef, ptr, i64, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef byval(%"class.std::optional") align 8, ptr noundef byval(%"class.std::optional.199") align 8, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm10MCStreamer23emitDwarfFile0DirectiveENS_9StringRefES1_St8optionalINS_3MD59MD5ResultEES2_IS1_Ej(ptr noundef nonnull align 8 dereferenceable(304), ptr, i64, ptr, i64, ptr noundef byval(%"class.std::optional") align 8, ptr noundef byval(%"class.std::optional.199") align 8, i32 noundef) unnamed_addr #3
end_hunk_0
