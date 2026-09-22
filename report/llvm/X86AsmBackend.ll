Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86AsmBackend?download=true
inline.NumInlined: 1796
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_113X86AsmBackend10applyFixupERKN4llvm10MCFragmentERKNS1_7MCFixupERKNS1_7MCValueEPhmb:bb.a
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not34 = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %.not34, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !307

.loopexit:                                        ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_113X86AsmBackend17mayNeedRelaxationEjN4llvm8ArrayRefINS1_9MCOperandEEERKNS1_15MCSubtargetInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvm3X868isCCMPCCEj(i32 noundef %1) #24
  switch i32 %1, label %bb.b [
    i32 2021, label %bb.d
    i32 2000, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm3X8629getOpcodeForLongImmediateFormEj(i32 noundef %1) #24
  %.not = icmp eq i32 %i.b, %1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = select i1 %i.a, i64 -2, i64 0
  %i.c = getelementptr [16 x i8], ptr %2, i64 %.neg
  %i.d = getelementptr [16 x i8], ptr %i.c, i64 %3
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !76
  %i.g = icmp eq i8 %i.f, 5
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %i.h = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.g, %bb.c ], [ true, %bb.a ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_113X86AsmBackend28fixupNeedsRelaxationAdvancedERKN4llvm10MCFragmentERKNS1_7MCFixupERKNS1_7MCValueEmb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #14 align 2 {
bb.a:
  br i1 %5, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %4, 128
  %i.b = icmp ult i64 %i.a, 256
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !227
  %i.e = icmp ne i32 %i.d, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !223
  %i.h = icmp ne i16 %i.g, 4001
  %i.i = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %i.i, null
  %or.cond.not10.not13 = select i1 %i.h, i1 true, i1 %.not
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp ne i32 %i.k, 4
  %or.cond8.not = select i1 %or.cond.not10.not13, i1 true, i1 %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.0 = phi i1 [ %or.cond8.not, %bb.d ], [ %i.e, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113X86AsmBackend16relaxInstructionERN4llvm6MCInstERKNS1_15MCSubtargetInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %2) unnamed_addr #3 align 2 {
bb.a:
  %.val = load i32, ptr %1, align 8, !tbaa !111   ; 3 uses
  switch i32 %.val, label %bb.c [
    i32 2021, label %bb.b
    i32 2000, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0                     ; 2 uses
  %i.d = icmp eq i32 %.val, 2000
  %i.e = select i1 %.not, i32 2002, i32 2001
  %i.f = select i1 %.not, i32 2023, i32 2022
  %.0.i.i = select i1 %i.d, i32 %i.e, i32 %i.f
  br label %_ZL16getRelaxedOpcodeRKN4llvm6MCInstEb.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN4llvm3X8629getOpcodeForLongImmediateFormEj(i32 noundef %.val) #24
  br label %_ZL16getRelaxedOpcodeRKN4llvm6MCInstEb.exit

_ZL16getRelaxedOpcodeRKN4llvm6MCInstEb.exit:      ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %.0.i.i, %bb.b ], [ %i.g, %bb.c ]
  store i32 %i.h, ptr %1, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12MCAsmBackend10relaxAlignERNS_10MCFragmentERj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend18relaxDwarfLineAddrERNS_10MCFragmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend13relaxDwarfCFAERNS_10MCFragmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend14relaxSFrameCFAERNS_10MCFragmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm12MCAsmBackend11relaxLEB128ERNS_10MCFragmentERl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm12MCAsmBackend17getMinimumNopSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 1, 16) i32 @_ZNK12_GLOBAL__N_113X86AsmBackend17getMaximumNopSizeERKN4llvm15MCSubtargetInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 5 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.e = load i64, ptr %i.d, align 8, !tbaa !117
  %i.f = and i64 %i.e, 512
  %i.g = and i64 %i.b, 17179869184
  %i.h = or disjoint i64 %i.f, %i.g
  %or.cond.not = icmp eq i64 %i.h, 0
  br i1 %or.cond.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.b, 8796093022208
  %.not7 = icmp eq i64 %i.i, 0
  br i1 %.not7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.b, 35184372088832
  %.not8 = icmp eq i64 %i.j, 0
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %i.b, 17592186044416
  %.not9 = icmp eq i64 %i.k, 0
  %. = select i1 %.not9, i32 10, i32 11
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 4, %bb.a ], [ 1, %bb.b ], [ 7, %bb.c ], [ %., %bb.e ], [ 15, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_113X86AsmBackend12writeNopDataERN4llvm11raw_ostreamEmPKNS1_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117
  %i.c = and i64 %i.b, 4294967296
  %.not24 = icmp eq i64 %i.c, 0
  %i.d = select i1 %.not24, ptr @_ZZNK12_GLOBAL__N_113X86AsmBackend12writeNopDataERN4llvm11raw_ostreamEmPKNS1_15MCSubtargetInfoEE9Nops32Bit, ptr @_ZZNK12_GLOBAL__N_113X86AsmBackend12writeNopDataERN4llvm11raw_ostreamEmPKNS1_15MCSubtargetInfoEE9Nops16Bit
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(320) %3) #24
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.023 = phi i64 [ %2, %bb.a ], [ %i.z, %bb.f ]  ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.023, i64 %i.i) ; 2 uses
  %i.l = trunc nuw i64 %.sroa.speculated to i32   ; 2 uses
  %i.m = and i32 %i.l, 255                        ; 2 uses
  %i.n = tail call i32 @llvm.usub.sat.i32(i32 %i.m, i32 10) ; 2 uses
  %.not26 = icmp samesign ult i32 %i.m, 11
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.b
  %i.o = sub i32 %i.l, %i.n
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm11raw_ostreamlsEc.exit
  %indvars.iv = phi i32 [ %indvars.iv.next, %_ZN4llvm11raw_ostreamlsEc.exit ], [ 0, %bb.b ]
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !210  ; 3 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !209
  %.not.i = icmp ult ptr %i.q, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 102) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %i.j, align 8, !tbaa !210
  store i8 102, ptr %i.q, align 1, !tbaa !77
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %4 = icmp samesign ugt i32 %i.n, %indvars.iv.next
  br i1 %4, label %.lr.ph, label %._crit_edge, !llvm.loop !314

bb.e:                                             ; preds = %._crit_edge
  %i.u = zext nneg i32 %i.p to i64                ; 2 uses
  %i.v = getelementptr [11 x i8], ptr %i.d, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -11
  %i.x = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.w, i64 noundef %i.u) #24 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.y = and i64 %.sroa.speculated, 255           ; 2 uses
  %i.z = sub i64 %.023, %i.y
  %.not18 = icmp eq i64 %.023, %i.y
  br i1 %.not18, label %bb.g, label %bb.b, !llvm.loop !315

bb.g:                                             ; preds = %bb.f
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_113X86AsmBackend12finishLayoutEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::SmallString.353", align 8 ; 8 uses
  %2 = alloca %"class.llvm::MCInst", align 8      ; 9 uses
  %3 = alloca %"class.llvm::MCInst", align 8      ; 9 uses
  %4 = alloca %"class.llvm::SmallString.359", align 8 ; 12 uses
  %5 = alloca %"class.llvm::MCInst", align 8      ; 11 uses
  %6 = alloca %"class.llvm::SmallVector.351", align 8 ; 9 uses
  %7 = alloca %"class.llvm::SmallString.353", align 8 ; 9 uses
  %8 = alloca %"class.llvm::DenseSet.329", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.llvm::SmallVector.338", align 8 ; 10 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_114X86PadForAlignE, i64 120), align 8, !tbaa !167, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_120X86PadForBranchAlignE, i64 120), align 8, !range !22
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.bn

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !73   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not96 = icmp eq i32 %i.k, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK4llvm8MCSymbol11getFragmentEv.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !155
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx117 = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx117
  %.not87109 = icmp eq i32 %i.r, 0
  br i1 %.not87109, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %bb.b, %_ZNK4llvm8MCSymbol11getFragmentEv.exit
  %.sroa.067.097 = phi ptr [ %i.bm, %_ZNK4llvm8MCSymbol11getFragmentEv.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.067.097, align 8, !tbaa !338 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !340 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.c, label %_ZNK4llvm8MCSymbol11getFragmentEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = and i32 %i.bg, 259
  %or.cond.not.i = icmp eq i32 %i.bh, 1
  br i1 %or.cond.not.i, label %bb.d, label %_ZNK4llvm8MCSymbol11getFragmentEv.exit

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77
  %i.bk = call noundef ptr @_ZNK4llvm6MCExpr22findAssociatedFragmentEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24 ; 2 uses
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !340
  br label %_ZNK4llvm8MCSymbol11getFragmentEv.exit

_ZNK4llvm8MCSymbol11getFragmentEv.exit:           ; preds = %.lr.ph, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.bk, %bb.d ], [ %i.be, %.lr.ph ], [ null, %bb.c ]
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !235
  %i.bl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10MCFragmentENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !341 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.067.097, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.m
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge114:                                   ; preds = %bb.bm, %._crit_edge
  %.032.lcssa = phi i1 [ false, %._crit_edge ], [ %.8, %bb.bm ]
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !238 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN4llvm6detail12DenseSetImplIPNS_10MCFragmentENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge114
  %i.bq = load ptr, ptr %8, align 8, !tbaa !239
  %i.br = zext i32 %i.bo to i64                   ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #24
  br label %_ZN4llvm6detail12DenseSetImplIPNS_10MCFragmentENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_10MCFragmentENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %._crit_edge114, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bn

bb.f:                                             ; preds = %.lr.ph113, %bb.bm
  %.032111 = phi i1 [ false, %.lr.ph113 ], [ %.8, %bb.bm ] ; 3 uses
  %.sroa.062.0110 = phi ptr [ %i.p, %.lr.ph113 ], [ %i.qv, %bb.bm ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.062.0110, align 8, !tbaa !342 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = and i8 %i.bz, 4
  %.not88 = icmp eq i8 %i.ca, 0
  br i1 %.not88, label %bb.bm, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %i.u, ptr %9, align 8, !tbaa !26
  store i32 0, ptr %i.v, align 8, !tbaa !73
  store i32 4, ptr %i.w, align 4, !tbaa !138
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !360
  %.sroa.055.0101 = load ptr, ptr %i.cb, align 8, !tbaa !235 ; 2 uses
  %.not89102 = icmp eq ptr %.sroa.055.0101, null
  br i1 %.not89102, label %_ZN4llvm11SmallVectorIPNS_10MCFragmentELj4EED2Ev.exit, label %.lr.ph106

._crit_edge107:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10MCFragmentELb1EE9push_backES2_.exit
  %.pre118 = load ptr, ptr %9, align 8, !tbaa !26 ; 2 uses
  %i.cc = icmp eq ptr %.pre118, %i.u
  br i1 %i.cc, label %_ZN4llvm11SmallVectorIPNS_10MCFragmentELj4EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge107
  call void @free(ptr noundef %.pre118) #24
  br label %_ZN4llvm11SmallVectorIPNS_10MCFragmentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10MCFragmentELj4EED2Ev.exit: ; preds = %bb.g, %._crit_edge107, %bb.h
  %.1.lcssa152 = phi i1 [ %.7, %bb.h ], [ %.7, %._crit_edge107 ], [ %.032111, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bm

.lr.ph106:                                        ; preds = %bb.g, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10MCFragmentELb1EE9push_backES2_.exit
  %.sroa.055.0104 = phi ptr [ %.sroa.055.0, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10MCFragmentELb1EE9push_backES2_.exit ], [ %.sroa.055.0101, %bb.g ] ; 17 uses
  %.1103 = phi i1 [ %.7, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10MCFragmentELb1EE9push_backES2_.exit ], [ %.032111, %bb.g ] ; 5 uses
  %i.cd = load ptr, ptr %8, align 8, !tbaa !239, !noalias !361
  %i.ce = load ptr, ptr %i.x, align 8, !tbaa !240, !noalias !361 ; 2 uses
  %i.cf = load i32, ptr %i.y, align 4, !tbaa !238, !noalias !361 ; 2 uses
end_hunk_0
