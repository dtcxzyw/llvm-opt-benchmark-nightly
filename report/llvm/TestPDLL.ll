Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestPDLL?download=true
inline.NumInlined: 1258
inline.NumDeleted: 927
begin_hunk_0_@_ZN4mlir16PDLPatternModule7mergeInEOS0_
declare void @_ZN4mlir16PDLPatternModule7mergeInEOS0_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12ParserConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.f = zext i32 %i.e to i64
  %.idx.i.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i ], [ %i.g, %.lr.ph.i.preheader.i.i ]
  %i.h = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEEEclEPS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #16, !inline_history !224
  br label %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.c, %i.h
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !225

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_4TypeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i, %bb.a
  %i.m = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELj6EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i
  tail call void @free(ptr noundef %i.m) #16
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELj6EED2Ev.exit.i: ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %.not4.i.i1.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i.i1.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i, label %.lr.ph.i.preheader.i2.i

.lr.ph.i.preheader.i2.i:                          ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELj6EED2Ev.exit.i
  %i.s = zext i32 %i.r to i64
  %.idx.i3.i = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i3.i
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i2.i
  %.05.i.i5.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i ], [ %i.t, %.lr.ph.i.preheader.i2.i ]
  %i.u = getelementptr inbounds i8, ptr %.05.i.i5.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i6.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i6.i, label %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEEEclEPS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i4.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #16, !inline_history !226
  br label %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i4.i
  %.not.i.i7.i = icmp eq ptr %i.p, %i.u
  br i1 %.not.i.i7.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i, label %.lr.ph.i.i4.i, !llvm.loop !227

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS0_9AttributeEEESt14default_deleteIS3_EED2Ev.exit.i.i.i
  %.pre.i8.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELj6EED2Ev.exit.i
  %i.z = phi ptr [ %.pre.i8.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.loopexit.i.i ], [ %i.p, %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_4TypeEEESt14default_deleteIS5_EELj6EED2Ev.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4mlir20BytecodeReaderConfigD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i
  tail call void @free(ptr noundef %i.z) #16
  br label %_ZN4mlir20BytecodeReaderConfigD2Ev.exit

_ZN4mlir20BytecodeReaderConfigD2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir22AttrTypeBytecodeReaderINS2_9AttributeEEESt14default_deleteIS5_EELb0EE13destroy_rangeEPS8_SA_.exit.i.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !235 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4mlir20BytecodeReaderConfigD2Ev.exit
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !236
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !237
  %i.aj = zext i32 %i.ae to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i1, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4mlir17AsmResourceParserEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir17AsmResourceParserEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #16, !inline_history !228
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir17AsmResourceParserEEclEPS1_.exit.i.i.i.i, %bb.d
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !229

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i2 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i2, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !230

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ad, align 4, !tbaa !235 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !236
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit: ; preds = %_ZN4mlir20BytecodeReaderConfigD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, %bb.e
  ret void
}

declare i8 @_ZN4mlir17parseSourceStringEN4llvm9StringRefEPNS_5BlockERKNS_12ParserConfigES1_PNS_12LocationAttrE(ptr, i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail40constructContainerOpForParserIfNecessaryINS_8ModuleOpEEENS_11OwningOpRefIT_EEPNS_5BlockEPNS_11MLIRContextENS_8LocationE(ptr dead_on_unwind noalias writable sret(%"class.mlir::OwningOpRef") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"class.mlir::OpBuilder", align 8   ; 5 uses
  %5 = alloca %"class.mlir::ModuleOp", align 8    ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread

bb.b:                                             ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef nonnull %i.b) #16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i = and i1 %7, %i.k
  br i1 %spec.select.i.i.i.i, label %bb.c, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4mlir9Operation6removeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #16
  store ptr %i.g, ptr %0, align 8
  br label %bb.h

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread: ; preds = %bb.b, %bb.a, %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %2, ptr %4, align 8, !tbaa !240
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !242
  %i.n = call ptr @_ZN4mlir8ModuleOp6createERNS_9OpBuilderENS_8LocationESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %3, ptr noundef nonnull byval(%"class.std::optional") align 8 %6) #16 ; 6 uses
  store ptr %i.n, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = and i32 %i.p, 8388607
  %i.r = icmp ne i32 %i.q, 0
  call void @llvm.assume(i1 %i.r)
  %i.s = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.s, 1
  %i.t = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.t
  %i.v = lshr i32 %i.p, 21
  %i.w = and i32 %i.v, 2040
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !39
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 4 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.aj = icmp eq ptr %i.c, %i.ai
  br i1 %i.aj, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !53  ; 5 uses
  %i.al = icmp eq ptr %i.ah, %i.c
  br i1 %i.al, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr %i.ak, ptr nonnull align 8 dereferenceable(16) %i.c) #16
  %i.am = icmp eq ptr %i.ak, %i.c
  br i1 %i.am, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !53
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !52
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ah, ptr %i.ar, align 8, !tbaa !53
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ak, ptr %i.as, align 8, !tbaa !53
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !52
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit: ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread, %bb.d, %bb.e, %bb.f
  %i.at = call i8 @_ZN4mlir8ModuleOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.n) #16
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, %bb.g
  %.sink = phi ptr [ null, %bb.g ], [ %i.n, %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4mlir5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #11

declare void @_ZN4mlir9Operation6removeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare ptr @_ZN4mlir8ModuleOp6createERNS_9OpBuilderENS_8LocationESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr noundef byval(%"class.std::optional") align 8) local_unnamed_addr #2

declare i8 @_ZN4mlir8ModuleOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i8 0, 2) i8 @_ZL20CastOpInterfacePDLFnRN4mlir15PatternRewriterEPNS_9OperationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_15CastOpInterfaceENS_6detail30CastOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %i.b = icmp ne ptr %i.a, null
  %i.c = zext i1 %i.b to i8
  ret i8 %i.c
}

declare void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144), ptr, i64, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.296, align 8            ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !79
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit31.i.i.i.i.i, label %bb.d

_ZN4llvmplERKNS_5TwineES2_.exit31.i.i.i.i.i:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr @.str.15, ptr %7, align 8, !alias.scope !257
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.a, align 8, !alias.scope !257
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.b, align 8, !tbaa !82, !alias.scope !257
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 11, ptr %i.c, align 1, !tbaa !83, !alias.scope !257
  store ptr %7, ptr %6, align 8, !alias.scope !258
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.16, ptr %i.d, align 8, !alias.scope !258
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.e, align 8, !tbaa !82, !alias.scope !258
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.f, align 1, !tbaa !83, !alias.scope !258
  store ptr %6, ptr %5, align 8, !alias.scope !259
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.17, i64 49), ptr %i.g, align 8, !alias.scope !259
  %.sroa.2.0..sroa_idx.i.i.i30.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 17, ptr %.sroa.2.0..sroa_idx.i.i.i30.i.i.i.i.i, align 8, !tbaa !58, !alias.scope !259
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.h, align 8, !tbaa !82, !alias.scope !259
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.i, align 1, !tbaa !83, !alias.scope !259
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = call ptr @_ZN4mlir7Builder13getUnknownLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %5, ptr %4, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit31.i.i.i.i.i
  %i.n = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #16
  br i1 %i.n, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i.i.i.i, label %bb.c

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = ptrtoint ptr %4 to i64
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr %i.k, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureINS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #16, !inline_history !255
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i.i.i.i, %bb.b, %_ZN4llvmplERKNS_5TwineES2_.exit31.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFS1_RNS2_15PatternRewriterEPNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS1_S7_RNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEEE5valueESL_E4typeEOSD_EUlS7_SG_SJ_E_JS7_SG_SJ_EENSC_IX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSR_DpOSS_.exit

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !21
  %i.t = tail call i8 %i.s(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %.sroa.0.0.copyload.i.i.i.i) #16, !inline_history !256
  br label %_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFS1_RNS2_15PatternRewriterEPNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS1_S7_RNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEEE5valueESL_E4typeEOSD_EUlS7_SG_SJ_E_JS7_SG_SJ_EENSC_IX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSR_DpOSS_.exit

_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFS1_RNS2_15PatternRewriterEPNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS1_S7_RNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEEE5valueESL_E4typeEOSD_EUlS7_SG_SJ_E_JS7_SG_SJ_EENSC_IX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSR_DpOSS_.exit: ; preds = %bb.c, %bb.d
  %.sroa.09.0.i.i.i = phi i8 [ 0, %bb.c ], [ %i.t, %bb.d ]
  ret i8 %.sroa.09.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFN4llvm13LogicalResultERNS1_15PatternRewriterEPNS1_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS6_S8_RNS1_13PDLResultListENS5_8ArrayRefINS1_8PDLValueEEEEEEE5valueESM_E4typeEOSE_EUlS8_SH_SK_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN4mlir11OpInterfaceINS_15CastOpInterfaceENS_6detail30CastOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !267  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_15CastOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_15CastOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_15CastOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !280  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !265

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_15CastOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id) #16
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.18, i64 49), i64 21) #16
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_15CastOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !12
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #16, !inline_history !264
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !265

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id) #16
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.18, i64 49), i64 21) #16
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CastOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !12
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #16, !inline_history !264
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_15CastOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_15CastOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_15CastOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i8 @_ZL37TestConstraintWithNamedOpOperandPDLFnRN4mlir15PatternRewriterEN4test3OpAE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_N4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !79 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !282
  %i.a = tail call i8 @_ZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFN4llvm13LogicalResultERNS_15PatternRewriterEN4test3OpAEEJLm0EEEES4_S6_NS3_8ArrayRefINS_8PDLValueEEESt16integer_sequenceImJXspT0_EEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFS1_RNS2_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS1_S7_RNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEEE5valueESL_E4typeEOSD_EUlS7_SG_SJ_E_JS7_SG_SJ_EENSC_IX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSR_DpOSS_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !21
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #16, !inline_history !281
  br label %_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFS1_RNS2_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS1_S7_RNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEEE5valueESL_E4typeEOSD_EUlS7_SG_SJ_E_JS7_SG_SJ_EENSC_IX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSR_DpOSS_.exit

_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFS1_RNS2_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS1_S7_RNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEEE5valueESL_E4typeEOSD_EUlS7_SG_SJ_E_JS7_SG_SJ_EENSC_IX16is_invocable_r_vISD_T0_DpT1_EESD_E4typeEOSR_DpOSS_.exit: ; preds = %bb.a, %bb.b
  %.sroa.09.0.i.i.i = phi i8 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i8 %.sroa.09.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_N4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFN4llvm13LogicalResultERNS1_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS6_S8_RNS1_13PDLResultListENS5_8ArrayRefINS1_8PDLValueEEEEEEE5valueESM_E4typeEOSE_EUlS8_SH_SK_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !21
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFN4llvm13LogicalResultERNS1_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS6_S8_RNS1_13PDLResultListENS5_8ArrayRefINS1_8PDLValueEEEEEEE5valueESM_E4typeEOSE_EUlS8_SH_SK_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !92
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFN4llvm13LogicalResultERNS1_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS6_S8_RNS1_13PDLResultListENS5_8ArrayRefINS1_8PDLValueEEEEEEE5valueESM_E4typeEOSE_EUlS8_SH_SK_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !21
  store i64 %i.a, ptr %0, align 8, !tbaa !21
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFN4llvm13LogicalResultERNS1_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS6_S8_RNS1_13PDLResultListENS5_8ArrayRefINS1_8PDLValueEEEEEEE5valueESM_E4typeEOSE_EUlS8_SH_SK_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir6detail20pdl_function_builder17buildConstraintFnIRFN4llvm13LogicalResultERNS1_15PatternRewriterEN4test3OpAEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionIFS6_S8_RNS1_13PDLResultListENS5_8ArrayRefINS1_8PDLValueEEEEEEE5valueESM_E4typeEOSE_EUlS8_SH_SK_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFN4llvm13LogicalResultERNS_15PatternRewriterEN4test3OpAEEJLm0EEEES4_S6_NS3_8ArrayRefINS_8PDLValueEEESt16integer_sequenceImJXspT0_EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.296, align 8            ; 4 uses
  %4 = alloca %class.anon.296, align 8            ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !21 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i, label %_ZN4mlir6detail20pdl_function_builder22ProcessBuiltinPDLValueIPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS6_13LogicalResultERKNS6_5TwineEEEENS_8PDLValueEm.exit.i, label %bb.c

_ZN4mlir6detail20pdl_function_builder22ProcessBuiltinPDLValueIPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS6_13LogicalResultERKNS6_5TwineEEEENS_8PDLValueEm.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr @.str.15, ptr %10, align 8, !alias.scope !309
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.a, align 8, !alias.scope !309
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 3, ptr %i.b, align 8, !tbaa !82, !alias.scope !309
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 11, ptr %i.c, align 1, !tbaa !83, !alias.scope !309
  store ptr %10, ptr %9, align 8, !alias.scope !310
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.16, ptr %i.d, align 8, !alias.scope !310
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 2, ptr %i.e, align 8, !tbaa !82, !alias.scope !310
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 3, ptr %i.f, align 1, !tbaa !83, !alias.scope !310
  store ptr %9, ptr %8, align 8, !alias.scope !311
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.17, i64 49), ptr %i.g, align 8, !alias.scope !311
  %.sroa.2.0..sroa_idx.i.i.i30.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 17, ptr %.sroa.2.0..sroa_idx.i.i.i30.i.i, align 8, !tbaa !58, !alias.scope !311
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.h, align 8, !tbaa !82, !alias.scope !311
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 5, ptr %i.i, align 1, !tbaa !83, !alias.scope !311
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = call ptr @_ZN4mlir7Builder13getUnknownLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %8, ptr %3, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 4 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i3, label %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit5, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir6detail20pdl_function_builder22ProcessBuiltinPDLValueIPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS6_13LogicalResultERKNS6_5TwineEEEENS_8PDLValueEm.exit.i
  %i.n = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #16
  br i1 %i.n, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i4, label %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit5

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i4: ; preds = %bb.b
  %i.o = ptrtoint ptr %3 to i64
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr %i.k, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureINS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #16, !inline_history !295
  br label %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit5

_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit5: ; preds = %_ZN4mlir6detail20pdl_function_builder22ProcessBuiltinPDLValueIPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS6_13LogicalResultERKNS6_5TwineEEEENS_8PDLValueEm.exit.i, %bb.b, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN4mlir6detail20pdl_function_builder22ProcessPDLValueBasedOnIN4test3OpAEPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS8_13LogicalResultERKNS8_5TwineEEEENS_8PDLValueEm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  %11 = icmp ne ptr %i.u, @_ZN4mlir6detail14TypeIDResolverIN4test3OpAEvE2idE
  %.not.i = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverIN4test3OpAEvE2idE
  %spec.select.i.i.i.i.i.not.i.i.i.i = or i1 %.not.i, %11
  br i1 %spec.select.i.i.i.i.i.not.i.i.i.i, label %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNS3_6detail20pdl_function_builder22ProcessDerivedPDLValueIN4test3OpAES5_E11verifyAsArgENS_12function_refIFS6_RKNS_5TwineEEEES5_mEUlSE_E_EERS7_OT_.exit.i.i, label %_ZN4mlir6detail20pdl_function_builder22ProcessPDLValueBasedOnIN4test3OpAEPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS8_13LogicalResultERKNS8_5TwineEEEENS_8PDLValueEm.exit

_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNS3_6detail20pdl_function_builder22ProcessDerivedPDLValueIN4test3OpAES5_E11verifyAsArgENS_12function_refIFS6_RKNS_5TwineEEEES5_mEUlSE_E_EERS7_OT_.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr @.str.21, ptr %7, align 8, !alias.scope !312
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.v, align 8, !alias.scope !312
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.w, align 8, !tbaa !82, !alias.scope !312
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 11, ptr %i.x, align 1, !tbaa !83, !alias.scope !312
  store ptr %7, ptr %6, align 8, !alias.scope !313
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.22, ptr %i.y, align 8, !alias.scope !313
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !82, !alias.scope !313
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.aa, align 1, !tbaa !83, !alias.scope !313
  store ptr %6, ptr %5, align 8, !alias.scope !314
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.23, i64 49), ptr %i.ab, align 8, !alias.scope !314
  %.sroa.2.0..sroa_idx.i.i.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 9, ptr %.sroa.2.0..sroa_idx.i.i.i30.i.i.i.i, align 8, !tbaa !58, !alias.scope !314
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !82, !alias.scope !314
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.ad, align 1, !tbaa !83, !alias.scope !314
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = call ptr @_ZN4mlir7Builder13getUnknownLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %5, ptr %4, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !90 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNS3_6detail20pdl_function_builder22ProcessDerivedPDLValueIN4test3OpAES5_E11verifyAsArgENS_12function_refIFS6_RKNS_5TwineEEEES5_mEUlSE_E_EERS7_OT_.exit.i.i
  %i.ai = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #16
  br i1 %i.ai, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i, label %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i: ; preds = %bb.d
  %i.aj = ptrtoint ptr %4 to i64
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr %i.af, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureINS1_8LocationEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.aj) #16, !inline_history !308
  br label %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit

_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit: ; preds = %_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEEES5_E4CaseIZNS3_6detail20pdl_function_builder22ProcessDerivedPDLValueIN4test3OpAES5_E11verifyAsArgENS_12function_refIFS6_RKNS_5TwineEEEES5_mEUlSE_E_EERS7_OT_.exit.i.i, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN4mlir6detail20pdl_function_builder22ProcessPDLValueBasedOnIN4test3OpAEPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS8_13LogicalResultERKNS8_5TwineEEEENS_8PDLValueEm.exit

_ZN4mlir6detail20pdl_function_builder22ProcessPDLValueBasedOnIN4test3OpAEPNS_9OperationEE11verifyAsArgEN4llvm12function_refIFNS8_13LogicalResultERKNS8_5TwineEEEENS_8PDLValueEm.exit: ; preds = %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit5, %bb.c, %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit
  %.sroa.017.0.i = phi i8 [ 0, %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit5 ], [ 0, %_ZN4llvm12function_refIFNS_13LogicalResultERKNS_5TwineEEE11callback_fnIZN4mlir6detail20pdl_function_builder12verifyAsArgsIRFS1_RNS8_15PatternRewriterEN4test3OpAEEJLm0EEEES1_SD_NS_8ArrayRefINS8_8PDLValueEEESt16integer_sequenceImJXspT0_EEEEUlS4_E_EES1_lS4_.exit ], [ 1, %bb.c ]
  ret i8 %.sroa.017.0.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !315
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !59   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !315
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load i32, ptr %i.b, align 4, !tbaa !320
  %i.d = icmp eq i32 %i.c, 0
  %.pre13.i = load ptr, ptr %i.a, align 8, !tbaa !321 ; 4 uses
  br i1 %i.d, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !322  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.012.i = phi ptr [ %i.p, %bb.e ], [ %.pre13.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.012.i, align 8, !tbaa !324 ; 5 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !326
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef 3) #16, !inline_history !316 ; 0 uses
  br label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i

_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i: ; preds = %bb.d, %bb.c
  %i.o = add i64 %i.j, 41
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %i.o, i64 noundef 8) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !321
  br label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.a, %bb.b, %.loopexit.loopexit.i
  %i.q = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.b ], [ %.pre13.i, %bb.a ]
  tail call void @free(ptr noundef %i.q) #16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.t = load i32, ptr %i.s, align 4, !tbaa !320
  %i.u = icmp eq i32 %i.t, 0
  %.pre13.i1 = load ptr, ptr %i.r, align 8, !tbaa !321 ; 4 uses
  br i1 %i.u, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !322  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i2 = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.pre13.i1, i64 %.idx.i2
  %.not11.i3 = icmp eq i32 %i.w, 0
  br i1 %.not11.i3, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.f, %bb.i
  %.012.i5 = phi ptr [ %i.ag, %bb.i ], [ %.pre13.i1, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.012.i5, align 8, !tbaa !324 ; 5 uses
  %.not10.i6 = icmp eq ptr %i.z, null
  br i1 %.not10.i6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i4
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !326
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i7, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ae = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3) #16, !inline_history !316 ; 0 uses
  br label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8

_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8: ; preds = %bb.h, %bb.g
  %i.af = add i64 %i.aa, 41
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 noundef %i.af, i64 noundef 8) #16
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8, %.lr.ph.i4
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i5, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ag, %i.y
  br i1 %.not.i9, label %.loopexit.loopexit.i10, label %.lr.ph.i4

.loopexit.loopexit.i10:                           ; preds = %bb.i
  %.pre.i11 = load ptr, ptr %i.r, align 8, !tbaa !321
  br label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12
end_hunk_1
