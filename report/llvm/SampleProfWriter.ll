Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfWriter?download=true
inline.NumInlined: 3857
inline.NumDeleted: 2168
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL14stabilizeTableIN4llvm10sampleprof10FunctionIdEjENS0_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS0_9MapVectorIS5_S6_NS0_8DenseMapIS5_jNS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_jEEEENS3_IS7_Lj0EEELj0EEE:bb.a
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %xtraiter = and i64 %i.av, 7                    ; 3 uses
  %i.aw = icmp samesign ult i64 %i.au, 7
  br i1 %i.aw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.av, 4611686018427387896
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.03.016.epil.init = phi ptr [ %i.ar, %.lr.ph.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.7.015.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.03.016.epil = phi ptr [ %i.ba, %.lr.ph.epil ], [ %.sroa.03.016.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.7.015.epil = phi i32 [ %i.az, %.lr.ph.epil ], [ %.sroa.7.015.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ax = load ptr, ptr %.sroa.03.016.epil, align 8, !tbaa !226
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 %.sroa.7.015.epil, ptr %i.ay, align 8, !tbaa !183
  %i.az = add nuw i32 %.sroa.7.015.epil, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.016.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !395

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof10FunctionIdEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit, %_ZN4llvm4sortIRNS_11SmallVectorIPSt4pairINS_10sampleprof10FunctionIdEjELj0EEEZL14stabilizeTableIS4_jENS1_IPS2_IT_T0_ELj0EEERNS_9MapVectorISA_SB_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS1_ISC_Lj0EEELj0EEEEUlPKSA_PKSB_E_EEvOSA_SB_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.03.016 = phi ptr [ %i.ar, %.lr.ph.preheader.new ], [ %i.cg, %.lr.ph ] ; 9 uses
  %.sroa.7.015 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.cf, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bb = load ptr, ptr %.sroa.03.016, align 8, !tbaa !226
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i32 %.sroa.7.015, ptr %i.bc, align 8, !tbaa !183
  %i.bd = or disjoint i32 %.sroa.7.015, 1
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !226
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 %i.bd, ptr %i.bg, align 8, !tbaa !183
  %i.bh = or disjoint i32 %.sroa.7.015, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !226
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i32 %i.bh, ptr %i.bk, align 8, !tbaa !183
  %i.bl = or disjoint i32 %.sroa.7.015, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !226
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.bl, ptr %i.bo, align 8, !tbaa !183
  %i.bp = or disjoint i32 %.sroa.7.015, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !226
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i32 %i.bp, ptr %i.bs, align 8, !tbaa !183
  %i.bt = or disjoint i32 %.sroa.7.015, 5
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !226
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i32 %i.bt, ptr %i.bw, align 8, !tbaa !183
  %i.bx = or disjoint i32 %.sroa.7.015, 6
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !226
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 %i.bx, ptr %i.ca, align 8, !tbaa !183
  %i.cb = or disjoint i32 %.sroa.7.015, 7
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !226
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i32 %i.cb, ptr %i.ce, align 8, !tbaa !183
  %i.cf = add nuw i32 %.sroa.7.015, 8             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.016, i64 64 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase21writeNameTableSectionERKNS0_16SampleProfileMapE(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.016.025 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %.not2126 = icmp eq ptr %.sroa.016.025, null
  br i1 %.not2126, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load i8, ptr %i.b, align 8, !tbaa !223, !range !50, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.016.027 = phi ptr [ %.sroa.016.0, %.lr.ph ], [ %.sroa.016.025, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.016.027, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.016.027, i64 32
  %i.g = load ptr, ptr %0, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f) #26
  tail call void @_ZN4llvm10sampleprof25SampleProfileWriterBinary8addNamesERKNS0_15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.e)
  %.sroa.016.0 = load ptr, ptr %.sroa.016.027, align 8, !tbaa !69 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.016.0, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !162  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.n, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not28 = icmp eq i32 %i.m, 0
  br i1 %.not28, label %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.critedge

bb.c:                                             ; preds = %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %.01329, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.c
  %.01329 = phi ptr [ %i.k, %.critedge.lr.ph ], [ %i.q, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = load ptr, ptr %.01329, align 8, !tbaa !227 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %.01329, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %.sroa.4.0.i = select i1 %.not.i, i64 0, i64 %i.t
  store ptr %i.r, ptr %2, align 8
  store i64 %.sroa.4.0.i, ptr %i.p, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.7, i64 8, i64 noundef 0) #26
  %.not22 = icmp eq i64 %i.u, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.not22, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load i32, ptr %i.x, align 8, !tbaa !162  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i = mul nuw nsw i64 %i.z, 40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.y, 0
  br i1 %.not10.i, label %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.011.i = phi ptr [ %i.ag, %bb.f ], [ %i.w, %bb.d ] ; 3 uses
  %i.ab = load i32, ptr %.011.i, align 8, !tbaa !219
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !96
  %i.af = or i64 %i.ae, 17179869184
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i, i64 40 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ag, %i.aa
  br i1 %.not.i14, label %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit, label %.lr.ph.i

_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit: ; preds = %bb.c, %bb.f, %bb.b, %bb.d, %._crit_edge
  %i.ah = load ptr, ptr %0, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call { i32, ptr } %i.aj(ptr noundef nonnull align 8 dereferenceable(584) %0) #26 ; 3 uses
  %i.al = extractvalue { i32, ptr } %i.ak, 0
  %i.am = extractvalue { i32, ptr } %i.ak, 1
  %.not23 = icmp eq i32 %i.al, 0
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #26
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit, %bb.g
  %.sroa.4.0 = phi ptr [ %i.am, %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14addSectionFlagINS0_17SecNameTableFlagsEEEvNS0_7SecTypeET_.exit ], [ %i.an, %bb.g ]
  %.fca.1.insert = insertvalue { i32, ptr } %i.ak, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10sampleprof25SampleProfileWriterBinary8addNamesERKNS0_15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(224) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca ptr, align 8                        ; 5 uses
  %3 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %4 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %5 = alloca %"struct.std::pair.124", align 8    ; 5 uses
  %6 = alloca ptr, align 8                        ; 5 uses
  %7 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %8 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %9 = alloca %"struct.std::pair.124", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.llvm::MD5", align 4        ; 5 uses
  %11 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %12 = alloca %"struct.std::pair.124", align 8   ; 5 uses
  %13 = alloca %"struct.std::pair.124", align 8   ; 10 uses
  %14 = alloca %"struct.std::pair.124", align 8   ; 10 uses
  %15 = alloca %"struct.std::pair.124", align 8   ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not215 = icmp eq ptr %i.c, %i.d
  br i1 %.not215, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.a
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.b

._crit_edge219:                                   ; preds = %._crit_edge, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.not197226 = icmp eq ptr %i.h, %i.i
  br i1 %.not197226, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %._crit_edge219
  %.sroa.0.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph218, %._crit_edge
  %.sroa.0162.0216 = phi ptr [ %i.c, %.lr.ph218 ], [ %i.al, %._crit_edge ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0162.0216, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !234, !noalias !434
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0162.0216, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !235, !noalias !434 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0162.0216, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !236, !noalias !434 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0162.0216, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !237, !noalias !434
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i32 %i.q to i64                     ; 4 uses
  %.idx322 = mul nuw nsw i64 %i.u, 24             ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.q, 0
  %or.cond = select i1 %i.t, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = add nuw nsw i64 %i.u, 31
  %i.w = lshr i64 %i.v, 5                         ; 2 uses
  %i.x = load i32, ptr %i.o, align 4, !tbaa !169, !noalias !435 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.z = icmp eq i64 %i.w, 1
  br i1 %i.z, label %._crit_edge, label %.lr.ph347

.lr.ph.i.i.i:                                     ; preds = %.lr.ph347
  %i.aa = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.w
  br i1 %i.ab, label %._crit_edge, label %.lr.ph347, !llvm.loop !8

.lr.ph347:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.ac = phi i64 [ %i.aa, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169, !noalias !435 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !8

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph347
  %i.ag = mul i64 %i.ac, 768
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit: ; preds = %bb.c, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ag, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.x, %bb.c ], [ %i.ae, %._crit_edge.i.loopexit.i.i ]
  %i.ah = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.ah, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.ai = add i64 %.012.lcssa.i.i.i, %.idx        ; 2 uses
  %.not201213 = icmp eq i64 %i.ai, %.idx322
  br i1 %.not201213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit
  %i.aj = add nuw nsw i64 %i.u, 31
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %.lr.ph.i.i.i, %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit, %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %bb.b, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv.exit
  %i.al = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0162.0216) #30 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.d
  br i1 %.not, label %._crit_edge219, label %bb.b

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit
  %.pn = phi i64 [ %i.ai, %.lr.ph ], [ %i.ev, %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit ] ; 2 uses
  %.sroa.0157.0214 = getelementptr i8, ptr %i.m, i64 %.pn ; 2 uses
  %.sroa.030.0.copyload = load ptr, ptr %.sroa.0157.0214, align 8, !tbaa !179 ; 3 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0157.0214, i64 8
  %.sroa.231.0.copyload = load i64, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !157 ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef nonnull align 8 dereferenceable(40) ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(89) %0) #26, !inline_history !238 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store ptr %.sroa.030.0.copyload, ptr %15, align 8, !tbaa !179
  store i64 %.sroa.231.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !tbaa !157
  store i32 0, ptr %i.e, align 8, !tbaa !183
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !181, !noalias !436 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !161, !noalias !436 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 20 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !160, !noalias !436 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit204, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = add i32 %i.au, -1                       ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.030.0.copyload, null
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !437
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %10) #26, !noalias !437
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %10, ptr nonnull %.sroa.030.0.copyload, i64 %.sroa.231.0.copyload) #26, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !437
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %10, ptr noundef nonnull align 1 dereferenceable(16) %11) #26, !noalias !437
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %11, align 8, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !437
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.sroa.231.0.copyload, %bb.e ]
  %i.ax = trunc i64 %.0.i.i.i to i32
  %i.ay = and i32 %i.aw, %i.ax                    ; 4 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bb = lshr i64 %i.az, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !169, !noalias !437
  %i.be = and i32 %i.ay, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.preheader, label %.loopexit204, !prof !239

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %i.bh = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !tbaa !228, !noalias !437 ; 3 uses
  %i.bi = load ptr, ptr %15, align 8
  %.fr = freeze ptr %i.bi                         ; 3 uses
  %.not.i.i.i.i116 = icmp eq ptr %.fr, null
  br i1 %.not.i.i.i.i116, label %.lr.ph.i.us, label %.lr.ph.i, !prof !240

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us
  %i.bj = phi ptr [ %i.bs, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us ], [ %i.ba, %.lr.ph.i.preheader ] ; 2 uses
  %.024.i.us = phi i32 [ %i.bq, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us ], [ %i.ay, %.lr.ph.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !228, !noalias !437
  %i.bm = icmp eq i64 %i.bh, %i.bl
  br i1 %i.bm, label %bb.g, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us, !prof !241

bb.g:                                             ; preds = %.lr.ph.i.us
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !227, !noalias !437
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us: ; preds = %bb.g, %.lr.ph.i.us
  %i.bp = add nuw i32 %.024.i.us, 1
  %i.bq = and i32 %i.bp, %i.aw                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.br ; 2 uses
  %i.bt = lshr i64 %i.br, 5
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !169, !noalias !437
  %i.bw = and i32 %i.bq, 31
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i1
  br i1 %i.by, label %.lr.ph.i.us, label %.loopexit204, !prof !242, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread
  %i.bz = phi ptr [ %i.cj, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ba, %.lr.ph.i.preheader ] ; 2 uses
  %.024.i = phi i32 [ %i.ch, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ], [ %i.ay, %.lr.ph.i.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !228, !noalias !437
  %i.cc = icmp eq i64 %i.bh, %i.cb
  br i1 %i.cc, label %bb.h, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, !prof !241

bb.h:                                             ; preds = %.lr.ph.i
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !227, !noalias !437 ; 3 uses
  %i.ce = icmp eq ptr %.fr, %i.cd
  br i1 %i.ce, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not9.i.i.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit, !prof !240

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit: ; preds = %bb.i
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %.fr, ptr nonnull %i.cd, i64 %i.bh), !noalias !437
  %i.cf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cf, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, !prof !243

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread: ; preds = %bb.i, %.lr.ph.i, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit
  %i.cg = add nuw i32 %.024.i, 1
  %i.ch = and i32 %i.cg, %i.aw                    ; 3 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ci ; 2 uses
  %i.ck = lshr i64 %i.ci, 5
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !169, !noalias !437
  %i.cn = and i32 %i.ch, 31
  %i.co = lshr i32 %i.cm, %i.cn
  %i.cp = trunc i32 %i.co to i1
  br i1 %i.cp, label %.lr.ph.i, label %.loopexit204, !prof !242, !llvm.loop !9

.loopexit204:                                     ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, %bb.d
  %.lcssa29.sink.i.ph = phi ptr [ %i.ba, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ null, %bb.d ], [ %i.bs, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread.us ], [ %i.cj, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !437
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !244, !noalias !437
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !159, !noalias !437
  %i.cs = load i32, ptr %i.at, align 4, !tbaa !160, !noalias !437 ; 2 uses
  %i.ct = shl i32 %i.cr, 2
  %i.cu = add i32 %i.ct, 4
  %i.cv = mul i32 %i.cs, 3
  %.not.i.i73 = icmp ult i32 %i.cu, %i.cv
  br i1 %.not.i.i73, label %bb.k, label %bb.j, !prof !187

bb.j:                                             ; preds = %.loopexit204
  %i.cw = shl i32 %i.cs, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i32 noundef %i.cw), !noalias !437
  %i.cx = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(20) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !437 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !244, !noalias !437
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit204
  %i.cy = phi ptr [ %.pre.i.i, %bb.j ], [ %.lcssa29.sink.i.ph, %.loopexit204 ] ; 3 uses
  %i.cz = load ptr, ptr %i.ar, align 8, !tbaa !161, !noalias !437
  %i.da = load ptr, ptr %i.ap, align 8, !tbaa !181, !noalias !437
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = sdiv exact i64 %i.dd, 24                ; 2 uses
  %i.df = trunc i64 %i.de to i32
  %i.dg = and i32 %i.df, 31
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = lshr i64 %i.de, 5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !169, !noalias !437
  %i.dl = or i32 %i.dh, %i.dk
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !169, !noalias !437
  %i.dm = load i32, ptr %i.cq, align 8, !tbaa !159, !noalias !437
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.cq, align 8, !tbaa !159, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(20) %15, i64 16, i1 false), !tbaa.struct !245, !noalias !437
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  store i32 0, ptr %i.do, align 8, !tbaa !169, !noalias !437
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !162 ; 3 uses
  store i32 %i.dr, ptr %i.do, align 8, !tbaa !183
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !168
  %.not.i.i.i.i = icmp ult i32 %i.dr, %i.dt
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit, !prof !187

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !245
  %i.du = load i32, ptr %i.e, align 8, !tbaa !169
  store i32 %i.du, ptr %i.f, align 8, !tbaa !183
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(20) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit

bb.l:                                             ; preds = %bb.k
  %i.dv = zext i32 %i.dr to i64
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dx, ptr noundef nonnull align 8 dereferenceable(20) %15, i64 16, i1 false), !tbaa.struct !245
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.e, align 8, !tbaa !169
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !183
  %i.ea = load i32, ptr %i.dq, align 8, !tbaa !162
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dq, align 8, !tbaa !162
  br label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit

_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit: ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit, %bb.h, %bb.g, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ec = add i64 %.pn, 24
  %i.ed = sdiv exact i64 %i.ec, 24                ; 3 uses
  %.not.i.i = icmp ult i64 %i.ed, %i.u
  br i1 %.not.i.i, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit
  %i.ee = lshr i64 %i.ed, 5                       ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !169
  %i.eh = trunc nuw i64 %i.ed to i32
  %i.ei = and i32 %i.eh, 31
  %i.ej = shl nsw i32 -1, %i.ei
  %i.ek = and i32 %i.eg, %i.ej                    ; 2 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %i.em = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %i.en = icmp eq i64 %i.em, %i.ak
  br i1 %i.en, label %._crit_edge, label %.lr.ph348

.lr.ph.i.i:                                       ; preds = %.lr.ph348
  %i.eo = add i64 %i.eq, 1                        ; 2 uses
  %i.ep = icmp eq i64 %i.eo, %i.ak
  br i1 %i.ep, label %._crit_edge, label %.lr.ph348, !llvm.loop !8

.lr.ph348:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.eq = phi i64 [ %i.eo, %.lr.ph.i.i ], [ %i.em, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !169 ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit, !llvm.loop !8

_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit: ; preds = %.lr.ph348, %bb.m
  %.012.lcssa.i.i = phi i64 [ %i.ee, %bb.m ], [ %i.eq, %.lr.ph348 ]
  %.0.lcssa.i.i = phi i32 [ %i.ek, %bb.m ], [ %i.es, %.lr.ph348 ]
  %i.eu = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 768
  %narrow324 = mul nuw nsw i32 %i.eu, 24
  %.idx323 = zext nneg i32 %narrow324 to i64
  %i.ev = add i64 %.idx.i.i, %.idx323             ; 2 uses
  %.not201 = icmp eq i64 %i.ev, %.idx322
  br i1 %.not201, label %._crit_edge, label %bb.d

._crit_edge230:                                   ; preds = %._crit_edge225, %._crit_edge219
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !214, !range !50, !noundef !51
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.w, label %.loopexit202

bb.n:                                             ; preds = %.lr.ph229, %._crit_edge225
  %.sroa.0150.0227 = phi ptr [ %i.h, %.lr.ph229 ], [ %i.fc, %._crit_edge225 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0150.0227, i64 64
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !213 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0150.0227, i64 48 ; 2 uses
  %.not200221 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not200221, label %._crit_edge225, label %.lr.ph224

._crit_edge225:                                   ; preds = %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48, %bb.n
  %i.fc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0150.0227) #30 ; 2 uses
  %.not197 = icmp eq ptr %i.fc, %i.i
  br i1 %.not197, label %._crit_edge230, label %bb.n

.lr.ph224:                                        ; preds = %bb.n, %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48
  %.sroa.0146.0222 = phi ptr [ %i.iv, %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48 ], [ %i.fa, %bb.n ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0146.0222, i64 48
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0146.0222, i64 64
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.fe, align 8, !tbaa !179 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0146.0222, i64 72
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !157 ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !43
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef nonnull align 8 dereferenceable(40) ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(89) %0) #26, !inline_history !238 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %.sroa.0.0.copyload.i.i, ptr %14, align 8, !tbaa !179
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i43, align 8, !tbaa !157
  store i32 0, ptr %i.j, align 8, !tbaa !183
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !181, !noalias !438 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !161, !noalias !438 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 20 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !160, !noalias !438 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.loopexit203, label %bb.o

bb.o:                                             ; preds = %.lr.ph224
  %i.fp = add i32 %i.fn, -1                       ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i98, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i100, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !439
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %7) #26, !noalias !439
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %7, ptr nonnull %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #26, !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !439
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %7, ptr noundef nonnull align 1 dereferenceable(16) %8) #26, !noalias !439
  %.0.copyload.i.i.i.i.i.i.i.i.i99 = load i64, ptr %8, align 8, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !439
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i100

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i100: ; preds = %bb.p, %bb.o
  %.0.i.i.i101 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i99, %bb.p ], [ %.sroa.2.0.copyload.i.i, %bb.o ]
  %i.fq = trunc i64 %.0.i.i.i101 to i32
  %i.fr = and i32 %i.fp, %i.fq                    ; 4 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.fs ; 3 uses
  %i.fu = lshr i64 %i.fs, 5
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !169, !noalias !439
  %i.fx = and i32 %i.fr, 31
  %i.fy = lshr i32 %i.fw, %i.fx
  %i.fz = trunc i32 %i.fy to i1
  br i1 %i.fz, label %.lr.ph.i104.preheader, label %.loopexit203, !prof !239

.lr.ph.i104.preheader:                            ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i100
  %i.ga = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i43, align 8, !tbaa !228, !noalias !439 ; 3 uses
  %i.gb = load ptr, ptr %14, align 8
  %.fr241 = freeze ptr %i.gb                      ; 3 uses
  %.not.i.i.i.i117 = icmp eq ptr %.fr241, null
  br i1 %.not.i.i.i.i117, label %.lr.ph.i104.us, label %.lr.ph.i104, !prof !240

.lr.ph.i104.us:                                   ; preds = %.lr.ph.i104.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us
  %i.gc = phi ptr [ %i.gl, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us ], [ %i.ft, %.lr.ph.i104.preheader ] ; 2 uses
  %.024.i105.us = phi i32 [ %i.gj, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us ], [ %i.fr, %.lr.ph.i104.preheader ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !228, !noalias !439
  %i.gf = icmp eq i64 %i.ga, %i.ge
  br i1 %i.gf, label %bb.q, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us, !prof !241

bb.q:                                             ; preds = %.lr.ph.i104.us
  %i.gg = load ptr, ptr %i.gc, align 8, !tbaa !227, !noalias !439
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us: ; preds = %bb.q, %.lr.ph.i104.us
  %i.gi = add nuw i32 %.024.i105.us, 1
  %i.gj = and i32 %i.gi, %i.fp                    ; 3 uses
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.gk ; 2 uses
  %i.gm = lshr i64 %i.gk, 5
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !169, !noalias !439
  %i.gp = and i32 %i.gj, 31
  %i.gq = lshr i32 %i.go, %i.gp
  %i.gr = trunc i32 %i.gq to i1
  br i1 %i.gr, label %.lr.ph.i104.us, label %.loopexit203, !prof !242, !llvm.loop !9

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread
  %i.gs = phi ptr [ %i.hc, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread ], [ %i.ft, %.lr.ph.i104.preheader ] ; 2 uses
  %.024.i105 = phi i32 [ %i.ha, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread ], [ %i.fr, %.lr.ph.i104.preheader ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !228, !noalias !439
  %i.gv = icmp eq i64 %i.ga, %i.gu
  br i1 %i.gv, label %bb.r, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread, !prof !241

bb.r:                                             ; preds = %.lr.ph.i104
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !227, !noalias !439 ; 3 uses
  %i.gx = icmp eq ptr %.fr241, %i.gw
  br i1 %i.gx, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not9.i.i.i.i118 = icmp eq ptr %i.gw, null
  br i1 %.not9.i.i.i.i118, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121, !prof !240

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121: ; preds = %bb.s
  %bcmp.i.i.i120 = call i32 @bcmp(ptr nonnull %.fr241, ptr nonnull %i.gw, i64 %i.ga), !noalias !439
  %i.gy = icmp eq i32 %bcmp.i.i.i120, 0
  br i1 %i.gy, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread, !prof !243

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread: ; preds = %bb.s, %.lr.ph.i104, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121
  %i.gz = add nuw i32 %.024.i105, 1
  %i.ha = and i32 %i.gz, %i.fp                    ; 3 uses
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.fj, i64 %i.hb ; 2 uses
  %i.hd = lshr i64 %i.hb, 5
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !169, !noalias !439
  %i.hg = and i32 %i.ha, 31
  %i.hh = lshr i32 %i.hf, %i.hg
  %i.hi = trunc i32 %i.hh to i1
  br i1 %i.hi, label %.lr.ph.i104, label %.loopexit203, !prof !242, !llvm.loop !9

.loopexit203:                                     ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i100, %.lr.ph224
  %.lcssa29.sink.i102.ph = phi ptr [ %i.ft, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i100 ], [ null, %.lr.ph224 ], [ %i.gl, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread.us ], [ %i.hc, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !439
  store ptr %.lcssa29.sink.i102.ph, ptr %6, align 8, !tbaa !244, !noalias !439
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !159, !noalias !439
  %i.hl = load i32, ptr %i.fm, align 4, !tbaa !160, !noalias !439 ; 2 uses
  %i.hm = shl i32 %i.hk, 2
  %i.hn = add i32 %i.hm, 4
  %i.ho = mul i32 %i.hl, 3
  %.not.i.i79 = icmp ult i32 %i.hn, %i.ho
  br i1 %.not.i.i79, label %bb.u, label %bb.t, !prof !187

bb.t:                                             ; preds = %.loopexit203
  %i.hp = shl i32 %i.hl, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fi, i32 noundef %i.hp), !noalias !439
  %i.hq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.fi, ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 8 dereferenceable(8) %6), !noalias !439 ; 0 uses
  %.pre.i.i80 = load ptr, ptr %6, align 8, !tbaa !244, !noalias !439
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit203
  %i.hr = phi ptr [ %.pre.i.i80, %bb.t ], [ %.lcssa29.sink.i102.ph, %.loopexit203 ] ; 3 uses
  %i.hs = load ptr, ptr %i.fk, align 8, !tbaa !161, !noalias !439
  %i.ht = load ptr, ptr %i.fi, align 8, !tbaa !181, !noalias !439
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = sdiv exact i64 %i.hw, 24                ; 2 uses
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = and i32 %i.hy, 31
  %i.ia = shl nuw i32 1, %i.hz
  %i.ib = lshr i64 %i.hx, 5
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.ib ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !169, !noalias !439
  %i.ie = or i32 %i.ia, %i.id
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !169, !noalias !439
  %i.if = load i32, ptr %i.hj, align 8, !tbaa !159, !noalias !439
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.hj, align 8, !tbaa !159, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(20) %14, i64 16, i1 false), !tbaa.struct !245, !noalias !439
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  store i32 0, ptr %i.ih, align 8, !tbaa !169, !noalias !439
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 3 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !162 ; 3 uses
  store i32 %i.ik, ptr %i.ih, align 8, !tbaa !183
  %i.il = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  %i.im = load i32, ptr %i.il, align 4, !tbaa !168
  %.not.i.i.i.i46 = icmp ult i32 %i.ik, %i.im
  br i1 %.not.i.i.i.i46, label %bb.v, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit78, !prof !187

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit78: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !245
  %i.in = load i32, ptr %i.j, align 8, !tbaa !169
  store i32 %i.in, ptr %i.k, align 8, !tbaa !183
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(20) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48

bb.v:                                             ; preds = %bb.u
  %i.io = zext i32 %i.ik to i64
  %i.ip = load ptr, ptr %i.ii, align 8, !tbaa !41
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.io ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.iq, ptr noundef nonnull align 8 dereferenceable(20) %14, i64 16, i1 false), !tbaa.struct !245
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load i32, ptr %i.j, align 8, !tbaa !169
  store i32 %i.is, ptr %i.ir, align 8, !tbaa !183
  %i.it = load i32, ptr %i.ij, align 8, !tbaa !162
  %i.iu = add i32 %i.it, 1
  store i32 %i.iu, ptr %i.ij, align 8, !tbaa !162
  br label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48

_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit48: ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit121, %bb.r, %bb.q, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit78, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN4llvm10sampleprof25SampleProfileWriterBinary8addNamesERKNS0_15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.fd)
  %i.iv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0146.0222) #30 ; 2 uses
  %.not200 = icmp eq ptr %i.iv, %i.fb
  br i1 %.not200, label %._crit_edge225, label %.lr.ph224

bb.w:                                             ; preds = %._crit_edge230
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !213, !noalias !440 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.not198237 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not198237, label %.loopexit202, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.w
  %.sroa.0.sroa.4.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph240, %._crit_edge236
  %.sroa.0136.0238 = phi ptr [ %i.ix, %.lr.ph240 ], [ %i.je, %._crit_edge236 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0136.0238, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !213, !noalias !441 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0136.0238, i64 48 ; 2 uses
  %.not199232 = icmp eq ptr %i.jc, %i.jd
  br i1 %.not199232, label %._crit_edge236, label %.lr.ph235

._crit_edge236:                                   ; preds = %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71, %bb.x
  %i.je = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0136.0238) #30 ; 2 uses
  %.not198 = icmp eq ptr %i.je, %i.iy
  br i1 %.not198, label %.loopexit202, label %bb.x

.lr.ph235:                                        ; preds = %bb.x, %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71
  %.sroa.0127.0233 = phi ptr [ %i.mw, %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71 ], [ %i.jc, %bb.x ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0127.0233, i64 32
  %.sroa.01.0.copyload = load ptr, ptr %i.jf, align 8, !tbaa !179 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0127.0233, i64 40
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !157 ; 3 uses
  %i.jg = load ptr, ptr %0, align 8, !tbaa !43
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 88
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = call noundef nonnull align 8 dereferenceable(40) ptr %i.ji(ptr noundef nonnull align 8 dereferenceable(89) %0) #26, !inline_history !238 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %.sroa.01.0.copyload, ptr %13, align 8, !tbaa !179
  store i64 %.sroa.4.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx.i66, align 8, !tbaa !157
  store i32 0, ptr %i.iz, align 8, !tbaa !183
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !181, !noalias !442 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !161, !noalias !442 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 20 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !160, !noalias !442 ; 2 uses
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %.loopexit.a, label %bb.y

bb.y:                                             ; preds = %.lr.ph235
  %i.jq = add i32 %i.jo, -1                       ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %.sroa.01.0.copyload, null
  br i1 %.not.i.i.i107, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i109, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !443
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %3) #26, !noalias !443
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr nonnull %.sroa.01.0.copyload, i64 %.sroa.4.0.copyload) #26, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !443
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr noundef nonnull align 1 dereferenceable(16) %4) #26, !noalias !443
  %.0.copyload.i.i.i.i.i.i.i.i.i108 = load i64, ptr %4, align 8, !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !443
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i109

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i109: ; preds = %bb.z, %bb.y
  %.0.i.i.i110 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i108, %bb.z ], [ %.sroa.4.0.copyload, %bb.y ]
  %i.jr = trunc i64 %.0.i.i.i110 to i32
  %i.js = and i32 %i.jq, %i.jr                    ; 4 uses
  %i.jt = zext i32 %i.js to i64                   ; 2 uses
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jk, i64 %i.jt ; 3 uses
  %i.jv = lshr i64 %i.jt, 5
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !169, !noalias !443
  %i.jy = and i32 %i.js, 31
  %i.jz = lshr i32 %i.jx, %i.jy
  %i.ka = trunc i32 %i.jz to i1
  br i1 %i.ka, label %.lr.ph.i113.preheader, label %.loopexit.a, !prof !239

.lr.ph.i113.preheader:                            ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i109
  %i.kb = load i64, ptr %.sroa.0.sroa.4.0..sroa_idx.i66, align 8, !tbaa !228, !noalias !443 ; 3 uses
  %i.kc = load ptr, ptr %13, align 8
  %.fr242 = freeze ptr %i.kc                      ; 3 uses
  %.not.i.i.i.i122 = icmp eq ptr %.fr242, null
  br i1 %.not.i.i.i.i122, label %.lr.ph.i113.us, label %.lr.ph.i113, !prof !240

.lr.ph.i113.us:                                   ; preds = %.lr.ph.i113.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us
  %i.kd = phi ptr [ %i.km, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us ], [ %i.ju, %.lr.ph.i113.preheader ] ; 2 uses
  %.024.i114.us = phi i32 [ %i.kk, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us ], [ %i.js, %.lr.ph.i113.preheader ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !228, !noalias !443
  %i.kg = icmp eq i64 %i.kb, %i.kf
  br i1 %i.kg, label %bb.aa, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us, !prof !241

bb.aa:                                            ; preds = %.lr.ph.i113.us
  %i.kh = load ptr, ptr %i.kd, align 8, !tbaa !227, !noalias !443
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us: ; preds = %bb.aa, %.lr.ph.i113.us
  %i.kj = add nuw i32 %.024.i114.us, 1
  %i.kk = and i32 %i.kj, %i.jq                    ; 3 uses
  %i.kl = zext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.jk, i64 %i.kl ; 2 uses
  %i.kn = lshr i64 %i.kl, 5
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !169, !noalias !443
  %i.kq = and i32 %i.kk, 31
  %i.kr = lshr i32 %i.kp, %i.kq
  %i.ks = trunc i32 %i.kr to i1
  br i1 %i.ks, label %.lr.ph.i113.us, label %.loopexit.a, !prof !242, !llvm.loop !9

.lr.ph.i113:                                      ; preds = %.lr.ph.i113.preheader, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread
  %i.kt = phi ptr [ %i.ld, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread ], [ %i.ju, %.lr.ph.i113.preheader ] ; 2 uses
  %.024.i114 = phi i32 [ %i.lb, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread ], [ %i.js, %.lr.ph.i113.preheader ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !228, !noalias !443
  %i.kw = icmp eq i64 %i.kb, %i.kv
  br i1 %i.kw, label %bb.ab, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread, !prof !241

bb.ab:                                            ; preds = %.lr.ph.i113
  %i.kx = load ptr, ptr %i.kt, align 8, !tbaa !227, !noalias !443 ; 3 uses
  %i.ky = icmp eq ptr %.fr242, %i.kx
  br i1 %i.ky, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not9.i.i.i.i123 = icmp eq ptr %i.kx, null
  br i1 %.not9.i.i.i.i123, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126, !prof !240

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126: ; preds = %bb.ac
  %bcmp.i.i.i125 = call i32 @bcmp(ptr nonnull %.fr242, ptr nonnull %i.kx, i64 %i.kb), !noalias !443
  %i.kz = icmp eq i32 %bcmp.i.i.i125, 0
  br i1 %i.kz, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread, !prof !243

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread: ; preds = %bb.ac, %.lr.ph.i113, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126
  %i.la = add nuw i32 %.024.i114, 1
  %i.lb = and i32 %i.la, %i.jq                    ; 3 uses
  %i.lc = zext i32 %i.lb to i64                   ; 2 uses
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.jk, i64 %i.lc ; 2 uses
  %i.le = lshr i64 %i.lc, 5
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !169, !noalias !443
  %i.lh = and i32 %i.lb, 31
  %i.li = lshr i32 %i.lg, %i.lh
  %i.lj = trunc i32 %i.li to i1
  br i1 %i.lj, label %.lr.ph.i113, label %.loopexit.a, !prof !242, !llvm.loop !9

.loopexit.a:                                      ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i109, %.lr.ph235
  %.lcssa29.sink.i111.ph = phi ptr [ %i.ju, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i109 ], [ null, %.lr.ph235 ], [ %i.km, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread.us ], [ %i.ld, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !443
  store ptr %.lcssa29.sink.i111.ph, ptr %2, align 8, !tbaa !244, !noalias !443
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 3 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !159, !noalias !443
  %i.lm = load i32, ptr %i.jn, align 4, !tbaa !160, !noalias !443 ; 2 uses
  %i.ln = shl i32 %i.ll, 2
  %i.lo = add i32 %i.ln, 4
  %i.lp = mul i32 %i.lm, 3
  %.not.i.i90 = icmp ult i32 %i.lo, %i.lp
  br i1 %.not.i.i90, label %bb.ae, label %bb.ad, !prof !187

bb.ad:                                            ; preds = %.loopexit.a
  %i.lq = shl i32 %i.lm, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 8 dereferenceable(40) %i.jj, i32 noundef %i.lq), !noalias !443
  %i.lr = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.jj, ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !443 ; 0 uses
  %.pre.i.i91 = load ptr, ptr %2, align 8, !tbaa !244, !noalias !443
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit.a
  %i.ls = phi ptr [ %.pre.i.i91, %bb.ad ], [ %.lcssa29.sink.i111.ph, %.loopexit.a ] ; 3 uses
  %i.lt = load ptr, ptr %i.jl, align 8, !tbaa !161, !noalias !443
  %i.lu = load ptr, ptr %i.jj, align 8, !tbaa !181, !noalias !443
  %i.lv = ptrtoint ptr %i.ls to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = sdiv exact i64 %i.lx, 24                ; 2 uses
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = and i32 %i.lz, 31
  %i.mb = shl nuw i32 1, %i.ma
  %i.mc = lshr i64 %i.ly, 5
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.mc ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !169, !noalias !443
  %i.mf = or i32 %i.mb, %i.me
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !169, !noalias !443
  %i.mg = load i32, ptr %i.lk, align 8, !tbaa !159, !noalias !443
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr %i.lk, align 8, !tbaa !159, !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 8 dereferenceable(20) %13, i64 16, i1 false), !tbaa.struct !245, !noalias !443
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 2 uses
  store i32 0, ptr %i.mi, align 8, !tbaa !169, !noalias !443
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 3 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !162 ; 3 uses
  store i32 %i.ml, ptr %i.mi, align 8, !tbaa !183
  %i.mm = getelementptr inbounds nuw i8, ptr %i.jj, i64 36
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !168
  %.not.i.i.i.i69 = icmp ult i32 %i.ml, %i.mn
  br i1 %.not.i.i.i.i69, label %bb.af, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit89, !prof !187

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit89: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !245
  %i.mo = load i32, ptr %i.iz, align 8, !tbaa !169
  store i32 %i.mo, ptr %i.ja, align 8, !tbaa !183
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, ptr noundef nonnull align 8 dereferenceable(20) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71

bb.af:                                            ; preds = %bb.ae
  %i.mp = zext i32 %i.ml to i64
  %i.mq = load ptr, ptr %i.mj, align 8, !tbaa !41
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %i.mp ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.mr, ptr noundef nonnull align 8 dereferenceable(20) %13, i64 16, i1 false), !tbaa.struct !245
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load i32, ptr %i.iz, align 8, !tbaa !169
  store i32 %i.mt, ptr %i.ms, align 8, !tbaa !183
  %i.mu = load i32, ptr %i.mk, align 8, !tbaa !162
  %i.mv = add i32 %i.mu, 1
  store i32 %i.mv, ptr %i.mk, align 8, !tbaa !162
  br label %_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71

_ZN4llvm10sampleprof25SampleProfileWriterBinary7addNameENS0_10FunctionIdE.exit71: ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_.exit126, %bb.ab, %bb.aa, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_.exit89, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.mw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0127.0233) #30 ; 2 uses
  %.not199 = icmp eq ptr %i.mw, %i.jd
  br i1 %.not199, label %._crit_edge236, label %.lr.ph235

.loopexit202:                                     ; preds = %._crit_edge236, %bb.w, %._crit_edge230
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase23writeCSNameTableSectionEv(ptr noundef nonnull align 8 dereferenceable(584) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %2 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.127", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.a
  %.019.i = phi i64 [ %i.e, %bb.a ], [ %i.h, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %i.h = lshr i64 %.019.i, 7                      ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0               ; 2 uses
  %i.i = trunc i64 %.019.i to i8                  ; 2 uses
  %i.j = or i8 %i.i, -128
  %.0.i = select i1 %.not.i.not, i8 %i.i, i8 %i.j ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !92   ; 3 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !102
  %.not.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 noundef zeroext %.0.i) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.n, ptr %i.f, align 8, !tbaa !92
  store i8 %.0.i, ptr %i.k, align 1, !tbaa !103
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.d, %bb.c
  br i1 %.not.i.not, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit, label %bb.b, !llvm.loop !4

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.val = load ptr, ptr %i.o, align 8, !tbaa !41, !noalias !468 ; 3 uses
  %.val37 = load i32, ptr %i.c, align 8, !tbaa !162, !noalias !468 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !41, !alias.scope !469
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !162, !alias.scope !469
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !168, !alias.scope !469
  %.not.i.i38 = icmp eq i32 %.val37, 0
  br i1 %.not.i.i38, label %_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i, label %_ZN4llvm15SmallVectorImplIPSt4pairINS_10sampleprof13SampleContextEjEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIPSt4pairINS_10sampleprof13SampleContextEjEE7reserveEm.exit.i.i.i: ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit
  %i.s = zext i32 %.val37 to i64                  ; 5 uses
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.p, i64 noundef %i.s, i64 noundef 8) #26
  %.pre.i.i.i = load i32, ptr %i.q, align 8, !tbaa !162, !alias.scope !469 ; 3 uses
  %i.t = zext i32 %.pre.i.i.i to i64
  %i.u = load ptr, ptr %3, align 8, !tbaa !41, !alias.scope !469 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t ; 3 uses
  %min.iters.check = icmp ult i32 %.val37, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm15SmallVectorImplIPSt4pairINS_10sampleprof13SampleContextEjEE7reserveEm.exit.i.i.i
  %n.vec = and i64 %i.s, 4294967292               ; 4 uses
  %i.w = and i64 %i.s, 3
  %i.x = shl nuw nsw i64 %n.vec, 3
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x
  %i.z = mul nuw nsw i64 %n.vec, 48
  %i.aa = getelementptr i8, ptr %.val, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.val, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 48> ; 2 uses
  %step.add221 = getelementptr i8, <2 x ptr> %vector.gep, i64 96
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %vector.gep, ptr %next.gep, align 8, !tbaa !247
  store <2 x ptr> %step.add221, ptr %i.ac, align 8, !tbaa !247
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 192
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN4llvm15SmallVectorImplIPSt4pairINS_10sampleprof13SampleContextEjEE7reserveEm.exit.i.i.i, %middle.block
  %.010.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.s, %_ZN4llvm15SmallVectorImplIPSt4pairINS_10sampleprof13SampleContextEjEE7reserveEm.exit.i.i.i ], [ %i.w, %middle.block ]
  %.049.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %_ZN4llvm15SmallVectorImplIPSt4pairINS_10sampleprof13SampleContextEjEE7reserveEm.exit.i.i.i ], [ %i.y, %middle.block ]
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.val, %_ZN4llvm15SmallVectorImplIPSt4pairINS_10sampleprof13SampleContextEjEE7reserveEm.exit.i.i.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.049.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, ptr %.049.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !247
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ag = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i, !llvm.loop !449

_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit
  %.val.i = phi ptr [ %i.p, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit ], [ %i.u, %middle.block ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ai = phi i32 [ 0, %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit ], [ %.pre.i.i.i, %middle.block ], [ %.pre.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = add i32 %i.ai, %.val37                  ; 4 uses
  store i32 %i.aj, ptr %i.q, align 8, !tbaa !162, !alias.scope !469
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ak, 3
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i._ZL14stabilizeTableIN4llvm10sampleprof13SampleContextEjENS0_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS0_9MapVectorIS5_S6_NS0_8DenseMapIS5_jNS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_jEEEENS3_IS7_Lj0EEELj0EEE.exit_crit_edge, label %bb.e

_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i._ZL14stabilizeTableIN4llvm10sampleprof13SampleContextEjENS0_11SmallVectorIPSt4pairIT_T0_ELj0EEERNS0_9MapVectorIS5_S6_NS0_8DenseMapIS5_jNS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_jEEEENS3_IS7_Lj0EEELj0EEE.exit_crit_edge: ; preds = %_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !41
  br label %.critedge36

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPSt4pairINS_10sampleprof13SampleContextEjELj0EEC2INS_16pointer_iteratorIS5_S5_EEEERKNS_14iterator_rangeIT_EE.exit.i
  %i.am = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = xor i64 %i.an, 126
  call fastcc void @_ZSt16__introsort_loopIPPSt4pairIN4llvm10sampleprof13SampleContextEjElN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SD_T1_(ptr noundef %.val.i, ptr noundef nonnull %i.al, i64 noundef %i.ao)
  %i.ap = icmp ugt i32 %i.aj, 16
  br i1 %i.ap, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 128 ; 2 uses
  call fastcc void @_ZSt16__insertion_sortIPPSt4pairIN4llvm10sampleprof13SampleContextEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SC_SD_(ptr noundef nonnull %.val.i, ptr noundef nonnull %i.aq)
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZSt25__unguarded_linear_insertIPPSt4pairIN4llvm10sampleprof13SampleContextEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_.exit.i.i.i.i.i.i.i, %bb.f
  %.032.i.i.i.i.i.i.i = phi ptr [ %i.cy, %_ZSt25__unguarded_linear_insertIPPSt4pairIN4llvm10sampleprof13SampleContextEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_.exit.i.i.i.i.i.i.i ], [ %i.aq, %bb.f ] ; 6 uses
  %i.ar = load ptr, ptr %.032.i.i.i.i.i.i.i, align 8, !tbaa !247 ; 7 uses
  %.010.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.032.i.i.i.i.i.i.i, i64 -8 ; 4 uses
  %.0.val11.i.i.i.i.i.i.i.i = load ptr, ptr %.010.i.i.i.i.i.i.i.i, align 8, !tbaa !247
  %i.as = call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %.0.val11.i.i.i.i.i.i.i.i)
  br i1 %i.as, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPPSt4pairIN4llvm10sampleprof13SampleContextEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL14stabilizeTableIS3_jENS1_11SmallVectorIPS0_IT_T0_ELj0EEERNS1_9MapVectorISC_SD_NS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENSB_ISE_Lj0EEELj0EEEEUlPKSC_PKSD_E_EEEvSC_SD_.exit.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !175
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.au           ; 3 uses
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.pre55.i.i.i.i.i.i.i = load ptr, ptr %.010.i.i.i.i.i.i.i.i, align 8, !tbaa !247 ; 2 uses
  br i1 %.not38.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i.i.backedge
  %i.ay = phi ptr [ %.0.val.i.us.i.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i.i.backedge ], [ %.pre55.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %.013.i.us.i.i.i.i.i.i.i = phi ptr [ %.0.i.us.i.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i.i.backedge ], [ %.010.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %.0912.i.us.i.i.i.i.i.i.i = phi ptr [ %.013.i.us.i.i.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i.i.i.backedge ], [ %.032.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  store ptr %i.ay, ptr %.0912.i.us.i.i.i.i.i.i.i, align 8, !tbaa !247
  %.0.i.us.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.us.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.0.val.i.us.i.i.i.i.i.i.i = load ptr, ptr %.0.i.us.i.i.i.i.i.i.i, align 8, !tbaa !247 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val.i.us.i.i.i.i.i.i.i, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !175
  %.not.i.us.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.us.i.i.i.i.i.i.i, label %bb.g, label %.lr.ph.i.us.i.i.i.i.i.i.i.backedge

bb.g:                                             ; preds = %.lr.ph.i.us.i.i.i.i.i.i.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !227 ; 3 uses
  %i.bc = load ptr, ptr %.0.val.i.us.i.i.i.i.i.i.i, align 8, !tbaa !227 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.val.i.us.i.i.i.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !157 ; 2 uses
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !157 ; 2 uses
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bf)
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_lET_SI_SI_SI_T1_SJ_T0_SJ_:bb.a
bb.k:                                             ; preds = %_ZSt13move_backwardIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8, !tbaa !284
  store ptr %i.r, ptr %0, align 8, !tbaa !284
  br label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit36

_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.p, label %bb.q, !prof !187

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr %0, align 8, !tbaa !284
  store ptr %i.y, ptr %5, align 8, !tbaa !284
  br label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit37

_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !187

bb.s:                                             ; preds = %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit38

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %1, align 8, !tbaa !284
  store ptr %i.ad, ptr %0, align 8, !tbaa !284
  br label %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit38

_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !187

bb.v:                                             ; preds = %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit38
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit38
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit39

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !284
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !284
  br label %_ZSt13move_backwardIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit39

_ZSt13move_backwardIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call noundef ptr @_ZNSt3_V28__rotateIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS3_10FunctionIdENS3_15FunctionSamplesESt4lessIS7_ESaIS1_IKS7_S8_EEEEEET_SJ_SJ_SJ_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit39, %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit36
  %.0 = phi ptr [ %i.s, %_ZSt4moveIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit36 ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPPKSt4pairIKN4llvm10sampleprof12LineLocationESt3mapINS2_10FunctionIdENS2_15FunctionSamplesESt4lessIS6_ESaIS0_IKS6_S7_EEEESH_ET0_T_SJ_SI_.exit39 ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPKS8_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !181, !noalias !821
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161, !noalias !821 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !160, !noalias !821 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !228  ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #26
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %i.h, i64 %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #26
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.k = trunc i64 %.0.i.i to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %i.m, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !169
  %i.q = and i32 %i.l, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph, label %.thread, !prof !239

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, %bb.d
  %i.t = phi i64 [ %i.y, %bb.d ], [ %i.m, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ]
  %.017 = phi i32 [ %i.x, %bb.d ], [ %i.l, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  br i1 %i.v, label %.thread, label %bb.d, !prof !187

bb.d:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.017, 1
  %i.x = and i32 %i.w, %i.g                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !169
  %i.ac = and i32 %i.x, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !242

.thread:                                          ; preds = %bb.d, %.lr.ph, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ], [ null, %bb.d ], [ %i.u, %.lr.ph ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !228
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !227    ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !227    ; 3 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq ptr %i.f, null
  %.not9.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i = or i1 %.not.i.i.i, %.not9.i.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i.i, 0
  br label %_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit

_ZN4llvm10sampleprofeqERKNS0_10FunctionIdES3_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.d ], [ false, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %4 = load ptr, ptr %0, align 8, !tbaa !181, !noalias !826 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !161, !noalias !826 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %7 = load i32, ptr %6, align 4, !tbaa !160, !noalias !826 ; 2 uses
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %bb.b, label %9

9:                                                ; preds = %bb.a
  %10 = add i32 %7, -1                            ; 2 uses
  %11 = load ptr, ptr %1, align 8, !tbaa !227     ; 2 uses
  %.not.i.i.i = icmp eq ptr %11, null
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !228    ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #26
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %11, i64 %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #26
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i: ; preds = %14, %9
  %.0.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i, %14 ], [ %13, %9 ]
  %15 = trunc i64 %.0.i.i.i to i32
  %16 = and i32 %10, %15                          ; 3 uses
  %17 = zext i32 %16 to i64                       ; 2 uses
  %18 = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %17 ; 2 uses
  %19 = lshr i64 %17, 5
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !169
  %22 = and i32 %16, 31
  %23 = lshr i32 %21, %22
  %24 = trunc i32 %23 to i1
  br i1 %24, label %.lr.ph.i, label %bb.b, !prof !239

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, %27
  %25 = phi ptr [ %31, %27 ], [ %18, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ] ; 2 uses
  %.024.i = phi i32 [ %29, %27 ], [ %16, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ]
  %26 = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %25)
  br i1 %26, label %bb.d, label %27, !prof !187

27:                                               ; preds = %.lr.ph.i
  %28 = add nuw i32 %.024.i, 1
  %29 = and i32 %28, %10                          ; 3 uses
  %30 = zext i32 %29 to i64                       ; 2 uses
  %31 = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %30 ; 2 uses
  %32 = lshr i64 %30, 5
  %33 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !169
  %35 = and i32 %29, 31
  %36 = lshr i32 %34, %35
  %37 = trunc i32 %36 to i1
  br i1 %37, label %.lr.ph.i, label %bb.b, !prof !242, !llvm.loop !9

bb.b:                                             ; preds = %27, %bb.a, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %.lcssa29.sink.i.ph = phi ptr [ %18, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ null, %bb.a ], [ %31, %27 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !244
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !159
  %i.e = load i32, ptr %6, align 4, !tbaa !160    ; 2 uses
  %i.f = shl i32 %i.d, 2
  %i.g = add i32 %i.f, 4
  %i.h = mul i32 %i.e, 3
  %.not.i = icmp ult i32 %i.g, %i.h
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.c, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.i = shl i32 %i.e, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.i)
  %i.j = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !244
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %.pre.i, %bb.c ], [ %.lcssa29.sink.i.ph, %bb.b ] ; 4 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !161
  %i.m = load ptr, ptr %0, align 8, !tbaa !181
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24                  ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 31
  %i.t = shl nuw i32 1, %i.s
  %i.u = lshr i64 %i.q, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !169
  %i.x = or i32 %i.t, %i.w
  store i32 %i.x, ptr %i.v, align 4, !tbaa !169
  %i.y = load i32, ptr %i.c, align 8, !tbaa !159
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !245
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !169
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.k, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %25, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %4 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !181, !noalias !831 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161, !noalias !831 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !160, !noalias !831 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !228  ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %3) #26
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr nonnull %i.h, i64 %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr noundef nonnull align 1 dereferenceable(16) %4) #26
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.k = trunc i64 %.0.i.i to i32
  %i.l = and i32 %i.g, %i.k                       ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = lshr i64 %i.m, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !169
  %i.r = and i32 %i.l, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph, label %.thread, !prof !239

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, %bb.d
  %i.u = phi ptr [ %i.z, %bb.d ], [ %i.n, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ] ; 2 uses
  %.024 = phi i32 [ %i.x, %bb.d ], [ %i.l, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ]
  %i.v = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE7isEqualERKS2_S5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.u) ; 3 uses
  br i1 %i.v, label %.thread, label %bb.d, !prof !187

bb.d:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.024, 1
  %i.x = and i32 %i.w, %i.g                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !169
  %i.ad = and i32 %i.x, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !242, !llvm.loop !9

.thread:                                          ; preds = %.lr.ph, %bb.d, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit, %bb.a
  %.lcssa29.sink = phi ptr [ %i.n, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ], [ null, %bb.a ], [ %i.z, %bb.d ], [ %i.u, %.lr.ph ]
  %.2 = phi i1 [ false, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit ], [ false, %bb.a ], [ %i.v, %bb.d ], [ %i.v, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !244
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !160
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !181
  store ptr %i.y, ptr %i.q, align 8, !tbaa !161
  store i32 0, ptr %i.p, align 16, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !332
  %i.aa = load ptr, ptr %0, align 8, !tbaa !244
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !332
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !332
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !332
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !169
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !169
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !169
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !169
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !160  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !181
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !160
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !169  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !227  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !228  ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #26
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %i.v, i64 %i.x) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #26
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i

_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i, %bb.c ], [ %i.x, %bb.b ]
  %i.y = trunc i64 %.0.i.i.i to i32
  %i.z = and i32 %i.k, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !169
  %i.ae = and i32 %i.z, 31                        ; 2 uses
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i, %.lr.ph.i
  %.014.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.z, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ]
  %i.ah = add i32 %.014.i, 1
  %i.ai = and i32 %i.ah, %i.k                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !169
  %i.an = and i32 %i.ai, 31                       ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !832

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i
  %.lcssa12.i = phi i64 [ %i.aa, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ %i.aj, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ab, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ %i.ak, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ae, %_ZN4llvm12DenseMapInfoINS_10sampleprof10FunctionIdEvE12getHashValueERKS2_.exit.i ], [ %i.an, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !245
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !169
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !169
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !169
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !169
  %i.ay = add i32 %.0.i19, -1
  %i.az = and i32 %i.ay, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !833

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !834

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !160
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !159
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !181
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #26
  store i32 0, ptr %i.d, align 4, !tbaa !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.124", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load i64, ptr %2, align 8, !tbaa !289
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %3, align 8, !tbaa !290
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !245
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load i32, ptr %i.d, align 4, !tbaa !169
  store i32 %i.f, ptr %i.e, align 8, !tbaa !183
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !168
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !187

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(20) %4)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !162
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE9push_backERKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !162
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !162
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE9push_backERKS4_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE9push_backERKS4_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.q = load ptr, ptr %0, align 8, !tbaa !41
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24
  ret ptr %i.t
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.124", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  %i.g = load i32, ptr %i.a, align 8, !tbaa !162
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !162
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(44) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESA_IJOjEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.94", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load i64, ptr %2, align 8, !tbaa !186
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %3, align 8, !tbaa !290
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !tbaa.struct !189
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = load i32, ptr %i.d, align 4, !tbaa !169
  store i32 %i.f, ptr %i.e, align 8, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !168
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !187

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEjELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(44) %4)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !162
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEjELb1EE9push_backERKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !162
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !162
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEjELb1EE9push_backERKS4_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEjELb1EE9push_backERKS4_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.q = load ptr, ptr %0, align 8, !tbaa !41
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -48
  ret ptr %i.t
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof13SampleContextEjELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.94", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 48) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  %i.g = load i32, ptr %i.a, align 8, !tbaa !162
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !162
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_SampleProfWriter.cpp() #23 section ".text.startup" {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 16), ptr noundef nonnull align 8 dereferenceable(280) @constinit, i64 280, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 16), ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, align 8, !tbaa !41
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 12), align 4, !tbaa !168
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 8), align 8, !tbaa !162
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 352), ptr noundef nonnull align 8 dereferenceable(320) @constinit.1, i64 320, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 352), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 336), align 8, !tbaa !41
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 348), align 4, !tbaa !168
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, i64 344), align 8, !tbaa !162
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt5arrayIN4llvm11SmallVectorINS0_10sampleprof16SecHdrTableEntryELj8EEELm2EED2Ev, ptr nonnull @_ZN4llvm10sampleprofL23ExtBinaryHdrLayoutTableE, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL28ExtBinaryWriteVTableTypeProf, i32 noundef 0, i32 noundef 0) #26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 120), align 8, !tbaa !274
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 128), align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL28ExtBinaryWriteVTableTypeProf, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 144), align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28ExtBinaryWriteVTableTypeProf, ptr nonnull align 1 dereferenceable(33) @.str, i64 32) #26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 120), align 8, !tbaa !274
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 137), align 1, !tbaa !330
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 136), align 8, !tbaa !835
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 10), align 2
  %i.c = and i16 %i.b, -97
  %i.d = or disjoint i16 %i.c, 32
  store i16 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 10), align 2
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 32), align 8, !tbaa !179
  store i64 61, ptr getelementptr inbounds nuw (i8, ptr @_ZL28ExtBinaryWriteVTableTypeProf, i64 40), align 8, !tbaa !157
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL28ExtBinaryWriteVTableTypeProf) #26
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL28ExtBinaryWriteVTableTypeProf, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL16RequestedVersion, i32 noundef 0, i32 noundef 0) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueImEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 128), align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optImLb0ENS0_6parserImEEEE, i64 16), ptr @_ZL16RequestedVersion, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserImEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 152), align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZL16RequestedVersion, ptr nonnull align 1 dereferenceable(30) @.str.5, i64 29) #26
  store i64 103, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 120), align 8, !tbaa !297
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 144), align 8, !tbaa !302
  store i64 103, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 136), align 8, !tbaa !836
  %i.f = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 10), align 2
  %i.g = and i16 %i.f, -97
  %i.h = or disjoint i16 %i.g, 32
  store i16 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 10), align 2
  store ptr @.str.6, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 32), align 8, !tbaa !179
  store i64 54, ptr getelementptr inbounds nuw (i8, ptr @_ZL16RequestedVersion, i64 40), align 8, !tbaa !157
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZL16RequestedVersion) #26
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED2Ev, ptr nonnull @_ZL16RequestedVersion, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!31, !32}
!llvm.ident = !{!33}
!llvm.errno.tbaa = !{!38}

!0 = distinct !{null}
!1 = distinct !{!1, !72}
!2 = distinct !{null, null}
!3 = distinct !{null}
!4 = distinct !{!4, !72}
!5 = distinct !{!5, i1 true, !"_ZN4llvm18make_pointer_rangeIRNS_9MapVectorINS_10sampleprof10FunctionIdEjNS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_jELj0EEELj0EEEPSD_EENS_14iterator_rangeINS_16pointer_iteratorIT0_DTaddeclsr3stdE7declvalISK_EEEEEEEOT_"}
!6 = distinct !{!6, !5, !"_ZN4llvm18make_pointer_rangeIRNS_9MapVectorINS_10sampleprof10FunctionIdEjNS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_jELj0EEELj0EEEPSD_EENS_14iterator_rangeINS_16pointer_iteratorIT0_DTaddeclsr3stdE7declvalISK_EEEEEEEOT_: argument 0"}
!7 = distinct !{!7, !72}
!8 = distinct !{!8, !72}
!9 = distinct !{!9, !72}
!10 = distinct !{!10, !72}
!11 = distinct !{!11, !72}
!12 = distinct !{null}
!13 = distinct !{null, null, null}
!14 = distinct !{ptr @_ZN4llvm10sampleprof19SampleProfileWriterD2Ev, null, null}
!15 = distinct !{ptr @_ZN4llvm10sampleprof25SampleProfileWriterBinaryD2Ev, ptr @_ZN4llvm10sampleprof19SampleProfileWriterD2Ev, null, null}
!16 = distinct !{!16, !72}
!17 = distinct !{!17, !72}
!18 = distinct !{!18, !72}
!19 = distinct !{!19, !72}
!20 = distinct !{!20, !72}
!21 = distinct !{!21, !72}
!22 = distinct !{!22, !72}
!23 = distinct !{!23, !72}
!24 = distinct !{!24, !72}
!25 = distinct !{!25, !72}
!26 = distinct !{!26, !72}
!27 = distinct !{!27, !72}
!28 = distinct !{!28, !72}
!29 = distinct !{!29, !72}
!30 = distinct !{!30, !72}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!34 = !{!"Simple C++ TBAA"}
!35 = !{!"omnipotent char", !34, i64 0}
!36 = !{!"int", !35, i64 0}
!37 = !{!"__libc_errno", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !39, i64 0, !36, i64 8, !36, i64 12}
!41 = !{!40, !39, i64 0}
!42 = !{!"vtable pointer", !34, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSSt14_Function_base", !35, i64 0, !39, i64 16}
!45 = !{!44, !39, i64 16}
!46 = !{!"any p2 pointer", !39, i64 0}
!47 = !{!"bool", !35, i64 0}
!48 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !46, i64 0, !36, i64 8, !36, i64 12, !47, i64 16}
!49 = !{!48, !47, i64 16}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!48, !46, i64 0}
!53 = !{!"p1 _ZTSN4llvm10sampleprof16SampleProfileMapE", !39, i64 0}
!54 = !{!"long", !35, i64 0}
!55 = !{!"_ZTSN4llvm10sampleprof23FunctionPruningStrategyE", !53, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 16}
!57 = !{i64 8}
!58 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !46, i64 0}
!59 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !39, i64 0}
!60 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !59, i64 0}
!61 = !{!"float", !35, i64 0}
!62 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !61, i64 0, !54, i64 8}
!63 = !{!"_ZTSSt10_HashtableIN4llvm9hash_codeESt4pairIKS1_NS0_10sampleprof15FunctionSamplesEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE", !58, i64 0, !54, i64 8, !60, i64 16, !54, i64 24, !62, i64 32, !59, i64 48}
!64 = !{!63, !54, i64 24}
!65 = !{!"p1 _ZTSSt4pairIN4llvm9hash_codeEPKNS0_10sampleprof15FunctionSamplesEE", !39, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEESaIS7_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!66, !65, i64 8}
!68 = !{!66, !65, i64 0}
!69 = !{!60, !59, i64 0}
!70 = !{!"_ZTSN4llvm9hash_codeE", !54, i64 0}
!71 = !{!70, !54, i64 0}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!63, !54, i64 8}
!74 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !54, i64 0}
!75 = !{!74, !54, i64 0}
!76 = !{!63, !58, i64 0}
!77 = !{!59, !59, i64 0}
!78 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !39, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !39, i64 0, !54, i64 8, !54, i64 16}
!81 = !{!80, !39, i64 0}
!82 = !{!80, !54, i64 16}
!83 = !{!80, !54, i64 8}
!84 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !35, i64 0}
!85 = !{!"p1 omnipotent char", !39, i64 0}
!86 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !35, i64 0}
!87 = !{!"_ZTSN4llvm11raw_ostreamE", !84, i64 8, !85, i64 16, !85, i64 24, !85, i64 32, !47, i64 40, !86, i64 44}
!88 = !{!87, !84, i64 8}
!89 = !{!87, !47, i64 40}
!90 = !{!87, !86, i64 44}
!91 = !{!66, !65, i64 16}
!92 = !{!87, !85, i64 32}
!93 = !{!87, !85, i64 16}
!94 = !{!"_ZTSN4llvm10sampleprof7SecTypeE", !35, i64 0}
!95 = !{!"_ZTSN4llvm10sampleprof16SecHdrTableEntryE", !94, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32}
!96 = !{!95, !54, i64 8}
!97 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0}
!98 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !85, i64 0}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !98, i64 0, !54, i64 8, !35, i64 16}
!100 = !{!99, !54, i64 8}
!101 = !{!99, !85, i64 0}
!102 = !{!87, !85, i64 24}
!103 = !{!35, !35, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm11raw_ostreamELb0EE", !78, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm11raw_ostreamESt14default_deleteIS1_EEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJPN4llvm11raw_ostreamESt14default_deleteIS1_EEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm11raw_ostreamESt14default_deleteIS1_EE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm11raw_ostreamESt14default_deleteIS1_ELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrIN4llvm11raw_ostreamESt14default_deleteIS1_EE", !108, i64 0}
!110 = !{!"p1 _ZTSN4llvm14ProfileSummaryE", !39, i64 0}
!111 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm14ProfileSummaryELb0EE", !110, i64 0}
!112 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm14ProfileSummaryESt14default_deleteIS1_EEE", !111, i64 0}
!113 = !{!"_ZTSSt5tupleIJPN4llvm14ProfileSummaryESt14default_deleteIS1_EEE", !112, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm14ProfileSummaryESt14default_deleteIS1_EE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm14ProfileSummaryESt14default_deleteIS1_ELb1ELb1EE", !114, i64 0}
!116 = !{!"_ZTSSt10unique_ptrIN4llvm14ProfileSummaryESt14default_deleteIS1_EE", !115, i64 0}
!117 = !{!"_ZTSN4llvm10sampleprof19SampleProfileFormatE", !35, i64 0}
!118 = !{!"_ZTSN4llvm10sampleprof19SampleProfileWriterE", !54, i64 8, !109, i64 16, !116, i64 24, !117, i64 32, !54, i64 40}
!119 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10sampleprof10FunctionIdEjEE", !39, i64 0}
!120 = !{!"p1 int", !39, i64 0}
!121 = !{!"_ZTSN4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !119, i64 0, !120, i64 8, !36, i64 16, !36, i64 20}
!122 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINS_10sampleprof10FunctionIdEjEvEE", !40, i64 0}
!123 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINS_10sampleprof10FunctionIdEjELb1EEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINS_10sampleprof10FunctionIdEjEEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm11SmallVectorISt4pairINS_10sampleprof10FunctionIdEjELj0EEE", !124, i64 0}
!126 = !{!"_ZTSN4llvm9MapVectorINS_10sampleprof10FunctionIdEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEE", !121, i64 0, !125, i64 24}
!127 = !{!"_ZTSN4llvm10sampleprof25SampleProfileWriterBinaryE", !118, i64 0, !126, i64 48, !47, i64 88}
!128 = !{!"_ZTSN4llvm10sampleprof13SectionLayoutE", !35, i64 0}
!129 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_10sampleprof16SecHdrTableEntryEvEE", !40, i64 0}
!130 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_10sampleprof16SecHdrTableEntryELb1EEE", !129, i64 0}
!131 = !{!"_ZTSN4llvm15SmallVectorImplINS_10sampleprof16SecHdrTableEntryEEE", !130, i64 0}
!132 = !{!"_ZTSN4llvm18SmallVectorStorageINS_10sampleprof16SecHdrTableEntryELj8EEE", !35, i64 0}
end_hunk_1
begin_hunk_2_@llvm.smin.i64
!627 = distinct !{!627, !72}
!628 = distinct !{!628, !72}
!629 = distinct !{null, null, null, null, null}
!630 = distinct !{!630, !72}
!631 = distinct !{null, null, null, null}
!632 = distinct !{null, null, null, null, null, null}
!633 = distinct !{!633, !72}
!634 = distinct !{!634, !72}
!635 = distinct !{!635, !72}
!636 = distinct !{!636, !72}
!637 = distinct !{!637, !72}
!638 = !{!63, !59, i64 48}
!639 = distinct !{null, null, null, null}
!640 = !{!"p1 _ZTSSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE", !39, i64 0}
!641 = !{!640, !640, i64 0}
!642 = !{!"p1 _ZTSSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE", !39, i64 0}
!643 = !{!642, !642, i64 0}
!644 = !{!"p1 _ZTSSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE", !39, i64 0}
!645 = !{!644, !644, i64 0}
!646 = distinct !{!646, !72}
!647 = distinct !{null, null, null, null, null, null, null, null, null}
!648 = distinct !{!648, !72}
!649 = !{!"p1 _ZTSSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE", !39, i64 0}
!650 = !{!649, !649, i64 0}
!651 = distinct !{null, null, null, null, null}
!652 = distinct !{!652, !72}
!653 = distinct !{!653, !72}
!654 = !{!"p1 _ZTSSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE", !39, i64 0}
!655 = !{!654, !654, i64 0}
!656 = distinct !{!656, !72}
!657 = distinct !{!657, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!658 = distinct !{!658, !657, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!659 = !{!658}
!660 = distinct !{!660, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!661 = distinct !{!661, !660, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!662 = distinct !{!662, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!663 = distinct !{!663, !662, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!664 = distinct !{!664, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!665 = distinct !{!665, !664, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!666 = distinct !{!666, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!667 = distinct !{!667, !666, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!668 = distinct !{!668, !72}
!669 = !{!661}
!670 = !{!663}
!671 = !{!663, !661}
!672 = !{!665}
!673 = !{!667}
!674 = !{!667, !665}
!675 = distinct !{!675, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!676 = distinct !{!676, !675, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!677 = distinct !{!677, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!678 = distinct !{!678, !677, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!679 = !{!676}
!680 = !{!678}
!681 = !{!678, !676}
!682 = distinct !{!682, i1 true, !"_ZN4llvm12to_vector_ofISt4pairINS_10sampleprof10FunctionIdEmERKNS_8DenseMapIS3_mNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEEEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOT0_"}
!683 = distinct !{!683, !682, !"_ZN4llvm12to_vector_ofISt4pairINS_10sampleprof10FunctionIdEmERKNS_8DenseMapIS3_mNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEEEENS_11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOT0_: argument 0"}
!684 = distinct !{!684, i1 true, !"_ZN4llvm9adl_beginIRKNS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSC_"}
!685 = distinct !{!685, !684, !"_ZN4llvm9adl_beginIRKNS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOSC_: argument 0"}
!686 = distinct !{!686, i1 true, !"_ZN4llvm10adl_detail10begin_implIRKNS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEEEEDTcl5beginclsr3stdE7forwardIT_Efp_EEEOSD_"}
!687 = distinct !{!687, !686, !"_ZN4llvm10adl_detail10begin_implIRKNS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEEEEDTcl5beginclsr3stdE7forwardIT_Efp_EEEOSD_: argument 0"}
!688 = distinct !{!688, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv"}
!689 = distinct !{!689, !688, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E5beginEv: argument 0"}
!690 = distinct !{!690, i1 true, !"_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EE9makeBeginEPKS7_PKjjbRKNS_14DebugEpochBaseE"}
!691 = distinct !{!691, !690, !"_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EE9makeBeginEPKS7_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!692 = !{!683}
!693 = !{!689, !687, !685, !683}
!694 = !{!691, !689, !687, !685, !683}
!695 = distinct !{!695, !72}
!696 = distinct !{!696, !72}
!697 = distinct !{!697, !72}
!698 = distinct !{!698, !72}
!699 = distinct !{!699, !72}
!700 = distinct !{!700, !72}
!701 = distinct !{!701, !72}
!702 = distinct !{!702, !72}
!703 = distinct !{!703, !72}
!704 = distinct !{!704, !72}
!705 = distinct !{!705, !72}
!706 = distinct !{!706, !72}
!707 = distinct !{!707, !72}
!708 = distinct !{!708, !72}
!709 = distinct !{!709, i1 true, !"_ZSt19__relocate_object_aISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEES7_SaIS7_EEvPT_PT0_RT1_"}
!710 = distinct !{!710, !709, !"_ZSt19__relocate_object_aISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!711 = distinct !{!711, !709, !"_ZSt19__relocate_object_aISt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!712 = distinct !{!712, !72}
!713 = !{!711, !710}
!714 = distinct !{!714, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv"}
!715 = distinct !{!715, !714, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv: argument 0"}
!716 = distinct !{!716, i1 true, !"_ZNK4llvm8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv"}
!717 = distinct !{!717, !716, !"_ZNK4llvm8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv: argument 0"}
!718 = !{!717, !715}
!719 = distinct !{!719, !72}
!720 = distinct !{!720, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv"}
!721 = distinct !{!721, !720, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv: argument 0"}
!722 = distinct !{!722, i1 true, !"_ZNK4llvm8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv"}
!723 = distinct !{!723, !722, !"_ZNK4llvm8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv: argument 0"}
!724 = distinct !{!724, !72}
!725 = !{!723, !721}
!726 = distinct !{!726, i1 true, !"_ZNK4llvm10sampleprof10FunctionId3strB5cxx11Ev"}
!727 = distinct !{!727, !726, !"_ZNK4llvm10sampleprof10FunctionId3strB5cxx11Ev: argument 0"}
!728 = distinct !{!728, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!729 = distinct !{!729, !728, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!730 = distinct !{!730, !72}
!731 = distinct !{!731, !72}
!732 = distinct !{!732, !72}
!733 = !{!727}
!734 = !{!729}
!735 = !{!729, !727}
!736 = distinct !{!736, !72}
!737 = distinct !{!737, !72}
!738 = distinct !{!738, !72}
!739 = distinct !{!739, !72}
!740 = distinct !{!740, !72}
!741 = distinct !{!741, !72}
!742 = distinct !{!742, !72}
!743 = distinct !{!743, !72}
!744 = distinct !{!744, !72}
!745 = distinct !{!745, !72}
!746 = distinct !{!746, !72}
!747 = distinct !{!747, !72}
!748 = distinct !{!748, !72}
!749 = distinct !{!749, !72}
!750 = distinct !{!750, !72}
!751 = distinct !{!751, !72}
!752 = distinct !{!752, !72}
!753 = distinct !{!753, !72}
!754 = distinct !{!754, !72}
!755 = distinct !{!755, !72}
!756 = distinct !{!756, !72}
!757 = distinct !{!757, !72}
!758 = distinct !{!758, !72}
!759 = distinct !{!759, !72}
!760 = distinct !{!760, !72}
!761 = distinct !{!761, !72}
!762 = distinct !{!762, i1 false, !"LVerDomain"}
!763 = distinct !{!763, !762}
!764 = distinct !{!764, !762}
!765 = distinct !{!765, !72, !229, !230}
!766 = distinct !{!766, !72, !229}
!767 = distinct !{!767, i1 false, !"LVerDomain"}
!768 = distinct !{!768, !767}
!769 = distinct !{!769, !767}
!770 = distinct !{!770, !72, !229, !230}
!771 = distinct !{!771, !231}
!772 = distinct !{!772, !72, !229}
!773 = distinct !{!773, i1 false, !"LVerDomain"}
!774 = distinct !{!774, !773}
!775 = distinct !{!775, !773}
!776 = distinct !{!776, !72, !229, !230}
!777 = distinct !{!777, !231}
!778 = distinct !{!778, !72}
!779 = distinct !{!779, !72, !229}
!780 = !{!763}
!781 = !{!764}
!782 = !{!768}
!783 = !{!769}
!784 = !{!774}
!785 = !{!775}
!786 = distinct !{!786, !72}
!787 = distinct !{!787, !72}
!788 = distinct !{!788, !72}
!789 = distinct !{!789, !72}
!790 = distinct !{!790, !72}
!791 = distinct !{!791, !72}
!792 = distinct !{!792, !72}
!793 = distinct !{!793, i1 false, !"LVerDomain"}
!794 = distinct !{!794, !793}
!795 = distinct !{!795, !793}
!796 = distinct !{!796, !72, !229, !230}
!797 = distinct !{!797, !72, !229}
!798 = distinct !{!798, i1 false, !"LVerDomain"}
!799 = distinct !{!799, !798}
!800 = distinct !{!800, !798}
!801 = distinct !{!801, !72, !229, !230}
!802 = distinct !{!802, !231}
!803 = distinct !{!803, !72, !229}
!804 = distinct !{!804, i1 false, !"LVerDomain"}
!805 = distinct !{!805, !804}
!806 = distinct !{!806, !804}
!807 = distinct !{!807, !72, !229, !230}
!808 = distinct !{!808, !231}
!809 = distinct !{!809, !72}
!810 = distinct !{!810, !72, !229}
!811 = !{!794}
!812 = !{!795}
!813 = !{!799}
!814 = !{!800}
!815 = !{!805}
!816 = !{!806}
!817 = distinct !{!817, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv"}
!818 = distinct !{!818, !817, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv: argument 0"}
!819 = distinct !{!819, i1 true, !"_ZNK4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv"}
!820 = distinct !{!820, !819, !"_ZNK4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv: argument 0"}
!821 = !{!820, !818}
!822 = distinct !{!822, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv"}
!823 = distinct !{!823, !822, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv: argument 0"}
!824 = distinct !{!824, i1 true, !"_ZNK4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv"}
!825 = distinct !{!825, !824, !"_ZNK4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv: argument 0"}
!826 = !{!825, !823}
!827 = distinct !{!827, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv"}
!828 = distinct !{!828, !827, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6getRepEv: argument 0"}
!829 = distinct !{!829, i1 true, !"_ZNK4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv"}
!830 = distinct !{!830, !829, !"_ZNK4llvm8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE6getRepEv: argument 0"}
!831 = !{!830, !828}
!832 = distinct !{!832, !72}
!833 = distinct !{!833, !72}
!834 = distinct !{!834, !72}
!835 = !{!270, !47, i64 8}
!836 = !{!293, !54, i64 8}
end_hunk_2
