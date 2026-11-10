Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 180
loop-unroll.NumUnrolled: 277
begin_hunk_0_@_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EEaSEOS5_:bb.a
bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.v, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.w = phi i32 [ %i.q, %.lr.ph.i.i.i ], [ %i.v, %bb.e ] ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.d, i64 %.02.i.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = load i8, ptr %i.y, align 4, !tbaa !454, !range !189, !noundef !190
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.ab = add nsw i32 %i.w, -1                    ; 2 uses
  store i32 %i.ab, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1: ; preds = %bb.f, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.ac = phi i32 [ %i.w, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.d, i64 %.02.i.i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -20
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.ah = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ah, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2: ; preds = %bb.g, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.ai = phi i32 [ %i.ac, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1 ], [ %i.ah, %bb.g ] ; 2 uses
  %i.aj = add nsw i64 %.02.i.i.i, -4              ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i8, ptr %i.al, align 4, !tbaa !454, !range !189, !noundef !190
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.ao = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.ao, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3: ; preds = %bb.h, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.ap = phi i32 [ %i.ai, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2 ], [ %i.ao, %bb.h ]
  %.not.i.i.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !128

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.c
  br i1 %i.b, label %bb.i, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !198
  %i.ar = shl i64 %.val2.i.i.i, 3
  tail call void @_ZdlPvm(ptr noundef %.val1.i.i.i, i64 noundef %i.ar) #39
  %.pre.i = load i64, ptr %1, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i: ; preds = %bb.i, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i
  %i.as = phi i64 [ %.val.i, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i ], [ %.pre.i, %bb.i ]
  store i64 %i.as, ptr %0, align 8, !tbaa !197
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !289
  store i64 0, ptr %1, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EE14MoveAssignmentENS0_23inlined_vector_internal7StorageIS3_Lm2ES4_E26ElementwiseConstructPolicyEOS5_.exit

bb.j:                                             ; preds = %bb.b
  br i1 %.not1.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol
  %.02.i.i.prol = phi i64 [ %i.av, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %i.e, %.lr.ph.preheader.i.i ]
  %i.au = phi i32 [ %i.bb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.av = add nsw i64 %.02.i.i.prol, -1           ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !454, !range !189, !noundef !190
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol

bb.k:                                             ; preds = %.lr.ph.i.i.prol
  %i.ba = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.ba, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol: ; preds = %bb.k, %.lr.ph.i.i.prol
  %i.bb = phi i32 [ %i.au, %.lr.ph.i.i.prol ], [ %i.ba, %bb.k ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !5729

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol, %.lr.ph.preheader.i.i
  %.02.i.i.unr = phi i64 [ %i.e, %.lr.ph.preheader.i.i ], [ %i.av, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ]
  %.unr = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.preheader.i.i ], [ %i.bb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ]
  %i.bc = icmp ult i64 %.val.i.i.i, 8
  br i1 %i.bc, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3, %.lr.ph.i.i.prol.loopexit
  %i.bd = trunc i64 %i.e to i32
  %i.be = sub i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i, %i.bd
  store i32 %i.be, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3
  %.02.i.i = phi i64 [ %i.by, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3 ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.bf = phi i32 [ %i.ce, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.d, i64 %.02.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.l, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bk = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.bl = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %i.bk, %bb.l ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.d, i64 %.02.i.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 -12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.m, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i
  %i.bq = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1: ; preds = %bb.m, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i
  %i.br = phi i32 [ %i.bl, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.d, i64 %.02.i.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -20
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1
  %i.bw = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2: ; preds = %bb.n, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1
  %i.bx = phi i32 [ %i.br, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1 ], [ %i.bw, %bb.n ] ; 2 uses
  %i.by = add nsw i64 %.02.i.i, -4                ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !454, !range !189, !noundef !190
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.o, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2
  %i.cd = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.cd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3: ; preds = %bb.o, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2
  %i.ce = phi i32 [ %i.bx, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2 ], [ %i.cd, %bb.o ]
  %.not.i.i.3 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !128

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i: ; preds = %._crit_edge.i.i, %bb.j
  br i1 %i.b, label %bb.p, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i

bb.p:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i = load i64, ptr %i.cf, align 8, !tbaa !198
  %i.cg = shl i64 %.val2.i.i, 3
  tail call void @_ZdlPvm(ptr noundef %.val1.i.i.i, i64 noundef %i.cg) #39
  %.val7.pre.i = load i64, ptr %1, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i: ; preds = %bb.p, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i
  %.val7.i = phi i64 [ %.val.i, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i ], [ %.val7.pre.i, %bb.p ] ; 3 uses
  %i.ch = lshr i64 %.val7.i, 1                    ; 3 uses
  switch i64 %i.ch, label %.lr.ph.i13.i.preheader.new [
    i64 0, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i
    i64 1, label %.lr.ph.i13.i.epil.preheader
  ]

.lr.ph.i13.i.preheader.new:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i
  %unroll_iter = and i64 %i.ch, 9223372036854775806
  br label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i, %.lr.ph.i13.i.preheader.new
  %.val.i2.i.pn.i = phi ptr [ %1, %.lr.ph.i13.i.preheader.new ], [ %.val.i2.i.i.1, %.lr.ph.i13.i ] ; 4 uses
  %.01.i.i = phi i64 [ 0, %.lr.ph.i13.i.preheader.new ], [ %i.db, %.lr.ph.i13.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i13.i.preheader.new ], [ %niter.next.1, %.lr.ph.i13.i ]
  %.val.i2.i.i = getelementptr inbounds nuw i8, ptr %.val.i2.i.pn.i, i64 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01.i.i ; 2 uses
  %i.cj = load i32, ptr %.val.i2.i.i, align 8, !tbaa !453
  store i32 %i.cj, ptr %i.ci, align 8, !tbaa !453
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i2.i.pn.i, i64 12 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.cm, ptr %i.ck, align 4, !tbaa !454
  store i8 0, ptr %i.cl, align 4, !tbaa !454
  %i.cn = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.cp = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %.val.i2.i.i.1 = getelementptr inbounds nuw i8, ptr %.val.i2.i.pn.i, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01.i.i ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %.val.i2.i.i.1, align 8, !tbaa !453
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !453
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i2.i.pn.i, i64 20 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.cw, ptr %i.cu, align 4, !tbaa !454
  store i8 0, ptr %i.cv, align 4, !tbaa !454
  %i.cx = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.cz = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.db = add nuw nsw i64 %.01.i.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i13.i, !llvm.loop !129

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i13.i
  %i.dc = and i64 %.val7.i, 2
  %lcmp.mod10.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod10.not, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i, label %.lr.ph.i13.i.epil.preheader

.lr.ph.i13.i.epil.preheader:                      ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa
  %.val.i2.i.pn.i.epil.init = phi ptr [ %1, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i ], [ %.val.i2.i.i.1, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.01.i.i.epil.init = phi i64 [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i ], [ %i.db, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %.val.i2.i.i.epil = getelementptr inbounds nuw i8, ptr %.val.i2.i.pn.i.epil.init, i64 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01.i.i.epil.init ; 2 uses
  %i.de = load i32, ptr %.val.i2.i.i.epil, align 8, !tbaa !453
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !453
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i2.i.pn.i.epil.init, i64 12 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.dh, ptr %i.df, align 4, !tbaa !454
  store i8 0, ptr %i.dg, align 4, !tbaa !454
  %i.di = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dk = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i: ; preds = %.lr.ph.i13.i.epil.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS4_EE21DeallocateIfAllocatedEv.exit.i
  %i.dm = and i64 %.val7.i, -2
  store i64 %i.dm, ptr %0, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EE14MoveAssignmentENS0_23inlined_vector_internal7StorageIS3_Lm2ES4_E26ElementwiseConstructPolicyEOS5_.exit

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EE14MoveAssignmentENS0_23inlined_vector_internal7StorageIS3_Lm2ES4_E26ElementwiseConstructPolicyEOS5_.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i, %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_129MoveConstructibleOnlyInstanceELm2ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN7testing8internal33MakePredicateFormatterFromMatcherINS0_16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEEEENS0_29PredicateFormatterFromMatcherIT_EESA_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr %.8.val, ptr %.16.val) unnamed_addr #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %.16.val to i64
  %i.b = ptrtoint ptr %.8.val to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %.16.val, %.8.val
  br i1 %.not.i.i.i.i.i, label %.thread3, label %bb.b

.thread3:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr null, i64 %i.c
  br label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEC2EOS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.c, 9223372036854775804
  br i1 %i.e, label %.noexc.i.i.i, label %bb.c, !prof !212

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #41 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 3 uses
  %i.h = icmp samesign ugt i64 %i.c, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !318

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %.8.val, i64 %i.c, i1 false)
  br label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEC2EOS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %i.c, 4
  br i1 %i.i, label %bb.f, label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEC2EOS7_.exit

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %.8.val, align 4, !tbaa !211
  store i32 %i.j, ptr %i.f, align 4, !tbaa !211
  br label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEC2EOS7_.exit

_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEC2EOS7_.exit: ; preds = %.thread3, %bb.d, %bb.e, %bb.f
  %i.k = phi ptr [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.d, %.thread3 ] ; 2 uses
  %i.l = phi ptr [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ], [ null, %.thread3 ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o                       ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.thread4, label %bb.g

.thread4:                                         ; preds = %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEC2EOS7_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !321
  br label %bb.j

bb.g:                                             ; preds = %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEC2EOS7_.exit
  %i.t = icmp ugt i64 %i.p, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !212

.noexc.i.i.i.i:                                   ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #41
          to label %.noexc4 unwind label %bb.l    ; 4 uses

.noexc4:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  store ptr %i.u, ptr %i.m, align 8, !tbaa !320
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !321
  %i.y = icmp samesign ugt i64 %i.p, 4
  br i1 %i.y, label %bb.h, label %bb.i, !prof !318

bb.h:                                             ; preds = %.noexc4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.l, i64 %i.p, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc4
  %i.z = icmp eq i64 %i.p, 4
  br i1 %i.z, label %.thread5, label %bb.j

.thread5:                                         ; preds = %bb.i
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !211
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !211
  store ptr %i.w, ptr %i.v, align 8, !tbaa !322
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread4
  %i.ab = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.r, %.thread4 ]
  %i.ac = phi ptr [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.q, %.thread4 ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !322
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread5, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #39
  br label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEED2Ev.exit

_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEED2Ev.exit: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i5 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i5, label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEED2Ev.exit6, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #39
  br label %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEED2Ev.exit6

_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEED2Ev.exit6: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEEEclIN4absl12lts_2026052613InlinedVectorINS3_29MoveConstructibleOnlyInstanceELm2ESaISE_EEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %12 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %13 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %14 = alloca %"class.testing::Matcher.1334", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %16 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5774)
  %i.f = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #41, !noalias !5775 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEE4ImplIRKN4absl12lts_2026052613InlinedVectorINS2_29MoveConstructibleOnlyInstanceELm2ESaISC_EEEEE, i64 16), ptr %i.f, align 8, !tbaa !169, !noalias !5775
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5780)
  %i.i = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #41
          to label %.noexc.i.i.i.i.i unwind label %bb.g, !noalias !5775 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_115HasValueMatcher10gmock_ImplISt5tupleIJRKNS_29MoveConstructibleOnlyInstanceERKiEEEE, i64 16), ptr %i.i, align 8, !tbaa !169, !noalias !5781
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseISt5tupleIJRKN12_GLOBAL__N_129MoveConstructibleOnlyInstanceERKiEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIRKS9_EELb1EEEEEPKNSA_6VTableEvE7kVTable, ptr %i.j, align 8, !tbaa !706, !alias.scope !5782, !noalias !5775
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc2.i.i.i.i.i unwind label %bb.g, !noalias !5775 ; 3 uses

.noexc2.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 1, ptr %i.k, align 4, !tbaa !248, !noalias !5781
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_166NonSwappableSwapTest_InlineAndAllocatedTransferStorageAndMove_Test8TestBodyEv:bb.a
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %bb.as, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.ax

bb.at:                                            ; preds = %bb.ao
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit108

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit102
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #36
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn25 = phi { ptr, i32 } [ %i.dg, %bb.av ], [ %i.df, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.dh = load ptr, ptr %12, align 8, !tbaa !223  ; 3 uses
  %.not.i.i106 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i106, label %_ZN7testing7MessageD2Ev.exit108, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107: ; preds = %bb.aw
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !169
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit108

_ZN7testing7MessageD2Ev.exit108:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107, %bb.aw, %bb.at
  %.pn25.pn = phi { ptr, i32 } [ %i.de, %bb.at ], [ %.pn25, %bb.aw ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #36
  br label %bb.be

bb.ax:                                            ; preds = %_ZN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit105
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !221 ; 4 uses
  %.not.i.i109 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i109, label %_ZN7testing15AssertionResultD2Ev.exit113, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !195 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110: ; preds = %bb.ay
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !198
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit113

_ZN7testing15AssertionResultD2Ev.exit113:         ; preds = %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.ds = load i64, ptr %3, align 8, !tbaa !197
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit113
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %3)
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit113, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.du = load i64, ptr %2, align 8, !tbaa !197
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit114, label %bb.ba

bb.ba:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %2)
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit114

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit114: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.dw = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %.not.i = icmp eq i32 %i.dw, %i.f
  br i1 %.not.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit114
  call void @abort() #35
  unreachable

bb.bc:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit114
  %i.dx = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %.not1.i = icmp eq i32 %i.dx, %i.h
  br i1 %.not1.i, label %_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @abort() #35
  unreachable

_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.be:                                            ; preds = %_ZN7testing7MessageD2Ev.exit108, %.body
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit108 ], [ %.pn22.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.aj, %bb.s, %bb.d
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.be ], [ %.pn18.pn.pn, %bb.aj ], [ %.pn.pn.pn, %bb.s ], [ %i.ad, %bb.d ]
  %i.dy = load i64, ptr %3, align 8, !tbaa !197
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %3)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ea = load i64, ptr %2, align 8, !tbaa !197
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit116, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(24) %2)
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit116

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EED2Ev.exit116: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev(ptr noundef nonnull align 4 dead_on_return(24) dereferenceable(24) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS3_EE4swapERS5_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1) unnamed_addr #29 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::inlined_vector_internal::Storage<(anonymous namespace)::NonSwappableInstance, 2, std::allocator<(anonymous namespace)::NonSwappableInstance>>::Allocated", align 8 ; 4 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.q, label %bb.b, !prof !212

bb.b:                                             ; preds = %bb.a
  %.val18.i = load i64, ptr %0, align 8, !tbaa !197 ; 5 uses
  %i.a = trunc i64 %.val18.i to i1
  %.val17.i = load i64, ptr %1, align 8, !tbaa !197 ; 5 uses
  %i.b = trunc i64 %.val17.i to i1                ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.d, label %.thread42.i

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !5873
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !5873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !5873
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE4SwapEPS6_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.b, label %.thread42.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = icmp ugt i64 %.val18.i, %.val17.i        ; 2 uses
  %spec.select.i.i = select i1 %i.e, ptr %0, ptr %1
  %spec.select29.i.i = select i1 %i.e, ptr %1, ptr %0
  %i.f = tail call i64 @llvm.umin.i64(i64 %.val18.i, i64 %.val17.i) ; 3 uses
  %i.g = lshr exact i64 %i.f, 1                   ; 7 uses
  %i.h = tail call i64 @llvm.umax.i64(i64 %.val18.i, i64 %.val17.i)
  %i.i = lshr exact i64 %i.h, 1                   ; 2 uses
  %i.j = sub nsw i64 %i.i, %i.g                   ; 8 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E.promoted.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4
  switch i64 %i.f, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.preheader.new [
    i64 0, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE5SwapNENS6_26ElementwiseConstructPolicyEPS6_m.exit.i.i
    i64 2, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.epil.preheader
  ]

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.preheader.new: ; preds = %bb.f
  %unroll_iter = and i64 %i.g, 9223372036854775806
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i
  %i.k = and i64 %i.f, 2
  %lcmp.mod.not = icmp eq i64 %i.k, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.epil.preheader

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.epil.preheader: ; preds = %bb.f, %._crit_edge.i.i.i.unr-lcssa
  %.pn2730.i.i.i.epil.init = phi ptr [ %0, %bb.f ], [ %.0.i.i.i.1, %._crit_edge.i.i.i.unr-lcssa ] ; 2 uses
  %.pn29.i.i.i.epil.init = phi ptr [ %1, %bb.f ], [ %.019.i.i.i.1, %._crit_edge.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod15 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %.0.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn2730.i.i.i.epil.init, i64 8 ; 2 uses
  %.019.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.pn29.i.i.i.epil.init, i64 8 ; 2 uses
  %i.l = load i32, ptr %.0.i.i.i.epil, align 8, !tbaa !453
  %i.m = getelementptr inbounds nuw i8, ptr %.pn2730.i.i.i.epil.init, i64 12 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 0, ptr %i.m, align 4, !tbaa !454
  %i.o = load i32, ptr %.019.i.i.i.epil, align 8, !tbaa !453
  store i32 %i.o, ptr %.0.i.i.i.epil, align 8, !tbaa !453
  %i.p = getelementptr inbounds nuw i8, ptr %.pn29.i.i.i.epil.init, i64 12 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.q, ptr %i.m, align 4, !tbaa !454
  store i32 %i.l, ptr %.019.i.i.i.epil, align 8, !tbaa !453
  store i8 %i.n, ptr %i.p, align 4, !tbaa !454
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.epil.preheader
  %i.r = trunc i64 %i.g to i32
  %i.s = mul i32 %i.r, 3
  %i.t = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E.promoted.i.i.i, %i.s
  store i32 %i.t, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE5SwapNENS6_26ElementwiseConstructPolicyEPS6_m.exit.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i: ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.preheader.new
  %.pn2730.i.i.i = phi ptr [ %0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.preheader.new ], [ %.0.i.i.i.1, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i ] ; 4 uses
  %.pn29.i.i.i = phi ptr [ %1, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.preheader.new ], [ %.019.i.i.i.1, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i.preheader.new ], [ %niter.next.1, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i ]
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn2730.i.i.i, i64 8 ; 2 uses
  %.019.i.i.i = getelementptr inbounds nuw i8, ptr %.pn29.i.i.i, i64 8 ; 2 uses
  %i.u = load i32, ptr %.0.i.i.i, align 8, !tbaa !453
  %i.v = getelementptr inbounds nuw i8, ptr %.pn2730.i.i.i, i64 12 ; 3 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 0, ptr %i.v, align 4, !tbaa !454
  %i.x = load i32, ptr %.019.i.i.i, align 8, !tbaa !453
  store i32 %i.x, ptr %.0.i.i.i, align 8, !tbaa !453
  %i.y = getelementptr inbounds nuw i8, ptr %.pn29.i.i.i, i64 12 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.z, ptr %i.v, align 4, !tbaa !454
  store i32 %i.u, ptr %.019.i.i.i, align 8, !tbaa !453
  store i8 %i.w, ptr %i.y, align 4, !tbaa !454
  %.0.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn2730.i.i.i, i64 16 ; 4 uses
  %.019.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn29.i.i.i, i64 16 ; 4 uses
  %i.aa = load i32, ptr %.0.i.i.i.1, align 8, !tbaa !453
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn2730.i.i.i, i64 20 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 0, ptr %i.ab, align 4, !tbaa !454
  %i.ad = load i32, ptr %.019.i.i.i.1, align 8, !tbaa !453
  store i32 %i.ad, ptr %.0.i.i.i.1, align 8, !tbaa !453
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn29.i.i.i, i64 20 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.af, ptr %i.ab, align 4, !tbaa !454
  store i32 %i.aa, ptr %.019.i.i.i.1, align 8, !tbaa !453
  store i8 %i.ac, ptr %i.ae, align 4, !tbaa !454
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.unr-lcssa, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit23.i.i.i, !llvm.loop !5870

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE5SwapNENS6_26ElementwiseConstructPolicyEPS6_m.exit.i.i: ; preds = %bb.f, %._crit_edge.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.g ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select29.i.i, i64 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.g ; 3 uses
  %.not.i13.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i13.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE4SwapEPS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE5SwapNENS6_26ElementwiseConstructPolicyEPS6_m.exit.i.i
  %i.ak = xor i64 %i.g, -1
  %i.al = add nsw i64 %i.i, %i.ak                 ; 2 uses
  %xtraiter16 = and i64 %i.j, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter20 = and i64 %i.j, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.val.i2.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.preheader.new ], [ %i.bh, %.lr.ph.i.i.i ] ; 5 uses
  %.01.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bi, %.lr.ph.i.i.i ] ; 3 uses
  %niter21 = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter21.next.1, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.01.i.i.i ; 2 uses
  %i.ao = load i32, ptr %.val.i2.i.i.i, align 8, !tbaa !453
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !453
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i2.i.i.i, i64 4 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.ar, ptr %i.ap, align 4, !tbaa !454
  store i8 0, ptr %i.aq, align 4, !tbaa !454
  %i.as = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.au = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i2.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.01.i.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !453
  store i32 %i.az, ptr %i.ay, align 8, !tbaa !453
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i2.i.i.i, i64 12 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.bc, ptr %i.ba, align 4, !tbaa !454
  store i8 0, ptr %i.bb, align 4, !tbaa !454
  %i.bd = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.be = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.be, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bf = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i2.i.i.i, i64 16 ; 2 uses
  %i.bi = add nuw i64 %.01.i.i.i, 2               ; 2 uses
  %niter21.next.1 = add i64 %niter21, 2           ; 2 uses
  %niter21.ncmp.1 = icmp eq i64 %niter21.next.1, %unroll_iter20
  br i1 %niter21.ncmp.1, label %.lr.ph.preheader.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !132

.lr.ph.preheader.i.i.i.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod17.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod17.not, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.val.i2.i.i.i.epil.init = phi ptr [ %i.ah, %.lr.ph.i.i.i.preheader ], [ %i.bh, %.lr.ph.preheader.i.i.i.unr-lcssa ] ; 2 uses
  %.01.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bi, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.01.i.i.i.epil.init ; 2 uses
  %i.bk = load i32, ptr %.val.i2.i.i.i.epil.init, align 8, !tbaa !453
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !453
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i2.i.i.i.epil.init, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.bn, ptr %i.bl, align 4, !tbaa !454
  store i8 0, ptr %i.bm, align 4, !tbaa !454
  %i.bo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bp = add nsw i32 %i.bo, 1                    ; 2 uses
  store i32 %i.bp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bq = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %.lcssa14 = phi i32 [ %i.be, %.lr.ph.preheader.i.i.i.unr-lcssa ], [ %i.bp, %.lr.ph.i.i.i.epil.preheader ]
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter22 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.lr.ph.i16.i.i.prol.loopexit, label %.lr.ph.i16.i.i.prol

.lr.ph.i16.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol
  %.02.i.i.i.prol = phi i64 [ %i.bt, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ %i.j, %.lr.ph.preheader.i.i.i ]
  %i.bs = phi i32 [ %i.bz, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.bt = add i64 %.02.i.i.i.prol, -1             ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !454, !range !189, !noundef !190
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.g, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol

bb.g:                                             ; preds = %.lr.ph.i16.i.i.prol
  %i.by = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.by, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol: ; preds = %bb.g, %.lr.ph.i16.i.i.prol
  %i.bz = phi i32 [ %i.bs, %.lr.ph.i16.i.i.prol ], [ %i.by, %bb.g ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter22
  br i1 %prol.iter.cmp.not, label %.lr.ph.i16.i.i.prol.loopexit, label %.lr.ph.i16.i.i.prol, !llvm.loop !5871

.lr.ph.i16.i.i.prol.loopexit:                     ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %.02.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.preheader.i.i.i ], [ %i.bt, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.bz, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ]
  %i.ca = icmp ult i64 %i.al, 3
  br i1 %i.ca, label %._crit_edge.i18.i.i, label %.lr.ph.i16.i.i

._crit_edge.i18.i.i:                              ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3, %.lr.ph.i16.i.i.prol.loopexit
  %i.cb = trunc i64 %i.j to i32
  %i.cc = sub i32 %.lcssa14, %i.cb
  store i32 %i.cc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE4SwapEPS6_.exit

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3
  %.02.i.i.i = phi i64 [ %i.cw, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3 ], [ %.02.i.i.i.unr, %.lr.ph.i16.i.i.prol.loopexit ] ; 4 uses
  %i.cd = phi i32 [ %i.dc, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3 ], [ %.unr, %.lr.ph.i16.i.i.prol.loopexit ] ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.ah, i64 %.02.i.i.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.h, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i16.i.i
  %i.ci = add nsw i32 %i.cd, -1                   ; 2 uses
  store i32 %i.ci, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i16.i.i
  %i.cj = phi i32 [ %i.cd, %.lr.ph.i16.i.i ], [ %i.ci, %bb.h ] ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.ah, i64 %.02.i.i.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 -12
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !454, !range !189, !noundef !190
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.i, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.co = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.co, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1: ; preds = %bb.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.cp = phi i32 [ %i.cj, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i ], [ %i.co, %bb.i ] ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.ah, i64 %.02.i.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 -20
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.j, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.cu = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2: ; preds = %bb.j, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.cv = phi i32 [ %i.cp, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1 ], [ %i.cu, %bb.j ] ; 2 uses
  %i.cw = add i64 %.02.i.i.i, -4                  ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !454, !range !189, !noundef !190
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.k, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.db = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.db, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3: ; preds = %bb.k, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.dc = phi i32 [ %i.cv, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2 ], [ %i.db, %bb.k ]
  %.not.i17.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i17.i.i.3, label %._crit_edge.i18.i.i, label %.lr.ph.i16.i.i, !llvm.loop !133

.thread42.i:                                      ; preds = %bb.e, %bb.c
  %.val21.i = phi i64 [ %.val18.i, %bb.e ], [ %.val17.i, %bb.c ] ; 3 uses
  %.041.i = phi ptr [ %0, %bb.e ], [ %1, %bb.c ]  ; 7 uses
  %.0.i = phi ptr [ %1, %bb.e ], [ %0, %bb.c ]    ; 2 uses
  %i.dd = getelementptr i8, ptr %.0.i, i64 8      ; 4 uses
  %.val19.i = load ptr, ptr %i.dd, align 8, !tbaa !198
  %i.de = getelementptr i8, ptr %.0.i, i64 16
  %.val23.i = load i64, ptr %i.de, align 8, !tbaa !198
  %i.df = getelementptr inbounds nuw i8, ptr %.041.i, i64 8 ; 3 uses
  %i.dg = lshr i64 %.val21.i, 1                   ; 7 uses
  switch i64 %i.dg, label %.lr.ph.i.i.preheader.new [
    i64 0, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_120NonSwappableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i
    i64 1, label %.lr.ph.i.i.epil.preheader
  ]

.lr.ph.i.i.preheader.new:                         ; preds = %.thread42.i
  %unroll_iter28 = and i64 %i.dg, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.val.i2.i.i = phi ptr [ %i.df, %.lr.ph.i.i.preheader.new ], [ %i.eb, %.lr.ph.i.i ] ; 5 uses
  %.01.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ec, %.lr.ph.i.i ] ; 3 uses
  %niter29 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter29.next.1, %.lr.ph.i.i ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.01.i.i ; 2 uses
  %i.di = load i32, ptr %.val.i2.i.i, align 8, !tbaa !453
  store i32 %i.di, ptr %i.dh, align 8, !tbaa !453
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 4 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.dl, ptr %i.dj, align 4, !tbaa !454
  store i8 0, ptr %i.dk, align 4, !tbaa !454
  %i.dm = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.do = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.01.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.dq, align 8, !tbaa !453
  store i32 %i.dt, ptr %i.ds, align 8, !tbaa !453
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 12 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.dw, ptr %i.du, align 4, !tbaa !454
  store i8 0, ptr %i.dv, align 4, !tbaa !454
  %i.dx = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dy = add nsw i32 %i.dx, 1                    ; 2 uses
  store i32 %i.dy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dz = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i2.i.i, i64 16 ; 2 uses
  %i.ec = add nuw nsw i64 %.01.i.i, 2             ; 2 uses
  %niter29.next.1 = add i64 %niter29, 2           ; 2 uses
  %niter29.ncmp.1 = icmp eq i64 %niter29.next.1, %unroll_iter28
  br i1 %niter29.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !132

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %i.ed = and i64 %.val21.i, 2
  %lcmp.mod25.not = icmp eq i64 %i.ed, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.thread42.i, %.lr.ph.preheader.i.i.unr-lcssa
  %.val.i2.i.i.epil.init = phi ptr [ %i.df, %.thread42.i ], [ %i.eb, %.lr.ph.preheader.i.i.unr-lcssa ] ; 2 uses
  %.01.i.i.epil.init = phi i64 [ 0, %.thread42.i ], [ %i.ec, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.01.i.i.epil.init ; 2 uses
  %i.ef = load i32, ptr %.val.i2.i.i.epil.init, align 8, !tbaa !453
  store i32 %i.ef, ptr %i.ee, align 8, !tbaa !453
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i2.i.i.epil.init, i64 4 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.ei, ptr %i.eg, align 4, !tbaa !454
  store i8 0, ptr %i.eh, align 4, !tbaa !454
  %i.ej = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ek = add nsw i32 %i.ej, 1                    ; 2 uses
  store i32 %i.ek, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.el = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa = phi i32 [ %i.dy, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.ek, %.lr.ph.i.i.epil.preheader ]
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter30 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i25.i.prol.loopexit, label %.lr.ph.i25.i.prol

.lr.ph.i25.i.prol:                                ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol
  %.02.i.i.prol = phi i64 [ %i.eo, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %i.dg, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.en = phi i32 [ %i.eu, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.eo = add nsw i64 %.02.i.i.prol, -1           ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %.041.i, i64 %.02.i.i.prol
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !454, !range !189, !noundef !190
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.l, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol

bb.l:                                             ; preds = %.lr.ph.i25.i.prol
  %i.et = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.et, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol: ; preds = %bb.l, %.lr.ph.i25.i.prol
  %i.eu = phi i32 [ %i.en, %.lr.ph.i25.i.prol ], [ %i.et, %bb.l ] ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i25.i.prol.loopexit, label %.lr.ph.i25.i.prol, !llvm.loop !5872

.lr.ph.i25.i.prol.loopexit:                       ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol, %.lr.ph.preheader.i.i
  %.02.i.i.unr = phi i64 [ %i.dg, %.lr.ph.preheader.i.i ], [ %i.eo, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ]
  %.unr33 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.preheader.i.i ], [ %i.eu, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ]
  %i.ev = icmp ult i64 %.val21.i, 8
  br i1 %i.ev, label %._crit_edge.i27.i, label %.lr.ph.i25.i

._crit_edge.i27.i:                                ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3, %.lr.ph.i25.i.prol.loopexit
  %i.ew = trunc i64 %i.dg to i32
  %i.ex = sub i32 %.lcssa, %i.ew
  store i32 %i.ex, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_120NonSwappableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3
  %.02.i.i = phi i64 [ %i.fr, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3 ], [ %.02.i.i.unr, %.lr.ph.i25.i.prol.loopexit ] ; 5 uses
  %i.ey = phi i32 [ %i.fx, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3 ], [ %.unr33, %.lr.ph.i25.i.prol.loopexit ] ; 2 uses
  %i.ez = getelementptr [8 x i8], ptr %.041.i, i64 %.02.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i8, ptr %i.fa, align 4, !tbaa !454, !range !189, !noundef !190
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.m, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i25.i
  %i.fd = add nsw i32 %i.ey, -1                   ; 2 uses
  store i32 %i.fd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i: ; preds = %bb.m, %.lr.ph.i25.i
  %i.fe = phi i32 [ %i.ey, %.lr.ph.i25.i ], [ %i.fd, %bb.m ] ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %.041.i, i64 %.02.i.i
  %i.fg = getelementptr i8, ptr %i.ff, i64 -4
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !454, !range !189, !noundef !190
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.n, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i
  %i.fj = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.fj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1: ; preds = %bb.n, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i
  %i.fk = phi i32 [ %i.fe, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i ], [ %i.fj, %bb.n ] ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %.041.i, i64 %.02.i.i
  %i.fm = getelementptr i8, ptr %i.fl, i64 -12
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !454, !range !189, !noundef !190
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.o, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1
  %i.fp = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2: ; preds = %bb.o, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1
  %i.fq = phi i32 [ %i.fk, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1 ], [ %i.fp, %bb.o ] ; 2 uses
  %i.fr = add nsw i64 %.02.i.i, -4                ; 2 uses
  %i.fs = getelementptr [8 x i8], ptr %.041.i, i64 %.02.i.i
  %i.ft = getelementptr i8, ptr %i.fs, i64 -20
  %i.fu = load i8, ptr %i.ft, align 4, !tbaa !454, !range !189, !noundef !190
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.p, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2
  %i.fw = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3: ; preds = %bb.p, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2
  %i.fx = phi i32 [ %i.fq, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2 ], [ %i.fw, %bb.p ]
  %.not.i26.i.3 = icmp eq i64 %i.fr, 0
  br i1 %.not.i26.i.3, label %._crit_edge.i27.i, label %.lr.ph.i25.i, !llvm.loop !133

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_120NonSwappableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i: ; preds = %.thread42.i, %._crit_edge.i27.i
  store ptr %.val19.i, ptr %i.df, align 8, !tbaa !198
  %i.fy = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  store i64 %.val23.i, ptr %i.fy, align 8, !tbaa !198
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE4SwapEPS6_.exit

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE4SwapEPS6_.exit: ; preds = %bb.d, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE5SwapNENS6_26ElementwiseConstructPolicyEPS6_m.exit.i.i, %._crit_edge.i18.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_120NonSwappableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i
  %i.fz = load i64, ptr %0, align 8, !tbaa !197
  %i.ga = load i64, ptr %1, align 8, !tbaa !197
  store i64 %i.ga, ptr %0, align 8, !tbaa !197
  store i64 %i.fz, ptr %1, align 8, !tbaa !197
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_120NonSwappableInstanceELm2ESaIS4_EE4SwapEPS6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEEEEclIN4absl12lts_2026052613InlinedVectorINS3_20NonSwappableInstanceELm2ESaISE_EEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.8.val, ptr %.16.val, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %7 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %11 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %12 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %13 = alloca %"class.testing::Matcher.1399", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %15 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5918)
  %i.f = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #41, !noalias !5919 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal16PointwiseMatcherIN12_GLOBAL__N_115HasValueMatcherESt6vectorIiSaIiEEE4ImplIRKN4absl12lts_2026052613InlinedVectorINS2_20NonSwappableInstanceELm2ESaISC_EEEEE, i64 16), ptr %i.f, align 8, !tbaa !169, !noalias !5919
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5924)
  %i.h = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #41
          to label %.noexc.i.i.i.i.i unwind label %bb.g, !noalias !5919 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_115HasValueMatcher10gmock_ImplISt5tupleIJRKNS_20NonSwappableInstanceERKiEEEE, i64 16), ptr %i.h, align 8, !tbaa !169, !noalias !5925
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseISt5tupleIJRKN12_GLOBAL__N_120NonSwappableInstanceERKiEEE9GetVTableINSA_11ValuePolicyIPKNS_16MatcherInterfaceIRKS9_EELb1EEEEEPKNSA_6VTableEvE7kVTable, ptr %i.i, align 8, !tbaa !729, !alias.scope !5926, !noalias !5919
  %i.j = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc2.i.i.i.i.i unwind label %bb.g, !noalias !5919 ; 3 uses

.noexc2.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 1, ptr %i.j, align 4, !tbaa !248, !noalias !5925
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = ptrtoint ptr %i.h to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !731, !noalias !5925
  store ptr %i.j, ptr %i.k, align 8, !tbaa !198, !alias.scope !5926, !noalias !5919
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherISt5tupleIJRKN12_GLOBAL__N_120NonSwappableInstanceERKiEEEE, i64 16), ptr %i.g, align 8, !tbaa !169, !alias.scope !5926, !noalias !5919
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.o = ptrtoint ptr %.16.val to i64
  %i.p = ptrtoint ptr %.8.val to i64
  %i.q = sub i64 %i.o, %i.p                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !5919
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.16.val, %.8.val
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc2.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = getelementptr inbounds i8, ptr null, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_4SwapIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv:bb.a
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gj = add nsw i32 %i.gi, -1
  store i32 %i.gj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gk = load i8, ptr %i.aa, align 4, !tbaa !454, !range !189, !noundef !190
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.x, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit142

bb.x:                                             ; preds = %bb.w
  %i.gm = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.gn = add nsw i32 %i.gm, -1
  store i32 %i.gn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit142

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit142: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %bb.jm

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc133, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.go = load i8, ptr %34, align 8, !tbaa !220, !range !189, !noundef !190
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ai, label %bb.z

bb.y:                                             ; preds = %bb.q, %bb.p
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body347

.body347:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.y
  %eh.lpad-body348 = phi { ptr, i32 } [ %i.gq, %bb.y ], [ %.pn.i342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.bm

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.gr = load ptr, ptr %i.ad, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %bb.aa
  %i.gt = phi ptr [ %i.gs, %bb.ab ], [ @.str.216, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1043, ptr noundef %i.gt)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  %i.gu = load ptr, ptr %35, align 8, !tbaa !223  ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i143, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ad
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !169
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit146

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ha, %bb.ag ], [ %i.gz, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  %i.hb = load ptr, ptr %35, align 8, !tbaa !223  ; 3 uses
  %.not.i.i144 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i144, label %_ZN7testing7MessageD2Ev.exit146, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ah
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !169
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(128) %i.hb) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit146

_ZN7testing7MessageD2Ev.exit146:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, %bb.ah, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.gy, %bb.ae ], [ %.pn, %bb.ah ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #36
  br label %bb.bm

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.hf = load ptr, ptr %i.ad, align 8, !tbaa !221 ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i147, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !195 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !198
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  %i.hl = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211 ; 6 uses
  %i.hm = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 4 uses
  %i.hn = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !211 ; 6 uses
  %i.ho = load i64, ptr %30, align 8, !tbaa !197  ; 6 uses
  %i.hp = trunc i64 %i.ho to i1
  %i.hq = load i64, ptr %31, align 8, !tbaa !197  ; 6 uses
  %i.hr = trunc i64 %i.hq to i1                   ; 2 uses
  br i1 %i.hp, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  br i1 %i.hr, label %bb.al, label %.thread33.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep, i64 16, i1 false), !tbaa.struct !6140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep539, i64 16, i1 false), !tbaa.struct !6140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep539, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.bg

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  br i1 %i.hr, label %.thread33.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hs = icmp ugt i64 %i.ho, %i.hq               ; 2 uses
  %i.ht = call i64 @llvm.umin.i64(i64 %i.ho, i64 %i.hq) ; 3 uses
  %i.hu = lshr exact i64 %i.ht, 1                 ; 5 uses
  %i.hv = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hq)
  %i.hw = lshr exact i64 %i.hv, 1                 ; 3 uses
  %i.hx = sub nsw i64 %i.hw, %i.hu                ; 8 uses
  %.idx.i.i.i = shl i64 %i.ht, 2                  ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.032.i.sroa.gep, i64 %.idx.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ht, 0
  br i1 %.not8.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.an
  %i.hz = add i64 %.idx.i.i.i, -8                 ; 2 uses
  %i.ia = and i64 %i.hz, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ia, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ib = load i32, ptr %.032.i.sroa.gep, align 8, !tbaa !211
  %i.ic = load i32, ptr %.010.i.i.i.i.prol, align 8, !tbaa !211
  store i32 %i.ic, ptr %.032.i.sroa.gep, align 8, !tbaa !211
  store i32 %i.ib, ptr %.010.i.i.i.i.prol, align 8, !tbaa !211
  %i.id = load i8, ptr %i.bl, align 4, !tbaa !696, !range !189, !noundef !190
  %i.ie = load i8, ptr %i.bm, align 4, !tbaa !696, !range !189, !noundef !190
  store i8 %i.ie, ptr %i.bl, align 4, !tbaa !696
  store i8 %i.id, ptr %i.bm, align 4, !tbaa !696
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.010.i.pn.i.i.i.unr = phi ptr [ %31, %.lr.ph.i.i.i.i.preheader ], [ %.010.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %.032.i.sroa.gep, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.prol ]
  %i.if = icmp eq i64 %i.hz, 0
  br i1 %i.if, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.010.i.pn.i.i.i = phi ptr [ %.010.i.i.i.i.1, %.lr.ph.i.i.i.i ], [ %.010.i.pn.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.010.i.i.i.i = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 8 ; 2 uses
  %i.ig = load i32, ptr %.079.i.i.i.i, align 8, !tbaa !211
  %i.ih = load i32, ptr %.010.i.i.i.i, align 8, !tbaa !211
  store i32 %i.ih, ptr %.079.i.i.i.i, align 8, !tbaa !211
  store i32 %i.ig, ptr %.010.i.i.i.i, align 8, !tbaa !211
  %i.ii = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 12 ; 2 uses
  %i.ik = load i8, ptr %i.ii, align 4, !tbaa !696, !range !189, !noundef !190
  %i.il = load i8, ptr %i.ij, align 4, !tbaa !696, !range !189, !noundef !190
  store i8 %i.il, ptr %i.ii, align 4, !tbaa !696
  store i8 %i.ik, ptr %i.ij, align 4, !tbaa !696
  %i.im = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %.010.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 16 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !211
  %i.io = load i32, ptr %.010.i.i.i.i.1, align 8, !tbaa !211
  store i32 %i.io, ptr %i.im, align 8, !tbaa !211
  store i32 %i.in, ptr %.010.i.i.i.i.1, align 8, !tbaa !211
  %i.ip = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 12 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 20 ; 2 uses
  %i.ir = load i8, ptr %i.ip, align 4, !tbaa !696, !range !189, !noundef !190
  %i.is = load i8, ptr %i.iq, align 4, !tbaa !696, !range !189, !noundef !190
  store i8 %i.is, ptr %i.ip, align 4, !tbaa !696
  store i8 %i.ir, ptr %i.iq, align 4, !tbaa !696
  %i.it = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.it, %i.hy
  br i1 %.not.i.i.i.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !6100

_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %i.iu = add i32 %i.hn, 1
  %i.iv = add i64 %.idx.i.i.i, 34359738360
  %i.iw = lshr exact i64 %i.iv, 3
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = add i32 %i.iu, %i.ix
  store i32 %i.iy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i

_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit, %bb.an
  %spec.select.i.i.sroa.sel = select i1 %i.hs, ptr %.032.i.sroa.gep, ptr %.032.i.sroa.gep539
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.sroa.sel, i64 %i.hu ; 7 uses
  %spec.select24.i.i.sroa.sel = select i1 %i.hs, ptr %.032.i.sroa.gep539, ptr %.032.i.sroa.gep
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %spec.select24.i.i.sroa.sel, i64 %i.hu ; 3 uses
  %.not.i.i.i349 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i.i349, label %bb.bg, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %i.jb = xor i64 %i.hu, -1
  %i.jc = add nsw i64 %i.hw, %i.jb                ; 2 uses
  %xtraiter1600 = and i64 %i.hx, 1
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.hx, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %.lr.ph.i.i.i.preheader.new
  %i.je = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.i.i.i.preheader.new ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.1, %bb.aq ] ; 2 uses
  %i.jf = phi ptr [ %i.iz, %.lr.ph.i.i.i.preheader.new ], [ %i.jw, %bb.aq ] ; 5 uses
  %.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.jx, %bb.aq ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %bb.aq ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.012.i.i.i ; 2 uses
  %i.jh = load i32, ptr %i.jf, align 8, !tbaa !453
  store i32 %i.jh, ptr %i.jg, align 8, !tbaa !453
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jk = load i8, ptr %i.jj, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.jk, ptr %i.ji, align 4, !tbaa !454
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.ao, label %.lr.ph.i.i.i.1

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.jm = add nsw i32 %i.je, 1                    ; 2 uses
  store i32 %i.jm, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.ao, %.lr.ph.i.i.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i = phi i32 [ %i.jm, %bb.ao ], [ %i.je, %.lr.ph.i.i.i ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.012.i.i.i ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i32, ptr %i.jn, align 8, !tbaa !453
  store i32 %i.jq, ptr %i.jp, align 8, !tbaa !453
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.js = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jt = load i8, ptr %i.js, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.jt, ptr %i.jr, align 4, !tbaa !454
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i.i.1
  %i.jv = add nsw i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i, 1 ; 2 uses
  store i32 %i.jv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.i.i.1
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.1 = phi i32 [ %i.jv, %bb.ap ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.jx = add nuw i64 %.012.i.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i9.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !136

.lr.ph.preheader.i9.i.i.unr-lcssa:                ; preds = %bb.aq
  %lcmp.mod1603.not = icmp eq i64 %xtraiter1600, 0
  br i1 %lcmp.mod1603.not, label %.lr.ph.preheader.i9.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i9.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.epil.init = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.i.i.i.preheader ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.1, %.lr.ph.preheader.i9.i.i.unr-lcssa ] ; 2 uses
  %.epil.init1602 = phi ptr [ %i.iz, %.lr.ph.i.i.i.preheader ], [ %i.jw, %.lr.ph.preheader.i9.i.i.unr-lcssa ] ; 2 uses
  %.012.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.jx, %.lr.ph.preheader.i9.i.i.unr-lcssa ]
  %lcmp.mod1605 = trunc i64 %i.hx to i1
  call void @llvm.assume(i1 %lcmp.mod1605)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.012.i.i.i.epil.init ; 2 uses
  %i.jz = load i32, ptr %.epil.init1602, align 8, !tbaa !453
  store i32 %i.jz, ptr %i.jy, align 8, !tbaa !453
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.epil.init1602, i64 4
  %i.kc = load i8, ptr %i.kb, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.kc, ptr %i.ka, align 4, !tbaa !454
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.ar, label %.lr.ph.preheader.i9.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.ke = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.ke, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.preheader.i9.i.i

.lr.ph.preheader.i9.i.i:                          ; preds = %.lr.ph.i.i.i.epil.preheader, %bb.ar, %.lr.ph.preheader.i9.i.i.unr-lcssa
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.lcssa = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.1, %.lr.ph.preheader.i9.i.i.unr-lcssa ], [ %i.ke, %bb.ar ], [ %.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %i.kf = trunc i64 %i.hw to i32                  ; 2 uses
  %i.kg = add i32 %i.hm, %i.kf
  %i.kh = trunc i64 %i.hu to i32                  ; 2 uses
  %i.ki = sub i32 %i.kg, %i.kh
  %i.kj = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %i.kf
  %i.kk = sub i32 %i.kj, %i.kh                    ; 2 uses
  store i32 %i.kk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.ki, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %xtraiter1606 = and i64 %i.hx, 3                ; 2 uses
  %lcmp.mod1607.not = icmp eq i64 %xtraiter1606, 0
  br i1 %lcmp.mod1607.not, label %.lr.ph.i10.i.i.prol.loopexit, label %.lr.ph.i10.i.i.prol

.lr.ph.i10.i.i.prol:                              ; preds = %.lr.ph.preheader.i9.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol
  %.06.i.i.i.prol = phi i64 [ %i.km, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ %i.hx, %.lr.ph.preheader.i9.i.i ]
  %i.kl = phi i32 [ %i.ks, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.lcssa, %.lr.ph.preheader.i9.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ 0, %.lr.ph.preheader.i9.i.i ]
  %i.km = add i64 %.06.i.i.i.prol, -1             ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load i8, ptr %i.ko, align 4, !tbaa !454, !range !189, !noundef !190
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.as, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol

bb.as:                                            ; preds = %.lr.ph.i10.i.i.prol
  %i.kr = add nsw i32 %i.kl, -1                   ; 2 uses
  store i32 %i.kr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol: ; preds = %bb.as, %.lr.ph.i10.i.i.prol
  %i.ks = phi i32 [ %i.kl, %.lr.ph.i10.i.i.prol ], [ %i.kr, %bb.as ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1606
  br i1 %prol.iter.cmp.not, label %.lr.ph.i10.i.i.prol.loopexit, label %.lr.ph.i10.i.i.prol, !llvm.loop !6101

.lr.ph.i10.i.i.prol.loopexit:                     ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol, %.lr.ph.preheader.i9.i.i
  %.06.i.i.i.unr = phi i64 [ %i.hx, %.lr.ph.preheader.i9.i.i ], [ %i.km, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ]
  %.unr1608 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.lcssa, %.lr.ph.preheader.i9.i.i ], [ %i.ks, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ]
  %i.kt = icmp ult i64 %i.jc, 3
  br i1 %i.kt, label %._crit_edge.i.i.i, label %.lr.ph.i10.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3, %.lr.ph.i10.i.i.prol.loopexit
  %i.ku = trunc i64 %i.hx to i32
  %i.kv = sub i32 %i.kk, %i.ku
  store i32 %i.kv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %bb.bg

.lr.ph.i10.i.i:                                   ; preds = %.lr.ph.i10.i.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3
  %.06.i.i.i = phi i64 [ %i.lp, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3 ], [ %.06.i.i.i.unr, %.lr.ph.i10.i.i.prol.loopexit ] ; 4 uses
  %i.kw = phi i32 [ %i.lv, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3 ], [ %.unr1608, %.lr.ph.i10.i.i.prol.loopexit ] ; 2 uses
  %i.kx = getelementptr [8 x i8], ptr %i.iz, i64 %.06.i.i.i
  %i.ky = getelementptr i8, ptr %i.kx, i64 -4
  %i.kz = load i8, ptr %i.ky, align 4, !tbaa !454, !range !189, !noundef !190
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.at, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i

bb.at:                                            ; preds = %.lr.ph.i10.i.i
  %i.lb = add nsw i32 %i.kw, -1                   ; 2 uses
  store i32 %i.lb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i: ; preds = %bb.at, %.lr.ph.i10.i.i
  %i.lc = phi i32 [ %i.kw, %.lr.ph.i10.i.i ], [ %i.lb, %bb.at ] ; 2 uses
  %i.ld = getelementptr [8 x i8], ptr %i.iz, i64 %.06.i.i.i
  %i.le = getelementptr i8, ptr %i.ld, i64 -12
  %i.lf = load i8, ptr %i.le, align 4, !tbaa !454, !range !189, !noundef !190
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.au, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

bb.au:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.lh = add nsw i32 %i.lc, -1                   ; 2 uses
  store i32 %i.lh, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1: ; preds = %bb.au, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.li = phi i32 [ %i.lc, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i ], [ %i.lh, %bb.au ] ; 2 uses
  %i.lj = getelementptr [8 x i8], ptr %i.iz, i64 %.06.i.i.i
  %i.lk = getelementptr i8, ptr %i.lj, i64 -20
  %i.ll = load i8, ptr %i.lk, align 4, !tbaa !454, !range !189, !noundef !190
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.av, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

bb.av:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.ln = add nsw i32 %i.li, -1                   ; 2 uses
  store i32 %i.ln, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2: ; preds = %bb.av, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.lo = phi i32 [ %i.li, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1 ], [ %i.ln, %bb.av ] ; 2 uses
  %i.lp = add i64 %.06.i.i.i, -4                  ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !454, !range !189, !noundef !190
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.aw, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

bb.aw:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.lu = add nsw i32 %i.lo, -1                   ; 2 uses
  store i32 %i.lu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3: ; preds = %bb.aw, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.lv = phi i32 [ %i.lo, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2 ], [ %i.lu, %bb.aw ]
  %.not.i11.i.i.3 = icmp eq i64 %i.lp, 0
  br i1 %.not.i11.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i10.i.i, !llvm.loop !73

.thread33.i:                                      ; preds = %bb.am, %bb.ak
  %i.lw = phi i64 [ %i.ho, %bb.am ], [ %i.hq, %bb.ak ] ; 3 uses
  %.032.i.sroa.phi = phi ptr [ %.032.i.sroa.gep, %bb.am ], [ %.032.i.sroa.gep539, %bb.ak ] ; 3 uses
  %.032.i.sroa.phi540 = phi ptr [ %.032.i.sroa.gep541, %bb.am ], [ %.032.i.sroa.gep542, %bb.ak ]
  %.032.i = phi ptr [ %30, %bb.am ], [ %31, %bb.ak ] ; 5 uses
  %.0.i.sroa.phi = phi ptr [ %.032.i.sroa.gep539, %bb.am ], [ %.032.i.sroa.gep, %bb.ak ] ; 4 uses
  %.0.i.sroa.phi544 = phi ptr [ %.032.i.sroa.gep542, %bb.am ], [ %.032.i.sroa.gep541, %bb.ak ]
  %i.lx = load ptr, ptr %.0.i.sroa.phi, align 8, !tbaa !198
  %i.ly = load i64, ptr %.0.i.sroa.phi544, align 8, !tbaa !198
  %i.lz = lshr i64 %i.lw, 1                       ; 8 uses
  %.not.i.i350 = icmp eq i64 %i.lz, 0
  br i1 %.not.i.i350, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.thread33.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted732 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted734 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %i.ma = icmp eq i64 %i.lz, 1
  br i1 %i.ma, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter1617 = and i64 %i.lz, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.az, %.lr.ph.i.i.preheader.new
  %i.mb = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted734, %.lr.ph.i.i.preheader.new ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.1, %bb.az ] ; 2 uses
  %i.mc = phi ptr [ %.032.i.sroa.phi, %.lr.ph.i.i.preheader.new ], [ %i.mt, %bb.az ] ; 5 uses
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.mu, %bb.az ] ; 3 uses
  %niter1618 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter1618.next.1, %bb.az ]
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.0.i.sroa.phi, i64 %.012.i.i ; 2 uses
  %i.me = load i32, ptr %i.mc, align 4, !tbaa !453
  store i32 %i.me, ptr %i.md, align 4, !tbaa !453
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mh = load i8, ptr %i.mg, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.mh, ptr %i.mf, align 4, !tbaa !454
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.ax, label %.lr.ph.i.i.1

bb.ax:                                            ; preds = %.lr.ph.i.i
  %i.mj = add nsw i32 %i.mb, 1                    ; 2 uses
  store i32 %i.mj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.ax, %.lr.ph.i.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i = phi i32 [ %i.mj, %bb.ax ], [ %i.mb, %.lr.ph.i.i ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.0.i.sroa.phi, i64 %.012.i.i ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load i32, ptr %i.mk, align 4, !tbaa !453
  store i32 %i.mn, ptr %i.mm, align 4, !tbaa !453
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  %i.mq = load i8, ptr %i.mp, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.mq, ptr %i.mo, align 4, !tbaa !454
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i.i.1
  %i.ms = add nsw i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, 1 ; 2 uses
  store i32 %i.ms, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i.1
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.1 = phi i32 [ %i.ms, %bb.ay ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.i.i.1 ] ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.mu = add nuw nsw i64 %.012.i.i, 2            ; 2 uses
  %niter1618.next.1 = add i64 %niter1618, 2       ; 2 uses
  %niter1618.ncmp.1 = icmp eq i64 %niter1618.next.1, %unroll_iter1617
  br i1 %niter1618.ncmp.1, label %.lr.ph.preheader.i15.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !136

.lr.ph.preheader.i15.i.unr-lcssa:                 ; preds = %bb.az
  %i.mv = and i64 %i.lw, 2
  %lcmp.mod1614.not = icmp eq i64 %i.mv, 0
  br i1 %lcmp.mod1614.not, label %.lr.ph.preheader.i15.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i15.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init1611 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted734, %.lr.ph.i.i.preheader ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.1, %.lr.ph.preheader.i15.i.unr-lcssa ] ; 2 uses
  %.epil.init1613 = phi ptr [ %.032.i.sroa.phi, %.lr.ph.i.i.preheader ], [ %i.mt, %.lr.ph.preheader.i15.i.unr-lcssa ] ; 2 uses
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.mu, %.lr.ph.preheader.i15.i.unr-lcssa ]
  %lcmp.mod1616 = trunc i64 %i.lz to i1
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_4SwapIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gf = add nsw i32 %i.ge, -1
  store i32 %i.gf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gg = load i8, ptr %i.aa, align 4, !tbaa !454, !range !189, !noundef !190
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.x, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit136

bb.x:                                             ; preds = %bb.w
  %i.gi = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.gj = add nsw i32 %i.gi, -1
  store i32 %i.gj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit136

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit136: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  br label %bb.je

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc128, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.gk = load i8, ptr %34, align 8, !tbaa !220, !range !189, !noundef !190
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ai, label %bb.z

bb.y:                                             ; preds = %bb.q, %bb.p
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body341

.body341:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.y
  %eh.lpad-body342 = phi { ptr, i32 } [ %i.gm, %bb.y ], [ %.pn.i336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.be

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.gn = load ptr, ptr %i.ad, align 8, !tbaa !221 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %bb.aa
  %i.gp = phi ptr [ %i.go, %bb.ab ], [ @.str.216, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1043, ptr noundef %i.gp)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  %i.gq = load ptr, ptr %35, align 8, !tbaa !223  ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i137, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ad
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !169
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit140

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.gw, %bb.ag ], [ %i.gv, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  %i.gx = load ptr, ptr %35, align 8, !tbaa !223  ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i138, label %_ZN7testing7MessageD2Ev.exit140, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139: ; preds = %bb.ah
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !169
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(128) %i.gx) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit140

_ZN7testing7MessageD2Ev.exit140:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139, %bb.ah, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.gu, %bb.ae ], [ %.pn, %bb.ah ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #36
  br label %bb.be

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.hb = load ptr, ptr %i.ad, align 8, !tbaa !221 ; 4 uses
  %.not.i.i141 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i141, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !195 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !198
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  %i.hh = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211 ; 8 uses
  %i.hi = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 2 uses
  %i.hj = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !211 ; 6 uses
  %i.hk = load i64, ptr %30, align 8, !tbaa !197  ; 6 uses
  %i.hl = trunc i64 %i.hk to i1
  %i.hm = load i64, ptr %31, align 8, !tbaa !197  ; 6 uses
  %i.hn = trunc i64 %i.hm to i1                   ; 2 uses
  br i1 %i.hl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  br i1 %i.hn, label %bb.al, label %.thread33.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep, i64 16, i1 false), !tbaa.struct !6208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep533, i64 16, i1 false), !tbaa.struct !6208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.032.i.sroa.gep533, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !6208
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ay

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  br i1 %i.hn, label %.thread33.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ho = icmp ugt i64 %i.hk, %i.hm               ; 2 uses
  %i.hp = call i64 @llvm.umin.i64(i64 %i.hk, i64 %i.hm) ; 3 uses
  %i.hq = lshr exact i64 %i.hp, 1                 ; 5 uses
  %i.hr = call i64 @llvm.umax.i64(i64 %i.hk, i64 %i.hm)
  %i.hs = lshr exact i64 %i.hr, 1                 ; 3 uses
  %i.ht = sub nsw i64 %i.hs, %i.hq                ; 8 uses
  %.idx.i.i.i = shl i64 %i.hp, 2                  ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.032.i.sroa.gep, i64 %.idx.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not8.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.an
  %i.hv = add i64 %.idx.i.i.i, -8                 ; 2 uses
  %i.hw = and i64 %i.hv, 8
  %lcmp.mod.not.not = icmp eq i64 %i.hw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.hx = load i32, ptr %.032.i.sroa.gep, align 8, !tbaa !211
  %i.hy = load i32, ptr %.010.i.i.i.i.prol, align 8, !tbaa !211
  store i32 %i.hy, ptr %.032.i.sroa.gep, align 8, !tbaa !211
  store i32 %i.hx, ptr %.010.i.i.i.i.prol, align 8, !tbaa !211
  %i.hz = load i8, ptr %i.bl, align 4, !tbaa !696, !range !189, !noundef !190
  %i.ia = load i8, ptr %i.bm, align 4, !tbaa !696, !range !189, !noundef !190
  store i8 %i.ia, ptr %i.bl, align 4, !tbaa !696
  store i8 %i.hz, ptr %i.bm, align 4, !tbaa !696
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.010.i.pn.i.i.i.unr = phi ptr [ %31, %.lr.ph.i.i.i.i.preheader ], [ %.010.i.i.i.i.prol, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %.032.i.sroa.gep, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.prol ]
  %i.ib = icmp eq i64 %i.hv, 0
  br i1 %i.ib, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.010.i.pn.i.i.i = phi ptr [ %.010.i.i.i.i.1, %.lr.ph.i.i.i.i ], [ %.010.i.pn.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.010.i.i.i.i = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 8 ; 2 uses
  %i.ic = load i32, ptr %.079.i.i.i.i, align 8, !tbaa !211
  %i.id = load i32, ptr %.010.i.i.i.i, align 8, !tbaa !211
  store i32 %i.id, ptr %.079.i.i.i.i, align 8, !tbaa !211
  store i32 %i.ic, ptr %.010.i.i.i.i, align 8, !tbaa !211
  %i.ie = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 12 ; 2 uses
  %i.ig = load i8, ptr %i.ie, align 4, !tbaa !696, !range !189, !noundef !190
  %i.ih = load i8, ptr %i.if, align 4, !tbaa !696, !range !189, !noundef !190
  store i8 %i.ih, ptr %i.ie, align 4, !tbaa !696
  store i8 %i.ig, ptr %i.if, align 4, !tbaa !696
  %i.ii = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %.010.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 16 ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !211
  %i.ik = load i32, ptr %.010.i.i.i.i.1, align 8, !tbaa !211
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !211
  store i32 %i.ij, ptr %.010.i.i.i.i.1, align 8, !tbaa !211
  %i.il = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 12 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.010.i.pn.i.i.i, i64 20 ; 2 uses
  %i.in = load i8, ptr %i.il, align 4, !tbaa !696, !range !189, !noundef !190
  %i.io = load i8, ptr %i.im, align 4, !tbaa !696, !range !189, !noundef !190
  store i8 %i.io, ptr %i.il, align 4, !tbaa !696
  store i8 %i.in, ptr %i.im, align 4, !tbaa !696
  %i.ip = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.ip, %i.hu
  br i1 %.not.i.i.i.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !6168

_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %i.iq = add i32 %i.hj, 1
  %i.ir = add i64 %.idx.i.i.i, 34359738360
  %i.is = lshr exact i64 %i.ir, 3
  %i.it = trunc i64 %i.is to i32
  %i.iu = add i32 %i.iq, %i.it
  store i32 %i.iu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i

_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i.loopexit, %bb.an
  %spec.select.i.i.sroa.sel = select i1 %i.ho, ptr %.032.i.sroa.gep, ptr %.032.i.sroa.gep533
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.sroa.sel, i64 %i.hq ; 7 uses
  %spec.select24.i.i.sroa.sel = select i1 %i.ho, ptr %.032.i.sroa.gep533, ptr %.032.i.sroa.gep
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %spec.select24.i.i.sroa.sel, i64 %i.hq ; 3 uses
  %.not.i.i.i343 = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i343, label %bb.ay, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE5SwapNENS6_21ElementwiseSwapPolicyEPS6_m.exit.i.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ix = xor i64 %i.hq, -1
  %i.iy = add nsw i64 %i.hs, %i.ix                ; 2 uses
  %xtraiter1593 = and i64 %i.ht, 1
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ht, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %i.ja = phi ptr [ %i.iv, %.lr.ph.i.i.i.preheader.new ], [ %i.jn, %.lr.ph.i.i.i ] ; 5 uses
  %.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.jo, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.012.i.i.i ; 2 uses
  %i.jc = load i32, ptr %i.ja, align 8, !tbaa !453
  store i32 %i.jc, ptr %i.jb, align 8, !tbaa !453
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.jf, ptr %i.jd, align 4, !tbaa !454
  store i8 0, ptr %i.je, align 4, !tbaa !454
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.012.i.i.i ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load i32, ptr %i.jg, align 8, !tbaa !453
  store i32 %i.jj, ptr %i.ji, align 8, !tbaa !453
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 12 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.jm, ptr %i.jk, align 4, !tbaa !454
  store i8 0, ptr %i.jl, align 4, !tbaa !454
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %i.jo = add nuw i64 %.012.i.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !137

.lr.ph.preheader.i.i.i.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod1594.not = icmp eq i64 %xtraiter1593, 0
  br i1 %lcmp.mod1594.not, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.epil.init = phi ptr [ %i.iv, %.lr.ph.i.i.i.preheader ], [ %i.jn, %.lr.ph.preheader.i.i.i.unr-lcssa ] ; 2 uses
  %.012.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.jo, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod1595 = trunc i64 %i.ht to i1
  call void @llvm.assume(i1 %lcmp.mod1595)
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.012.i.i.i.epil.init ; 2 uses
  %i.jq = load i32, ptr %.epil.init, align 8, !tbaa !453
  store i32 %i.jq, ptr %i.jp, align 8, !tbaa !453
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.jt, ptr %i.jr, align 4, !tbaa !454
  store i8 0, ptr %i.js, align 4, !tbaa !454
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %i.ju = trunc i64 %i.hs to i32                  ; 2 uses
  %i.jv = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %i.ju
  %i.jw = trunc i64 %i.hq to i32                  ; 2 uses
  %i.jx = sub i32 %i.jv, %i.jw                    ; 2 uses
  %i.jy = add i32 %i.hh, %i.ju
  %i.jz = sub i32 %i.jy, %i.jw
  store i32 %i.jx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.jz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter1596 = and i64 %i.ht, 3                ; 2 uses
  %lcmp.mod1597.not = icmp eq i64 %xtraiter1596, 0
  br i1 %lcmp.mod1597.not, label %.lr.ph.i9.i.i.prol.loopexit, label %.lr.ph.i9.i.i.prol

.lr.ph.i9.i.i.prol:                               ; preds = %.lr.ph.preheader.i.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol
  %.06.i.i.i.prol = phi i64 [ %i.kb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ %i.ht, %.lr.ph.preheader.i.i.i ]
  %i.ka = phi i32 [ %i.kh, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.kb = add i64 %.06.i.i.i.prol, -1             ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = load i8, ptr %i.kd, align 4, !tbaa !454, !range !189, !noundef !190
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.ao, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol

bb.ao:                                            ; preds = %.lr.ph.i9.i.i.prol
  %i.kg = add nsw i32 %i.ka, -1                   ; 2 uses
  store i32 %i.kg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol: ; preds = %bb.ao, %.lr.ph.i9.i.i.prol
  %i.kh = phi i32 [ %i.ka, %.lr.ph.i9.i.i.prol ], [ %i.kg, %bb.ao ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1596
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.i.i.prol.loopexit, label %.lr.ph.i9.i.i.prol, !llvm.loop !6169

.lr.ph.i9.i.i.prol.loopexit:                      ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %.06.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph.preheader.i.i.i ], [ %i.kb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ]
  %.unr1598 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.kh, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.prol ]
  %i.ki = icmp ult i64 %i.iy, 3
  br i1 %i.ki, label %._crit_edge.i11.i.i, label %.lr.ph.i9.i.i

._crit_edge.i11.i.i:                              ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3, %.lr.ph.i9.i.i.prol.loopexit
  %i.kj = trunc i64 %i.ht to i32
  %i.kk = sub i32 %i.jx, %i.kj
  store i32 %i.kk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %bb.ay

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3
  %.06.i.i.i = phi i64 [ %i.le, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3 ], [ %.06.i.i.i.unr, %.lr.ph.i9.i.i.prol.loopexit ] ; 4 uses
  %i.kl = phi i32 [ %i.lk, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3 ], [ %.unr1598, %.lr.ph.i9.i.i.prol.loopexit ] ; 2 uses
  %i.km = getelementptr [8 x i8], ptr %i.iv, i64 %.06.i.i.i
  %i.kn = getelementptr i8, ptr %i.km, i64 -4
  %i.ko = load i8, ptr %i.kn, align 4, !tbaa !454, !range !189, !noundef !190
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.ap, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i

bb.ap:                                            ; preds = %.lr.ph.i9.i.i
  %i.kq = add nsw i32 %i.kl, -1                   ; 2 uses
  store i32 %i.kq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i: ; preds = %bb.ap, %.lr.ph.i9.i.i
  %i.kr = phi i32 [ %i.kl, %.lr.ph.i9.i.i ], [ %i.kq, %bb.ap ] ; 2 uses
  %i.ks = getelementptr [8 x i8], ptr %i.iv, i64 %.06.i.i.i
  %i.kt = getelementptr i8, ptr %i.ks, i64 -12
  %i.ku = load i8, ptr %i.kt, align 4, !tbaa !454, !range !189, !noundef !190
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.aq, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

bb.aq:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.kw = add nsw i32 %i.kr, -1                   ; 2 uses
  store i32 %i.kw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1: ; preds = %bb.aq, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i
  %i.kx = phi i32 [ %i.kr, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i ], [ %i.kw, %bb.aq ] ; 2 uses
  %i.ky = getelementptr [8 x i8], ptr %i.iv, i64 %.06.i.i.i
  %i.kz = getelementptr i8, ptr %i.ky, i64 -20
  %i.la = load i8, ptr %i.kz, align 4, !tbaa !454, !range !189, !noundef !190
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.ar, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.lc = add nsw i32 %i.kx, -1                   ; 2 uses
  store i32 %i.lc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2: ; preds = %bb.ar, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1
  %i.ld = phi i32 [ %i.kx, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.1 ], [ %i.lc, %bb.ar ] ; 2 uses
  %i.le = add i64 %.06.i.i.i, -4                  ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load i8, ptr %i.lg, align 4, !tbaa !454, !range !189, !noundef !190
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.as, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

bb.as:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.lj = add nsw i32 %i.ld, -1                   ; 2 uses
  store i32 %i.lj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.3: ; preds = %bb.as, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2
  %i.lk = phi i32 [ %i.ld, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.2 ], [ %i.lj, %bb.as ]
  %.not.i10.i.i.3 = icmp eq i64 %i.le, 0
  br i1 %.not.i10.i.i.3, label %._crit_edge.i11.i.i, label %.lr.ph.i9.i.i, !llvm.loop !87

.thread33.i:                                      ; preds = %bb.am, %bb.ak
  %i.ll = phi i64 [ %i.hk, %bb.am ], [ %i.hm, %bb.ak ] ; 3 uses
  %.032.i.sroa.phi = phi ptr [ %.032.i.sroa.gep, %bb.am ], [ %.032.i.sroa.gep533, %bb.ak ] ; 3 uses
  %.032.i.sroa.phi534 = phi ptr [ %.032.i.sroa.gep535, %bb.am ], [ %.032.i.sroa.gep536, %bb.ak ]
  %.032.i = phi ptr [ %30, %bb.am ], [ %31, %bb.ak ] ; 5 uses
  %.0.i.sroa.phi = phi ptr [ %.032.i.sroa.gep533, %bb.am ], [ %.032.i.sroa.gep, %bb.ak ] ; 4 uses
  %.0.i.sroa.phi538 = phi ptr [ %.032.i.sroa.gep536, %bb.am ], [ %.032.i.sroa.gep535, %bb.ak ]
  %i.lm = load ptr, ptr %.0.i.sroa.phi, align 8, !tbaa !198
  %i.ln = load i64, ptr %.0.i.sroa.phi538, align 8, !tbaa !198
  %i.lo = lshr i64 %i.ll, 1                       ; 8 uses
  %.not.i.i344 = icmp eq i64 %i.lo, 0
  br i1 %.not.i.i344, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.thread33.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted726 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 1
  br i1 %i.lp, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter1604 = and i64 %i.lo, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.lq = phi ptr [ %.032.i.sroa.phi, %.lr.ph.i.i.preheader.new ], [ %i.md, %.lr.ph.i.i ] ; 5 uses
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.me, %.lr.ph.i.i ] ; 3 uses
  %niter1605 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter1605.next.1, %.lr.ph.i.i ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.sroa.phi, i64 %.012.i.i ; 2 uses
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !453
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !453
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.lv, ptr %i.lt, align 4, !tbaa !454
  store i8 0, ptr %i.lu, align 4, !tbaa !454
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.sroa.phi, i64 %.012.i.i ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i32, ptr %i.lw, align 4, !tbaa !453
  store i32 %i.lz, ptr %i.ly, align 4, !tbaa !453
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 12 ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.mc, ptr %i.ma, align 4, !tbaa !454
  store i8 0, ptr %i.mb, align 4, !tbaa !454
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %i.me = add nuw nsw i64 %.012.i.i, 2            ; 2 uses
  %niter1605.next.1 = add i64 %niter1605, 2       ; 2 uses
  %niter1605.ncmp.1 = icmp eq i64 %niter1605.next.1, %unroll_iter1604
  br i1 %niter1605.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !137

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %i.mf = and i64 %i.ll, 2
  %lcmp.mod1602.not = icmp eq i64 %i.mf, 0
  br i1 %lcmp.mod1602.not, label %.lr.ph.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init1601 = phi ptr [ %.032.i.sroa.phi, %.lr.ph.i.i.preheader ], [ %i.md, %.lr.ph.preheader.i.i.unr-lcssa ] ; 2 uses
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.me, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod1603 = trunc i64 %i.lo to i1
  call void @llvm.assume(i1 %lcmp.mod1603)
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.sroa.phi, i64 %.012.i.i.epil.init ; 2 uses
  %i.mh = load i32, ptr %.epil.init1601, align 4, !tbaa !453
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !453
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mj = getelementptr inbounds nuw i8, ptr %.epil.init1601, i64 4 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.mk, ptr %i.mi, align 4, !tbaa !454
  store i8 0, ptr %i.mj, align 4, !tbaa !454
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.ml = trunc i64 %i.lo to i32                  ; 2 uses
  %i.mm = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted726, %i.ml
  %i.mn = add i32 %i.hh, %i.ml
  store i32 %i.mm, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.mn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter1606 = and i64 %i.lo, 3                ; 2 uses
  %lcmp.mod1607.not = icmp eq i64 %xtraiter1606, 0
  br i1 %lcmp.mod1607.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol
  %.06.i.i.prol = phi i64 [ %i.mp, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %i.lo, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.mo = phi i32 [ %i.mv, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter1608 = phi i64 [ %prol.iter1608.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_46CountConstructorsDestructorsOnMoveConstructionIN4absl12lts_2026052613test_internal20CopyableOnlyInstanceEE8TestBodyEv:bb.a
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !195 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !198
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.ds = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.dt = sub nsw i32 %i.ds, %i.be
  %i.du = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.dv = sub nsw i32 %i.du, %i.bd
  %i.dw = add nsw i32 %i.dv, %i.dt                ; 2 uses
  store i32 %i.dw, ptr %i.c, align 4, !tbaa !211
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !211, !noalias !6488
  %.not.i139 = icmp slt i32 %i.dw, %i.dx
  br i1 %.not.i139, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.196, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.306)
          to label %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ad

_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.dy = load i8, ptr %8, align 8, !tbaa !220, !range !189, !noundef !190
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.an, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %i.cx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.ho

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.ax

bb.ae:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.eb = load ptr, ptr %i.ak, align 8, !tbaa !221 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i142, label %_ZNK7testing15AssertionResult15failure_messageEv.exit143, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit143

_ZNK7testing15AssertionResult15failure_messageEv.exit143: ; preds = %bb.ag, %bb.af
  %i.ed = phi ptr [ %i.ec, %bb.ag ], [ @.str.216, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1248, ptr noundef %i.ed)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.ee = load ptr, ptr %9, align 8, !tbaa !223   ; 3 uses
  %.not.i.i144 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i144, label %_ZN7testing7MessageD2Ev.exit146, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.ai
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !169
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ee) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit146

_ZN7testing7MessageD2Ev.exit146:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.an

bb.aj:                                            ; preds = %bb.ae
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit149

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #36
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn65 = phi { ptr, i32 } [ %i.ek, %bb.al ], [ %i.ej, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.el = load ptr, ptr %9, align 8, !tbaa !223   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.el, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.am
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !169
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(128) %i.el) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, %bb.am, %bb.aj
  %.pn65.pn = phi { ptr, i32 } [ %i.ei, %bb.aj ], [ %.pn65, %bb.am ], [ %.pn65, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  br label %bb.ax

bb.an:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit146
  %i.ep = load ptr, ptr %i.ak, align 8, !tbaa !221 ; 4 uses
  %.not.i.i150 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i150, label %_ZN7testing15AssertionResultD2Ev.exit154, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !195 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151: ; preds = %bb.ao
  %i.et = load i64, ptr %i.er, align 8, !tbaa !198
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit154

_ZN7testing15AssertionResultD2Ev.exit154:         ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ev = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211 ; 5 uses
  store i32 %i.ev, ptr %i.z, align 4, !tbaa !700
  %i.ew = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 5 uses
  store i32 %i.ew, ptr %i.ab, align 4, !tbaa !701
  %i.ex = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !211 ; 3 uses
  store i32 %i.ex, ptr %i.ad, align 4, !tbaa !702
  %i.ey = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !211
  store i32 %i.ey, ptr %i.af, align 4, !tbaa !703
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.ez = load i64, ptr %3, align 8, !tbaa !197   ; 8 uses
  %i.fa = trunc i64 %i.ez to i1
  br i1 %i.fa, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit154
  %i.fb = load ptr, ptr %i.ai, align 8, !tbaa !198
  %i.fc = load i64, ptr %i.ag, align 8, !tbaa !198
  store ptr %i.fb, ptr %i.al, align 8, !tbaa !198
  store i64 %i.fc, ptr %i.am, align 8, !tbaa !198
  store i64 %i.ez, ptr %11, align 8, !tbaa !197
  store i64 0, ptr %3, align 8, !tbaa !197
  %.pre = lshr i64 %i.ez, 1
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS3_EEC2EOS5_.exit

bb.aq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit154
  %i.fd = lshr exact i64 %i.ez, 1                 ; 4 uses
  %.not.i.i155 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i155, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.aq
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %i.fe = icmp eq i64 %i.ez, 2
  br i1 %i.fe, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.fd, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.at, %.lr.ph.i.i.preheader.new
  %i.ff = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.i.i.preheader.new ], [ %i.fy, %bb.at ] ; 2 uses
  %.pn.i = phi ptr [ %3, %.lr.ph.i.i.preheader.new ], [ %i.fp, %bb.at ] ; 4 uses
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.fz, %bb.at ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %bb.at ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.012.i.i ; 2 uses
  %i.fi = load i32, ptr %i.fg, align 8, !tbaa !453
  store i32 %i.fi, ptr %i.fh, align 8, !tbaa !453
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  %i.fl = load i8, ptr %i.fk, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.fl, ptr %i.fj, align 4, !tbaa !454
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.ar, label %.lr.ph.i.i.1

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.fn = add nsw i32 %i.ff, 1                    ; 2 uses
  store i32 %i.fn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.ar, %.lr.ph.i.i
  %i.fo = phi i32 [ %i.fn, %bb.ar ], [ %i.ff, %.lr.ph.i.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.012.i.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i32, ptr %i.fp, align 8, !tbaa !453
  store i32 %i.fs, ptr %i.fr, align 8, !tbaa !453
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20
  %i.fv = load i8, ptr %i.fu, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.fv, ptr %i.ft, align 4, !tbaa !454
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.i.1
  %i.fx = add nsw i32 %i.fo, 1                    ; 2 uses
  store i32 %i.fx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.i.1
  %i.fy = phi i32 [ %i.fx, %bb.as ], [ %i.fo, %.lr.ph.i.i.1 ] ; 2 uses
  %i.fz = add nuw nsw i64 %.012.i.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !136

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.at
  %i.ga = and i64 %i.ez, 2
  %lcmp.mod.not = icmp eq i64 %i.ga, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted, %.lr.ph.i.i.preheader ], [ %i.fy, %.loopexit.i.loopexit.unr-lcssa ]
  %.pn.i.epil.init = phi ptr [ %3, %.lr.ph.i.i.preheader ], [ %i.fp, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.fz, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod478 = trunc i64 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod478)
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn.i.epil.init, i64 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.012.i.i.epil.init ; 2 uses
  %i.gd = load i32, ptr %i.gb, align 8, !tbaa !453
  store i32 %i.gd, ptr %i.gc, align 8, !tbaa !453
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn.i.epil.init, i64 12
  %i.gg = load i8, ptr %i.gf, align 4, !tbaa !454, !range !189, !noundef !190 ; 2 uses
  store i8 %i.gg, ptr %i.ge, align 4, !tbaa !454
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.au, label %.loopexit.i.loopexit

bb.au:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.gi = add nsw i32 %.epil.init, 1
  store i32 %i.gi, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %.loopexit.i.loopexit

.loopexit.i.loopexit:                             ; preds = %.lr.ph.i.i.epil.preheader, %bb.au, %.loopexit.i.loopexit.unr-lcssa
  %i.gj = trunc i64 %i.fd to i32                  ; 2 uses
  %i.gk = add i32 %i.ew, %i.gj
  %i.gl = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %i.gj
  store i32 %i.gl, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.gk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.aq
  store i64 %i.ez, ptr %11, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS3_EEC2EOS5_.exit

_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS3_EEC2EOS5_.exit: ; preds = %.loopexit.i, %bb.ap
  %.pre-phi = phi i64 [ %i.fd, %.loopexit.i ], [ %.pre, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i64 %.pre-phi, ptr %i.d, align 8, !tbaa !197
  %i.gm = load i32, ptr %i.a, align 4, !tbaa !211, !noalias !6489
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp eq i64 %.pre-phi, %i.gn
  br i1 %i.go, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS3_EEC2EOS5_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ay

bb.aw:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS3_EEC2EOS5_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.540, ptr noundef nonnull @.str.196, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ay

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.gp = load i8, ptr %12, align 8, !tbaa !220, !range !189, !noundef !190
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.bi, label %bb.az

bb.ax:                                            ; preds = %_ZN7testing7MessageD2Ev.exit149, %bb.ad
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %_ZN7testing7MessageD2Ev.exit149 ], [ %i.ea, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.ho

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.bn

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.gs = load ptr, ptr %i.an, align 8, !tbaa !221 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i158, label %_ZNK7testing15AssertionResult15failure_messageEv.exit159, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit159

_ZNK7testing15AssertionResult15failure_messageEv.exit159: ; preds = %bb.bb, %bb.ba
  %i.gu = phi ptr [ %i.gt, %bb.bb ], [ @.str.216, %bb.ba ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1252, ptr noundef %i.gu)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.gv = load ptr, ptr %13, align 8, !tbaa !223  ; 3 uses
  %.not.i.i160 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i160, label %_ZN7testing7MessageD2Ev.exit162, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bd
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !169
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(128) %i.gv) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit162

_ZN7testing7MessageD2Ev.exit162:                  ; preds = %bb.bd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.bi

bb.be:                                            ; preds = %bb.az
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit165

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit159
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #36
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn69 = phi { ptr, i32 } [ %i.hb, %bb.bg ], [ %i.ha, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.hc = load ptr, ptr %13, align 8, !tbaa !223  ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i163, label %_ZN7testing7MessageD2Ev.exit165, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164: ; preds = %bb.bh
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !169
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(128) %i.hc) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit165

_ZN7testing7MessageD2Ev.exit165:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164, %bb.bh, %bb.be
  %.pn69.pn = phi { ptr, i32 } [ %i.gz, %bb.be ], [ %.pn69, %bb.bh ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i164 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #36
  br label %bb.bn

bb.bi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit162
  %i.hg = load ptr, ptr %i.an, align 8, !tbaa !221 ; 4 uses
  %.not.i.i166 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i166, label %_ZN7testing15AssertionResultD2Ev.exit170, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !195 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167: ; preds = %bb.bj
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !198
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit170

_ZN7testing15AssertionResultD2Ev.exit170:         ; preds = %bb.bi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.hm = load i32, ptr %i.a, align 4, !tbaa !211 ; 3 uses
  %i.hn = icmp ugt i32 %i.hm, 8
  br i1 %i.hn, label %bb.bk, label %bb.ej

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit170
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.ho = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.hp = load i32, ptr %1, align 4, !tbaa !698   ; 2 uses
  %i.hq = sub nsw i32 %i.ho, %i.hp                ; 2 uses
  store i32 %i.hq, ptr %i.e, align 4, !tbaa !211
  %i.hr = icmp eq i32 %i.hq, %i.hm
  br i1 %i.hr, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit173 unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.522, ptr noundef nonnull @.str.196, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit173 unwind label %bb.bo

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit173: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.hs = load i8, ptr %15, align 8, !tbaa !220, !range !189, !noundef !190
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.by, label %bb.bp

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit165, %bb.ay
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit165 ], [ %i.gr, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.hn

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %bb.cc

end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_46CountConstructorsDestructorsOnMoveConstructionIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !195 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !198
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.y, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.dp = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.dq = sub nsw i32 %i.dp, %i.bd
  %i.dr = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.ds = sub nsw i32 %i.dr, %i.bc
  %i.dt = add nsw i32 %i.ds, %i.dq                ; 2 uses
  store i32 %i.dt, ptr %i.c, align 4, !tbaa !211
  %i.du = load i32, ptr %i.a, align 4, !tbaa !211, !noalias !6515
  %.not.i137 = icmp slt i32 %i.dt, %i.du
  br i1 %.not.i137, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ad

bb.ab:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.196, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull @.str.306)
          to label %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.ad

_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.dv = load i8, ptr %8, align 8, !tbaa !220, !range !189, !noundef !190
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.an, label %bb.ae

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit135, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit135 ], [ %i.cu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.hk

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.at

bb.ae:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.dy = load ptr, ptr %i.aj, align 8, !tbaa !221 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i140, label %_ZNK7testing15AssertionResult15failure_messageEv.exit141, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit141

_ZNK7testing15AssertionResult15failure_messageEv.exit141: ; preds = %bb.ag, %bb.af
  %i.ea = phi ptr [ %i.dz, %bb.ag ], [ @.str.216, %bb.af ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1248, ptr noundef %i.ea)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.eb = load ptr, ptr %9, align 8, !tbaa !223   ; 3 uses
  %.not.i.i142 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i142, label %_ZN7testing7MessageD2Ev.exit144, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143: ; preds = %bb.ai
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !169
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(128) %i.eb) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit144

_ZN7testing7MessageD2Ev.exit144:                  ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.an

bb.aj:                                            ; preds = %bb.ae
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit147

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #36
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn64 = phi { ptr, i32 } [ %i.eh, %bb.al ], [ %i.eg, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.ei = load ptr, ptr %9, align 8, !tbaa !223   ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.am
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !169
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, %bb.am, %bb.aj
  %.pn64.pn = phi { ptr, i32 } [ %i.ef, %bb.aj ], [ %.pn64, %bb.am ], [ %.pn64, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  br label %bb.at

bb.an:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit144
  %i.em = load ptr, ptr %i.aj, align 8, !tbaa !221 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.em, null
  br i1 %.not.i.i148, label %_ZN7testing15AssertionResultD2Ev.exit152, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !195 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.ao
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !198
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit152

_ZN7testing15AssertionResultD2Ev.exit152:         ; preds = %bb.an, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.es = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211 ; 5 uses
  store i32 %i.es, ptr %i.y, align 4, !tbaa !700
  %i.et = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 5 uses
  store i32 %i.et, ptr %i.aa, align 4, !tbaa !701
  %i.eu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !211 ; 3 uses
  store i32 %i.eu, ptr %i.ac, align 4, !tbaa !702
  %i.ev = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !211
  store i32 %i.ev, ptr %i.ae, align 4, !tbaa !703
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.ew = load i64, ptr %3, align 8, !tbaa !197   ; 8 uses
  %i.ex = trunc i64 %i.ew to i1
  br i1 %i.ex, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit152
  %i.ey = load ptr, ptr %i.ah, align 8, !tbaa !198
  %i.ez = load i64, ptr %i.af, align 8, !tbaa !198
  store ptr %i.ey, ptr %i.ak, align 8, !tbaa !198
  store i64 %i.ez, ptr %i.al, align 8, !tbaa !198
  store i64 %i.ew, ptr %11, align 8, !tbaa !197
  store i64 0, ptr %3, align 8, !tbaa !197
  %.pre = lshr i64 %i.ew, 1
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EEC2EOS5_.exit

bb.aq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit152
  %i.fa = lshr exact i64 %i.ew, 1                 ; 4 uses
  %.not.i.i153 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i153, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.aq
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.fb = icmp eq i64 %i.ew, 2
  br i1 %i.fb, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.fa, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.pn.i = phi ptr [ %3, %.lr.ph.i.i.preheader.new ], [ %i.fi, %.lr.ph.i.i ] ; 4 uses
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.fp, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.012.i.i ; 2 uses
  %i.fe = load i32, ptr %i.fc, align 8, !tbaa !453
  store i32 %i.fe, ptr %i.fd, align 8, !tbaa !453
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.fh, ptr %i.ff, align 4, !tbaa !454
  store i8 0, ptr %i.fg, align 4, !tbaa !454
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.012.i.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i32, ptr %i.fi, align 8, !tbaa !453
  store i32 %i.fl, ptr %i.fk, align 8, !tbaa !453
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fn = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.fo, ptr %i.fm, align 4, !tbaa !454
  store i8 0, ptr %i.fn, align 4, !tbaa !454
  %i.fp = add nuw nsw i64 %.012.i.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !137

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %i.fq = and i64 %i.ew, 2
  %lcmp.mod.not = icmp eq i64 %i.fq, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.pn.i.epil.init = phi ptr [ %3, %.lr.ph.i.i.preheader ], [ %i.fi, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.fp, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod476 = trunc i64 %i.fa to i1
  call void @llvm.assume(i1 %lcmp.mod476)
  %i.fr = getelementptr inbounds nuw i8, ptr %.pn.i.epil.init, i64 8
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.012.i.i.epil.init ; 2 uses
  %i.ft = load i32, ptr %i.fr, align 8, !tbaa !453
  store i32 %i.ft, ptr %i.fs, align 8, !tbaa !453
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = getelementptr inbounds nuw i8, ptr %.pn.i.epil.init, i64 12 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.fw, ptr %i.fu, align 4, !tbaa !454
  store i8 0, ptr %i.fv, align 4, !tbaa !454
  br label %.loopexit.i.loopexit

.loopexit.i.loopexit:                             ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.fx = trunc i64 %i.fa to i32                  ; 2 uses
  %i.fy = add i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted, %i.fx
  %i.fz = add i32 %i.es, %i.fx
  store i32 %i.fy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  store i32 %i.fz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.aq
  store i64 %i.ew, ptr %11, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EEC2EOS5_.exit

_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EEC2EOS5_.exit: ; preds = %.loopexit.i, %bb.ap
  %.pre-phi = phi i64 [ %i.fa, %.loopexit.i ], [ %.pre, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i64 %.pre-phi, ptr %i.d, align 8, !tbaa !197
  %i.ga = load i32, ptr %i.a, align 4, !tbaa !211, !noalias !6516
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i64 %.pre-phi, %i.gb
  br i1 %i.gc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EEC2EOS5_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.au

bb.as:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EEC2EOS5_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.540, ptr noundef nonnull @.str.196, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.au

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.gd = load i8, ptr %12, align 8, !tbaa !220, !range !189, !noundef !190
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.be, label %bb.av

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit147, %bb.ad
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %_ZN7testing7MessageD2Ev.exit147 ], [ %i.dx, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.hk

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.bj

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.gg = load ptr, ptr %i.am, align 8, !tbaa !221 ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i156, label %_ZNK7testing15AssertionResult15failure_messageEv.exit157, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit157

_ZNK7testing15AssertionResult15failure_messageEv.exit157: ; preds = %bb.ax, %bb.aw
  %i.gi = phi ptr [ %i.gh, %bb.ax ], [ @.str.216, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 1252, ptr noundef %i.gi)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit157
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.gj = load ptr, ptr %13, align 8, !tbaa !223  ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i158, label %_ZN7testing7MessageD2Ev.exit160, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159: ; preds = %bb.az
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !169
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(128) %i.gj) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit160

_ZN7testing7MessageD2Ev.exit160:                  ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.be

bb.ba:                                            ; preds = %bb.av
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit163

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit157
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #36
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn68 = phi { ptr, i32 } [ %i.gp, %bb.bc ], [ %i.go, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.gq = load ptr, ptr %13, align 8, !tbaa !223  ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i161, label %_ZN7testing7MessageD2Ev.exit163, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162: ; preds = %bb.bd
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !169
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit163

_ZN7testing7MessageD2Ev.exit163:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162, %bb.bd, %bb.ba
  %.pn68.pn = phi { ptr, i32 } [ %i.gn, %bb.ba ], [ %.pn68, %bb.bd ], [ %.pn68, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #36
  br label %bb.bj

bb.be:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit160
  %i.gu = load ptr, ptr %i.am, align 8, !tbaa !221 ; 4 uses
  %.not.i.i164 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i164, label %_ZN7testing15AssertionResultD2Ev.exit168, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !195 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i165: ; preds = %bb.bf
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !198
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i165
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit168

_ZN7testing15AssertionResultD2Ev.exit168:         ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.ha = load i32, ptr %i.a, align 4, !tbaa !211 ; 3 uses
  %i.hb = icmp ugt i32 %i.ha, 8
  br i1 %i.hb, label %bb.bg, label %bb.ef

bb.bg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  %i.hc = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.hd = load i32, ptr %1, align 4, !tbaa !698   ; 2 uses
  %i.he = sub nsw i32 %i.hc, %i.hd                ; 2 uses
  store i32 %i.he, ptr %i.e, align 4, !tbaa !211
  %i.hf = icmp eq i32 %i.he, %i.ha
  br i1 %i.hf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit171 unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.522, ptr noundef nonnull @.str.196, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit171 unwind label %bb.bk

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit171: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.hg = load i8, ptr %15, align 8, !tbaa !220, !range !189, !noundef !190
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.bu, label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit163, %bb.au
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %_ZN7testing7MessageD2Ev.exit163 ], [ %i.gf, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.hj

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %bb.by

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit171
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bm unwind label %bb.bq

end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_44CountConstructorsDestructorsOnMoveAssignmentIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a
_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i156
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit159

_ZN7testing15AssertionResultD2Ev.exit159:         ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  %i.iu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211 ; 3 uses
  %i.iv = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 4 uses
  %i.iw = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !211 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ix = load i32, ptr %i.a, align 4, !tbaa !211 ; 2 uses
  br i1 %.not, label %bb.cg, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit159
  %i.iy = add nsw i32 %i.ix, 1
  store i32 %i.iy, ptr %i.f, align 4, !tbaa !211
  %i.iz = load i64, ptr %25, align 8, !tbaa !197  ; 4 uses
  %i.ja = trunc i64 %i.iz to i1
  br i1 %i.ja, label %bb.bh, label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.jb = load i64, ptr %26, align 8, !tbaa !197  ; 3 uses
  %i.jc = trunc i64 %i.jb to i1                   ; 2 uses
  %i.jd = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.je = select i1 %i.jc, ptr %i.jd, ptr %i.ac   ; 5 uses
  %i.jf = lshr i64 %i.jb, 1                       ; 5 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  %.not5.i.i.i.i = icmp eq i64 %i.jf, 0
  br i1 %.not5.i.i.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bh
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter948 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod949.not = icmp eq i64 %xtraiter948, 0
  br i1 %lcmp.mod949.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol
  %.06.i.i.i.i.prol = phi i64 [ %i.jh, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol ], [ %i.jf, %.lr.ph.preheader.i.i.i.i ]
  %i.jg = phi i32 [ %i.jn, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter950 = phi i64 [ %prol.iter950.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.jh = add nsw i64 %.06.i.i.i.i.prol, -1       ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load i8, ptr %i.jj, align 4, !tbaa !454, !range !189, !noundef !190
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.bi, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.prol
  %i.jm = add nsw i32 %i.jg, -1                   ; 2 uses
  store i32 %i.jm, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol: ; preds = %bb.bi, %.lr.ph.i.i.i.i.prol
  %i.jn = phi i32 [ %i.jg, %.lr.ph.i.i.i.i.prol ], [ %i.jm, %bb.bi ] ; 2 uses
  %prol.iter950.next = add i64 %prol.iter950, 1   ; 2 uses
  %prol.iter950.cmp.not = icmp eq i64 %prol.iter950.next, %xtraiter948
  br i1 %prol.iter950.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !6720

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.06.i.i.i.i.unr = phi i64 [ %i.jf, %.lr.ph.preheader.i.i.i.i ], [ %i.jh, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol ]
  %.unr951 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.jn, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.prol ]
  %i.jo = icmp ult i64 %i.jb, 8
  br i1 %i.jo, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.3, %.lr.ph.i.i.i.i.prol.loopexit
  %i.jp = trunc i64 %i.jf to i32
  %i.jq = sub i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i, %i.jp
  store i32 %i.jq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.3
  %.06.i.i.i.i = phi i64 [ %i.kk, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.3 ], [ %.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.jr = phi i32 [ %i.kq, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.3 ], [ %.unr951, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %i.je, i64 %.06.i.i.i.i
  %i.jt = getelementptr i8, ptr %i.js, i64 -4
  %i.ju = load i8, ptr %i.jt, align 4, !tbaa !454, !range !189, !noundef !190
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.bj, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jw = add nsw i32 %i.jr, -1                   ; 2 uses
  store i32 %i.jw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i: ; preds = %bb.bj, %.lr.ph.i.i.i.i
  %i.jx = phi i32 [ %i.jr, %.lr.ph.i.i.i.i ], [ %i.jw, %bb.bj ] ; 2 uses
  %i.jy = getelementptr [8 x i8], ptr %i.je, i64 %.06.i.i.i.i
  %i.jz = getelementptr i8, ptr %i.jy, i64 -12
  %i.ka = load i8, ptr %i.jz, align 4, !tbaa !454, !range !189, !noundef !190
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.bk, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.1

bb.bk:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i
  %i.kc = add nsw i32 %i.jx, -1                   ; 2 uses
  store i32 %i.kc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.1: ; preds = %bb.bk, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i
  %i.kd = phi i32 [ %i.jx, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i ], [ %i.kc, %bb.bk ] ; 2 uses
  %i.ke = getelementptr [8 x i8], ptr %i.je, i64 %.06.i.i.i.i
  %i.kf = getelementptr i8, ptr %i.ke, i64 -20
  %i.kg = load i8, ptr %i.kf, align 4, !tbaa !454, !range !189, !noundef !190
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.bl, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.2

bb.bl:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.1
  %i.ki = add nsw i32 %i.kd, -1                   ; 2 uses
  store i32 %i.ki, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.2: ; preds = %bb.bl, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.1
  %i.kj = phi i32 [ %i.kd, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.1 ], [ %i.ki, %bb.bl ] ; 2 uses
  %i.kk = add nsw i64 %.06.i.i.i.i, -4            ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = load i8, ptr %i.km, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.bm, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.3

bb.bm:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.2
  %i.kp = add nsw i32 %i.kj, -1                   ; 2 uses
  store i32 %i.kp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.3: ; preds = %bb.bm, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.2
  %i.kq = phi i32 [ %i.kj, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i.2 ], [ %i.kp, %bb.bm ]
  %.not.i.i.i.i.3 = icmp eq i64 %i.kk, 0
  br i1 %.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !87

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.bh
  br i1 %i.jc, label %bb.bn, label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i.i

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i
  %i.kr = load i64, ptr %i.ab, align 8, !tbaa !198
  %i.ks = shl i64 %i.kr, 3
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.ks) #39
  %.pre.i.i = load i64, ptr %25, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i.i

_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i.i: ; preds = %bb.bn, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i
  %i.kt = phi i64 [ %i.iz, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i ], [ %.pre.i.i, %bb.bn ]
  store i64 %i.kt, ptr %26, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false), !tbaa.struct !746
  store i64 0, ptr %25, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EEaSEOS5_.exit

bb.bo:                                            ; preds = %bb.bg
  %i.ku = lshr exact i64 %i.iz, 1                 ; 8 uses
  %i.kv = load i64, ptr %26, align 8, !tbaa !197, !noalias !6763 ; 2 uses
  %i.kw = trunc i64 %i.kv to i1                   ; 2 uses
  %i.kx = load ptr, ptr %i.ac, align 8, !noalias !6763
  %i.ky = load i64, ptr %i.ab, align 8, !noalias !6763
  %.sink2.i.i = select i1 %i.kw, ptr %i.kx, ptr %i.ac ; 4 uses
  %.sink.i.i = select i1 %i.kw, i64 %i.ky, i64 8  ; 2 uses
  %.sink1.i.i = lshr i64 %i.kv, 1                 ; 6 uses
  %i.kz = icmp ugt i64 %i.ku, %.sink.i.i
  br i1 %i.kz, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.la = shl nuw i64 %.sink.i.i, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.la, i64 %i.ku) ; 4 uses
  %i.lb = icmp ugt i64 %.sroa.speculated.i.i, 1152921504606846975
  br i1 %i.lb, label %bb.bq, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i, !prof !212

bb.bq:                                            ; preds = %bb.bp
  %i.lc = icmp ugt i64 %.sroa.speculated.i.i, 2305843009213693951
  br i1 %i.lc, label %.noexc.i436.invoke, label %.noexc16.i435.invoke

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i: ; preds = %bb.bp
  %i.ld = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #41
          to label %.lr.ph.i19.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.br:                                            ; preds = %bb.bo
  %i.lf = icmp samesign ugt i64 %i.ku, %.sink1.i.i
  br i1 %i.lf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i, i64 %.sink1.i.i
  %i.lh = sub nuw nsw i64 %i.ku, %.sink1.i.i
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i, i64 %i.ku
  %i.lj = sub nuw nsw i64 %.sink1.i.i, %i.ku
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i: ; preds = %bb.bt, %bb.bs
  %.sroa.037.0.i = phi ptr [ %i.li, %bb.bt ], [ null, %bb.bs ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %i.lj, %bb.bt ], [ 0, %bb.bs ] ; 2 uses
  %.sroa.739.0.i = phi i64 [ 0, %bb.bt ], [ %i.lh, %bb.bs ] ; 2 uses
  %.sroa.038.0.i = phi ptr [ null, %bb.bt ], [ %i.lg, %bb.bs ]
  %.sroa.741.0.i = phi i64 [ %i.ku, %bb.bt ], [ %.sink1.i.i, %bb.bs ] ; 2 uses
  %.not.i.i382 = icmp eq i64 %.sroa.741.0.i, 0
  br i1 %.not.i.i382, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i
  %i.lk = phi ptr [ %i.lw, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i ], [ %i.z, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i ] ; 3 uses
  %.05.i.i = phi i64 [ %i.lx, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i, i64 %.05.i.i ; 2 uses
  %i.lm = load i32, ptr %i.lk, align 8, !tbaa !453
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !453
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 4 ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 4, !tbaa !454, !range !189, !noundef !190
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.bu, label %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.lq = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.lr = add nsw i32 %i.lq, -1
  store i32 %i.lr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i

_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i: ; preds = %bb.bu, %.lr.ph.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 4 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.lt, ptr %i.ln, align 4, !tbaa !454
  store i8 0, ptr %i.ls, align 4, !tbaa !454
  %i.lu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.lv = add nsw i32 %i.lu, 1
  store i32 %i.lv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lx = add nuw nsw i64 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.lx, %.sroa.741.0.i
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i, label %.lr.ph.i.i, !llvm.loop !139

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i
  %.sroa.057.0.i = phi ptr [ %i.z, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i ], [ %i.lw, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i ]
  %.not.i18.i = icmp eq i64 %.sroa.739.0.i, 0
  br i1 %.not.i18.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i, label %.lr.ph.i19.i

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.pre.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i

.lr.ph.i19.i:                                     ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i
  %.sroa.057.091.i = phi ptr [ %.sroa.057.0.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ], [ %i.z, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i ] ; 2 uses
  %.sroa.037.06789.i = phi ptr [ %.sroa.037.0.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ], [ %.sink2.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i ] ; 2 uses
  %.sroa.7.06887.i = phi i64 [ %.sroa.7.0.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ], [ %.sink1.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i ] ; 2 uses
  %.sroa.739.06986.i = phi i64 [ %.sroa.739.0.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ], [ %i.ku, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i ] ; 4 uses
  %.sroa.038.07085.i = phi ptr [ %.sroa.038.0.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ], [ %i.le, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i ] ; 3 uses
  %.sroa.10.07183.i = phi i64 [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ], [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i ] ; 2 uses
  %.sroa.042.07281.i = phi ptr [ null, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i ], [ %i.le, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i ] ; 2 uses
  %xtraiter = and i64 %.sroa.739.06986.i, 1
  %i.ly = icmp eq i64 %.sroa.739.06986.i, 1
  br i1 %i.ly, label %.epil.preheader, label %.lr.ph.i19.i.new

.lr.ph.i19.i.new:                                 ; preds = %.lr.ph.i19.i
  %unroll_iter = and i64 %.sroa.739.06986.i, -2
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i19.i.new
  %i.lz = phi ptr [ %.sroa.057.091.i, %.lr.ph.i19.i.new ], [ %i.mu, %bb.bv ] ; 5 uses
  %.012.i.i = phi i64 [ 0, %.lr.ph.i19.i.new ], [ %i.mv, %bb.bv ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i19.i.new ], [ %niter.next.1, %bb.bv ]
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.07085.i, i64 %.012.i.i ; 2 uses
  %i.mb = load i32, ptr %i.lz, align 4, !tbaa !453
  store i32 %i.mb, ptr %i.ma, align 4, !tbaa !453
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 4 ; 2 uses
  %i.me = load i8, ptr %i.md, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.me, ptr %i.mc, align 4, !tbaa !454
  store i8 0, ptr %i.md, align 4, !tbaa !454
  %i.mf = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.mh = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.07085.i, i64 %.012.i.i ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i32, ptr %i.mj, align 4, !tbaa !453
  store i32 %i.mm, ptr %i.ml, align 4, !tbaa !453
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lz, i64 12 ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.mp, ptr %i.mn, align 4, !tbaa !454
  store i8 0, ptr %i.mo, align 4, !tbaa !454
  %i.mq = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.mr = add nsw i32 %i.mq, 1                    ; 2 uses
  store i32 %i.mr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ms = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %i.mv = add nuw i64 %.012.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !137

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa, %.lr.ph.i19.i
  %.epil.init = phi ptr [ %.sroa.057.091.i, %.lr.ph.i19.i ], [ %i.mu, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i19.i ], [ %i.mv, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod944 = trunc i64 %.sroa.739.06986.i to i1
  call void @llvm.assume(i1 %lcmp.mod944)
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.07085.i, i64 %.012.i.i.epil.init ; 2 uses
  %i.mx = load i32, ptr %.epil.init, align 4, !tbaa !453
  store i32 %i.mx, ptr %i.mw, align 4, !tbaa !453
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4 ; 2 uses
  %i.na = load i8, ptr %i.mz, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.na, ptr %i.my, align 4, !tbaa !454
  store i8 0, ptr %i.mz, align 4, !tbaa !454
  %i.nb = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.nc = add nsw i32 %i.nb, 1                    ; 2 uses
  store i32 %i.nc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.nd = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.ne = add nsw i32 %i.nd, 1
  store i32 %i.ne, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i: ; preds = %.epil.preheader, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.pre.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i ], [ %i.mr, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ], [ %i.nc, %.epil.preheader ]
  %.sroa.037.06790.i = phi ptr [ %.sroa.037.0.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i ], [ %.sroa.037.06789.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ], [ %.sroa.037.06789.i, %.epil.preheader ] ; 5 uses
  %.sroa.7.06888.i = phi i64 [ %.sroa.7.0.i, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i ], [ %.sroa.7.06887.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ], [ %.sroa.7.06887.i, %.epil.preheader ] ; 6 uses
  %.sroa.10.07184.i = phi i64 [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i ], [ %.sroa.10.07183.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ], [ %.sroa.10.07183.i, %.epil.preheader ]
  %.sroa.042.07282.i = phi ptr [ null, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i ], [ %.sroa.042.07281.i, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i.loopexit.unr-lcssa ], [ %.sroa.042.07281.i, %.epil.preheader ] ; 2 uses
  %.not5.i.i = icmp eq i64 %.sroa.7.06888.i, 0
  br i1 %.not5.i.i, label %bb.cb, label %.lr.ph.preheader.i21.i

.lr.ph.preheader.i21.i:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter945 = and i64 %.sroa.7.06888.i, 3      ; 2 uses
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol

.lr.ph.i22.i.prol:                                ; preds = %.lr.ph.preheader.i21.i, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol
  %.06.i.i.prol = phi i64 [ %i.ng, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %.sroa.7.06888.i, %.lr.ph.preheader.i21.i ]
  %i.nf = phi i32 [ %i.nm, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.preheader.i21.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ], [ 0, %.lr.ph.preheader.i21.i ]
  %i.ng = add nsw i64 %.06.i.i.prol, -1           ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.037.06790.i, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load i8, ptr %i.ni, align 4, !tbaa !454, !range !189, !noundef !190
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.bw, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol

bb.bw:                                            ; preds = %.lr.ph.i22.i.prol
  %i.nl = add nsw i32 %i.nf, -1                   ; 2 uses
  store i32 %i.nl, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol: ; preds = %bb.bw, %.lr.ph.i22.i.prol
  %i.nm = phi i32 [ %i.nf, %.lr.ph.i22.i.prol ], [ %i.nl, %bb.bw ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter945
  br i1 %prol.iter.cmp.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol, !llvm.loop !6723

.lr.ph.i22.i.prol.loopexit:                       ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol, %.lr.ph.preheader.i21.i
  %.06.i.i.unr = phi i64 [ %.sroa.7.06888.i, %.lr.ph.preheader.i21.i ], [ %i.ng, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ]
  %.unr947 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i, %.lr.ph.preheader.i21.i ], [ %i.nm, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.prol ]
  %i.nn = icmp ult i64 %.sroa.7.06888.i, 4
  br i1 %i.nn, label %._crit_edge.i24.i, label %.lr.ph.i22.i

._crit_edge.i24.i:                                ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3, %.lr.ph.i22.i.prol.loopexit
  %i.no = trunc i64 %.sroa.7.06888.i to i32
  %i.np = sub i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i, %i.no
  store i32 %i.np, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %bb.cb

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3
  %.06.i.i = phi i64 [ %i.oj, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3 ], [ %.06.i.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 4 uses
  %i.nq = phi i32 [ %i.op, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.3 ], [ %.unr947, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %i.nr = getelementptr [8 x i8], ptr %.sroa.037.06790.i, i64 %.06.i.i
  %i.ns = getelementptr i8, ptr %i.nr, i64 -4
  %i.nt = load i8, ptr %i.ns, align 4, !tbaa !454, !range !189, !noundef !190
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.bx, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

bb.bx:                                            ; preds = %.lr.ph.i22.i
  %i.nv = add nsw i32 %i.nq, -1                   ; 2 uses
  store i32 %i.nv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i: ; preds = %bb.bx, %.lr.ph.i22.i
  %i.nw = phi i32 [ %i.nq, %.lr.ph.i22.i ], [ %i.nv, %bb.bx ] ; 2 uses
  %i.nx = getelementptr [8 x i8], ptr %.sroa.037.06790.i, i64 %.06.i.i
  %i.ny = getelementptr i8, ptr %i.nx, i64 -12
  %i.nz = load i8, ptr %i.ny, align 4, !tbaa !454, !range !189, !noundef !190
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.by, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1

bb.by:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i
  %i.ob = add nsw i32 %i.nw, -1                   ; 2 uses
  store i32 %i.ob, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1: ; preds = %bb.by, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i
  %i.oc = phi i32 [ %i.nw, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i ], [ %i.ob, %bb.by ] ; 2 uses
  %i.od = getelementptr [8 x i8], ptr %.sroa.037.06790.i, i64 %.06.i.i
  %i.oe = getelementptr i8, ptr %i.od, i64 -20
  %i.of = load i8, ptr %i.oe, align 4, !tbaa !454, !range !189, !noundef !190
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %bb.bz, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.2

bb.bz:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.1
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_125gtest_suite_InstanceTest_44CountConstructorsDestructorsOnMoveAssignmentIN4absl12lts_2026052613test_internal23CopyableMovableInstanceEE8TestBodyEv:bb.a
bb.cg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit159
  store i32 %i.ix, ptr %i.f, align 4, !tbaa !211
  %i.ox = load i64, ptr %26, align 8, !tbaa !197  ; 4 uses
  %i.oy = trunc i64 %i.ox to i1
  br i1 %i.oy, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.oz = load i64, ptr %25, align 8, !tbaa !197  ; 3 uses
  %i.pa = trunc i64 %i.oz to i1                   ; 2 uses
  %i.pb = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.pc = select i1 %i.pa, ptr %i.pb, ptr %i.z    ; 5 uses
  %i.pd = lshr i64 %i.oz, 1                       ; 5 uses
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i163 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  %.not5.i.i.i.i164 = icmp eq i64 %i.pd, 0
  br i1 %.not5.i.i.i.i164, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i172, label %.lr.ph.preheader.i.i.i.i165

.lr.ph.preheader.i.i.i.i165:                      ; preds = %bb.ch
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i166 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter965 = and i64 %i.pd, 3                 ; 2 uses
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  br i1 %lcmp.mod966.not, label %.lr.ph.i.i.i.i167.prol.loopexit, label %.lr.ph.i.i.i.i167.prol

.lr.ph.i.i.i.i167.prol:                           ; preds = %.lr.ph.preheader.i.i.i.i165, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol
  %.06.i.i.i.i168.prol = phi i64 [ %i.pf, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol ], [ %i.pd, %.lr.ph.preheader.i.i.i.i165 ]
  %i.pe = phi i32 [ %i.pl, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i166, %.lr.ph.preheader.i.i.i.i165 ] ; 2 uses
  %prol.iter967 = phi i64 [ %prol.iter967.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol ], [ 0, %.lr.ph.preheader.i.i.i.i165 ]
  %i.pf = add nsw i64 %.06.i.i.i.i168.prol, -1    ; 3 uses
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pi = load i8, ptr %i.ph, align 4, !tbaa !454, !range !189, !noundef !190
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.ci, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i167.prol
  %i.pk = add nsw i32 %i.pe, -1                   ; 2 uses
  store i32 %i.pk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol: ; preds = %bb.ci, %.lr.ph.i.i.i.i167.prol
  %i.pl = phi i32 [ %i.pe, %.lr.ph.i.i.i.i167.prol ], [ %i.pk, %bb.ci ] ; 2 uses
  %prol.iter967.next = add i64 %prol.iter967, 1   ; 2 uses
  %prol.iter967.cmp.not = icmp eq i64 %prol.iter967.next, %xtraiter965
  br i1 %prol.iter967.cmp.not, label %.lr.ph.i.i.i.i167.prol.loopexit, label %.lr.ph.i.i.i.i167.prol, !llvm.loop !6724

.lr.ph.i.i.i.i167.prol.loopexit:                  ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol, %.lr.ph.preheader.i.i.i.i165
  %.06.i.i.i.i168.unr = phi i64 [ %i.pd, %.lr.ph.preheader.i.i.i.i165 ], [ %i.pf, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol ]
  %.unr968 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i.i.i166, %.lr.ph.preheader.i.i.i.i165 ], [ %i.pl, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.prol ]
  %i.pm = icmp ult i64 %i.oz, 8
  br i1 %i.pm, label %._crit_edge.i.i.i.i171, label %.lr.ph.i.i.i.i167

._crit_edge.i.i.i.i171:                           ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.3, %.lr.ph.i.i.i.i167.prol.loopexit
  %i.pn = trunc i64 %i.pd to i32
  %i.po = sub i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i.i.i163, %i.pn
  store i32 %i.po, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i172

.lr.ph.i.i.i.i167:                                ; preds = %.lr.ph.i.i.i.i167.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.3
  %.06.i.i.i.i168 = phi i64 [ %i.qi, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.3 ], [ %.06.i.i.i.i168.unr, %.lr.ph.i.i.i.i167.prol.loopexit ] ; 4 uses
  %i.pp = phi i32 [ %i.qo, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.3 ], [ %.unr968, %.lr.ph.i.i.i.i167.prol.loopexit ] ; 2 uses
  %i.pq = getelementptr [8 x i8], ptr %i.pc, i64 %.06.i.i.i.i168
  %i.pr = getelementptr i8, ptr %i.pq, i64 -4
  %i.ps = load i8, ptr %i.pr, align 4, !tbaa !454, !range !189, !noundef !190
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.cj, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i167
  %i.pu = add nsw i32 %i.pp, -1                   ; 2 uses
  store i32 %i.pu, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169: ; preds = %bb.cj, %.lr.ph.i.i.i.i167
  %i.pv = phi i32 [ %i.pp, %.lr.ph.i.i.i.i167 ], [ %i.pu, %bb.cj ] ; 2 uses
  %i.pw = getelementptr [8 x i8], ptr %i.pc, i64 %.06.i.i.i.i168
  %i.px = getelementptr i8, ptr %i.pw, i64 -12
  %i.py = load i8, ptr %i.px, align 4, !tbaa !454, !range !189, !noundef !190
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.ck, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.1

bb.ck:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169
  %i.qa = add nsw i32 %i.pv, -1                   ; 2 uses
  store i32 %i.qa, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.1: ; preds = %bb.ck, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169
  %i.qb = phi i32 [ %i.pv, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169 ], [ %i.qa, %bb.ck ] ; 2 uses
  %i.qc = getelementptr [8 x i8], ptr %i.pc, i64 %.06.i.i.i.i168
  %i.qd = getelementptr i8, ptr %i.qc, i64 -20
  %i.qe = load i8, ptr %i.qd, align 4, !tbaa !454, !range !189, !noundef !190
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.cl, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.2

bb.cl:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.1
  %i.qg = add nsw i32 %i.qb, -1                   ; 2 uses
  store i32 %i.qg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.2: ; preds = %bb.cl, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.1
  %i.qh = phi i32 [ %i.qb, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.1 ], [ %i.qg, %bb.cl ] ; 2 uses
  %i.qi = add nsw i64 %.06.i.i.i.i168, -4         ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.ql = load i8, ptr %i.qk, align 4, !tbaa !454, !range !189, !noundef !190
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.cm, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.3

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.2
  %i.qn = add nsw i32 %i.qh, -1                   ; 2 uses
  store i32 %i.qn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.3: ; preds = %bb.cm, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.2
  %i.qo = phi i32 [ %i.qh, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i.i.i169.2 ], [ %i.qn, %bb.cm ]
  %.not.i.i.i.i170.3 = icmp eq i64 %i.qi, 0
  br i1 %.not.i.i.i.i170.3, label %._crit_edge.i.i.i.i171, label %.lr.ph.i.i.i.i167, !llvm.loop !87

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i172: ; preds = %._crit_edge.i.i.i.i171, %bb.ch
  br i1 %i.pa, label %bb.cn, label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i.i173

bb.cn:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i172
  %i.qp = load i64, ptr %i.x, align 8, !tbaa !198
  %i.qq = shl i64 %i.qp, 3
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.qq) #39
  %.pre.i.i174 = load i64, ptr %26, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i.i173

_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EE23DestroyExistingAndAdoptEOS5_.exit.i.i173: ; preds = %bb.cn, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i172
  %i.qr = phi i64 [ %i.ox, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.i.i.i172 ], [ %.pre.i.i174, %bb.cn ]
  store i64 %i.qr, ptr %25, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 64, i1 false), !tbaa.struct !746
  store i64 0, ptr %26, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorINS0_13test_internal23CopyableMovableInstanceELm8ESaIS3_EEaSEOS5_.exit

bb.co:                                            ; preds = %bb.cg
  %i.qs = lshr exact i64 %i.ox, 1                 ; 8 uses
  %i.qt = load i64, ptr %25, align 8, !tbaa !197, !noalias !6764 ; 2 uses
  %i.qu = trunc i64 %i.qt to i1                   ; 2 uses
  %i.qv = load ptr, ptr %i.z, align 8, !noalias !6764
  %i.qw = load i64, ptr %i.x, align 8, !noalias !6764
  %.sink2.i.i387 = select i1 %i.qu, ptr %i.qv, ptr %i.z ; 4 uses
  %.sink.i.i388 = select i1 %i.qu, i64 %i.qw, i64 8 ; 2 uses
  %.sink1.i.i389 = lshr i64 %i.qt, 1              ; 6 uses
  %i.qx = icmp ugt i64 %i.qs, %.sink.i.i388
  br i1 %i.qx, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.qy = shl nuw i64 %.sink.i.i388, 1
  %.sroa.speculated.i.i433 = call noundef i64 @llvm.umax.i64(i64 %i.qy, i64 %i.qs) ; 4 uses
  %i.qz = icmp ugt i64 %.sroa.speculated.i.i433, 1152921504606846975
  br i1 %i.qz, label %bb.cq, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434, !prof !212

bb.cq:                                            ; preds = %bb.cp
  %i.ra = icmp ugt i64 %.sroa.speculated.i.i433, 2305843009213693951
  br i1 %i.ra, label %.noexc.i436.invoke, label %.noexc16.i435.invoke

.noexc.i436.invoke:                               ; preds = %bb.bq, %bb.cq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc.i436.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i436.cont:                                 ; preds = %.noexc.i436.invoke
  unreachable

.noexc16.i435.invoke:                             ; preds = %bb.bq, %bb.cq
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc16.i435.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16.i435.cont:                               ; preds = %.noexc16.i435.invoke
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434: ; preds = %bb.cp
  %i.rb = shl nuw nsw i64 %.sroa.speculated.i.i433, 3
  %i.rc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rb) #41
          to label %.lr.ph.i19.i404 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cr:                                            ; preds = %bb.co
  %i.rd = icmp samesign ugt i64 %i.qs, %.sink1.i.i389
  br i1 %i.rd, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i387, i64 %.sink1.i.i389
  %i.rf = sub nuw nsw i64 %i.qs, %.sink1.i.i389
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390

bb.ct:                                            ; preds = %bb.cr
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i387, i64 %i.qs
  %i.rh = sub nuw nsw i64 %.sink1.i.i389, %i.qs
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390: ; preds = %bb.ct, %bb.cs
  %.sroa.037.0.i391 = phi ptr [ %i.rg, %bb.ct ], [ null, %bb.cs ] ; 2 uses
  %.sroa.7.0.i392 = phi i64 [ %i.rh, %bb.ct ], [ 0, %bb.cs ] ; 2 uses
  %.sroa.739.0.i393 = phi i64 [ 0, %bb.ct ], [ %i.rf, %bb.cs ] ; 2 uses
  %.sroa.038.0.i394 = phi ptr [ null, %bb.ct ], [ %i.re, %bb.cs ]
  %.sroa.741.0.i395 = phi i64 [ %i.qs, %bb.ct ], [ %.sink1.i.i389, %bb.cs ] ; 2 uses
  %.not.i.i396 = icmp eq i64 %.sroa.741.0.i395, 0
  br i1 %.not.i.i396, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401, label %.lr.ph.i.i397

.lr.ph.i.i397:                                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399
  %i.ri = phi ptr [ %i.ru, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399 ], [ %i.ac, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390 ] ; 3 uses
  %.05.i.i398 = phi i64 [ %i.rv, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399 ], [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390 ] ; 2 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i387, i64 %.05.i.i398 ; 2 uses
  %i.rk = load i32, ptr %i.ri, align 8, !tbaa !453
  store i32 %i.rk, ptr %i.rj, align 4, !tbaa !453
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 4, !tbaa !454, !range !189, !noundef !190
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.cu, label %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399

bb.cu:                                            ; preds = %.lr.ph.i.i397
  %i.ro = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.rp = add nsw i32 %i.ro, -1
  store i32 %i.rp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399

_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399: ; preds = %bb.cu, %.lr.ph.i.i397
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ri, i64 4 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.rr, ptr %i.rl, align 4, !tbaa !454
  store i8 0, ptr %i.rq, align 4, !tbaa !454
  %i.rs = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.rt = add nsw i32 %i.rs, 1
  store i32 %i.rt, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  %i.rv = add nuw nsw i64 %.05.i.i398, 1          ; 2 uses
  %exitcond.not.i.i400 = icmp eq i64 %i.rv, %.sroa.741.0.i395
  br i1 %exitcond.not.i.i400, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401, label %.lr.ph.i.i397, !llvm.loop !139

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390
  %.sroa.057.0.i402 = phi ptr [ %i.ac, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE8AllocateEm.exit.i390 ], [ %i.ru, %_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_13test_internal23CopyableMovableInstanceEESt13move_iteratorIPS4_EE10AssignNextES7_.exit.i.i399 ]
  %.not.i18.i403 = icmp eq i64 %.sroa.739.0.i393, 0
  br i1 %.not.i18.i403, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431, label %.lr.ph.i19.i404

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.pre.i432 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4
  br label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414

.lr.ph.i19.i404:                                  ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401
  %.sroa.057.091.i405 = phi ptr [ %.sroa.057.0.i402, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401 ], [ %i.ac, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434 ] ; 2 uses
  %.sroa.037.06789.i406 = phi ptr [ %.sroa.037.0.i391, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401 ], [ %.sink2.i.i387, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434 ] ; 2 uses
  %.sroa.7.06887.i407 = phi i64 [ %.sroa.7.0.i392, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401 ], [ %.sink1.i.i389, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434 ] ; 2 uses
  %.sroa.739.06986.i408 = phi i64 [ %.sroa.739.0.i393, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401 ], [ %i.qs, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434 ] ; 4 uses
  %.sroa.038.07085.i409 = phi ptr [ %.sroa.038.0.i394, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401 ], [ %i.rc, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434 ] ; 3 uses
  %.sroa.10.07183.i410 = phi i64 [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401 ], [ %.sroa.speculated.i.i433, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434 ] ; 2 uses
  %.sroa.042.07281.i411 = phi ptr [ null, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit.i401 ], [ %i.rc, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i.i434 ] ; 2 uses
  %xtraiter953 = and i64 %.sroa.739.06986.i408, 1
  %i.rw = icmp eq i64 %.sroa.739.06986.i408, 1
  br i1 %i.rw, label %.epil.preheader952, label %.lr.ph.i19.i404.new

.lr.ph.i19.i404.new:                              ; preds = %.lr.ph.i19.i404
  %unroll_iter959 = and i64 %.sroa.739.06986.i408, -2
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i19.i404.new
  %i.rx = phi ptr [ %.sroa.057.091.i405, %.lr.ph.i19.i404.new ], [ %i.ss, %bb.cv ] ; 5 uses
  %.012.i.i412 = phi i64 [ 0, %.lr.ph.i19.i404.new ], [ %i.st, %bb.cv ] ; 3 uses
  %niter960 = phi i64 [ 0, %.lr.ph.i19.i404.new ], [ %niter960.next.1, %bb.cv ]
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.07085.i409, i64 %.012.i.i412 ; 2 uses
  %i.rz = load i32, ptr %i.rx, align 4, !tbaa !453
  store i32 %i.rz, ptr %i.ry, align 4, !tbaa !453
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 4 ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.sc, ptr %i.sa, align 4, !tbaa !454
  store i8 0, ptr %i.sb, align 4, !tbaa !454
  %i.sd = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.se = add nsw i32 %i.sd, 1
  store i32 %i.se, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.sf = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.sg = add nsw i32 %i.sf, 1
  store i32 %i.sg, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.07085.i409, i64 %.012.i.i412 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load i32, ptr %i.sh, align 4, !tbaa !453
  store i32 %i.sk, ptr %i.sj, align 4, !tbaa !453
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 12
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rx, i64 12 ; 2 uses
  %i.sn = load i8, ptr %i.sm, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.sn, ptr %i.sl, align 4, !tbaa !454
  store i8 0, ptr %i.sm, align 4, !tbaa !454
  %i.so = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.sp = add nsw i32 %i.so, 1                    ; 2 uses
  store i32 %i.sp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.sq = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.sr = add nsw i32 %i.sq, 1
  store i32 %i.sr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rx, i64 16 ; 2 uses
  %i.st = add nuw i64 %.012.i.i412, 2             ; 2 uses
  %niter960.next.1 = add i64 %niter960, 2         ; 2 uses
  %niter960.ncmp.1 = icmp eq i64 %niter960.next.1, %unroll_iter959
  br i1 %niter960.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa, label %bb.cv, !llvm.loop !137

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa: ; preds = %bb.cv
  %lcmp.mod956.not = icmp eq i64 %xtraiter953, 0
  br i1 %lcmp.mod956.not, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414, label %.epil.preheader952

.epil.preheader952:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa, %.lr.ph.i19.i404
  %.epil.init955 = phi ptr [ %.sroa.057.091.i405, %.lr.ph.i19.i404 ], [ %i.ss, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.i412.epil.init = phi i64 [ 0, %.lr.ph.i19.i404 ], [ %i.st, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa ]
  %lcmp.mod958 = trunc i64 %.sroa.739.06986.i408 to i1
  call void @llvm.assume(i1 %lcmp.mod958)
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.07085.i409, i64 %.012.i.i412.epil.init ; 2 uses
  %i.sv = load i32, ptr %.epil.init955, align 4, !tbaa !453
  store i32 %i.sv, ptr %i.su, align 4, !tbaa !453
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.sx = getelementptr inbounds nuw i8, ptr %.epil.init955, i64 4 ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 4, !tbaa !454, !range !189, !noundef !190
  store i8 %i.sy, ptr %i.sw, align 4, !tbaa !454
  store i8 0, ptr %i.sx, align 4, !tbaa !454
  %i.sz = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.ta = add nsw i32 %i.sz, 1                    ; 2 uses
  store i32 %i.ta, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.tb = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  %i.tc = add nsw i32 %i.tb, 1
  store i32 %i.tc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414: ; preds = %.epil.preheader952, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i415 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.pre.i432, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431 ], [ %i.sp, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa ], [ %i.ta, %.epil.preheader952 ]
  %.sroa.037.06790.i416 = phi ptr [ %.sroa.037.0.i391, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431 ], [ %.sroa.037.06789.i406, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa ], [ %.sroa.037.06789.i406, %.epil.preheader952 ] ; 5 uses
  %.sroa.7.06888.i417 = phi i64 [ %.sroa.7.0.i392, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431 ], [ %.sroa.7.06887.i407, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa ], [ %.sroa.7.06887.i407, %.epil.preheader952 ] ; 6 uses
  %.sroa.10.07184.i418 = phi i64 [ 0, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431 ], [ %.sroa.10.07183.i410, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa ], [ %.sroa.10.07183.i410, %.epil.preheader952 ]
  %.sroa.042.07282.i419 = phi ptr [ null, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE.exit._ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit_crit_edge.i431 ], [ %.sroa.042.07281.i411, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414.loopexit.unr-lcssa ], [ %.sroa.042.07281.i411, %.epil.preheader952 ] ; 2 uses
  %.not5.i.i420 = icmp eq i64 %.sroa.7.06888.i417, 0
  br i1 %.not5.i.i420, label %bb.db, label %.lr.ph.preheader.i21.i421

.lr.ph.preheader.i21.i421:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_13test_internal23CopyableMovableInstanceEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit.i414
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i422 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4 ; 2 uses
  %xtraiter961 = and i64 %.sroa.7.06888.i417, 3   ; 2 uses
  %lcmp.mod962.not = icmp eq i64 %xtraiter961, 0
  br i1 %lcmp.mod962.not, label %.lr.ph.i22.i423.prol.loopexit, label %.lr.ph.i22.i423.prol

.lr.ph.i22.i423.prol:                             ; preds = %.lr.ph.preheader.i21.i421, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol
  %.06.i.i424.prol = phi i64 [ %i.te, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol ], [ %.sroa.7.06888.i417, %.lr.ph.preheader.i21.i421 ]
  %i.td = phi i32 [ %i.tk, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i422, %.lr.ph.preheader.i21.i421 ] ; 2 uses
  %prol.iter963 = phi i64 [ %prol.iter963.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol ], [ 0, %.lr.ph.preheader.i21.i421 ]
  %i.te = add nsw i64 %.06.i.i424.prol, -1        ; 3 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.037.06790.i416, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  %i.th = load i8, ptr %i.tg, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ti = trunc nuw i8 %i.th to i1
  br i1 %i.ti, label %bb.cw, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol

bb.cw:                                            ; preds = %.lr.ph.i22.i423.prol
  %i.tj = add nsw i32 %i.td, -1                   ; 2 uses
  store i32 %i.tj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol: ; preds = %bb.cw, %.lr.ph.i22.i423.prol
  %i.tk = phi i32 [ %i.td, %.lr.ph.i22.i423.prol ], [ %i.tj, %bb.cw ] ; 2 uses
  %prol.iter963.next = add i64 %prol.iter963, 1   ; 2 uses
  %prol.iter963.cmp.not = icmp eq i64 %prol.iter963.next, %xtraiter961
  br i1 %prol.iter963.cmp.not, label %.lr.ph.i22.i423.prol.loopexit, label %.lr.ph.i22.i423.prol, !llvm.loop !6727

.lr.ph.i22.i423.prol.loopexit:                    ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol, %.lr.ph.preheader.i21.i421
  %.06.i.i424.unr = phi i64 [ %.sroa.7.06888.i417, %.lr.ph.preheader.i21.i421 ], [ %i.te, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol ]
  %.unr964 = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i.i422, %.lr.ph.preheader.i21.i421 ], [ %i.tk, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.prol ]
  %i.tl = icmp ult i64 %.sroa.7.06888.i417, 4
  br i1 %i.tl, label %._crit_edge.i24.i427, label %.lr.ph.i22.i423

._crit_edge.i24.i427:                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.3, %.lr.ph.i22.i423.prol.loopexit
  %i.tm = trunc i64 %.sroa.7.06888.i417 to i32
  %i.tn = sub i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i.i415, %i.tm
  store i32 %i.tn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %bb.db

.lr.ph.i22.i423:                                  ; preds = %.lr.ph.i22.i423.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.3
  %.06.i.i424 = phi i64 [ %i.uh, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.3 ], [ %.06.i.i424.unr, %.lr.ph.i22.i423.prol.loopexit ] ; 4 uses
  %i.to = phi i32 [ %i.un, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.3 ], [ %.unr964, %.lr.ph.i22.i423.prol.loopexit ] ; 2 uses
  %i.tp = getelementptr [8 x i8], ptr %.sroa.037.06790.i416, i64 %.06.i.i424
  %i.tq = getelementptr i8, ptr %i.tp, i64 -4
  %i.tr = load i8, ptr %i.tq, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ts = trunc nuw i8 %i.tr to i1
  br i1 %i.ts, label %bb.cx, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425

bb.cx:                                            ; preds = %.lr.ph.i22.i423
  %i.tt = add nsw i32 %i.to, -1                   ; 2 uses
  store i32 %i.tt, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425: ; preds = %bb.cx, %.lr.ph.i22.i423
  %i.tu = phi i32 [ %i.to, %.lr.ph.i22.i423 ], [ %i.tt, %bb.cx ] ; 2 uses
  %i.tv = getelementptr [8 x i8], ptr %.sroa.037.06790.i416, i64 %.06.i.i424
  %i.tw = getelementptr i8, ptr %i.tv, i64 -12
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ty = trunc nuw i8 %i.tx to i1
  br i1 %i.ty, label %bb.cy, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.1

bb.cy:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425
  %i.tz = add nsw i32 %i.tu, -1                   ; 2 uses
  store i32 %i.tz, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.1: ; preds = %bb.cy, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425
  %i.ua = phi i32 [ %i.tu, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425 ], [ %i.tz, %bb.cy ] ; 2 uses
  %i.ub = getelementptr [8 x i8], ptr %.sroa.037.06790.i416, i64 %.06.i.i424
  %i.uc = getelementptr i8, ptr %i.ub, i64 -20
  %i.ud = load i8, ptr %i.uc, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.cz, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.2

bb.cz:                                            ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.i425.1
end_hunk_7
