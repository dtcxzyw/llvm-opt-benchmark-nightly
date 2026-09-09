Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 288
begin_hunk_0_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a

.lr.ph.i.i47.i.preheader:                         ; preds = %.noexc868
  %min.iters.check13962 = icmp samesign ult i64 %.0605588, 8
  %i.gu = sub i64 %i.gi, %i.gs
  %diff.check13960 = icmp ugt i64 %i.gu, -32
  %or.cond = select i1 %min.iters.check13962, i1 true, i1 %diff.check13960
  br i1 %or.cond, label %.lr.ph.i.i47.i.preheader14009, label %vector.ph13963

vector.ph13963:                                   ; preds = %.lr.ph.i.i47.i.preheader
  %n.vec13964 = and i64 %.0605588, 9223372036854775800 ; 4 uses
  %i.gv = shl i64 %n.vec13964, 2
  %i.gw = getelementptr i8, ptr %i.gh, i64 %i.gv  ; 2 uses
  br label %vector.body13965

vector.body13965:                                 ; preds = %vector.body13965, %vector.ph13963
  %index13966 = phi i64 [ 0, %vector.ph13963 ], [ %index.next13970, %vector.body13965 ] ; 3 uses
  %i.gx = shl i64 %index13966, 2
  %next.gep13967 = getelementptr i8, ptr %i.gh, i64 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %index13966 ; 2 uses
  %i.gz = getelementptr i8, ptr %next.gep13967, i64 16
  %wide.load13968 = load <4 x i32>, ptr %next.gep13967, align 4, !tbaa !211
  %wide.load13969 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !211
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <4 x i32> %wide.load13968, ptr %i.gy, align 4, !tbaa !211
  store <4 x i32> %wide.load13969, ptr %i.ha, align 4, !tbaa !211
  %index.next13970 = add nuw i64 %index13966, 8   ; 2 uses
  %i.hb = icmp eq i64 %index.next13970, %n.vec13964
  br i1 %i.hb, label %middle.block13971, label %vector.body13965, !llvm.loop !1613

middle.block13971:                                ; preds = %vector.body13965
  %cmp.n13972 = icmp eq i64 %.0605588, %n.vec13964
  br i1 %cmp.n13972, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i, label %.lr.ph.i.i47.i.preheader14009

.lr.ph.i.i47.i.preheader14009:                    ; preds = %.lr.ph.i.i47.i.preheader, %middle.block13971
  %.ph14010 = phi ptr [ %i.gh, %.lr.ph.i.i47.i.preheader ], [ %i.gw, %middle.block13971 ] ; 2 uses
  %.012.i.i49.i.ph = phi i64 [ 0, %.lr.ph.i.i47.i.preheader ], [ %n.vec13964, %middle.block13971 ] ; 3 uses
  %xtraiter = and i64 %.0605588, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol

.lr.ph.i.i47.i.prol:                              ; preds = %.lr.ph.i.i47.i.preheader14009, %.lr.ph.i.i47.i.prol
  %i.hc = phi ptr [ %i.hf, %.lr.ph.i.i47.i.prol ], [ %.ph14010, %.lr.ph.i.i47.i.preheader14009 ] ; 2 uses
  %.012.i.i49.i.prol = phi i64 [ %i.hg, %.lr.ph.i.i47.i.prol ], [ %.012.i.i49.i.ph, %.lr.ph.i.i47.i.preheader14009 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i47.i.prol ], [ 0, %.lr.ph.i.i47.i.preheader14009 ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.012.i.i49.i.prol
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !211
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !211
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 3 uses
  %i.hg = add nuw nsw i64 %.012.i.i49.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol, !llvm.loop !1614

.lr.ph.i.i47.i.prol.loopexit:                     ; preds = %.lr.ph.i.i47.i.prol, %.lr.ph.i.i47.i.preheader14009
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i47.i.preheader14009 ], [ %i.hf, %.lr.ph.i.i47.i.prol ]
  %.unr = phi ptr [ %.ph14010, %.lr.ph.i.i47.i.preheader14009 ], [ %i.hf, %.lr.ph.i.i47.i.prol ]
  %.012.i.i49.i.unr = phi i64 [ %.012.i.i49.i.ph, %.lr.ph.i.i47.i.preheader14009 ], [ %i.hg, %.lr.ph.i.i47.i.prol ]
  %i.hh = sub nsw i64 %.012.i.i49.i.ph, %.0605588
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i, label %.lr.ph.i.i47.i

.lr.ph.i.i47.i:                                   ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i
  %i.hj = phi ptr [ %i.hy, %.lr.ph.i.i47.i ], [ %.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 5 uses
  %.012.i.i49.i = phi i64 [ %i.hz, %.lr.ph.i.i47.i ], [ %.012.i.i49.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.012.i.i49.i
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !211
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !211
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.012.i.i49.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hp = load i32, ptr %i.hm, align 4, !tbaa !211
  store i32 %i.hp, ptr %i.ho, align 4, !tbaa !211
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.012.i.i49.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i32, ptr %i.hq, align 4, !tbaa !211
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !211
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.012.i.i49.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.hx = load i32, ptr %i.hu, align 4, !tbaa !211
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !211
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hz = add nuw nsw i64 %.012.i.i49.i, 4        ; 2 uses
  %exitcond.not.i.i50.i.3 = icmp eq i64 %i.hz, %.0605588
  br i1 %exitcond.not.i.i50.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i, label %.lr.ph.i.i47.i, !llvm.loop !1615

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i: ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i, %middle.block13971, %.noexc868
  %.sroa.090.0.i = phi ptr [ %i.gh, %.noexc868 ], [ %i.gw, %middle.block13971 ], [ %.lcssa.unr, %.lr.ph.i.i47.i.prol.loopexit ], [ %i.hy, %.lr.ph.i.i47.i ] ; 5 uses
  %.sroa.090.0.i13943 = ptrtoaddr ptr %.sroa.090.0.i to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gl ; 6 uses
  %i.ib = sub nsw i64 %.sink1.i.i, %.0605588      ; 4 uses
  %.not.i.i863 = icmp eq i64 %.sink1.i.i, %.0605588
  br i1 %.not.i.i863, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864.preheader

.lr.ph.i.i864.preheader:                          ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i
  %min.iters.check13946 = icmp ult i64 %i.ib, 8
  br i1 %min.iters.check13946, label %.lr.ph.i.i864.preheader14007, label %vector.memcheck13942

vector.memcheck13942:                             ; preds = %.lr.ph.i.i864.preheader
  %i.ic = add i64 %i.dc, %i.gs
  %i.id = sub i64 %.sroa.090.0.i13943, %i.ic
  %diff.check13944 = icmp ugt i64 %i.id, -32
  br i1 %diff.check13944, label %.lr.ph.i.i864.preheader14007, label %vector.ph13947

vector.ph13947:                                   ; preds = %vector.memcheck13942
  %n.vec13948 = and i64 %i.ib, -8                 ; 4 uses
  %i.ie = shl i64 %n.vec13948, 2
  %i.if = getelementptr i8, ptr %.sroa.090.0.i, i64 %i.ie
  br label %vector.body13949

vector.body13949:                                 ; preds = %vector.body13949, %vector.ph13947
  %index13950 = phi i64 [ 0, %vector.ph13947 ], [ %index.next13954, %vector.body13949 ] ; 3 uses
  %i.ig = shl i64 %index13950, 2
  %next.gep13951 = getelementptr i8, ptr %.sroa.090.0.i, i64 %i.ig ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index13950 ; 2 uses
  %i.ii = getelementptr i8, ptr %next.gep13951, i64 16
  %wide.load13952 = load <4 x i32>, ptr %next.gep13951, align 4, !tbaa !211
  %wide.load13953 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !211
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <4 x i32> %wide.load13952, ptr %i.ih, align 4, !tbaa !211
  store <4 x i32> %wide.load13953, ptr %i.ij, align 4, !tbaa !211
  %index.next13954 = add nuw i64 %index13950, 8   ; 2 uses
  %i.ik = icmp eq i64 %index.next13954, %n.vec13948
  br i1 %i.ik, label %middle.block13955, label %vector.body13949, !llvm.loop !1616

middle.block13955:                                ; preds = %vector.body13949
  %cmp.n13956 = icmp eq i64 %i.ib, %n.vec13948
  br i1 %cmp.n13956, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864.preheader14007

.lr.ph.i.i864.preheader14007:                     ; preds = %vector.memcheck13942, %.lr.ph.i.i864.preheader, %middle.block13955
  %.ph14008 = phi ptr [ %.sroa.090.0.i, %vector.memcheck13942 ], [ %.sroa.090.0.i, %.lr.ph.i.i864.preheader ], [ %i.if, %middle.block13955 ] ; 2 uses
  %.012.i.i.ph = phi i64 [ 0, %vector.memcheck13942 ], [ 0, %.lr.ph.i.i864.preheader ], [ %n.vec13948, %middle.block13955 ] ; 3 uses
  %i.il = sub nsw i64 %.sink1.i.i, %.0605588
  %xtraiter16153 = and i64 %i.il, 3               ; 2 uses
  %lcmp.mod16154.not = icmp eq i64 %xtraiter16153, 0
  br i1 %lcmp.mod16154.not, label %.lr.ph.i.i864.prol.loopexit, label %.lr.ph.i.i864.prol

.lr.ph.i.i864.prol:                               ; preds = %.lr.ph.i.i864.preheader14007, %.lr.ph.i.i864.prol
  %i.im = phi ptr [ %i.ip, %.lr.ph.i.i864.prol ], [ %.ph14008, %.lr.ph.i.i864.preheader14007 ] ; 2 uses
  %.012.i.i.prol = phi i64 [ %i.iq, %.lr.ph.i.i864.prol ], [ %.012.i.i.ph, %.lr.ph.i.i864.preheader14007 ] ; 2 uses
  %prol.iter16155 = phi i64 [ %prol.iter16155.next, %.lr.ph.i.i864.prol ], [ 0, %.lr.ph.i.i864.preheader14007 ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.012.i.i.prol
  %i.io = load i32, ptr %i.im, align 4, !tbaa !211
  store i32 %i.io, ptr %i.in, align 4, !tbaa !211
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.iq = add nuw i64 %.012.i.i.prol, 1           ; 2 uses
  %prol.iter16155.next = add i64 %prol.iter16155, 1 ; 2 uses
  %prol.iter16155.cmp.not = icmp eq i64 %prol.iter16155.next, %xtraiter16153
  br i1 %prol.iter16155.cmp.not, label %.lr.ph.i.i864.prol.loopexit, label %.lr.ph.i.i864.prol, !llvm.loop !1617

.lr.ph.i.i864.prol.loopexit:                      ; preds = %.lr.ph.i.i864.prol, %.lr.ph.i.i864.preheader14007
  %.unr16156 = phi ptr [ %.ph14008, %.lr.ph.i.i864.preheader14007 ], [ %i.ip, %.lr.ph.i.i864.prol ]
  %.012.i.i.unr = phi i64 [ %.012.i.i.ph, %.lr.ph.i.i864.preheader14007 ], [ %i.iq, %.lr.ph.i.i864.prol ]
  %i.ir = sub nsw i64 %.0605588, %.sink1.i.i
  %i.is = add i64 %i.ir, %.012.i.i.ph
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864

.lr.ph.i.i864:                                    ; preds = %.lr.ph.i.i864.prol.loopexit, %.lr.ph.i.i864
  %i.iu = phi ptr [ %i.jj, %.lr.ph.i.i864 ], [ %.unr16156, %.lr.ph.i.i864.prol.loopexit ] ; 5 uses
  %.012.i.i = phi i64 [ %i.jk, %.lr.ph.i.i864 ], [ %.012.i.i.unr, %.lr.ph.i.i864.prol.loopexit ] ; 5 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.012.i.i
  %i.iw = load i32, ptr %i.iu, align 4, !tbaa !211
  store i32 %i.iw, ptr %i.iv, align 4, !tbaa !211
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.012.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.ix, align 4, !tbaa !211
  store i32 %i.ja, ptr %i.iz, align 4, !tbaa !211
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.012.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jb, align 4, !tbaa !211
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !211
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.012.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.ji = load i32, ptr %i.jf, align 4, !tbaa !211
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !211
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.jk = add nuw i64 %.012.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.jk, %i.ib
  br i1 %exitcond.not.i.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864, !llvm.loop !1618

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i: ; preds = %.lr.ph.i.i864.prol.loopexit, %.lr.ph.i.i864, %middle.block13955, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i
  %i.jl = load i64, ptr %13, align 8, !tbaa !197
  %i.jm = trunc i64 %i.jl to i1
  br i1 %i.jm, label %bb.z, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i

bb.z:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i
  %i.jn = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.jo = load i64, ptr %i.y, align 8, !tbaa !198
  %i.jp = shl i64 %i.jo, 2
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jp) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i: ; preds = %bb.z, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i
  store ptr %i.gr, ptr %i.z, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i, ptr %i.y, align 8, !tbaa !198
  %i.jq = shl i64 %i.gm, 1
  %i.jr = or disjoint i64 %i.jq, 1
  br label %bb.af

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.gl, i64 %.sink1.i.i) ; 5 uses
  %i.js = getelementptr [4 x i8], ptr %i.gh, i64 %.sroa.speculated.i ; 12 uses
  %i.jt = sub i64 %i.gm, %.sroa.speculated.i      ; 5 uses
  %i.ju = sub nuw nsw i64 %.sroa.speculated.i, %i.gl ; 4 uses
  %i.jv = getelementptr [4 x i8], ptr %i.gj, i64 %i.jt
  %.not.i.i56.i = icmp eq i64 %.0605588, %.sink1.i.i ; 2 uses
  br i1 %.not.i.i56.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.preheader.i

.lr.ph.i.i57.preheader.i:                         ; preds = %bb.aa
  %i.jw = getelementptr i8, ptr %i.js, i64 -4
  %load_initial = load i32, ptr %i.jw, align 4    ; 9 uses
  %i.jx = sub nsw i64 %.sink1.i.i, %.sroa.speculated.i
  %xtraiter16157 = and i64 %i.jt, 7               ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 7
  br i1 %i.jy, label %.lr.ph.i.i57.i.epil.preheader, label %.lr.ph.i.i57.preheader.i.new

.lr.ph.i.i57.preheader.i.new:                     ; preds = %.lr.ph.i.i57.preheader.i
  %unroll_iter = and i64 %i.jt, -8
  br label %.lr.ph.i.i57.i

.lr.ph.i.i57.i:                                   ; preds = %.lr.ph.i.i57.i, %.lr.ph.i.i57.preheader.i.new
  %.012.i.i59.i = phi i64 [ 0, %.lr.ph.i.i57.preheader.i.new ], [ %i.ko, %.lr.ph.i.i57.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i57.preheader.i.new ], [ %niter.next.7, %.lr.ph.i.i57.i ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  store i32 %load_initial, ptr %i.jz, align 4, !tbaa !211
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 %load_initial, ptr %i.kb, align 4, !tbaa !211
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %load_initial, ptr %i.kd, align 4, !tbaa !211
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 %load_initial, ptr %i.kf, align 4, !tbaa !211
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i32 %load_initial, ptr %i.kh, align 4, !tbaa !211
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  store i32 %load_initial, ptr %i.kj, align 4, !tbaa !211
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store i32 %load_initial, ptr %i.kl, align 4, !tbaa !211
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 28
  store i32 %load_initial, ptr %i.kn, align 4, !tbaa !211
  %i.ko = add nuw i64 %.012.i.i59.i, 8            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, label %.lr.ph.i.i57.i, !llvm.loop !1619

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i57.i
  %lcmp.mod16158.not = icmp eq i64 %xtraiter16157, 0
  br i1 %lcmp.mod16158.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.i.epil.preheader

.lr.ph.i.i57.i.epil.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i57.preheader.i
  %.012.i.i59.i.epil.init = phi i64 [ 0, %.lr.ph.i.i57.preheader.i ], [ %i.ko, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa ]
  %lcmp.mod16159 = icmp ne i64 %xtraiter16157, 0
  call void @llvm.assume(i1 %lcmp.mod16159)
  br label %.lr.ph.i.i57.i.epil

.lr.ph.i.i57.i.epil:                              ; preds = %.lr.ph.i.i57.i.epil, %.lr.ph.i.i57.i.epil.preheader
  %.012.i.i59.i.epil = phi i64 [ %i.kq, %.lr.ph.i.i57.i.epil ], [ %.012.i.i59.i.epil.init, %.lr.ph.i.i57.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i57.i.epil ], [ 0, %.lr.ph.i.i57.i.epil.preheader ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.012.i.i59.i.epil
  store i32 %load_initial, ptr %i.kp, align 4, !tbaa !211
  %i.kq = add nuw i64 %.012.i.i59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter16157
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.i.epil, !llvm.loop !1620

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i57.i.epil, %bb.aa
  %i.kr = icmp samesign ugt i64 %i.ju, 1
  br i1 %i.kr, label %bb.ab, label %bb.ac, !prof !224

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %.idx1311 = shl nuw nsw i64 %i.ju, 2
  %i.ks = sub nsw i64 0, %i.ju
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ks
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kt, ptr align 4 %i.gj, i64 %.idx1311, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %i.ku = icmp eq i64 %i.ju, 1
  br i1 %i.ku, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.kv = getelementptr inbounds i8, ptr %i.js, i64 -4
  %i.kw = load i32, ptr %i.gj, align 4, !tbaa !211
  store i32 %i.kw, ptr %i.kv, align 4, !tbaa !211
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not.i.i56.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i, label %.lr.ph.i64.i.preheader

.lr.ph.i64.i.preheader:                           ; preds = %bb.ae
  %i.kx = shl nuw i64 %i.jt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gj, ptr nonnull align 4 %i.h, i64 %i.kx, i1 false), !tbaa !211
  %i.ky = call i64 @llvm.usub.sat.i64(i64 %indvars.iv, i64 %.sink1.i.i)
  %.neg = mul i64 %i.ky, -4
  %scevgep9114 = getelementptr i8, ptr %scevgep, i64 %.neg
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i: ; preds = %.lr.ph.i64.i.preheader, %bb.ae
  %.sroa.0117.0.i = phi ptr [ %i.h, %bb.ae ], [ %scevgep9114, %.lr.ph.i64.i.preheader ]
  %.not.i68.i = icmp eq i64 %i.jt, 1
  br i1 %.not.i68.i, label %.loopexit.i, label %.lr.ph.i69.i.preheader

.lr.ph.i69.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i
  %i.kz = sub nsw i64 %.sroa.speculated.i, %.sink1.i.i
  %i.la = shl i64 %i.kz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jv, ptr align 4 %.sroa.0117.0.i, i64 %i.la, i1 false), !tbaa !211
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i69.i.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i
  %i.lb = load i64, ptr %13, align 8, !tbaa !197
  %i.lc = add i64 %i.lb, 2
  br label %bb.af

bb.af:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i, %.loopexit.i
  %storemerge.i = phi i64 [ %i.lc, %.loopexit.i ], [ %i.jr, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i ]
  %.0.i862 = phi ptr [ %i.gj, %.loopexit.i ], [ %i.gt, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i ]
  store i64 %storemerge.i, ptr %13, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  store ptr %.0.i862, ptr %i.j, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.ld = ptrtoint ptr %.sroa.131263.2 to i64
  %i.le = ptrtoint ptr %.sroa.01257.5 to i64      ; 2 uses
  %i.lf = sub i64 %i.ld, %i.le                    ; 7 uses
  %i.lg = icmp ugt i64 %i.lf, 9223372036854775804
  br i1 %i.lg, label %.noexc.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc235 unwind label %.loopexit.split-lp1375

.noexc235:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i: ; preds = %bb.af
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.131263.2, %.sroa.01257.5
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr null, i64 %i.lf
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #41
          to label %.noexc236 unwind label %.loopexit1374 ; 6 uses

.noexc236:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lf ; 3 uses
  %i.lk = icmp samesign ugt i64 %i.lf, 4
  br i1 %i.lk, label %bb.ag, label %bb.ah, !prof !318

bb.ag:                                            ; preds = %.noexc236
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.li, ptr align 4 %.sroa.01257.5, i64 %i.lf, i1 false), !noalias !1756
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

bb.ah:                                            ; preds = %.noexc236
  %i.ll = icmp eq i64 %i.lf, 4
  br i1 %i.ll, label %bb.ai, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.lm = load i32, ptr %.sroa.01257.5, align 4, !tbaa !211, !noalias !1756
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !211, !noalias !1756
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag, %.thread.i.i.i.i.i
  %.sroa.91248.0 = phi ptr [ %i.lh, %.thread.i.i.i.i.i ], [ %i.lj, %bb.ag ], [ %i.lj, %bb.ai ], [ %i.lj, %bb.ah ] ; 2 uses
  %.sroa.01244.0 = phi ptr [ null, %.thread.i.i.i.i.i ], [ %i.li, %bb.ag ], [ %i.li, %bb.ai ], [ %i.li, %bb.ah ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.ln = ptrtoint ptr %.sroa.91248.0 to i64
  %i.lo = ptrtoint ptr %.sroa.01244.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 15 uses
  %.not.i.i.i.i.i.i237 = icmp eq ptr %.sroa.91248.0, %.sroa.01244.0
  br i1 %.not.i.i.i.i.i.i237, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit
  %i.lq = icmp ugt i64 %i.lp, 9223372036854775804
  br i1 %i.lq, label %.noexc.i.i.i.i240, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !212

.noexc.i.i.i.i240:                                ; preds = %bb.aj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc241 unwind label %.loopexit.split-lp1380

.noexc241:                                        ; preds = %.noexc.i.i.i.i240
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.lr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #41
          to label %.noexc242 unwind label %.loopexit1379 ; 6 uses

.noexc242:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a

.lr.ph.i.i47.i894.preheader:                      ; preds = %.noexc905
  %min.iters.check13887 = icmp samesign ult i64 %.0605588, 8
  %i.ub = sub i64 %i.tn, %i.ty
  %diff.check13885 = icmp ugt i64 %i.ub, -32
  %or.cond13979 = select i1 %min.iters.check13887, i1 true, i1 %diff.check13885
  br i1 %or.cond13979, label %.lr.ph.i.i47.i894.preheader14002, label %vector.ph13888

vector.ph13888:                                   ; preds = %.lr.ph.i.i47.i894.preheader
  %n.vec13889 = and i64 %.0605588, 9223372036854775800 ; 4 uses
  %i.uc = shl i64 %n.vec13889, 2
  %i.ud = getelementptr i8, ptr %i.tm, i64 %i.uc  ; 2 uses
  br label %vector.body13890

vector.body13890:                                 ; preds = %vector.body13890, %vector.ph13888
  %index13891 = phi i64 [ 0, %vector.ph13888 ], [ %index.next13895, %vector.body13890 ] ; 3 uses
  %i.ue = shl i64 %index13891, 2
  %next.gep13892 = getelementptr i8, ptr %i.tm, i64 %i.ue ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %index13891 ; 2 uses
  %i.ug = getelementptr i8, ptr %next.gep13892, i64 16
  %wide.load13893 = load <4 x i32>, ptr %next.gep13892, align 4, !tbaa !211
  %wide.load13894 = load <4 x i32>, ptr %i.ug, align 4, !tbaa !211
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store <4 x i32> %wide.load13893, ptr %i.uf, align 4, !tbaa !211
  store <4 x i32> %wide.load13894, ptr %i.uh, align 4, !tbaa !211
  %index.next13895 = add nuw i64 %index13891, 8   ; 2 uses
  %i.ui = icmp eq i64 %index.next13895, %n.vec13889
  br i1 %i.ui, label %middle.block13896, label %vector.body13890, !llvm.loop !1641

middle.block13896:                                ; preds = %vector.body13890
  %cmp.n13897 = icmp eq i64 %.0605588, %n.vec13889
  br i1 %cmp.n13897, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i, label %.lr.ph.i.i47.i894.preheader14002

.lr.ph.i.i47.i894.preheader14002:                 ; preds = %.lr.ph.i.i47.i894.preheader, %middle.block13896
  %.ph14003 = phi ptr [ %i.tm, %.lr.ph.i.i47.i894.preheader ], [ %i.ud, %middle.block13896 ] ; 2 uses
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i47.i894.preheader ], [ %n.vec13889, %middle.block13896 ] ; 3 uses
  %xtraiter16167 = and i64 %.0605588, 3           ; 2 uses
  %lcmp.mod16168.not = icmp eq i64 %xtraiter16167, 0
  br i1 %lcmp.mod16168.not, label %.lr.ph.i.i47.i894.prol.loopexit, label %.lr.ph.i.i47.i894.prol

.lr.ph.i.i47.i894.prol:                           ; preds = %.lr.ph.i.i47.i894.preheader14002, %.lr.ph.i.i47.i894.prol
  %i.uj = phi ptr [ %i.um, %.lr.ph.i.i47.i894.prol ], [ %.ph14003, %.lr.ph.i.i47.i894.preheader14002 ] ; 2 uses
  %.012.i.i.i.prol = phi i64 [ %i.un, %.lr.ph.i.i47.i894.prol ], [ %.012.i.i.i.ph, %.lr.ph.i.i47.i894.preheader14002 ] ; 2 uses
  %prol.iter16169 = phi i64 [ %prol.iter16169.next, %.lr.ph.i.i47.i894.prol ], [ 0, %.lr.ph.i.i47.i894.preheader14002 ]
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %.012.i.i.i.prol
  %i.ul = load i32, ptr %i.uj, align 4, !tbaa !211
  store i32 %i.ul, ptr %i.uk, align 4, !tbaa !211
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 4 ; 3 uses
  %i.un = add nuw nsw i64 %.012.i.i.i.prol, 1     ; 2 uses
  %prol.iter16169.next = add i64 %prol.iter16169, 1 ; 2 uses
  %prol.iter16169.cmp.not = icmp eq i64 %prol.iter16169.next, %xtraiter16167
  br i1 %prol.iter16169.cmp.not, label %.lr.ph.i.i47.i894.prol.loopexit, label %.lr.ph.i.i47.i894.prol, !llvm.loop !1642

.lr.ph.i.i47.i894.prol.loopexit:                  ; preds = %.lr.ph.i.i47.i894.prol, %.lr.ph.i.i47.i894.preheader14002
  %.lcssa14019.unr = phi ptr [ poison, %.lr.ph.i.i47.i894.preheader14002 ], [ %i.um, %.lr.ph.i.i47.i894.prol ]
  %.unr16170 = phi ptr [ %.ph14003, %.lr.ph.i.i47.i894.preheader14002 ], [ %i.um, %.lr.ph.i.i47.i894.prol ]
  %.012.i.i.i.unr = phi i64 [ %.012.i.i.i.ph, %.lr.ph.i.i47.i894.preheader14002 ], [ %i.un, %.lr.ph.i.i47.i894.prol ]
  %i.uo = sub nsw i64 %.012.i.i.i.ph, %.0605588
  %i.up = icmp ugt i64 %i.uo, -4
  br i1 %i.up, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i, label %.lr.ph.i.i47.i894

.lr.ph.i.i47.i894:                                ; preds = %.lr.ph.i.i47.i894.prol.loopexit, %.lr.ph.i.i47.i894
  %i.uq = phi ptr [ %i.vf, %.lr.ph.i.i47.i894 ], [ %.unr16170, %.lr.ph.i.i47.i894.prol.loopexit ] ; 5 uses
  %.012.i.i.i = phi i64 [ %i.vg, %.lr.ph.i.i47.i894 ], [ %.012.i.i.i.unr, %.lr.ph.i.i47.i894.prol.loopexit ] ; 5 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %.012.i.i.i
  %i.us = load i32, ptr %i.uq, align 4, !tbaa !211
  store i32 %i.us, ptr %i.ur, align 4, !tbaa !211
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %.012.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.uw = load i32, ptr %i.ut, align 4, !tbaa !211
  store i32 %i.uw, ptr %i.uv, align 4, !tbaa !211
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %.012.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load i32, ptr %i.ux, align 4, !tbaa !211
  store i32 %i.va, ptr %i.uz, align 4, !tbaa !211
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %.012.i.i.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 12
  %i.ve = load i32, ptr %i.vb, align 4, !tbaa !211
  store i32 %i.ve, ptr %i.vd, align 4, !tbaa !211
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 2 uses
  %i.vg = add nuw nsw i64 %.012.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i48.i.3 = icmp eq i64 %i.vg, %.0605588
  br i1 %exitcond.not.i.i48.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i, label %.lr.ph.i.i47.i894, !llvm.loop !1643

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i: ; preds = %.lr.ph.i.i47.i894.prol.loopexit, %.lr.ph.i.i47.i894, %middle.block13896, %.noexc905
  %.sroa.083.0.i = phi ptr [ %i.tm, %.noexc905 ], [ %i.ud, %middle.block13896 ], [ %.lcssa14019.unr, %.lr.ph.i.i47.i894.prol.loopexit ], [ %i.vf, %.lr.ph.i.i47.i894 ] ; 5 uses
  %.sroa.083.0.i13868 = ptrtoaddr ptr %.sroa.083.0.i to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.tq ; 6 uses
  %i.vi = sub nsw i64 %.sink1.i.i881, %.0605588   ; 4 uses
  %.not.i.i895 = icmp eq i64 %.sink1.i.i881, %.0605588
  br i1 %.not.i.i895, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i899, label %.lr.ph.i.i896.preheader

.lr.ph.i.i896.preheader:                          ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i
  %min.iters.check13871 = icmp ult i64 %i.vi, 8
  br i1 %min.iters.check13871, label %.lr.ph.i.i896.preheader14000, label %vector.memcheck13867

vector.memcheck13867:                             ; preds = %.lr.ph.i.i896.preheader
  %i.vj = add i64 %i.dh, %i.ty
  %i.vk = sub i64 %.sroa.083.0.i13868, %i.vj
  %diff.check13869 = icmp ugt i64 %i.vk, -32
  br i1 %diff.check13869, label %.lr.ph.i.i896.preheader14000, label %vector.ph13872

vector.ph13872:                                   ; preds = %vector.memcheck13867
  %n.vec13873 = and i64 %i.vi, -8                 ; 4 uses
  %i.vl = shl i64 %n.vec13873, 2
  %i.vm = getelementptr i8, ptr %.sroa.083.0.i, i64 %i.vl
  br label %vector.body13874

vector.body13874:                                 ; preds = %vector.body13874, %vector.ph13872
  %index13875 = phi i64 [ 0, %vector.ph13872 ], [ %index.next13879, %vector.body13874 ] ; 3 uses
  %i.vn = shl i64 %index13875, 2
  %next.gep13876 = getelementptr i8, ptr %.sroa.083.0.i, i64 %i.vn ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %index13875 ; 2 uses
  %i.vp = getelementptr i8, ptr %next.gep13876, i64 16
  %wide.load13877 = load <4 x i32>, ptr %next.gep13876, align 4, !tbaa !211
  %wide.load13878 = load <4 x i32>, ptr %i.vp, align 4, !tbaa !211
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store <4 x i32> %wide.load13877, ptr %i.vo, align 4, !tbaa !211
  store <4 x i32> %wide.load13878, ptr %i.vq, align 4, !tbaa !211
  %index.next13879 = add nuw i64 %index13875, 8   ; 2 uses
  %i.vr = icmp eq i64 %index.next13879, %n.vec13873
  br i1 %i.vr, label %middle.block13880, label %vector.body13874, !llvm.loop !1644

middle.block13880:                                ; preds = %vector.body13874
  %cmp.n13881 = icmp eq i64 %i.vi, %n.vec13873
  br i1 %cmp.n13881, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i899, label %.lr.ph.i.i896.preheader14000

.lr.ph.i.i896.preheader14000:                     ; preds = %vector.memcheck13867, %.lr.ph.i.i896.preheader, %middle.block13880
  %.ph14001 = phi ptr [ %.sroa.083.0.i, %vector.memcheck13867 ], [ %.sroa.083.0.i, %.lr.ph.i.i896.preheader ], [ %i.vm, %middle.block13880 ] ; 2 uses
  %.012.i.i897.ph = phi i64 [ 0, %vector.memcheck13867 ], [ 0, %.lr.ph.i.i896.preheader ], [ %n.vec13873, %middle.block13880 ] ; 3 uses
  %i.vs = sub nsw i64 %.sink1.i.i881, %.0605588
  %xtraiter16171 = and i64 %i.vs, 3               ; 2 uses
  %lcmp.mod16172.not = icmp eq i64 %xtraiter16171, 0
  br i1 %lcmp.mod16172.not, label %.lr.ph.i.i896.prol.loopexit, label %.lr.ph.i.i896.prol

.lr.ph.i.i896.prol:                               ; preds = %.lr.ph.i.i896.preheader14000, %.lr.ph.i.i896.prol
  %i.vt = phi ptr [ %i.vw, %.lr.ph.i.i896.prol ], [ %.ph14001, %.lr.ph.i.i896.preheader14000 ] ; 2 uses
  %.012.i.i897.prol = phi i64 [ %i.vx, %.lr.ph.i.i896.prol ], [ %.012.i.i897.ph, %.lr.ph.i.i896.preheader14000 ] ; 2 uses
  %prol.iter16173 = phi i64 [ %prol.iter16173.next, %.lr.ph.i.i896.prol ], [ 0, %.lr.ph.i.i896.preheader14000 ]
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.012.i.i897.prol
  %i.vv = load i32, ptr %i.vt, align 4, !tbaa !211
  store i32 %i.vv, ptr %i.vu, align 4, !tbaa !211
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 4 ; 2 uses
  %i.vx = add nuw i64 %.012.i.i897.prol, 1        ; 2 uses
  %prol.iter16173.next = add i64 %prol.iter16173, 1 ; 2 uses
  %prol.iter16173.cmp.not = icmp eq i64 %prol.iter16173.next, %xtraiter16171
  br i1 %prol.iter16173.cmp.not, label %.lr.ph.i.i896.prol.loopexit, label %.lr.ph.i.i896.prol, !llvm.loop !1645

.lr.ph.i.i896.prol.loopexit:                      ; preds = %.lr.ph.i.i896.prol, %.lr.ph.i.i896.preheader14000
  %.unr16174 = phi ptr [ %.ph14001, %.lr.ph.i.i896.preheader14000 ], [ %i.vw, %.lr.ph.i.i896.prol ]
  %.012.i.i897.unr = phi i64 [ %.012.i.i897.ph, %.lr.ph.i.i896.preheader14000 ], [ %i.vx, %.lr.ph.i.i896.prol ]
  %i.vy = sub nsw i64 %.0605588, %.sink1.i.i881
  %i.vz = add i64 %i.vy, %.012.i.i897.ph
  %i.wa = icmp ugt i64 %i.vz, -4
  br i1 %i.wa, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i899, label %.lr.ph.i.i896

.lr.ph.i.i896:                                    ; preds = %.lr.ph.i.i896.prol.loopexit, %.lr.ph.i.i896
  %i.wb = phi ptr [ %i.wq, %.lr.ph.i.i896 ], [ %.unr16174, %.lr.ph.i.i896.prol.loopexit ] ; 5 uses
  %.012.i.i897 = phi i64 [ %i.wr, %.lr.ph.i.i896 ], [ %.012.i.i897.unr, %.lr.ph.i.i896.prol.loopexit ] ; 5 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.012.i.i897
  %i.wd = load i32, ptr %i.wb, align 4, !tbaa !211
  store i32 %i.wd, ptr %i.wc, align 4, !tbaa !211
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.012.i.i897
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = load i32, ptr %i.we, align 4, !tbaa !211
  store i32 %i.wh, ptr %i.wg, align 4, !tbaa !211
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.012.i.i897
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load i32, ptr %i.wi, align 4, !tbaa !211
  store i32 %i.wl, ptr %i.wk, align 4, !tbaa !211
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wb, i64 12
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.012.i.i897
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  %i.wp = load i32, ptr %i.wm, align 4, !tbaa !211
  store i32 %i.wp, ptr %i.wo, align 4, !tbaa !211
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.wr = add nuw i64 %.012.i.i897, 4             ; 2 uses
  %exitcond.not.i.i898.3 = icmp eq i64 %i.wr, %i.vi
  br i1 %exitcond.not.i.i898.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i899, label %.lr.ph.i.i896, !llvm.loop !1646

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i899: ; preds = %.lr.ph.i.i896.prol.loopexit, %.lr.ph.i.i896, %middle.block13880, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i
  %i.ws = load i64, ptr %21, align 8, !tbaa !197
  %i.wt = trunc i64 %i.ws to i1
  br i1 %i.wt, label %bb.de, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900

bb.de:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i899
  %i.wu = load ptr, ptr %i.ah, align 8, !tbaa !198
  %i.wv = load i64, ptr %i.ag, align 8, !tbaa !198
  %i.ww = shl i64 %i.wv, 2
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.ww) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900: ; preds = %bb.de, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i899
  store ptr %i.tx, ptr %i.ah, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i890, ptr %i.ag, align 8, !tbaa !198
  %i.wx = shl i64 %i.tr, 1
  %i.wy = or disjoint i64 %i.wx, 1
  br label %bb.dk

bb.df:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit
  %.sroa.speculated.i882 = call i64 @llvm.umax.i64(i64 %i.tq, i64 %.sink1.i.i881) ; 4 uses
  %i.wz = getelementptr [4 x i8], ptr %i.tm, i64 %.sroa.speculated.i882 ; 8 uses
  %i.xa = sub i64 %i.tr, %.sroa.speculated.i882   ; 9 uses
  %i.xb = sub nuw nsw i64 %.sroa.speculated.i882, %i.tq ; 4 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.xa ; 2 uses
  %i.xd = sub i64 5, %i.xa                        ; 4 uses
  %.not.i.i52.i = icmp eq i64 %.0605588, %.sink1.i.i881 ; 2 uses
  br i1 %.not.i.i52.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i, label %.lr.ph.i.i53.preheader.i

.lr.ph.i.i53.preheader.i:                         ; preds = %bb.df
  %i.xe = getelementptr i8, ptr %i.wz, i64 -20    ; 2 uses
  %i.xf = add nuw i64 %.sink1.i.i881, 4
  %i.xg = sub i64 %i.xf, %.sroa.speculated.i882
  %xtraiter16160 = and i64 %i.xa, 3               ; 3 uses
  %i.xh = icmp ult i64 %i.xg, 3
  br i1 %i.xh, label %.lr.ph.i.i53.i.epil.preheader, label %.lr.ph.i.i53.preheader.i.new

.lr.ph.i.i53.preheader.i.new:                     ; preds = %.lr.ph.i.i53.preheader.i
  %unroll_iter16165 = and i64 %i.xa, -4
  br label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.preheader.i.new
  %i.xi = phi ptr [ %i.xe, %.lr.ph.i.i53.preheader.i.new ], [ %i.xx, %.lr.ph.i.i53.i ] ; 5 uses
  %.012.i.i55.i = phi i64 [ 0, %.lr.ph.i.i53.preheader.i.new ], [ %i.xy, %.lr.ph.i.i53.i ] ; 5 uses
  %niter16166 = phi i64 [ 0, %.lr.ph.i.i53.preheader.i.new ], [ %niter16166.next.3, %.lr.ph.i.i53.i ]
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %.012.i.i55.i
  %i.xk = load i32, ptr %i.xi, align 4, !tbaa !211
  store i32 %i.xk, ptr %i.xj, align 4, !tbaa !211
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %.012.i.i55.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %i.xo = load i32, ptr %i.xl, align 4, !tbaa !211
  store i32 %i.xo, ptr %i.xn, align 4, !tbaa !211
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %.012.i.i55.i
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xs = load i32, ptr %i.xp, align 4, !tbaa !211
  store i32 %i.xs, ptr %i.xr, align 4, !tbaa !211
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xi, i64 12
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %.012.i.i55.i
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 12
  %i.xw = load i32, ptr %i.xt, align 4, !tbaa !211
  store i32 %i.xw, ptr %i.xv, align 4, !tbaa !211
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xi, i64 16 ; 2 uses
  %i.xy = add nuw i64 %.012.i.i55.i, 4            ; 2 uses
  %niter16166.next.3 = add i64 %niter16166, 4     ; 2 uses
  %niter16166.ncmp.3 = icmp eq i64 %niter16166.next.3, %unroll_iter16165
  br i1 %niter16166.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa, label %.lr.ph.i.i53.i, !llvm.loop !1619

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i53.i
  %lcmp.mod16163.not = icmp eq i64 %xtraiter16160, 0
  br i1 %lcmp.mod16163.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i, label %.lr.ph.i.i53.i.epil.preheader

.lr.ph.i.i53.i.epil.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa, %.lr.ph.i.i53.preheader.i
  %.epil.init = phi ptr [ %i.xe, %.lr.ph.i.i53.preheader.i ], [ %i.xx, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa ]
  %.012.i.i55.i.epil.init = phi i64 [ 0, %.lr.ph.i.i53.preheader.i ], [ %i.xy, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa ]
  %lcmp.mod16164 = icmp ne i64 %xtraiter16160, 0
  call void @llvm.assume(i1 %lcmp.mod16164)
  br label %.lr.ph.i.i53.i.epil

.lr.ph.i.i53.i.epil:                              ; preds = %.lr.ph.i.i53.i.epil, %.lr.ph.i.i53.i.epil.preheader
  %i.xz = phi ptr [ %i.yc, %.lr.ph.i.i53.i.epil ], [ %.epil.init, %.lr.ph.i.i53.i.epil.preheader ] ; 2 uses
  %.012.i.i55.i.epil = phi i64 [ %i.yd, %.lr.ph.i.i53.i.epil ], [ %.012.i.i55.i.epil.init, %.lr.ph.i.i53.i.epil.preheader ] ; 2 uses
  %epil.iter16161 = phi i64 [ %epil.iter16161.next, %.lr.ph.i.i53.i.epil ], [ 0, %.lr.ph.i.i53.i.epil.preheader ]
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %.012.i.i55.i.epil
  %i.yb = load i32, ptr %i.xz, align 4, !tbaa !211
  store i32 %i.yb, ptr %i.ya, align 4, !tbaa !211
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %i.yd = add nuw i64 %.012.i.i55.i.epil, 1
  %epil.iter16161.next = add i64 %epil.iter16161, 1 ; 2 uses
  %epil.iter16161.cmp.not = icmp eq i64 %epil.iter16161.next, %xtraiter16160
  br i1 %epil.iter16161.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i, label %.lr.ph.i.i53.i.epil, !llvm.loop !1647

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i.loopexit.unr-lcssa, %.lr.ph.i.i53.i.epil, %bb.df
  %i.ye = icmp samesign ugt i64 %i.xb, 1
  br i1 %i.ye, label %bb.dg, label %bb.dh, !prof !224

bb.dg:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i
  %.idx1316 = shl nuw nsw i64 %i.xb, 2
  %i.yf = sub nsw i64 0, %i.xb
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.yf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yg, ptr align 4 %i.to, i64 %.idx1316, i1 false)
  br label %bb.dj

bb.dh:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit58.i
  %i.yh = icmp eq i64 %i.xb, 1
  br i1 %i.yh, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.yi = getelementptr inbounds i8, ptr %i.wz, i64 -4
  %i.yj = load i32, ptr %i.to, align 4, !tbaa !211
  store i32 %i.yj, ptr %i.yi, align 4, !tbaa !211
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  br i1 %.not.i.i52.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i, label %.lr.ph.i60.i.preheader

.lr.ph.i60.i.preheader:                           ; preds = %bb.dj
  %min.iters.check13911 = icmp ult i64 %i.xa, 8
  br i1 %min.iters.check13911, label %.lr.ph.i60.i.preheader14005, label %vector.ph13912

vector.ph13912:                                   ; preds = %.lr.ph.i60.i.preheader
  %n.vec13913 = and i64 %i.xa, -8                 ; 3 uses
  br label %vector.body13914

vector.body13914:                                 ; preds = %vector.body13914, %vector.ph13912
  %index13915 = phi i64 [ 0, %vector.ph13912 ], [ %index.next13916, %vector.body13914 ] ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %index13915 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  store <4 x i32> splat (i32 9999), ptr %i.yk, align 4, !tbaa !211
  store <4 x i32> splat (i32 9999), ptr %i.yl, align 4, !tbaa !211
  %index.next13916 = add nuw i64 %index13915, 8   ; 2 uses
  %i.ym = icmp eq i64 %index.next13916, %n.vec13913
  br i1 %i.ym, label %middle.block13917, label %vector.body13914, !llvm.loop !1648

middle.block13917:                                ; preds = %vector.body13914
  %cmp.n13918 = icmp eq i64 %i.xa, %n.vec13913
  br i1 %cmp.n13918, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i, label %.lr.ph.i60.i.preheader14005

.lr.ph.i60.i.preheader14005:                      ; preds = %.lr.ph.i60.i.preheader, %middle.block13917
  %.05.i.i883.ph = phi i64 [ 0, %.lr.ph.i60.i.preheader ], [ %n.vec13913, %middle.block13917 ]
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i.preheader14005, %.lr.ph.i60.i
  %.05.i.i883 = phi i64 [ %i.yo, %.lr.ph.i60.i ], [ %.05.i.i883.ph, %.lr.ph.i60.i.preheader14005 ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %.05.i.i883
  store i32 9999, ptr %i.yn, align 4, !tbaa !211
  %i.yo = add nuw i64 %.05.i.i883, 1              ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.yo, %i.xa
  br i1 %exitcond.not.i61.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i, label %.lr.ph.i60.i, !llvm.loop !1649

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i: ; preds = %.lr.ph.i60.i, %middle.block13917, %bb.dj
  %.not.i63.i = icmp eq i64 %i.xa, 5
  br i1 %.not.i63.i, label %.loopexit.i887, label %.lr.ph.i64.i884.preheader

.lr.ph.i64.i884.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i
  %min.iters.check13901 = icmp ult i64 %i.xd, 8
  br i1 %min.iters.check13901, label %.lr.ph.i64.i884.preheader14004, label %vector.ph13902

vector.ph13902:                                   ; preds = %.lr.ph.i64.i884.preheader
  %n.vec13903 = and i64 %i.xd, -8                 ; 3 uses
  br label %vector.body13904

vector.body13904:                                 ; preds = %vector.body13904, %vector.ph13902
  %index13905 = phi i64 [ 0, %vector.ph13902 ], [ %index.next13906, %vector.body13904 ] ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %index13905 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  store <4 x i32> splat (i32 9999), ptr %i.yp, align 4, !tbaa !211
  store <4 x i32> splat (i32 9999), ptr %i.yq, align 4, !tbaa !211
  %index.next13906 = add nuw i64 %index13905, 8   ; 2 uses
  %i.yr = icmp eq i64 %index.next13906, %n.vec13903
  br i1 %i.yr, label %middle.block13907, label %vector.body13904, !llvm.loop !1650

middle.block13907:                                ; preds = %vector.body13904
  %cmp.n13908 = icmp eq i64 %i.xd, %n.vec13903
  br i1 %cmp.n13908, label %.loopexit.i887, label %.lr.ph.i64.i884.preheader14004

.lr.ph.i64.i884.preheader14004:                   ; preds = %.lr.ph.i64.i884.preheader, %middle.block13907
  %.06.i.i885.ph = phi i64 [ 0, %.lr.ph.i64.i884.preheader ], [ %n.vec13903, %middle.block13907 ]
  br label %.lr.ph.i64.i884

.lr.ph.i64.i884:                                  ; preds = %.lr.ph.i64.i884.preheader14004, %.lr.ph.i64.i884
  %.06.i.i885 = phi i64 [ %i.yt, %.lr.ph.i64.i884 ], [ %.06.i.i885.ph, %.lr.ph.i64.i884.preheader14004 ] ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %.06.i.i885
  store i32 9999, ptr %i.ys, align 4, !tbaa !211
  %i.yt = add nuw i64 %.06.i.i885, 1              ; 2 uses
  %exitcond.not.i66.i886 = icmp eq i64 %i.yt, %i.xd
  br i1 %exitcond.not.i66.i886, label %.loopexit.i887, label %.lr.ph.i64.i884, !llvm.loop !1651

.loopexit.i887:                                   ; preds = %.lr.ph.i64.i884, %middle.block13907, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit.i
  %i.yu = load i64, ptr %21, align 8, !tbaa !197
  %i.yv = add i64 %i.yu, 10
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900, %.loopexit.i887
  %storemerge.i888 = phi i64 [ %i.yv, %.loopexit.i887 ], [ %i.wy, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900 ]
  %.0.i889 = phi ptr [ %i.to, %.loopexit.i887 ], [ %i.tz, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i900 ]
  store i64 %storemerge.i888, ptr %21, align 8, !tbaa !197
  store ptr %.0.i889, ptr %i.l, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  %i.yw = ptrtoint ptr %.sroa.141238.2 to i64
  %i.yx = ptrtoint ptr %.sroa.01230.5 to i64      ; 2 uses
  %i.yy = sub i64 %i.yw, %i.yx                    ; 7 uses
  %i.yz = icmp ugt i64 %i.yy, 9223372036854775804
  br i1 %i.yz, label %.noexc.i.i.i.i304, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i300

.noexc.i.i.i.i304:                                ; preds = %bb.dk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc305 unwind label %.loopexit.split-lp1400

.noexc305:                                        ; preds = %.noexc.i.i.i.i304
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i300: ; preds = %bb.dk
  %.not.i.i.i.i.i.i301 = icmp eq ptr %.sroa.141238.2, %.sroa.01230.5
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a

.lr.ph.i.i47.i936.preheader:                      ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvPiRT_m.exit.i
  %min.iters.check13821 = icmp samesign ult i64 %.0605588, 8
  %i.afu = sub i64 %i.afh, %i.afs
  %diff.check13819 = icmp ugt i64 %i.afu, -32
  %or.cond13980 = select i1 %min.iters.check13821, i1 true, i1 %diff.check13819
  br i1 %or.cond13980, label %.lr.ph.i.i47.i936.preheader13994, label %vector.ph13822

vector.ph13822:                                   ; preds = %.lr.ph.i.i47.i936.preheader
  %n.vec13823 = and i64 %.0605588, 9223372036854775800 ; 4 uses
  %i.afv = shl i64 %n.vec13823, 2
  %i.afw = getelementptr i8, ptr %i.afg, i64 %i.afv ; 2 uses
  br label %vector.body13824

vector.body13824:                                 ; preds = %vector.body13824, %vector.ph13822
  %index13825 = phi i64 [ 0, %vector.ph13822 ], [ %index.next13829, %vector.body13824 ] ; 3 uses
  %i.afx = shl i64 %index13825, 2
  %next.gep13826 = getelementptr i8, ptr %i.afg, i64 %i.afx ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %index13825 ; 2 uses
  %i.afz = getelementptr i8, ptr %next.gep13826, i64 16
  %wide.load13827 = load <4 x i32>, ptr %next.gep13826, align 4, !tbaa !211
  %wide.load13828 = load <4 x i32>, ptr %i.afz, align 4, !tbaa !211
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  store <4 x i32> %wide.load13827, ptr %i.afy, align 4, !tbaa !211
  store <4 x i32> %wide.load13828, ptr %i.aga, align 4, !tbaa !211
  %index.next13829 = add nuw i64 %index13825, 8   ; 2 uses
  %i.agb = icmp eq i64 %index.next13829, %n.vec13823
  br i1 %i.agb, label %middle.block13830, label %vector.body13824, !llvm.loop !1668

middle.block13830:                                ; preds = %vector.body13824
  %cmp.n13831 = icmp eq i64 %.0605588, %n.vec13823
  br i1 %cmp.n13831, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i938, label %.lr.ph.i.i47.i936.preheader13994

.lr.ph.i.i47.i936.preheader13994:                 ; preds = %.lr.ph.i.i47.i936.preheader, %middle.block13830
  %.ph13995 = phi ptr [ %i.afg, %.lr.ph.i.i47.i936.preheader ], [ %i.afw, %middle.block13830 ] ; 2 uses
  %.012.i.i.i937.ph = phi i64 [ 0, %.lr.ph.i.i47.i936.preheader ], [ %n.vec13823, %middle.block13830 ] ; 3 uses
  %xtraiter16187 = and i64 %.0605588, 3           ; 2 uses
  %lcmp.mod16188.not = icmp eq i64 %xtraiter16187, 0
  br i1 %lcmp.mod16188.not, label %.lr.ph.i.i47.i936.prol.loopexit, label %.lr.ph.i.i47.i936.prol

.lr.ph.i.i47.i936.prol:                           ; preds = %.lr.ph.i.i47.i936.preheader13994, %.lr.ph.i.i47.i936.prol
  %i.agc = phi ptr [ %i.agf, %.lr.ph.i.i47.i936.prol ], [ %.ph13995, %.lr.ph.i.i47.i936.preheader13994 ] ; 2 uses
  %.012.i.i.i937.prol = phi i64 [ %i.agg, %.lr.ph.i.i47.i936.prol ], [ %.012.i.i.i937.ph, %.lr.ph.i.i47.i936.preheader13994 ] ; 2 uses
  %prol.iter16189 = phi i64 [ %prol.iter16189.next, %.lr.ph.i.i47.i936.prol ], [ 0, %.lr.ph.i.i47.i936.preheader13994 ]
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %.012.i.i.i937.prol
  %i.age = load i32, ptr %i.agc, align 4, !tbaa !211
  store i32 %i.age, ptr %i.agd, align 4, !tbaa !211
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 4 ; 3 uses
  %i.agg = add nuw nsw i64 %.012.i.i.i937.prol, 1 ; 2 uses
  %prol.iter16189.next = add i64 %prol.iter16189, 1 ; 2 uses
  %prol.iter16189.cmp.not = icmp eq i64 %prol.iter16189.next, %xtraiter16187
  br i1 %prol.iter16189.cmp.not, label %.lr.ph.i.i47.i936.prol.loopexit, label %.lr.ph.i.i47.i936.prol, !llvm.loop !1669

.lr.ph.i.i47.i936.prol.loopexit:                  ; preds = %.lr.ph.i.i47.i936.prol, %.lr.ph.i.i47.i936.preheader13994
  %.lcssa14021.unr = phi ptr [ poison, %.lr.ph.i.i47.i936.preheader13994 ], [ %i.agf, %.lr.ph.i.i47.i936.prol ]
  %.unr16190 = phi ptr [ %.ph13995, %.lr.ph.i.i47.i936.preheader13994 ], [ %i.agf, %.lr.ph.i.i47.i936.prol ]
  %.012.i.i.i937.unr = phi i64 [ %.012.i.i.i937.ph, %.lr.ph.i.i47.i936.preheader13994 ], [ %i.agg, %.lr.ph.i.i47.i936.prol ]
  %i.agh = sub nsw i64 %.012.i.i.i937.ph, %.0605588
  %i.agi = icmp ugt i64 %i.agh, -4
  br i1 %i.agi, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i938, label %.lr.ph.i.i47.i936

.lr.ph.i.i47.i936:                                ; preds = %.lr.ph.i.i47.i936.prol.loopexit, %.lr.ph.i.i47.i936
  %i.agj = phi ptr [ %i.agy, %.lr.ph.i.i47.i936 ], [ %.unr16190, %.lr.ph.i.i47.i936.prol.loopexit ] ; 5 uses
  %.012.i.i.i937 = phi i64 [ %i.agz, %.lr.ph.i.i47.i936 ], [ %.012.i.i.i937.unr, %.lr.ph.i.i47.i936.prol.loopexit ] ; 5 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %.012.i.i.i937
  %i.agl = load i32, ptr %i.agj, align 4, !tbaa !211
  store i32 %i.agl, ptr %i.agk, align 4, !tbaa !211
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %.012.i.i.i937
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 4
  %i.agp = load i32, ptr %i.agm, align 4, !tbaa !211
  store i32 %i.agp, ptr %i.ago, align 4, !tbaa !211
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %.012.i.i.i937
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.agt = load i32, ptr %i.agq, align 4, !tbaa !211
  store i32 %i.agt, ptr %i.ags, align 4, !tbaa !211
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agj, i64 12
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %.012.i.i.i937
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 12
  %i.agx = load i32, ptr %i.agu, align 4, !tbaa !211
  store i32 %i.agx, ptr %i.agw, align 4, !tbaa !211
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agj, i64 16 ; 2 uses
  %i.agz = add nuw nsw i64 %.012.i.i.i937, 4      ; 2 uses
  %exitcond.not.i.i49.i.3 = icmp eq i64 %i.agz, %.0605588
  br i1 %exitcond.not.i.i49.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i938, label %.lr.ph.i.i47.i936, !llvm.loop !1670

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i938: ; preds = %.lr.ph.i.i47.i936.prol.loopexit, %.lr.ph.i.i47.i936, %middle.block13830, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvPiRT_m.exit.i
  %.sroa.086.0.i = phi ptr [ %i.afg, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvPiRT_m.exit.i ], [ %i.afw, %middle.block13830 ], [ %.lcssa14021.unr, %.lr.ph.i.i47.i936.prol.loopexit ], [ %i.agy, %.lr.ph.i.i47.i936 ] ; 5 uses
  %.sroa.086.0.i13802 = ptrtoaddr ptr %.sroa.086.0.i to i64
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %i.afk ; 6 uses
  %i.ahb = sub nsw i64 %.sink1.i.i925, %.0605588  ; 4 uses
  %.not.i.i939 = icmp eq i64 %.sink1.i.i925, %.0605588
  br i1 %.not.i.i939, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i943, label %.lr.ph.i.i940.preheader

.lr.ph.i.i940.preheader:                          ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i938
  %min.iters.check13805 = icmp ult i64 %i.ahb, 8
  br i1 %min.iters.check13805, label %.lr.ph.i.i940.preheader13992, label %vector.memcheck13801

vector.memcheck13801:                             ; preds = %.lr.ph.i.i940.preheader
  %i.ahc = add i64 %i.dl, %i.afs
  %i.ahd = sub i64 %.sroa.086.0.i13802, %i.ahc
  %diff.check13803 = icmp ugt i64 %i.ahd, -32
  br i1 %diff.check13803, label %.lr.ph.i.i940.preheader13992, label %vector.ph13806

vector.ph13806:                                   ; preds = %vector.memcheck13801
  %n.vec13807 = and i64 %i.ahb, -8                ; 4 uses
  %i.ahe = shl i64 %n.vec13807, 2
  %i.ahf = getelementptr i8, ptr %.sroa.086.0.i, i64 %i.ahe
  br label %vector.body13808

vector.body13808:                                 ; preds = %vector.body13808, %vector.ph13806
  %index13809 = phi i64 [ 0, %vector.ph13806 ], [ %index.next13813, %vector.body13808 ] ; 3 uses
  %i.ahg = shl i64 %index13809, 2
  %next.gep13810 = getelementptr i8, ptr %.sroa.086.0.i, i64 %i.ahg ; 2 uses
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %index13809 ; 2 uses
  %i.ahi = getelementptr i8, ptr %next.gep13810, i64 16
  %wide.load13811 = load <4 x i32>, ptr %next.gep13810, align 4, !tbaa !211
  %wide.load13812 = load <4 x i32>, ptr %i.ahi, align 4, !tbaa !211
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 16
  store <4 x i32> %wide.load13811, ptr %i.ahh, align 4, !tbaa !211
  store <4 x i32> %wide.load13812, ptr %i.ahj, align 4, !tbaa !211
  %index.next13813 = add nuw i64 %index13809, 8   ; 2 uses
  %i.ahk = icmp eq i64 %index.next13813, %n.vec13807
  br i1 %i.ahk, label %middle.block13814, label %vector.body13808, !llvm.loop !1671

middle.block13814:                                ; preds = %vector.body13808
  %cmp.n13815 = icmp eq i64 %i.ahb, %n.vec13807
  br i1 %cmp.n13815, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i943, label %.lr.ph.i.i940.preheader13992

.lr.ph.i.i940.preheader13992:                     ; preds = %vector.memcheck13801, %.lr.ph.i.i940.preheader, %middle.block13814
  %.ph13993 = phi ptr [ %.sroa.086.0.i, %vector.memcheck13801 ], [ %.sroa.086.0.i, %.lr.ph.i.i940.preheader ], [ %i.ahf, %middle.block13814 ] ; 2 uses
  %.012.i.i941.ph = phi i64 [ 0, %vector.memcheck13801 ], [ 0, %.lr.ph.i.i940.preheader ], [ %n.vec13807, %middle.block13814 ] ; 3 uses
  %i.ahl = sub nsw i64 %.sink1.i.i925, %.0605588
  %xtraiter16191 = and i64 %i.ahl, 3              ; 2 uses
  %lcmp.mod16192.not = icmp eq i64 %xtraiter16191, 0
  br i1 %lcmp.mod16192.not, label %.lr.ph.i.i940.prol.loopexit, label %.lr.ph.i.i940.prol

.lr.ph.i.i940.prol:                               ; preds = %.lr.ph.i.i940.preheader13992, %.lr.ph.i.i940.prol
  %i.ahm = phi ptr [ %i.ahp, %.lr.ph.i.i940.prol ], [ %.ph13993, %.lr.ph.i.i940.preheader13992 ] ; 2 uses
  %.012.i.i941.prol = phi i64 [ %i.ahq, %.lr.ph.i.i940.prol ], [ %.012.i.i941.ph, %.lr.ph.i.i940.preheader13992 ] ; 2 uses
  %prol.iter16193 = phi i64 [ %prol.iter16193.next, %.lr.ph.i.i940.prol ], [ 0, %.lr.ph.i.i940.preheader13992 ]
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %.012.i.i941.prol
  %i.aho = load i32, ptr %i.ahm, align 4, !tbaa !211
  store i32 %i.aho, ptr %i.ahn, align 4, !tbaa !211
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4 ; 2 uses
  %i.ahq = add nuw i64 %.012.i.i941.prol, 1       ; 2 uses
  %prol.iter16193.next = add i64 %prol.iter16193, 1 ; 2 uses
  %prol.iter16193.cmp.not = icmp eq i64 %prol.iter16193.next, %xtraiter16191
  br i1 %prol.iter16193.cmp.not, label %.lr.ph.i.i940.prol.loopexit, label %.lr.ph.i.i940.prol, !llvm.loop !1672

.lr.ph.i.i940.prol.loopexit:                      ; preds = %.lr.ph.i.i940.prol, %.lr.ph.i.i940.preheader13992
  %.unr16194 = phi ptr [ %.ph13993, %.lr.ph.i.i940.preheader13992 ], [ %i.ahp, %.lr.ph.i.i940.prol ]
  %.012.i.i941.unr = phi i64 [ %.012.i.i941.ph, %.lr.ph.i.i940.preheader13992 ], [ %i.ahq, %.lr.ph.i.i940.prol ]
  %i.ahr = sub nsw i64 %.0605588, %.sink1.i.i925
  %i.ahs = add i64 %i.ahr, %.012.i.i941.ph
  %i.aht = icmp ugt i64 %i.ahs, -4
  br i1 %i.aht, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i943, label %.lr.ph.i.i940

.lr.ph.i.i940:                                    ; preds = %.lr.ph.i.i940.prol.loopexit, %.lr.ph.i.i940
  %i.ahu = phi ptr [ %i.aij, %.lr.ph.i.i940 ], [ %.unr16194, %.lr.ph.i.i940.prol.loopexit ] ; 5 uses
  %.012.i.i941 = phi i64 [ %i.aik, %.lr.ph.i.i940 ], [ %.012.i.i941.unr, %.lr.ph.i.i940.prol.loopexit ] ; 5 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %.012.i.i941
  %i.ahw = load i32, ptr %i.ahu, align 4, !tbaa !211
  store i32 %i.ahw, ptr %i.ahv, align 4, !tbaa !211
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %.012.i.i941
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 4
  %i.aia = load i32, ptr %i.ahx, align 4, !tbaa !211
  store i32 %i.aia, ptr %i.ahz, align 4, !tbaa !211
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %.012.i.i941
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aie = load i32, ptr %i.aib, align 4, !tbaa !211
  store i32 %i.aie, ptr %i.aid, align 4, !tbaa !211
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahu, i64 12
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %.012.i.i941
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 12
  %i.aii = load i32, ptr %i.aif, align 4, !tbaa !211
  store i32 %i.aii, ptr %i.aih, align 4, !tbaa !211
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16
  %i.aik = add nuw i64 %.012.i.i941, 4            ; 2 uses
  %exitcond.not.i.i942.3 = icmp eq i64 %i.aik, %i.ahb
  br i1 %exitcond.not.i.i942.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i943, label %.lr.ph.i.i940, !llvm.loop !1673

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i943: ; preds = %.lr.ph.i.i940.prol.loopexit, %.lr.ph.i.i940, %middle.block13814, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i938
  %i.ail = load i64, ptr %30, align 8, !tbaa !197
  %i.aim = trunc i64 %i.ail to i1
  br i1 %i.aim, label %bb.fz, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i944

bb.fz:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i943
  %i.ain = load ptr, ptr %i.ar, align 8, !tbaa !198
  %i.aio = load i64, ptr %i.aq, align 8, !tbaa !198
  %i.aip = shl i64 %i.aio, 2
  call void @_ZdlPvm(ptr noundef %i.ain, i64 noundef %i.aip) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i944

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i944: ; preds = %bb.fz, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i943
  store ptr %i.afr, ptr %i.ar, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i932, ptr %i.aq, align 8, !tbaa !198
  %i.aiq = shl i64 %i.afl, 1
  %i.air = or disjoint i64 %i.aiq, 1
  br label %bb.gf

bb.ga:                                            ; preds = %bb.fw
  %.sroa.speculated.i926 = call i64 @llvm.umax.i64(i64 %i.afk, i64 %.sink1.i.i925) ; 7 uses
  %i.ais = getelementptr [4 x i8], ptr %i.afg, i64 %.sroa.speculated.i926 ; 8 uses
  %i.ait = sub i64 %i.afl, %.sroa.speculated.i926 ; 9 uses
  %i.aiu = sub nuw nsw i64 %.sroa.speculated.i926, %i.afk ; 4 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %i.ait ; 6 uses
  %i.aiw = sub i64 3, %i.ait                      ; 4 uses
  %.not.i.i54.i = icmp eq i64 %.0605588, %.sink1.i.i925 ; 2 uses
  br i1 %.not.i.i54.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i, label %.lr.ph.i.i55.preheader.i

.lr.ph.i.i55.preheader.i:                         ; preds = %bb.ga
  %i.aix = getelementptr i8, ptr %i.ais, i64 -12  ; 2 uses
  %i.aiy = add nuw i64 %.sink1.i.i925, 2
  %i.aiz = sub i64 %i.aiy, %.sroa.speculated.i926
  %xtraiter16175 = and i64 %i.ait, 3              ; 3 uses
  %i.aja = icmp ult i64 %i.aiz, 3
  br i1 %i.aja, label %.lr.ph.i.i55.i.epil.preheader, label %.lr.ph.i.i55.preheader.i.new

.lr.ph.i.i55.preheader.i.new:                     ; preds = %.lr.ph.i.i55.preheader.i
  %unroll_iter16181 = and i64 %i.ait, -4
  br label %.lr.ph.i.i55.i

.lr.ph.i.i55.i:                                   ; preds = %.lr.ph.i.i55.i, %.lr.ph.i.i55.preheader.i.new
  %i.ajb = phi ptr [ %i.aix, %.lr.ph.i.i55.preheader.i.new ], [ %i.ajq, %.lr.ph.i.i55.i ] ; 5 uses
  %.012.i.i57.i = phi i64 [ 0, %.lr.ph.i.i55.preheader.i.new ], [ %i.ajr, %.lr.ph.i.i55.i ] ; 5 uses
  %niter16182 = phi i64 [ 0, %.lr.ph.i.i55.preheader.i.new ], [ %niter16182.next.3, %.lr.ph.i.i55.i ]
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %.012.i.i57.i
  %i.ajd = load i32, ptr %i.ajb, align 4, !tbaa !211
  store i32 %i.ajd, ptr %i.ajc, align 4, !tbaa !211
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %.012.i.i57.i
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 4
  %i.ajh = load i32, ptr %i.aje, align 4, !tbaa !211
  store i32 %i.ajh, ptr %i.ajg, align 4, !tbaa !211
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %.012.i.i57.i
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  %i.ajl = load i32, ptr %i.aji, align 4, !tbaa !211
  store i32 %i.ajl, ptr %i.ajk, align 4, !tbaa !211
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajb, i64 12
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %.012.i.i57.i
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 12
  %i.ajp = load i32, ptr %i.ajm, align 4, !tbaa !211
  store i32 %i.ajp, ptr %i.ajo, align 4, !tbaa !211
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16 ; 2 uses
  %i.ajr = add nuw i64 %.012.i.i57.i, 4           ; 2 uses
  %niter16182.next.3 = add i64 %niter16182, 4     ; 2 uses
  %niter16182.ncmp.3 = icmp eq i64 %niter16182.next.3, %unroll_iter16181
  br i1 %niter16182.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i.loopexit.unr-lcssa, label %.lr.ph.i.i55.i, !llvm.loop !1619

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i55.i
  %lcmp.mod16179.not = icmp eq i64 %xtraiter16175, 0
  br i1 %lcmp.mod16179.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i, label %.lr.ph.i.i55.i.epil.preheader

.lr.ph.i.i55.i.epil.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i.loopexit.unr-lcssa, %.lr.ph.i.i55.preheader.i
  %.epil.init16178 = phi ptr [ %i.aix, %.lr.ph.i.i55.preheader.i ], [ %i.ajq, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i.loopexit.unr-lcssa ]
  %.012.i.i57.i.epil.init = phi i64 [ 0, %.lr.ph.i.i55.preheader.i ], [ %i.ajr, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i.loopexit.unr-lcssa ]
  %lcmp.mod16180 = icmp ne i64 %xtraiter16175, 0
  call void @llvm.assume(i1 %lcmp.mod16180)
  br label %.lr.ph.i.i55.i.epil

.lr.ph.i.i55.i.epil:                              ; preds = %.lr.ph.i.i55.i.epil, %.lr.ph.i.i55.i.epil.preheader
  %i.ajs = phi ptr [ %i.ajv, %.lr.ph.i.i55.i.epil ], [ %.epil.init16178, %.lr.ph.i.i55.i.epil.preheader ] ; 2 uses
  %.012.i.i57.i.epil = phi i64 [ %i.ajw, %.lr.ph.i.i55.i.epil ], [ %.012.i.i57.i.epil.init, %.lr.ph.i.i55.i.epil.preheader ] ; 2 uses
  %epil.iter16176 = phi i64 [ %epil.iter16176.next, %.lr.ph.i.i55.i.epil ], [ 0, %.lr.ph.i.i55.i.epil.preheader ]
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ais, i64 %.012.i.i57.i.epil
  %i.aju = load i32, ptr %i.ajs, align 4, !tbaa !211
  store i32 %i.aju, ptr %i.ajt, align 4, !tbaa !211
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 4
  %i.ajw = add nuw i64 %.012.i.i57.i.epil, 1
  %epil.iter16176.next = add i64 %epil.iter16176, 1 ; 2 uses
  %epil.iter16176.cmp.not = icmp eq i64 %epil.iter16176.next, %xtraiter16175
  br i1 %epil.iter16176.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i, label %.lr.ph.i.i55.i.epil, !llvm.loop !1674

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i.loopexit.unr-lcssa, %.lr.ph.i.i55.i.epil, %bb.ga
  %i.ajx = icmp samesign ugt i64 %i.aiu, 1
  br i1 %i.ajx, label %bb.gb, label %bb.gc, !prof !224

bb.gb:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i
  %.idx1319 = shl nuw nsw i64 %i.aiu, 2
  %i.ajy = sub nsw i64 0, %i.aiu
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.ais, i64 %i.ajy
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ajz, ptr align 4 %i.afi, i64 %.idx1319, i1 false)
  br label %bb.ge

bb.gc:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i
  %i.aka = icmp eq i64 %i.aiu, 1
  br i1 %i.aka, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.akb = getelementptr inbounds i8, ptr %i.ais, i64 -4
  %i.akc = load i32, ptr %i.afi, align 4, !tbaa !211
  store i32 %i.akc, ptr %i.akb, align 4, !tbaa !211
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %bb.gb
  br i1 %.not.i.i54.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i62.i.preheader

.lr.ph.i62.i.preheader:                           ; preds = %bb.ge
  %min.iters.check13854 = icmp ult i64 %i.ait, 8
  br i1 %min.iters.check13854, label %.lr.ph.i62.i.preheader13998, label %vector.memcheck13851

vector.memcheck13851:                             ; preds = %.lr.ph.i62.i.preheader
  %i.akd = add i64 %.idx1312.pre-phi, %i.afh
  %i.ake = sub i64 %i.aez, %i.akd
  %diff.check13852 = icmp ugt i64 %i.ake, -32
  br i1 %diff.check13852, label %.lr.ph.i62.i.preheader13998, label %vector.ph13855

vector.ph13855:                                   ; preds = %vector.memcheck13851
  %n.vec13856 = and i64 %i.ait, -8                ; 4 uses
  %i.akf = shl i64 %n.vec13856, 2
  %i.akg = getelementptr i8, ptr %i.aex, i64 %i.akf ; 2 uses
  br label %vector.body13857

vector.body13857:                                 ; preds = %vector.body13857, %vector.ph13855
  %index13858 = phi i64 [ 0, %vector.ph13855 ], [ %index.next13862, %vector.body13857 ] ; 3 uses
  %i.akh = shl i64 %index13858, 2
  %next.gep13859 = getelementptr i8, ptr %i.aex, i64 %i.akh ; 2 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %index13858 ; 2 uses
  %i.akj = getelementptr i8, ptr %next.gep13859, i64 16
  %wide.load13860 = load <4 x i32>, ptr %next.gep13859, align 4, !tbaa !211
  %wide.load13861 = load <4 x i32>, ptr %i.akj, align 4, !tbaa !211
  %i.akk = getelementptr inbounds nuw i8, ptr %i.aki, i64 16
  store <4 x i32> %wide.load13860, ptr %i.aki, align 4, !tbaa !211
  store <4 x i32> %wide.load13861, ptr %i.akk, align 4, !tbaa !211
  %index.next13862 = add nuw i64 %index13858, 8   ; 2 uses
  %i.akl = icmp eq i64 %index.next13862, %n.vec13856
  br i1 %i.akl, label %middle.block13863, label %vector.body13857, !llvm.loop !1675

middle.block13863:                                ; preds = %vector.body13857
  %cmp.n13864 = icmp eq i64 %i.ait, %n.vec13856
  br i1 %cmp.n13864, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i62.i.preheader13998

.lr.ph.i62.i.preheader13998:                      ; preds = %vector.memcheck13851, %.lr.ph.i62.i.preheader, %middle.block13863
  %.ph13999 = phi ptr [ %i.aex, %vector.memcheck13851 ], [ %i.aex, %.lr.ph.i62.i.preheader ], [ %i.akg, %middle.block13863 ]
  %.05.i.i927.ph = phi i64 [ 0, %vector.memcheck13851 ], [ 0, %.lr.ph.i62.i.preheader ], [ %n.vec13856, %middle.block13863 ]
  br label %.lr.ph.i62.i

.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i.preheader13998, %.lr.ph.i62.i
  %i.akm = phi ptr [ %i.akp, %.lr.ph.i62.i ], [ %.ph13999, %.lr.ph.i62.i.preheader13998 ] ; 2 uses
  %.05.i.i927 = phi i64 [ %i.akq, %.lr.ph.i62.i ], [ %.05.i.i927.ph, %.lr.ph.i62.i.preheader13998 ] ; 2 uses
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %.05.i.i927
  %i.ako = load i32, ptr %i.akm, align 4, !tbaa !211
  store i32 %i.ako, ptr %i.akn, align 4, !tbaa !211
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akm, i64 4 ; 2 uses
  %i.akq = add nuw i64 %.05.i.i927, 1             ; 2 uses
  %exitcond.not.i64.i = icmp eq i64 %i.akq, %i.ait
  br i1 %exitcond.not.i64.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i62.i, !llvm.loop !1676

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i: ; preds = %.lr.ph.i62.i, %middle.block13863, %bb.ge
  %.sroa.0113.0.i = phi ptr [ %i.aex, %bb.ge ], [ %i.akg, %middle.block13863 ], [ %i.akp, %.lr.ph.i62.i ] ; 5 uses
  %.sroa.0113.0.i13835 = ptrtoaddr ptr %.sroa.0113.0.i to i64
  %.not.i66.i = icmp eq i64 %i.ait, 3
  br i1 %.not.i66.i, label %.loopexit.i929, label %.lr.ph.i67.i.preheader

.lr.ph.i67.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i
  %min.iters.check13838 = icmp ult i64 %i.aiw, 12
  br i1 %min.iters.check13838, label %.lr.ph.i67.i.preheader13996, label %vector.memcheck13834

vector.memcheck13834:                             ; preds = %.lr.ph.i67.i.preheader
  %i.akr = add i64 %i.dj, %i.afh
  %i.aks = shl i64 %.sink1.i.i925, 2
  %i.akt = add i64 %i.akr, %i.aks
  %i.aku = shl i64 %.sroa.speculated.i926, 2
  %i.akv = add i64 %i.aku, %.sroa.0113.0.i13835
  %i.akw = sub i64 %i.akv, %i.akt
  %diff.check13836 = icmp ugt i64 %i.akw, -32
  br i1 %diff.check13836, label %.lr.ph.i67.i.preheader13996, label %vector.ph13839

vector.ph13839:                                   ; preds = %vector.memcheck13834
  %n.vec13840 = and i64 %i.aiw, -8                ; 4 uses
  %i.akx = shl i64 %n.vec13840, 2
  %i.aky = getelementptr i8, ptr %.sroa.0113.0.i, i64 %i.akx
  br label %vector.body13841

vector.body13841:                                 ; preds = %vector.body13841, %vector.ph13839
  %index13842 = phi i64 [ 0, %vector.ph13839 ], [ %index.next13846, %vector.body13841 ] ; 3 uses
  %i.akz = shl i64 %index13842, 2
  %next.gep13843 = getelementptr i8, ptr %.sroa.0113.0.i, i64 %i.akz ; 2 uses
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.aiv, i64 %index13842 ; 2 uses
  %i.alb = getelementptr i8, ptr %next.gep13843, i64 16
  %wide.load13844 = load <4 x i32>, ptr %next.gep13843, align 4, !tbaa !211
  %wide.load13845 = load <4 x i32>, ptr %i.alb, align 4, !tbaa !211
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 16
  store <4 x i32> %wide.load13844, ptr %i.ala, align 4, !tbaa !211
  store <4 x i32> %wide.load13845, ptr %i.alc, align 4, !tbaa !211
  %index.next13846 = add nuw i64 %index13842, 8   ; 2 uses
  %i.ald = icmp eq i64 %index.next13846, %n.vec13840
  br i1 %i.ald, label %middle.block13847, label %vector.body13841, !llvm.loop !1677

middle.block13847:                                ; preds = %vector.body13841
  %cmp.n13848 = icmp eq i64 %i.aiw, %n.vec13840
  br i1 %cmp.n13848, label %.loopexit.i929, label %.lr.ph.i67.i.preheader13996

.lr.ph.i67.i.preheader13996:                      ; preds = %vector.memcheck13834, %.lr.ph.i67.i.preheader, %middle.block13847
  %.ph13997 = phi ptr [ %.sroa.0113.0.i, %vector.memcheck13834 ], [ %.sroa.0113.0.i, %.lr.ph.i67.i.preheader ], [ %i.aky, %middle.block13847 ] ; 2 uses
  %.06.i.i928.ph = phi i64 [ 0, %vector.memcheck13834 ], [ 0, %.lr.ph.i67.i.preheader ], [ %n.vec13840, %middle.block13847 ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  %i.beu = add nuw i64 %.sink1.i.i1002, 1         ; 3 uses
  %.not1324 = icmp ult i64 %.sink1.i.i1002, %.sink.i.i1001
  br i1 %.not1324, label %bb.mj, label %bb.mg

bb.mg:                                            ; preds = %_ZStneRKSt16istream_iteratorIicSt11char_traitsIcElES4_.exit.thread.i
  %i.bev = shl nuw i64 %.sink.i.i1001, 1
  %.sroa.speculated.i.i1022 = call noundef i64 @llvm.umax.i64(i64 %i.bev, i64 %i.beu) ; 4 uses
  %i.bew = icmp ugt i64 %.sroa.speculated.i.i1022, 2305843009213693951
  br i1 %i.bew, label %bb.mh, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1023, !prof !212

bb.mh:                                            ; preds = %bb.mg
  %i.bex = icmp ugt i64 %.sroa.speculated.i.i1022, 4611686018427387903
  br i1 %i.bex, label %.noexc.i1039, label %.noexc44.i1038

.noexc.i1039:                                     ; preds = %bb.mh
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc1040 unwind label %.loopexit.split-lp1334.loopexit.split-lp

.noexc1040:                                       ; preds = %.noexc.i1039
  unreachable

.noexc44.i1038:                                   ; preds = %bb.mh
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc1041 unwind label %.loopexit.split-lp1334.loopexit.split-lp

.noexc1041:                                       ; preds = %.noexc44.i1038
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1023: ; preds = %bb.mg
  %i.bey = shl nuw nsw i64 %.sroa.speculated.i.i1022, 2
  %i.bez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bey) #41
          to label %.noexc1042 unwind label %.loopexit1333 ; 10 uses

.noexc1042:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i1023
  %i.bfa = ptrtoaddr ptr %i.bez to i64            ; 2 uses
  %i.bfb = getelementptr i8, ptr %i.bez, i64 %.idx1326
  store i32 %i.ber, ptr %i.bfb, align 4, !tbaa !211
  %.not.i.i46.i1026 = icmp eq i64 %.0.i6495587, 0
  br i1 %.not.i.i46.i1026, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i1030, label %.lr.ph.i.i47.i1027.preheader

.lr.ph.i.i47.i1027.preheader:                     ; preds = %.noexc1042
  %min.iters.check13788 = icmp ult i64 %.0.i6495587, 8
  %i.bfc = sub i64 %i.bep, %i.bfa
  %diff.check13786 = icmp ugt i64 %i.bfc, -32
  %or.cond13981 = select i1 %min.iters.check13788, i1 true, i1 %diff.check13786
  br i1 %or.cond13981, label %.lr.ph.i.i47.i1027.preheader13985, label %vector.ph13789

vector.ph13789:                                   ; preds = %.lr.ph.i.i47.i1027.preheader
  %n.vec13790 = and i64 %.0.i6495587, -8          ; 4 uses
  %i.bfd = shl i64 %n.vec13790, 2
  %i.bfe = getelementptr i8, ptr %i.beo, i64 %i.bfd ; 2 uses
  br label %vector.body13791

vector.body13791:                                 ; preds = %vector.body13791, %vector.ph13789
  %index13792 = phi i64 [ 0, %vector.ph13789 ], [ %index.next13796, %vector.body13791 ] ; 3 uses
  %i.bff = shl i64 %index13792, 2
  %next.gep13793 = getelementptr i8, ptr %i.beo, i64 %i.bff ; 2 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %index13792 ; 2 uses
  %i.bfh = getelementptr i8, ptr %next.gep13793, i64 16
  %wide.load13794 = load <4 x i32>, ptr %next.gep13793, align 4, !tbaa !211
  %wide.load13795 = load <4 x i32>, ptr %i.bfh, align 4, !tbaa !211
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfg, i64 16
  store <4 x i32> %wide.load13794, ptr %i.bfg, align 4, !tbaa !211
  store <4 x i32> %wide.load13795, ptr %i.bfi, align 4, !tbaa !211
  %index.next13796 = add nuw i64 %index13792, 8   ; 2 uses
  %i.bfj = icmp eq i64 %index.next13796, %n.vec13790
  br i1 %i.bfj, label %middle.block13797, label %vector.body13791, !llvm.loop !1710

middle.block13797:                                ; preds = %vector.body13791
  %cmp.n13798 = icmp eq i64 %.0.i6495587, %n.vec13790
  br i1 %cmp.n13798, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i1030, label %.lr.ph.i.i47.i1027.preheader13985

.lr.ph.i.i47.i1027.preheader13985:                ; preds = %.lr.ph.i.i47.i1027.preheader, %middle.block13797
  %.ph13986 = phi ptr [ %i.beo, %.lr.ph.i.i47.i1027.preheader ], [ %i.bfe, %middle.block13797 ] ; 2 uses
  %.012.i.i49.i1028.ph = phi i64 [ 0, %.lr.ph.i.i47.i1027.preheader ], [ %n.vec13790, %middle.block13797 ] ; 3 uses
  %i.bfk = sub i64 %i.bei, %.012.i.i49.i1028.ph
  %xtraiter16195 = and i64 %.0.i6495587, 3        ; 2 uses
  %lcmp.mod16196.not = icmp eq i64 %xtraiter16195, 0
  br i1 %lcmp.mod16196.not, label %.lr.ph.i.i47.i1027.prol.loopexit, label %.lr.ph.i.i47.i1027.prol

.lr.ph.i.i47.i1027.prol:                          ; preds = %.lr.ph.i.i47.i1027.preheader13985, %.lr.ph.i.i47.i1027.prol
  %i.bfl = phi ptr [ %i.bfo, %.lr.ph.i.i47.i1027.prol ], [ %.ph13986, %.lr.ph.i.i47.i1027.preheader13985 ] ; 2 uses
  %.012.i.i49.i1028.prol = phi i64 [ %i.bfp, %.lr.ph.i.i47.i1027.prol ], [ %.012.i.i49.i1028.ph, %.lr.ph.i.i47.i1027.preheader13985 ] ; 2 uses
  %prol.iter16197 = phi i64 [ %prol.iter16197.next, %.lr.ph.i.i47.i1027.prol ], [ 0, %.lr.ph.i.i47.i1027.preheader13985 ]
  %i.bfm = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %.012.i.i49.i1028.prol
  %i.bfn = load i32, ptr %i.bfl, align 4, !tbaa !211
  store i32 %i.bfn, ptr %i.bfm, align 4, !tbaa !211
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfl, i64 4 ; 3 uses
  %i.bfp = add nuw i64 %.012.i.i49.i1028.prol, 1  ; 2 uses
  %prol.iter16197.next = add i64 %prol.iter16197, 1 ; 2 uses
  %prol.iter16197.cmp.not = icmp eq i64 %prol.iter16197.next, %xtraiter16195
  br i1 %prol.iter16197.cmp.not, label %.lr.ph.i.i47.i1027.prol.loopexit, label %.lr.ph.i.i47.i1027.prol, !llvm.loop !1711

.lr.ph.i.i47.i1027.prol.loopexit:                 ; preds = %.lr.ph.i.i47.i1027.prol, %.lr.ph.i.i47.i1027.preheader13985
  %.lcssa14027.unr = phi ptr [ poison, %.lr.ph.i.i47.i1027.preheader13985 ], [ %i.bfo, %.lr.ph.i.i47.i1027.prol ]
  %.unr16198 = phi ptr [ %.ph13986, %.lr.ph.i.i47.i1027.preheader13985 ], [ %i.bfo, %.lr.ph.i.i47.i1027.prol ]
  %.012.i.i49.i1028.unr = phi i64 [ %.012.i.i49.i1028.ph, %.lr.ph.i.i47.i1027.preheader13985 ], [ %i.bfp, %.lr.ph.i.i47.i1027.prol ]
  %i.bfq = icmp ult i64 %i.bfk, 3
  br i1 %i.bfq, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i1030, label %.lr.ph.i.i47.i1027

.lr.ph.i.i47.i1027:                               ; preds = %.lr.ph.i.i47.i1027.prol.loopexit, %.lr.ph.i.i47.i1027
  %i.bfr = phi ptr [ %i.bgg, %.lr.ph.i.i47.i1027 ], [ %.unr16198, %.lr.ph.i.i47.i1027.prol.loopexit ] ; 5 uses
  %.012.i.i49.i1028 = phi i64 [ %i.bgh, %.lr.ph.i.i47.i1027 ], [ %.012.i.i49.i1028.unr, %.lr.ph.i.i47.i1027.prol.loopexit ] ; 5 uses
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %.012.i.i49.i1028
  %i.bft = load i32, ptr %i.bfr, align 4, !tbaa !211
  store i32 %i.bft, ptr %i.bfs, align 4, !tbaa !211
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfr, i64 4
  %i.bfv = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %.012.i.i49.i1028
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 4
  %i.bfx = load i32, ptr %i.bfu, align 4, !tbaa !211
  store i32 %i.bfx, ptr %i.bfw, align 4, !tbaa !211
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfr, i64 8
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %.012.i.i49.i1028
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8
  %i.bgb = load i32, ptr %i.bfy, align 4, !tbaa !211
  store i32 %i.bgb, ptr %i.bga, align 4, !tbaa !211
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfr, i64 12
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %.012.i.i49.i1028
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 12
  %i.bgf = load i32, ptr %i.bgc, align 4, !tbaa !211
  store i32 %i.bgf, ptr %i.bge, align 4, !tbaa !211
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bfr, i64 16 ; 2 uses
  %i.bgh = add nuw i64 %.012.i.i49.i1028, 4       ; 2 uses
  %exitcond.not.i.i50.i1029.3 = icmp eq i64 %i.bgh, %.0.i6495587
  br i1 %exitcond.not.i.i50.i1029.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i1030, label %.lr.ph.i.i47.i1027, !llvm.loop !1712

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i1030: ; preds = %.lr.ph.i.i47.i1027.prol.loopexit, %.lr.ph.i.i47.i1027, %middle.block13797, %.noexc1042
  %.sroa.090.0.i1031 = phi ptr [ %i.beo, %.noexc1042 ], [ %i.bfe, %middle.block13797 ], [ %.lcssa14027.unr, %.lr.ph.i.i47.i1027.prol.loopexit ], [ %i.bgg, %.lr.ph.i.i47.i1027 ] ; 5 uses
  %.sroa.090.0.i103113769 = ptrtoaddr ptr %.sroa.090.0.i1031 to i64
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bez, i64 %i.bet ; 2 uses
  %i.bgj = sub i64 %.sink1.i.i1002, %.0.i6495587  ; 4 uses
  %.not.i.i1032 = icmp eq i64 %.sink1.i.i1002, %.0.i6495587
  br i1 %.not.i.i1032, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1036, label %.lr.ph.i.i1033.preheader

.lr.ph.i.i1033.preheader:                         ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i1030
  %min.iters.check13772 = icmp ult i64 %i.bgj, 8
  br i1 %min.iters.check13772, label %.lr.ph.i.i1033.preheader13984, label %vector.memcheck13768

vector.memcheck13768:                             ; preds = %.lr.ph.i.i1033.preheader
  %i.bgk = add i64 %i.bek, %i.bfa
  %i.bgl = sub i64 %.sroa.090.0.i103113769, %i.bgk
  %diff.check13770 = icmp ugt i64 %i.bgl, -32
  br i1 %diff.check13770, label %.lr.ph.i.i1033.preheader13984, label %vector.ph13773

vector.ph13773:                                   ; preds = %vector.memcheck13768
  %n.vec13774 = and i64 %i.bgj, -8                ; 4 uses
  %i.bgm = shl i64 %n.vec13774, 2
  %i.bgn = getelementptr i8, ptr %.sroa.090.0.i1031, i64 %i.bgm
  br label %vector.body13775

vector.body13775:                                 ; preds = %vector.body13775, %vector.ph13773
  %index13776 = phi i64 [ 0, %vector.ph13773 ], [ %index.next13780, %vector.body13775 ] ; 3 uses
  %i.bgo = shl i64 %index13776, 2
  %next.gep13777 = getelementptr i8, ptr %.sroa.090.0.i1031, i64 %i.bgo ; 2 uses
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %index13776 ; 2 uses
  %i.bgq = getelementptr i8, ptr %next.gep13777, i64 16
  %wide.load13778 = load <4 x i32>, ptr %next.gep13777, align 4, !tbaa !211
  %wide.load13779 = load <4 x i32>, ptr %i.bgq, align 4, !tbaa !211
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgp, i64 16
  store <4 x i32> %wide.load13778, ptr %i.bgp, align 4, !tbaa !211
  store <4 x i32> %wide.load13779, ptr %i.bgr, align 4, !tbaa !211
  %index.next13780 = add nuw i64 %index13776, 8   ; 2 uses
  %i.bgs = icmp eq i64 %index.next13780, %n.vec13774
  br i1 %i.bgs, label %middle.block13781, label %vector.body13775, !llvm.loop !1713

middle.block13781:                                ; preds = %vector.body13775
  %cmp.n13782 = icmp eq i64 %i.bgj, %n.vec13774
  br i1 %cmp.n13782, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1036, label %.lr.ph.i.i1033.preheader13984

.lr.ph.i.i1033.preheader13984:                    ; preds = %vector.memcheck13768, %.lr.ph.i.i1033.preheader, %middle.block13781
  %.ph = phi ptr [ %.sroa.090.0.i1031, %vector.memcheck13768 ], [ %.sroa.090.0.i1031, %.lr.ph.i.i1033.preheader ], [ %i.bgn, %middle.block13781 ]
  %.012.i.i1034.ph = phi i64 [ 0, %vector.memcheck13768 ], [ 0, %.lr.ph.i.i1033.preheader ], [ %n.vec13774, %middle.block13781 ]
  br label %.lr.ph.i.i1033

.lr.ph.i.i1033:                                   ; preds = %.lr.ph.i.i1033.preheader13984, %.lr.ph.i.i1033
  %i.bgt = phi ptr [ %i.bgw, %.lr.ph.i.i1033 ], [ %.ph, %.lr.ph.i.i1033.preheader13984 ] ; 2 uses
  %.012.i.i1034 = phi i64 [ %i.bgx, %.lr.ph.i.i1033 ], [ %.012.i.i1034.ph, %.lr.ph.i.i1033.preheader13984 ] ; 2 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %.012.i.i1034
  %i.bgv = load i32, ptr %i.bgt, align 4, !tbaa !211
  store i32 %i.bgv, ptr %i.bgu, align 4, !tbaa !211
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgt, i64 4
  %i.bgx = add nuw i64 %.012.i.i1034, 1           ; 2 uses
  %exitcond.not.i.i1035 = icmp eq i64 %i.bgx, %i.bgj
  br i1 %exitcond.not.i.i1035, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1036, label %.lr.ph.i.i1033, !llvm.loop !1714

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1036: ; preds = %.lr.ph.i.i1033, %middle.block13781, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i1030
  %i.bgy = load i64, ptr %47, align 8, !tbaa !197
  %i.bgz = trunc i64 %i.bgy to i1
  br i1 %i.bgz, label %bb.mi, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1037

bb.mi:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1036
  %i.bha = load ptr, ptr %i.bj, align 8, !tbaa !198
  %i.bhb = load i64, ptr %i.bi, align 8, !tbaa !198
  %i.bhc = shl i64 %i.bhb, 2
  call void @_ZdlPvm(ptr noundef %i.bha, i64 noundef %i.bhc) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1037

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1037: ; preds = %bb.mi, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1036
  store ptr %i.bez, ptr %i.bj, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i1022, ptr %i.bi, align 8, !tbaa !198
  %i.bhd = shl i64 %i.beu, 1
  %i.bhe = or disjoint i64 %i.bhd, 1
  br label %.noexc652

bb.mj:                                            ; preds = %_ZStneRKSt16istream_iteratorIicSt11char_traitsIcElES4_.exit.thread.i
  %.sroa.speculated.i1003 = call i64 @llvm.umax.i64(i64 %i.bet, i64 %.sink1.i.i1002) ; 5 uses
  %i.bhf = getelementptr [4 x i8], ptr %i.beo, i64 %.sroa.speculated.i1003 ; 12 uses
  %i.bhg = sub i64 %i.beu, %.sroa.speculated.i1003 ; 5 uses
  %i.bhh = sub nuw i64 %.sroa.speculated.i1003, %i.bet ; 4 uses
  %i.bhi = getelementptr [4 x i8], ptr %i.beq, i64 %i.bhg
  %.not.i.i56.i1004 = icmp eq i64 %.0.i6495587, %.sink1.i.i1002 ; 2 uses
  br i1 %.not.i.i56.i1004, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009, label %.lr.ph.i.i57.preheader.i1005

.lr.ph.i.i57.preheader.i1005:                     ; preds = %bb.mj
  %i.bhj = getelementptr i8, ptr %i.bhf, i64 -4
  %load_initial13975 = load i32, ptr %i.bhj, align 4 ; 9 uses
  %i.bhk = sub i64 %.sink1.i.i1002, %.sroa.speculated.i1003
  %xtraiter16199 = and i64 %i.bhg, 7              ; 3 uses
  %i.bhl = icmp ult i64 %i.bhk, 7
  br i1 %i.bhl, label %.lr.ph.i.i57.i1006.epil.preheader, label %.lr.ph.i.i57.preheader.i1005.new

.lr.ph.i.i57.preheader.i1005.new:                 ; preds = %.lr.ph.i.i57.preheader.i1005
  %unroll_iter16203 = and i64 %i.bhg, -8
  br label %.lr.ph.i.i57.i1006

.lr.ph.i.i57.i1006:                               ; preds = %.lr.ph.i.i57.i1006, %.lr.ph.i.i57.preheader.i1005.new
  %.012.i.i59.i1007 = phi i64 [ 0, %.lr.ph.i.i57.preheader.i1005.new ], [ %i.bib, %.lr.ph.i.i57.i1006 ] ; 9 uses
  %niter16204 = phi i64 [ 0, %.lr.ph.i.i57.preheader.i1005.new ], [ %niter16204.next.7, %.lr.ph.i.i57.i1006 ]
  %i.bhm = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  store i32 %load_initial13975, ptr %i.bhm, align 4, !tbaa !211
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 4
  store i32 %load_initial13975, ptr %i.bho, align 4, !tbaa !211
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8
  store i32 %load_initial13975, ptr %i.bhq, align 4, !tbaa !211
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 12
  store i32 %load_initial13975, ptr %i.bhs, align 4, !tbaa !211
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 16
  store i32 %load_initial13975, ptr %i.bhu, align 4, !tbaa !211
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 20
  store i32 %load_initial13975, ptr %i.bhw, align 4, !tbaa !211
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 24
  store i32 %load_initial13975, ptr %i.bhy, align 4, !tbaa !211
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 28
  store i32 %load_initial13975, ptr %i.bia, align 4, !tbaa !211
  %i.bib = add nuw i64 %.012.i.i59.i1007, 8       ; 2 uses
  %niter16204.next.7 = add i64 %niter16204, 8     ; 2 uses
  %niter16204.ncmp.7 = icmp eq i64 %niter16204.next.7, %unroll_iter16203
  br i1 %niter16204.ncmp.7, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa, label %.lr.ph.i.i57.i1006, !llvm.loop !1619

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i57.i1006
  %lcmp.mod16201.not = icmp eq i64 %xtraiter16199, 0
  br i1 %lcmp.mod16201.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009, label %.lr.ph.i.i57.i1006.epil.preheader

.lr.ph.i.i57.i1006.epil.preheader:                ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa, %.lr.ph.i.i57.preheader.i1005
  %.012.i.i59.i1007.epil.init = phi i64 [ 0, %.lr.ph.i.i57.preheader.i1005 ], [ %i.bib, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa ]
  %lcmp.mod16202 = icmp ne i64 %xtraiter16199, 0
  call void @llvm.assume(i1 %lcmp.mod16202)
  br label %.lr.ph.i.i57.i1006.epil

.lr.ph.i.i57.i1006.epil:                          ; preds = %.lr.ph.i.i57.i1006.epil, %.lr.ph.i.i57.i1006.epil.preheader
  %.012.i.i59.i1007.epil = phi i64 [ %i.bid, %.lr.ph.i.i57.i1006.epil ], [ %.012.i.i59.i1007.epil.init, %.lr.ph.i.i57.i1006.epil.preheader ] ; 2 uses
  %epil.iter16200 = phi i64 [ %epil.iter16200.next, %.lr.ph.i.i57.i1006.epil ], [ 0, %.lr.ph.i.i57.i1006.epil.preheader ]
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.bhf, i64 %.012.i.i59.i1007.epil
  store i32 %load_initial13975, ptr %i.bic, align 4, !tbaa !211
  %i.bid = add nuw i64 %.012.i.i59.i1007.epil, 1
  %epil.iter16200.next = add i64 %epil.iter16200, 1 ; 2 uses
  %epil.iter16200.cmp.not = icmp eq i64 %epil.iter16200.next, %xtraiter16199
  br i1 %epil.iter16200.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009, label %.lr.ph.i.i57.i1006.epil, !llvm.loop !1715

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009.loopexit.unr-lcssa, %.lr.ph.i.i57.i1006.epil, %bb.mj
  %i.bie = icmp sgt i64 %i.bhh, 1
  br i1 %i.bie, label %bb.mk, label %bb.ml, !prof !224

bb.mk:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009
  %.idx1325 = shl nuw nsw i64 %i.bhh, 2
  %i.bif = sub nsw i64 0, %i.bhh
  %i.big = getelementptr inbounds [4 x i8], ptr %i.bhf, i64 %i.bif
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.big, ptr align 4 %i.beq, i64 %.idx1325, i1 false)
  br label %bb.mn

bb.ml:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i1009
  %i.bih = icmp eq i64 %i.bhh, 1
  br i1 %i.bih, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.bii = getelementptr inbounds i8, ptr %i.bhf, i64 -4
  %i.bij = load i32, ptr %i.beq, align 4, !tbaa !211
  store i32 %i.bij, ptr %i.bii, align 4, !tbaa !211
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %bb.ml, %bb.mk
  br i1 %.not.i.i56.i1004, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013, label %.lr.ph.i64.i1010.preheader

.lr.ph.i64.i1010.preheader:                       ; preds = %bb.mn
  %i.bik = shl nuw i64 %i.bhg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.beq, ptr nonnull align 4 %i.c, i64 %i.bik, i1 false), !tbaa !211
  %i.bil = call i64 @llvm.usub.sat.i64(i64 %indvars.iv9116, i64 %.sink1.i.i1002)
  %.neg9403 = mul i64 %i.bil, -4
  %scevgep9119 = getelementptr i8, ptr %scevgep9115, i64 %.neg9403
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013: ; preds = %.lr.ph.i64.i1010.preheader, %bb.mn
  %.sroa.0117.0.i1014 = phi ptr [ %i.c, %bb.mn ], [ %scevgep9119, %.lr.ph.i64.i1010.preheader ]
  %.not.i68.i1015 = icmp eq i64 %i.bhg, 1
  br i1 %.not.i68.i1015, label %.loopexit.i1019, label %.lr.ph.i69.i1016.preheader

.lr.ph.i69.i1016.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013
  %i.bim = sub i64 %.sroa.speculated.i1003, %.sink1.i.i1002
  %i.bin = shl i64 %i.bim, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bhi, ptr align 4 %.sroa.0117.0.i1014, i64 %i.bin, i1 false), !tbaa !211
  br label %.loopexit.i1019

.loopexit.i1019:                                  ; preds = %.lr.ph.i69.i1016.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i1013
  %i.bio = load i64, ptr %47, align 8, !tbaa !197
  %i.bip = add i64 %i.bio, 2
  br label %.noexc652

.noexc652:                                        ; preds = %.loopexit.i1019, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1037
  %storemerge.i1020 = phi i64 [ %i.bip, %.loopexit.i1019 ], [ %i.bhe, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1037 ]
  store i64 %storemerge.i1020, ptr %47, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.biq = load ptr, ptr %50, align 8, !tbaa !1795 ; 2 uses
  %.not.i.i.i650 = icmp eq ptr %i.biq, null
  br i1 %.not.i.i.i650, label %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i, label %bb.mo

bb.mo:                                            ; preds = %.noexc652
  %i.bir = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.biq, ptr noundef nonnull align 4 dereferenceable(4) %i.cf)
          to label %.noexc653 unwind label %.loopexit1333 ; 2 uses

.noexc653:                                        ; preds = %bb.mo
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !169
  %i.bit = getelementptr i8, ptr %i.bis, i64 -24
  %i.biu = load i64, ptr %i.bit, align 8
  %i.biv = getelementptr inbounds i8, ptr %i.bir, i64 %i.biu
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 32
  %i.bix = load i32, ptr %i.biw, align 8, !tbaa !178
  %i.biy = and i32 %i.bix, 5
  %.not1.i.i.i = icmp eq i32 %i.biy, 0
  br i1 %.not1.i.i.i, label %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i, label %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i.thread

_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i.thread: ; preds = %.noexc653
  store ptr null, ptr %50, align 8, !tbaa !1795
  store i8 0, ptr %i.ce, align 4, !tbaa !1796
  br label %._crit_edge.loopexit

_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i: ; preds = %.noexc653, %.noexc652
  %.pr = load i8, ptr %i.ce, align 4, !tbaa !1796
  %i.biz = icmp eq i8 %.pr, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.biz, label %._crit_edge.loopexit, label %_ZStneRKSt16istream_iteratorIicSt11char_traitsIcElES4_.exit.thread.i, !llvm.loop !1716

._crit_edge.loopexit:                             ; preds = %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEppEv.exit.i.thread
  %.pre9129 = load i64, ptr %47, align 8, !tbaa !197
  %.pre9130 = load ptr, ptr %i.bj, align 8
  %.pre9131 = trunc i64 %.pre9129 to i1
  %.pre9132 = select i1 %.pre9131, ptr %.pre9130, ptr %i.bj
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit.thread, %._crit_edge.loopexit, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit
  %i.bja = phi i64 [ %i.bee, %._crit_edge.loopexit ], [ %i.bee, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit ], [ %i.bdx, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit.thread ]
  %.pre-phi9133 = phi ptr [ %.pre9132, %._crit_edge.loopexit ], [ %i.bec, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit ], [ %i.bdv, %_ZNSt16istream_iteratorIicSt11char_traitsIcElEC2ERSi.exit.thread ]
  %i.bjb = getelementptr inbounds nuw i8, ptr %.pre-phi9133, i64 %i.bja
  store ptr %i.bjb, ptr %i.s, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #36
  %i.bjc = ptrtoint ptr %.sroa.141177.2 to i64
  %i.bjd = ptrtoint ptr %.sroa.01169.5 to i64     ; 2 uses
  %i.bje = sub i64 %i.bjc, %i.bjd                 ; 7 uses
  %i.bjf = icmp ugt i64 %i.bje, 9223372036854775804
  br i1 %i.bjf, label %.noexc.i.i.i.i658, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654

.noexc.i.i.i.i658:                                ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc659 unwind label %.loopexit.split-lp1463

.noexc659:                                        ; preds = %.noexc.i.i.i.i658
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654: ; preds = %._crit_edge
  %.not.i.i.i.i.i.i655 = icmp eq ptr %.sroa.141177.2, %.sroa.01169.5
  br i1 %.not.i.i.i.i.i.i655, label %.thread.i.i.i.i.i657, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i656

.thread.i.i.i.i.i657:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654
  %i.bjg = getelementptr inbounds nuw i8, ptr null, i64 %i.bje
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit661

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i656: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i654
  %i.bjh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bje) #41
          to label %.noexc660 unwind label %.loopexit1462 ; 6 uses

.noexc660:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i656
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 %i.bje ; 3 uses
  %i.bjj = icmp samesign ugt i64 %i.bje, 4
  br i1 %i.bjj, label %bb.mp, label %bb.mq, !prof !318
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a

.lr.ph.i.i47.i1106.preheader:                     ; preds = %.noexc1121
  %min.iters.check13742 = icmp samesign ult i64 %.0605588, 8
  %i.bso = sub i64 %i.bsa, %i.bsl
  %diff.check13740 = icmp ugt i64 %i.bso, -32
  %or.cond13982 = select i1 %min.iters.check13742, i1 true, i1 %diff.check13740
  br i1 %or.cond13982, label %.lr.ph.i.i47.i1106.preheader13989, label %vector.ph13743

vector.ph13743:                                   ; preds = %.lr.ph.i.i47.i1106.preheader
  %n.vec13744 = and i64 %.0605588, 9223372036854775800 ; 4 uses
  %i.bsp = shl i64 %n.vec13744, 2
  %i.bsq = getelementptr i8, ptr %i.brz, i64 %i.bsp ; 2 uses
  br label %vector.body13745

vector.body13745:                                 ; preds = %vector.body13745, %vector.ph13743
  %index13746 = phi i64 [ 0, %vector.ph13743 ], [ %index.next13750, %vector.body13745 ] ; 3 uses
  %i.bsr = shl i64 %index13746, 2
  %next.gep13747 = getelementptr i8, ptr %i.brz, i64 %i.bsr ; 2 uses
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %index13746 ; 2 uses
  %i.bst = getelementptr i8, ptr %next.gep13747, i64 16
  %wide.load13748 = load <4 x i32>, ptr %next.gep13747, align 4, !tbaa !211
  %wide.load13749 = load <4 x i32>, ptr %i.bst, align 4, !tbaa !211
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bss, i64 16
  store <4 x i32> %wide.load13748, ptr %i.bss, align 4, !tbaa !211
  store <4 x i32> %wide.load13749, ptr %i.bsu, align 4, !tbaa !211
  %index.next13750 = add nuw i64 %index13746, 8   ; 2 uses
  %i.bsv = icmp eq i64 %index.next13750, %n.vec13744
  br i1 %i.bsv, label %middle.block13751, label %vector.body13745, !llvm.loop !1733

middle.block13751:                                ; preds = %vector.body13745
  %cmp.n13752 = icmp eq i64 %.0605588, %n.vec13744
  br i1 %cmp.n13752, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109, label %.lr.ph.i.i47.i1106.preheader13989

.lr.ph.i.i47.i1106.preheader13989:                ; preds = %.lr.ph.i.i47.i1106.preheader, %middle.block13751
  %.ph13990 = phi ptr [ %i.brz, %.lr.ph.i.i47.i1106.preheader ], [ %i.bsq, %middle.block13751 ] ; 2 uses
  %.012.i.i.i1107.ph = phi i64 [ 0, %.lr.ph.i.i47.i1106.preheader ], [ %n.vec13744, %middle.block13751 ] ; 3 uses
  %xtraiter16205 = and i64 %.0605588, 3           ; 2 uses
  %lcmp.mod16206.not = icmp eq i64 %xtraiter16205, 0
  br i1 %lcmp.mod16206.not, label %.lr.ph.i.i47.i1106.prol.loopexit, label %.lr.ph.i.i47.i1106.prol

.lr.ph.i.i47.i1106.prol:                          ; preds = %.lr.ph.i.i47.i1106.preheader13989, %.lr.ph.i.i47.i1106.prol
  %i.bsw = phi ptr [ %i.bsz, %.lr.ph.i.i47.i1106.prol ], [ %.ph13990, %.lr.ph.i.i47.i1106.preheader13989 ] ; 2 uses
  %.012.i.i.i1107.prol = phi i64 [ %i.bta, %.lr.ph.i.i47.i1106.prol ], [ %.012.i.i.i1107.ph, %.lr.ph.i.i47.i1106.preheader13989 ] ; 2 uses
  %prol.iter16207 = phi i64 [ %prol.iter16207.next, %.lr.ph.i.i47.i1106.prol ], [ 0, %.lr.ph.i.i47.i1106.preheader13989 ]
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %.012.i.i.i1107.prol
  %i.bsy = load i32, ptr %i.bsw, align 4, !tbaa !211
  store i32 %i.bsy, ptr %i.bsx, align 4, !tbaa !211
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsw, i64 4 ; 3 uses
  %i.bta = add nuw nsw i64 %.012.i.i.i1107.prol, 1 ; 2 uses
  %prol.iter16207.next = add i64 %prol.iter16207, 1 ; 2 uses
  %prol.iter16207.cmp.not = icmp eq i64 %prol.iter16207.next, %xtraiter16205
  br i1 %prol.iter16207.cmp.not, label %.lr.ph.i.i47.i1106.prol.loopexit, label %.lr.ph.i.i47.i1106.prol, !llvm.loop !1734

.lr.ph.i.i47.i1106.prol.loopexit:                 ; preds = %.lr.ph.i.i47.i1106.prol, %.lr.ph.i.i47.i1106.preheader13989
  %.lcssa14032.unr = phi ptr [ poison, %.lr.ph.i.i47.i1106.preheader13989 ], [ %i.bsz, %.lr.ph.i.i47.i1106.prol ]
  %.unr16208 = phi ptr [ %.ph13990, %.lr.ph.i.i47.i1106.preheader13989 ], [ %i.bsz, %.lr.ph.i.i47.i1106.prol ]
  %.012.i.i.i1107.unr = phi i64 [ %.012.i.i.i1107.ph, %.lr.ph.i.i47.i1106.preheader13989 ], [ %i.bta, %.lr.ph.i.i47.i1106.prol ]
  %i.btb = sub nsw i64 %.012.i.i.i1107.ph, %.0605588
  %i.btc = icmp ugt i64 %i.btb, -4
  br i1 %i.btc, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109, label %.lr.ph.i.i47.i1106

.lr.ph.i.i47.i1106:                               ; preds = %.lr.ph.i.i47.i1106.prol.loopexit, %.lr.ph.i.i47.i1106
  %i.btd = phi ptr [ %i.bts, %.lr.ph.i.i47.i1106 ], [ %.unr16208, %.lr.ph.i.i47.i1106.prol.loopexit ] ; 5 uses
  %.012.i.i.i1107 = phi i64 [ %i.btt, %.lr.ph.i.i47.i1106 ], [ %.012.i.i.i1107.unr, %.lr.ph.i.i47.i1106.prol.loopexit ] ; 5 uses
  %i.bte = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %.012.i.i.i1107
  %i.btf = load i32, ptr %i.btd, align 4, !tbaa !211
  store i32 %i.btf, ptr %i.bte, align 4, !tbaa !211
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btd, i64 4
  %i.bth = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %.012.i.i.i1107
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 4
  %i.btj = load i32, ptr %i.btg, align 4, !tbaa !211
  store i32 %i.btj, ptr %i.bti, align 4, !tbaa !211
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btd, i64 8
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %.012.i.i.i1107
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 8
  %i.btn = load i32, ptr %i.btk, align 4, !tbaa !211
  store i32 %i.btn, ptr %i.btm, align 4, !tbaa !211
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btd, i64 12
  %i.btp = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %.012.i.i.i1107
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 12
  %i.btr = load i32, ptr %i.bto, align 4, !tbaa !211
  store i32 %i.btr, ptr %i.btq, align 4, !tbaa !211
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btd, i64 16 ; 2 uses
  %i.btt = add nuw nsw i64 %.012.i.i.i1107, 4     ; 2 uses
  %exitcond.not.i.i49.i1108.3 = icmp eq i64 %i.btt, %.0605588
  br i1 %exitcond.not.i.i49.i1108.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109, label %.lr.ph.i.i47.i1106, !llvm.loop !1735

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109: ; preds = %.lr.ph.i.i47.i1106.prol.loopexit, %.lr.ph.i.i47.i1106, %middle.block13751, %.noexc1121
  %.sroa.086.0.i1110 = phi ptr [ %i.brz, %.noexc1121 ], [ %i.bsq, %middle.block13751 ], [ %.lcssa14032.unr, %.lr.ph.i.i47.i1106.prol.loopexit ], [ %i.bts, %.lr.ph.i.i47.i1106 ] ; 5 uses
  %.sroa.086.0.i111013736 = ptrtoaddr ptr %.sroa.086.0.i1110 to i64
  %i.btu = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %i.bsd ; 6 uses
  %i.btv = sub nsw i64 %.sink1.i.i1083, %.0605588 ; 4 uses
  %.not.i.i1111 = icmp eq i64 %.sink1.i.i1083, %.0605588
  br i1 %.not.i.i1111, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115, label %.lr.ph.i.i1112.preheader

.lr.ph.i.i1112.preheader:                         ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109
  %min.iters.check = icmp ult i64 %i.btv, 8
  br i1 %min.iters.check, label %.lr.ph.i.i1112.preheader13987, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i1112.preheader
  %i.btw = add i64 %i.dn, %i.bsl
  %i.btx = sub i64 %.sroa.086.0.i111013736, %i.btw
  %diff.check = icmp ugt i64 %i.btx, -32
  br i1 %diff.check, label %.lr.ph.i.i1112.preheader13987, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.btv, -8                     ; 4 uses
  %i.bty = shl i64 %n.vec, 2
  %i.btz = getelementptr i8, ptr %.sroa.086.0.i1110, i64 %i.bty
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bua = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.086.0.i1110, i64 %i.bua ; 2 uses
  %i.bub = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %index ; 2 uses
  %i.buc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load13737 = load <4 x i32>, ptr %i.buc, align 4, !tbaa !211
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bub, i64 16
  store <4 x i32> %wide.load, ptr %i.bub, align 4, !tbaa !211
  store <4 x i32> %wide.load13737, ptr %i.bud, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bue = icmp eq i64 %index.next, %n.vec
  br i1 %i.bue, label %middle.block, label %vector.body, !llvm.loop !1736

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.btv, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115, label %.lr.ph.i.i1112.preheader13987

.lr.ph.i.i1112.preheader13987:                    ; preds = %vector.memcheck, %.lr.ph.i.i1112.preheader, %middle.block
  %.ph13988 = phi ptr [ %.sroa.086.0.i1110, %vector.memcheck ], [ %.sroa.086.0.i1110, %.lr.ph.i.i1112.preheader ], [ %i.btz, %middle.block ] ; 2 uses
  %.012.i.i1113.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i1112.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.buf = sub nsw i64 %.sink1.i.i1083, %.0605588
  %xtraiter16209 = and i64 %i.buf, 3              ; 2 uses
  %lcmp.mod16210.not = icmp eq i64 %xtraiter16209, 0
  br i1 %lcmp.mod16210.not, label %.lr.ph.i.i1112.prol.loopexit, label %.lr.ph.i.i1112.prol

.lr.ph.i.i1112.prol:                              ; preds = %.lr.ph.i.i1112.preheader13987, %.lr.ph.i.i1112.prol
  %i.bug = phi ptr [ %i.buj, %.lr.ph.i.i1112.prol ], [ %.ph13988, %.lr.ph.i.i1112.preheader13987 ] ; 2 uses
  %.012.i.i1113.prol = phi i64 [ %i.buk, %.lr.ph.i.i1112.prol ], [ %.012.i.i1113.ph, %.lr.ph.i.i1112.preheader13987 ] ; 2 uses
  %prol.iter16211 = phi i64 [ %prol.iter16211.next, %.lr.ph.i.i1112.prol ], [ 0, %.lr.ph.i.i1112.preheader13987 ]
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %.012.i.i1113.prol
  %i.bui = load i32, ptr %i.bug, align 4, !tbaa !211
  store i32 %i.bui, ptr %i.buh, align 4, !tbaa !211
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bug, i64 4 ; 2 uses
  %i.buk = add nuw i64 %.012.i.i1113.prol, 1      ; 2 uses
  %prol.iter16211.next = add i64 %prol.iter16211, 1 ; 2 uses
  %prol.iter16211.cmp.not = icmp eq i64 %prol.iter16211.next, %xtraiter16209
  br i1 %prol.iter16211.cmp.not, label %.lr.ph.i.i1112.prol.loopexit, label %.lr.ph.i.i1112.prol, !llvm.loop !1737

.lr.ph.i.i1112.prol.loopexit:                     ; preds = %.lr.ph.i.i1112.prol, %.lr.ph.i.i1112.preheader13987
  %.unr16212 = phi ptr [ %.ph13988, %.lr.ph.i.i1112.preheader13987 ], [ %i.buj, %.lr.ph.i.i1112.prol ]
  %.012.i.i1113.unr = phi i64 [ %.012.i.i1113.ph, %.lr.ph.i.i1112.preheader13987 ], [ %i.buk, %.lr.ph.i.i1112.prol ]
  %i.bul = sub nsw i64 %.0605588, %.sink1.i.i1083
  %i.bum = add i64 %i.bul, %.012.i.i1113.ph
  %i.bun = icmp ugt i64 %i.bum, -4
  br i1 %i.bun, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115, label %.lr.ph.i.i1112

.lr.ph.i.i1112:                                   ; preds = %.lr.ph.i.i1112.prol.loopexit, %.lr.ph.i.i1112
  %i.buo = phi ptr [ %i.bvd, %.lr.ph.i.i1112 ], [ %.unr16212, %.lr.ph.i.i1112.prol.loopexit ] ; 5 uses
  %.012.i.i1113 = phi i64 [ %i.bve, %.lr.ph.i.i1112 ], [ %.012.i.i1113.unr, %.lr.ph.i.i1112.prol.loopexit ] ; 5 uses
  %i.bup = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %.012.i.i1113
  %i.buq = load i32, ptr %i.buo, align 4, !tbaa !211
  store i32 %i.buq, ptr %i.bup, align 4, !tbaa !211
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buo, i64 4
  %i.bus = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %.012.i.i1113
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 4
  %i.buu = load i32, ptr %i.bur, align 4, !tbaa !211
  store i32 %i.buu, ptr %i.but, align 4, !tbaa !211
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buo, i64 8
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %.012.i.i1113
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 8
  %i.buy = load i32, ptr %i.buv, align 4, !tbaa !211
  store i32 %i.buy, ptr %i.bux, align 4, !tbaa !211
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buo, i64 12
  %i.bva = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %.012.i.i1113
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 12
  %i.bvc = load i32, ptr %i.buz, align 4, !tbaa !211
  store i32 %i.bvc, ptr %i.bvb, align 4, !tbaa !211
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.buo, i64 16
  %i.bve = add nuw i64 %.012.i.i1113, 4           ; 2 uses
  %exitcond.not.i.i1114.3 = icmp eq i64 %i.bve, %i.btv
  br i1 %exitcond.not.i.i1114.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115, label %.lr.ph.i.i1112, !llvm.loop !1738

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115: ; preds = %.lr.ph.i.i1112.prol.loopexit, %.lr.ph.i.i1112, %middle.block, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i1109
  %i.bvf = load i64, ptr %58, align 8, !tbaa !197
  %i.bvg = trunc i64 %i.bvf to i1
  br i1 %i.bvg, label %bb.pv, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116

bb.pv:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115
  %i.bvh = load ptr, ptr %i.cq, align 8, !tbaa !198
  %i.bvi = load i64, ptr %i.cp, align 8, !tbaa !198
  %i.bvj = shl i64 %i.bvi, 2
  call void @_ZdlPvm(ptr noundef %i.bvh, i64 noundef %i.bvj) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116: ; preds = %bb.pv, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i1115
  store ptr %i.bsk, ptr %i.cq, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i1102, ptr %i.cp, align 8, !tbaa !198
  %i.bvk = shl i64 %i.bse, 1
  %i.bvl = or disjoint i64 %i.bvk, 1
  br label %bb.qb

bb.pw:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EESt16initializer_listIiE.exit772
  %.sroa.speculated.i1084 = call i64 @llvm.umax.i64(i64 %i.bsd, i64 %.sink1.i.i1083) ; 4 uses
  %i.bvm = getelementptr [4 x i8], ptr %i.brz, i64 %.sroa.speculated.i1084 ; 5 uses
  %i.bvn = sub i64 %i.bse, %.sroa.speculated.i1084 ; 7 uses
  %i.bvo = sub nuw nsw i64 %.sroa.speculated.i1084, %i.bsd ; 4 uses
  %i.bvp = getelementptr [4 x i8], ptr %i.bsb, i64 %i.bvn
  %.not.i.i54.i1085 = icmp eq i64 %.0605588, %.sink1.i.i1083 ; 2 uses
  br i1 %.not.i.i54.i1085, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090, label %.lr.ph.i.i55.preheader.i1086

.lr.ph.i.i55.preheader.i1086:                     ; preds = %bb.pw
  %i.bvq = getelementptr i8, ptr %i.bvm, i64 -8   ; 3 uses
  %min.iters.check13756 = icmp ult i64 %i.bvn, 2
  br i1 %min.iters.check13756, label %.lr.ph.i.i55.i1087.preheader, label %vector.ph13757

vector.ph13757:                                   ; preds = %.lr.ph.i.i55.preheader.i1086
  %n.vec13758 = and i64 %i.bvn, -2                ; 4 uses
  %i.bvr = shl i64 %n.vec13758, 2
  %i.bvs = getelementptr i8, ptr %i.bvq, i64 %i.bvr
  %load_initial13977 = load <2 x i32>, ptr %i.bvq, align 4
  br label %vector.body13759

vector.body13759:                                 ; preds = %vector.body13759, %vector.ph13757
  %index13760 = phi i64 [ 0, %vector.ph13757 ], [ %index.next13763, %vector.body13759 ] ; 2 uses
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.bvm, i64 %index13760
  store <2 x i32> %load_initial13977, ptr %i.bvt, align 4, !tbaa !211
  %index.next13763 = add nuw i64 %index13760, 2   ; 2 uses
  %i.bvu = icmp eq i64 %index.next13763, %n.vec13758
  br i1 %i.bvu, label %middle.block13764, label %vector.body13759, !llvm.loop !1739

middle.block13764:                                ; preds = %vector.body13759
  %cmp.n13765 = icmp eq i64 %i.bvn, %n.vec13758
  br i1 %cmp.n13765, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090, label %.lr.ph.i.i55.i1087.preheader

.lr.ph.i.i55.i1087.preheader:                     ; preds = %.lr.ph.i.i55.preheader.i1086, %middle.block13764
  %.ph13991 = phi ptr [ %i.bvq, %.lr.ph.i.i55.preheader.i1086 ], [ %i.bvs, %middle.block13764 ]
  %.012.i.i57.i1088.ph = phi i64 [ 0, %.lr.ph.i.i55.preheader.i1086 ], [ %n.vec13758, %middle.block13764 ]
  br label %.lr.ph.i.i55.i1087

.lr.ph.i.i55.i1087:                               ; preds = %.lr.ph.i.i55.i1087.preheader, %.lr.ph.i.i55.i1087
  %i.bvv = phi ptr [ %i.bvy, %.lr.ph.i.i55.i1087 ], [ %.ph13991, %.lr.ph.i.i55.i1087.preheader ] ; 2 uses
  %.012.i.i57.i1088 = phi i64 [ %i.bvz, %.lr.ph.i.i55.i1087 ], [ %.012.i.i57.i1088.ph, %.lr.ph.i.i55.i1087.preheader ] ; 2 uses
  %i.bvw = getelementptr inbounds nuw [4 x i8], ptr %i.bvm, i64 %.012.i.i57.i1088
  %i.bvx = load i32, ptr %i.bvv, align 4, !tbaa !211
  store i32 %i.bvx, ptr %i.bvw, align 4, !tbaa !211
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvv, i64 4
  %i.bvz = add nuw i64 %.012.i.i57.i1088, 1       ; 2 uses
  %exitcond.not.i.i58.i1089 = icmp eq i64 %i.bvz, %i.bvn
  br i1 %exitcond.not.i.i58.i1089, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090, label %.lr.ph.i.i55.i1087, !llvm.loop !1740

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090: ; preds = %.lr.ph.i.i55.i1087, %middle.block13764, %bb.pw
  %i.bwa = icmp samesign ugt i64 %i.bvo, 1
  br i1 %i.bwa, label %bb.px, label %bb.py, !prof !224

bb.px:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090
  %.idx1331 = shl nuw nsw i64 %i.bvo, 2
  %i.bwb = sub nsw i64 0, %i.bvo
  %i.bwc = getelementptr inbounds [4 x i8], ptr %i.bvm, i64 %i.bwb
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bwc, ptr align 4 %i.bsb, i64 %.idx1331, i1 false)
  br label %bb.qa

bb.py:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60.i1090
  %i.bwd = icmp eq i64 %i.bvo, 1
  br i1 %i.bwd, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.bwe = getelementptr inbounds i8, ptr %i.bvm, i64 -4
  %i.bwf = load i32, ptr %i.bsb, align 4, !tbaa !211
  store i32 %i.bwf, ptr %i.bwe, align 4, !tbaa !211
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py, %bb.px
  br i1 %.not.i.i54.i1085, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i, label %.lr.ph.i62.i1091.preheader

.lr.ph.i62.i1091.preheader:                       ; preds = %bb.qa
  %i.bwg = shl nuw i64 %i.bvn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bsb, ptr nonnull align 8 %i.w, i64 %i.bwg, i1 false), !tbaa !211
  %i.bwh = call i64 @llvm.usub.sat.i64(i64 %indvars.iv9121, i64 %.sink1.i.i1083)
  %.neg9404 = mul i64 %i.bwh, -4
  %scevgep9124 = getelementptr i8, ptr %scevgep9120, i64 %.neg9404
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i: ; preds = %.lr.ph.i62.i1091.preheader, %bb.qa
  %.sroa.0113.0.i1094 = phi ptr [ %i.w, %bb.qa ], [ %scevgep9124, %.lr.ph.i62.i1091.preheader ]
  %.not.i66.i1095 = icmp eq i64 %i.bvn, 2
  br i1 %.not.i66.i1095, label %.loopexit.i1099, label %.lr.ph.i67.i1096.preheader

.lr.ph.i67.i1096.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i
  %i.bwi = sub nsw i64 %.sroa.speculated.i1084, %.sink1.i.i1083
  %i.bwj = shl i64 %i.bwi, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bvp, ptr align 4 %.sroa.0113.0.i1094, i64 %i.bwj, i1 false), !tbaa !211
  br label %.loopexit.i1099

.loopexit.i1099:                                  ; preds = %.lr.ph.i67.i1096.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_PKiEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i
  %i.bwk = load i64, ptr %58, align 8, !tbaa !197
  %i.bwl = add i64 %i.bwk, 4
  br label %bb.qb

bb.qb:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116, %.loopexit.i1099
  %storemerge.i1100 = phi i64 [ %i.bwl, %.loopexit.i1099 ], [ %i.bvl, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116 ]
  %.0.i1101 = phi ptr [ %i.bsb, %.loopexit.i1099 ], [ %i.bsm, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i1116 ]
  store i64 %storemerge.i1100, ptr %58, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #36
  store ptr %.0.i1101, ptr %i.v, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #36
  %i.bwm = ptrtoint ptr %.sroa.14.2 to i64
  %i.bwn = ptrtoint ptr %.sroa.01145.5 to i64     ; 2 uses
  %i.bwo = sub i64 %i.bwm, %i.bwn                 ; 7 uses
  %i.bwp = icmp ugt i64 %i.bwo, 9223372036854775804
  br i1 %i.bwp, label %.noexc.i.i.i.i778, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774

.noexc.i.i.i.i778:                                ; preds = %bb.qb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc779 unwind label %.loopexit.split-lp1488

.noexc779:                                        ; preds = %.noexc.i.i.i.i778
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774: ; preds = %bb.qb
  %.not.i.i.i.i.i.i775 = icmp eq ptr %.sroa.14.2, %.sroa.01145.5
  br i1 %.not.i.i.i.i.i.i775, label %.thread.i.i.i.i.i777, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i776

.thread.i.i.i.i.i777:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774
  %i.bwq = getelementptr inbounds nuw i8, ptr null, i64 %i.bwo
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i776: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i774
  %i.bwr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bwo) #41
          to label %.noexc780 unwind label %.loopexit1487 ; 6 uses

.noexc780:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i776
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwr, i64 %i.bwo ; 3 uses
  %i.bwt = icmp samesign ugt i64 %i.bwo, 4
  br i1 %i.bwt, label %bb.qc, label %bb.qd, !prof !318

bb.qc:                                            ; preds = %.noexc780
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bwr, ptr align 4 %.sroa.01145.5, i64 %i.bwo, i1 false), !noalias !1804
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

bb.qd:                                            ; preds = %.noexc780
  %i.bwu = icmp eq i64 %i.bwo, 4
  br i1 %i.bwu, label %bb.qe, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

bb.qe:                                            ; preds = %bb.qd
  %i.bwv = load i32, ptr %.sroa.01145.5, align 4, !tbaa !211, !noalias !1804
  store i32 %i.bwv, ptr %i.bwr, align 4, !tbaa !211, !noalias !1804
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781

_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781: ; preds = %bb.qe, %bb.qd, %bb.qc, %.thread.i.i.i.i.i777
  %.sroa.0.0 = phi ptr [ null, %.thread.i.i.i.i.i777 ], [ %i.bwr, %bb.qc ], [ %i.bwr, %bb.qe ], [ %i.bwr, %bb.qd ] ; 8 uses
  %.sroa.9.0 = phi ptr [ %i.bwq, %.thread.i.i.i.i.i777 ], [ %i.bws, %bb.qc ], [ %i.bws, %bb.qe ], [ %i.bws, %bb.qd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  %i.bww = ptrtoint ptr %.sroa.9.0 to i64
  %i.bwx = ptrtoint ptr %.sroa.0.0 to i64
  %i.bwy = sub i64 %i.bww, %i.bwx                 ; 15 uses
  %.not.i.i.i.i.i.i782 = icmp eq ptr %.sroa.9.0, %.sroa.0.0
  br i1 %.not.i.i.i.i.i.i782, label %bb.qk, label %bb.qf

bb.qf:                                            ; preds = %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit781
  %i.bwz = icmp ugt i64 %i.bwy, 9223372036854775804
  br i1 %i.bwz, label %.noexc.i.i.i.i802, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i783, !prof !212

.noexc.i.i.i.i802:                                ; preds = %bb.qf
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc803 unwind label %.loopexit.split-lp1493

.noexc803:                                        ; preds = %.noexc.i.i.i.i802
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i783: ; preds = %bb.qf
  %i.bxa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bwy) #41
          to label %.noexc804 unwind label %.loopexit1492 ; 6 uses

.noexc804:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i783
  %i.bxb = icmp samesign ugt i64 %i.bwy, 4
  br i1 %i.bxb, label %bb.qg, label %bb.qh, !prof !318

bb.qg:                                            ; preds = %.noexc804
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bxa, ptr align 4 %.sroa.0.0, i64 %i.bwy, i1 false), !noalias !1805
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792

bb.qh:                                            ; preds = %.noexc804
  %i.bxc = icmp eq i64 %i.bwy, 4
  br i1 %i.bxc, label %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i801, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792

_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i801: ; preds = %bb.qh
  %i.bxd = load i32, ptr %.sroa.0.0, align 4, !tbaa !211, !noalias !1805
  store i32 %i.bxd, ptr %i.bxa, align 4, !tbaa !211, !noalias !1805
  br label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792: ; preds = %bb.qg, %bb.qh, %_ZN7testing8internal23ElementsAreArrayMatcherIiEC2EOS2_.exit.thread.i801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false), !alias.scope !1805
  %i.bxe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bwy) #41
          to label %.noexc1.i795 unwind label %bb.ql, !noalias !1805 ; 4 uses

.noexc1.i795:                                     ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i792
  store ptr %i.bxe, ptr %60, align 8, !tbaa !320, !alias.scope !1805
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE6InsertINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEPiPKiT_m:bb.a
.lr.ph.i.i47.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit
  %min.iters.check126 = icmp ult i64 %i.j, 8
  %i.aw = sub i64 %i.h, %i.s
  %diff.check124 = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check126, i1 true, i1 %diff.check124
  br i1 %or.cond, label %.lr.ph.i.i47.preheader157, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.i.i47.preheader
  %n.vec128 = and i64 %i.j, -8                    ; 4 uses
  %i.ax = shl nsw i64 %n.vec128, 2
  %i.ay = getelementptr i8, ptr %.sink2.i, i64 %i.ax ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body129 ] ; 3 uses
  %i.az = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %.sink2.i, i64 %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index130 ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load132 = load <4 x i32>, ptr %next.gep131, align 4, !tbaa !211
  %wide.load133 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !211
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <4 x i32> %wide.load132, ptr %i.ba, align 4, !tbaa !211
  store <4 x i32> %wide.load133, ptr %i.bc, align 4, !tbaa !211
  %index.next134 = add nuw i64 %index130, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.bd, label %middle.block135, label %vector.body129, !llvm.loop !1918

middle.block135:                                  ; preds = %vector.body129
  %cmp.n136 = icmp eq i64 %i.j, %n.vec128
  br i1 %cmp.n136, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit, label %.lr.ph.i.i47.preheader157

.lr.ph.i.i47.preheader157:                        ; preds = %.lr.ph.i.i47.preheader, %middle.block135
  %.ph158 = phi ptr [ %.sink2.i, %.lr.ph.i.i47.preheader ], [ %i.ay, %middle.block135 ] ; 2 uses
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i47.preheader ], [ %n.vec128, %middle.block135 ] ; 3 uses
  %xtraiter180 = and i64 %i.j, 3                  ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol

.lr.ph.i.i47.prol:                                ; preds = %.lr.ph.i.i47.preheader157, %.lr.ph.i.i47.prol
  %i.be = phi ptr [ %i.bh, %.lr.ph.i.i47.prol ], [ %.ph158, %.lr.ph.i.i47.preheader157 ] ; 2 uses
  %.012.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i47.prol ], [ %.012.i.i.ph, %.lr.ph.i.i47.preheader157 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i47.prol ], [ 0, %.lr.ph.i.i47.preheader157 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i.prol
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !211
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  %i.bi = add nuw i64 %.012.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter180
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol, !llvm.loop !1919

.lr.ph.i.i47.prol.loopexit:                       ; preds = %.lr.ph.i.i47.prol, %.lr.ph.i.i47.preheader157
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i47.preheader157 ], [ %i.bh, %.lr.ph.i.i47.prol ]
  %.unr182 = phi ptr [ %.ph158, %.lr.ph.i.i47.preheader157 ], [ %i.bh, %.lr.ph.i.i47.prol ]
  %.012.i.i.unr = phi i64 [ %.012.i.i.ph, %.lr.ph.i.i47.preheader157 ], [ %i.bi, %.lr.ph.i.i47.prol ]
  %i.bj = sub nsw i64 %.012.i.i.ph, %i.j
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47
  %i.bl = phi ptr [ %i.ca, %.lr.ph.i.i47 ], [ %.unr182, %.lr.ph.i.i47.prol.loopexit ] ; 5 uses
  %.012.i.i = phi i64 [ %i.cb, %.lr.ph.i.i47 ], [ %.012.i.i.unr, %.lr.ph.i.i47.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !211
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !211
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !211
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !211
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !211
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !211
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.012.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !211
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !211
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cb = add nuw i64 %.012.i.i, 4                ; 2 uses
  %exitcond.not.i.i49.3 = icmp eq i64 %i.cb, %i.j
  br i1 %exitcond.not.i.i49.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit, label %.lr.ph.i.i47, !llvm.loop !1920

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit: ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47, %middle.block135, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit
  %.sroa.086.0 = phi ptr [ %.sink2.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvPiRT_m.exit ], [ %i.ay, %middle.block135 ], [ %.lcssa.unr, %.lr.ph.i.i47.prol.loopexit ], [ %i.ca, %.lr.ph.i.i47 ] ; 5 uses
  %.sroa.086.0140 = ptrtoaddr ptr %.sroa.086.0 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 6 uses
  %i.cd = sub i64 %.sink1.i, %i.j                 ; 4 uses
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit
  %min.iters.check143 = icmp ult i64 %i.cd, 16
  br i1 %min.iters.check143, label %.lr.ph.i.preheader156, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i.preheader
  %i.ce = shl i64 %i.k, 2
  %i.cf = add i64 %i.ce, %i.s
  %i.cg = sub i64 %.sroa.086.0140, %i.cf
  %diff.check141 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check141, label %.lr.ph.i.preheader156, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck139
  %n.vec145 = and i64 %i.cd, -8                   ; 4 uses
  %i.ch = shl i64 %n.vec145, 2
  %i.ci = getelementptr i8, ptr %.sroa.086.0, i64 %i.ch
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body146 ] ; 3 uses
  %i.cj = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %.sroa.086.0, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index147 ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !211
  %wide.load150 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !211
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load149, ptr %i.ck, align 4, !tbaa !211
  store <4 x i32> %wide.load150, ptr %i.cm, align 4, !tbaa !211
  %index.next151 = add nuw i64 %index147, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next151, %n.vec145
  br i1 %i.cn, label %middle.block152, label %vector.body146, !llvm.loop !1921

middle.block152:                                  ; preds = %vector.body146
  %cmp.n153 = icmp eq i64 %i.cd, %n.vec145
  br i1 %cmp.n153, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i.preheader156

.lr.ph.i.preheader156:                            ; preds = %vector.memcheck139, %.lr.ph.i.preheader, %middle.block152
  %.ph = phi ptr [ %.sroa.086.0, %vector.memcheck139 ], [ %.sroa.086.0, %.lr.ph.i.preheader ], [ %i.ci, %middle.block152 ] ; 2 uses
  %.012.i.ph = phi i64 [ 0, %vector.memcheck139 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec145, %middle.block152 ] ; 3 uses
  %i.co = sub i64 %.sink1.i, %i.j
  %xtraiter183 = and i64 %i.co, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader156, %.lr.ph.i.prol
  %i.cp = phi ptr [ %i.cs, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader156 ] ; 2 uses
  %.012.i.prol = phi i64 [ %i.ct, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader156 ] ; 2 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader156 ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.012.i.prol
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !211
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !211
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.ct = add nuw i64 %.012.i.prol, 1             ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1922

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader156
  %.unr186 = phi ptr [ %.ph, %.lr.ph.i.preheader156 ], [ %i.cs, %.lr.ph.i.prol ]
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader156 ], [ %i.ct, %.lr.ph.i.prol ]
  %i.cu = sub i64 %.012.i.ph, %.sink1.i
  %i.cv = add i64 %i.cu, %i.j
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.cx = phi ptr [ %i.dm, %.lr.ph.i ], [ %.unr186, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.012.i = phi i64 [ %i.dn, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.012.i
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !211
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !211
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.012.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !211
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !211
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.012.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !211
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !211
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.012.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !211
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !211
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dn = add nuw i64 %.012.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.dn, %i.cd
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !1923

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block152, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit
  %i.do = load i64, ptr %0, align 8, !tbaa !197
  %i.dp = trunc i64 %i.do to i1
  br i1 %i.dp, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.dr = load i64, ptr %i.e, align 8, !tbaa !198
  %i.ds = shl i64 %i.dr, 2
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.ds) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !198
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !198
  %i.dt = shl i64 %i.l, 1
  %i.du = or disjoint i64 %i.dt, 1
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 7 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.dw = sub i64 %i.l, %.sroa.speculated         ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 10 uses
  %i.dy = sub nuw i64 %.sroa.speculated, %i.k
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw ; 5 uses
  %i.ea = sub i64 %3, %i.dw                       ; 2 uses
  %.not.i.i54 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i54, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.e
  %i.eb = sub i64 %.sroa.speculated, %3
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i, i64 %i.eb ; 4 uses
  %min.iters.check = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i55.preheader160, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i55.preheader
  %i.ed = shl i64 %3, 2
  %i.ee = add i64 %i.ed, -1
  %diff.check = icmp ult i64 %i.ee, 31
  br i1 %diff.check, label %.lr.ph.i.i55.preheader160, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dw, -8                      ; 4 uses
  %i.ef = shl i64 %n.vec, 2
  %i.eg = getelementptr i8, ptr %i.ec, i64 %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ec, i64 %i.eh ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load121 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !211
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <4 x i32> %wide.load, ptr %i.ei, align 4, !tbaa !211
  store <4 x i32> %wide.load121, ptr %i.ek, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !1924

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60, label %.lr.ph.i.i55.preheader160

.lr.ph.i.i55.preheader160:                        ; preds = %vector.memcheck, %.lr.ph.i.i55.preheader, %middle.block
  %.ph161 = phi ptr [ %i.ec, %vector.memcheck ], [ %i.ec, %.lr.ph.i.i55.preheader ], [ %i.eg, %middle.block ]
  %.012.i.i57.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i55.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader160, %.lr.ph.i.i55
  %i.em = phi ptr [ %i.ep, %.lr.ph.i.i55 ], [ %.ph161, %.lr.ph.i.i55.preheader160 ] ; 2 uses
  %.012.i.i57 = phi i64 [ %i.eq, %.lr.ph.i.i55 ], [ %.012.i.i57.ph, %.lr.ph.i.i55.preheader160 ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.012.i.i57
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !211
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !211
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eq = add nuw i64 %.012.i.i57, 1              ; 2 uses
  %exitcond.not.i.i58 = icmp eq i64 %i.eq, %i.dw
  br i1 %exitcond.not.i.i58, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60, label %.lr.ph.i.i55, !llvm.loop !1925

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60: ; preds = %.lr.ph.i.i55, %middle.block, %bb.e
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.es, %i.g                     ; 3 uses
  %i.eu = ashr exact i64 %i.et, 2                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 1
  br i1 %i.ev, label %bb.f, label %bb.g, !prof !224

bb.f:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60
  %i.ew = sub nsw i64 0, %i.eu
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.ew
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ex, ptr align 4 %i.dx, i64 %i.et, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit60
  %i.ey = icmp eq i64 %i.et, 4
  br i1 %i.ey, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ez = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.fa = load i32, ptr %i.dx, align 4, !tbaa !211
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !211
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i54, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %bb.i
  %i.fb = add i64 %3, %.sink1.i
  %xtraiter = and i64 %i.dw, 3                    ; 3 uses
  %i.fc = sub i64 %.sroa.speculated, %i.fb
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %.lr.ph.i62.epil.preheader, label %.lr.ph.i62.preheader.new

.lr.ph.i62.preheader.new:                         ; preds = %.lr.ph.i62.preheader
  %unroll_iter = and i64 %i.dw, -4
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62, %.lr.ph.i62.preheader.new
  %i.fe = phi ptr [ %2, %.lr.ph.i62.preheader.new ], [ %i.fx, %.lr.ph.i62 ] ; 2 uses
  %.05.i = phi i64 [ 0, %.lr.ph.i62.preheader.new ], [ %i.fy, %.lr.ph.i62 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i62.preheader.new ], [ %niter.next.3, %.lr.ph.i62 ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !211
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !211
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !325 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !211
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !211
  %i.fn = load ptr, ptr %i.fi, align 8, !tbaa !325 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !211
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !211
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !325 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !211
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !211
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !325 ; 3 uses
  %i.fy = add nuw i64 %.05.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, label %.lr.ph.i62, !llvm.loop !1926

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i62.epil.preheader

.lr.ph.i62.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i62.preheader
  %.epil.init = phi ptr [ %2, %.lr.ph.i62.preheader ], [ %i.fx, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i62.preheader ], [ %i.fy, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i62.epil

.lr.ph.i62.epil:                                  ; preds = %.lr.ph.i62.epil, %.lr.ph.i62.epil.preheader
  %i.fz = phi ptr [ %i.gd, %.lr.ph.i62.epil ], [ %.epil.init, %.lr.ph.i62.epil.preheader ] ; 2 uses
  %.05.i.epil = phi i64 [ %i.ge, %.lr.ph.i62.epil ], [ %.05.i.epil.init, %.lr.ph.i62.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i62.epil ], [ 0, %.lr.ph.i62.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05.i.epil
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !211
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !211
  %i.gd = load ptr, ptr %i.fz, align 8, !tbaa !325 ; 2 uses
  %i.ge = add nuw i64 %.05.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i62.epil, !llvm.loop !1927

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i62.epil, %bb.i
  %.sroa.0113.0 = phi ptr [ %2, %bb.i ], [ %i.fx, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph.i62.epil ] ; 2 uses
  %.not.i66 = icmp eq i64 %3, %i.dw
  br i1 %.not.i66, label %.loopexit, label %.lr.ph.i67.preheader

.lr.ph.i67.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %xtraiter164 = and i64 %i.ea, 3                 ; 3 uses
  %i.gf = sub i64 %.sink1.i, %.sroa.speculated
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %.lr.ph.i67.epil.preheader, label %.lr.ph.i67.preheader.new

.lr.ph.i67.preheader.new:                         ; preds = %.lr.ph.i67.preheader
  %unroll_iter170 = and i64 %i.ea, -4
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67, %.lr.ph.i67.preheader.new
  %i.gh = phi ptr [ %.sroa.0113.0, %.lr.ph.i67.preheader.new ], [ %i.ha, %.lr.ph.i67 ] ; 2 uses
  %.06.i = phi i64 [ 0, %.lr.ph.i67.preheader.new ], [ %i.hb, %.lr.ph.i67 ] ; 5 uses
  %niter171 = phi i64 [ 0, %.lr.ph.i67.preheader.new ], [ %niter171.next.3, %.lr.ph.i67 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !211
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !211
  %i.gl = load ptr, ptr %i.gh, align 8, !tbaa !325 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !211
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !211
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !325 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !211
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !211
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !325 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt4pairIiiELm8ESaIS4_EE6InsertINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEPS4_PKS4_T_m:bb.a
.lr.ph.i.i45.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit
  %min.iters.check127 = icmp ult i64 %i.j, 8
  %i.av = sub i64 %i.h, %i.s
  %diff.check125 = icmp ugt i64 %i.av, -32
  %or.cond = select i1 %min.iters.check127, i1 true, i1 %diff.check125
  br i1 %or.cond, label %.lr.ph.i.i45.preheader158, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph.i.i45.preheader
  %n.vec129 = and i64 %i.j, -4                    ; 4 uses
  %i.aw = shl nsw i64 %n.vec129, 3
  %i.ax = getelementptr i8, ptr %.sink2.i, i64 %i.aw ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next135, %vector.body130 ] ; 3 uses
  %i.ay = shl i64 %index131, 3
  %next.gep132 = getelementptr i8, ptr %.sink2.i, i64 %i.ay ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index131 ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load133 = load <2 x i64>, ptr %next.gep132, align 4
  %wide.load134 = load <2 x i64>, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %wide.load133, ptr %i.az, align 4
  store <2 x i64> %wide.load134, ptr %i.bb, align 4
  %index.next135 = add nuw i64 %index131, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.bc, label %middle.block136, label %vector.body130, !llvm.loop !2041

middle.block136:                                  ; preds = %vector.body130
  %cmp.n137 = icmp eq i64 %i.j, %n.vec129
  br i1 %cmp.n137, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit, label %.lr.ph.i.i45.preheader158

.lr.ph.i.i45.preheader158:                        ; preds = %.lr.ph.i.i45.preheader, %middle.block136
  %.sroa.082.0.ph = phi ptr [ %.sink2.i, %.lr.ph.i.i45.preheader ], [ %i.ax, %middle.block136 ] ; 2 uses
  %.012.i.i46.ph = phi i64 [ 0, %.lr.ph.i.i45.preheader ], [ %n.vec129, %middle.block136 ] ; 3 uses
  %xtraiter187 = and i64 %i.j, 3                  ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i45.prol.loopexit, label %.lr.ph.i.i45.prol

.lr.ph.i.i45.prol:                                ; preds = %.lr.ph.i.i45.preheader158, %.lr.ph.i.i45.prol
  %.sroa.082.0.prol = phi ptr [ %i.bf, %.lr.ph.i.i45.prol ], [ %.sroa.082.0.ph, %.lr.ph.i.i45.preheader158 ] ; 2 uses
  %.012.i.i46.prol = phi i64 [ %i.bg, %.lr.ph.i.i45.prol ], [ %.012.i.i46.ph, %.lr.ph.i.i45.preheader158 ] ; 2 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i.i45.prol ], [ 0, %.lr.ph.i.i45.preheader158 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.012.i.i46.prol
  %i.be = load i64, ptr %.sroa.082.0.prol, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.082.0.prol, i64 8 ; 3 uses
  %i.bg = add nuw i64 %.012.i.i46.prol, 1         ; 2 uses
  %prol.iter189.next = add i64 %prol.iter189, 1   ; 2 uses
  %prol.iter189.cmp.not = icmp eq i64 %prol.iter189.next, %xtraiter187
  br i1 %prol.iter189.cmp.not, label %.lr.ph.i.i45.prol.loopexit, label %.lr.ph.i.i45.prol, !llvm.loop !2042

.lr.ph.i.i45.prol.loopexit:                       ; preds = %.lr.ph.i.i45.prol, %.lr.ph.i.i45.preheader158
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i45.preheader158 ], [ %i.bf, %.lr.ph.i.i45.prol ]
  %.sroa.082.0.unr = phi ptr [ %.sroa.082.0.ph, %.lr.ph.i.i45.preheader158 ], [ %i.bf, %.lr.ph.i.i45.prol ]
  %.012.i.i46.unr = phi i64 [ %.012.i.i46.ph, %.lr.ph.i.i45.preheader158 ], [ %i.bg, %.lr.ph.i.i45.prol ]
  %i.bh = sub nsw i64 %.012.i.i46.ph, %i.j
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.prol.loopexit, %.lr.ph.i.i45
  %.sroa.082.0 = phi ptr [ %i.bx, %.lr.ph.i.i45 ], [ %.sroa.082.0.unr, %.lr.ph.i.i45.prol.loopexit ] ; 5 uses
  %.012.i.i46 = phi i64 [ %i.by, %.lr.ph.i.i45 ], [ %.012.i.i46.unr, %.lr.ph.i.i45.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.012.i.i46
  %i.bk = load i64, ptr %.sroa.082.0, align 4
  store i64 %i.bk, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.012.i.i46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bl, align 4
  store i64 %i.bo, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 16
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.012.i.i46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.bp, align 4
  store i64 %i.bs, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 24
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.012.i.i46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load i64, ptr %i.bt, align 4
  store i64 %i.bw, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 32 ; 2 uses
  %i.by = add nuw i64 %.012.i.i46, 4              ; 2 uses
  %exitcond.not.i.i47.3 = icmp eq i64 %i.by, %i.j
  br i1 %exitcond.not.i.i47.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit, label %.lr.ph.i.i45, !llvm.loop !2043

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit: ; preds = %.lr.ph.i.i45.prol.loopexit, %.lr.ph.i.i45, %middle.block136, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit
  %.sroa.082.1 = phi ptr [ %.sink2.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvPS4_RT_m.exit ], [ %i.ax, %middle.block136 ], [ %.lcssa.unr, %.lr.ph.i.i45.prol.loopexit ], [ %i.bx, %.lr.ph.i.i45 ] ; 5 uses
  %.sroa.082.1141 = ptrtoaddr ptr %.sroa.082.1 to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.k ; 6 uses
  %i.ca = sub i64 %.sink1.i, %i.j                 ; 4 uses
  %.not.i = icmp eq i64 %.sink1.i, %i.j
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit
  %min.iters.check144 = icmp ult i64 %i.ca, 14
  br i1 %min.iters.check144, label %.lr.ph.i.preheader157, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph.i.preheader
  %i.cb = shl i64 %i.k, 3
  %i.cc = add i64 %i.cb, %i.s
  %i.cd = sub i64 %.sroa.082.1141, %i.cc
  %diff.check142 = icmp ugt i64 %i.cd, -32
  br i1 %diff.check142, label %.lr.ph.i.preheader157, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck140
  %n.vec146 = and i64 %i.ca, -4                   ; 4 uses
  %i.ce = shl i64 %n.vec146, 3
  %i.cf = getelementptr i8, ptr %.sroa.082.1, i64 %i.ce
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next152, %vector.body147 ] ; 3 uses
  %i.cg = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %.sroa.082.1, i64 %i.cg ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index148 ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load150 = load <2 x i64>, ptr %next.gep149, align 4
  %wide.load151 = load <2 x i64>, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> %wide.load150, ptr %i.ch, align 4
  store <2 x i64> %wide.load151, ptr %i.cj, align 4
  %index.next152 = add nuw i64 %index148, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next152, %n.vec146
  br i1 %i.ck, label %middle.block153, label %vector.body147, !llvm.loop !2044

middle.block153:                                  ; preds = %vector.body147
  %cmp.n154 = icmp eq i64 %i.ca, %n.vec146
  br i1 %cmp.n154, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader157

.lr.ph.i.preheader157:                            ; preds = %vector.memcheck140, %.lr.ph.i.preheader, %middle.block153
  %.sroa.082.2.ph = phi ptr [ %.sroa.082.1, %vector.memcheck140 ], [ %.sroa.082.1, %.lr.ph.i.preheader ], [ %i.cf, %middle.block153 ] ; 2 uses
  %.012.i.ph = phi i64 [ 0, %vector.memcheck140 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec146, %middle.block153 ] ; 3 uses
  %i.cl = sub i64 %.sink1.i, %i.j
  %xtraiter190 = and i64 %i.cl, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader157, %.lr.ph.i.prol
  %.sroa.082.2.prol = phi ptr [ %i.co, %.lr.ph.i.prol ], [ %.sroa.082.2.ph, %.lr.ph.i.preheader157 ] ; 2 uses
  %.012.i.prol = phi i64 [ %i.cp, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader157 ] ; 2 uses
  %prol.iter192 = phi i64 [ %prol.iter192.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader157 ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.012.i.prol
  %i.cn = load i64, ptr %.sroa.082.2.prol, align 4
  store i64 %i.cn, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.082.2.prol, i64 8 ; 2 uses
  %i.cp = add nuw i64 %.012.i.prol, 1             ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2045

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader157
  %.sroa.082.2.unr = phi ptr [ %.sroa.082.2.ph, %.lr.ph.i.preheader157 ], [ %i.co, %.lr.ph.i.prol ]
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader157 ], [ %i.cp, %.lr.ph.i.prol ]
  %i.cq = sub i64 %.012.i.ph, %.sink1.i
  %i.cr = add i64 %i.cq, %i.j
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.082.2 = phi ptr [ %i.dh, %.lr.ph.i ], [ %.sroa.082.2.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.012.i = phi i64 [ %i.di, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.012.i
  %i.cu = load i64, ptr %.sroa.082.2, align 4
  store i64 %i.cu, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.012.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cv, align 4
  store i64 %i.cy, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 16
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.012.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.cz, align 4
  store i64 %i.dc, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 24
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.012.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i64, ptr %i.dd, align 4
  store i64 %i.dg, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.082.2, i64 32
  %i.di = add nuw i64 %.012.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.di, %i.ca
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !2046

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block153, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit
  %i.dj = load i64, ptr %0, align 8, !tbaa !197
  %i.dk = trunc i64 %i.dj to i1
  br i1 %i.dk, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !198
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !198
  %i.dn = shl i64 %i.dm, 3
  tail call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dn) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaISt4pairIiiEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !198
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !198
  %i.do = shl i64 %i.l, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink1.i) ; 6 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i, i64 %.sroa.speculated ; 4 uses
  %i.dr = sub i64 %i.l, %.sroa.speculated         ; 10 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sink2.i, i64 %i.i ; 6 uses
  %i.dt = sub nuw i64 %.sroa.speculated, %i.k
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr ; 3 uses
  %i.dv = sub i64 %4, %i.dr                       ; 3 uses
  %.not.i.i51 = icmp eq i64 %i.l, %.sroa.speculated ; 2 uses
  br i1 %.not.i.i51, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57, label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %bb.e
  %i.dw = sub i64 %.sroa.speculated, %4
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i, i64 %i.dw ; 4 uses
  %min.iters.check = icmp ult i64 %i.dr, 8
  br i1 %min.iters.check, label %.lr.ph.i.i54.preheader161, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i54.preheader
  %i.dy = shl i64 %4, 3
  %i.dz = add i64 %i.dy, -1
  %diff.check = icmp ult i64 %i.dz, 31
  br i1 %diff.check, label %.lr.ph.i.i54.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, -4                      ; 4 uses
  %i.ea = shl i64 %n.vec, 3
  %i.eb = getelementptr i8, ptr %i.dx, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.ec ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load122 = load <2 x i64>, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x i64> %wide.load, ptr %i.ed, align 4
  store <2 x i64> %wide.load122, ptr %i.ef, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !2047

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57, label %.lr.ph.i.i54.preheader161

.lr.ph.i.i54.preheader161:                        ; preds = %vector.memcheck, %.lr.ph.i.i54.preheader, %middle.block
  %.sroa.078.0.ph = phi ptr [ %i.dx, %vector.memcheck ], [ %i.dx, %.lr.ph.i.i54.preheader ], [ %i.eb, %middle.block ]
  %.012.i.i55.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i54.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.preheader161, %.lr.ph.i.i54
  %.sroa.078.0 = phi ptr [ %i.ej, %.lr.ph.i.i54 ], [ %.sroa.078.0.ph, %.lr.ph.i.i54.preheader161 ] ; 2 uses
  %.012.i.i55 = phi i64 [ %i.ek, %.lr.ph.i.i54 ], [ %.012.i.i55.ph, %.lr.ph.i.i54.preheader161 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.012.i.i55
  %i.ei = load i64, ptr %.sroa.078.0, align 4
  store i64 %i.ei, ptr %i.eh, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.078.0, i64 8
  %i.ek = add nuw i64 %.012.i.i55, 1              ; 2 uses
  %exitcond.not.i.i56 = icmp eq i64 %i.ek, %i.dr
  br i1 %exitcond.not.i.i56, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57, label %.lr.ph.i.i54, !llvm.loop !2048

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57: ; preds = %.lr.ph.i.i54, %middle.block, %bb.e
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt ; 3 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.g
  %i.eo = ashr exact i64 %i.en, 3                 ; 5 uses
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57
  %xtraiter = and i64 %i.eo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i.prol ], [ %i.eo, %.lr.ph.i.i.i.i.i.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.dq, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.el, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.eq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !211
  store i32 %i.es, ptr %i.er, align 4, !tbaa !353
  %i.et = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !211
  %i.ev = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !354
  %i.ew = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2049

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ew, %.lr.ph.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %i.ex = icmp ult i64 %i.eo, 4
  br i1 %i.ex, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.fw, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ey = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ez = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !211
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !353
  %i.fb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !211
  %i.fd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !354
  %i.fe = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !211
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !353
  %i.fh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !211
  %i.fj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !354
  %i.fk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.fl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !211
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !353
  %i.fn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !211
  %i.fp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !354
  %i.fq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !211
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !353
  %i.ft = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !211
  %i.fv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !354
  %i.fw = add nsw i64 %.010.i.i.i.i.i, -4
  %i.fx = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit, !llvm.loop !39

_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaISt4pairIiiEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit57
  br i1 %.not.i.i51, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit
  %i.fy = add i64 %4, %.sink1.i
  %.neg = add i64 %.sroa.speculated, 1
  %xtraiter162 = and i64 %i.dr, 1
  %i.fz = icmp eq i64 %i.fy, %.neg
  br i1 %i.fz, label %.lr.ph.i59.epil.preheader, label %.lr.ph.i59.preheader.new

.lr.ph.i59.preheader.new:                         ; preds = %.lr.ph.i59.preheader
  %unroll_iter = and i64 %i.dr, -2
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59, %.lr.ph.i59.preheader.new
  %i.ga = phi ptr [ %3, %.lr.ph.i59.preheader.new ], [ %i.gs, %.lr.ph.i59 ] ; 2 uses
  %i.gb = phi ptr [ %2, %.lr.ph.i59.preheader.new ], [ %i.gr, %.lr.ph.i59 ] ; 2 uses
  %.05.i = phi i64 [ 0, %.lr.ph.i59.preheader.new ], [ %i.gt, %.lr.ph.i59 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i59.preheader.new ], [ %niter.next.1, %.lr.ph.i59 ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.05.i ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !211
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !353
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !211
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !354
  %i.gi = load ptr, ptr %i.gb, align 8, !tbaa !325 ; 2 uses
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !325 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.05.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !211
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !353
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !211
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !354
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !325 ; 3 uses
  %i.gs = load ptr, ptr %i.gj, align 8, !tbaa !325 ; 3 uses
  %i.gt = add nuw i64 %.05.i, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.loopexit.unr-lcssa, label %.lr.ph.i59, !llvm.loop !2050

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i59
  %lcmp.mod165.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod165.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i59.preheader
  %.epil.init = phi ptr [ %3, %.lr.ph.i59.preheader ], [ %i.gs, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init164 = phi ptr [ %2, %.lr.ph.i59.preheader ], [ %i.gr, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i59.preheader ], [ %i.gt, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaISt4pairIiiEENS1_20IteratorValueAdapterIS5_NS0_13base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i64 %i.dr to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_146RefCountedVec_InsertConstructorDestructor_Test8TestBodyEv:bb.a
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  unreachable

bb.bz:                                            ; preds = %.noexc1.i337
  %i.jp = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  unreachable

bb.ca:                                            ; preds = %.noexc.i336, %.loopexit1336
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #35
  unreachable

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit339:        ; preds = %.lr.ph.i.i236
  %i.js = add i64 %.02.i.i237, -2                 ; 3 uses
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %.val.i334.1 = load ptr, ptr %i.ju, align 8, !tbaa !306 ; 2 uses
  %i.jv = load i32, ptr %.val.i334.1, align 4, !tbaa !211 ; 2 uses
  %i.jw = add nsw i32 %i.jv, -1                   ; 2 uses
  store i32 %i.jw, ptr %.val.i334.1, align 4, !tbaa !211
  %.not.i.i.i.i335.1 = icmp slt i32 %i.jv, 1
  br i1 %.not.i.i.i.i335.1, label %.loopexit1336, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit339.1, !prof !212

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit339.1:      ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit339
  %.not.i.i238.1 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i238.1, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i239, label %.lr.ph.i.i236, !llvm.loop !21

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i239: ; preds = %.lr.ph.i.i236.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit339.1, %bb.by
  invoke void @__cxa_rethrow() #38
          to label %bb.ce unwind label %bb.cb

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i239
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body243 unwind label %bb.cd

.lr.ph.i228.1:                                    ; preds = %.lr.ph.i228
  %i.jy = load i32, ptr %.val4.i.i232, align 4, !tbaa !211
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %.val4.i.i232, align 4, !tbaa !211
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i.i229, i64 16
  %i.kb = or disjoint i64 %.02.i230, 1            ; 2 uses
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.kb ; 2 uses
  %.val3.i.i231.1 = load i32, ptr %i.ka, align 8, !tbaa !307
  %i.kd = getelementptr i8, ptr %.val.i.i229, i64 24
  %.val4.i.i232.1 = load ptr, ptr %i.kd, align 8, !tbaa !306 ; 4 uses
  store i32 %.val3.i.i231.1, ptr %i.kc, align 8, !tbaa !307
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %.val4.i.i232.1, ptr %i.ke, align 8, !tbaa !306
  %.not.i.i.i.i.i233.1 = icmp eq ptr %.val4.i.i232.1, null
  br i1 %.not.i.i.i.i.i233.1, label %.loopexit1297, label %bb.cc, !prof !212

bb.cc:                                            ; preds = %.lr.ph.i228.1
  %i.kf = load i32, ptr %.val4.i.i232.1, align 4, !tbaa !211
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %.val4.i.i232.1, align 4, !tbaa !211
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i.i229, i64 32 ; 2 uses
  %i.ki = add nuw i64 %.02.i230, 2                ; 2 uses
  %niter1296.next.1 = add i64 %niter1296, 2       ; 2 uses
  %niter1296.ncmp.1 = icmp eq i64 %niter1296.next.1, %unroll_iter1295
  br i1 %niter1296.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.unr-lcssa, label %.lr.ph.i228, !llvm.loop !22

bb.cd:                                            ; preds = %bb.cb
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #35
  unreachable

bb.ce:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i239
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.unr-lcssa: ; preds = %bb.cc
  %lcmp.mod1293.not = icmp eq i64 %xtraiter1292, 0
  br i1 %lcmp.mod1293.not, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245, label %.lr.ph.i228.epil.preheader

.lr.ph.i228.epil.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.unr-lcssa, %.lr.ph.i228.preheader
  %.val.i.i229.epil.init = phi ptr [ %.sroa.0359.0, %.lr.ph.i228.preheader ], [ %i.kh, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.unr-lcssa ] ; 2 uses
  %.02.i230.epil.init = phi i64 [ 0, %.lr.ph.i228.preheader ], [ %i.ki, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1294 = trunc i64 %i.is to i1
  call void @llvm.assume(i1 %lcmp.mod1294)
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %.02.i230.epil.init ; 2 uses
  %.val3.i.i231.epil = load i32, ptr %.val.i.i229.epil.init, align 8, !tbaa !307
  %i.km = getelementptr i8, ptr %.val.i.i229.epil.init, i64 8
  %.val4.i.i232.epil = load ptr, ptr %i.km, align 8, !tbaa !306 ; 4 uses
  store i32 %.val3.i.i231.epil, ptr %i.kl, align 8, !tbaa !307
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %.val4.i.i232.epil, ptr %i.kn, align 8, !tbaa !306
  %.not.i.i.i.i.i233.epil = icmp eq ptr %.val4.i.i232.epil, null
  br i1 %.not.i.i.i.i.i233.epil, label %.loopexit1297, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.epilog-lcssa, !prof !212

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.epilog-lcssa: ; preds = %.lr.ph.i228.epil.preheader
  %i.ko = load i32, ptr %.val4.i.i232.epil, align 4, !tbaa !211
  %i.kp = add nsw i32 %i.ko, 1
  store i32 %i.kp, ptr %.val4.i.i232.epil, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.epilog-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245.loopexit.unr-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i.i.i
  %.not1.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245
  %i.kq = and i64 %.val.i.i.fr, 2
  %lcmp.mod1307.not = icmp eq i64 %i.kq, 0
  br i1 %lcmp.mod1307.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.kr = add nsw i64 %i.fx, -1                   ; 2 uses
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.val.i219.prol = load ptr, ptr %i.kt, align 8, !tbaa !306 ; 2 uses
  %i.ku = load i32, ptr %.val.i219.prol, align 4, !tbaa !211 ; 2 uses
  %i.kv = add nsw i32 %i.ku, -1                   ; 2 uses
  store i32 %i.kv, ptr %.val.i219.prol, align 4, !tbaa !211
  %.not.i.i.i.i220.prol = icmp slt i32 %i.ku, 1
  br i1 %.not.i.i.i.i220.prol, label %.loopexit1308, label %.lr.ph.i.i.i.i.prol.loopexit, !prof !212

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.02.i.i.i.i.unr = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.preheader ], [ %i.kr, %.lr.ph.i.i.i.i.prol ]
  %i.kw = icmp eq i64 %i.fx, 1
  br i1 %i.kw, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224.1
  %.02.i.i.i.i = phi i64 [ %i.lg, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224.1 ], [ %.02.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.kx = getelementptr [16 x i8], ptr %i.fv, i64 %.02.i.i.i.i
  %i.ky = getelementptr i8, ptr %i.kx, i64 -8
  %.val.i219 = load ptr, ptr %i.ky, align 8, !tbaa !306 ; 2 uses
  %i.kz = load i32, ptr %.val.i219, align 4, !tbaa !211 ; 2 uses
  %i.la = add nsw i32 %i.kz, -1                   ; 2 uses
  store i32 %i.la, ptr %.val.i219, align 4, !tbaa !211
  %.not.i.i.i.i220 = icmp slt i32 %i.kz, 1
  br i1 %.not.i.i.i.i220, label %.loopexit1308, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224, !prof !212

.loopexit1308:                                    ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224
  %.lcssa1159 = phi i32 [ %i.lk, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224 ], [ %i.la, %.lr.ph.i.i.i.i ], [ %i.kv, %.lr.ph.i.i.i.i.prol ]
  %i.lb = sext i32 %.lcssa1159 to i64
  %i.lc = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.lb, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i221 unwind label %bb.cg

.noexc.i221:                                      ; preds = %.loopexit1308
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.lc) #42
          to label %.noexc1.i222 unwind label %bb.cg

.noexc1.i222:                                     ; preds = %.noexc.i221
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i223 unwind label %bb.cf

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i223: ; preds = %.noexc1.i222
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #35
  unreachable

bb.cf:                                            ; preds = %.noexc1.i222
  %i.ld = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #35
  unreachable

bb.cg:                                            ; preds = %.noexc.i221, %.loopexit1308
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #35
  unreachable

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224:        ; preds = %.lr.ph.i.i.i.i
  %i.lg = add nsw i64 %.02.i.i.i.i, -2            ; 3 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %.val.i219.1 = load ptr, ptr %i.li, align 8, !tbaa !306 ; 2 uses
  %i.lj = load i32, ptr %.val.i219.1, align 4, !tbaa !211 ; 2 uses
  %i.lk = add nsw i32 %i.lj, -1                   ; 2 uses
  store i32 %i.lk, ptr %.val.i219.1, align 4, !tbaa !211
  %.not.i.i.i.i220.1 = icmp slt i32 %i.lj, 1
  br i1 %.not.i.i.i.i220.1, label %.loopexit1308, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224.1, !prof !212

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224.1:      ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224
  %.not.i.i.i.i116.1 = icmp eq i64 %i.lg, 0
  br i1 %.not.i.i.i.i116.1, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit224.1, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit245
  %.val.i77.i.i.i = load i64, ptr %33, align 8, !tbaa !197
  %i.ll = trunc i64 %.val.i77.i.i.i to i1
  br i1 %i.ll, label %bb.ch, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit.i.i.i

bb.ch:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i
  %.val1.i78.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !198
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !198
  %i.lm = shl i64 %.val2.i.i.i.i, 4
  call void @_ZdlPvm(ptr noundef %.val1.i78.i.i.i, i64 noundef %i.lm) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit.i.i.i

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit.i.i.i: ; preds = %bb.ch, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i
  store ptr %i.gg, ptr %i.l, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.k, align 8, !tbaa !198
  %i.ln = shl i64 %i.gb, 1
  %i.lo = or disjoint i64 %i.ln, 1
  br label %bb.de

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.i.i.i.thread376.loopexit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE8AllocateERS5_m.exit.i.i.i.i
  %lpad.loopexit385 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.i.i.i.thread376.loopexit.split-lp: ; preds = %bb.bk, %bb.bj
  %lpad.loopexit.split-lp386 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body243:                                         ; preds = %bb.cb
  br i1 %.not.i246, label %.lr.ph.i.i94.i.i.i, label %.lr.ph.i.i88.i.i.i

.lr.ph.i.i88.i.i.i:                               ; preds = %.body243, %.lr.ph.i.i88.i.i.i
  %.02.i.i89.i.i.i = phi i64 [ %i.lp, %.lr.ph.i.i88.i.i.i ], [ %storemerge31595, %.body243 ]
  %i.lp = add i64 %.02.i.i89.i.i.i, -1            ; 3 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.lp
  call fastcc void @_ZN12_GLOBAL__N_110RefCountedD2Ev(ptr noundef nonnull readonly align 8 dead_on_return(16) dereferenceable(16) %i.lq) #36
  %.not.i.i90.i.i.i = icmp eq i64 %i.lp, 0
  br i1 %.not.i.i90.i.i.i, label %.lr.ph.i.i94.i.i.i, label %.lr.ph.i.i88.i.i.i, !llvm.loop !21

.lr.ph.i.i94.i.i.i:                               ; preds = %.lr.ph.i.i88.i.i.i, %.body243, %bb.bt
  %.pn.i.i.i = phi { ptr, i32 } [ %i.jx, %.body243 ], [ %i.hx, %bb.bt ], [ %i.jx, %.lr.ph.i.i88.i.i.i ]
  call fastcc void @_ZN12_GLOBAL__N_110RefCountedD2Ev(ptr noundef nonnull readonly align 8 dead_on_return(16) dereferenceable(16) %i.gh) #36
  br label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.thread.i.i.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEED2Ev.exit97.thread.i.i.i: ; preds = %.lr.ph.i.i94.i.i.i, %bb.bm
  %.pn.i.i.i368373 = phi { ptr, i32 } [ %i.go, %bb.bm ], [ %.pn.i.i.i, %.lr.ph.i.i94.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gf) #39
  br label %.body.i.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit101.i.i.i: ; preds = %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 %i.fx) ; 4 uses
  %i.lr = getelementptr [16 x i8], ptr %i.fv, i64 %.sroa.speculated.i.i.i ; 10 uses
  %i.ls = sub i64 %i.gb, %.sroa.speculated.i.i.i
  %i.lt = freeze i64 %i.ls                        ; 10 uses
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.lt ; 8 uses
  %.not.i198 = icmp eq i64 %i.lt, 0               ; 2 uses
  br i1 %.not.i198, label %.noexc.i.i, label %.lr.ph.i201.preheader

.lr.ph.i201.preheader:                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_110RefCountedEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit101.i.i.i
  %i.lv = getelementptr i8, ptr %i.lr, i64 -16    ; 2 uses
  %xtraiter1311 = and i64 %i.lt, 1
  %i.lw = icmp eq i64 %i.lt, 1
  br i1 %i.lw, label %.lr.ph.i201.epil.preheader, label %.lr.ph.i201.preheader.new

.lr.ph.i201.preheader.new:                        ; preds = %.lr.ph.i201.preheader
  %unroll_iter1314 = and i64 %i.lt, -2
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.cn, %.lr.ph.i201.preheader.new
  %.val.i.i202 = phi ptr [ %i.lv, %.lr.ph.i201.preheader.new ], [ %i.nk, %bb.cn ] ; 5 uses
  %.02.i203 = phi i64 [ 0, %.lr.ph.i201.preheader.new ], [ %i.nl, %bb.cn ] ; 4 uses
  %niter1315 = phi i64 [ 0, %.lr.ph.i201.preheader.new ], [ %niter1315.next.1, %bb.cn ]
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.02.i203 ; 2 uses
  %.val3.i.i204 = load i32, ptr %.val.i.i202, align 8, !tbaa !307
  %i.ly = getelementptr i8, ptr %.val.i.i202, i64 8
  %.val4.i.i205 = load ptr, ptr %i.ly, align 8, !tbaa !306 ; 4 uses
  store i32 %.val3.i.i204, ptr %i.lx, align 8, !tbaa !307
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %.val4.i.i205, ptr %i.lz, align 8, !tbaa !306
  %.not.i.i.i.i.i206 = icmp eq ptr %.val4.i.i205, null
  br i1 %.not.i.i.i.i.i206, label %.loopexit1316, label %.lr.ph.i201.1, !prof !212

.loopexit1316:                                    ; preds = %.lr.ph.i201.epil.preheader, %.lr.ph.i201, %.lr.ph.i201.1
  %.02.i203.lcssa = phi i64 [ %i.ne, %.lr.ph.i201.1 ], [ %.02.i203, %.lr.ph.i201 ], [ %.02.i203.epil.init, %.lr.ph.i201.epil.preheader ]
  %i.ma = freeze i64 %.02.i203.lcssa              ; 5 uses
  %i.mb = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.281)
          to label %.noexc.i213 unwind label %bb.cj

.noexc.i213:                                      ; preds = %.loopexit1316
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.3, i32 noundef 108, ptr noundef nonnull %i.mb) #42
          to label %.noexc12.i214 unwind label %bb.cj

.noexc12.i214:                                    ; preds = %.noexc.i213
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i215 unwind label %bb.ci

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i215: ; preds = %.noexc12.i214
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #35
  unreachable

bb.ci:                                            ; preds = %.noexc12.i214
  %i.mc = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #35
  unreachable

bb.cj:                                            ; preds = %.noexc.i213, %.loopexit1316
  %i.md = landingpad { ptr, i32 }
          catch ptr null
  %i.me = extractvalue { ptr, i32 } %i.md, 0
  %i.mf = call ptr @__cxa_begin_catch(ptr %i.me) #36 ; 0 uses
  %.not1.i.i208 = icmp eq i64 %i.ma, 0
  br i1 %.not1.i.i208, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i212, label %.lr.ph.i.i209.preheader

.lr.ph.i.i209.preheader:                          ; preds = %bb.cj
  %xtraiter1337 = and i64 %i.ma, 1
  %lcmp.mod1338.not = icmp eq i64 %xtraiter1337, 0
  br i1 %lcmp.mod1338.not, label %.lr.ph.i.i209.prol.loopexit, label %.lr.ph.i.i209.prol

.lr.ph.i.i209.prol:                               ; preds = %.lr.ph.i.i209.preheader
  %i.mg = add nsw i64 %i.ma, -1                   ; 2 uses
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.val.i328.prol = load ptr, ptr %i.mi, align 8, !tbaa !306 ; 2 uses
  %i.mj = load i32, ptr %.val.i328.prol, align 4, !tbaa !211 ; 2 uses
  %i.mk = add nsw i32 %i.mj, -1                   ; 2 uses
  store i32 %i.mk, ptr %.val.i328.prol, align 4, !tbaa !211
  %.not.i.i.i.i329.prol = icmp slt i32 %i.mj, 1
  br i1 %.not.i.i.i.i329.prol, label %.loopexit1339, label %.lr.ph.i.i209.prol.loopexit, !prof !212

.lr.ph.i.i209.prol.loopexit:                      ; preds = %.lr.ph.i.i209.prol, %.lr.ph.i.i209.preheader
  %.02.i.i210.unr = phi i64 [ %i.ma, %.lr.ph.i.i209.preheader ], [ %i.mg, %.lr.ph.i.i209.prol ]
  %i.ml = icmp eq i64 %i.ma, 1
  br i1 %i.ml, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i212, label %.lr.ph.i.i209

.lr.ph.i.i209:                                    ; preds = %.lr.ph.i.i209.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333.1
  %.02.i.i210 = phi i64 [ %i.mv, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333.1 ], [ %.02.i.i210.unr, %.lr.ph.i.i209.prol.loopexit ] ; 2 uses
  %i.mm = getelementptr [16 x i8], ptr %i.lr, i64 %.02.i.i210
  %i.mn = getelementptr i8, ptr %i.mm, i64 -8
  %.val.i328 = load ptr, ptr %i.mn, align 8, !tbaa !306 ; 2 uses
  %i.mo = load i32, ptr %.val.i328, align 4, !tbaa !211 ; 2 uses
  %i.mp = add nsw i32 %i.mo, -1                   ; 2 uses
  store i32 %i.mp, ptr %.val.i328, align 4, !tbaa !211
  %.not.i.i.i.i329 = icmp slt i32 %i.mo, 1
  br i1 %.not.i.i.i.i329, label %.loopexit1339, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333, !prof !212

.loopexit1339:                                    ; preds = %.lr.ph.i.i209, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333, %.lr.ph.i.i209.prol
  %.lcssa1144 = phi i32 [ %i.mk, %.lr.ph.i.i209.prol ], [ %i.mp, %.lr.ph.i.i209 ], [ %i.mz, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333 ]
  %i.mq = sext i32 %.lcssa1144 to i64
  %i.mr = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.mq, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i330 unwind label %bb.cl

.noexc.i330:                                      ; preds = %.loopexit1339
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.mr) #42
          to label %.noexc1.i331 unwind label %bb.cl

.noexc1.i331:                                     ; preds = %.noexc.i330
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i332 unwind label %bb.ck

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i332: ; preds = %.noexc1.i331
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  unreachable

bb.ck:                                            ; preds = %.noexc1.i331
  %i.ms = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #35
  unreachable

bb.cl:                                            ; preds = %.noexc.i330, %.loopexit1339
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #35
  unreachable

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333:        ; preds = %.lr.ph.i.i209
  %i.mv = add i64 %.02.i.i210, -2                 ; 3 uses
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.val.i328.1 = load ptr, ptr %i.mx, align 8, !tbaa !306 ; 2 uses
  %i.my = load i32, ptr %.val.i328.1, align 4, !tbaa !211 ; 2 uses
  %i.mz = add nsw i32 %i.my, -1                   ; 2 uses
  store i32 %i.mz, ptr %.val.i328.1, align 4, !tbaa !211
  %.not.i.i.i.i329.1 = icmp slt i32 %i.my, 1
  br i1 %.not.i.i.i.i329.1, label %.loopexit1339, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333.1, !prof !212

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333.1:      ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333
  %.not.i.i211.1 = icmp eq i64 %i.mv, 0
  br i1 %.not.i.i211.1, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i212, label %.lr.ph.i.i209, !llvm.loop !21

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i212: ; preds = %.lr.ph.i.i209.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit333.1, %bb.cj
  invoke void @__cxa_rethrow() #38
          to label %bb.cp unwind label %bb.cm

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.i212
  %i.na = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.co

.lr.ph.i201.1:                                    ; preds = %.lr.ph.i201
  %i.nb = load i32, ptr %.val4.i.i205, align 4, !tbaa !211
  %i.nc = add nsw i32 %i.nb, 1
  store i32 %i.nc, ptr %.val4.i.i205, align 4, !tbaa !211
  %i.nd = getelementptr inbounds nuw i8, ptr %.val.i.i202, i64 16
  %i.ne = or disjoint i64 %.02.i203, 1            ; 2 uses
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.ne ; 2 uses
  %.val3.i.i204.1 = load i32, ptr %i.nd, align 8, !tbaa !307
  %i.ng = getelementptr i8, ptr %.val.i.i202, i64 24
  %.val4.i.i205.1 = load ptr, ptr %i.ng, align 8, !tbaa !306 ; 4 uses
  store i32 %.val3.i.i204.1, ptr %i.nf, align 8, !tbaa !307
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_125AliasingTest_Emplace_Test8TestBodyEv:bb.a
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #36
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn31 = phi { ptr, i32 } [ %i.cu, %bb.ba ], [ %i.ct, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.cv = load ptr, ptr %10, align 8, !tbaa !223  ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.bb
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !169
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %bb.bb, %bb.ay
  %.pn31.pn = phi { ptr, i32 } [ %i.cs, %bb.ay ], [ %.pn31, %bb.bb ], [ %.pn31, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #36
  br label %bb.bf

bb.bc:                                            ; preds = %bb.aq, %_ZN7testing7MessageD2Ev.exit88
  %i.cz = load ptr, ptr %i.e, align 8, !tbaa !221 ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i92, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !195 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.bd
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !198
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit96

_ZN7testing15AssertionResultD2Ev.exit96:          ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.df = load i64, ptr %1, align 8, !tbaa !197
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit96
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(88) %1)
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit96, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  %i.dh = add nuw nsw i64 %.02399, 1              ; 2 uses
  %exitcond101.not = icmp eq i64 %i.dh, 20
  br i1 %exitcond101.not, label %bb.b, label %bb.c, !llvm.loop !2392

bb.bf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit91, %bb.as
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZN7testing7MessageD2Ev.exit91 ], [ %i.ck, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ar, %bb.ab, %bb.m, %bb.j
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.j ], [ %.pn31.pn.pn, %bb.bf ], [ %i.w, %bb.m ], [ %.pn27.pn.pn, %bb.ar ], [ %.pn.pn.pn, %bb.ab ]
  %i.di = load i64, ptr %1, align 8, !tbaa !197
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit97, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(88) %1)
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit97

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit97: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn35.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EE7emplaceIJRS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::inlined_vector_internal::IteratorValueAdapter.521", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::inlined_vector_internal::IteratorValueAdapter.521", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20260526::inlined_vector_internal::IteratorValueAdapter.521", align 8 ; 5 uses
  %6 = alloca %"class.(anonymous namespace)::NotTriviallyDestructible", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41 ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !234
  %i.c = load i32, ptr %i.b, align 4, !tbaa !211
  store i32 %i.c, ptr %i.a, align 4, !tbaa !211
  store ptr %i.a, ptr %6, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %6, ptr %3, align 8
  %.val.i.i = load i64, ptr %0, align 8, !tbaa !197, !noalias !2401 ; 2 uses
  %i.d = trunc i64 %.val.i.i to i1                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val1.i.i = load ptr, ptr %i.e, align 8, !noalias !2401
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val4.i.i = load i64, ptr %i.f, align 8, !noalias !2401
  %.sink6.i.i = select i1 %i.d, ptr %.val1.i.i, ptr %i.e ; 4 uses
  %.sink.i.i = select i1 %i.d, i64 %.val4.i.i, i64 10 ; 2 uses
  %.sink5.i.i = lshr i64 %.val.i.i, 1             ; 6 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.sink6.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 4 uses
  %i.k = add nsw i64 %i.j, 1                      ; 3 uses
  %i.l = add nuw i64 %.sink5.i.i, 1               ; 3 uses
  %.not.i = icmp ult i64 %.sink5.i.i, %.sink.i.i
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i64 %i.h, ptr %4, align 8, !tbaa !397
  %i.m = shl nuw i64 %.sink.i.i, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.l) ; 7 uses
  %i.n = icmp ugt i64 %.sroa.speculated.i.i, 1152921504606846975
  br i1 %i.n, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i, !prof !212

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %.sroa.speculated.i.i, 2305843009213693951
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc72.i unwind label %bb.i

.noexc72.i:                                       ; preds = %bb.e
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #41
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i unwind label %bb.i ; 8 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i ; 3 uses
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i unwind label %bb.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.j)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i unwind label %bb.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.k
  %i.t = sub i64 %.sink5.i.i, %i.j
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.t)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i
  %.not1.i.i = icmp eq i64 %.sink5.i.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i
  %.02.i.i = phi i64 [ %i.u, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i ], [ %.sink5.i.i, %bb.f ]
  %i.u = add nsw i64 %.02.i.i, -1                 ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sink6.i.i, i64 %i.u
  %.val.i77.i = load ptr, ptr %i.v, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i77.i, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i:      ; preds = %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i77.i, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i, label %.lr.ph.i.i, !llvm.loop !46

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i: ; preds = %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i, %bb.f
  %.val.i78.i = load i64, ptr %0, align 8, !tbaa !197
  %i.w = trunc i64 %.val.i78.i to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i
  %.val1.i79.i = load ptr, ptr %i.e, align 8, !tbaa !198
  %.val2.i.i = load i64, ptr %i.f, align 8, !tbaa !198
  %i.x = shl i64 %.val2.i.i, 3
  call void @_ZdlPvm(ptr noundef %.val1.i79.i, i64 noundef %i.x) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i
  store ptr %i.q, ptr %i.e, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i, ptr %i.f, align 8, !tbaa !198
  %i.y = shl i64 %i.l, 1
  %i.z = or disjoint i64 %i.y, 1
  store i64 %i.z, ptr %0, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.m

bb.i:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i, %bb.e, %bb.d
  %.sroa.0129.0.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.q, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i ], [ %i.q, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ %i.q, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i ], [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.0126.0.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.r, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i ], [ %i.r, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.8127.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i ], [ 1, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.0123.0.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.q, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.8124.0.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.j, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit76.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEED2Ev(ptr %.sroa.0123.0.i, i64 %.sroa.8124.0.i) #36
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEED2Ev(ptr %.sroa.0126.0.i, i64 %.sroa.8127.0.i) #36
  %.not.i91.i = icmp eq ptr %.sroa.0129.0.i, null
  br i1 %.not.i91.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = shl nuw nsw i64 %.sroa.9.0.i, 3
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0129.0.i, i64 noundef %i.ab) #39
  br label %.body

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink5.i.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ac = getelementptr [8 x i8], ptr %.sink6.i.i, i64 %.sroa.speculated.i ; 6 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = ptrtoint ptr %i.ad to i64
  store i64 %i.ae, ptr %5, align 8, !tbaa !397
  %i.af = sub i64 %i.l, %.sroa.speculated.i       ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 %i.i ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = sub i64 1, %i.af
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.af)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i: ; preds = %bb.k
  %i.aj = sub nuw i64 %.sroa.speculated.i, %i.k
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.g
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.au, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i ], [ %i.an, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.aq, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i ], [ %i.ac, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i ], [ %i.ak, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i ]
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !234
  %i.ar = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41
          to label %.noexc95.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc95.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = load i32, ptr %.val.i.i.i.i.i.i, align 4, !tbaa !211, !noalias !2402
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !211, !noalias !2402
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !234 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !234
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc95.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i

_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc95.i
  %i.au = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.av = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i, !llvm.loop !47

_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i: ; preds = %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i
  %.not.i96.i = icmp eq i64 %i.af, 0
  br i1 %.not.i96.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i, label %.lr.ph.i97.i

.lr.ph.i97.i:                                     ; preds = %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i
  %i.aw = phi ptr [ %i.bb, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i ], [ %6, %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i ] ; 2 uses
  %.05.i.i = phi i64 [ %i.bc, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i ], [ 0, %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i ] ; 2 uses
  %.val2.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !234
  %i.ax = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41
          to label %.noexc99.i unwind label %.loopexit.i ; 2 uses

.noexc99.i:                                       ; preds = %.lr.ph.i97.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.05.i.i ; 2 uses
  %i.az = load i32, ptr %.val2.i.i.i, align 4, !tbaa !211, !noalias !2403
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !211, !noalias !2403
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !234 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !234
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc99.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 4) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i

_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i, %.noexc99.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bc = add nuw i64 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, %i.af
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.loopexit.i, label %.lr.ph.i97.i, !llvm.loop !2400

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.loopexit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i
  store ptr %i.bb, ptr %3, align 8
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.loopexit.i, %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ai)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.l:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i
  %i.bd = load i64, ptr %0, align 8, !tbaa !197
  %i.be = add i64 %i.bd, 2
  store i64 %i.be, ptr %0, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.m

.loopexit.i:                                      ; preds = %.lr.ph.i97.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit149.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i, %bb.k
  %.sroa.0120.0.ph.ph.i = phi ptr [ null, %bb.k ], [ %i.ac, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ]
  %.sroa.8.0.ph.ph.i = phi i64 [ 0, %bb.k ], [ %i.af, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ]
  %lpad.loopexit.split-lp150.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.0120.0.i = phi ptr [ %i.ac, %.loopexit.i ], [ %i.ac, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0120.0.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.8.0.i = phi i64 [ %i.af, %.loopexit.i ], [ %i.af, %.loopexit.split-lp.loopexit.i ], [ %.sroa.8.0.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit149.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp150.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEED2Ev(ptr %.sroa.0120.0.i, i64 %.sroa.8.0.i) #36
  br label %.body

bb.m:                                             ; preds = %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val7 = load ptr, ptr %6, align 8, !tbaa !234  ; 2 uses
  %.not.i.i8 = icmp eq ptr %.val7, null
  br i1 %.not.i.i8, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i:          ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %.val7, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIiEclEPi.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret void

.body:                                            ; preds = %bb.i, %bb.j, %.loopexit.split-lp.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.aa, %bb.i ]
  %.val6 = load ptr, ptr %6, align 8, !tbaa !234  ; 2 uses
  %.not.i.i9 = icmp eq ptr %.val6, null
  br i1 %.not.i.i9, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit11, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i10

_ZNKSt14default_deleteIiEclEPi.exit.i.i10:        ; preds = %.body
  call void @_ZdlPvm(ptr noundef nonnull %.val6, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit11

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit11: ; preds = %.body, %_ZNKSt14default_deleteIiEclEPi.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internal8EqHelper7CompareIN12_GLOBAL__N_124NotTriviallyDestructibleES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.val.i = load ptr, ptr %3, align 8, !tbaa !234, !noalias !2408
  %.val6.i = load ptr, ptr %4, align 8, !tbaa !234, !noalias !2408
  %.val.val.i = load i32, ptr %.val.i, align 4, !tbaa !211, !noalias !2408
  %.val6.val.i = load i32, ptr %.val6.i, align 4, !tbaa !211, !noalias !2408
  %i.a = icmp eq i32 %.val.val.i, %.val6.val.i
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %_ZN7testing8internal11CmpHelperEQIN12_GLOBAL__N_124NotTriviallyDestructibleES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !2409
  call fastcc void @_ZN7testing8internal33FormatForComparisonFailureMessageIN12_GLOBAL__N_124NotTriviallyDestructibleES3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !2409
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !2409
  invoke fastcc void @_ZN7testing8internal33FormatForComparisonFailureMessageIN12_GLOBAL__N_124NotTriviallyDestructibleES3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.f, !noalias !2409

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.g
end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_133AliasingTest_InsertWithCount_Test8TestBodyEv:bb.a
  %.pn60 = phi { ptr, i32 } [ %i.fs, %bb.bx ], [ %i.fr, %bb.bw ] ; 2 uses
  %i.ft = load ptr, ptr %17, align 8, !tbaa !195  ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.q
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.by
  %i.fv = load i64, ptr %i.q, align 8, !tbaa !198
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.bv
  %.pn60.pn = phi { ptr, i32 } [ %i.fq, %bb.bv ], [ %.pn60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %.pn60, %bb.by ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.fx = load ptr, ptr %14, align 8, !tbaa !223  ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i231, label %_ZN7testing7MessageD2Ev.exit233, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !169
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(128) %i.fx) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit233

_ZN7testing7MessageD2Ev.exit233:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %bb.bu
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.bu ], [ %.pn60.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %.pn60.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit244

bb.bz:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %.pr264 = load ptr, ptr %i.m, align 8, !tbaa !221 ; 4 uses
  %.not.i.i.i234 = icmp eq ptr %.pr264, null
  br i1 %.not.i.i.i234, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit241, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gb = load ptr, ptr %.pr264, align 8, !tbaa !195 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.pr264, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i235: ; preds = %bb.ca
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !198
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i236

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i236: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i235
  call void @_ZdlPvm(ptr noundef nonnull %.pr264, i64 noundef 32) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit241

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit241: ; preds = %bb.bm, %._crit_edge.i.i.i.i195, %.loopexit, %bb.bz, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 4) #39
  %i.gg = add nuw nsw i64 %.029315, 1             ; 2 uses
  %exitcond338.not = icmp eq i64 %i.gg, 5
  br i1 %exitcond338.not, label %bb.j, label %.preheader, !llvm.loop !2434

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit244: ; preds = %_ZN7testing7MessageD2Ev.exit233, %bb.bo
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn, %_ZN7testing7MessageD2Ev.exit233 ], [ %i.fe, %bb.bo ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 4) #39
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bn, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit244, %bb.u, %bb.aq, %_ZN7testing7MessageD2Ev.exit181, %_ZN7testing7MessageD2Ev.exit94, %bb.i
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.i ], [ %i.az, %bb.u ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %i.db, %bb.aq ], [ %.pn55.pn.pn, %_ZN7testing7MessageD2Ev.exit181 ], [ %.pn60.pn.pn.pn.pn, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit244 ], [ %i.fd, %bb.bn ]
  %i.gh = load i64, ptr %1, align 8, !tbaa !197
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit245, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(88) %1)
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit245

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EED2Ev.exit245: ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn71.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_124NotTriviallyDestructibleELm10ESaIS3_EE6insertEPKS3_mRS6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i64 noundef range(i64 0, 5) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::inlined_vector_internal::CopyValueAdapter.528", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20260526::inlined_vector_internal::IteratorValueAdapter.521", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20260526::inlined_vector_internal::IteratorValueAdapter.521", align 8 ; 5 uses
  %7 = alloca %"class.(anonymous namespace)::NotTriviallyDestructible", align 8 ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.o, label %bb.b, !prof !212

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41 ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !234
  %i.c = load i32, ptr %i.b, align 4, !tbaa !211
  store i32 %i.c, ptr %i.a, align 4, !tbaa !211
  store ptr %i.a, ptr %7, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %7, ptr %4, align 8
  %.val.i.i = load i64, ptr %0, align 8, !tbaa !197, !noalias !2443 ; 2 uses
  %i.d = trunc i64 %.val.i.i to i1                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val1.i.i = load ptr, ptr %i.e, align 8, !noalias !2443
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val4.i.i = load i64, ptr %i.f, align 8, !noalias !2443
  %.sink6.i.i = select i1 %i.d, ptr %.val1.i.i, ptr %i.e ; 5 uses
  %.sink.i.i = select i1 %i.d, i64 %.val4.i.i, i64 10 ; 2 uses
  %.sink5.i.i = lshr i64 %.val.i.i, 1             ; 5 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %.sink6.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 4 uses
  %i.k = add nsw i64 %i.j, %2                     ; 3 uses
  %i.l = add nuw i64 %.sink5.i.i, %2              ; 4 uses
  %i.m = icmp ugt i64 %i.l, %.sink.i.i
  br i1 %i.m, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i64 %i.h, ptr %5, align 8, !tbaa !397
  %i.n = shl i64 %.sink.i.i, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.l) ; 7 uses
  %i.o = icmp ugt i64 %.sroa.speculated.i.i, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i, !prof !212

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ugt i64 %.sroa.speculated.i.i, 2305843009213693951
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc73.i unwind label %bb.j

.noexc73.i:                                       ; preds = %bb.f
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i: ; preds = %bb.c
  %i.q = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #41
          to label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i unwind label %bb.j ; 8 uses

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i ; 3 uses
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsIS9_E7pointerERT0_NSE_9size_typeE(ptr noundef nonnull %i.s, ptr noundef nonnull readonly align 8 dereferenceable(8) %4, i64 noundef range(i64 1, 5) %2)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i unwind label %bb.j

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.j)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i unwind label %bb.j

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.k
  %i.u = sub i64 %.sink5.i.i, %i.j
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.u)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i
  %.not1.i.i = icmp eq i64 %.sink5.i.i, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i
  %.02.i.i = phi i64 [ %i.v, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i ], [ %.sink5.i.i, %bb.g ]
  %i.v = add nsw i64 %.02.i.i, -1                 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sink6.i.i, i64 %i.v
  %.val.i77.i = load ptr, ptr %i.w, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i77.i, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i:      ; preds = %.lr.ph.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i77.i, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i, label %.lr.ph.i.i, !llvm.loop !46

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i: ; preds = %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i.i, %bb.g
  %.val.i78.i = load i64, ptr %0, align 8, !tbaa !197
  %i.x = trunc i64 %.val.i78.i to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i
  %.val1.i79.i = load ptr, ptr %i.e, align 8, !tbaa !198
  %.val2.i.i = load i64, ptr %i.f, align 8, !tbaa !198
  %i.y = shl i64 %.val2.i.i, 3
  call void @_ZdlPvm(ptr noundef %.val1.i79.i, i64 noundef %i.y) #39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit.i
  store ptr %i.r, ptr %i.e, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i, ptr %i.f, align 8, !tbaa !198
  %i.z = shl i64 %i.l, 1
  %i.aa = or disjoint i64 %i.z, 1
  store i64 %i.aa, ptr %0, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.n

bb.j:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i, %bb.f, %bb.e
  %.sroa.0128.0.i = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %i.r, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ %i.r, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i ], [ %i.r, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ 0, %bb.e ], [ 0, %bb.f ], [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i ], [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.0125.0.i = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %i.s, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ %i.s, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.8126.0.i = phi i64 [ 0, %bb.e ], [ 0, %bb.f ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ %2, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.0122.0.i = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %i.r, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ null, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %.sroa.8123.0.i = phi i64 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.j, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE8AllocateEm.exit.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE8AllocateERS5_m.exit.i.i ]
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEED2Ev(ptr %.sroa.0122.0.i, i64 %.sroa.8123.0.i) #36
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEED2Ev(ptr %.sroa.0125.0.i, i64 %.sroa.8126.0.i) #36
  %.not.i91.i = icmp eq ptr %.sroa.0128.0.i, null
  br i1 %.not.i91.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = shl nuw nsw i64 %.sroa.9.0.i, 3
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0.i, i64 noundef %i.ac) #39
  br label %.body

bb.l:                                             ; preds = %bb.b
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.k, i64 %.sink5.i.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ad = sub nsw i64 %.sroa.speculated.i, %2
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sink6.i.i, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  store i64 %i.af, ptr %6, align 8, !tbaa !397
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sink6.i.i, i64 %.sroa.speculated.i ; 5 uses
  %i.ah = sub i64 %i.l, %.sroa.speculated.i       ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 %i.i ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = sub i64 %2, %i.ah
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE(ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.ah)
          to label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i: ; preds = %bb.l
  %i.al = sub nuw i64 %.sroa.speculated.i, %i.k
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.g
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aw, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i ], [ %i.ap, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.as, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i ], [ %i.ag, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i ], [ %i.am, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !234
  %i.at = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41
          to label %.noexc95.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc95.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = load i32, ptr %.val.i.i.i.i.i.i, align 4, !tbaa !211, !noalias !2444
  store i32 %i.au, ptr %i.at, align 4, !tbaa !211, !noalias !2444
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !234 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !234
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc95.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i

_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc95.i
  %i.aw = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i, !llvm.loop !47

_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i: ; preds = %_ZN12_GLOBAL__N_124NotTriviallyDestructibleaSERKS0_.exit.i.i.i.i.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit94.i
  %.not.i96.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i96.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i, label %.lr.ph.i97.i

.lr.ph.i97.i:                                     ; preds = %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE10AssignNextEPS4_.exit.i.i
  %.01.i.i = phi i64 [ %i.bc, %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE10AssignNextEPS4_.exit.i.i ], [ 0, %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i ] ; 2 uses
  %.val.val.i.i = load ptr, ptr %7, align 8, !tbaa !234
  %i.ay = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41
          to label %.noexc98.i unwind label %.loopexit.i ; 2 uses

.noexc98.i:                                       ; preds = %.lr.ph.i97.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.01.i.i ; 2 uses
  %i.ba = load i32, ptr %.val.val.i.i, align 4, !tbaa !211, !noalias !2445
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !211, !noalias !2445
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !234 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !234
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE10AssignNextEPS4_.exit.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc98.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 4) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE10AssignNextEPS4_.exit.i.i

_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE10AssignNextEPS4_.exit.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i, %.noexc98.i
  %i.bc = add nuw i64 %.01.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, %i.ah
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i, label %.lr.ph.i97.i, !llvm.loop !2442

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal16CopyValueAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEE10AssignNextEPS4_.exit.i.i, %_ZSt13move_backwardIPN12_GLOBAL__N_124NotTriviallyDestructibleES2_ET0_T_S4_S3_.exit.i
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsIS9_E7pointerERT0_NSE_9size_typeE(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.ak)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.m:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i
  %i.bd = shl nuw nsw i64 %2, 1
  %i.be = load i64, ptr %0, align 8, !tbaa !197
  %i.bf = add i64 %i.be, %i.bd
  store i64 %i.bf, ptr %0, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.n

.loopexit.i:                                      ; preds = %.lr.ph.i97.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i.i.i.i.i.i
  %lpad.loopexit148.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i, %bb.l
  %.sroa.0119.0.ph.ph.i = phi ptr [ null, %bb.l ], [ %i.ag, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i ]
  %.sroa.8.0.ph.ph.i = phi i64 [ 0, %bb.l ], [ %i.ah, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.i ]
  %lpad.loopexit.split-lp149.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.sroa.0119.0.i = phi ptr [ %i.ag, %.loopexit.i ], [ %i.ag, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0119.0.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.8.0.i = phi i64 [ %i.ah, %.loopexit.i ], [ %i.ah, %.loopexit.split-lp.loopexit.i ], [ %.sroa.8.0.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit148.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp149.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_124NotTriviallyDestructibleEEED2Ev(ptr %.sroa.0119.0.i, i64 %.sroa.8.0.i) #36
  br label %.body

bb.n:                                             ; preds = %bb.m, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.val11 = load ptr, ptr %7, align 8, !tbaa !234 ; 2 uses
  %.not.i.i12 = icmp eq ptr %.val11, null
  br i1 %.not.i.i12, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i:          ; preds = %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %.val11, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIiEclEPi.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.o

.body:                                            ; preds = %bb.j, %bb.k, %.loopexit.split-lp.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ab, %bb.j ]
  %.val = load ptr, ptr %7, align 8, !tbaa !234   ; 2 uses
  %.not.i.i13 = icmp eq ptr %.val, null
  br i1 %.not.i.i13, label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit15, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i14

_ZNKSt14default_deleteIiEclEPi.exit.i.i14:        ; preds = %.body
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef 4) #39
  br label %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit15

_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit15: ; preds = %.body, %_ZNKSt14default_deleteIiEclEPi.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_124NotTriviallyDestructibleEENS1_16CopyValueAdapterIS5_EEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsIS9_E7pointerERT0_NSE_9size_typeE(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.02 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.a ]    ; 4 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !2448
  %i.a = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #41
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %.lr.ph
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #36 ; 0 uses
  %.not1.i = icmp eq i64 %.02, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_124NotTriviallyDestructibleEELb0EE15DestroyElementsERS5_PS4_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i
  %.02.i = phi i64 [ %i.e, %_ZN12_GLOBAL__N_124NotTriviallyDestructibleD2Ev.exit.i ], [ %.02, %bb.b ]
  %i.e = add i64 %.02.i, -1                       ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
end_hunk_9
