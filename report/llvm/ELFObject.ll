Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFObject?download=true
inline.NumInlined: 14703
inline.NumDeleted: 4647
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_18StringTableSectionE:_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_18SymbolTableSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(233) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 24, ptr %i.a, align 8, !tbaa !176
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !228
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = mul i64 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.j, ptr %i.k, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 8, ptr %i.l, align 8, !tbaa !172
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_17RelocationSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.206", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = icmp eq i64 %i.b, 1073741844
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !485  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !483
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5
  call fastcc void @_ZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEE(ptr dead_on_unwind noalias writable align 8 %3, ptr %i.e, i64 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.m, ptr %i.n, align 8, !tbaa !155
  %i.o = load ptr, ptr %3, align 8, !tbaa !111    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorIcLj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.o) #34
  br label %_ZN4llvm11SmallVectorIcLj0EED2Ev.exit

_ZN4llvm11SmallVectorIcLj0EED2Ev.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.b, 9
  %i.s = select i1 %i.r, i32 16, i32 24           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.s, ptr %i.t, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !483
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !485
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = zext nneg i32 %i.s to i64
  %i.ad = mul nsw i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 8, ptr %i.af, align 8, !tbaa !172
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm11SmallVectorIcLj0EED2Ev.exit, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_24DynamicRelocationSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(224) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_19GnuDebugLinkSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(212) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_12GroupSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !275
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.e, ptr %i.f, align 8, !tbaa !155
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_19SectionIndexSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(224) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_17CompressedSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(368) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEE5visitERNS1_19DecompressedSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.c, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.g, align 8, !tbaa !627
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #34
  %.idx.i = shl i64 %2, 5                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not106.i = icmp eq i64 %2, 0                  ; 2 uses
  br i1 %.not106.i, label %._crit_edge.i, label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader

_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader: ; preds = %bb.a
  %i.i = add i64 %.idx.i, -32                     ; 2 uses
  %i.j = lshr exact i64 %i.i, 5
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %xtraiter = and i64 %i.k, 7                     ; 3 uses
  %i.l = icmp ult i64 %i.i, 224
  br i1 %i.l, label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader, label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new

_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new: ; preds = %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader
  %unroll_iter = and i64 %i.k, 1152921504606846968
  br label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader

_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader: ; preds = %._crit_edge.loopexit.i.unr-lcssa, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader
  %.039108.i.epil.init = phi i64 [ 8, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader ], [ %i.ba, %._crit_edge.loopexit.i.unr-lcssa ]
  %.040107.i.epil.init = phi ptr [ %1, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader ], [ %i.bb, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod18)
  br label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil

_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil: ; preds = %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader
  %.039108.i.epil = phi i64 [ %i.o, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ], [ %.039108.i.epil.init, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader ]
  %.040107.i.epil = phi ptr [ %i.p, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ], [ %.040107.i.epil.init, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ], [ 0, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.040107.i.epil, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !628, !noalias !7274
  %i.o = or i64 %i.n, %.039108.i.epil             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.040107.i.epil, i64 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil, !llvm.loop !7271

._crit_edge.loopexit.i:                           ; preds = %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ba, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.o, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ]
  %i.q = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.039.lcssa.i = phi i64 [ 3, %bb.a ], [ %i.q, %._crit_edge.loopexit.i ] ; 2 uses
  %i.r = shl i64 %2, 3
  %i.s = or disjoint i64 %i.r, 4
  %i.t = add i64 %i.s, %.039.lcssa.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i, %._crit_edge.i
  %.019.i.i = phi i64 [ %i.t, %._crit_edge.i ], [ %i.w, %_ZN4llvm11raw_ostreamlsEc.exit.i.i ] ; 2 uses
  %i.w = lshr i64 %.019.i.i, 7                    ; 2 uses
  %.not.i.not.i = icmp eq i64 %i.w, 0             ; 2 uses
  %i.x = trunc i64 %.019.i.i to i8                ; 2 uses
  %i.y = or i8 %i.x, -128
  %.0.i.i = select i1 %.not.i.not.i, i8 %i.x, i8 %i.y ; 2 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !629  ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !630
  %.not.i.i.i = icmp ult ptr %i.z, %i.aa
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %.0.i.i) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !629
  store i8 %.0.i.i, ptr %i.z, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.d, %bb.c
  br i1 %.not.i.not.i, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i, label %bb.b, !llvm.loop !62

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i
  br i1 %.not106.i, label %_ZN4llvm3ELF10encodeCrelILb1ENS_8ArrayRefINS_7objcopy3elf10RelocationEEEZL10encodeCrelILb1EENS_11SmallVectorIcLj0EEES6_EUlRKS5_E_EEvRNS_11raw_ostreamET0_T1_.exit, label %.lr.ph.i

_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i: ; preds = %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new
  %.039108.i = phi i64 [ 8, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new ], [ %i.ba, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i ]
  %.040107.i = phi ptr [ %1, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new ], [ %i.bb, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i ] ; 9 uses
  %niter = phi i64 [ 0, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new ], [ %niter.next.7, %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.040107.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !628, !noalias !7274
  %i.af = or i64 %i.ae, %.039108.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.040107.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !628, !noalias !7274
  %i.ai = or i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %.040107.i, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !628, !noalias !7274
  %i.al = or i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %.040107.i, i64 104
  %i.an = load i64, ptr %i.am, align 8, !tbaa !628, !noalias !7274
  %i.ao = or i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %.040107.i, i64 136
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !628, !noalias !7274
  %i.ar = or i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.040107.i, i64 168
  %i.at = load i64, ptr %i.as, align 8, !tbaa !628, !noalias !7274
  %i.au = or i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.040107.i, i64 200
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !628, !noalias !7274
  %i.ax = or i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %.040107.i, i64 232
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !628, !noalias !7274
  %i.ba = or i64 %i.az, %i.ax                     ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.040107.i, i64 256 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.unr-lcssa, label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i

.lr.ph.i:                                         ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i
  %.0114.i = phi ptr [ %i.dw, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i ], [ %1, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 5 uses
  %.041113.i = phi i32 [ %.1.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 3 uses
  %.042112.i = phi i32 [ %.143.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 3 uses
  %.044111.i = phi i64 [ %.145.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 3 uses
  %.046110.i = phi i64 [ %i.bh, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit90.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ]
  %i.bc = load ptr, ptr %.0114.i, align 8, !tbaa !256, !noalias !7275 ; 2 uses
  %.not.i55.i = icmp eq ptr %i.bc, null
  br i1 %.not.i55.i, label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit56.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !218, !noalias !7275
  br label %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit56.i

_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit56.i: ; preds = %bb.e, %.lr.ph.i
  %i.bf = phi i32 [ %i.be, %bb.e ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0114.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !628, !noalias !7275 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0114.i, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !631, !noalias !7275 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0114.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !632, !noalias !7275 ; 3 uses
  %i.bm = sub i64 %i.bh, %.046110.i
  %i.bn = lshr i64 %i.bm, %.039.lcssa.i           ; 3 uses
  %i.bo = shl i64 %i.bn, 3
  %i.bp = icmp ne i32 %.042112.i, %i.bf
  %i.bq = zext i1 %i.bp to i64
  %i.br = or disjoint i64 %i.bo, %i.bq
  %.not49.i = icmp eq i32 %.041113.i, %i.bj
  %i.bs = select i1 %.not49.i, i64 0, i64 2
  %i.bt = or disjoint i64 %i.br, %i.bs
  %.not50.i = icmp eq i64 %.044111.i, %i.bl
  %i.bu = select i1 %.not50.i, i64 0, i64 4
  %i.bv = or disjoint i64 %i.bt, %i.bu            ; 2 uses
  %i.bw = icmp ult i64 %i.bn, 16
  %i.bx = trunc i64 %i.bv to i8                   ; 3 uses
  br i1 %i.bw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit56.i
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !629 ; 3 uses
  %i.bz = load ptr, ptr %i.v, align 8, !tbaa !630
  %.not.i57.i = icmp ult ptr %i.by, %i.bz
  br i1 %.not.i57.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %i.bx) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.h:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.cb, ptr %i.u, align 8, !tbaa !629
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.i:                                             ; preds = %_ZZL10encodeCrelILb1EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit56.i
  %i.cc = or i8 %i.bx, -128                       ; 2 uses
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !629 ; 3 uses
  %i.ce = load ptr, ptr %i.v, align 8, !tbaa !630
  %.not.i59.i = icmp ult ptr %i.cd, %i.ce
  br i1 %.not.i59.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %i.cc) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit61.i

bb.k:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.cg, ptr %i.u, align 8, !tbaa !629
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit61.i

_ZN4llvm11raw_ostreamlsEc.exit61.i:               ; preds = %bb.k, %bb.j
  %i.ch = lshr i64 %i.bn, 4
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i67.i, %_ZN4llvm11raw_ostreamlsEc.exit61.i
  %.019.i62.i = phi i64 [ %i.ch, %_ZN4llvm11raw_ostreamlsEc.exit61.i ], [ %i.ci, %_ZN4llvm11raw_ostreamlsEc.exit.i67.i ] ; 2 uses
  %i.ci = lshr i64 %.019.i62.i, 7                 ; 2 uses
  %.not.i64.not.i = icmp eq i64 %i.ci, 0          ; 2 uses
  %i.cj = trunc i64 %.019.i62.i to i8             ; 2 uses
  %i.ck = or i8 %i.cj, -128
  %.0.i65.i = select i1 %.not.i64.not.i, i8 %i.cj, i8 %i.ck ; 2 uses
  %i.cl = load ptr, ptr %i.u, align 8, !tbaa !629 ; 3 uses
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !630
  %.not.i.i66.i = icmp ult ptr %i.cl, %i.cm
  br i1 %.not.i.i66.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %.0.i65.i) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i67.i

bb.n:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.co, ptr %i.u, align 8, !tbaa !629
  store i8 %.0.i65.i, ptr %i.cl, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i67.i

_ZN4llvm11raw_ostreamlsEc.exit.i67.i:             ; preds = %bb.n, %bb.m
  br i1 %.not.i64.not.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i, label %bb.l, !llvm.loop !62

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i67.i, %bb.h, %bb.g
  %i.cp = trunc i64 %i.bv to i32                  ; 3 uses
  %i.cq = and i32 %i.cp, 1
  %.not51.i = icmp eq i32 %i.cq, 0
  br i1 %.not51.i, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.cr = sub i32 %i.bf, %.042112.i
  %i.cs = sext i32 %i.cr to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i72.i, %bb.o
  %.024.i.i = phi i64 [ %i.cs, %bb.o ], [ %i.cv, %_ZN4llvm11raw_ostreamlsEc.exit.i72.i ] ; 2 uses
  %i.ct = trunc i64 %.024.i.i to i8
  %i.cu = and i8 %i.ct, 127                       ; 2 uses
  %i.cv = ashr i64 %.024.i.i, 7                   ; 2 uses
  %.not.i69.i = icmp samesign ugt i8 %i.cu, 63
  %i.cw = sext i1 %.not.i69.i to i64
  %.not30.i.not.i = icmp eq i64 %i.cv, %i.cw      ; 2 uses
  %masksel.i.i = select i1 %.not30.i.not.i, i8 0, i8 -128
  %.0.i70.i = or disjoint i8 %masksel.i.i, %i.cu  ; 2 uses
  %i.cx = load ptr, ptr %i.u, align 8, !tbaa !629 ; 3 uses
  %i.cy = load ptr, ptr %i.v, align 8, !tbaa !630
  %.not.i.i71.i = icmp ult ptr %i.cx, %i.cy
  br i1 %.not.i.i71.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_18StringTableSectionE:_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_18SymbolTableSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(233) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 16, ptr %i.a, align 8, !tbaa !176
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !228
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.i, ptr %i.j, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 4, ptr %i.k, align 8, !tbaa !172
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_17RelocationSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.206", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = icmp eq i64 %i.b, 1073741844
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !485  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !483
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5
  call fastcc void @_ZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEE(ptr dead_on_unwind noalias writable align 8 %3, ptr %i.e, i64 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.m, ptr %i.n, align 8, !tbaa !155
  %i.o = load ptr, ptr %3, align 8, !tbaa !111    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorIcLj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.o) #34
  br label %_ZN4llvm11SmallVectorIcLj0EED2Ev.exit

_ZN4llvm11SmallVectorIcLj0EED2Ev.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.b, 9
  %i.s = select i1 %i.r, i32 8, i32 12            ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.s, ptr %i.t, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !483
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !485
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = zext nneg i32 %i.s to i64
  %i.ad = mul nsw i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 4, ptr %i.af, align 8, !tbaa !172
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm11SmallVectorIcLj0EED2Ev.exit, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_24DynamicRelocationSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(224) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_19GnuDebugLinkSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(212) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_12GroupSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !275
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %i.e, ptr %i.f, align 8, !tbaa !155
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_19SectionIndexSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(224) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_17CompressedSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(368) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7objcopy3elf15ELFSectionSizerINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE5visitERNS1_19DecompressedSectionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2) unnamed_addr #3 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.c, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.g, align 8, !tbaa !627
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #34
  %.idx.i = shl i64 %2, 5                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not122.i = icmp eq i64 %2, 0                  ; 2 uses
  br i1 %.not122.i, label %._crit_edge.i, label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader

_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader: ; preds = %bb.a
  %i.i = add i64 %.idx.i, -32                     ; 2 uses
  %i.j = lshr exact i64 %i.i, 5
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %xtraiter = and i64 %i.k, 7                     ; 3 uses
  %i.l = icmp ult i64 %i.i, 224
  br i1 %i.l, label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader, label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new

_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new: ; preds = %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader
  %unroll_iter = and i64 %i.k, 1152921504606846968
  br label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader

_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader: ; preds = %._crit_edge.loopexit.i.unr-lcssa, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader
  %.058124.i.epil.init = phi i32 [ 8, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader ], [ %i.bb, %._crit_edge.loopexit.i.unr-lcssa ]
  %.061123.i.epil.init = phi ptr [ %1, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader ], [ %i.bc, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod19)
  br label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil

_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil: ; preds = %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader
  %.058124.i.epil = phi i32 [ %i.o, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ], [ %.058124.i.epil.init, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader ]
  %.061123.i.epil = phi ptr [ %i.p, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ], [ %.061123.i.epil.init, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ], [ 0, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.061123.i.epil, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.epil = trunc i64 %i.n to i32
  %i.o = or i32 %.058124.i.epil, %.sroa.034.0.extract.trunc.i.epil ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.061123.i.epil, i64 32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil, !llvm.loop !7398

._crit_edge.loopexit.i:                           ; preds = %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bb, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.o, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.epil ]
  %i.q = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.lcssa, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.058.lcssa.i = phi i32 [ 3, %bb.a ], [ %i.q, %._crit_edge.loopexit.i ] ; 2 uses
  %i.r = shl i64 %2, 3
  %i.s = or disjoint i64 %i.r, 4
  %i.t = zext nneg i32 %.058.lcssa.i to i64
  %i.u = add i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 14 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i, %._crit_edge.i
  %.019.i.i = phi i64 [ %i.u, %._crit_edge.i ], [ %i.x, %_ZN4llvm11raw_ostreamlsEc.exit.i.i ] ; 2 uses
  %i.x = lshr i64 %.019.i.i, 7                    ; 2 uses
  %.not.i.not.i = icmp eq i64 %i.x, 0             ; 2 uses
  %i.y = trunc i64 %.019.i.i to i8                ; 2 uses
  %i.z = or i8 %i.y, -128
  %.0.i.i = select i1 %.not.i.not.i, i8 %i.y, i8 %i.z ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !629 ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !630
  %.not.i.i.i = icmp ult ptr %i.aa, %i.ab
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %.0.i.i) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !629
  store i8 %.0.i.i, ptr %i.aa, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.d, %bb.c
  br i1 %.not.i.not.i, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i, label %bb.b, !llvm.loop !62

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i
  br i1 %.not122.i, label %_ZN4llvm3ELF10encodeCrelILb0ENS_8ArrayRefINS_7objcopy3elf10RelocationEEEZL10encodeCrelILb0EENS_11SmallVectorIcLj0EEES6_EUlRKS5_E_EEvRNS_11raw_ostreamET0_T1_.exit, label %.lr.ph.i

_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i: ; preds = %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new
  %.058124.i = phi i32 [ 8, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new ], [ %i.bb, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i ]
  %.061123.i = phi ptr [ %1, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new ], [ %i.bc, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i ] ; 9 uses
  %niter = phi i64 [ 0, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i.preheader.new ], [ %niter.next.7, %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.061123.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i = trunc i64 %i.af to i32
  %i.ag = or i32 %.058124.i, %.sroa.034.0.extract.trunc.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.061123.i, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.1 = trunc i64 %i.ai to i32
  %i.aj = or i32 %i.ag, %.sroa.034.0.extract.trunc.i.1
  %i.ak = getelementptr inbounds nuw i8, ptr %.061123.i, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.2 = trunc i64 %i.al to i32
  %i.am = or i32 %i.aj, %.sroa.034.0.extract.trunc.i.2
  %i.an = getelementptr inbounds nuw i8, ptr %.061123.i, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.3 = trunc i64 %i.ao to i32
  %i.ap = or i32 %i.am, %.sroa.034.0.extract.trunc.i.3
  %i.aq = getelementptr inbounds nuw i8, ptr %.061123.i, i64 136
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.4 = trunc i64 %i.ar to i32
  %i.as = or i32 %i.ap, %.sroa.034.0.extract.trunc.i.4
  %i.at = getelementptr inbounds nuw i8, ptr %.061123.i, i64 168
  %i.au = load i64, ptr %i.at, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.5 = trunc i64 %i.au to i32
  %i.av = or i32 %i.as, %.sroa.034.0.extract.trunc.i.5
  %i.aw = getelementptr inbounds nuw i8, ptr %.061123.i, i64 200
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.6 = trunc i64 %i.ax to i32
  %i.ay = or i32 %i.av, %.sroa.034.0.extract.trunc.i.6
  %i.az = getelementptr inbounds nuw i8, ptr %.061123.i, i64 232
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !628
  %.sroa.034.0.extract.trunc.i.7 = trunc i64 %i.ba to i32
  %i.bb = or i32 %i.ay, %.sroa.034.0.extract.trunc.i.7 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.061123.i, i64 256 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.unr-lcssa, label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit.i

.lr.ph.i:                                         ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i
  %.0130.i = phi ptr [ %i.du, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i ], [ %1, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 5 uses
  %.059129.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ]
  %.060128.i = phi i32 [ %.1.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 3 uses
  %.062127.i = phi i32 [ %.163.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 3 uses
  %.064126.i = phi i32 [ %.165.i, %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit116.i ], [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit.preheader.i ] ; 3 uses
  %i.bd = load ptr, ptr %.0130.i, align 8, !tbaa !256 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.bd, null
  br i1 %.not.i73.i, label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit82.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !218
  br label %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit82.i

_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit82.i: ; preds = %bb.e, %.lr.ph.i
  %.sroa.2.0.insert.ext.i74.i = phi i32 [ %i.bf, %bb.e ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0130.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !628
  %i.bi = getelementptr inbounds nuw i8, ptr %.0130.i, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !631 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0130.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !632
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bh to i32 ; 2 uses
  %i.bm = sub i32 %.sroa.0.0.extract.trunc.i, %.059129.i
  %i.bn = lshr i32 %i.bm, %.058.lcssa.i           ; 3 uses
  %i.bo = shl i32 %i.bn, 3
  %i.bp = icmp ne i32 %.064126.i, %.sroa.2.0.insert.ext.i74.i ; 2 uses
  %i.bq = zext i1 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq
  %.not68.i = icmp eq i32 %.062127.i, %i.bj       ; 2 uses
  %i.bs = select i1 %.not68.i, i32 0, i32 2
  %.sroa.8.12.extract.trunc.i = trunc i64 %i.bl to i32 ; 3 uses
  %.not69.i = icmp eq i32 %.060128.i, %.sroa.8.12.extract.trunc.i ; 2 uses
  %i.bt = select i1 %.not69.i, i32 0, i32 4
  %i.bu = or disjoint i32 %i.br, %i.bs
  %i.bv = or disjoint i32 %i.bu, %i.bt
  %i.bw = icmp ult i32 %i.bn, 16
  %i.bx = trunc i32 %i.bv to i8                   ; 3 uses
  br i1 %i.bw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit82.i
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !629 ; 3 uses
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !630
  %.not.i83.i = icmp ult ptr %i.by, %i.bz
  br i1 %.not.i83.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %i.bx) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.h:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.cb, ptr %i.v, align 8, !tbaa !629
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.i:                                             ; preds = %_ZZL10encodeCrelILb0EEN4llvm11SmallVectorIcLj0EEENS0_8ArrayRefINS0_7objcopy3elf10RelocationEEEENKUlRKS6_E_clES9_.exit82.i
  %i.cc = or i8 %i.bx, -128                       ; 2 uses
  %i.cd = load ptr, ptr %i.v, align 8, !tbaa !629 ; 3 uses
  %i.ce = load ptr, ptr %i.w, align 8, !tbaa !630
  %.not.i85.i = icmp ult ptr %i.cd, %i.ce
  br i1 %.not.i85.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %i.cc) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit87.i

bb.k:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.cg, ptr %i.v, align 8, !tbaa !629
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit87.i

_ZN4llvm11raw_ostreamlsEc.exit87.i:               ; preds = %bb.k, %bb.j
  %i.ch = lshr i32 %i.bn, 4
  %i.ci = zext nneg i32 %i.ch to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i93.i, %_ZN4llvm11raw_ostreamlsEc.exit87.i
  %.019.i88.i = phi i64 [ %i.ci, %_ZN4llvm11raw_ostreamlsEc.exit87.i ], [ %i.cj, %_ZN4llvm11raw_ostreamlsEc.exit.i93.i ] ; 2 uses
  %i.cj = lshr i64 %.019.i88.i, 7                 ; 2 uses
  %.not.i90.not.i = icmp eq i64 %i.cj, 0          ; 2 uses
  %i.ck = trunc i64 %.019.i88.i to i8             ; 2 uses
  %i.cl = or i8 %i.ck, -128
  %.0.i91.i = select i1 %.not.i90.not.i, i8 %i.ck, i8 %i.cl ; 2 uses
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !629 ; 3 uses
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !630
  %.not.i.i92.i = icmp ult ptr %i.cm, %i.cn
  br i1 %.not.i.i92.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext %.0.i91.i) #34 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i93.i

bb.n:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cp, ptr %i.v, align 8, !tbaa !629
  store i8 %.0.i91.i, ptr %i.cm, align 1, !tbaa !83
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i93.i

_ZN4llvm11raw_ostreamlsEc.exit.i93.i:             ; preds = %bb.n, %bb.m
  br i1 %.not.i90.not.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i, label %bb.l, !llvm.loop !62

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i93.i, %bb.h, %bb.g
  br i1 %i.bp, label %bb.o, label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.cq = sub i32 %.sroa.2.0.insert.ext.i74.i, %.064126.i
  %i.cr = sext i32 %i.cq to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i98.i, %bb.o
  %.024.i.i = phi i64 [ %i.cr, %bb.o ], [ %i.cu, %_ZN4llvm11raw_ostreamlsEc.exit.i98.i ] ; 2 uses
  %i.cs = trunc i64 %.024.i.i to i8
  %i.ct = and i8 %i.cs, 127                       ; 2 uses
  %i.cu = ashr i64 %.024.i.i, 7                   ; 2 uses
  %.not.i95.i = icmp samesign ugt i8 %i.ct, 63
  %i.cv = sext i1 %.not.i95.i to i64
end_hunk_1
