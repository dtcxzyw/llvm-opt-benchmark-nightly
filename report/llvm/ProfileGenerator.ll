Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ProfileGenerator?download=true
inline.NumInlined: 5715
inline.NumDeleted: 2968
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 33
begin_hunk_0_@"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_":bb.a
bb.e:                                             ; preds = %bb.c
  %.val3.i10.i.i = load double, ptr %.pn19.i, align 8, !tbaa !541 ; 3 uses
  %i.ay = getelementptr i8, ptr %.pn19.i, i64 8
  %.val4.i11.i.i = load i64, ptr %i.ay, align 8   ; 2 uses
  %i.az = fcmp une double %.val.i.i, %.val3.i10.i.i
  %i.ba = fcmp ogt double %.val.i.i, %.val3.i10.i.i
  %i.bb = icmp ult i64 %.val1.i.i, %.val4.i11.i.i
  %.0.i.i12.i.i = select i1 %i.az, i1 %i.ba, i1 %i.bb
  br i1 %.0.i.i12.i.i, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.val4.i16.i.i = phi i64 [ %.val4.i.i.i, %.lr.ph.i.i ], [ %.val4.i11.i.i, %bb.e ]
  %.val3.i15.i.i = phi double [ %.val3.i.i.i, %.lr.ph.i.i ], [ %.val3.i10.i.i, %bb.e ]
  %.sroa.0.014.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.e ] ; 4 uses
  %.sroa.06.013.i.i = phi ptr [ %.sroa.0.014.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.e ] ; 2 uses
  store double %.val3.i15.i.i, ptr %.sroa.06.013.i.i, align 8, !tbaa !541
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.i, i64 8
  store i64 %.val4.i16.i.i, ptr %i.bc, align 8, !tbaa !542
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i, i64 -16 ; 2 uses
  %.val3.i.i.i = load double, ptr %.sroa.0.0.i.i, align 8, !tbaa !541 ; 3 uses
  %i.bd = getelementptr i8, ptr %.sroa.0.014.i.i, i64 -8
  %.val4.i.i.i = load i64, ptr %i.bd, align 8     ; 2 uses
  %i.be = fcmp une double %.val.i.i, %.val3.i.i.i
  %i.bf = fcmp ogt double %.val.i.i, %.val3.i.i.i
  %i.bg = icmp ult i64 %.val1.i.i, %.val4.i.i.i
  %.0.i.i.i.i = select i1 %i.be, i1 %i.bf, i1 %i.bg
  br i1 %.0.i.i.i.i, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i", !llvm.loop !24

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i": ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.e ], [ %.sroa.0.014.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %.val.i.i, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !541
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store i64 %.val1.i.i, ptr %i.bh, align 8, !tbaa !542
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !25

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bi = lshr i64 %i.d, 1                        ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bi ; 4 uses
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_"(ptr %0, ptr %i.bj)
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_"(ptr %i.bj, ptr %1)
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.a, %i.bk
  %i.bm = ashr exact i64 %i.bl, 4
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_SJ_T0_SK_T1_"(ptr %0, ptr %i.bj, ptr %1, i64 noundef %i.bi, i64 noundef %i.bm)
  br label %common.ret30
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_"(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_"(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_T2_"(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_SJ_T0_SK_T1_SK_T2_"(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_"(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_SJ_T0_SK_T1_T2_"(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_.exit.i"
  %i.g = phi i64 [ %i.la, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_.exit.i" ], [ %i.b, %bb.a ] ; 6 uses
  %.sroa.044.047.i = phi ptr [ %i.kz, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_SJ_T0_.exit.i" ], [ %0, %bb.a ] ; 31 uses
  %i.h = getelementptr i8, ptr %.sroa.044.047.i, i64 8 ; 11 uses
  %.sroa.08.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.044.047.i, i64 16 ; 6 uses
  %.val.i.i.i = load double, ptr %.sroa.08.020.i.ptr.i, align 8, !tbaa !541 ; 4 uses
  %i.i = getelementptr i8, ptr %.sroa.044.047.i, i64 24 ; 2 uses
  %.val1.i.i.i = load i64, ptr %i.i, align 8      ; 3 uses
  %.val2.i.i.i = load double, ptr %.sroa.044.047.i, align 8, !tbaa !541 ; 3 uses
  %.val3.i.i.i = load i64, ptr %i.h, align 8      ; 2 uses
  %i.j = fcmp une double %.val.i.i.i, %.val2.i.i.i
  %i.k = fcmp ogt double %.val.i.i.i, %.val2.i.i.i
  %i.l = icmp ult i64 %.val1.i.i.i, %.val3.i.i.i
  %.0.i.i.i.i = select i1 %i.j, i1 %i.k, i1 %i.l
  br i1 %.0.i.i.i.i, label %bb.b, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = ptrtoint ptr %.sroa.08.020.i.ptr.i to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = ashr exact i64 %i.n, 4                   ; 5 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.044.047.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.069.i.i.i.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.t = load double, ptr %i.r, align 8, !tbaa !539
  store double %i.t, ptr %i.s, align 8, !tbaa !541
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !542
  %i.x = add nsw i64 %.010.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1078

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.o, 4
  br i1 %i.y, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  %i.ab = load double, ptr %i.z, align 8, !tbaa !539
  store double %i.ab, ptr %i.aa, align 8, !tbaa !541
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !542
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  %i.ah = load double, ptr %i.af, align 8, !tbaa !539
  store double %i.ah, ptr %i.ag, align 8, !tbaa !541
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !73
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !542
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  %i.an = load double, ptr %i.al, align 8, !tbaa !539
  store double %i.an, ptr %i.am, align 8, !tbaa !541
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !73
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !542
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !539
  store double %i.at, ptr %i.as, align 8, !tbaa !541
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -56
  %i.av = load i64, ptr %i.au, align 8, !tbaa !73
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !542
  %i.ax = add nsw i64 %.010.i.i.i.i.i.i.i, -4
  %i.ay = icmp sgt i64 %.010.i.i.i.i.i.i.i, 4
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, !llvm.loop !23

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store double %.val.i.i.i, ptr %.sroa.044.047.i, align 8, !tbaa !541
  store i64 %.val1.i.i.i, ptr %i.h, align 8, !tbaa !542
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.i"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, %.lr.ph.i.i
  %.val3.i.i.1.i = phi i64 [ %.val1.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %.val3.i.i.i, %.lr.ph.i.i ]
  %.val2.i.i.1.i = phi double [ %.val.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %.val2.i.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.08.020.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.044.047.i, i64 32 ; 8 uses
  %.val.i.i.1.i = load double, ptr %.sroa.08.020.i.ptr.1.i, align 8, !tbaa !541 ; 9 uses
  %i.az = getelementptr i8, ptr %.sroa.044.047.i, i64 40 ; 2 uses
  %.val1.i.i.1.i = load i64, ptr %i.az, align 8   ; 6 uses
  %i.ba = fcmp une double %.val.i.i.1.i, %.val2.i.i.1.i
  %i.bb = fcmp ogt double %.val.i.i.1.i, %.val2.i.i.1.i
  %i.bc = icmp ult i64 %.val1.i.i.1.i, %.val3.i.i.1.i
  %.0.i.i.i.1.i = select i1 %i.ba, i1 %i.bb, i1 %i.bc
  br i1 %.0.i.i.i.1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.i"
  %.val3.i10.i.i.1.i = load double, ptr %.sroa.08.020.i.ptr.i, align 8, !tbaa !541 ; 3 uses
  %.val4.i11.i.i.1.i = load i64, ptr %i.i, align 8 ; 2 uses
  %i.bd = fcmp une double %.val.i.i.1.i, %.val3.i10.i.i.1.i
  %i.be = fcmp ogt double %.val.i.i.1.i, %.val3.i10.i.i.1.i
  %i.bf = icmp ult i64 %.val1.i.i.1.i, %.val4.i11.i.i.1.i
  %.0.i.i12.i.i.1.i = select i1 %i.bd, i1 %i.be, i1 %i.bf
  br i1 %.0.i.i12.i.i.1.i, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.1.i"

.lr.ph.i.i.1.i:                                   ; preds = %bb.c, %.lr.ph.i.i.1.i
  %.val4.i16.i.i.1.i = phi i64 [ %.val4.i.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.val4.i11.i.i.1.i, %bb.c ]
  %.val3.i15.i.i.1.i = phi double [ %.val3.i.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.val3.i10.i.i.1.i, %bb.c ]
  %.sroa.0.014.i.i.1.i = phi ptr [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.sroa.08.020.i.ptr.i, %bb.c ] ; 4 uses
  %.sroa.06.013.i.i.1.i = phi ptr [ %.sroa.0.014.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.sroa.08.020.i.ptr.1.i, %bb.c ] ; 2 uses
  store double %.val3.i15.i.i.1.i, ptr %.sroa.06.013.i.i.1.i, align 8, !tbaa !541
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.i.1.i, i64 8
  store i64 %.val4.i16.i.i.1.i, ptr %i.bg, align 8, !tbaa !542
  %.sroa.0.0.i.i.1.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i.1.i, i64 -16 ; 2 uses
  %.val3.i.i.i.1.i = load double, ptr %.sroa.0.0.i.i.1.i, align 8, !tbaa !541 ; 3 uses
  %i.bh = getelementptr i8, ptr %.sroa.0.014.i.i.1.i, i64 -8
  %.val4.i.i.i.1.i = load i64, ptr %i.bh, align 8 ; 2 uses
  %i.bi = fcmp une double %.val.i.i.1.i, %.val3.i.i.i.1.i
  %i.bj = fcmp ogt double %.val.i.i.1.i, %.val3.i.i.i.1.i
  %i.bk = icmp ult i64 %.val1.i.i.1.i, %.val4.i.i.i.1.i
  %.0.i.i.i.i.1.i = select i1 %i.bi, i1 %i.bj, i1 %i.bk
  br i1 %.0.i.i.i.i.1.i, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.1.i", !llvm.loop !24

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.1.i": ; preds = %.lr.ph.i.i.1.i, %bb.c
  %.sroa.06.0.lcssa.i.i.1.i = phi ptr [ %.sroa.08.020.i.ptr.1.i, %bb.c ], [ %.sroa.0.014.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store double %.val.i.i.1.i, ptr %.sroa.06.0.lcssa.i.i.1.i, align 8, !tbaa !541
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.1.i, i64 8
  store i64 %.val1.i.i.1.i, ptr %i.bl, align 8, !tbaa !542
  %.val2.i.i.2.pre.i = load double, ptr %.sroa.044.047.i, align 8, !tbaa !541
  %.val3.i.i.2.pre.i = load i64, ptr %i.h, align 8
  br label %bb.e

bb.d:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.i"
  %i.bm = ptrtoint ptr %.sroa.08.020.i.ptr.1.i to i64
  %i.bn = sub i64 %i.bm, %i.g
  %i.bo = ashr exact i64 %i.bn, 4                 ; 5 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.1.i

.lr.ph.i.i.i.i.i.preheader.i.1.i:                 ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.044.047.i, i64 48 ; 2 uses
  %xtraiter149 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol

.lr.ph.i.i.i.i.i.i.1.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.1.i, %.lr.ph.i.i.i.i.i.i.1.i.prol
  %.010.i.i.i.i.i.i.1.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bo, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %.069.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %.078.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %.sroa.08.020.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %i.br = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bt = load double, ptr %i.br, align 8, !tbaa !539
  store double %i.bt, ptr %i.bs, align 8, !tbaa !541
  %i.bu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !73
  %i.bw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !542
  %i.bx = add nsw i64 %.010.i.i.i.i.i.i.1.i.prol, -1 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol, !llvm.loop !1079

.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.1.i
  %.010.i.i.i.i.i.i.1.i.unr = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.069.i.i.i.i.i.i.1.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.078.i.i.i.i.i.i.1.i.unr = phi ptr [ %.sroa.08.020.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.br, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %i.by = icmp ult i64 %i.bo, 4
  br i1 %i.by, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.1.i, label %.lr.ph.i.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.i.1.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i
  %.010.i.i.i.i.i.i.1.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.010.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.1.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.069.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.1.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.078.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -16
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !539
  store double %i.cb, ptr %i.ca, align 8, !tbaa !541
  %i.cc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !73
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !542
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -32
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -32
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !539
  store double %i.ch, ptr %i.cg, align 8, !tbaa !541
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !73
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -24
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !542
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -48
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -48
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !539
  store double %i.cn, ptr %i.cm, align 8, !tbaa !541
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !73
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -40
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !542
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !539
  store double %i.ct, ptr %i.cs, align 8, !tbaa !541
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !73
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -56
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !542
  %i.cx = add nsw i64 %.010.i.i.i.i.i.i.1.i, -4
  %i.cy = icmp sgt i64 %.010.i.i.i.i.i.i.1.i, 4
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.1.i, !llvm.loop !23

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i, %bb.d
  store double %.val.i.i.1.i, ptr %.sroa.044.047.i, align 8, !tbaa !541
  store i64 %.val1.i.i.1.i, ptr %i.h, align 8, !tbaa !542
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.1.i"
  %.val3.i.i.2.i = phi i64 [ %.val1.i.i.1.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.1.i ], [ %.val3.i.i.2.pre.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.1.i" ]
  %.val2.i.i.2.i = phi double [ %.val.i.i.1.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.1.i ], [ %.val2.i.i.2.pre.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.1.i" ] ; 2 uses
  %.sroa.08.020.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.044.047.i, i64 48 ; 8 uses
  %.val.i.i.2.i = load double, ptr %.sroa.08.020.i.ptr.2.i, align 8, !tbaa !541 ; 9 uses
  %i.cz = getelementptr i8, ptr %.sroa.044.047.i, i64 56 ; 2 uses
  %.val1.i.i.2.i = load i64, ptr %i.cz, align 8   ; 6 uses
  %i.da = fcmp une double %.val.i.i.2.i, %.val2.i.i.2.i
  %i.db = fcmp ogt double %.val.i.i.2.i, %.val2.i.i.2.i
  %i.dc = icmp ult i64 %.val1.i.i.2.i, %.val3.i.i.2.i
  %.0.i.i.i.2.i = select i1 %i.da, i1 %i.db, i1 %i.dc
  br i1 %.0.i.i.i.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3.i10.i.i.2.i = load double, ptr %.sroa.08.020.i.ptr.1.i, align 8, !tbaa !541 ; 3 uses
  %.val4.i11.i.i.2.i = load i64, ptr %i.az, align 8 ; 2 uses
  %i.dd = fcmp une double %.val.i.i.2.i, %.val3.i10.i.i.2.i
  %i.de = fcmp ogt double %.val.i.i.2.i, %.val3.i10.i.i.2.i
  %i.df = icmp ult i64 %.val1.i.i.2.i, %.val4.i11.i.i.2.i
  %.0.i.i12.i.i.2.i = select i1 %i.dd, i1 %i.de, i1 %i.df
  br i1 %.0.i.i12.i.i.2.i, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.2.i"

.lr.ph.i.i.2.i:                                   ; preds = %bb.f, %.lr.ph.i.i.2.i
  %.val4.i16.i.i.2.i = phi i64 [ %.val4.i.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.val4.i11.i.i.2.i, %bb.f ]
  %.val3.i15.i.i.2.i = phi double [ %.val3.i.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.val3.i10.i.i.2.i, %bb.f ]
  %.sroa.0.014.i.i.2.i = phi ptr [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.sroa.08.020.i.ptr.1.i, %bb.f ] ; 4 uses
  %.sroa.06.013.i.i.2.i = phi ptr [ %.sroa.0.014.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.sroa.08.020.i.ptr.2.i, %bb.f ] ; 2 uses
  store double %.val3.i15.i.i.2.i, ptr %.sroa.06.013.i.i.2.i, align 8, !tbaa !541
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.i.2.i, i64 8
  store i64 %.val4.i16.i.i.2.i, ptr %i.dg, align 8, !tbaa !542
  %.sroa.0.0.i.i.2.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i.2.i, i64 -16 ; 2 uses
  %.val3.i.i.i.2.i = load double, ptr %.sroa.0.0.i.i.2.i, align 8, !tbaa !541 ; 3 uses
  %i.dh = getelementptr i8, ptr %.sroa.0.014.i.i.2.i, i64 -8
  %.val4.i.i.i.2.i = load i64, ptr %i.dh, align 8 ; 2 uses
  %i.di = fcmp une double %.val.i.i.2.i, %.val3.i.i.i.2.i
  %i.dj = fcmp ogt double %.val.i.i.2.i, %.val3.i.i.i.2.i
  %i.dk = icmp ult i64 %.val1.i.i.2.i, %.val4.i.i.i.2.i
  %.0.i.i.i.i.2.i = select i1 %i.di, i1 %i.dj, i1 %i.dk
  br i1 %.0.i.i.i.i.2.i, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.2.i", !llvm.loop !24

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN4llvm10sampleprof20ProfileGeneratorBase16calculateDensityERKNSC_16SampleProfileMapEE3$_0EEEvT_T0_.exit.i.2.i": ; preds = %.lr.ph.i.i.2.i, %bb.f
  %.sroa.06.0.lcssa.i.i.2.i = phi ptr [ %.sroa.08.020.i.ptr.2.i, %bb.f ], [ %.sroa.0.014.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store double %.val.i.i.2.i, ptr %.sroa.06.0.lcssa.i.i.2.i, align 8, !tbaa !541
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.2.i, i64 8
  store i64 %.val1.i.i.2.i, ptr %i.dl, align 8, !tbaa !542
  %.val2.i.i.3.pre.i = load double, ptr %.sroa.044.047.i, align 8, !tbaa !541
  %.val3.i.i.3.pre.i = load i64, ptr %i.h, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.dm = ptrtoint ptr %.sroa.08.020.i.ptr.2.i to i64
  %i.dn = sub i64 %i.dm, %i.g
  %i.do = ashr exact i64 %i.dn, 4                 ; 5 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIdmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.2.i

.lr.ph.i.i.i.i.i.preheader.i.2.i:                 ; preds = %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.044.047.i, i64 64 ; 2 uses
  %xtraiter152 = and i64 %i.do, 3                 ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol

.lr.ph.i.i.i.i.i.i.2.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.2.i, %.lr.ph.i.i.i.i.i.i.2.i.prol
  %.010.i.i.i.i.i.i.2.i.prol = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.do, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %.069.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.dq, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %.078.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %.sroa.08.020.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %prol.iter154 = phi i64 [ %prol.iter154.next, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %i.dr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
end_hunk_0
