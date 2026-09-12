Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69836
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 297
loop-unroll.NumUnrolled: 333
begin_hunk_0_@_ZSt9__find_ifIPKN4llvm13slpvectorizer7BoUpSLP10VLOperands11OperandDataEN9__gnu_cxx5__ops10_Iter_predIZZNS3_7reorderEvENKUlvE_clEvEUlRS5_E_EEET_SE_SE_T0_St26random_access_iterator_tag:bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i66, i64 8 ; 2 uses
  %.not.i.i.i.i68 = icmp eq ptr %i.cm, %i.cl
  br i1 %.not.i.i.i.i68, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit.thread, label %.lr.ph.i.i.i.i65

.lr.ph.i.i.i.i65:                                 ; preds = %bb.o, %bb.p
  %.01218.i.i.i.i66 = phi ptr [ %i.cm, %bb.p ], [ %i.ch, %bb.o ] ; 2 uses
  %i.cn = load ptr, ptr %.01218.i.i.i.i66, align 8, !tbaa !874
  %.not15.i.i.not.i.not.i67 = icmp eq ptr %i.cn, %i.cd
  br i1 %.not15.i.i.not.i.not.i67, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69.thread100, label %bb.p

_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69: ; preds = %bb.n
  %i.co = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %i.cd) #31
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69.thread100

_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69.thread100: ; preds = %.lr.ph.i.i.i.i65, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69
  %i.cq = getelementptr inbounds nuw i8, ptr %.1, i64 16
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69.thread100, %._crit_edge
  %.2 = phi ptr [ %i.cq, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69.thread100 ], [ %.029.lcssa, %._crit_edge ] ; 4 uses
  %i.cr = load ptr, ptr %.2, align 8, !tbaa !1246 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !367, !range !368, !noundef !369
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.r, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %2, align 8, !tbaa !370   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !879 ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %.idx.i.i.i.i71 = shl nuw nsw i64 %i.cy, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i.i.i.i71
  %.not17.i.i.i.i72 = icmp eq i32 %i.cx, 0
  br i1 %.not17.i.i.i.i72, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit.thread, label %.lr.ph.i.i.i.i73

bb.s:                                             ; preds = %.lr.ph.i.i.i.i73
  %i.da = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.da, %i.cz
  br i1 %.not.i.i.i.i76, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit.thread, label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %bb.r, %bb.s
  %.01218.i.i.i.i74 = phi ptr [ %i.da, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %i.db = load ptr, ptr %.01218.i.i.i.i74, align 8, !tbaa !874
  %.not15.i.i.not.i.not.i75 = icmp eq ptr %i.db, %i.cr
  br i1 %.not15.i.i.not.i.not.i75, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77.thread103, label %bb.s

_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77: ; preds = %bb.q
  %i.dc = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef %i.cr) #31
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77.thread103

_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77.thread103: ; preds = %.lr.ph.i.i.i.i73, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77, %._crit_edge
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit, %bb.c, %bb.i, %bb.g, %bb.e, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit53, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit45, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit37, %bb.d, %bb.f, %bb.h, %bb.j, %bb.m, %bb.p, %bb.s, %bb.r, %bb.o, %bb.l, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit61, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77.thread103
  %.028 = phi ptr [ %.1, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit69 ], [ %.029.lcssa, %bb.l ], [ %.1, %bb.o ], [ %.2, %bb.r ], [ %1, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77.thread103 ], [ %.029145, %bb.d ], [ %.029.lcssa, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit61 ], [ %.2, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit77 ], [ %.029.lcssa, %bb.m ], [ %i.y, %bb.f ], [ %i.an, %bb.h ], [ %.2, %bb.s ], [ %.1, %bb.p ], [ %i.bc, %bb.j ], [ %.029145, %bb.c ], [ %i.v, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit37 ], [ %i.ak, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit45 ], [ %i.az, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit53 ], [ %i.y, %bb.e ], [ %i.an, %bb.g ], [ %i.bc, %bb.i ], [ %.029145, %_ZN9__gnu_cxx5__ops10_Iter_predIZZN4llvm13slpvectorizer7BoUpSLP10VLOperands7reorderEvENKUlvE_clEvEUlRKNS5_11OperandDataEE_EclIPS8_EEbT_.exit ]
  ret ptr %.028
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #31 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !359    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !371  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj2EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj2EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj2EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !359
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !371
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12
  store i32 2, ptr %i.k, align 4, !tbaa !372
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !371
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj2EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj2EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj2EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10203

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj2EEEJS4_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !359 ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !371 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i
  %i.q = zext i32 %.pre3.i to i64
  %.idx2.i = shl nuw nsw i64 %i.q, 5
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.s, %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i ], [ %i.r, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !359  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.t) #31
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.s
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !62

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj2EED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !359
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i
  %i.w = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE18uninitialized_moveIPS4_S7_EEvT_S8_T0_.exit.i ] ; 2 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !581
  %i.y = icmp eq ptr %i.w, %i.b
  br i1 %i.y, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE21takeAllocationForGrowEPS4_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit
  call void @free(ptr noundef %i.w) #31
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE21takeAllocationForGrowEPS4_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE21takeAllocationForGrowEPS4_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj2EEELb0EE19moveElementsForGrowEPS4_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !359
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm13slpvectorizer7BoUpSLP10VLOperands17getLookAheadScoreEPNS_5ValueES4_NS_8ArrayRefIS4_EEijjRbRKNS_14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %10 = alloca %"class.llvm::slpvectorizer::BoUpSLP::LookAheadHeuristics", align 16 ; 7 uses
  %11 = alloca %"class.llvm::ArrayRef.254", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %0, align 8, !tbaa !359
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !371
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL17LookAheadMaxDepth, i64 120), align 8, !tbaa !840
  %i.h = load <2 x ptr>, ptr %i.a, align 8, !tbaa !874
  store <2 x ptr> %i.h, ptr %10, align 16, !tbaa !874
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.j = load <2 x ptr>, ptr %i.b, align 8, !tbaa !874
  store <2 x ptr> %i.j, ptr %i.i, align 16, !tbaa !874
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %i.f, ptr %i.k, align 16, !tbaa !2030
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 %i.g, ptr %i.l, align 4, !tbaa !2031
  store ptr %3, ptr %11, align 8, !tbaa !801
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !581
  %i.m = call noundef i32 @_ZNK4llvm13slpvectorizer7BoUpSLP19LookAheadHeuristics18getScoreAtLevelRecEPNS_5ValueES4_PNS_11InstructionES6_iNS_8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.254") align 8 %11) ; 3 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef i32 @_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands13getSplatScoreEjjjRKNS_14SmallBitVectorE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.o = mul nsw i32 %i.n, 10                     ; 2 uses
  %i.p = sub nsw i32 0, %i.o
  %.not25 = icmp sgt i32 %i.m, %i.p
  br i1 %.not25, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.o, %i.m
  %i.r = icmp eq ptr %1, %2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call noundef zeroext i1 @_ZN4llvm13slpvectorizer10isConstantEPNS_5ValueE(ptr noundef %1) #31
  %i.t = select i1 %i.s, i32 6, i32 10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ 10, %bb.c ], [ %i.t, %bb.d ]
  %i.v = mul nsw i32 %i.u, %i.q
  %i.w = zext i32 %7 to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !359    ; 2 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.w
  %i.z = zext i32 %5 to i64                       ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !359
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1246 ; 3 uses
  %i.ad = zext i32 %6 to i64
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !359
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.z
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1246 ; 2 uses
  %i.ai = call noundef zeroext i1 @_ZN4llvm13slpvectorizer28isVectorLikeInstWithConstOpsEPNS_5ValueE(ptr noundef %i.ac) #31
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = call noundef zeroext i1 @_ZN4llvm13slpvectorizer28isVectorLikeInstWithConstOpsEPNS_5ValueE(ptr noundef %i.ah) #31
  br i1 %i.aj, label %_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands19getExternalUseScoreEjjj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = load i8, ptr %i.ac, align 8, !tbaa !391
  %i.al = icmp ult i8 %i.ak, 30
  br i1 %i.al, label %_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands19getExternalUseScoreEjjj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.ah, align 8, !tbaa !391
  %i.an = icmp ugt i8 %i.am, 29
  br i1 %i.an, label %bb.i, label %_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands19getExternalUseScoreEjjj.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !10204, !nonnull !369, !align !655
  %i.ap = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP21areAllUsersVectorizedEPNS_11InstructionEPKNS_13SmallDenseSetIPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEEEE(ptr noundef nonnull align 8 dereferenceable(5088) %i.ao, ptr noundef nonnull %i.ac, ptr noundef null)
  %i.aq = select i1 %i.ap, i32 10, i32 0
  br label %_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands19getExternalUseScoreEjjj.exit

_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands19getExternalUseScoreEjjj.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.1.i = phi i32 [ 10, %bb.f ], [ %i.aq, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ar = add nsw i32 %.1.i, %i.v
  store i8 1, ptr %8, align 1, !tbaa !783
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands19getExternalUseScoreEjjj.exit, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.ar, %_ZNK4llvm13slpvectorizer7BoUpSLP10VLOperands19getExternalUseScoreEjjj.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JiEEES2_IPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !10209 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !10209 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !10209 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !10209
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 8 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !380    ; 2 uses
  %i.n = mul i32 %i.m, 37
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !380  ; 2 uses
  %i.q = mul i32 %i.p, 37
  %i.r = zext i32 %i.n to i64
  %i.s = shl nuw i64 %i.r, 32
  %i.t = zext i32 %i.q to i64
  %i.u = or disjoint i64 %i.s, %i.t
  %i.v = mul i64 %i.u, -4658895280553007687       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.l, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %.sink2.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !380
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !547

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.as, %bb.c ], [ %i.ab, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.aq, %bb.c ], [ %i.z, %bb.b ]
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !380
  %i.ak = icmp eq i32 %i.m, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.p, %i.am
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !548

bb.c:                                             ; preds = %.lr.ph.i
  %i.ap = add nuw i32 %.024.i, 1
  %i.aq = and i32 %i.ap, %i.l                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %.sink2.i.i.i, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %i.ar, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !380
  %i.aw = and i32 %i.aq, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph.i, label %.loopexit, !prof !549, !llvm.loop !181

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ], [ %i.as, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2106
  %i.az = shl i32 %i.b, 1
  %i.ba = and i32 %i.az, -4
  %i.bb = add i32 %i.ba, 4
  %i.bc = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.bb, %i.bc
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !548

bb.d:                                             ; preds = %.loopexit
  %i.bd = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bd)
  %i.be = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2106
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.bf = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.bg = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.bh = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.bi = select i1 %.not.i.i.i.i, ptr %i.bg, ptr %i.j
  %i.bj = select i1 %.not.i.i.i.i, ptr %i.bf, ptr %i.d
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 12                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = lshr i64 %i.bn, 5
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !380
  %i.bu = or i32 %i.bq, %i.bt
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !380
  %i.bv = load i32, ptr %0, align 8               ; 2 uses
  %i.bw = and i32 %i.bv, -2
  %i.bx = add i32 %i.bw, 2
  %i.by = and i32 %i.bv, 1
  %i.bz = or disjoint i32 %i.bx, %i.by
  store i32 %i.bz, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = load i64, ptr %1, align 4
  store i64 %i.ca, ptr %i.bh, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cc = load i32, ptr %2, align 4, !tbaa !380
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !380
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.bh, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.ai, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIjjEjLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !10214
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !10214
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !10214
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !10214
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 8 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !380    ; 2 uses
  %i.m = mul i32 %i.l, 37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !380  ; 2 uses
  %i.p = mul i32 %i.o, 37
  %i.q = zext i32 %i.m to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = zext i32 %i.p to i64
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.k, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %.sink2.i.i, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !380
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !547

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ar, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.ap, %bb.c ], [ %i.y, %bb.b ]
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !380
  %i.aj = icmp eq i32 %i.l, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.o, %i.al
  %i.an = select i1 %i.aj, i1 %i.am, i1 false     ; 3 uses
  br i1 %i.an, label %.thread, label %bb.c, !prof !548

bb.c:                                             ; preds = %.lr.ph
end_hunk_0
