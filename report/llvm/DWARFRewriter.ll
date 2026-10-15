Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFRewriter?download=true
inline.NumInlined: 9616
inline.NumDeleted: 5276
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm4bolt13DWARFRewriter15updateDebugInfoEv:bb.a
  br i1 %i.ayi, label %_ZN4llvm8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm11SmallVectorIPNS_9DWARFUnitELj6EED2Ev.exit135.i
  %i.ayj = load ptr, ptr %14, align 8, !tbaa !810, !noalias !1801
  %i.ayk = load ptr, ptr %i.aia, align 8, !tbaa !811, !noalias !1801
  %i.ayl = zext i32 %i.ayh to i64
  %i.aym = add nuw nsw i64 %i.ayl, 31
  %i.ayn = lshr i64 %i.aym, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i137.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i137.i ] ; 3 uses
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.ayk, i64 %indvars.iv.i.i.i
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !453 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ayp, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i137.i, label %.lr.ph.i.i136.i

.lr.ph.i.i136.i:                                  ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ayq = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.eu

bb.eu:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i136.i
  %.0.i3.i.i.i = phi i32 [ %i.ayp, %.lr.ph.i.i136.i ], [ %i.aza, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ayr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ays = or disjoint i32 %i.ayr, %i.ayq
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw [72 x i8], ptr %i.ayj, i64 %i.ayt ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !86 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayu, i64 24
  %i.ayy = icmp eq ptr %i.ayw, %i.ayx
  br i1 %i.ayy, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @free(ptr noundef %i.ayw) #28
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.ev, %bb.eu
  %i.ayz = add i32 %.0.i3.i.i.i, -1
  %i.aza = and i32 %i.ayz, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.aza, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i137.i, label %bb.eu, !llvm.loop !18

._crit_edge.i.i137.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i138.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ayn
  br i1 %.not.i.i.i138.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !19

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i137.i
  %.pr.i.i = load i32, ptr %i.aic, align 4, !tbaa !812, !noalias !1801 ; 2 uses
  %i.azb = icmp eq i32 %.pr.i.i, 0
  br i1 %i.azb, label %_ZN4llvm8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i, label %bb.ew

bb.ew:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i.i
  %i.azc = load ptr, ptr %14, align 8, !tbaa !810, !noalias !1801
  %i.azd = zext i32 %.pr.i.i to i64               ; 2 uses
  %i.aze = mul nuw nsw i64 %i.azd, 72
  %i.azf = add nuw nsw i64 %i.azd, 31
  %i.azg = lshr i64 %i.azf, 3
  %i.azh = and i64 %i.azg, 1073741820
  %i.azi = add nuw nsw i64 %i.azh, %i.aze
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.azc, i64 noundef %i.azi, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i: ; preds = %bb.ew, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i.i, %_ZN4llvm11SmallVectorIPNS_9DWARFUnitELj6EED2Ev.exit135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !1801
  %i.azj = load ptr, ptr %i.qq, align 8, !tbaa !86, !noalias !1801 ; 2 uses
  %i.azk = load i32, ptr %i.qs, align 8, !tbaa !389, !noalias !1801 ; 2 uses
  %i.azl = zext i32 %i.azk to i64
  %.idx.i173.i = shl nuw nsw i64 %i.azl, 3
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azj, i64 %.idx.i173.i
  %.not6.i.i.i = icmp eq i32 %i.azk, 0
  br i1 %.not6.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i174.i

.lr.ph.i.i174.i:                                  ; preds = %_ZN4llvm8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i, %.lr.ph.i.i174.i
  %.07.i.i.i = phi ptr [ %i.azw, %.lr.ph.i.i174.i ], [ %i.azj, %_ZN4llvm8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i ] ; 3 uses
  %i.azn = load ptr, ptr %i.qq, align 8, !tbaa !86, !noalias !1801
  %i.azo = ptrtoint ptr %.07.i.i.i to i64
  %i.azp = ptrtoint ptr %i.azn to i64
  %i.azq = sub i64 %i.azo, %i.azp
  %sum.shift.i.i.i = lshr i64 %i.azq, 10
  %i.azr = trunc i64 %sum.shift.i.i.i to i32
  %i.azs = and i32 %i.azr, 33554431
  %i.azt = call i32 @llvm.umin.i32(i32 %i.azs, i32 30)
  %.sroa.speculated.i.i.i.i = zext nneg i32 %i.azt to i64
  %i.azu = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i
  %i.azv = load ptr, ptr %.07.i.i.i, align 8, !tbaa !76
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.azv, i64 noundef %i.azu, i64 noundef 16) #28
  %i.azw = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i175.i = icmp eq ptr %i.azw, %i.azm
  br i1 %.not.i.i175.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i174.i, !llvm.loop !20

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i: ; preds = %.lr.ph.i.i174.i, %_ZN4llvm8DenseMapIPNS_9DWARFUnitENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit.i
  %i.azx = load ptr, ptr %i.qu, align 8, !tbaa !86, !noalias !1801 ; 3 uses
  %i.azy = load i32, ptr %i.qw, align 8, !tbaa !389, !noalias !1801 ; 2 uses
  %i.azz = zext i32 %i.azy to i64
  %.idx.i.i176.i = shl nuw nsw i64 %i.azz, 4
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azx, i64 %.idx.i.i176.i
  %.not10.i.i.i = icmp eq i32 %i.azy, 0
  br i1 %.not10.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i1.i.i

.lr.ph.i1.i.i:                                    ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i, %.lr.ph.i1.i.i
  %.011.i.i.i = phi ptr [ %i.bae, %.lr.ph.i1.i.i ], [ %i.azx, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 3 uses
  %i.bab = load ptr, ptr %.011.i.i.i, align 8, !tbaa !820
  %i.bac = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !821
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bab, i64 noundef %i.bad, i64 noundef 16) #28
  %i.bae = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.bae, %i.baa
  br i1 %.not.i2.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, label %.lr.ph.i1.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i1.i.i
  %.pre.i177.i = load ptr, ptr %i.qu, align 8, !tbaa !86, !noalias !1801
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i
  %i.baf = phi ptr [ %.pre.i177.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i ], [ %i.azx, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 2 uses
  %i.bag = icmp eq ptr %i.baf, %i.qv
  br i1 %i.bag, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i, label %bb.ex

bb.ex:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  call void @free(ptr noundef %i.baf) #28
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i: ; preds = %bb.ex, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.bah = load ptr, ptr %i.qq, align 8, !tbaa !86, !noalias !1801 ; 2 uses
  %i.bai = icmp eq ptr %i.bah, %i.qr
  br i1 %i.bai, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i, label %bb.ey

bb.ey:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  call void @free(ptr noundef %i.bah) #28
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i: ; preds = %bb.ey, %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  %i.baj = load ptr, ptr %i.ql, align 8, !tbaa !86, !noalias !1801 ; 2 uses
  %i.bak = icmp eq ptr %i.baj, %i.qm
  br i1 %i.bak, label %_ZN4llvm11SmallVectorIPKNS_18EquivalenceClassesIPNS_9DWARFUnitEE7ECValueELj6EED2Ev.exit.i.i, label %bb.ez

bb.ez:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i
  call void @free(ptr noundef %i.baj) #28
  br label %_ZN4llvm11SmallVectorIPKNS_18EquivalenceClassesIPNS_9DWARFUnitEE7ECValueELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPKNS_18EquivalenceClassesIPNS_9DWARFUnitEE7ECValueELj6EED2Ev.exit.i.i: ; preds = %bb.ez, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit.i
  %i.bal = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.bam = load i32, ptr %i.bal, align 4, !tbaa !817, !noalias !1801 ; 2 uses
  %i.ban = icmp eq i32 %i.bam, 0
  br i1 %i.ban, label %_ZN4llvm18EquivalenceClassesIPNS_9DWARFUnitEED2Ev.exit.i, label %bb.fa

bb.fa:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_18EquivalenceClassesIPNS_9DWARFUnitEE7ECValueELj6EED2Ev.exit.i.i
  %i.bao = load ptr, ptr %7, align 8, !tbaa !815, !noalias !1801
  %i.bap = zext i32 %i.bam to i64                 ; 2 uses
  %i.baq = shl nuw nsw i64 %i.bap, 4
  %i.bar = add nuw nsw i64 %i.bap, 31
  %i.bas = lshr i64 %i.bar, 3
  %i.bat = and i64 %i.bas, 1073741820
  %i.bau = add nuw nsw i64 %i.bat, %i.baq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bao, i64 noundef %i.bau, i64 noundef 8) #28
  br label %_ZN4llvm18EquivalenceClassesIPNS_9DWARFUnitEED2Ev.exit.i

_ZN4llvm18EquivalenceClassesIPNS_9DWARFUnitEED2Ev.exit.i: ; preds = %bb.fa, %_ZN4llvm11SmallVectorIPKNS_18EquivalenceClassesIPNS_9DWARFUnitEE7ECValueELj6EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1801
  %i.bav = load i32, ptr %i.rm, align 4, !tbaa !791, !noalias !1801 ; 2 uses
  %i.baw = icmp eq i32 %i.bav, 0
  br i1 %i.baw, label %_ZN4llvm6detail12DenseSetImplIPNS_9DWARFUnitENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.fb

bb.fb:                                            ; preds = %_ZN4llvm18EquivalenceClassesIPNS_9DWARFUnitEED2Ev.exit.i
  %i.bax = load ptr, ptr %6, align 8, !tbaa !797, !noalias !1801
  %i.bay = zext i32 %i.bav to i64                 ; 2 uses
  %i.baz = shl nuw nsw i64 %i.bay, 3
  %i.bba = add nuw nsw i64 %i.bay, 31
  %i.bbb = lshr i64 %i.bba, 3
  %i.bbc = and i64 %i.bbb, 1073741820
  %i.bbd = add nuw nsw i64 %i.bbc, %i.baz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bax, i64 noundef %i.bbd, i64 noundef 8) #28
  br label %_ZN4llvm6detail12DenseSetImplIPNS_9DWARFUnitENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIPNS_9DWARFUnitENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.fb, %_ZN4llvm18EquivalenceClassesIPNS_9DWARFUnitEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1801
  br label %bb.fc

bb.fc:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_9DWARFUnitENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, %bb.bw
  %i.bbe = load ptr, ptr %5, align 8, !tbaa !86, !noalias !1801 ; 2 uses
  %i.bbf = icmp eq ptr %i.bbe, %i.ow
  br i1 %i.bbf, label %_ZL12partitionCUsRN4llvm12DWARFContextEm.exit, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @free(ptr noundef %i.bbe) #28
  br label %_ZL12partitionCUsRN4llvm12DWARFContextEm.exit

_ZL12partitionCUsRN4llvm12DWARFContextEm.exit:    ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1801
  %i.bbg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bbh = load ptr, ptr %i.bbg, align 8, !tbaa !64 ; 2 uses
  %.not.i89 = icmp eq ptr %i.bbh, null
  br i1 %.not.i89, label %bb.fe, label %_ZN4llvm4bolt13DWARFRewriter30getOrCreateDebugInfoThreadPoolEj.exit

bb.fe:                                            ; preds = %_ZL12partitionCUsRN4llvm12DWARFContextEm.exit
  %i.bbi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts11ThreadCountE, i64 120), align 8, !tbaa !468
  %i.bbj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL16DebugThreadCountE, i64 120), align 8, !tbaa !468
  %50 = call i32 @llvm.umin.i32(i32 %i.bbi, i32 %i.bbj) ; 2 uses
  %i.bbk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9NoThreadsE, i64 120), align 8, !tbaa !71, !range !72, !noundef !73
  %i.bbl = trunc nuw i8 %i.bbk to i1
  %i.bbm = icmp eq i32 %50, 0
  %or.cond.i90 = or i1 %i.bbm, %i.bbl
  %i.bbn = zext i32 %50 to i64
  %i.bbo = or disjoint i64 %i.bbn, 4294967296
  %i.bbp = call noalias noundef nonnull dereferenceable(368) ptr @_Znwm(i64 noundef 368) #27, !noalias !1852 ; 3 uses
  %.sroa.0.0.insert.ext.i = select i1 %or.cond.i90, i64 4294967297, i64 %i.bbo
  call void @_ZN4llvm13StdThreadPoolC1ENS_18ThreadPoolStrategyE(ptr noundef nonnull align 8 dereferenceable(368) %i.bbp, i64 %.sroa.0.0.insert.ext.i) #28, !noalias !1852
  %i.bbq = load ptr, ptr %i.bbg, align 8, !tbaa !64 ; 3 uses
  store ptr %i.bbp, ptr %i.bbg, align 8, !tbaa !64
  %.not.i.i.i.i91 = icmp eq ptr %i.bbq, null
  br i1 %.not.i.i.i.i91, label %_ZN4llvm4bolt13DWARFRewriter30getOrCreateDebugInfoThreadPoolEj.exit, label %_ZNKSt14default_deleteIN4llvm19ThreadPoolInterfaceEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm19ThreadPoolInterfaceEEclEPS1_.exit.i.i.i.i: ; preds = %bb.fe
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !75
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  %i.bbt = load ptr, ptr %i.bbs, align 8
  call void %i.bbt(ptr noundef nonnull align 8 dereferenceable(8) %i.bbq) #28, !inline_history !1754
  %.pre.i92 = load ptr, ptr %i.bbg, align 8, !tbaa !64
  br label %_ZN4llvm4bolt13DWARFRewriter30getOrCreateDebugInfoThreadPoolEj.exit

_ZN4llvm4bolt13DWARFRewriter30getOrCreateDebugInfoThreadPoolEj.exit: ; preds = %_ZL12partitionCUsRN4llvm12DWARFContextEm.exit, %bb.fe, %_ZNKSt14default_deleteIN4llvm19ThreadPoolInterfaceEEclEPS1_.exit.i.i.i.i
  %.0.i = phi ptr [ %i.bbh, %_ZL12partitionCUsRN4llvm12DWARFContextEm.exit ], [ %.pre.i92, %_ZNKSt14default_deleteIN4llvm19ThreadPoolInterfaceEEclEPS1_.exit.i.i.i.i ], [ %i.bbp, %bb.fe ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %i.bbu = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.bbv = load i32, ptr %i.bbu, align 8, !tbaa !389 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %.not.i.i.i.i93 = icmp eq i32 %i.bbv, 0
  br i1 %.not.i.i.i.i93, label %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit.thread, label %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit

_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit.thread: ; preds = %_ZN4llvm4bolt13DWARFRewriter30getOrCreateDebugInfoThreadPoolEj.exit
  %i.bbw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.bbx = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i

_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit: ; preds = %_ZN4llvm4bolt13DWARFRewriter30getOrCreateDebugInfoThreadPoolEj.exit
  %i.bby = zext i32 %i.bbv to i64                 ; 2 uses
  %i.bbz = shl nuw nsw i64 %i.bby, 4              ; 3 uses
  %i.bca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbz) #27 ; 4 uses
  store ptr %i.bca, ptr %41, align 8, !tbaa !747
  %i.bcb = getelementptr inbounds nuw [16 x i8], ptr %i.bca, i64 %i.bby
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bca, i8 0, i64 %i.bbz, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bca, i64 %i.bbz
  %.pre346.a = load i32, ptr %i.bbu, align 8, !tbaa !389 ; 2 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  store ptr %i.bcb, ptr %i.bcd, align 8, !tbaa !1853
  store ptr %scevgep.i.i.i.i.i, ptr %i.bcc, align 8, !tbaa !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %.not.i.i.i.i94 = icmp eq i32 %.pre346.a, 0
  br i1 %.not.i.i.i.i94, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i95

_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i: ; preds = %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit.thread, %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit
  %i.bce = phi ptr [ %i.bbx, %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.bcd, %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit ]
  %i.bcf = phi ptr [ %i.bbw, %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.bcc, %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit ]
  store i64 0, ptr %42, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit

.lr.ph.preheader.i.i.i.i.i95:                     ; preds = %_ZNSt6vectorIN4llvm4bolt13DWARFRewriter17BucketLocalWriterESaIS3_EEC2EmRKS4_.exit
  %i.bcg = zext i32 %.pre346.a to i64             ; 2 uses
  %i.bch = shl nuw nsw i64 %i.bcg, 3              ; 3 uses
  %i.bci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bch) #27 ; 4 uses
  store ptr %i.bci, ptr %42, align 8, !tbaa !471
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %i.bci, i64 %i.bcg
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bci, i8 0, i64 %i.bch, i1 false), !tbaa !1856
  %scevgep.i.i.i.i.i96 = getelementptr i8, ptr %i.bci, i64 %i.bch
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i, %.lr.ph.preheader.i.i.i.i.i95
  %i.bck = phi ptr [ %i.bce, %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.bcd, %.lr.ph.preheader.i.i.i.i.i95 ]
  %i.bcl = phi ptr [ %i.bcf, %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.bcc, %.lr.ph.preheader.i.i.i.i.i95 ]
  %.sink.i97 = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %i.bcj, %.lr.ph.preheader.i.i.i.i.i95 ]
  %.0.lcssa.i.i.i.i.i98 = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i ], [ %scevgep.i.i.i.i.i96, %.lr.ph.preheader.i.i.i.i.i95 ]
  %i.bcm = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  store ptr %.sink.i97, ptr %i.bcn, align 8, !tbaa !1857
  store ptr %.0.lcssa.i.i.i.i.i98, ptr %i.bcm, align 8, !tbaa !1858
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %43, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %44) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  %i.bco = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  store i64 8, ptr %i.bco, align 8, !tbaa !825
  %i.bcq = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27 ; 2 uses
  store ptr %i.bcq, ptr %45, align 8, !tbaa !826
  %i.bcr = load i64, ptr %i.bco, align 8, !tbaa !825
  %i.bcs = add i64 %i.bcr, -1
  %i.bct = lshr i64 %i.bcs, 1
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.bcq, i64 %i.bct ; 3 uses
  %i.bcv = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27 ; 6 uses
  store ptr %i.bcv, ptr %i.bcu, align 8, !tbaa !419
  %i.bcw = getelementptr inbounds nuw i8, ptr %45, i64 40 ; 4 uses
  store ptr %i.bcu, ptr %i.bcw, align 8, !tbaa !827
  %i.bcx = getelementptr inbounds nuw i8, ptr %45, i64 24 ; 3 uses
  store ptr %i.bcv, ptr %i.bcx, align 8, !tbaa !828
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcv, i64 512 ; 2 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 3 uses
  store ptr %i.bcy, ptr %i.bcz, align 8, !tbaa !829
  %i.bda = getelementptr inbounds nuw i8, ptr %45, i64 48 ; 3 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 2 uses
  store ptr %i.bcu, ptr %i.bdb, align 8, !tbaa !827
  %i.bdc = getelementptr inbounds nuw i8, ptr %45, i64 56
  store ptr %i.bcv, ptr %i.bdc, align 8, !tbaa !828
  %i.bdd = getelementptr inbounds nuw i8, ptr %45, i64 64
  store ptr %i.bcy, ptr %i.bdd, align 8, !tbaa !829
  store ptr %i.bcv, ptr %i.bcp, align 8, !tbaa !1859
  store ptr %i.bcv, ptr %i.bda, align 8, !tbaa !830
  %i.bde = load i32, ptr %i.bbu, align 8, !tbaa !389 ; 2 uses
  %i.bdf = zext i32 %i.bde to i64                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %.not.i.i.i.i99 = icmp eq i32 %i.bde, 0
  br i1 %.not.i.i.i.i99, label %.preheader.._crit_edge_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit
  %i.bdg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bdf) #27 ; 3 uses
  store ptr %i.bdg, ptr %46, align 8, !tbaa !832
  %i.bdh = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.bdf ; 2 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.bdi, ptr %i.bdj, align 8, !tbaa !1860
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bdg, i8 0, i64 %i.bdf, i1 false)
  store ptr %i.bdi, ptr %i.bdh, align 8, !tbaa !1861
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %47, i8 0, i64 40, i1 false)
  %i.bdk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bdl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bdm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bdn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bdo = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.ff

.preheader.._crit_edge_crit_edge:                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt10DIEBuilderESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %47, i8 0, i64 40, i1 false)
  %.pre347 = load ptr, ptr %38, align 8, !tbaa !725
  br label %._crit_edge

.lr.ph300:                                        ; preds = %_ZNSt14__basic_futureIvED2Ev.exit
  %i.bdp = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.gi

bb.ff:                                            ; preds = %.lr.ph, %_ZNSt14__basic_futureIvED2Ev.exit
  %.016298 = phi i64 [ 0, %.lr.ph ], [ %i.bet, %_ZNSt14__basic_futureIvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bds = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 96, i64 noundef 8) #28, !noalias !1862 ; 13 uses
  store ptr %i.bds, ptr %4, align 8, !tbaa !92, !noalias !1862
  store i64 %.016298, ptr %i.bds, align 8, !noalias !1862
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 8
  store ptr %0, ptr %.sroa.4238.0..sroa_idx, align 8, !noalias !1862
  %.sroa.5239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 16
  store ptr %40, ptr %.sroa.5239.0..sroa_idx, align 8, !noalias !1862
  %.sroa.6240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 24
  store ptr %42, ptr %.sroa.6240.0..sroa_idx, align 8, !noalias !1862
  %.sroa.7241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 32
  store ptr %41, ptr %.sroa.7241.0..sroa_idx, align 8, !noalias !1862
  %.sroa.8242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 40
  store ptr %33, ptr %.sroa.8242.0..sroa_idx, align 8, !noalias !1862
  %.sroa.9243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 48
  store ptr %32, ptr %.sroa.9243.0..sroa_idx, align 8, !noalias !1862
  %.sroa.10244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 56
  store ptr %34, ptr %.sroa.10244.0..sroa_idx, align 8, !noalias !1862
  %.sroa.11245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 64
  store ptr %43, ptr %.sroa.11245.0..sroa_idx, align 8, !noalias !1862
  %.sroa.12246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 72
  store ptr %46, ptr %.sroa.12246.0..sroa_idx, align 8, !noalias !1862
  %.sroa.13247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 80
  store ptr %45, ptr %.sroa.13247.0..sroa_idx, align 8, !noalias !1862
  %.sroa.14248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bds, i64 88
  store ptr %44, ptr %.sroa.14248.0..sroa_idx, align 8, !noalias !1862
  store <2 x ptr> <ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_4bolt13DWARFRewriter15updateDebugInfoEvE3$_1S6_EET_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeESC_", ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_4bolt13DWARFRewriter15updateDebugInfoEvE3$_1S6_EET_NS2_8CalledAsIT0_EEENUlPS2_SB_E_8__invokeESB_SB_">, ptr %i.bdk, align 8, !tbaa !76, !noalias !1862
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1862
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !1863
  call void @_ZSt5asyncIN4llvm15unique_functionIFvvEEEJEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNS6_IT0_E4typeEEE4typeEESt6launchOS7_DpOSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(40) %4), !noalias !1863
  %i.bdt = load ptr, ptr %i.bdm, align 8, !tbaa !833, !noalias !1864 ; 9 uses
  %i.bdu = load <2 x ptr>, ptr %2, align 16, !tbaa !76, !noalias !1864
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1863
  %.not.i.i.i.i.i.i.i100 = icmp eq ptr %i.bdt, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i100, label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8 ; 3 uses
  %i.bdw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !92, !noalias !1863
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bdw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.bdx = load i32, ptr %i.bdv, align 4, !tbaa !453, !noalias !1863
  %i.bdy = add nsw i32 %i.bdx, 1
  store i32 %i.bdy, ptr %i.bdv, align 4, !tbaa !453, !noalias !1863
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.bdz = atomicrmw volatile add ptr %i.bdv, i32 1 acq_rel, align 4, !noalias !1863 ; 0 uses
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i

_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i:         ; preds = %bb.fi, %bb.fh, %bb.ff
  store <2 x ptr> %i.bdu, ptr %3, align 16, !tbaa !76, !noalias !1863
end_hunk_0
