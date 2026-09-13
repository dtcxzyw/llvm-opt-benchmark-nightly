Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_T1_":bb.a

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.cr = load <2 x i32>, ptr %i.cp, align 4, !tbaa !84
  store <2 x i32> %i.cr, ptr %i.cq, align 4, !tbaa !84
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.co, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.h ]
  %.sroa.03.0.extract.trunc.i.i12.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.1.i11.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i17.i = load i32, ptr %i.cs, align 4, !tbaa !627 ; 2 uses
  %i.ct = icmp slt i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.extract.trunc.i.i12.i.i.i
  br i1 %i.ct, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.cu = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i ; 2 uses
  store i32 %.val.i.i.i.i.i17.i, ptr %i.cu, align 4, !tbaa !627
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !628
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !1282

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cy = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cy, align 4
  %i.cz = icmp sgt i64 %i.bt, 8
  br i1 %i.cz, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !1284

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 5 uses
  %.02544 = phi i64 [ %i.db, %bb.b ], [ %2, %.lr.ph ]
  %i.da = phi i64 [ %i.em, %bb.b ], [ %i.d, %.lr.ph ]
  %i.db = add nsw i64 %.02544, -1                 ; 3 uses
  %i.dc = lshr i64 %i.da, 1
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dc ; 5 uses
  %i.de = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !627 ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.dd, align 4, !tbaa !627 ; 5 uses
  %i.df = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.de, align 4, !tbaa !627 ; 6 uses
  br i1 %i.df, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.dg = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !84
  %i.dj = load <2 x i32>, ptr %.fr27, align 4, !tbaa !84
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.di, ptr %i.g, align 4, !tbaa !84
  store <2 x i32> %i.dj, ptr %i.dd, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dk = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dl = load i32, ptr %.fr27, align 4, !tbaa !84 ; 2 uses
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dl, ptr %i.de, align 4, !tbaa !84
  %i.dm = getelementptr inbounds i8, ptr %storemerge2445, i64 -4 ; 2 uses
  %i.dn = load i32, ptr %i.g, align 4, !tbaa !84
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !84
  store i32 %i.do, ptr %i.g, align 4, !tbaa !84
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dl, ptr %i.f, align 4, !tbaa !84
  %i.dp = load i32, ptr %i.g, align 4, !tbaa !84
  %i.dq = load i32, ptr %i.h, align 4, !tbaa !84
  store i32 %i.dq, ptr %i.g, align 4, !tbaa !84
  store i32 %i.dp, ptr %i.h, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.dr = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = load i32, ptr %i.h, align 4, !tbaa !84
  %i.dt = load <2 x i32>, ptr %.fr27, align 4, !tbaa !84
  store i32 %.val.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.ds, ptr %i.g, align 4, !tbaa !84
  store <2 x i32> %i.dt, ptr %i.f, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.du = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.dv = load i32, ptr %.fr27, align 4, !tbaa !84 ; 2 uses
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %.val1.i27.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dv, ptr %i.de, align 4, !tbaa !84
  %i.dw = getelementptr inbounds i8, ptr %storemerge2445, i64 -4 ; 2 uses
  %i.dx = load i32, ptr %i.g, align 4, !tbaa !84
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !84
  store i32 %i.dy, ptr %i.g, align 4, !tbaa !84
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store i32 %.val1.i.i.i, ptr %.fr27, align 4, !tbaa !84
  store i32 %i.dv, ptr %i.dd, align 4, !tbaa !84
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.ea = load i32, ptr %i.g, align 4, !tbaa !84
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !84
  store i32 %i.eb, ptr %i.g, align 4, !tbaa !84
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.ed, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr27, align 4, !tbaa !627 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.ed, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !627 ; 2 uses
  %i.ec = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ec, label %bb.t, label %.preheader.i.i, !llvm.loop !1285

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !627 ; 2 uses
  %i.ee = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.ee, label %.preheader.i.i, label %bb.u, !llvm.loop !1286

bb.u:                                             ; preds = %.preheader.i.i
  %i.ef = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ef, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEET_SF_SF_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store i32 %.val1.i9.i.i, ptr %.sroa.012.1.i.i, align 4, !tbaa !84
  store i32 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 4, !tbaa !84
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !84
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !84
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !84
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !84
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !1287

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2445, i64 noundef %i.db)
  %i.ek = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.el = sub i64 %i.ek, %i.a                     ; 2 uses
  %i.em = ashr exact i64 %i.el, 3                 ; 2 uses
  %i.en = icmp sgt i64 %i.em, 16
  br i1 %i.en, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !1280

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZL30llama_sampler_top_n_sigma_namePK13llama_sampler(ptr nofree readnone captures(none) %0) #14 {
bb.a:
  ret ptr @.str.286
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31llama_sampler_top_n_sigma_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !206
  %i.d = fcmp ugt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 9 uses
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !92     ; 7 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %3 = load float, ptr %2, align 4, !tbaa !290    ; 2 uses
  %4 = add i64 %i.f, -1                           ; 2 uses
  %xtraiter.a = and i64 %i.f, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.f, -2
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %.04052.epil.init = phi i64 [ 0, %bb.c ], [ %i.ag, %.unr-lcssa ]
  %.04151.epil.init = phi i64 [ 0, %bb.c ], [ %.142.1, %.unr-lcssa ] ; 2 uses
  %.04350.epil.init = phi float [ 0.000000e+00, %bb.c ], [ %.144.1, %.unr-lcssa ] ; 2 uses
  %.04749.epil.init = phi float [ %3, %bb.c ], [ %.148.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod83 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.04052.epil.init
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !290 ; 4 uses
  %i.l = fcmp une float %i.k, -inf
  br i1 %i.l, label %bb.d, label %.epilog-lcssa

bb.d:                                             ; preds = %.epil.preheader
  %i.m = fcmp olt float %.04749.epil.init, %i.k
  %.sroa.speculated.epil = select i1 %i.m, float %i.k, float %.04749.epil.init
  %i.n = fadd float %.04350.epil.init, %i.k
  %i.o = add i64 %.04151.epil.init, 1
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.d, %.unr-lcssa
  %.148.lcssa = phi float [ %.148.1, %.unr-lcssa ], [ %.sroa.speculated.epil, %bb.d ], [ %.04749.epil.init, %.epil.preheader ]
  %.144.lcssa = phi float [ %.144.1, %.unr-lcssa ], [ %i.n, %bb.d ], [ %.04350.epil.init, %.epil.preheader ]
  %.142.lcssa = phi i64 [ %.142.1, %.unr-lcssa ], [ %i.o, %bb.d ], [ %.04151.epil.init, %.epil.preheader ] ; 2 uses
  %.not = icmp eq i64 %.142.lcssa, 0              ; 2 uses
  %i.p = uitofp i64 %.142.lcssa to float          ; 2 uses
  %i.q = fdiv float %.144.lcssa, %i.p
  %i.r = select i1 %.not, float 0.000000e+00, float %i.q ; 3 uses
  %xtraiter87 = and i64 %i.f, 1
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %.epil.preheader86, label %.new84

.new84:                                           ; preds = %.epilog-lcssa
  %unroll_iter92 = and i64 %i.f, -2
  br label %bb.k

bb.e:                                             ; preds = %bb.i, %.new
  %.04052 = phi i64 [ 0, %.new ], [ %i.ag, %bb.i ] ; 3 uses
  %.04151 = phi i64 [ 0, %.new ], [ %.142.1, %bb.i ] ; 2 uses
  %.04350 = phi float [ 0.000000e+00, %.new ], [ %.144.1, %bb.i ] ; 2 uses
  %.04749 = phi float [ %3, %.new ], [ %.148.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.04052
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !290 ; 4 uses
  %i.v = fcmp une float %i.u, -inf
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = fcmp olt float %.04749, %i.u
  %.sroa.speculated = select i1 %i.w, float %i.u, float %.04749
  %i.x = fadd float %.04350, %i.u
  %i.y = add i64 %.04151, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.148 = phi float [ %.sroa.speculated, %bb.f ], [ %.04749, %bb.e ] ; 3 uses
  %.144 = phi float [ %i.x, %bb.f ], [ %.04350, %bb.e ] ; 2 uses
  %.142 = phi i64 [ %i.y, %bb.f ], [ %.04151, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.04052
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !290 ; 4 uses
  %i.ac = fcmp une float %i.ab, -inf
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = fcmp olt float %.148, %i.ab
  %.sroa.speculated.1 = select i1 %i.ad, float %i.ab, float %.148
  %i.ae = fadd float %.144, %i.ab
  %i.af = add i64 %.142, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.148.1 = phi float [ %.sroa.speculated.1, %bb.h ], [ %.148, %bb.g ] ; 3 uses
  %.144.1 = phi float [ %i.ae, %bb.h ], [ %.144, %bb.g ] ; 3 uses
  %.142.1 = phi i64 [ %i.af, %bb.h ], [ %.142, %bb.g ] ; 3 uses
  %i.ag = add nuw i64 %.04052, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !1288

.unr-lcssa85:                                     ; preds = %bb.o
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %.epilog-lcssa89, label %.epil.preheader86

.epil.preheader86:                                ; preds = %.unr-lcssa85, %.epilog-lcssa
  %.03854.epil.init = phi i64 [ 0, %.epilog-lcssa ], [ %i.bl, %.unr-lcssa85 ]
  %.03953.epil.init = phi float [ 0.000000e+00, %.epilog-lcssa ], [ %.1.1, %.unr-lcssa85 ] ; 2 uses
  %lcmp.mod91 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.03854.epil.init
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !290 ; 2 uses
  %i.ak = fcmp une float %i.aj, -inf
  br i1 %i.ak, label %bb.j, label %.epilog-lcssa89

bb.j:                                             ; preds = %.epil.preheader86
  %i.al = fsub float %i.aj, %i.r
  %i.am = fpext float %i.al to double
  %i.an = tail call double @pow(double noundef %i.am, double noundef 2.000000e+00) #40
  %i.ao = fpext float %.03953.epil.init to double
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = fptrunc double %i.ap to float
  br label %.epilog-lcssa89

.epilog-lcssa89:                                  ; preds = %.epil.preheader86, %bb.j, %.unr-lcssa85
  %.1.lcssa = phi float [ %.1.1, %.unr-lcssa85 ], [ %i.aq, %bb.j ], [ %.03953.epil.init, %.epil.preheader86 ]
  br i1 %.not, label %.lr.ph, label %bb.p

bb.k:                                             ; preds = %bb.o, %.new84
  %.03854 = phi i64 [ 0, %.new84 ], [ %i.bl, %bb.o ] ; 3 uses
  %.03953 = phi float [ 0.000000e+00, %.new84 ], [ %.1.1, %bb.o ] ; 2 uses
  %niter93 = phi i64 [ 0, %.new84 ], [ %niter93.next.1, %bb.o ]
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.03854
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !290 ; 2 uses
  %i.au = fcmp une float %i.at, -inf
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = fsub float %i.at, %i.r
  %i.aw = fpext float %i.av to double
  %i.ax = tail call double @pow(double noundef %i.aw, double noundef 2.000000e+00) #40
  %i.ay = fpext float %.03953 to double
  %i.az = fadd double %i.ax, %i.ay
  %i.ba = fptrunc double %i.az to float
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi float [ %i.ba, %bb.l ], [ %.03953, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.03854
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !290 ; 2 uses
  %i.be = fcmp une float %i.bd, -inf
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = fsub float %i.bd, %i.r
  %i.bg = fpext float %i.bf to double
  %i.bh = tail call double @pow(double noundef %i.bg, double noundef 2.000000e+00) #40
  %i.bi = fpext float %.1 to double
  %i.bj = fadd double %i.bh, %i.bi
  %i.bk = fptrunc double %i.bj to float
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.1 = phi float [ %i.bk, %bb.n ], [ %.1, %bb.m ] ; 3 uses
  %i.bl = add nuw i64 %.03854, 2                  ; 2 uses
  %niter93.next.1 = add i64 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i64 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %.unr-lcssa85, label %bb.k, !llvm.loop !1289

bb.p:                                             ; preds = %.epilog-lcssa89
  %i.bm = fdiv float %.1.lcssa, %i.p
  %sqrtf = tail call float @sqrtf(float noundef %i.bm) #40
  %.pre = load i64, ptr %i.e, align 8, !tbaa !93  ; 2 uses
  %.not56 = icmp eq i64 %.pre, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.epilog-lcssa89, %bb.p
  %i.bn = phi float [ %sqrtf, %bb.p ], [ 0.000000e+00, %.epilog-lcssa89 ]
  %i.bo = phi i64 [ %.pre, %bb.p ], [ %i.f, %.epilog-lcssa89 ] ; 4 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !92    ; 9 uses
  %i.bq = load float, ptr %i.b, align 4, !tbaa !206
  %i.br = fneg float %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bn, float %.148.lcssa) ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.bt = and i64 %i.bo, 7                        ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 8, i64 %i.bt
  %n.vec = sub i64 %i.bo, %i.bv                   ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue79, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue79 ] ; 9 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 28 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 52 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 76 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 88 ; 2 uses
  %i.cm = load float, ptr %i.ce, align 4, !tbaa !290
  %i.cn = load float, ptr %i.cf, align 4, !tbaa !290
  %i.co = load float, ptr %i.cg, align 4, !tbaa !290
  %i.cp = load float, ptr %i.ch, align 4, !tbaa !290
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = load float, ptr %i.ci, align 4, !tbaa !290
  %i.cv = load float, ptr %i.cj, align 4, !tbaa !290
  %i.cw = load float, ptr %i.ck, align 4, !tbaa !290
  %i.cx = load float, ptr %i.cl, align 4, !tbaa !290
  %i.cy = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cv, i64 1
  %i.da = insertelement <4 x float> %i.cz, float %i.cw, i64 2
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 3
  %i.dc = fcmp olt <4 x float> %i.ct, %broadcast.splat ; 4 uses
  %i.dd = fcmp olt <4 x float> %i.db, %broadcast.splat ; 4 uses
  %i.de = extractelement <4 x i1> %i.dc, i64 0
  br i1 %i.de, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store float -inf, ptr %i.ce, align 4, !tbaa !290
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.df = extractelement <4 x i1> %i.dc, i64 1
  br i1 %i.df, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue
  store float -inf, ptr %i.cf, align 4, !tbaa !290
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue
  %i.dg = extractelement <4 x i1> %i.dc, i64 2
  br i1 %i.dg, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  store float -inf, ptr %i.cg, align 4, !tbaa !290
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.dh = extractelement <4 x i1> %i.dc, i64 3
  br i1 %i.dh, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  store float -inf, ptr %i.ch, align 4, !tbaa !290
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.di = extractelement <4 x i1> %i.dd, i64 0
  br i1 %i.di, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  store float -inf, ptr %i.ci, align 4, !tbaa !290
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.dj = extractelement <4 x i1> %i.dd, i64 1
  br i1 %i.dj, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  store float -inf, ptr %i.cj, align 4, !tbaa !290
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.dk = extractelement <4 x i1> %i.dd, i64 2
  br i1 %i.dk, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  store float -inf, ptr %i.ck, align 4, !tbaa !290
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.dl = extractelement <4 x i1> %i.dd, i64 3
  br i1 %i.dl, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  store float -inf, ptr %i.cl, align 4, !tbaa !290
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1290

scalar.ph.preheader:                              ; preds = %pred.store.continue79, %.lr.ph
  %.055.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %pred.store.continue79 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %.055 = phi i64 [ %i.dr, %bb.r ], [ %.055.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %.055
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !290
  %i.dq = fcmp olt float %i.dp, %i.bs
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %scalar.ph
  store float -inf, ptr %i.do, align 4, !tbaa !290
  br label %bb.r

bb.r:                                             ; preds = %scalar.ph, %bb.q
  %i.dr = add nuw i64 %.055, 1                    ; 2 uses
  %exitcond58.not = icmp eq i64 %i.dr, %i.bo
  br i1 %exitcond58.not, label %.loopexit, label %scalar.ph, !llvm.loop !1291

.loopexit:                                        ; preds = %bb.r, %bb.p, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress memory(readwrite, argmem: read, target_mem: none) uwtable
define internal noalias noundef nonnull ptr @_ZL31llama_sampler_top_n_sigma_clonePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load float, ptr %i.b, align 4, !tbaa !206 ; 2 uses
  %i.d = fcmp ugt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !1292 ; 2 uses
  store ptr @.str.26, ptr %i.e, align 8, !tbaa !135
  br label %llama_sampler_init_top_n_sigma.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37, !inline_history !1293 ; 2 uses
  store float %i.c, ptr %i.f, align 4, !tbaa !206
  br label %llama_sampler_init_top_n_sigma.exit

llama_sampler_init_top_n_sigma.exit:              ; preds = %bb.b, %bb.c
  %_ZL27llama_sampler_top_n_sigma_i.sink.i = phi ptr [ @_ZL27llama_sampler_top_n_sigma_i, %bb.c ], [ @_ZL21llama_sampler_empty_i, %bb.b ]
  %.sink.i = phi ptr [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37, !inline_history !1293 ; 3 uses
  store ptr %_ZL27llama_sampler_top_n_sigma_i.sink.i, ptr %i.g, align 16, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sink.i, ptr %i.h, align 8, !tbaa !54
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL30llama_sampler_top_n_sigma_freeP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 4) #39
  br label %bb.c
end_hunk_0
