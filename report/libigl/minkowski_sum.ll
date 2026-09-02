Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/minkowski_sum?download=true
inline.NumInlined: 7634
inline.NumDeleted: 3197
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 213
loop-unroll.NumUnrolled: 226
begin_hunk_0_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELi3ELi1ELin1ELi3EEESK_Li3ELi1ESK_Li3ELi1ESL_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNS16_IT8_EERNS16_IT9_EE:bb.a
  %invariant.gep.2.i.i.i.i.i.i.i.i.i.i.i447 = getelementptr i8, ptr %i.alj, i64 8 ; 5 uses
  %xtraiter2439 = and i64 %i.alg, 3               ; 3 uses
  %i.amz = icmp ult i64 %i.alg, 4
  br i1 %i.amz, label %.epil.preheader2438, label %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445.new

._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445.new:       ; preds = %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445
  %unroll_iter2443 = and i64 %i.alg, 9223372036854775804
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gx, %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445.new
  %.09.2.i.i.i.i.i.i.i.i.i.i.i448 = phi i64 [ 0, %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445.new ], [ %i.anx, %bb.gx ] ; 6 uses
  %niter2444 = phi i64 [ 0, %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445.new ], [ %niter2444.next.3, %bb.gx ]
  %i.ana = getelementptr [4 x i8], ptr %i.amy, i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !60
  %i.and = sext i32 %i.anc to i64
  %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449 = mul nsw i64 %i.and, 12
  %gep.2.i.i.i.i.i.i.i.i.i.i.i450 = getelementptr i8, ptr %invariant.gep.2.i.i.i.i.i.i.i.i.i.i.i447, i64 %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449
  %i.ane = load i32, ptr %gep.2.i.i.i.i.i.i.i.i.i.i.i450, align 4, !tbaa !60
  store i32 %i.ane, ptr %i.ana, align 4, !tbaa !60
  %i.anf = or disjoint i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448, 1 ; 2 uses
  %i.ang = getelementptr [4 x i8], ptr %i.amy, i64 %i.anf
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.anf
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !60
  %i.anj = sext i32 %i.ani to i64
  %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.1 = mul nsw i64 %i.anj, 12
  %gep.2.i.i.i.i.i.i.i.i.i.i.i450.1 = getelementptr i8, ptr %invariant.gep.2.i.i.i.i.i.i.i.i.i.i.i447, i64 %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.1
  %i.ank = load i32, ptr %gep.2.i.i.i.i.i.i.i.i.i.i.i450.1, align 4, !tbaa !60
  store i32 %i.ank, ptr %i.ang, align 4, !tbaa !60
  %i.anl = or disjoint i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448, 2 ; 2 uses
  %i.anm = getelementptr [4 x i8], ptr %i.amy, i64 %i.anl
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.anl
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !60
  %i.anp = sext i32 %i.ano to i64
  %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.2 = mul nsw i64 %i.anp, 12
  %gep.2.i.i.i.i.i.i.i.i.i.i.i450.2 = getelementptr i8, ptr %invariant.gep.2.i.i.i.i.i.i.i.i.i.i.i447, i64 %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.2
  %i.anq = load i32, ptr %gep.2.i.i.i.i.i.i.i.i.i.i.i450.2, align 4, !tbaa !60
  store i32 %i.anq, ptr %i.anm, align 4, !tbaa !60
  %i.anr = or disjoint i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448, 3 ; 2 uses
  %i.ans = getelementptr [4 x i8], ptr %i.amy, i64 %i.anr
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.anr
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !60
  %i.anv = sext i32 %i.anu to i64
  %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.3 = mul nsw i64 %i.anv, 12
  %gep.2.i.i.i.i.i.i.i.i.i.i.i450.3 = getelementptr i8, ptr %invariant.gep.2.i.i.i.i.i.i.i.i.i.i.i447, i64 %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.3
  %i.anw = load i32, ptr %gep.2.i.i.i.i.i.i.i.i.i.i.i450.3, align 4, !tbaa !60
  store i32 %i.anw, ptr %i.ans, align 4, !tbaa !60
  %i.anx = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448, 4 ; 2 uses
  %niter2444.next.3 = add i64 %niter2444, 4       ; 2 uses
  %niter2444.ncmp.3 = icmp eq i64 %niter2444.next.3, %unroll_iter2443
  br i1 %niter2444.ncmp.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, label %bb.gx, !llvm.loop !167

.split.i.i.i.i.i.i.i.i.i.i.i434:                  ; preds = %.split.i.i.i.i.i.i.i.i.i.i.i434, %.split.i.i.i.i.i.i.i.i.i.i.i434.preheader.new
  %.09.i.i.i.i.i.i.i.i.i.i.i435 = phi i64 [ 0, %.split.i.i.i.i.i.i.i.i.i.i.i434.preheader.new ], [ %i.aov, %.split.i.i.i.i.i.i.i.i.i.i.i434 ] ; 6 uses
  %niter2430 = phi i64 [ 0, %.split.i.i.i.i.i.i.i.i.i.i.i434.preheader.new ], [ %niter2430.next.3, %.split.i.i.i.i.i.i.i.i.i.i.i434 ]
  %i.any = getelementptr [4 x i8], ptr %i.alh, i64 %.09.i.i.i.i.i.i.i.i.i.i.i435
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %.09.i.i.i.i.i.i.i.i.i.i.i435
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !60
  %i.aob = sext i32 %i.aoa to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436 = mul nsw i64 %i.aob, 12
  %gep.i.i.i.i.i.i.i.i.i.i.i437 = getelementptr i8, ptr %i.alj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436
  %i.aoc = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i437, align 4, !tbaa !60
  store i32 %i.aoc, ptr %i.any, align 4, !tbaa !60
  %i.aod = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i435, 1 ; 2 uses
  %i.aoe = getelementptr [4 x i8], ptr %i.alh, i64 %i.aod
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.aod
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !60
  %i.aoh = sext i32 %i.aog to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436.1 = mul nsw i64 %i.aoh, 12
  %gep.i.i.i.i.i.i.i.i.i.i.i437.1 = getelementptr i8, ptr %i.alj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436.1
  %i.aoi = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i437.1, align 4, !tbaa !60
  store i32 %i.aoi, ptr %i.aoe, align 4, !tbaa !60
  %i.aoj = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i435, 2 ; 2 uses
  %i.aok = getelementptr [4 x i8], ptr %i.alh, i64 %i.aoj
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.aoj
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !60
  %i.aon = sext i32 %i.aom to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436.2 = mul nsw i64 %i.aon, 12
  %gep.i.i.i.i.i.i.i.i.i.i.i437.2 = getelementptr i8, ptr %i.alj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436.2
  %i.aoo = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i437.2, align 4, !tbaa !60
  store i32 %i.aoo, ptr %i.aok, align 4, !tbaa !60
  %i.aop = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i435, 3 ; 2 uses
  %i.aoq = getelementptr [4 x i8], ptr %i.alh, i64 %i.aop
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.aop
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !60
  %i.aot = sext i32 %i.aos to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436.3 = mul nsw i64 %i.aot, 12
  %gep.i.i.i.i.i.i.i.i.i.i.i437.3 = getelementptr i8, ptr %i.alj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i436.3
  %i.aou = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i437.3, align 4, !tbaa !60
  store i32 %i.aou, ptr %i.aoq, align 4, !tbaa !60
  %i.aov = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i435, 4 ; 2 uses
  %niter2430.next.3 = add nuw nsw i64 %niter2430, 4 ; 2 uses
  %niter2430.ncmp.3 = icmp eq i64 %niter2430.next.3, %unroll_iter2429
  br i1 %niter2430.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i439.unr-lcssa, label %.split.i.i.i.i.i.i.i.i.i.i.i434, !llvm.loop !167

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.gu
  %.not.i.i.i.i452 = icmp eq ptr %i.alc, null
  br i1 %.not.i.i.i.i452, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit453, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa: ; preds = %bb.gx
  %lcmp.mod2441.not = icmp eq i64 %xtraiter2439, 0
  br i1 %lcmp.mod2441.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.epil.preheader2438

.epil.preheader2438:                              ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445
  %.09.2.i.i.i.i.i.i.i.i.i.i.i448.epil.init = phi i64 [ 0, %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i445 ], [ %i.anx, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod2442 = icmp ne i64 %xtraiter2439, 0
  call void @llvm.assume(i1 %lcmp.mod2442)
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gy, %.epil.preheader2438
  %.09.2.i.i.i.i.i.i.i.i.i.i.i448.epil = phi i64 [ %.09.2.i.i.i.i.i.i.i.i.i.i.i448.epil.init, %.epil.preheader2438 ], [ %i.apb, %bb.gy ] ; 3 uses
  %epil.iter2440 = phi i64 [ 0, %.epil.preheader2438 ], [ %epil.iter2440.next, %bb.gy ]
  %i.aow = getelementptr [4 x i8], ptr %i.amy, i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448.epil
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448.epil
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !60
  %i.aoz = sext i32 %i.aoy to i64
  %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.epil = mul nsw i64 %i.aoz, 12
  %gep.2.i.i.i.i.i.i.i.i.i.i.i450.epil = getelementptr i8, ptr %invariant.gep.2.i.i.i.i.i.i.i.i.i.i.i447, i64 %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i449.epil
  %i.apa = load i32, ptr %gep.2.i.i.i.i.i.i.i.i.i.i.i450.epil, align 4, !tbaa !60
  store i32 %i.apa, ptr %i.aow, align 4, !tbaa !60
  %i.apb = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i448.epil, 1
  %epil.iter2440.next = add i64 %epil.iter2440, 1 ; 2 uses
  %epil.iter2440.cmp.not = icmp eq i64 %epil.iter2440.next, %xtraiter2439
  br i1 %epil.iter2440.cmp.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %bb.gy, !llvm.loop !169

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %bb.gy, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.apc = getelementptr inbounds nuw i8, ptr %71, i64 24
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !108
  %i.ape = ptrtoint ptr %i.apd to i64
  %i.apf = sub i64 %i.ape, %i.ale
  call void @_ZdlPvm(ptr noundef nonnull %i.alc, i64 noundef %i.apf) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit453

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit453: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.apg = load ptr, ptr %72, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i454 = icmp eq ptr %i.apg, null
  br i1 %.not.i.i.i454, label %_ZNSt6vectorIiSaIiEED2Ev.exit455, label %bb.gz

bb.gz:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit453
  %i.aph = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !108
  %i.apj = ptrtoint ptr %i.api to i64
  %i.apk = ptrtoint ptr %i.apg to i64
  %i.apl = sub i64 %i.apj, %i.apk
  call void @_ZdlPvm(ptr noundef nonnull %i.apg, i64 noundef %i.apl) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit455

_ZNSt6vectorIiSaIiEED2Ev.exit455:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit453, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i.i.i, label %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit, label %bb.ha

bb.ha:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit455
  call void @_ZdlPvm(ptr noundef nonnull %i.aky, i64 noundef %i.agv) #35
  br label %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit

_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit455, %bb.ha
  %.not.i.i.i.i.i456 = icmp eq ptr %i.agu, null
  br i1 %.not.i.i.i.i.i456, label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit, label %bb.hb

bb.hb:                                            ; preds = %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.agu, i64 noundef %i.agq) #35
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit

_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit: ; preds = %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit, %bb.hb
  %i.apm = load ptr, ptr %i.agk, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i457 = icmp eq ptr %i.apm, null
  br i1 %.not.i.i.i.i457, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit458, label %bb.hc

bb.hc:                                            ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit
  %i.apn = getelementptr inbounds nuw i8, ptr %69, i64 24
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !108
  %i.app = ptrtoint ptr %i.apo to i64
  %i.apq = ptrtoint ptr %i.apm to i64
  %i.apr = sub i64 %i.app, %i.apq
  call void @_ZdlPvm(ptr noundef nonnull %i.apm, i64 noundef %i.apr) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit458

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit458: ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EED2Ev.exit, %bb.hc
  %i.aps = load ptr, ptr %70, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i459 = icmp eq ptr %i.aps, null
  br i1 %.not.i.i.i459, label %_ZNSt6vectorIiSaIiEED2Ev.exit460, label %bb.hd

bb.hd:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit458
  %i.apt = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !108
  %i.apv = ptrtoint ptr %i.apu to i64
  %i.apw = ptrtoint ptr %i.aps to i64
  %i.apx = sub i64 %i.apv, %i.apw
  call void @_ZdlPvm(ptr noundef nonnull %i.aps, i64 noundef %i.apx) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit460

_ZNSt6vectorIiSaIiEED2Ev.exit460:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit458, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #23
  %i.apy = mul nsw i32 %i.jl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  %i.apz = sext i32 %i.apy to i64                 ; 4 uses
  %i.aqa = shl nuw nsw i64 %i.apz, 4
  %i.aqb = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 26 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 17 uses
  br i1 %i.jn, label %bb.hh, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit460
  br i1 %i.jo, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i904, label %.sink.split.i902

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i904: ; preds = %bb.he
  %i.aqd = call noalias ptr @malloc(i64 noundef %i.aqa) #37 ; 2 uses
  %i.aqe = icmp eq ptr %i.aqd, null
  br i1 %i.aqe, label %bb.hf, label %.sink.split.i902

bb.hf:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i904
  %i.aqf = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aqf, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.aqf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc906 unwind label %bb.hg

.noexc906:                                        ; preds = %bb.hf
  unreachable

.sink.split.i902:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i904, %bb.he
  %.sink.i903 = phi ptr [ %i.aqd, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i904 ], [ null, %bb.he ] ; 2 uses
  store ptr %.sink.i903, ptr %73, align 8, !tbaa !34
  br label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %.body464

bb.hh:                                            ; preds = %.sink.split.i902, %_ZNSt6vectorIiSaIiEED2Ev.exit460
  %i.aqh = phi ptr [ %.sink.i903, %.sink.split.i902 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit460 ] ; 2 uses
  store i64 %i.apz, ptr %i.aqb, align 8, !tbaa !31
  store i64 4, ptr %i.aqc, align 8, !tbaa !33
  %i.aqi = getelementptr inbounds [4 x i8], ptr %.sroa.01402.0, i64 %i.jm ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23, !noalias !170
  store ptr %i.aqh, ptr %23, align 8, !tbaa !173, !alias.scope !175, !noalias !170
  %i.aqj = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.jm, ptr %i.aqj, align 8, !tbaa !140, !alias.scope !175, !noalias !170
  %i.aqk = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 1, ptr %i.aqk, align 8, !tbaa !140, !alias.scope !175, !noalias !170
  %i.aql = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %73, ptr %i.aql, align 8, !tbaa !178, !alias.scope !175, !noalias !170
  %i.aqm = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.aqn = getelementptr inbounds nuw i8, ptr %23, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqm, i8 0, i64 16, i1 false), !noalias !170
  store i64 %i.apz, ptr %i.aqn, align 8, !tbaa !180, !alias.scope !175, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23, !noalias !170
  store ptr %i.aqi, ptr %19, align 8, !tbaa !183, !noalias !170
  %i.aqo = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.jm, ptr %i.aqo, align 8, !tbaa !140, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23, !noalias !170
  store ptr %i.aqh, ptr %20, align 8, !tbaa !185, !noalias !170
  %i.aqp = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 %i.apz, ptr %i.aqp, align 8, !tbaa !140, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23, !noalias !170
  store ptr %20, ptr %21, align 8, !tbaa !187, !noalias !170
  %i.aqq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %19, ptr %i.aqq, align 8, !tbaa !189, !noalias !170
  %i.aqr = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %22, ptr %i.aqr, align 8, !tbaa !191, !noalias !170
  %i.aqs = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %23, ptr %i.aqs, align 8, !tbaa !193, !noalias !170
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %._crit_edge.i468 unwind label %bb.iz

._crit_edge.i468:                                 ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23, !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23, !noalias !170
  %i.aqt = load i64, ptr %i.aqc, align 8, !tbaa !33
  %.not = icmp eq i64 %i.aqt, 1                   ; 5 uses
  %.sroa.15.0 = select i1 %.not, i64 %i.jm, i64 0 ; 12 uses
  %i.aqu = load ptr, ptr %73, align 8, !tbaa !34, !noalias !195 ; 2 uses
  %i.aqv = ptrtoaddr ptr %i.aqu to i64            ; 2 uses
  %i.aqw = getelementptr inbounds [4 x i8], ptr %i.aqu, i64 %.sroa.15.0
  %i.aqx = load i64, ptr %i.aqb, align 8, !tbaa !31, !noalias !195 ; 3 uses
  %i.aqy = select i1 %.not, i64 0, i64 %i.aqx
  %i.aqz = getelementptr inbounds [4 x i8], ptr %i.aqw, i64 %i.aqy ; 14 uses
  %i.ara = ptrtoint ptr %i.aqz to i64             ; 2 uses
  %i.arb = and i64 %i.ara, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.arb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hi, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.hi:                                            ; preds = %._crit_edge.i468
  %i.arc = lshr exact i64 %i.ara, 2
  %i.ard = sub nsw i64 0, %i.arc
  %i.are = and i64 %i.ard, 3
  %i.arf = call i64 @llvm.smin.i64(i64 %i.are, i64 %i.jm)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hi, %._crit_edge.i468
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.arf, %bb.hi ], [ %i.jm, %._crit_edge.i468 ] ; 11 uses
  %i.arg = sub nsw i64 %i.jm, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.arh = sdiv i64 %i.arg, 4
  %i.ari = shl nsw i64 %i.arh, 2                  ; 2 uses
  %i.arj = add nsw i64 %i.ari, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ark = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ark, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check1715 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 20
  br i1 %min.iters.check1715, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354, label %vector.memcheck1711

vector.memcheck1711:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.arl = select i1 %.not, i64 %i.jm, i64 %i.aqx
  %i.arm = shl i64 %i.arl, 2
  %i.arn = add i64 %i.arm, %i.aqv
  %i.aro = sub i64 %.sroa.01402.01712, %i.arn
  %diff.check1713 = icmp ugt i64 %i.aro, -32
  br i1 %diff.check1713, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354, label %vector.ph1716

vector.ph1716:                                    ; preds = %vector.memcheck1711
  %n.vec1717 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body1718

vector.body1718:                                  ; preds = %vector.body1718, %vector.ph1716
  %index1719 = phi i64 [ 0, %vector.ph1716 ], [ %index.next1722, %vector.body1718 ] ; 3 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %index1719 ; 2 uses
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01402.0, i64 %index1719 ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  %wide.load1720 = load <4 x i32>, ptr %i.arq, align 4, !tbaa !60
  %wide.load1721 = load <4 x i32>, ptr %i.arr, align 4, !tbaa !60
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  store <4 x i32> %wide.load1720, ptr %i.arp, align 4, !tbaa !60
  store <4 x i32> %wide.load1721, ptr %i.ars, align 4, !tbaa !60
  %index.next1722 = add nuw i64 %index1719, 8     ; 2 uses
  %i.art = icmp eq i64 %index.next1722, %n.vec1717
  br i1 %i.art, label %middle.block1723, label %vector.body1718, !llvm.loop !198

middle.block1723:                                 ; preds = %vector.body1718
  %cmp.n1724 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec1717
  br i1 %cmp.n1724, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354:     ; preds = %vector.memcheck1711, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block1723
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck1711 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec1717, %middle.block1723 ] ; 3 uses
  %xtraiter2445 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod2446.not = icmp eq i64 %xtraiter2445, 0
  br i1 %lcmp.mod2446.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.arx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354 ] ; 3 uses
  %prol.iter2447 = phi i64 [ %prol.iter2447.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354 ]
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01402.0, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.arw = load i32, ptr %i.arv, align 4, !tbaa !60
  store i32 %i.arw, ptr %i.aru, align 4, !tbaa !60
  %i.arx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter2447.next = add i64 %prol.iter2447, 1 ; 2 uses
  %prol.iter2447.cmp.not = icmp eq i64 %prol.iter2447.next, %xtraiter2445
  br i1 %prol.iter2447.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !199

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2354 ], [ %i.arx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ary = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.arz = icmp ugt i64 %i.ary, -4
  br i1 %i.arz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.asp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01402.0, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !60
  store i32 %i.asc, ptr %i.asa, align 4, !tbaa !60
  %i.asd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.asd
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01402.0, i64 %i.asd
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !60
  store i32 %i.asg, ptr %i.ase, align 4, !tbaa !60
  %i.ash = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.ash
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01402.0, i64 %i.ash
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !60
  store i32 %i.ask, ptr %i.asi, align 4, !tbaa !60
  %i.asl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.asl
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01402.0, i64 %i.asl
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !60
  store i32 %i.aso, ptr %i.asm, align 4, !tbaa !60
  %i.asp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i475.3 = icmp eq i64 %i.asp, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i475.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !200

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block1723, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.asq = icmp sgt i64 %i.arg, 3
  br i1 %i.asq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i474, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i473

._crit_edge.i.i.i.i.i.i.i.i.i.i.i473:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i474, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.asr = icmp slt i64 %i.arj, %i.jm
  br i1 %i.asr, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i476

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i473
  %i.ass = sext i32 %.0111.lcssa to i64           ; 2 uses
  %i.ast = sext i32 %.0109.lcssa to i64           ; 2 uses
  %i.asu = add nsw i64 %i.ass, %i.ast
  %i.asv = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.ari
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLin1ELi1EdLin1ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a
  %.pre29.i406 = ptrtoint ptr %.pre12.i404 to i64
  %.pre31.i407 = sub i64 %.pre27.i405, %.pre29.i406
  %.pre33.i408 = ashr exact i64 %.pre31.i407, 2
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.abk = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.abl = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !69
  %i.abn = load ptr, ptr %i.abk, align 8, !tbaa !74 ; 2 uses
  %i.abo = ptrtoint ptr %i.abm to i64
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = sub i64 %i.abo, %i.abp
  %i.abr = ashr exact i64 %i.abq, 2               ; 2 uses
  %.not8.i410 = icmp eq i64 %i.abr, %i.abe        ; 2 uses
  %spec.select1438 = select i1 %.not8.i410, i64 0, i64 %i.abe
  %spec.select1439 = select i1 %.not8.i410, i64 3, i64 0
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i398, %._crit_edge13.i376
  %.sroa.51316.0 = phi i64 [ %spec.select1438, %bb.eg ], [ 0, %._crit_edge13.i376 ], [ %i.abe, %._crit_edge.i398 ]
  %.pre-phi26.i387 = phi i64 [ %i.abr, %bb.eg ], [ %.pre25.i386, %._crit_edge13.i376 ], [ %.pre33.i408, %._crit_edge.i398 ] ; 4 uses
  %i.abs = phi i64 [ 0, %bb.eg ], [ %.pre19.i382, %._crit_edge13.i376 ], [ %i.abj, %._crit_edge.i398 ] ; 2 uses
  %i.abt = phi ptr [ %i.abn, %bb.eg ], [ %.pre17.i380, %._crit_edge13.i376 ], [ %.pre12.i404, %._crit_edge.i398 ] ; 8 uses
  %i.abu = phi i64 [ %spec.select1439, %bb.eg ], [ %i.abf, %._crit_edge13.i376 ], [ 0, %._crit_edge.i398 ]
  %i.abv = getelementptr inbounds [4 x i8], ptr %.sroa.01383.0, i64 %.sroa.51316.0
  %i.abw = mul nsw i64 %i.abu, %i.fe
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.abw
  %i.aby = load ptr, ptr %67, align 8, !tbaa !706, !nonnull !14, !align !83 ; 2 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !34
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !31
  %i.acc = icmp sgt i64 %i.abs, 0
  %i.acd = icmp sgt i64 %.pre-phi26.i387, 0
  %or.cond.i388 = select i1 %i.acc, i1 %i.acd, i1 false
  br i1 %or.cond.i388, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader:    ; preds = %bb.eh
  %xtraiter2448 = and i64 %.pre-phi26.i387, 3     ; 3 uses
  %i.ace = icmp ult i64 %.pre-phi26.i387, 4
  %unroll_iter2452 = and i64 %.pre-phi26.i387, 9223372036854775804
  %lcmp.mod2450.not = icmp eq i64 %xtraiter2448, 0
  %lcmp.mod2451 = icmp ne i64 %xtraiter2448, 0
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i389

.preheader.i.i.i.i.i.i.i.i.i.i.i389:              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395
  %.0810.i.i.i.i.i.i.i.i.i.i.i390 = phi i64 [ %i.aco, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader ] ; 3 uses
  %i.acf = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i390, %i.fe
  %i.acg = getelementptr [4 x i8], ptr %i.abx, i64 %i.acf ; 5 uses
  %i.ach = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i390, %i.acb
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391 = getelementptr [4 x i8], ptr %i.abz, i64 %i.ach ; 5 uses
  br i1 %i.ace, label %.epil.preheader2447, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new

._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new
  br i1 %lcmp.mod2450.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395, label %.epil.preheader2447

.epil.preheader2447:                              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i389
  %.09.i.i.i.i.i.i.i.i.i.i.i392.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389 ], [ %i.adm, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2451)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ei, %.epil.preheader2447
  %.09.i.i.i.i.i.i.i.i.i.i.i392.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i392.epil.init, %.epil.preheader2447 ], [ %i.acn, %bb.ei ] ; 3 uses
  %epil.iter2449 = phi i64 [ 0, %.epil.preheader2447 ], [ %epil.iter2449.next, %bb.ei ]
  %i.aci = getelementptr [4 x i8], ptr %i.acg, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392.epil
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392.epil
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !60
  %i.acl = sext i32 %i.ack to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.acl
  %i.acm = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.epil, align 4, !tbaa !60
  store i32 %i.acm, ptr %i.aci, align 4, !tbaa !60
  %i.acn = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i392.epil, 1
  %epil.iter2449.next = add i64 %epil.iter2449, 1 ; 2 uses
  %epil.iter2449.cmp.not = icmp eq i64 %epil.iter2449.next, %xtraiter2448
  br i1 %epil.iter2449.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395, label %bb.ei, !llvm.loop !751

._crit_edge.i.i.i.i.i.i.i.i.i.i.i395:             ; preds = %bb.ei, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa
  %i.aco = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i390, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i396 = icmp eq i64 %i.aco, %i.abs
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i396, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389, !llvm.loop !710

.preheader.i.i.i.i.i.i.i.i.i.i.i389.new:          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i389, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new
  %.09.i.i.i.i.i.i.i.i.i.i.i392 = phi i64 [ %i.adm, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389 ] ; 6 uses
  %niter2453 = phi i64 [ %niter2453.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389 ]
  %i.acp = getelementptr [4 x i8], ptr %i.acg, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !60
  %i.acs = sext i32 %i.acr to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.acs
  %i.act = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393, align 4, !tbaa !60
  store i32 %i.act, ptr %i.acp, align 4, !tbaa !60
  %i.acu = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 1 ; 2 uses
  %i.acv = getelementptr [4 x i8], ptr %i.acg, i64 %i.acu
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.acu
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !60
  %i.acy = sext i32 %i.acx to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.acy
  %i.acz = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.1, align 4, !tbaa !60
  store i32 %i.acz, ptr %i.acv, align 4, !tbaa !60
  %i.ada = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 2 ; 2 uses
  %i.adb = getelementptr [4 x i8], ptr %i.acg, i64 %i.ada
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.ada
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !60
  %i.ade = sext i32 %i.add to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.ade
  %i.adf = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.2, align 4, !tbaa !60
  store i32 %i.adf, ptr %i.adb, align 4, !tbaa !60
  %i.adg = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 3 ; 2 uses
  %i.adh = getelementptr [4 x i8], ptr %i.acg, i64 %i.adg
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.adg
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !60
  %i.adk = sext i32 %i.adj to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.adk
  %i.adl = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.3, align 4, !tbaa !60
  store i32 %i.adl, ptr %i.adh, align 4, !tbaa !60
  %i.adm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 4 ; 2 uses
  %niter2453.next.3 = add nuw nsw i64 %niter2453, 4 ; 2 uses
  %niter2453.ncmp.3 = icmp eq i64 %niter2453.next.3, %unroll_iter2452
  br i1 %niter2453.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new, !llvm.loop !711

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.eh
  %.not.i.i.i.i411 = icmp eq ptr %i.abt, null
  br i1 %.not.i.i.i.i411, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.adn = getelementptr inbounds nuw i8, ptr %67, i64 24
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !108
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %i.abt to i64
  %i.adr = sub i64 %i.adp, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %i.abt, i64 noundef %i.adr) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.ads = load ptr, ptr %68, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i413 = icmp eq ptr %i.ads, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorIiSaIiEED2Ev.exit414, label %bb.ej

bb.ej:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412
  %i.adt = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !108
  %i.adv = ptrtoint ptr %i.adu to i64
  %i.adw = ptrtoint ptr %i.ads to i64
  %i.adx = sub i64 %i.adv, %i.adw
  call void @_ZdlPvm(ptr noundef nonnull %i.ads, i64 noundef %i.adx) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit414

_ZNSt6vectorIiSaIiEED2Ev.exit414:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i.i.i, label %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef %i.yz) #35
  br label %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit

_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414, %bb.ek
  %.not.i.i.i.i.i415 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i.i.i.i415, label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, label %bb.el

bb.el:                                            ; preds = %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.yy, i64 noundef %i.yu) #35
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit

_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit: ; preds = %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, %bb.el
  %i.ady = load ptr, ptr %i.yo, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i416 = icmp eq ptr %i.ady, null
  br i1 %.not.i.i.i.i416, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417, label %bb.em

bb.em:                                            ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit
  %i.adz = getelementptr inbounds nuw i8, ptr %65, i64 24
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !108
  %i.aeb = ptrtoint ptr %i.aea to i64
  %i.aec = ptrtoint ptr %i.ady to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  call void @_ZdlPvm(ptr noundef nonnull %i.ady, i64 noundef %i.aed) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417: ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, %bb.em
  %i.aee = load ptr, ptr %66, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i418 = icmp eq ptr %i.aee, null
  br i1 %.not.i.i.i418, label %_ZNSt6vectorIiSaIiEED2Ev.exit419, label %bb.en

bb.en:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417
  %i.aef = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !108
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %i.aee to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %i.aee, i64 noundef %i.aej) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

_ZNSt6vectorIiSaIiEED2Ev.exit419:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #23
  %i.aek = mul nsw i32 %i.fd, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  %i.ael = sext i32 %i.aek to i64                 ; 4 uses
  %i.aem = shl nuw nsw i64 %i.ael, 4
  %i.aen = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 26 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 17 uses
  br i1 %i.ff, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit419
  br i1 %i.fg, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871, label %.sink.split.i869

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871: ; preds = %bb.eo
  %i.aep = call noalias ptr @malloc(i64 noundef %i.aem) #37 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %bb.ep, label %.sink.split.i869

bb.ep:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871
  %i.aer = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aer, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.aer, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc873 unwind label %bb.eq

.noexc873:                                        ; preds = %bb.ep
  unreachable

.sink.split.i869:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871, %bb.eo
  %.sink.i870 = phi ptr [ %i.aep, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871 ], [ null, %bb.eo ] ; 2 uses
  store ptr %.sink.i870, ptr %69, align 8, !tbaa !34
  br label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aes = landingpad { ptr, i32 }
          cleanup
  br label %.body423

bb.er:                                            ; preds = %.sink.split.i869, %_ZNSt6vectorIiSaIiEED2Ev.exit419
  %i.aet = phi ptr [ %.sink.i870, %.sink.split.i869 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ] ; 2 uses
  store i64 %i.ael, ptr %i.aen, align 8, !tbaa !31
  store i64 4, ptr %i.aeo, align 8, !tbaa !33
  %i.aeu = getelementptr inbounds [4 x i8], ptr %.sroa.01383.0, i64 %i.fe ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23, !noalias !752
  store ptr %i.aet, ptr %22, align 8, !tbaa !173, !alias.scope !755, !noalias !752
  %i.aev = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.fe, ptr %i.aev, align 8, !tbaa !140, !alias.scope !755, !noalias !752
  %i.aew = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 1, ptr %i.aew, align 8, !tbaa !140, !alias.scope !755, !noalias !752
  %i.aex = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %69, ptr %i.aex, align 8, !tbaa !178, !alias.scope !755, !noalias !752
  %i.aey = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.aez = getelementptr inbounds nuw i8, ptr %22, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aey, i8 0, i64 16, i1 false), !noalias !752
  store i64 %i.ael, ptr %i.aez, align 8, !tbaa !180, !alias.scope !755, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23, !noalias !752
  store ptr %i.aeu, ptr %18, align 8, !tbaa !183, !noalias !752
  %i.afa = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.fe, ptr %i.afa, align 8, !tbaa !140, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23, !noalias !752
  store ptr %i.aet, ptr %19, align 8, !tbaa !185, !noalias !752
  %i.afb = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.ael, ptr %i.afb, align 8, !tbaa !140, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23, !noalias !752
  store ptr %19, ptr %20, align 8, !tbaa !187, !noalias !752
  %i.afc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.afc, align 8, !tbaa !189, !noalias !752
  %i.afd = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %21, ptr %i.afd, align 8, !tbaa !191, !noalias !752
  %i.afe = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %22, ptr %i.afe, align 8, !tbaa !193, !noalias !752
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %._crit_edge.i427 unwind label %bb.gj

._crit_edge.i427:                                 ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23, !noalias !752
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23, !noalias !752
  %i.aff = load i64, ptr %i.aeo, align 8, !tbaa !33
  %.not = icmp eq i64 %i.aff, 1                   ; 5 uses
  %.sroa.15.0 = select i1 %.not, i64 %i.fe, i64 0 ; 12 uses
  %i.afg = load ptr, ptr %69, align 8, !tbaa !34, !noalias !758 ; 2 uses
  %i.afh = ptrtoaddr ptr %i.afg to i64            ; 2 uses
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.afg, i64 %.sroa.15.0
  %i.afj = load i64, ptr %i.aen, align 8, !tbaa !31, !noalias !758 ; 3 uses
  %i.afk = select i1 %.not, i64 0, i64 %i.afj
  %i.afl = getelementptr inbounds [4 x i8], ptr %i.afi, i64 %i.afk ; 14 uses
  %i.afm = ptrtoint ptr %i.afl to i64             ; 2 uses
  %i.afn = and i64 %i.afm, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.afn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.es, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.es:                                            ; preds = %._crit_edge.i427
  %i.afo = lshr exact i64 %i.afm, 2
  %i.afp = sub nsw i64 0, %i.afo
  %i.afq = and i64 %i.afp, 3
  %i.afr = call i64 @llvm.smin.i64(i64 %i.afq, i64 %i.fe)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.es, %._crit_edge.i427
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afr, %bb.es ], [ %i.fe, %._crit_edge.i427 ] ; 11 uses
  %i.afs = sub nsw i64 %i.fe, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aft = sdiv i64 %i.afs, 4
  %i.afu = shl nsw i64 %i.aft, 2                  ; 2 uses
  %i.afv = add nsw i64 %i.afu, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.afw = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.afw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check1753 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 20
  br i1 %min.iters.check1753, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414, label %vector.memcheck1749

vector.memcheck1749:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.afx = select i1 %.not, i64 %i.fe, i64 %i.afj
  %i.afy = shl i64 %i.afx, 2
  %i.afz = add i64 %i.afy, %i.afh
  %i.aga = sub i64 %.sroa.01383.01750, %i.afz
  %diff.check1751 = icmp ugt i64 %i.aga, -32
  br i1 %diff.check1751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414, label %vector.ph1754

vector.ph1754:                                    ; preds = %vector.memcheck1749
  %n.vec1755 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body1756

vector.body1756:                                  ; preds = %vector.body1756, %vector.ph1754
  %index1757 = phi i64 [ 0, %vector.ph1754 ], [ %index.next1760, %vector.body1756 ] ; 3 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %index1757 ; 2 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %index1757 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %wide.load1758 = load <4 x i32>, ptr %i.agc, align 4, !tbaa !60
  %wide.load1759 = load <4 x i32>, ptr %i.agd, align 4, !tbaa !60
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  store <4 x i32> %wide.load1758, ptr %i.agb, align 4, !tbaa !60
  store <4 x i32> %wide.load1759, ptr %i.age, align 4, !tbaa !60
  %index.next1760 = add nuw i64 %index1757, 8     ; 2 uses
  %i.agf = icmp eq i64 %index.next1760, %n.vec1755
  br i1 %i.agf, label %middle.block1761, label %vector.body1756, !llvm.loop !761

middle.block1761:                                 ; preds = %vector.body1756
  %cmp.n1762 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec1755
  br i1 %cmp.n1762, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414:     ; preds = %vector.memcheck1749, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block1761
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck1749 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec1755, %middle.block1761 ] ; 3 uses
  %xtraiter2454 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod2455.not = icmp eq i64 %xtraiter2454, 0
  br i1 %lcmp.mod2455.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.agj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414 ] ; 3 uses
  %prol.iter2456 = phi i64 [ %prol.iter2456.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414 ]
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !60
  store i32 %i.agi, ptr %i.agg, align 4, !tbaa !60
  %i.agj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter2456.next = add i64 %prol.iter2456, 1 ; 2 uses
  %prol.iter2456.cmp.not = icmp eq i64 %prol.iter2456.next, %xtraiter2454
  br i1 %prol.iter2456.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !762

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414 ], [ %i.agj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.agk = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agl = icmp ugt i64 %i.agk, -4
  br i1 %i.agl, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ahb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !60
  store i32 %i.ago, ptr %i.agm, align 4, !tbaa !60
  %i.agp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %i.agp
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %i.agp
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !60
  store i32 %i.ags, ptr %i.agq, align 4, !tbaa !60
  %i.agt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %i.agt
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %i.agt
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !60
  store i32 %i.agw, ptr %i.agu, align 4, !tbaa !60
  %i.agx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %i.agx
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %i.agx
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !60
  store i32 %i.aha, ptr %i.agy, align 4, !tbaa !60
  %i.ahb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i432.3 = icmp eq i64 %i.ahb, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i432.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !763

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block1761, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ahc = icmp sgt i64 %i.afs, 3
  br i1 %i.ahc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i431, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i430

._crit_edge.i.i.i.i.i.i.i.i.i.i.i430:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i431, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ahd = icmp slt i64 %i.afv, %i.fe
  br i1 %i.ahd, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i433

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i430
  %i.ahe = sext i32 %.0111.lcssa to i64           ; 2 uses
  %i.ahf = sext i32 %.0109.lcssa to i64           ; 2 uses
  %i.ahg = add nsw i64 %i.ahe, %i.ahf
  %i.ahh = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.afu
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLi3ELi1EdLi3ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a
  %.pre29.i406 = ptrtoint ptr %.pre12.i404 to i64
  %.pre31.i407 = sub i64 %.pre27.i405, %.pre29.i406
  %.pre33.i408 = ashr exact i64 %.pre31.i407, 2
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.abd = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.abe = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !69
  %i.abg = load ptr, ptr %i.abd, align 8, !tbaa !74 ; 2 uses
  %i.abh = ptrtoint ptr %i.abf to i64
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = ashr exact i64 %i.abj, 2               ; 2 uses
  %.not8.i410 = icmp eq i64 %i.abk, %i.aax        ; 2 uses
  %spec.select1438 = select i1 %.not8.i410, i64 0, i64 %i.aax
  %spec.select1439 = select i1 %.not8.i410, i64 3, i64 0
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i398, %._crit_edge13.i376
  %.sroa.51316.0 = phi i64 [ %spec.select1438, %bb.eg ], [ 0, %._crit_edge13.i376 ], [ %i.aax, %._crit_edge.i398 ]
  %.pre-phi26.i387 = phi i64 [ %i.abk, %bb.eg ], [ %.pre25.i386, %._crit_edge13.i376 ], [ %.pre33.i408, %._crit_edge.i398 ] ; 4 uses
  %i.abl = phi i64 [ 0, %bb.eg ], [ %.pre19.i382, %._crit_edge13.i376 ], [ %i.abc, %._crit_edge.i398 ] ; 2 uses
  %i.abm = phi ptr [ %i.abg, %bb.eg ], [ %.pre17.i380, %._crit_edge13.i376 ], [ %.pre12.i404, %._crit_edge.i398 ] ; 8 uses
  %i.abn = phi i64 [ %spec.select1439, %bb.eg ], [ %i.aay, %._crit_edge13.i376 ], [ 0, %._crit_edge.i398 ]
  %i.abo = getelementptr inbounds [4 x i8], ptr %.sroa.01383.0, i64 %.sroa.51316.0
  %i.abp = mul nsw i64 %i.abn, %i.ex
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abo, i64 %i.abp
  %i.abr = load ptr, ptr %67, align 8, !tbaa !706, !nonnull !14, !align !83 ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !34
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !31
  %i.abv = icmp sgt i64 %i.abl, 0
  %i.abw = icmp sgt i64 %.pre-phi26.i387, 0
  %or.cond.i388 = select i1 %i.abv, i1 %i.abw, i1 false
  br i1 %or.cond.i388, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader:    ; preds = %bb.eh
  %xtraiter2448 = and i64 %.pre-phi26.i387, 3     ; 3 uses
  %i.abx = icmp ult i64 %.pre-phi26.i387, 4
  %unroll_iter2452 = and i64 %.pre-phi26.i387, 9223372036854775804
  %lcmp.mod2450.not = icmp eq i64 %xtraiter2448, 0
  %lcmp.mod2451 = icmp ne i64 %xtraiter2448, 0
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i389

.preheader.i.i.i.i.i.i.i.i.i.i.i389:              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395
  %.0810.i.i.i.i.i.i.i.i.i.i.i390 = phi i64 [ %i.ach, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.preheader ] ; 3 uses
  %i.aby = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i390, %i.ex
  %i.abz = getelementptr [4 x i8], ptr %i.abq, i64 %i.aby ; 5 uses
  %i.aca = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i390, %i.abu
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391 = getelementptr [4 x i8], ptr %i.abs, i64 %i.aca ; 5 uses
  br i1 %i.abx, label %.epil.preheader2447, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new

._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new
  br i1 %lcmp.mod2450.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395, label %.epil.preheader2447

.epil.preheader2447:                              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i389
  %.09.i.i.i.i.i.i.i.i.i.i.i392.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389 ], [ %i.adf, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2451)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ei, %.epil.preheader2447
  %.09.i.i.i.i.i.i.i.i.i.i.i392.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i392.epil.init, %.epil.preheader2447 ], [ %i.acg, %bb.ei ] ; 3 uses
  %epil.iter2449 = phi i64 [ 0, %.epil.preheader2447 ], [ %epil.iter2449.next, %bb.ei ]
  %i.acb = getelementptr [4 x i8], ptr %i.abz, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392.epil
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392.epil
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !60
  %i.ace = sext i32 %i.acd to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.ace
  %i.acf = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.epil, align 4, !tbaa !60
  store i32 %i.acf, ptr %i.acb, align 4, !tbaa !60
  %i.acg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i392.epil, 1
  %epil.iter2449.next = add i64 %epil.iter2449, 1 ; 2 uses
  %epil.iter2449.cmp.not = icmp eq i64 %epil.iter2449.next, %xtraiter2448
  br i1 %epil.iter2449.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395, label %bb.ei, !llvm.loop !1048

._crit_edge.i.i.i.i.i.i.i.i.i.i.i395:             ; preds = %bb.ei, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa
  %i.ach = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i390, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i396 = icmp eq i64 %i.ach, %i.abl
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i396, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389, !llvm.loop !710

.preheader.i.i.i.i.i.i.i.i.i.i.i389.new:          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i389, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new
  %.09.i.i.i.i.i.i.i.i.i.i.i392 = phi i64 [ %i.adf, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389 ] ; 6 uses
  %niter2453 = phi i64 [ %niter2453.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i389 ]
  %i.aci = getelementptr [4 x i8], ptr %i.abz, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %.09.i.i.i.i.i.i.i.i.i.i.i392
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !60
  %i.acl = sext i32 %i.ack to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.acl
  %i.acm = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393, align 4, !tbaa !60
  store i32 %i.acm, ptr %i.aci, align 4, !tbaa !60
  %i.acn = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 1 ; 2 uses
  %i.aco = getelementptr [4 x i8], ptr %i.abz, i64 %i.acn
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %i.acn
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !60
  %i.acr = sext i32 %i.acq to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.acr
  %i.acs = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.1, align 4, !tbaa !60
  store i32 %i.acs, ptr %i.aco, align 4, !tbaa !60
  %i.act = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 2 ; 2 uses
  %i.acu = getelementptr [4 x i8], ptr %i.abz, i64 %i.act
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %i.act
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !60
  %i.acx = sext i32 %i.acw to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.acx
  %i.acy = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.2, align 4, !tbaa !60
  store i32 %i.acy, ptr %i.acu, align 4, !tbaa !60
  %i.acz = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 3 ; 2 uses
  %i.ada = getelementptr [4 x i8], ptr %i.abz, i64 %i.acz
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.abm, i64 %i.acz
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !60
  %i.add = sext i32 %i.adc to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i393.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i391, i64 %i.add
  %i.ade = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i393.3, align 4, !tbaa !60
  store i32 %i.ade, ptr %i.ada, align 4, !tbaa !60
  %i.adf = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i392, 4 ; 2 uses
  %niter2453.next.3 = add nuw nsw i64 %niter2453, 4 ; 2 uses
  %niter2453.ncmp.3 = icmp eq i64 %niter2453.next.3, %unroll_iter2452
  br i1 %niter2453.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i389.new, !llvm.loop !711

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.eh
  %.not.i.i.i.i411 = icmp eq ptr %i.abm, null
  br i1 %.not.i.i.i.i411, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i395, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.adg = getelementptr inbounds nuw i8, ptr %67, i64 24
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !108
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = ptrtoint ptr %i.abm to i64
  %i.adk = sub i64 %i.adi, %i.adj
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef %i.adk) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.adl = load ptr, ptr %68, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i413 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorIiSaIiEED2Ev.exit414, label %bb.ej

bb.ej:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412
  %i.adm = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !108
  %i.ado = ptrtoint ptr %i.adn to i64
  %i.adp = ptrtoint ptr %i.adl to i64
  %i.adq = sub i64 %i.ado, %i.adp
  call void @_ZdlPvm(ptr noundef nonnull %i.adl, i64 noundef %i.adq) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit414

_ZNSt6vectorIiSaIiEED2Ev.exit414:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit412, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i.i.i.i, label %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414
  call void @_ZdlPvm(ptr noundef nonnull %i.aaz, i64 noundef %i.ys) #35
  br label %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit

_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit414, %bb.ek
  %.not.i.i.i.i.i415 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i.i.i.i415, label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, label %bb.el

bb.el:                                            ; preds = %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef %i.yn) #35
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit

_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit: ; preds = %_ZN5Eigen7ReverseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, %bb.el
  %i.adr = load ptr, ptr %i.yh, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i416 = icmp eq ptr %i.adr, null
  br i1 %.not.i.i.i.i416, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417, label %bb.em

bb.em:                                            ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit
  %i.ads = getelementptr inbounds nuw i8, ptr %65, i64 24
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !108
  %i.adu = ptrtoint ptr %i.adt to i64
  %i.adv = ptrtoint ptr %i.adr to i64
  %i.adw = sub i64 %i.adu, %i.adv
  call void @_ZdlPvm(ptr noundef nonnull %i.adr, i64 noundef %i.adw) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417: ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EED2Ev.exit, %bb.em
  %i.adx = load ptr, ptr %66, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i418 = icmp eq ptr %i.adx, null
  br i1 %.not.i.i.i418, label %_ZNSt6vectorIiSaIiEED2Ev.exit419, label %bb.en

bb.en:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417
  %i.ady = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !108
  %i.aea = ptrtoint ptr %i.adz to i64
  %i.aeb = ptrtoint ptr %i.adx to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  call void @_ZdlPvm(ptr noundef nonnull %i.adx, i64 noundef %i.aec) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

_ZNSt6vectorIiSaIiEED2Ev.exit419:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit417, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #23
  %i.aed = mul nsw i32 %i.ew, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  %i.aee = sext i32 %i.aed to i64                 ; 4 uses
  %i.aef = shl nuw nsw i64 %i.aee, 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 26 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 17 uses
  br i1 %i.ey, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit419
  br i1 %i.ez, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871, label %.sink.split.i869

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871: ; preds = %bb.eo
  %i.aei = call noalias ptr @malloc(i64 noundef %i.aef) #37 ; 2 uses
  %i.aej = icmp eq ptr %i.aei, null
  br i1 %i.aej, label %bb.ep, label %.sink.split.i869

bb.ep:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871
  %i.aek = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aek, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.aek, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc873 unwind label %bb.eq

.noexc873:                                        ; preds = %bb.ep
  unreachable

.sink.split.i869:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871, %bb.eo
  %.sink.i870 = phi ptr [ %i.aei, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i871 ], [ null, %bb.eo ] ; 2 uses
  store ptr %.sink.i870, ptr %69, align 8, !tbaa !34
  br label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %.body423

bb.er:                                            ; preds = %.sink.split.i869, %_ZNSt6vectorIiSaIiEED2Ev.exit419
  %i.aem = phi ptr [ %.sink.i870, %.sink.split.i869 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit419 ] ; 2 uses
  store i64 %i.aee, ptr %i.aeg, align 8, !tbaa !31
  store i64 4, ptr %i.aeh, align 8, !tbaa !33
  %i.aen = getelementptr inbounds [4 x i8], ptr %.sroa.01383.0, i64 %i.ex ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23, !noalias !1049
  store ptr %i.aem, ptr %22, align 8, !tbaa !173, !alias.scope !1052, !noalias !1049
  %i.aeo = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ex, ptr %i.aeo, align 8, !tbaa !140, !alias.scope !1052, !noalias !1049
  %i.aep = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 1, ptr %i.aep, align 8, !tbaa !140, !alias.scope !1052, !noalias !1049
  %i.aeq = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %69, ptr %i.aeq, align 8, !tbaa !178, !alias.scope !1052, !noalias !1049
  %i.aer = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.aes = getelementptr inbounds nuw i8, ptr %22, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aer, i8 0, i64 16, i1 false), !noalias !1049
  store i64 %i.aee, ptr %i.aes, align 8, !tbaa !180, !alias.scope !1052, !noalias !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23, !noalias !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23, !noalias !1049
  store ptr %i.aen, ptr %18, align 8, !tbaa !183, !noalias !1049
  %i.aet = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.ex, ptr %i.aet, align 8, !tbaa !140, !noalias !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23, !noalias !1049
  store ptr %i.aem, ptr %19, align 8, !tbaa !185, !noalias !1049
  %i.aeu = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.aee, ptr %i.aeu, align 8, !tbaa !140, !noalias !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23, !noalias !1049
  store ptr %19, ptr %20, align 8, !tbaa !187, !noalias !1049
  %i.aev = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.aev, align 8, !tbaa !189, !noalias !1049
  %i.aew = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %21, ptr %i.aew, align 8, !tbaa !191, !noalias !1049
  %i.aex = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %22, ptr %i.aex, align 8, !tbaa !193, !noalias !1049
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS4_IS6_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSD_(ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %._crit_edge.i427 unwind label %bb.gj

._crit_edge.i427:                                 ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23, !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23, !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23, !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23, !noalias !1049
  %i.aey = load i64, ptr %i.aeh, align 8, !tbaa !33
  %.not = icmp eq i64 %i.aey, 1                   ; 5 uses
  %.sroa.15.0 = select i1 %.not, i64 %i.ex, i64 0 ; 12 uses
  %i.aez = load ptr, ptr %69, align 8, !tbaa !34, !noalias !1055 ; 2 uses
  %i.afa = ptrtoaddr ptr %i.aez to i64            ; 2 uses
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %.sroa.15.0
  %i.afc = load i64, ptr %i.aeg, align 8, !tbaa !31, !noalias !1055 ; 3 uses
  %i.afd = select i1 %.not, i64 0, i64 %i.afc
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.afb, i64 %i.afd ; 14 uses
  %i.aff = ptrtoint ptr %i.afe to i64             ; 2 uses
  %i.afg = and i64 %i.aff, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.afg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.es, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.es:                                            ; preds = %._crit_edge.i427
  %i.afh = lshr exact i64 %i.aff, 2
  %i.afi = sub nsw i64 0, %i.afh
  %i.afj = and i64 %i.afi, 3
  %i.afk = call i64 @llvm.smin.i64(i64 %i.afj, i64 %i.ex)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.es, %._crit_edge.i427
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afk, %bb.es ], [ %i.ex, %._crit_edge.i427 ] ; 11 uses
  %i.afl = sub nsw i64 %i.ex, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.afm = sdiv i64 %i.afl, 4
  %i.afn = shl nsw i64 %i.afm, 2                  ; 2 uses
  %i.afo = add nsw i64 %i.afn, %.0.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.afp = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.afp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check1753 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 20
  br i1 %min.iters.check1753, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414, label %vector.memcheck1749

vector.memcheck1749:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.afq = select i1 %.not, i64 %i.ex, i64 %i.afc
  %i.afr = shl i64 %i.afq, 2
  %i.afs = add i64 %i.afr, %i.afa
  %i.aft = sub i64 %.sroa.01383.01750, %i.afs
  %diff.check1751 = icmp ugt i64 %i.aft, -32
  br i1 %diff.check1751, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414, label %vector.ph1754

vector.ph1754:                                    ; preds = %vector.memcheck1749
  %n.vec1755 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body1756

vector.body1756:                                  ; preds = %vector.body1756, %vector.ph1754
  %index1757 = phi i64 [ 0, %vector.ph1754 ], [ %index.next1760, %vector.body1756 ] ; 3 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %index1757 ; 2 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %index1757 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %wide.load1758 = load <4 x i32>, ptr %i.afv, align 4, !tbaa !60
  %wide.load1759 = load <4 x i32>, ptr %i.afw, align 4, !tbaa !60
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  store <4 x i32> %wide.load1758, ptr %i.afu, align 4, !tbaa !60
  store <4 x i32> %wide.load1759, ptr %i.afx, align 4, !tbaa !60
  %index.next1760 = add nuw i64 %index1757, 8     ; 2 uses
  %i.afy = icmp eq i64 %index.next1760, %n.vec1755
  br i1 %i.afy, label %middle.block1761, label %vector.body1756, !llvm.loop !1058

middle.block1761:                                 ; preds = %vector.body1756
  %cmp.n1762 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec1755
  br i1 %cmp.n1762, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414:     ; preds = %vector.memcheck1749, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block1761
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck1749 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec1755, %middle.block1761 ] ; 3 uses
  %xtraiter2454 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod2455.not = icmp eq i64 %xtraiter2454, 0
  br i1 %lcmp.mod2455.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.agc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414 ] ; 3 uses
  %prol.iter2456 = phi i64 [ %prol.iter2456.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414 ]
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !60
  store i32 %i.agb, ptr %i.afz, align 4, !tbaa !60
  %i.agc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter2456.next = add i64 %prol.iter2456, 1 ; 2 uses
  %prol.iter2456.cmp.not = icmp eq i64 %prol.iter2456.next, %xtraiter2454
  br i1 %prol.iter2456.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1059

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader2414 ], [ %i.agc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.agd = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  %i.age = icmp ugt i64 %i.agd, -4
  br i1 %i.age, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !60
  store i32 %i.agh, ptr %i.agf, align 4, !tbaa !60
  %i.agi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %i.agi
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %i.agi
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !60
  store i32 %i.agl, ptr %i.agj, align 4, !tbaa !60
  %i.agm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %i.agm
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %i.agm
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !60
  store i32 %i.agp, ptr %i.agn, align 4, !tbaa !60
  %i.agq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %i.agq
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01383.0, i64 %i.agq
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !60
  store i32 %i.agt, ptr %i.agr, align 4, !tbaa !60
  %i.agu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i432.3 = icmp eq i64 %i.agu, %.0.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i432.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1060

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block1761, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.agv = icmp sgt i64 %i.afl, 3
  br i1 %i.agv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i431, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i430

._crit_edge.i.i.i.i.i.i.i.i.i.i.i430:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i431, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS5_INS6_IS8_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.agw = icmp slt i64 %i.afo, %i.ex
  br i1 %i.agw, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i433

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i430
  %i.agx = sext i32 %.0111.lcssa to i64           ; 2 uses
  %i.agy = sext i32 %.0109.lcssa to i64           ; 2 uses
  %i.agz = add nsw i64 %i.agx, %i.agy
  %i.aha = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.afn
end_hunk_2
