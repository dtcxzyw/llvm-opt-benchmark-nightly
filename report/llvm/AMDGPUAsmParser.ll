Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUAsmParser?download=true
inline.NumInlined: 20737
inline.NumDeleted: 2745
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL20getSpecialRegForNameN4llvm9StringRefE:bb.a
  %i.kx = icmp ne i32 %i.kw, 0
  %i.ky = zext i1 %i.kx to i32
  %.not.i.i304 = icmp eq i32 %i.ky, 0
  br i1 %.not.i.i304, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit322, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314.thread

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit306: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit258
  %.not.i.i.i.i310 = icmp eq i64 %1, 2
  %or.cond2808 = and i1 %.not.i.i.i.i310, %.not28352966
  br i1 %or.cond2808, label %bb.aa, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314

bb.aa:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit306
  %i.kz = load i16, ptr %0, align 1
  %i.la = icmp ne i16 %i.kz, 25456
  %i.lb = zext i1 %i.la to i32
  %.not.i.i312 = icmp eq i32 %i.lb, 0
  %spec.select2809 = select i1 %.not.i.i312, i64 4294967313, i64 %.sroa.86.282964
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit322

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314.thread: ; preds = %.thread799, %.thread825, %.thread851
  %.sroa.86.28296429742985299430083017.ph = phi i64 [ %.sroa.86.282964, %.thread825 ], [ %.sroa.86.282964, %.thread851 ], [ %.sroa.86.232946, %.thread799 ]
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit322

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit306
  %.not.i.i.i.i318 = icmp eq i64 %1, 4
  %or.cond2811 = and i1 %.not.i.i.i.i318, %.not28352966
  br i1 %or.cond2811, label %bb.ab, label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit322

bb.ab:                                            ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314
  %i.lc = load i32, ptr %0, align 1
  %i.ld = icmp ne i32 %i.lc, 1819047278
  %i.le = zext i1 %i.ld to i32
  %.not.i.i320 = icmp eq i32 %i.le, 0
  %spec.select2812 = select i1 %.not.i.i320, i64 4294967316, i64 %.sroa.86.282964
  br label %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit322

_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit322: ; preds = %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314.thread, %bb.ab, %bb.aa, %bb.f, %bb.d, %bb.e, %bb.g, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit42.thread.thread988, %bb.h, %bb.i, %bb.j, %bb.k, %bb.m, %bb.l, %.thread681, %bb.n, %bb.o, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit122.thread1159.thread1243, %bb.p, %bb.q, %bb.r, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit146.thread1347.thread1429, %bb.s, %bb.t, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit178.thread1669.thread1740, %bb.u, %bb.v, %.thread771, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit210.thread1776.thread, %.thread786, %bb.w, %.thread799, %bb.x, %.thread812, %bb.y, %.thread825, %bb.z, %.thread838, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit290, %.thread851, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314
  %.sroa.86.40 = phi i64 [ %.sroa.86.282964, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314 ], [ 4294967301, %bb.d ], [ 4294967329, %bb.g ], [ 4294967331, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit42.thread.thread988 ], [ %spec.select2809, %bb.aa ], [ 4294967344, %bb.e ], [ 4294967335, %.thread851 ], [ %spec.select2812, %bb.ab ], [ 4294967336, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit290 ], [ 4294967339, %.thread838 ], [ 4294967299, %.thread825 ], [ 4294967340, %bb.z ], [ 4294967342, %.thread812 ], [ 4294967300, %bb.y ], [ 4294967345, %.thread799 ], [ 4294967343, %bb.x ], [ 4294967302, %.thread786 ], [ 4294967346, %bb.w ], [ %spec.select, %bb.f ], [ 4294967338, %.thread771 ], [ 4294967305, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit210.thread1776.thread ], [ 4294967328, %bb.u ], [ 4294967334, %bb.v ], [ 4294967319, %bb.t ], [ 4294967328, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit178.thread1669.thread1740 ], [ 4294967333, %bb.r ], [ 4294967333, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit146.thread1347.thread1429 ], [ 4294967319, %bb.s ], [ 4294967311, %bb.p ], [ 4294967619, %bb.q ], [ 4294967323, %bb.o ], [ 4294967311, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit122.thread1159.thread1243 ], [ 4294967321, %.thread681 ], [ 4294967323, %bb.n ], [ 4294967322, %bb.m ], [ 4294967326, %bb.l ], [ 4294967324, %bb.j ], [ 4294967326, %bb.k ], [ 4294967331, %bb.h ], [ 4294967324, %bb.i ], [ %.sroa.86.28296429742985299430083017.ph, %_ZN4llvm12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit314.thread ] ; 2 uses
  %i.lf = and i64 %.sroa.86.40, 4294967296
  %.not2847 = icmp eq i64 %i.lf, 0
  %.sroa.86.16.extract.trunc = trunc i64 %.sroa.86.40 to i32
  %spec.select.i = select i1 %.not2847, i32 0, i32 %.sroa.86.16.extract.trunc
  ret i32 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 40, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #30 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !253    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !260  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !258
  store i32 %i.m, ptr %i.k, align 8, !tbaa !258
  %i.n = load i64, ptr %i.j, align 8
  store i64 %i.n, ptr %i.i, align 8
  store i32 0, ptr %i.l, align 8, !tbaa !258
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !871

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !253 ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !260 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.q = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.q, 40
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm8AsmTokenD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.s, %_ZN4llvm8AsmTokenD2Ev.exit.i.i ], [ %i.r, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !258
  %i.v = icmp ugt i32 %i.u, 64
  br i1 %i.v, label %bb.b, label %_ZN4llvm8AsmTokenD2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN4llvm8AsmTokenD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.x) #32
  br label %_ZN4llvm8AsmTokenD2Ev.exit.i.i

_ZN4llvm8AsmTokenD2Ev.exit.i.i:                   ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.s
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !14

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit: ; preds = %_ZN4llvm8AsmTokenD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !253
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.z = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i ] ; 2 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !100
  %i.ab = icmp eq ptr %i.z, %i.b
  br i1 %i.ab, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE21takeAllocationForGrowEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit
  call void @free(ptr noundef %i.z) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE21takeAllocationForGrowEPS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE21takeAllocationForGrowEPS1_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !253
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN12_GLOBAL__N_115AMDGPUAsmParser13getRegularRegENS_12RegisterKindEjjjN4llvm5SMLocE(ptr noundef nonnull align 8 dereferenceable(1017) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  switch i32 %1, label %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread [
    i32 4, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = icmp ult i32 %4, 64
  br i1 %i.a, label %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread, label %_ZN4llvm8bit_ceilIjEET_S1_.exit

_ZN4llvm8bit_ceilIjEET_S1_.exit:                  ; preds = %bb.b
  %i.b = lshr i32 %4, 5
  %i.c = add nsw i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d
  %i.f = shl nuw nsw i32 1, %i.e
  %.inv = icmp ult i32 %4, 160
  %spec.select = select i1 %.inv, i32 %i.f, i32 4
  br label %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread

_ZN4llvm8bit_ceilIjEET_S1_.exit.thread:           ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %spec.select, %_ZN4llvm8bit_ceilIjEET_S1_.exit ] ; 2 uses
  %i.g = add nsw i32 %.0, -1
  %i.h = and i32 %i.g, %2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !99
  store ptr @.str.89, ptr %6, align 8, !tbaa !68
  store i8 3, ptr %i.i, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.l, ptr %5, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, ptr null) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.r

bb.d:                                             ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.thread
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0, i1 true)
  %i.o = lshr i32 %2, %i.n                        ; 4 uses
  switch i32 %1, label %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit [
    i32 1, label %bb.e
    i32 4, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 27)
  %switch.tableidx = add i32 %i.p, -1             ; 3 uses
  %i.q = icmp ult i32 %switch.tableidx, 32
  %switch.shifted = lshr i32 -2147446785, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.q, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit

bb.f:                                             ; preds = %bb.d
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %4)
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %.split.i, label %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit

.split.i:                                         ; preds = %bb.f
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %4, i1 true)
  %switch.tableidx49 = add nsw i32 %i.t, -5       ; 2 uses
  %i.u = icmp ult i32 %switch.tableidx49, 5
  br i1 %i.u, label %switch.lookup50, label %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit

bb.g:                                             ; preds = %bb.d
  %i.v = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 27)
  %switch.tableidx54 = add i32 %i.v, -1           ; 3 uses
  %i.w = icmp ult i32 %switch.tableidx54, 16
  %switch.maskindex = trunc i32 %switch.tableidx54 to i16
  %switch.shifted58 = lshr i16 -28673, %switch.maskindex
  %switch.lobit59 = trunc i16 %switch.shifted58 to i1
  %or.cond72 = select i1 %i.w, i1 %switch.lobit59, i1 false
  br i1 %or.cond72, label %switch.lookup57, label %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit

bb.h:                                             ; preds = %bb.d
  %i.x = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 27)
  %switch.tableidx63 = add i32 %i.x, -1           ; 3 uses
  %i.y = icmp ult i32 %switch.tableidx63, 32
  %switch.shifted67 = lshr i32 -2147446785, %switch.tableidx63
  %switch.lobit68 = trunc i32 %switch.shifted67 to i1
  %or.cond73 = select i1 %i.y, i1 %switch.lobit68, i1 false
  br i1 %or.cond73, label %switch.lookup66, label %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit

_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit: ; preds = %bb.h, %bb.g, %.split.i, %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !99
  store ptr @.str.90, ptr %7, align 8, !tbaa !68
  store i8 3, ptr %i.z, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75
  %i.ad = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ac, ptr %5, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, ptr null) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.r

switch.lookup:                                    ; preds = %bb.e
  %10 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN12_GLOBAL__N_115AMDGPUAsmParser13getRegularRegENS_12RegisterKindEjjjN4llvm5SMLocE, i64 %10
  br label %bb.i

switch.lookup50:                                  ; preds = %.split.i
  %11 = zext nneg i32 %switch.tableidx49 to i64
  %switch.gep51 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN12_GLOBAL__N_115AMDGPUAsmParser13getRegularRegENS_12RegisterKindEjjjN4llvm5SMLocE.799, i64 %11
  br label %bb.i

switch.lookup57:                                  ; preds = %bb.g
  %12 = zext nneg i32 %switch.tableidx54 to i64
  %switch.gep60 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN12_GLOBAL__N_115AMDGPUAsmParser13getRegularRegENS_12RegisterKindEjjjN4llvm5SMLocE.800, i64 %12
  br label %bb.i

switch.lookup66:                                  ; preds = %bb.h
  %13 = zext nneg i32 %switch.tableidx63 to i64
  %switch.gep69 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN12_GLOBAL__N_115AMDGPUAsmParser13getRegularRegENS_12RegisterKindEjjjN4llvm5SMLocE.801, i64 %13
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup66, %switch.lookup57, %switch.lookup50, %switch.lookup
  %switch.load70.sink.in = phi ptr [ %switch.gep69, %switch.lookup66 ], [ %switch.gep60, %switch.lookup57 ], [ %switch.gep51, %switch.lookup50 ], [ %switch.gep, %switch.lookup ]
  %switch.load70.sink = load i16, ptr %switch.load70.sink.in, align 2
  %switch.ext71 = zext i16 %switch.load70.sink to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 2 uses
  %i.af = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.val, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !325 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !339
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.aj, i64 %switch.ext71 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i16, ptr %i.al, align 8, !tbaa !872
  %i.an = zext i16 %i.am to i32
  %.not36 = icmp ult i32 %i.o, %i.an
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp eq i32 %1, 1                       ; 2 uses
  %i.ap = icmp samesign ugt i32 %i.o, 255
  %or.cond3 = and i1 %i.ao, %i.ap
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !99
  store ptr @.str.75, ptr %8, align 8, !tbaa !68
  store i8 3, ptr %i.aq, align 8, !tbaa !98
  %i.as = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %.val, ptr %5, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr null, ptr null) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  br i1 %i.ao, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.at = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm17MCTargetAsmParser6getSTIEv(ptr noundef nonnull align 8 dereferenceable(1017) %0) #30
  %i.au = tail call noundef zeroext i1 @_ZN4llvm6AMDGPU13isGFX1250PlusERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(320) %i.at) #30
  br i1 %i.au, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = lshr i32 %4, 5
  %i.aw = add nuw nsw i32 %i.o, %i.av
  %i.ax = icmp samesign ugt i32 %i.aw, 256
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.az, align 1, !tbaa !99
  store ptr @.str.75, ptr %9, align 8, !tbaa !68
  store i8 3, ptr %i.ay, align 8, !tbaa !98
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.bb = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.ba, ptr %5, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr null, ptr null) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bc = load i32, ptr %i.ak, align 8, !tbaa !873
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bd
  %i.bf = zext nneg i32 %i.o to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !351
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %.not37 = icmp eq i32 %3, 0
  br i1 %.not37, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.ah, i32 %i.bi, i32 noundef %3) #30
  br label %bb.r

bb.r:                                             ; preds = %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit, %bb.p, %bb.q, %bb.o, %bb.k, %bb.c
  %.sroa.0.0 = phi i32 [ 0, %_ZL11getRegClassN12_GLOBAL__N_112RegisterKindEj.exit ], [ 0, %bb.k ], [ %i.bi, %bb.p ], [ %i.bj, %bb.q ], [ 0, %bb.o ], [ 0, %bb.c ]
  ret i32 %.sroa.0.0
}

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115AMDGPUAsmParser9skipTokenEN4llvm8AsmToken9TokenKindENS1_9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1017) %0, i32 noundef range(i32 2, 31) %1, ptr %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::AsmToken", align 8    ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5 = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr i8, ptr %.val5, i64 48
  %.val5.val = load ptr, ptr %i.c, align 8, !tbaa !253
  %.val5.val.val = load i32, ptr %.val5.val, align 8, !tbaa !257
  %i.d = icmp eq i32 %.val5.val.val, %1           ; 2 uses
  %.val6 = load ptr, ptr %i.b, align 8            ; 3 uses
  br i1 %i.d, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.thread, label %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit

_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.thread: ; preds = %bb.a
  %i.e = load ptr, ptr %.val6, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(243) %.val6) #30, !inline_history !1 ; 0 uses
  br label %bb.f

_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.i = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val6) #30, !noalias !876 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !258, !noalias !876 ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !258, !alias.scope !876
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit
  %i.p = load i64, ptr %i.k, align 8, !tbaa !68, !noalias !876
  store i64 %i.p, ptr %i.j, align 8, !tbaa !68, !alias.scope !876
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.k) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i: ; preds = %bb.c, %bb.b
  %i.q = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #30
  %i.r = load i32, ptr %i.l, align 8, !tbaa !258
  %i.s = icmp ugt i32 %i.r, 64
  br i1 %i.s, label %bb.d, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.t) #32
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit

_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit: ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.v, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !99
  store ptr %2, ptr %5, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.x, align 8, !tbaa !68
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.z = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %i.y, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, ptr null) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_115AMDGPUAsmParser12trySkipTokenEN4llvm8AsmToken9TokenKindE.exit.thread, %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115AMDGPUAsmParser9parseExprERlN4llvm9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::AsmToken", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK4llvm11MCAsmParser6getTokEv(ptr noundef nonnull align 8 dereferenceable(243) %.val) #30, !noalias !883 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !258, !noalias !883 ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !258, !alias.scope !883
  %i.i = icmp ult i32 %i.h, 65
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !68, !noalias !883
  store i64 %i.j, ptr %i.d, align 8, !tbaa !68, !alias.scope !883
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.e) #30
  br label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i

_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i: ; preds = %bb.c, %bb.b
  %i.k = call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #30 ; 2 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !258
  %i.m = icmp ugt i32 %i.l, 64
  br i1 %i.m, label %bb.d, label %_ZNK12_GLOBAL__N_115AMDGPUAsmParser6getLocEv.exit

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_115AMDGPUAsmParser8getTokenEv.exit.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
end_hunk_0
