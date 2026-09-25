Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryFunction?download=true
inline.NumInlined: 14780
inline.NumDeleted: 6683
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4llvm4bolt14BinaryFunction14postProcessCFGEv:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm4bolt14BinaryFunction26removeConditionalTailCallsEv(ptr noundef nonnull align 8 dereferenceable(1360) %0)
  tail call void @_ZN4llvm4bolt14BinaryFunction18postProcessProfileEv(ptr noundef nonnull align 8 dereferenceable(1360) %0) #30
  tail call void @_ZN4llvm4bolt14BinaryFunction19postProcessBranchesEv(ptr noundef nonnull align 8 dereferenceable(1360) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !478
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !597
  call void @_ZN4llvm15SmallVectorImplISt4pairIjjEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.j = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairIjjELj0EEEEERS1_RT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.j) #30
  br label %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairIjjELj0EEEEERS1_RT_.exit

_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairIjjELj0EEEEERS1_RT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9EnableBATE, i64 120), align 8, !tbaa !661, !range !85, !noundef !86
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 317
  %i.o = load i8, ptr %i.n, align 1, !range !85
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 318
  %i.r = load i8, ptr %i.q, align 2, !range !85
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %or.cond.i, i1 true, i1 %i.s
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts10InstrumentE, i64 120), align 8, !range !85
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond19 = select i1 %i.t, i1 true, i1 %i.v
  br i1 %or.cond19, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairIjjELj0EEEEERS1_RT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = load i32, ptr %i.d, align 8, !tbaa !478  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %.not23 = icmp eq i32 %i.y, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph26, %._crit_edge
  %.sroa.012.024 = phi ptr [ %i.x, %.lr.ph26 ], [ %i.ag, %._crit_edge ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.012.024, align 8, !tbaa !575 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !588 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !588 ; 2 uses
  %.not2021 = icmp eq ptr %i.ad, %i.af
  br i1 %.not2021, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.aa
  br i1 %.not, label %.loopexit, label %bb.f

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.08.022 = phi ptr [ %i.al, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1568
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !589
  %i.ak = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder11clearOffsetERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.aj, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.08.022) #30 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.022, i64 128 ; 2 uses
  %.not20 = icmp eq ptr %i.al, %i.af
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %_ZN4llvm4bolt14BinaryFunction9clearListINS_11SmallVectorISt4pairIjjELj0EEEEERS1_RT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14BinaryFunction26removeConditionalTailCallsEv(ptr noundef nonnull align 8 dereferenceable(1360) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.std::reverse_iterator.1154", align 8 ; 4 uses
  %2 = alloca %"class.std::vector.1048", align 8  ; 8 uses
  %3 = alloca %"class.llvm::MCInst", align 8      ; 13 uses
  %4 = alloca %"class.std::unique_ptr.1053", align 8 ; 12 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !478
  %.not69 = icmp eq i32 %i.d, 0
  br i1 %.not69, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i.thread, label %.lr.ph

_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.f = call ptr @_ZN4llvm4bolt14BinaryFunction17insertBasicBlocksENS_16pointee_iteratorIPPNS0_16BinaryBasicBlockES3_EEOSt6vectorISt10unique_ptrIS3_St14default_deleteIS3_EESaISB_EEbbb(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EESaIS6_EED2Ev.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.s
  %i.r = ptrtoint ptr %i.im to i64
  store ptr %i.io, ptr %2, align 8
  %i.s = getelementptr inbounds i8, ptr %i.it, i64 -8
  %i.t = call ptr @_ZN4llvm4bolt14BinaryFunction17insertBasicBlocksENS_16pointee_iteratorIPPNS0_16BinaryBasicBlockES3_EEOSt6vectorISt10unique_ptrIS3_St14default_deleteIS3_EESaISB_EEbbb(ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %.not4.i.i.i = icmp eq ptr %i.io, %i.in
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.io, %._crit_edge ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !575 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm4bolt16BinaryBasicBlockEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm4bolt16BinaryBasicBlockEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZN4llvm4bolt16BinaryBasicBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.u) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 192) #31
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm4bolt16BinaryBasicBlockEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.in
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1968

_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %._crit_edge
  %.not.i.i1.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.w = ptrtoint ptr %i.io to i64
  %i.x = sub i64 %i.r, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.x) #31
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i.thread, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.im, %bb.s ] ; 7 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.in, %bb.s ] ; 5 uses
  %.sroa.058.070 = phi ptr [ %i.b, %.lr.ph ], [ %i.ip, %bb.s ] ; 2 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.io, %bb.s ] ; 13 uses
  %i.ab = load ptr, ptr %.sroa.058.070, align 8, !tbaa !575 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN4llvm4bolt16BinaryBasicBlock16getLastNonPseudoEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.1154") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %i.ab) #30
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !588, !noalias !1980
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %1, align 8, !tbaa !588 ; 6 uses
  %i.ad = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -128 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.ad, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1568
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !589
  %i.ai = call { i64, i8 } @_ZNK4llvm4bolt13MCPlusBuilder22getConditionalTailCallERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.ah, ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #30
  %i.aj = extractvalue { i64, i8 } %i.ai, 1
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.al = call noundef i32 @_ZNK4llvm4bolt16BinaryBasicBlock18getCFIStateAtInstrEPKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef nonnull %i.ae) #30
  %i.am = load i64, ptr %i.h, align 8, !tbaa !649
  %.not.i = icmp ne i64 %i.am, -1
  %i.an = load float, ptr %i.i, align 8
  %i.ao = fcmp oeq float %i.an, 1.000000e+00
  %i.ap = select i1 %.not.i, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.f, label %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit45

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1568
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !589 ; 2 uses
  %i.at = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.as, ptr nonnull @.str.186, i64 13) ; 3 uses
  %i.au = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.as, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i32 noundef %i.at) #30
  br i1 %i.au, label %bb.g, label %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -104
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !478 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.aw, -1         ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89 ; 4 uses
  %i.az = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !853
  %i.bc = icmp eq i8 %i.bb, 6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.be, null
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.g, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.az, %bb.g ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i.a, -1 ; 3 uses
  %i.bh = icmp sgt i64 %indvars.iv.i.i.i.a, 0
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !853
  %i.bk = icmp eq i8 %i.bj, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %i.bo, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.bp = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.g
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.g ], [ %i.bp, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.aw, %.01318.i.i.i.lcssa.i.i.i
  %i.bq = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.bq, %i.aw
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %6 = zext i32 %i.bq to i64                      ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.aw to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !473 ; 2 uses
  %i.bu = lshr i64 %i.bt, 56
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %.not.i3.i.i.i = icmp eq i32 %i.at, %i.bv
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.a, %.critedge.i.i.i.i ], [ %6, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.a = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i.a, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.i.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !473 ; 2 uses
  %i.bz = lshr i64 %i.by, 56
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %.not.i.i.i.i = icmp eq i32 %i.at, %i.ca
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.bt, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.by, %.critedge.i.i.i.i ]
  %i.cb = shl i64 %.lcssa.i.i.i, 8
  %i.cc = ashr exact i64 %i.cb, 8
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i = load i64, ptr %i.ce, align 8, !tbaa !472
  br label %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit

_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit: ; preds = %bb.f, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i
  %.0.i.i.sroa.speculated = phi i64 [ %.0.i.i.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1568
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !589 ; 2 uses
  %i.ci = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ch, ptr nonnull @.str.187, i64 15) ; 3 uses
  %i.cj = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ch, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i32 noundef %i.ci) #30
  br i1 %i.cj, label %bb.h, label %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit45

bb.h:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -104
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !478 ; 4 uses
  %.01317.i.i.i.i.i.i27 = add i32 %i.cl, -1       ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -112
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !89 ; 4 uses
  %i.co = zext nneg i32 %.01317.i.i.i.i.i.i27 to i64 ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !853
  %i.cr = icmp eq i8 %i.cq, 6
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = icmp eq ptr %i.ct, null
  %i.cv = select i1 %i.cr, i1 %i.cu, i1 false
  br i1 %i.cv, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i32, label %.backedge.i.i.i.i.i.i28

.backedge.i.i.i.i.i.i28:                          ; preds = %bb.h, %.backedge.i.i.i.i.i.i28
  %indvars.iv.i.i.i29.a = phi i64 [ %indvars.iv.next.i.i.i30, %.backedge.i.i.i.i.i.i28 ], [ %i.co, %bb.h ] ; 2 uses
  %indvars.iv.next.i.i.i30 = add nsw i64 %indvars.iv.i.i.i29.a, -1 ; 3 uses
  %i.cw = icmp sgt i64 %indvars.iv.i.i.i29.a, 0
  call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i30 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !853
  %i.cz = icmp eq i8 %i.cy, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp eq ptr %i.db, null
  %i.dd = select i1 %i.cz, i1 %i.dc, i1 false
  br i1 %i.dd, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i31, label %.backedge.i.i.i.i.i.i28

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i31: ; preds = %.backedge.i.i.i.i.i.i28
  %i.de = trunc nuw nsw i64 %indvars.iv.next.i.i.i30 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i32

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i32: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i31, %bb.h
  %.01318.i.i.i.lcssa.i.i.i33 = phi i32 [ %.01317.i.i.i.i.i.i27, %bb.h ], [ %i.de, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i31 ] ; 2 uses
  %.not.i.not.i.i.i.i34 = icmp ne i32 %i.cl, %.01318.i.i.i.lcssa.i.i.i33
  %i.df = add nuw i32 %.01318.i.i.i.lcssa.i.i.i33, 1 ; 2 uses
  %.not1324.i.i.i.i35 = icmp ult i32 %i.df, %i.cl
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i34)
  call void @llvm.assume(i1 %.not1324.i.i.i.i35)
  %7 = zext i32 %i.df to i64                      ; 2 uses
  %wide.trip.count.i.i.i.i36 = zext i32 %i.cl to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %7
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !473 ; 2 uses
  %i.dj = lshr i64 %i.di, 56
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %.not.i3.i.i.i37 = icmp eq i32 %i.ci, %i.dk
  br i1 %.not.i3.i.i.i37, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43, label %.critedge.i.i.i.i38

.critedge.i.i.i.i38:                              ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i32, %.critedge.i.i.i.i38
  %indvars.iv.i4.i.i.i39 = phi i64 [ %indvars.iv.next.i.i.i.i40, %.critedge.i.i.i.i38 ], [ %7, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i32 ]
  %indvars.iv.next.i.i.i.i40 = add nuw nsw i64 %indvars.iv.i4.i.i.i39, 1 ; 3 uses
  %exitcond.not.i.i.i.i41 = icmp ne i64 %indvars.iv.next.i.i.i.i40, %wide.trip.count.i.i.i.i36
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i41)
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !473 ; 2 uses
  %i.do = lshr i64 %i.dn, 56
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %.not.i.i.i.i42 = icmp eq i32 %i.ci, %i.dp
  br i1 %.not.i.i.i.i42, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43, label %.critedge.i.i.i.i38

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43: ; preds = %.critedge.i.i.i.i38, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i32
  %.lcssa.i.i.i44 = phi i64 [ %i.di, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i32 ], [ %i.dn, %.critedge.i.i.i.i38 ]
  %i.dq = shl i64 %.lcssa.i.i.i44, 8
  %i.dr = ashr exact i64 %i.dq, 8
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.0.i.i26.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43 = load i64, ptr %i.dt, align 8, !tbaa !472
  br label %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit45

_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit45: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43, %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit, %bb.e
  %.024 = phi i64 [ -1, %bb.e ], [ %.0.i.i.sroa.speculated, %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit ], [ %.0.i.i.sroa.speculated, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43 ] ; 2 uses
  %.0 = phi i64 [ -1, %bb.e ], [ 0, %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit ], [ %.0.i.i26.sroa.speculate.load._ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsImEERT_RKNS_6MCInstEj.exit.i.i43 ]
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1568
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !589 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 864
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(536) %i.dw, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i32 noundef 0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !89
  store i32 0, ptr %i.l, align 8, !tbaa !478
  store i32 6, ptr %i.m, align 4, !tbaa !597
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1568
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !589 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1368
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !801
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !77
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1392
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(536) %i.ed, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %i.ea, ptr noundef %i.ef) #30
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1568
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !589
  %i.em = call i64 @_ZNK4llvm4bolt13MCPlusBuilder9getOffsetERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.el, ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #30 ; 2 uses
  %i.en = and i64 %i.em, 4294967296
  %.not62 = icmp eq i64 %i.en, 0
  br i1 %.not62, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit45
  %.sroa.0.0.extract.trunc = trunc i64 %i.em to i32
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1568
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !589
  %i.er = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder9setOffsetERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.eq, ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef %.sroa.0.0.extract.trunc) #30 ; 0 uses
  %i.es = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1568
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !589
  %i.ev = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder11clearOffsetERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.eu, ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #30 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm4bolt13MCPlusBuilder24getAnnotationWithDefaultImEERKT_RKNS_6MCInstENS_9StringRefES5_.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1368
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !801
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i8 1, ptr %i.o, align 1, !tbaa !477
  store ptr @.str.188, ptr %5, align 8, !tbaa !473
  store i8 3, ptr %i.n, align 8, !tbaa !476
  %i.ez = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.ey, ptr noundef nonnull align 8 dereferenceable(34) %5) #30
  call void @_ZN4llvm4bolt14BinaryFunction16createBasicBlockEPNS_8MCSymbolE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1053") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1360) %0, ptr noundef %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fa = load ptr, ptr %4, align 8, !tbaa !575   ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !693
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  store i32 %i.fc, ptr %i.fd, align 8, !tbaa !693
  call void @_ZN4llvm4bolt16BinaryBasicBlock16adjustNumPseudosERKNS_6MCInstEi(ptr noundef nonnull align 8 dereferenceable(192) %i.fa, ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef 1) #30
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !681 ; 8 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !882
  %.not.i.i = icmp eq ptr %i.ff, %i.fh
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ff, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 16, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 3 uses
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !89
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 2 uses
  store i32 0, ptr %i.fk, align 8, !tbaa !478
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 28
  store i32 6, ptr %i.fl, align 4, !tbaa !597
  %i.fm = load i32, ptr %i.l, align 8, !tbaa !478 ; 5 uses
  %.not.i.i.i.i.i46 = icmp eq i32 %i.fm, 0
  %i.fn = icmp eq ptr %i.ff, %3
  %or.cond.i.i.i.i = or i1 %i.fn, %.not.i.i.i.i.i46
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fo = icmp ugt i32 %i.fm, 6
  br i1 %i.fo, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i: ; preds = %bb.l
  %i.fp = zext i32 %i.fm to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.fi, ptr noundef nonnull %i.fj, i64 noundef %i.fp, i64 noundef 16) #30
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !478 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.fi, align 8, !tbaa !89
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i, %bb.l
  %i.fq = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fj, %bb.l ]
  %i.fr = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.fm, %bb.l ]
  %i.fs = zext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.j, align 8, !tbaa !89
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.fs, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 8 %i.ft, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !478
  br label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i

_ZN4llvm6MCInstC2ERKS0_.exit.i.i:                 ; preds = %.sink.split.i.i.i.i.i, %bb.k
  %i.fu = load ptr, ptr %i.fe, align 8, !tbaa !681
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  store ptr %i.fv, ptr %i.fe, align 8, !tbaa !681
  br label %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit

bb.m:                                             ; preds = %bb.j
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(192) %i.fa, ptr %i.ff, ptr noundef nonnull align 8 dereferenceable(128) %3)
  br label %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit

_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit: ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit.i.i, %bb.m
  %i.fw = load ptr, ptr %4, align 8, !tbaa !575   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 172
  store i32 %i.al, ptr %i.fx, align 4, !tbaa !692
  call void @_ZN4llvm4bolt16BinaryBasicBlock12addSuccessorEPS1_mm(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, ptr noundef %i.fw, i64 noundef %.024, i64 noundef %.0) #30
  %i.fy = load ptr, ptr %4, align 8, !tbaa !575
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 152
  store i64 %.024, ptr %i.fz, align 8, !tbaa !691
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1568
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !589 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1088
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = call noundef zeroext i1 %i.gf(ptr noundef nonnull align 8 dereferenceable(536) %i.gc, ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #30 ; 0 uses
  %i.gh = load ptr, ptr %i.g, align 8, !tbaa !218, !nonnull !86, !align !219 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1568
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !589 ; 2 uses
  %i.gk = load ptr, ptr %4, align 8, !tbaa !575
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 112
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !579
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 1368
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !801
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !77
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1640
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(536) %i.gj, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, ptr noundef %i.gm, ptr noundef %i.go) #30
  %.not.i47 = icmp eq ptr %i.z, %i.y
  br i1 %.not.i47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit
  %i.gs = load i64, ptr %4, align 8, !tbaa !575
  store i64 %i.gs, ptr %i.z, align 8, !tbaa !575
  store ptr null, ptr %4, align 8, !tbaa !575
  %i.gt = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.p, align 8, !tbaa !927
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

bb.o:                                             ; preds = %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit
  %i.gu = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.gv = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 4 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775800
  br i1 %i.gx, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.273) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm4bolt16BinaryBasicBlockESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.gy = ashr exact i64 %i.gw, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = call i64 @llvm.umin.i64(i64 %i.gz, i64 1152921504606846975)
  %i.hc = select i1 %i.ha, i64 1152921504606846975, i64 %i.hb ; 3 uses
  %.not.i.i50 = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %.not.i.i50)
  %i.hd = shl nuw nsw i64 %i.hc, 3
  %i.he = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #33 ; 10 uses
end_hunk_0
