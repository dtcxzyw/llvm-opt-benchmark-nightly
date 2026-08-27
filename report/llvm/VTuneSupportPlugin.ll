Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VTuneSupportPlugin?download=true
inline.NumInlined: 2479
inline.NumDeleted: 1458
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm3orc6shared19WrapperFunctionCall6CreateINS1_10SPSArgListIJNS1_8SPSTupleIJNS1_11SPSSequenceINS5_IJNS6_INS5_IJjjEEEEENS1_15SPSExecutorAddrEmmjjjjEEEEENS6_INS6_IcEEEEEEEEEEJNS0_16VTuneMethodBatchEEEENS_8ExpectedIS2_EENS0_12ExecutorAddrEDpRKT0_:bb.a
  store i64 %i.cu, ptr %i.cv, align 1
  %i.cw = load ptr, ptr %5, align 8, !tbaa !478
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store ptr %i.cx, ptr %5, align 8, !tbaa !478
  %i.cy = load i64, ptr %i.cl, align 8, !tbaa !480
  %i.cz = add i64 %i.cy, -8                       ; 2 uses
  store i64 %i.cz, ptr %i.cl, align 8, !tbaa !480
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !481 ; 2 uses
  %i.db = load ptr, ptr %i.bw, align 8, !tbaa !481 ; 2 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not16.i.i.i.i.i, label %_ZN4llvm3orc6shared10SPSArgListIJNS1_8SPSTupleIJNS1_11SPSSequenceINS3_IJNS4_INS3_IJjjEEEEENS1_15SPSExecutorAddrEmmjjjjEEEEENS4_INS4_IcEEEEEEEEE9serializeINS0_16VTuneMethodBatchEJEEEbRNS1_15SPSOutputBufferERKT_DpRKT0_.exit, label %.lr.ph.i.i.i.i.i3

.lr.ph.i.i.i.i.i3:                                ; preds = %bb.e, %.loopexit.i.i.i.i.i
  %i.dc = phi ptr [ %i.dw, %.loopexit.i.i.i.i.i ], [ %i.cx, %bb.e ]
  %i.dd = phi i64 [ %i.dx, %.loopexit.i.i.i.i.i ], [ %i.cz, %bb.e ]
  %.sroa.011.017.i.i.i.i.i = phi ptr [ %i.dy, %.loopexit.i.i.i.i.i ], [ %i.da, %bb.e ] ; 3 uses
  %i.de = icmp ugt i64 %i.dd, 7
  br i1 %i.de, label %bb.f, label %_ZN4llvm5ErrorD2Ev.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i3
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i.i.i.i, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !346
  store i64 %i.dg, ptr %i.dc, align 1
  %i.dh = load ptr, ptr %5, align 8, !tbaa !478
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  store ptr %i.di, ptr %5, align 8, !tbaa !478
  %i.dj = load i64, ptr %i.cl, align 8, !tbaa !480
  %i.dk = add i64 %i.dj, -8                       ; 3 uses
  store i64 %i.dk, ptr %i.cl, align 8, !tbaa !480
  %i.dl = load ptr, ptr %.sroa.011.017.i.i.i.i.i, align 8, !tbaa !345 ; 2 uses
  %i.dm = load i64, ptr %i.df, align 8, !tbaa !346 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  %.not14.i.i.i.i.i.i.i = icmp samesign eq i64 %i.dm, 0
  br i1 %.not14.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %bb.g
  %i.do = phi ptr [ %i.ds, %bb.g ], [ %i.di, %bb.f ]
  %i.dp = phi i64 [ %i.du, %bb.g ], [ %i.dk, %bb.f ]
  %.sroa.011.015.i.i.i.i.i.i.i = phi ptr [ %i.dv, %bb.g ], [ %i.dl, %bb.f ] ; 2 uses
  %.not.i.not.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.not.not.i.not.i.i.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dq = load i8, ptr %.sroa.011.015.i.i.i.i.i.i.i, align 1, !tbaa !268
  store i8 %i.dq, ptr %i.do, align 1
  %i.dr = load ptr, ptr %5, align 8, !tbaa !478
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 3 uses
  store ptr %i.ds, ptr %5, align 8, !tbaa !478
  %i.dt = load i64, ptr %i.cl, align 8, !tbaa !480
  %i.du = add i64 %i.dt, -1                       ; 3 uses
  store i64 %i.du, ptr %i.cl, align 8, !tbaa !480
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.dn
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.dw = phi ptr [ %i.di, %bb.f ], [ %i.ds, %bb.g ]
  %i.dx = phi i64 [ %i.dk, %bb.f ], [ %i.du, %bb.g ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %i.dy, %i.db
  br i1 %.not.i.i.i.i.i4, label %_ZN4llvm3orc6shared10SPSArgListIJNS1_8SPSTupleIJNS1_11SPSSequenceINS3_IJNS4_INS3_IJjjEEEEENS1_15SPSExecutorAddrEmmjjjjEEEEENS4_INS4_IcEEEEEEEEE9serializeINS0_16VTuneMethodBatchEJEEEbRNS1_15SPSOutputBufferERKT_DpRKT0_.exit, label %.lr.ph.i.i.i.i.i3

_ZN4llvm3orc6shared10SPSArgListIJNS1_8SPSTupleIJNS1_11SPSSequenceINS3_IJNS4_INS3_IJjjEEEEENS1_15SPSExecutorAddrEmmjjjjEEEEENS4_INS4_IcEEEEEEEEE9serializeINS0_16VTuneMethodBatchEJEEEbRNS1_15SPSOutputBufferERKT_DpRKT0_.exit: ; preds = %.loopexit.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.dz, ptr %7, align 8, !tbaa !464
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ea, align 8, !tbaa !466
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 24, ptr %i.eb, align 8, !tbaa !467
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !466
  %.not.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread, label %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit

_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread: ; preds = %_ZN4llvm3orc6shared10SPSArgListIJNS1_8SPSTupleIJNS1_11SPSSequenceINS3_IJNS4_INS3_IJjjEEEEENS1_15SPSExecutorAddrEmmjjjjEEEEENS4_INS4_IcEEEEEEEEE9serializeINS0_16VTuneMethodBatchEJEEEbRNS1_15SPSOutputBufferERKT_DpRKT0_.exit
  store i64 %1, ptr %6, align 8, !tbaa !82
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !464
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.ef, align 8, !tbaa !466
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 24, ptr %i.eg, align 8, !tbaa !467
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit

_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit:        ; preds = %_ZN4llvm3orc6shared10SPSArgListIJNS1_8SPSTupleIJNS1_11SPSSequenceINS3_IJNS4_INS3_IJjjEEEEENS1_15SPSExecutorAddrEmmjjjjEEEEENS4_INS4_IcEEEEEEEEE9serializeINS0_16VTuneMethodBatchEJEEEbRNS1_15SPSOutputBufferERKT_DpRKT0_.exit
  %i.eh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %4) ; 0 uses
  %.pre20 = load i64, ptr %i.ea, align 8, !tbaa !466
  %i.ei = icmp eq i64 %.pre20, 0
  store i64 %1, ptr %6, align 8, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !464
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.el, align 8, !tbaa !466
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 24, ptr %i.em, align 8, !tbaa !467
  br i1 %i.ei, label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit
  %i.en = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, ptr noundef nonnull align 8 dereferenceable(48) %7) ; 0 uses
  %.pre21 = load i64, ptr %6, align 8, !tbaa !82
  %.pre22 = load i64, ptr %i.el, align 8, !tbaa !466
  %i.eo = icmp eq i64 %.pre22, 0
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit

_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit: ; preds = %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit, %bb.h
  %i.ep = phi ptr [ %i.ek, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.ek, %bb.h ], [ %i.ee, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.eq = phi ptr [ %i.ej, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.ej, %bb.h ], [ %i.ed, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ] ; 2 uses
  %.not.i.i.i.i5 = phi i1 [ true, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %i.eo, %bb.h ], [ true, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.er = phi i64 [ %1, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit ], [ %.pre21, %bb.h ], [ %1, %_ZN4llvm11SmallVectorIcLj24EEC2EOS1_.exit.thread ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.et = load i8, ptr %i.es, align 8
  %i.eu = and i8 %i.et, -2
  store i8 %i.eu, ptr %i.es, align 8
  store i64 %i.er, ptr %0, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !464
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ex, align 8, !tbaa !466
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 24, ptr %i.ey, align 8, !tbaa !467
  br i1 %.not.i.i.i.i5, label %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit
  %i.ez = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, ptr noundef nonnull align 8 dereferenceable(48) %i.eq) ; 0 uses
  br label %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit

_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit: ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallC2ENS0_12ExecutorAddrENS_11SmallVectorIcLj24EEE.exit, %bb.i
  %i.fa = load ptr, ptr %i.eq, align 8, !tbaa !464 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ep
  br i1 %i.fb, label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit
  call void @free(ptr noundef %i.fa) #17
  br label %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit

_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit: ; preds = %_ZN4llvm8ExpectedINS_3orc6shared19WrapperFunctionCallEEC2IS3_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS6_S3_EEvE4typeE.exit, %bb.j
  %i.fc = load ptr, ptr %7, align 8, !tbaa !464   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.dz
  br i1 %i.fd, label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit
  call void @free(ptr noundef %i.fc) #17
  br label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit

_ZN4llvm11SmallVectorIcLj24EED2Ev.exit:           ; preds = %_ZN4llvm3orc6shared19WrapperFunctionCallD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.l

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.lr.ph.i.i.i.i.i3, %.lr.ph.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIcE6resizeEm.exit
  %i.fe = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #17 ; 2 uses
  %i.ff = extractvalue { i32, ptr } %i.fe, 0
  %i.fg = extractvalue { i32, ptr } %i.fe, 1
  %i.fh = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !482 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !482
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.fi, align 1, !tbaa !487, !noalias !482
  store ptr @.str.8, ptr %3, align 8, !tbaa !268, !noalias !482
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.fj, align 8, !tbaa !490, !noalias !482
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.fh, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 %i.ff, ptr %i.fg) #17, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !482
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 8
  %i.fm = or i8 %i.fl, 1
  store i8 %i.fm, ptr %i.fk, align 8
  store ptr %i.fh, ptr %0, align 8, !tbaa !230, !alias.scope !491
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.fn = load ptr, ptr %4, align 8, !tbaa !464   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.a
  br i1 %i.fo, label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit6, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.fn) #17
  br label %_ZN4llvm11SmallVectorIcLj24EED2Ev.exit6

_ZN4llvm11SmallVectorIcLj24EED2Ev.exit6:          ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

declare void @_ZN4llvm3orc18createDWARFContextERNS_7jitlink9LinkGraphE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.189") align 8, ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494, !noalias !497 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !502, !noalias !497 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !503, !noalias !497 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !504, !noalias !497
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 14 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !97, !noalias !505 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !435

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97, !noalias !505 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !435

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !423, !noalias !508 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !424, !noalias !511 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !448, !noalias !511 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 76
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !434, !noalias !511 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !449, !noalias !511
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %.idx295 = shl nuw nsw i64 %i.al, 3             ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx295
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !97, !noalias !520 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader.a, label %.lr.ph307

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader.a, label %.lr.ph307, !llvm.loop !422

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !97, !noalias !520 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !422

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph307
  %3 = shl i64 %i.at, 8
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d, %._crit_edge.i.loopexit.i.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %3, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.d ], [ %i.av, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %4 = shl nuw nsw i32 %i.ax, 3
  %.idx294 = zext nneg i32 %4 to i64
  %5 = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i, %.idx294 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %5
  %6 = icmp eq i64 %5, %.idx295
  br i1 %6, label %.lr.ph.preheader.a, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.a
  %.in = add nuw nsw i64 %i.j, 31
  %7 = lshr i64 %.in, 5                           ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader.a ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !97
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %7
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %7
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !435

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !97 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !435

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !423, !noalias !523 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424, !noalias !526 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !448, !noalias !526 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !434, !noalias !526 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !449, !noalias !526
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !97, !noalias !535 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !422

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !97, !noalias !535 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !422

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %bb.a, %.lr.ph.i.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ay, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %2, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ad, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.af, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.z, %.lr.ph.i.a ], [ %i.k, %.lr.ph ], [ %i.k, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %.sroa.8183.0..sroa_idx, align 1
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 1, ptr %.sroa.8198.0..sroa_idx, align 1
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !453    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

_ZNKSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !538
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !538
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !322
  store ptr %i.u, ptr %i.s, align 8, !tbaa !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !538, !alias.scope !542, !noalias !539
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !538, !alias.scope !539, !noalias !542
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !322, !alias.scope !542, !noalias !539
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !322, !alias.scope !539, !noalias !542
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !542, !noalias !539
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !alias.scope !544
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !545

_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.an, %.lr.ph.i.i.i17 ], [ %i.af, %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  %.0911.i.i.i19 = phi ptr [ %i.am, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.ag = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !538, !alias.scope !549, !noalias !546
  store <2 x ptr> %i.ag, ptr %.012.i.i.i18, align 8, !tbaa !538, !alias.scope !546, !noalias !549
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !322, !alias.scope !549, !noalias !546
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !322, !alias.scope !546, !noalias !549
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !549, !noalias !546
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i64 40, i1 false), !alias.scope !551
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !545

_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.af, %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.an, %.lr.ph.i.i.i17 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4llvm3orc15VTuneMethodInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !318
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #20
  br label %_ZNSt12_Vector_baseIN4llvm3orc15VTuneMethodInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm3orc15VTuneMethodInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm3orc15VTuneMethodInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !453
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !315
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !318
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !351    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !343
  %i.s = load ptr, ptr %2, align 8, !tbaa !345    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !346  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !345
  %i.z = load i64, ptr %i.t, align 8, !tbaa !268
  store i64 %i.z, ptr %i.r, align 8, !tbaa !268
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !346
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !346
  store ptr %i.t, ptr %2, align 8, !tbaa !345
  store i64 0, ptr %i.ab, align 8, !tbaa !346
  store i8 0, ptr %i.t, align 8, !tbaa !268
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
end_hunk_0
