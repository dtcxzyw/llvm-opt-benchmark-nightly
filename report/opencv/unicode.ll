Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/unicode?download=true
inline.NumInlined: 8690
inline.NumDeleted: 3216
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a

bb.ek:                                            ; preds = %.noexc228.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yg, ptr align 8 %.sroa.034.4.i, i64 %i.xy, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i: ; preds = %bb.ek, %.noexc228.i.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %.not.i17.i.i.i225.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i225.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.xy) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i: ; preds = %bb.el, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i224.i.i
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.ye
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i": ; preds = %bb.eg, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.i.i", %.lr.ph449.i.i
  %i.yl = add i64 %.078446.i.i, 1                 ; 6 uses
  %i.ym = sub i64 %i.yl, %.0346444.i.i            ; 2 uses
  %.not.i230.i.i = icmp eq i64 %i.yl, %.0346444.i.i
  br i1 %.not.i230.i.i, label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i", label %bb.em

bb.em:                                            ; preds = %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i"
  %.not.i.i231.i.i = icmp eq ptr %.sroa.25.4.i, %.sroa.51.4.i
  br i1 %.not.i.i231.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  store i64 %i.ym, ptr %.sroa.25.4.i, align 8, !tbaa !66, !noalias !787
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.25.4.i, i64 8
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

bb.eo:                                            ; preds = %bb.em
  %i.yo = ptrtoint ptr %.sroa.25.4.i to i64
  %i.yp = ptrtoint ptr %.sroa.034.4.i to i64
  %i.yq = sub i64 %i.yo, %i.yp                    ; 6 uses
  %i.yr = icmp eq i64 %i.yq, 9223372036854775800
  br i1 %i.yr, label %.invoke564.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i: ; preds = %bb.eo
  %i.ys = ashr exact i64 %i.yq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i233.i.i = call i64 @llvm.umax.i64(i64 %i.ys, i64 1)
  %i.yt = add nsw i64 %.sroa.speculated.i.i.i.i233.i.i, %i.ys ; 2 uses
  %i.yu = icmp ult i64 %i.yt, %i.ys
  %i.yv = call i64 @llvm.umin.i64(i64 %i.yt, i64 1152921504606846975)
  %i.yw = select i1 %i.yu, i64 1152921504606846975, i64 %i.yv ; 3 uses
  %.not.i.i.i.i234.i.i = icmp ne i64 %i.yw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i.i)
  %i.yx = shl nuw nsw i64 %i.yw, 3
  %i.yy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yx) #31
          to label %.noexc239.i.i unwind label %.loopexit411.i.i, !noalias !787 ; 4 uses

.noexc239.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i.i
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 %i.yq ; 2 uses
  store i64 %i.ym, ptr %i.yz, align 8, !tbaa !66, !noalias !787
  %i.za = icmp sgt i64 %i.yq, 0
  br i1 %i.za, label %bb.ep, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

bb.ep:                                            ; preds = %.noexc239.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yy, ptr align 8 %.sroa.034.4.i, i64 %i.yq, i1 false), !noalias !787
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i: ; preds = %bb.ep, %.noexc239.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %.not.i17.i.i.i236.i.i = icmp eq ptr %.sroa.034.4.i, null
  br i1 %.not.i17.i.i.i236.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.4.i, i64 noundef %i.yq) #30, !noalias !787
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i: ; preds = %bb.eq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i.i
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.yw
  br label %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i"

"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit171.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i, %bb.en, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i", %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i, %bb.ei, %.thread389.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i, %bb.ec, %bb.ea, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i, %bb.do, %.critedge.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i, %bb.db, %._crit_edge433.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i, %bb.co, %._crit_edge.i.i, %bb.bw, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"
  %.sroa.034.7.i = phi ptr [ %.sroa.034.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.yy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.034.4.i, %bb.en ], [ %.sroa.034.4.i, %.thread389.i.i ], [ %i.yg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.034.4.i, %bb.ei ], [ %.sroa.034.4.i, %bb.ea ], [ %i.xn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.034.4.i, %bb.ec ], [ %.sroa.034.4.i, %.critedge.i.i ], [ %i.vn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.034.4.i, %bb.do ], [ %.sroa.034.4.i, %._crit_edge433.i.i ], [ %i.tn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.034.4.i, %bb.db ], [ %.sroa.034.4.i, %._crit_edge.i.i ], [ %i.rn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.034.4.i, %bb.co ], [ %.sroa.034.6.i, %bb.bw ], [ %.sroa.034.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.25.7.i = phi ptr [ %.sroa.25.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.zb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yn, %bb.en ], [ %.sroa.25.4.i, %.thread389.i.i ], [ %i.yj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xv, %bb.ei ], [ %.sroa.25.4.i, %bb.ea ], [ %i.xq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.xc, %bb.ec ], [ %.sroa.25.4.i, %.critedge.i.i ], [ %i.vq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %i.vc, %bb.do ], [ %.sroa.25.4.i, %._crit_edge433.i.i ], [ %i.tq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %i.tc, %bb.db ], [ %.sroa.25.4.i, %._crit_edge.i.i ], [ %i.rq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %i.rc, %bb.co ], [ %.sroa.25.6.i, %bb.bw ], [ %.sroa.25.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.51.7.i = phi ptr [ %.sroa.51.4.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.zc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %.sroa.51.4.i, %bb.en ], [ %.sroa.51.4.i, %.thread389.i.i ], [ %i.yk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %.sroa.51.4.i, %bb.ei ], [ %.sroa.51.4.i, %bb.ea ], [ %i.xr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %.sroa.51.4.i, %bb.ec ], [ %.sroa.51.4.i, %.critedge.i.i ], [ %i.vr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.sroa.51.4.i, %bb.do ], [ %.sroa.51.4.i, %._crit_edge433.i.i ], [ %i.tr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.sroa.51.4.i, %bb.db ], [ %.sroa.51.4.i, %._crit_edge.i.i ], [ %i.rr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.sroa.51.4.i, %bb.co ], [ %.sroa.51.6.i, %bb.bw ], [ %.sroa.51.5.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.5350.i.i = phi i64 [ %.0346444.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.yl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yl, %bb.en ], [ %.0346444.i.i, %.thread389.i.i ], [ %i.xt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xt, %bb.ei ], [ %.0346444.i.i, %bb.ea ], [ %i.xa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.xa, %bb.ec ], [ %.0346444.i.i, %.critedge.i.i ], [ %.us-phi1751, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1751, %bb.do ], [ %.0346444.i.i, %._crit_edge433.i.i ], [ %.us-phi1750, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1750, %bb.db ], [ %.0346444.i.i, %._crit_edge.i.i ], [ %.us-phi1749, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1749, %bb.co ], [ %i.ob, %bb.bw ], [ %i.nb, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ]
  %.10.i.i = phi i64 [ %.0346444.i.i, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit205.thread.thread542.i.i" ], [ %i.yl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i.i ], [ %i.yl, %bb.en ], [ %.0346444.i.i, %.thread389.i.i ], [ %i.xt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i226.i.i ], [ %i.xt, %bb.ei ], [ %.0346444.i.i, %bb.ea ], [ %i.xa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i215.i.i ], [ %i.xa, %bb.ec ], [ %.0346444.i.i, %.critedge.i.i ], [ %.us-phi1751, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i198.i.i ], [ %.us-phi1751, %bb.do ], [ %.0346444.i.i, %._crit_edge433.i.i ], [ %.us-phi1750, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i183.i.i ], [ %.us-phi1750, %bb.db ], [ %.0346444.i.i, %._crit_edge.i.i ], [ %.us-phi1749, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i168.i.i ], [ %.us-phi1749, %bb.co ], [ %i.ot, %bb.bw ], [ %i.nt, %"_ZZN2cv3dnnL31unicode_regex_split_custom_gpt2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %i.zd = icmp ult i64 %.10.i.i, %i.ly
  br i1 %i.zd, label %.lr.ph449.i.i, label %._crit_edge450.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp412.i.i, %.loopexit411.i.i, %bb.dy, %bb.dm, %bb.cz, %.loopexit.split-lp407.i.i, %.loopexit406.i.i, %bb.cm, %bb.cf, %.loopexit.split-lp402.i.i, %.loopexit401.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.bf
  %.sroa.51.4221.i = phi ptr [ %.sroa.51.4.i, %bb.bf ], [ %.sroa.25.4.i, %.loopexit.split-lp.i.i ], [ %.sroa.25.4.i, %.loopexit.split-lp402.i.i ], [ %.sroa.51.4.i, %bb.dy ], [ %.sroa.51.4.i, %bb.cf ], [ %.sroa.51.4.i, %bb.dm ], [ %.sroa.51.4.i, %bb.cm ], [ %.sroa.51.4.i, %bb.cz ], [ %.sroa.25.4.i, %.loopexit.split-lp407.i.i ], [ %.sroa.25.4.i, %.loopexit.i.i ], [ %.sroa.25.4.i, %.loopexit401.i.i ], [ %.sroa.25.4.i, %.loopexit406.i.i ], [ %.sroa.25.4.i, %.loopexit411.i.i ], [ %.sroa.25.4.i, %.loopexit.split-lp412.i.i ] ; 2 uses
  %.pn112.pn.i.i = phi { ptr, i32 } [ %i.mm, %bb.bf ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.split-lp404.i.i, %.loopexit.split-lp402.i.i ], [ %i.wf, %bb.dy ], [ %i.ph, %bb.cf ], [ %i.up, %bb.dm ], [ %i.qp, %bb.cm ], [ %i.sp, %bb.cz ], [ %lpad.loopexit.split-lp409.i.i, %.loopexit.split-lp407.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit403.i.i, %.loopexit401.i.i ], [ %lpad.loopexit408.i.i, %.loopexit406.i.i ], [ %lpad.loopexit413.i.i, %.loopexit411.i.i ], [ %lpad.loopexit.split-lp414.i.i, %.loopexit.split-lp412.i.i ] ; 2 uses
  %i.ze = load ptr, ptr %9, align 8, !tbaa !77, !noalias !787 ; 3 uses
  %.not.i.i.i241.i.i = icmp eq ptr %i.ze, null
  br i1 %.not.i.i.i241.i.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.body.i.i
  %i.zf = load ptr, ptr %i.iw, align 8, !tbaa !79, !noalias !787
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %i.ze to i64
  %i.zi = sub i64 %i.zg, %i.zh
  call void @_ZdlPvm(ptr noundef nonnull %i.ze, i64 noundef %i.zi) #30, !noalias !787
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.body.i.i, %bb.ax
  %.sroa.034.8.i = phi ptr [ %.sroa.034.4.i, %.body.i.i ], [ %.sroa.034.4.i, %bb.er ], [ %.sroa.034.0.i, %bb.ax ] ; 3 uses
  %.sroa.51.8.i = phi ptr [ %.sroa.51.4221.i, %.body.i.i ], [ %.sroa.51.4221.i, %bb.er ], [ %.sroa.51.0.i, %bb.ax ]
  %.pn112.pn.pn.i.i = phi { ptr, i32 } [ %.pn112.pn.i.i, %.body.i.i ], [ %.pn112.pn.i.i, %bb.er ], [ %i.lw, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !787
  %.not.i.i.i243.i.i = icmp eq ptr %.sroa.034.8.i, null
  br i1 %.not.i.i.i243.i.i, label %.body246, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zj = ptrtoint ptr %.sroa.51.8.i to i64
  %i.zk = ptrtoint ptr %.sroa.034.8.i to i64
  %i.zl = sub i64 %i.zj, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.8.i, i64 noundef %i.zl) #30, !noalias !787
  br label %.body246

bb.eu:                                            ; preds = %bb.aw, %._crit_edge456.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !787
  br label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit

.loopexit747:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i
  %lpad.loopexit749 = landingpad { ptr, i32 }
          cleanup
  br label %.body246

.loopexit.split-lp748:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp750 = landingpad { ptr, i32 }
          cleanup
  br label %.body246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %bb.at
  %bcmp.i14.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(115) %.val, ptr noundef nonnull dereferenceable(115) @.str.20, i64 115), !noalias !786
  %i.zm = icmp eq i32 %bcmp.i14.i, 0
  br i1 %i.zm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %bb.at
  %bcmp.i16.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(144) %.val, ptr noundef nonnull dereferenceable(144) @.str.21, i64 144), !noalias !786
  %i.zn = icmp eq i32 %bcmp.i16.i, 0
  br i1 %i.zn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %i.zo = ptrtoint ptr %.sroa.24.01771 to i64
  %i.zp = ptrtoint ptr %.sroa.0599.01770 to i64
  %i.zq = sub i64 %i.zo, %i.zp                    ; 3 uses
  %i.zr = icmp ugt i64 %i.zq, 9223372036854775800
  br i1 %i.zr, label %.noexc.i59.i, label %bb.ev

.noexc.i59.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #29
          to label %.noexc60.i unwind label %.loopexit.split-lp743, !noalias !786

.noexc60.i:                                       ; preds = %.noexc.i59.i
  unreachable

bb.ev:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.thread.i
  %.not662.i.i = icmp eq ptr %.sroa.24.01771, %.sroa.0599.01770 ; 2 uses
  br i1 %.not662.i.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i: ; preds = %bb.ev
  %i.zs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zq) #31
          to label %.noexc61.i unwind label %.loopexit742, !noalias !786 ; 2 uses

.noexc61.i:                                       ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zq
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i:        ; preds = %.noexc61.i, %bb.ev
  %.sroa.0.0.i = phi ptr [ null, %bb.ev ], [ %i.zs, %.noexc61.i ] ; 5 uses
  %.sroa.61.0.i = phi ptr [ null, %bb.ev ], [ %i.zt, %.noexc61.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !788
  invoke void @_ZN2cv3dnn22unicode_cpts_from_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %bb.ew unwind label %bb.ey, !noalias !788

bb.ew:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  br i1 %.not662.i.i, label %._crit_edge589.i.i, label %.lr.ph588.i.i

._crit_edge589.i.i:                               ; preds = %._crit_edge.i21.i, %bb.ew
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %bb.ew ], [ %.sroa.0.3.i, %._crit_edge.i21.i ]
  %.sroa.29.1.i = phi ptr [ %.sroa.0.0.i, %bb.ew ], [ %.sroa.29.3.i, %._crit_edge.i21.i ]
  %.sroa.61.1.i = phi ptr [ %.sroa.61.0.i, %bb.ew ], [ %.sroa.61.3.i, %._crit_edge.i21.i ]
  %i.zu = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 3 uses
  %.not.i.i.i.i22.i = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i.i22.i, label %bb.kf, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge589.i.i
  %i.zv = load ptr, ptr %i.iv, align 8, !tbaa !79, !noalias !788
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = ptrtoint ptr %i.zu to i64
  %i.zy = sub i64 %i.zw, %i.zx
  call void @_ZdlPvm(ptr noundef nonnull %i.zu, i64 noundef %i.zy) #30, !noalias !788
  br label %bb.kf

bb.ey:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i19.i
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

.lr.ph588.i.i:                                    ; preds = %bb.ew, %._crit_edge.i21.i
  %.sroa.0.2.i = phi ptr [ %.sroa.0.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.ew ] ; 2 uses
  %.sroa.29.2.i = phi ptr [ %.sroa.29.3.i, %._crit_edge.i21.i ], [ %.sroa.0.0.i, %bb.ew ] ; 2 uses
  %.sroa.61.2.i = phi ptr [ %.sroa.61.3.i, %._crit_edge.i21.i ], [ %.sroa.61.0.i, %bb.ew ] ; 2 uses
  %.0111586.i.i = phi i64 [ %i.aab, %._crit_edge.i21.i ], [ 0, %bb.ew ] ; 11 uses
  %.sroa.0407.0585.i.i = phi ptr [ %i.aad, %._crit_edge.i21.i ], [ %.sroa.0599.01770, %bb.ew ] ; 2 uses
  %i.aaa = load i64, ptr %.sroa.0407.0585.i.i, align 8, !tbaa !66, !noalias !788
  %i.aab = add i64 %i.aaa, %.0111586.i.i          ; 23 uses
  %i.aac = icmp ult i64 %.0111586.i.i, %i.aab
  br i1 %i.aac, label %.lr.ph583.i.i, label %._crit_edge.i21.i

._crit_edge.i21.i:                                ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", %.lr.ph588.i.i
  %.sroa.0.3.i = phi ptr [ %.sroa.0.2.i, %.lr.ph588.i.i ], [ %.sroa.0.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.29.3.i = phi ptr [ %.sroa.29.2.i, %.lr.ph588.i.i ], [ %.sroa.29.10.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %.sroa.61.3.i = phi ptr [ %.sroa.61.2.i, %.lr.ph588.i.i ], [ %.sroa.61.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ] ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.0407.0585.i.i, i64 8 ; 2 uses
  %.not512.i.i = icmp eq ptr %i.aad, %.sroa.24.01771
  br i1 %.not512.i.i, label %._crit_edge589.i.i, label %.lr.ph588.i.i

.lr.ph583.i.i:                                    ; preds = %.lr.ph588.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"
  %.sroa.0.4.i = phi ptr [ %.sroa.0.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.0.2.i, %.lr.ph588.i.i ] ; 66 uses
  %.sroa.29.4.i = phi ptr [ %.sroa.29.10.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.29.2.i, %.lr.ph588.i.i ] ; 52 uses
  %.sroa.61.4.i = phi ptr [ %.sroa.61.11.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.sroa.61.2.i, %.lr.ph588.i.i ] ; 32 uses
  %.0107582.i.i = phi i64 [ %.11.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.0111586.i.i, %.lr.ph588.i.i ] ; 25 uses
  %.0454581.i.i = phi i64 [ %.7460.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i" ], [ %.0111586.i.i, %.lr.ph588.i.i ] ; 30 uses
  %.not.i.i23.i = icmp ule i64 %.0111586.i.i, %.0107582.i.i ; 3 uses
  br i1 %.not.i.i23.i, label %bb.ez, label %.thread496.i.i

bb.ez:                                            ; preds = %.lr.ph583.i.i
  %i.aae = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %.0107582.i.i
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !80, !noalias !788 ; 6 uses
  %i.aah = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.aai = icmp eq i8 %i.aah, 0
  br i1 %i.aai, label %bb.fa, label %bb.fc, !prof !82

bb.fa:                                            ; preds = %bb.ez
  %i.aaj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i331.i.i = icmp eq i32 %i.aaj, 0
  br i1 %.not.i331.i.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aak = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %i.aal = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.aam = icmp eq i8 %i.aal, 0
  br i1 %i.aam, label %bb.fd, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", !prof !82

bb.fd:                                            ; preds = %bb.fc
  %i.aan = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i.i58.i = icmp eq i32 %i.aan, 0
  br i1 %.not3.i.i58.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i", label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.ff unwind label %bb.fg, !noalias !788

bb.ff:                                            ; preds = %bb.fe
  %i.aao = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"

bb.fg:                                            ; preds = %bb.fe
  %i.aap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i": ; preds = %bb.ff, %bb.fd, %bb.fc
  %i.aaq = zext i32 %i.aag to i64                 ; 2 uses
  %i.aar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.aas = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = sub i64 %i.aat, %i.aau
  %i.aaw = ashr exact i64 %i.aav, 1
  %i.aax = icmp ugt i64 %i.aaw, %i.aaq
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.aaq
  %spec.select.i330.i.i = select i1 %i.aax, ptr %i.aay, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i.i46.i = load i16, ptr %spec.select.i330.i.i, align 2, !tbaa !72, !noalias !788 ; 6 uses
  switch i32 %i.aag, label %.thread477.i.i [
    i32 39, label %bb.fh
    i32 13, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
    i32 10, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  ]

bb.fh:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.aaz = add nuw i64 %.0107582.i.i, 1           ; 2 uses
  %i.aba = icmp ult i64 %i.aaz, %i.aab
  br i1 %i.aba, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", label %.thread477.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i": ; preds = %bb.fh
  %i.abb = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.aaz
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !80, !noalias !788 ; 4 uses
  %i.abe = load ptr, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, align 8, !tbaa !98, !noalias !788 ; 5 uses
  %i.abf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv3dnn21unicode_map_lowercaseE, i64 8), align 8, !tbaa !99, !noalias !788 ; 4 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.abf ; 2 uses
  %i.abh = icmp sgt i64 %i.abf, 0                 ; 2 uses
  br i1 %i.abh, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"

_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i", %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.abf, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %.0114.i.i.i.i.i = phi ptr [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ], [ %i.abe, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ] ; 2 uses
  %i.abi = lshr i64 %.05.i.i.i.i.i, 1             ; 3 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i.i.i, i64 %i.abi ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.abj, align 4, !tbaa !121, !noalias !788
  %i.abk = icmp ult i32 %.val.i.i.i.i.i, %i.abd   ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abm = xor i64 %i.abi, -1
  %i.abn = add nsw i64 %.05.i.i.i.i.i, %i.abm
  %.112.i.i.i.i.i = select i1 %i.abk, ptr %i.abl, ptr %.0114.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i = select i1 %i.abk, i64 %i.abn, i64 %i.abi ; 2 uses
  %i.abo = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.abo, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i"
  %.011.lcssa.i.i.i.i.i = phi ptr [ %i.abe, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit174.i.i" ], [ %.112.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 3 uses
  %.not.i175.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i, %i.abg
  br i1 %.not.i175.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %i.abp = load i32, ptr %.011.lcssa.i.i.i.i.i, align 4, !tbaa !121, !noalias !788
  %i.abq = icmp eq i32 %i.abp, %i.abd
  br i1 %i.abq, label %.then.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

.then.i.i:                                        ; preds = %bb.fi
  %i.abr = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i, i64 4
  %.0.pre.i.then.val.i.i = load i32, ptr %i.abr, align 4, !tbaa !80, !noalias !788
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit.i.i:           ; preds = %.then.i.i, %bb.fi, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i"
  %.0.i.i.i = phi i32 [ %i.abd, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i.i.i" ], [ %.0.pre.i.then.val.i.i, %.then.i.i ], [ %i.abd, %bb.fi ] ; 3 uses
  %i.abs = add nuw i64 %.0107582.i.i, 2           ; 5 uses
  switch i32 %.0.i.i.i, label %bb.fq [
    i32 116, label %bb.fj
    i32 115, label %bb.fj
    i32 109, label %bb.fj
    i32 100, label %bb.fj
  ]

bb.fj:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i, %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i
  %i.abt = sub i64 %i.abs, %.0454581.i.i          ; 3 uses
  %.not.i176.i48.i = icmp eq i64 %i.abs, %.0454581.i.i
  br i1 %.not.i176.i48.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i", label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not.i.i.i49.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i.i49.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store i64 %i.abt, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

bb.fm:                                            ; preds = %bb.fk
  %i.abv = ptrtoint ptr %.sroa.29.4.i to i64
  %i.abw = ptrtoint ptr %.sroa.0.4.i to i64
  %i.abx = sub i64 %i.abv, %i.abw                 ; 6 uses
  %i.aby = icmp eq i64 %i.abx, 9223372036854775800
  br i1 %i.aby, label %bb.fn, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i50.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc177.i.i unwind label %.loopexit.split-lp516.i.i, !noalias !788

.noexc177.i.i:                                    ; preds = %bb.fn
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i50.i: ; preds = %bb.fm
  %i.abz = ashr exact i64 %i.abx, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i51.i = call i64 @llvm.umax.i64(i64 %i.abz, i64 1)
  %i.aca = add nsw i64 %.sroa.speculated.i.i.i.i.i51.i, %i.abz ; 2 uses
  %i.acb = icmp ult i64 %i.aca, %i.abz
  %i.acc = call i64 @llvm.umin.i64(i64 %i.aca, i64 1152921504606846975)
  %i.acd = select i1 %i.acb, i64 1152921504606846975, i64 %i.acc ; 3 uses
  %.not.i.i.i.i.i52.i = icmp ne i64 %i.acd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i52.i)
  %i.ace = shl nuw nsw i64 %i.acd, 3
  %i.acf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ace) #31
          to label %.noexc178.i.i unwind label %.loopexit515.i.i, !noalias !788 ; 4 uses

.noexc178.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i50.i
  %i.acg = getelementptr inbounds i8, ptr %i.acf, i64 %i.abx ; 2 uses
  store i64 %i.abt, ptr %i.acg, align 8, !tbaa !66, !noalias !788
  %i.ach = icmp sgt i64 %i.abx, 0
  br i1 %i.ach, label %bb.fo, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i

bb.fo:                                            ; preds = %.noexc178.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.acf, ptr align 8 %.sroa.0.4.i, i64 %i.abx, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i: ; preds = %bb.fo, %.noexc178.i.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %.not.i17.i.i.i.i54.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i.i54.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.abx) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i: ; preds = %bb.fp, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i53.i
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.acd
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i, %bb.fl, %bb.fj
  %.sroa.0.5.i = phi ptr [ %.sroa.0.4.i, %bb.fj ], [ %i.acf, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i ], [ %.sroa.0.4.i, %bb.fl ]
  %.sroa.29.5.i = phi ptr [ %.sroa.29.4.i, %bb.fj ], [ %i.aci, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i ], [ %i.abu, %bb.fl ]
  %.sroa.61.5.i = phi ptr [ %.sroa.61.4.i, %bb.fj ], [ %i.acj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i55.i ], [ %.sroa.61.4.i, %bb.fl ]
  %i.ack = add i64 %i.abt, %.0107582.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", !llvm.loop !751

.loopexit525.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i
  %lpad.loopexit527.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp526.i.i:                        ; preds = %bb.gu
  %lpad.loopexit.split-lp528.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit515.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i50.i
  %lpad.loopexit517.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp516.i.i:                        ; preds = %bb.fn
  %lpad.loopexit.split-lp518.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

bb.fq:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit.i.i
  %i.acl = icmp ult i64 %i.abs, %i.aab
  br i1 %i.acl, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i.a", label %.thread477.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i.a": ; preds = %bb.fq
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.abs
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !80, !noalias !788 ; 4 uses
  br i1 %i.abh, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"

_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i: ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i.a", %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i
  %.05.i.i.i188.i.i = phi i64 [ %.1.i.i.i194.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ], [ %i.abf, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i.a" ] ; 2 uses
  %.0114.i.i.i189.i.i = phi ptr [ %.112.i.i.i193.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ], [ %i.abe, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i.a" ] ; 2 uses
  %i.aco = lshr i64 %.05.i.i.i188.i.i, 1          ; 3 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i189.i.i, i64 %i.aco ; 2 uses
  %.val.i.i.i192.i.i = load i32, ptr %i.acp, align 4, !tbaa !121, !noalias !788
  %i.acq = icmp ult i32 %.val.i.i.i192.i.i, %i.acn ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acs = xor i64 %i.aco, -1
  %i.act = add nsw i64 %.05.i.i.i188.i.i, %i.acs
  %.112.i.i.i193.i.i = select i1 %i.acq, ptr %i.acr, ptr %.0114.i.i.i189.i.i ; 2 uses
  %.1.i.i.i194.i.i = select i1 %i.acq, i64 %i.act, i64 %i.aco ; 2 uses
  %i.acu = icmp sgt i64 %.1.i.i.i194.i.i, 0
  br i1 %i.acu, label %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, label %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i", !llvm.loop !2

"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i": ; preds = %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i.a"
  %.011.lcssa.i.i.i182.i.i = phi ptr [ %i.abe, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit180.i.i.a" ], [ %.112.i.i.i193.i.i, %_ZSt9__advanceIPKSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i187.i.i ] ; 3 uses
  %.not.i183.i.i = icmp eq ptr %.011.lcssa.i.i.i182.i.i, %i.abg
  br i1 %.not.i183.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i, label %bb.fr

bb.fr:                                            ; preds = %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %i.acv = load i32, ptr %.011.lcssa.i.i.i182.i.i, align 4, !tbaa !121, !noalias !788
  %i.acw = icmp eq i32 %i.acv, %i.acn
  br i1 %i.acw, label %.then411.i.i, label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

.then411.i.i:                                     ; preds = %bb.fr
  %i.acx = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i182.i.i, i64 4
  %.0.pre.i185.then.val.i.i = load i32, ptr %i.acx, align 4, !tbaa !80, !noalias !788
  br label %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i

_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i:        ; preds = %.then411.i.i, %bb.fr, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i"
  %.0.i186.i.i = phi i32 [ %i.acn, %"_ZSt11lower_boundIPKSt4pairIjjEjZN2cv3dnn15unicode_tolowerEjE3$_0ET_S7_S7_RKT0_T1_.exit.i181.i.i" ], [ %.0.pre.i185.then.val.i.i, %.then411.i.i ], [ %i.acn, %bb.fr ] ; 2 uses
  %i.acy = icmp eq i32 %.0.i186.i.i, 101
  %i.acz = and i32 %.0.i.i.i, -5
  %or.cond8513.i.i = icmp eq i32 %i.acz, 114
  %or.cond.i56.i = and i1 %or.cond8513.i.i, %i.acy
  br i1 %or.cond.i56.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.ada = icmp eq i32 %.0.i.i.i, 108
  %i.adb = icmp eq i32 %.0.i186.i.i, 108
  %or.cond12.i57.i = and i1 %i.ada, %i.adb
  br i1 %or.cond12.i57.i, label %bb.ft, label %.thread477.i.i

bb.ft:                                            ; preds = %bb.fs, %_ZN2cv3dnn15unicode_tolowerEj.exit195.i.i
  %i.adc = add nuw i64 %.0107582.i.i, 3           ; 3 uses
  %i.add = sub i64 %i.adc, %.0454581.i.i          ; 3 uses
  %.not.i196.i.i = icmp eq i64 %i.adc, %.0454581.i.i
  br i1 %.not.i196.i.i, label %bb.ga, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i197.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i197.i.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store i64 %i.add, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %bb.ga

bb.fw:                                            ; preds = %bb.fu
  %i.adf = ptrtoint ptr %.sroa.29.4.i to i64
  %i.adg = ptrtoint ptr %.sroa.0.4.i to i64
  %i.adh = sub i64 %i.adf, %i.adg                 ; 6 uses
  %i.adi = icmp eq i64 %i.adh, 9223372036854775800
  br i1 %i.adi, label %bb.fx, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc204.i.i unwind label %.loopexit.split-lp521.i.i, !noalias !788

.noexc204.i.i:                                    ; preds = %bb.fx
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i: ; preds = %bb.fw
  %i.adj = ashr exact i64 %i.adh, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i199.i.i = call i64 @llvm.umax.i64(i64 %i.adj, i64 1)
  %i.adk = add nsw i64 %.sroa.speculated.i.i.i.i199.i.i, %i.adj ; 2 uses
  %i.adl = icmp ult i64 %i.adk, %i.adj
  %i.adm = call i64 @llvm.umin.i64(i64 %i.adk, i64 1152921504606846975)
  %i.adn = select i1 %i.adl, i64 1152921504606846975, i64 %i.adm ; 3 uses
  %.not.i.i.i.i200.i.i = icmp ne i64 %i.adn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i200.i.i)
  %i.ado = shl nuw nsw i64 %i.adn, 3
  %i.adp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ado) #31
          to label %.noexc205.i.i unwind label %.loopexit520.i.i, !noalias !788 ; 4 uses

.noexc205.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i
  %i.adq = getelementptr inbounds i8, ptr %i.adp, i64 %i.adh ; 2 uses
  store i64 %i.add, ptr %i.adq, align 8, !tbaa !66, !noalias !788
  %i.adr = icmp sgt i64 %i.adh, 0
  br i1 %i.adr, label %bb.fy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

bb.fy:                                            ; preds = %.noexc205.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adp, ptr align 8 %.sroa.0.4.i, i64 %i.adh, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i: ; preds = %bb.fy, %.noexc205.i.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %.not.i17.i.i.i202.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i202.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.adh) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i: ; preds = %bb.fz, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i201.i.i
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adp, i64 %i.adn
  br label %bb.ga

.loopexit520.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i198.i.i
  %lpad.loopexit522.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp521.i.i:                        ; preds = %bb.fx
  %lpad.loopexit.split-lp523.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

bb.ga:                                            ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i, %bb.fv, %bb.ft
  %.sroa.0.6.i = phi ptr [ %.sroa.0.4.i, %bb.ft ], [ %i.adp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.0.4.i, %bb.fv ]
  %.sroa.29.6.i = phi ptr [ %.sroa.29.4.i, %bb.ft ], [ %i.ads, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %i.ade, %bb.fv ]
  %.sroa.61.6.i = phi ptr [ %.sroa.61.4.i, %bb.ft ], [ %i.adt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i203.i.i ], [ %.sroa.61.4.i, %bb.fv ]
  %i.adu = add i64 %i.add, %.0107582.i.i
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

.thread477.i.i:                                   ; preds = %bb.fs, %bb.fq, %bb.fh, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit.i.i"
  %i.adv = and i16 %.sroa.0.0.copyload.i.i46.i, 2
  %.not.i47.i = icmp eq i16 %i.adv, 0
  br i1 %.not.i47.i, label %bb.gb, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.gb:                                            ; preds = %.thread477.i.i
  %i.adw = and i16 %.sroa.0.0.copyload.i.i46.i, 4
  %.not130.i.i = icmp eq i16 %i.adw, 0
  br i1 %.not130.i.i, label %.thread496.i.i, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.gb
  %.pre599.i.i = add nuw i64 %.0107582.i.i, 1
  br label %.critedge.i45.i

.thread496.i.i:                                   ; preds = %bb.gb, %.lr.ph583.i.i
  %i.adx = phi i32 [ %i.aag, %bb.gb ], [ -1, %.lr.ph583.i.i ] ; 2 uses
  %.sroa.0.0.i462479495499.i.i = phi i16 [ %.sroa.0.0.copyload.i.i46.i, %bb.gb ], [ 0, %.lr.ph583.i.i ] ; 2 uses
  %i.ady = add nuw i64 %.0107582.i.i, 1           ; 4 uses
  %.not.i207.i.i = icmp ule i64 %.0111586.i.i, %i.ady
  %i.adz = icmp ult i64 %i.ady, %i.aab
  %or.cond500.i.i = and i1 %.not.i207.i.i, %i.adz
  br i1 %or.cond500.i.i, label %bb.gc, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"

bb.gc:                                            ; preds = %.thread496.i.i
  %i.aea = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.ady
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !80, !noalias !788
  %i.aed = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.aee = icmp eq i8 %i.aed, 0
  br i1 %i.aee, label %bb.gd, label %bb.gf, !prof !82

bb.gd:                                            ; preds = %bb.gc
  %i.aef = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i513 = icmp eq i32 %i.aef, 0
  br i1 %.not.i513, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aeg = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.aeh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.aei = icmp eq i8 %i.aeh, 0
  br i1 %i.aei, label %bb.gg, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", !prof !82

bb.gg:                                            ; preds = %bb.gf
  %i.aej = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i512 = icmp eq i32 %i.aej, 0
  br i1 %.not3.i512, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gi unwind label %bb.gj, !noalias !788

bb.gi:                                            ; preds = %bb.gh
  %i.aek = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i"

bb.gj:                                            ; preds = %bb.gh
  %i.ael = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i": ; preds = %bb.gi, %bb.gg, %bb.gf
  %i.aem = zext i32 %i.aec to i64                 ; 2 uses
  %i.aen = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.aeo = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.aep = ptrtoint ptr %i.aen to i64
  %i.aeq = ptrtoint ptr %i.aeo to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  %i.aes = ashr exact i64 %i.aer, 1
  %i.aet = icmp ugt i64 %i.aes, %i.aem
  %i.aeu = getelementptr inbounds nuw [2 x i8], ptr %i.aeo, i64 %i.aem
  %spec.select.i510 = select i1 %i.aet, ptr %i.aeu, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i511 = load i16, ptr %spec.select.i510, align 2, !tbaa !72, !noalias !788
  %i.aev = and i16 %.sroa.0.0.copyload.i511, 4
  %.not131.i.i = icmp eq i16 %i.aev, 0
  br i1 %.not131.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i", label %.critedge.i45.i

.critedge.i45.i:                                  ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i", %..critedge_crit_edge.i.i
  %.pre-phi2582 = phi i64 [ %i.ady, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.i.i" ], [ %.pre599.i.i, %..critedge_crit_edge.i.i ] ; 3 uses
  %.not.i211.i.i = icmp uge i64 %.pre-phi2582, %.0111586.i.i
  %.not.i211.i.fr.i = freeze i1 %.not.i211.i.i
  br i1 %.not.i211.i.fr.i, label %.critedge.i45.split.preheader.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i45.split.preheader.i:                  ; preds = %.critedge.i45.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.aab, i64 %.pre-phi2582) ; 2 uses
  %.5.i.i4449 = add i64 %.0107582.i.i, 1          ; 2 uses
  %i.aew = icmp ult i64 %.5.i.i4449, %i.aab
  br i1 %i.aew, label %.lr.ph4451, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"

.critedge.i45.split.i:                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  %.5.i.i = add i64 %.5.i.i4450, 1                ; 2 uses
  %i.aex = icmp ult i64 %.5.i.i, %i.aab
  br i1 %i.aex, label %.lr.ph4451, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !752

.lr.ph4451:                                       ; preds = %.critedge.i45.split.preheader.i, %.critedge.i45.split.i
  %.5.i.i4450 = phi i64 [ %.5.i.i, %.critedge.i45.split.i ], [ %.5.i.i4449, %.critedge.i45.split.preheader.i ] ; 3 uses
  %i.aey = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %.5.i.i4450
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !80, !noalias !788
  %i.afb = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.afc = icmp eq i8 %i.afb, 0
  br i1 %i.afc, label %bb.gk, label %bb.gm, !prof !82

bb.gk:                                            ; preds = %.lr.ph4451
  %i.afd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i335.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not.i335.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.afe = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %.lr.ph4451
  %i.aff = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.afg = icmp eq i8 %i.aff, 0
  br i1 %i.afg, label %bb.gn, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", !prof !82

bb.gn:                                            ; preds = %bb.gm
  %i.afh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i334.i.i = icmp eq i32 %i.afh, 0
  br i1 %.not3.i334.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i", label %bb.go

bb.go:                                            ; preds = %bb.gn
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.gp unwind label %bb.gq, !noalias !788

bb.gp:                                            ; preds = %bb.go
  %i.afi = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"

bb.gq:                                            ; preds = %bb.go
  %i.afj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i": ; preds = %bb.gp, %bb.gn, %bb.gm
  %i.afk = zext i32 %i.afa to i64                 ; 2 uses
  %i.afl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.afm = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.afn = ptrtoint ptr %i.afl to i64
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = sub i64 %i.afn, %i.afo
  %i.afq = ashr exact i64 %i.afp, 1
  %i.afr = icmp ugt i64 %i.afq, %i.afk
  %i.afs = getelementptr inbounds nuw [2 x i8], ptr %i.afm, i64 %i.afk
  %spec.select.i332.i.i = select i1 %i.afr, ptr %i.afs, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i333.i.i = load i16, ptr %spec.select.i332.i.i, align 2, !tbaa !72, !noalias !788
  %i.aft = and i16 %.sroa.0.0.copyload.i333.i.i, 4
  %.not132.i.i = icmp eq i16 %i.aft, 0
  br i1 %.not132.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", label %.critedge.i45.split.i, !llvm.loop !752

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i"
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", !llvm.loop !752

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i": ; preds = %.critedge.i45.split.i, %.critedge.i45.split.preheader.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge", %.critedge.i45.i
  %.us-phi.i = phi i64 [ %.pre-phi2582, %.critedge.i45.i ], [ %umax.i, %.critedge.i45.split.preheader.i ], [ %.5.i.i4450, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.i.i._ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i.loopexit_crit_edge" ], [ %umax.i, %.critedge.i45.split.i ] ; 6 uses
  %i.afu = sub i64 %.us-phi.i, %.0454581.i.i      ; 2 uses
  %.not.i215.i.i = icmp eq i64 %.us-phi.i, %.0454581.i.i
  br i1 %.not.i215.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.gr

bb.gr:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i"
  %.not.i.i216.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i216.i.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i64 %i.afu, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.gt:                                            ; preds = %bb.gr
  %i.afw = ptrtoint ptr %.sroa.29.4.i to i64
  %i.afx = ptrtoint ptr %.sroa.0.4.i to i64
  %i.afy = sub i64 %i.afw, %i.afx                 ; 6 uses
  %i.afz = icmp eq i64 %i.afy, 9223372036854775800
  br i1 %i.afz, label %bb.gu, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i

bb.gu:                                            ; preds = %bb.gt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc223.i.i unwind label %.loopexit.split-lp526.i.i, !noalias !788

.noexc223.i.i:                                    ; preds = %bb.gu
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i: ; preds = %bb.gt
  %i.aga = ashr exact i64 %i.afy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i218.i.i = call i64 @llvm.umax.i64(i64 %i.aga, i64 1)
  %i.agb = add nsw i64 %.sroa.speculated.i.i.i.i218.i.i, %i.aga ; 2 uses
  %i.agc = icmp ult i64 %i.agb, %i.aga
  %i.agd = call i64 @llvm.umin.i64(i64 %i.agb, i64 1152921504606846975)
  %i.age = select i1 %i.agc, i64 1152921504606846975, i64 %i.agd ; 3 uses
  %.not.i.i.i.i219.i.i = icmp ne i64 %i.age, 0
  call void @llvm.assume(i1 %.not.i.i.i.i219.i.i)
  %i.agf = shl nuw nsw i64 %i.age, 3
  %i.agg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agf) #31
          to label %.noexc224.i.i unwind label %.loopexit525.i.i, !noalias !788 ; 4 uses

.noexc224.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i217.i.i
  %i.agh = getelementptr inbounds i8, ptr %i.agg, i64 %i.afy ; 2 uses
  store i64 %i.afu, ptr %i.agh, align 8, !tbaa !66, !noalias !788
  %i.agi = icmp sgt i64 %i.afy, 0
  br i1 %i.agi, label %bb.gv, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

bb.gv:                                            ; preds = %.noexc224.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agg, ptr align 8 %.sroa.0.4.i, i64 %i.afy, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i220.i.i: ; preds = %bb.gv, %.noexc224.i.i
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a

bb.ha:                                            ; preds = %bb.gz
  %i.agx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i341.i.i = icmp eq i32 %i.agx, 0
  br i1 %.not3.i341.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.hc unwind label %bb.hd, !noalias !788

bb.hc:                                            ; preds = %bb.hb
  %i.agy = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"

bb.hd:                                            ; preds = %bb.hb
  %i.agz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i": ; preds = %bb.hc, %bb.ha, %bb.gz
  %i.aha = zext i32 %i.agq to i64                 ; 2 uses
  %i.ahb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.ahc = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.ahd = ptrtoint ptr %i.ahb to i64
  %i.ahe = ptrtoint ptr %i.ahc to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  %i.ahg = ashr exact i64 %i.ahf, 1
  %i.ahh = icmp ugt i64 %i.ahg, %i.aha
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.ahc, i64 %i.aha
  %spec.select.i339.i.i = select i1 %i.ahh, ptr %i.ahi, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i340.i.i = load i16, ptr %spec.select.i339.i.i, align 2, !tbaa !72, !noalias !788
  %i.ahj = and i16 %.sroa.0.0.copyload.i340.i.i, 2
  %.not145.i.i = icmp eq i16 %i.ahj, 0
  br i1 %.not145.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i", label %bb.he

bb.he:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i"
  %i.ahk = add nuw i64 %.6557.i.i, 1              ; 9 uses
  %i.ahl = sub i64 %i.ahk, %.0105558.i.i
  %i.ahm = icmp ugt i64 %i.ahl, 2
  br i1 %i.ahm, label %bb.hf, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.hf:                                            ; preds = %bb.he
  %i.ahn = sub i64 %i.ahk, %.4457556.i.i          ; 2 uses
  %.not.i230.i29.i = icmp eq i64 %i.ahk, %.4457556.i.i
  br i1 %.not.i230.i29.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i", label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %.not.i.i231.i30.i = icmp eq ptr %.sroa.29.7.i, %.sroa.61.7.i
  br i1 %.not.i.i231.i30.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  store i64 %i.ahn, ptr %.sroa.29.7.i, align 8, !tbaa !66, !noalias !788
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.29.7.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

bb.hi:                                            ; preds = %bb.hg
  %i.ahp = ptrtoint ptr %.sroa.29.7.i to i64
  %i.ahq = ptrtoint ptr %.sroa.0.7.i to i64
  %i.ahr = sub i64 %i.ahp, %i.ahq                 ; 6 uses
  %i.ahs = icmp eq i64 %i.ahr, 9223372036854775800
  br i1 %i.ahs, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i: ; preds = %bb.hi
  %i.aht = ashr exact i64 %i.ahr, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i233.i32.i = call i64 @llvm.umax.i64(i64 %i.aht, i64 1)
  %i.ahu = add nsw i64 %.sroa.speculated.i.i.i.i233.i32.i, %i.aht ; 2 uses
  %i.ahv = icmp ult i64 %i.ahu, %i.aht
  %i.ahw = call i64 @llvm.umin.i64(i64 %i.ahu, i64 1152921504606846975)
  %i.ahx = select i1 %i.ahv, i64 1152921504606846975, i64 %i.ahw ; 3 uses
  %.not.i.i.i.i234.i33.i = icmp ne i64 %i.ahx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i234.i33.i)
  %i.ahy = shl nuw nsw i64 %i.ahx, 3
  %i.ahz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahy) #31
          to label %.noexc239.i36.i unwind label %.loopexit.i34.i, !noalias !788 ; 4 uses

.noexc239.i36.i:                                  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i
  %i.aia = getelementptr inbounds i8, ptr %i.ahz, i64 %i.ahr ; 2 uses
  store i64 %i.ahn, ptr %i.aia, align 8, !tbaa !66, !noalias !788
  %i.aib = icmp sgt i64 %i.ahr, 0
  br i1 %i.aib, label %bb.hj, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i

bb.hj:                                            ; preds = %.noexc239.i36.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahz, ptr align 8 %.sroa.0.7.i, i64 %i.ahr, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i: ; preds = %bb.hj, %.noexc239.i36.i
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  %.not.i17.i.i.i236.i38.i = icmp eq ptr %.sroa.0.7.i, null
  br i1 %.not.i17.i.i.i236.i38.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.7.i, i64 noundef %i.ahr) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i: ; preds = %bb.hk, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i235.i37.i
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.ahz, i64 %i.ahx
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i"

.loopexit.i34.i:                                  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i232.i31.i
  %lpad.loopexit.i35.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i243.i.i
  %lpad.loopexit530.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke.i25.i
  %lpad.loopexit.split-lp531.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i, %bb.hh, %bb.hf, %bb.he
  %.sroa.0.8.i = phi ptr [ %.sroa.0.7.i, %bb.hf ], [ %i.ahz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i ], [ %.sroa.0.7.i, %bb.hh ], [ %.sroa.0.7.i, %bb.he ] ; 2 uses
  %.sroa.29.8.i = phi ptr [ %.sroa.29.7.i, %bb.hf ], [ %i.aic, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i ], [ %i.aho, %bb.hh ], [ %.sroa.29.7.i, %bb.he ] ; 2 uses
  %.sroa.61.8.i = phi ptr [ %.sroa.61.7.i, %bb.hf ], [ %i.aid, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i ], [ %.sroa.61.7.i, %bb.hh ], [ %.sroa.61.7.i, %bb.he ] ; 2 uses
  %.5458.i.i = phi i64 [ %.4457556.i.i, %bb.hf ], [ %i.ahk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i ], [ %i.ahk, %bb.hh ], [ %.4457556.i.i, %bb.he ] ; 2 uses
  %.1106.i.i = phi i64 [ %.4457556.i.i, %bb.hf ], [ %i.ahk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i237.i39.i ], [ %i.ahk, %bb.hh ], [ %.0105558.i.i, %bb.he ]
  %exitcond.not.i = icmp eq i64 %i.ahk, %i.aab
  br i1 %exitcond.not.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i", label %.lr.ph.i28.i, !llvm.loop !753

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i", %.preheader514.i.i
  %.sroa.0.9.i = phi ptr [ %.sroa.0.4.i, %.preheader514.i.i ], [ %.sroa.0.7.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i" ], [ %.sroa.0.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ] ; 8 uses
  %.sroa.29.9.i = phi ptr [ %.sroa.29.4.i, %.preheader514.i.i ], [ %.sroa.29.7.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i" ], [ %.sroa.29.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ] ; 7 uses
  %.sroa.61.9.i = phi ptr [ %.sroa.61.4.i, %.preheader514.i.i ], [ %.sroa.61.7.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i" ], [ %.sroa.61.8.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ] ; 3 uses
  %.4457.lcssa.i.i = phi i64 [ %.0454581.i.i, %.preheader514.i.i ], [ %.4457556.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i" ], [ %.5458.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ] ; 4 uses
  %.6.lcssa.i.i = phi i64 [ %.0107582.i.i, %.preheader514.i.i ], [ %.6557.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.i.i" ], [ %i.aab, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit240.i.i" ] ; 6 uses
  %i.aie = sub i64 %.6.lcssa.i.i, %.4457.lcssa.i.i ; 2 uses
  %.not.i241.i.i = icmp eq i64 %.6.lcssa.i.i, %.4457.lcssa.i.i
  br i1 %.not.i241.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.hl

bb.hl:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i"
  %.not.i.i242.i.i = icmp eq ptr %.sroa.29.9.i, %.sroa.61.9.i
  br i1 %.not.i.i242.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  store i64 %i.aie, ptr %.sroa.29.9.i, align 8, !tbaa !66, !noalias !788
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.29.9.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.hn:                                            ; preds = %bb.hl
  %i.aig = ptrtoint ptr %.sroa.29.9.i to i64
  %i.aih = ptrtoint ptr %.sroa.0.9.i to i64
  %i.aii = sub i64 %i.aig, %i.aih                 ; 6 uses
  %i.aij = icmp eq i64 %i.aii, 9223372036854775800
  br i1 %i.aij, label %.invoke.i25.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i243.i.i

.invoke.i25.i:                                    ; preds = %bb.hn, %bb.hi
  %.sroa.0.10.i = phi ptr [ %.sroa.0.7.i, %bb.hi ], [ %.sroa.0.9.i, %bb.hn ]
  %.sroa.61.10.i = phi ptr [ %.sroa.29.7.i, %bb.hi ], [ %.sroa.29.9.i, %bb.hn ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.cont.i26.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !788

.cont.i26.i:                                      ; preds = %.invoke.i25.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i243.i.i: ; preds = %bb.hn
  %i.aik = ashr exact i64 %i.aii, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i244.i.i = call i64 @llvm.umax.i64(i64 %i.aik, i64 1)
  %i.ail = add nsw i64 %.sroa.speculated.i.i.i.i244.i.i, %i.aik ; 2 uses
  %i.aim = icmp ult i64 %i.ail, %i.aik
  %i.ain = call i64 @llvm.umin.i64(i64 %i.ail, i64 1152921504606846975)
  %i.aio = select i1 %i.aim, i64 1152921504606846975, i64 %i.ain ; 3 uses
  %.not.i.i.i.i245.i.i = icmp ne i64 %i.aio, 0
  call void @llvm.assume(i1 %.not.i.i.i.i245.i.i)
  %i.aip = shl nuw nsw i64 %i.aio, 3
  %i.aiq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aip) #31
          to label %.noexc250.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !788 ; 4 uses

.noexc250.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i243.i.i
  %i.air = getelementptr inbounds i8, ptr %i.aiq, i64 %i.aii ; 2 uses
  store i64 %i.aie, ptr %i.air, align 8, !tbaa !66, !noalias !788
  %i.ais = icmp sgt i64 %i.aii, 0
  br i1 %i.ais, label %bb.ho, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i246.i.i

bb.ho:                                            ; preds = %.noexc250.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aiq, ptr align 8 %.sroa.0.9.i, i64 %i.aii, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i246.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i246.i.i: ; preds = %bb.ho, %.noexc250.i.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %.not.i17.i.i.i247.i.i = icmp eq ptr %.sroa.0.9.i, null
  br i1 %.not.i17.i.i.i247.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i, label %bb.hp

bb.hp:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i246.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.9.i, i64 noundef %i.aii) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i: ; preds = %bb.hp, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i246.i.i
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %i.aio
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.hq:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit210.thread.i.i"
  %i.aiv = icmp eq i32 %i.agl, 32                 ; 2 uses
  br i1 %i.aiv, label %bb.hr, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit255.i.i"

bb.hr:                                            ; preds = %bb.hq
  %i.aiw = add nuw i64 %.0107582.i.i, 1           ; 3 uses
  %.not.i252.i.i = icmp ule i64 %.0111586.i.i, %i.aiw
  %i.aix = icmp ult i64 %i.aiw, %i.aab
  %or.cond503.i.i = and i1 %.not.i252.i.i, %i.aix
  br i1 %or.cond503.i.i, label %bb.hs, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit255.i.i"

bb.hs:                                            ; preds = %bb.hr
  %i.aiy = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.aiw
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !80, !noalias !788
  %i.ajb = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.ajc = icmp eq i8 %i.ajb, 0
  br i1 %i.ajc, label %bb.ht, label %bb.hv, !prof !82

bb.ht:                                            ; preds = %bb.hs
  %i.ajd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i506 = icmp eq i32 %i.ajd, 0
  br i1 %.not.i506, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aje = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht, %bb.hs
  %i.ajf = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.ajg = icmp eq i8 %i.ajf, 0
  br i1 %i.ajg, label %bb.hw, label %_ZN2cv3dnn26unicode_cpt_flags_from_cptEj.exit509, !prof !82

bb.hw:                                            ; preds = %bb.hv
  %i.ajh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i505 = icmp eq i32 %i.ajh, 0
  br i1 %.not3.i505, label %_ZN2cv3dnn26unicode_cpt_flags_from_cptEj.exit509, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.hy unwind label %bb.hz, !noalias !788

bb.hy:                                            ; preds = %bb.hx
  %i.aji = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %_ZN2cv3dnn26unicode_cpt_flags_from_cptEj.exit509

bb.hz:                                            ; preds = %bb.hx
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

_ZN2cv3dnn26unicode_cpt_flags_from_cptEj.exit509: ; preds = %bb.hv, %bb.hw, %bb.hy
  %i.ajk = zext i32 %i.aja to i64                 ; 2 uses
  %i.ajl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.ajm = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.ajn = ptrtoint ptr %i.ajl to i64
  %i.ajo = ptrtoint ptr %i.ajm to i64
  %i.ajp = sub i64 %i.ajn, %i.ajo
  %i.ajq = ashr exact i64 %i.ajp, 1
  %i.ajr = icmp ugt i64 %i.ajq, %i.ajk
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ajm, i64 %i.ajk
  %spec.select.i503 = select i1 %i.ajr, ptr %i.ajs, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i504 = load i16, ptr %spec.select.i503, align 2, !tbaa !72, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit255.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit255.i.i": ; preds = %_ZN2cv3dnn26unicode_cpt_flags_from_cptEj.exit509, %bb.hr, %bb.hq
  %storemerge.i40.i = phi i16 [ %.sroa.0.0.copyload.i504, %_ZN2cv3dnn26unicode_cpt_flags_from_cptEj.exit509 ], [ 0, %bb.hr ], [ %.sroa.0.0.i462480.i.i, %bb.hq ] ; 2 uses
  %i.ajt = and i16 %storemerge.i40.i, 262
  %i.aju = icmp ne i16 %i.ajt, 0
  %.not135.i.i = icmp eq i16 %.sroa.0.0.i462480.i.i, 0
  %or.cond504.i.i = or i1 %.not135.i.i, %i.aju
  br i1 %or.cond504.i.i, label %.preheader.i.i, label %bb.ig

.preheader.i.i:                                   ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit255.i.i"
  %i.ajv = icmp ult i64 %.0107582.i.i, %i.aab
  %or.cond509568.i.i = and i1 %.not.i.i23.i, %i.ajv
  %i.ajw = add nuw i64 %.0107582.i.i, 1           ; 10 uses
  br i1 %or.cond509568.i.i, label %.lr.ph572.preheader.i.i, label %.thread680.i.i

.lr.ph572.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.ajx = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %.0107582.i.i
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !80, !noalias !788
  %i.aka = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.akb = icmp eq i8 %i.aka, 0
  br i1 %i.akb, label %bb.ia, label %bb.ic, !prof !82

bb.ia:                                            ; preds = %.lr.ph572.preheader.i.i
  %i.akc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i356.peel.i.i = icmp eq i32 %i.akc, 0
  br i1 %.not.i356.peel.i.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.akd = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %.lr.ph572.preheader.i.i
  %i.ake = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.akf = icmp eq i8 %i.ake, 0
  br i1 %i.akf, label %bb.id, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.peel.i.i", !prof !82

bb.id:                                            ; preds = %bb.ic
  %i.akg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i355.peel.i.i = icmp eq i32 %i.akg, 0
  br i1 %.not3.i355.peel.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.peel.i.i", label %bb.ie

bb.ie:                                            ; preds = %bb.id
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.if unwind label %.loopexit.split-lp.i44.i, !noalias !788

bb.if:                                            ; preds = %bb.ie
  %i.akh = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.peel.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.peel.i.i": ; preds = %bb.if, %bb.id, %bb.ic
  %i.aki = zext i32 %i.ajz to i64                 ; 2 uses
  %i.akj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.akk = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.akl = ptrtoint ptr %i.akj to i64
  %i.akm = ptrtoint ptr %i.akk to i64
  %i.akn = sub i64 %i.akl, %i.akm
  %i.ako = ashr exact i64 %i.akn, 1
  %i.akp = icmp ugt i64 %i.ako, %i.aki
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.akk, i64 %i.aki
  %spec.select.i353.peel.i.i = select i1 %i.akp, ptr %i.akq, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i354.peel.i.i = load i16, ptr %spec.select.i353.peel.i.i, align 2, !tbaa !72, !noalias !788
  %i.akr = and i16 %.sroa.0.0.copyload.i354.peel.i.i, 256
  %.not138.peel.i.i = icmp eq i16 %i.akr, 0
  br i1 %.not138.peel.i.i, label %.thread680.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.peel.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.peel.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.peel.i.i"
  %i.aks = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 2 uses
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.aks, i64 %.0107582.i.i
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !80, !noalias !788
  %28 = icmp ult i64 %i.ajw, %i.aab               ; 2 uses
  switch i32 %i.aku, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.thread.i" [
    i32 13, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.i.a"
    i32 10, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.i.a"
  ]

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.i.a": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.peel.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.peel.i.i"
  br i1 %28, label %.lr.ph572.i.preheader.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.thread.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.peel.i.i"
  br i1 %28, label %.lr.ph572.i.preheader.i, label %.thread491.i.i

.lr.ph572.i.preheader.i:                          ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.thread.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.i.a"
  %.0570.i.ph.i = phi i64 [ 0, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.thread.i" ], [ %i.ajw, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.i.a" ]
  %29 = add nuw i64 %.0107582.i.i, 2
  %umax294.i = call i64 @llvm.umax.i64(i64 %i.aab, i64 %29)
  br label %.lr.ph572.i.i

bb.ig:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit255.i.i"
  %i.akv = zext i1 %i.aiv to i64                  ; 2 uses
  %i.akw = add nuw i64 %.0107582.i.i, %i.akv      ; 3 uses
  %.not137562.i.i = icmp eq i16 %storemerge.i40.i, 0
  br i1 %.not137562.i.i, label %.critedge16.i.i, label %.lr.ph565.i.preheader.i

.lr.ph565.i.preheader.i:                          ; preds = %bb.ig
  %i.akx = add nuw i64 %.0107582.i.i, 1
  %i.aky = add i64 %i.akx, %i.akv                 ; 2 uses
  %.not.i256.i.i = icmp uge i64 %i.aky, %.0111586.i.i
  %.not.i256.i.i.fr = freeze i1 %.not.i256.i.i
  br i1 %.not.i256.i.i.fr, label %.lr.ph565.i.i.preheader, label %.lr.ph565.i.preheader.i.split.us

.lr.ph565.i.i.preheader:                          ; preds = %.lr.ph565.i.preheader.i
  %umax = call i64 @llvm.umax.i64(i64 %i.aky, i64 %i.aab) ; 2 uses
  %i.akz = add i64 %i.akw, 1                      ; 2 uses
  %i.ala = icmp ult i64 %i.akz, %i.aab
  %i.alb = load ptr, ptr %8, align 8, !noalias !788 ; 2 uses
  br i1 %i.ala, label %.lr.ph4453, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i"

.lr.ph565.i.preheader.i.split.us:                 ; preds = %.lr.ph565.i.preheader.i
  %i.alc = add i64 %i.akw, 1
  br label %.critedge16.i.i

.lr.ph565.i.i:                                    ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit259.i.i"
  %i.ald = add i64 %i.alh, 1                      ; 2 uses
  %i.ale = icmp ult i64 %i.ald, %i.aab
  %i.alf = load ptr, ptr %8, align 8, !noalias !788 ; 2 uses
  br i1 %i.ale, label %.lr.ph4453, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i", !llvm.loop !754

.lr.ph4453:                                       ; preds = %.lr.ph565.i.i.preheader, %.lr.ph565.i.i
  %i.alg = phi ptr [ %i.alf, %.lr.ph565.i.i ], [ %i.alb, %.lr.ph565.i.i.preheader ]
  %i.alh = phi i64 [ %i.ald, %.lr.ph565.i.i ], [ %i.akz, %.lr.ph565.i.i.preheader ] ; 3 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %i.alh
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !80, !noalias !788
  %i.alk = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.all = icmp eq i8 %i.alk, 0
  br i1 %i.all, label %bb.ih, label %bb.ij, !prof !82

bb.ih:                                            ; preds = %.lr.ph4453
  %i.alm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i349.i.i = icmp eq i32 %i.alm, 0
  br i1 %.not.i349.i.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.aln = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %.lr.ph4453
  %i.alo = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.alp = icmp eq i8 %i.alo, 0
  br i1 %i.alp, label %bb.ik, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit259.i.i", !prof !82

bb.ik:                                            ; preds = %bb.ij
  %i.alq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i348.i.i = icmp eq i32 %i.alq, 0
  br i1 %.not3.i348.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit259.i.i", label %bb.il

bb.il:                                            ; preds = %bb.ik
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.im unwind label %bb.in, !noalias !788

bb.im:                                            ; preds = %bb.il
  %i.alr = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit259.i.i"

bb.in:                                            ; preds = %bb.il
  %i.als = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit259.i.i": ; preds = %bb.im, %bb.ik, %bb.ij
  %i.alt = zext i32 %i.alj to i64                 ; 2 uses
  %i.alu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.alv = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.alw = ptrtoint ptr %i.alu to i64
  %i.alx = ptrtoint ptr %i.alv to i64
  %i.aly = sub i64 %i.alw, %i.alx
  %i.alz = ashr exact i64 %i.aly, 1
  %i.ama = icmp ugt i64 %i.alz, %i.alt
  %i.amb = getelementptr inbounds nuw [2 x i8], ptr %i.alv, i64 %i.alt
  %spec.select.i346.i.i = select i1 %i.ama, ptr %i.amb, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i347.i.i = load i16, ptr %spec.select.i346.i.i, align 2, !tbaa !72, !noalias !788 ; 2 uses
  %i.amc = and i16 %.sroa.0.0.copyload.i347.i.i, 262
  %i.amd = icmp ne i16 %i.amc, 0
  %.not137.i.i = icmp eq i16 %.sroa.0.0.copyload.i347.i.i, 0
  %or.cond505.i.i = or i1 %.not137.i.i, %i.amd
  br i1 %or.cond505.i.i, label %.critedge16.i.i, label %.lr.ph565.i.i, !llvm.loop !754

.critedge16.i.i:                                  ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit259.i.i", %.lr.ph565.i.preheader.i.split.us, %bb.ig
  %.7.lcssa.i.i = phi i64 [ %i.akw, %bb.ig ], [ %i.alc, %.lr.ph565.i.preheader.i.split.us ], [ %i.alh, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit259.i.i" ] ; 5 uses
  %.not.i260.i.i = icmp ule i64 %.0111586.i.i, %.7.lcssa.i.i
  %i.ame = icmp ult i64 %.7.lcssa.i.i, %i.aab
  %or.cond507.i.i = and i1 %.not.i260.i.i, %i.ame
  %.pre.i41.i = load ptr, ptr %8, align 8, !noalias !788 ; 3 uses
  br i1 %or.cond507.i.i, label %bb.io, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i"

bb.io:                                            ; preds = %.critedge16.i.i
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i41.i, i64 %.7.lcssa.i.i
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !80, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i": ; preds = %.lr.ph565.i.i, %.lr.ph565.i.i.preheader, %bb.io, %.critedge16.i.i
  %.pre.i41.i2880 = phi ptr [ %.pre.i41.i, %bb.io ], [ %.pre.i41.i, %.critedge16.i.i ], [ %i.alb, %.lr.ph565.i.i.preheader ], [ %i.alf, %.lr.ph565.i.i ]
  %.7.lcssa.i.i2879 = phi i64 [ %.7.lcssa.i.i, %bb.io ], [ %.7.lcssa.i.i, %.critedge16.i.i ], [ %umax, %.lr.ph565.i.i.preheader ], [ %umax, %.lr.ph565.i.i ]
  %i.amh = phi i32 [ %i.amg, %bb.io ], [ -1, %.critedge16.i.i ], [ -1, %.lr.ph565.i.i.preheader ], [ -1, %.lr.ph565.i.i ]
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i.backedge", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i"
  %.8.i.i = phi i64 [ %.7.lcssa.i.i2879, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i" ], [ %i.ami, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i.backedge" ] ; 7 uses
  %.0104.i.i = phi i32 [ %i.amh, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit261.i.i" ], [ %.0104.i.i.be, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i.backedge" ]
  switch i32 %.0104.i.i, label %bb.ir [
    i32 13, label %bb.ip
    i32 10, label %bb.ip
  ]

bb.ip:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i"
  %i.ami = add i64 %.8.i.i, 1                     ; 4 uses
  %.not.i262.i42.i = icmp ule i64 %.0111586.i.i, %i.ami
  %i.amj = icmp ult i64 %i.ami, %i.aab
  %or.cond508.i.i = and i1 %.not.i262.i42.i, %i.amj
  br i1 %or.cond508.i.i, label %bb.iq, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i.backedge"

bb.iq:                                            ; preds = %bb.ip
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i41.i2880, i64 %i.ami
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !80, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i.backedge"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i.backedge": ; preds = %bb.iq, %bb.ip
  %.0104.i.i.be = phi i32 [ %i.aml, %bb.iq ], [ -1, %bb.ip ]
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i", !llvm.loop !755

.loopexit533.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i266.i.i
  %lpad.loopexit535.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp534.i.i:                        ; preds = %bb.iv
  %lpad.loopexit.split-lp.i43.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

bb.ir:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit263.i.i"
  %i.amm = sub i64 %.8.i.i, %.0454581.i.i         ; 2 uses
  %.not.i264.i.i = icmp eq i64 %.8.i.i, %.0454581.i.i
  br i1 %.not.i264.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.is

bb.is:                                            ; preds = %bb.ir
  %.not.i.i265.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i265.i.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  store i64 %i.amm, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.amn = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.iu:                                            ; preds = %bb.is
  %i.amo = ptrtoint ptr %.sroa.29.4.i to i64
  %i.amp = ptrtoint ptr %.sroa.0.4.i to i64
  %i.amq = sub i64 %i.amo, %i.amp                 ; 6 uses
  %i.amr = icmp eq i64 %i.amq, 9223372036854775800
  br i1 %i.amr, label %bb.iv, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i266.i.i

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.noexc272.i.i unwind label %.loopexit.split-lp534.i.i, !noalias !788

.noexc272.i.i:                                    ; preds = %bb.iv
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i266.i.i: ; preds = %bb.iu
  %i.ams = ashr exact i64 %i.amq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i267.i.i = call i64 @llvm.umax.i64(i64 %i.ams, i64 1)
  %i.amt = add nsw i64 %.sroa.speculated.i.i.i.i267.i.i, %i.ams ; 2 uses
  %i.amu = icmp ult i64 %i.amt, %i.ams
  %i.amv = call i64 @llvm.umin.i64(i64 %i.amt, i64 1152921504606846975)
  %i.amw = select i1 %i.amu, i64 1152921504606846975, i64 %i.amv ; 3 uses
  %.not.i.i.i.i268.i.i = icmp ne i64 %i.amw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i268.i.i)
  %i.amx = shl nuw nsw i64 %i.amw, 3
  %i.amy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amx) #31
          to label %.noexc273.i.i unwind label %.loopexit533.i.i, !noalias !788 ; 4 uses

.noexc273.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i266.i.i
  %i.amz = getelementptr inbounds i8, ptr %i.amy, i64 %i.amq ; 2 uses
  store i64 %i.amm, ptr %i.amz, align 8, !tbaa !66, !noalias !788
  %i.ana = icmp sgt i64 %i.amq, 0
  br i1 %i.ana, label %bb.iw, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i269.i.i

bb.iw:                                            ; preds = %.noexc273.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.amy, ptr align 8 %.sroa.0.4.i, i64 %i.amq, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i269.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i269.i.i: ; preds = %bb.iw, %.noexc273.i.i
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amz, i64 8
  %.not.i17.i.i.i270.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i270.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i, label %bb.ix

bb.ix:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i269.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.amq) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i: ; preds = %bb.ix, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i269.i.i
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %i.amy, i64 %i.amw
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

.lr.ph572.i.i:                                    ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i", %.lr.ph572.i.preheader.i
  %i.and = phi ptr [ %i.anz, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i" ], [ %i.aks, %.lr.ph572.i.preheader.i ]
  %.0570.i.i = phi i64 [ %.1.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i" ], [ %.0570.i.ph.i, %.lr.ph572.i.preheader.i ] ; 2 uses
  %.0103569.i.i = phi i64 [ %i.aod, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i" ], [ 1, %.lr.ph572.i.preheader.i ] ; 3 uses
  %i.ane = add nuw i64 %.0103569.i.i, %.0107582.i.i ; 4 uses
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.and, i64 %i.ane
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !80, !noalias !788
  %i.anh = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef acquire, align 8, !noalias !788
  %i.ani = icmp eq i8 %i.anh, 0
  br i1 %i.ani, label %bb.iy, label %bb.ja, !prof !82

bb.iy:                                            ; preds = %.lr.ph572.i.i
  %i.anj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  %.not.i356.i.i = icmp eq i32 %i.anj, 0
  br i1 %.not.i356.i.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  store i16 1, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef, align 2, !tbaa !84, !noalias !788
  %i.ank = call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef), !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef) #28, !noalias !788
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %.lr.ph572.i.i
  %i.anl = load atomic i8, ptr @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags acquire, align 8, !noalias !788
  %i.anm = icmp eq i8 %i.anl, 0
  br i1 %i.anm, label %bb.jb, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i", !prof !82

bb.jb:                                            ; preds = %bb.ja
  %i.ann = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  %.not3.i355.i.i = icmp eq i32 %i.ann, 0
  br i1 %.not3.i355.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i", label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  invoke fastcc void @_ZN2cv3dnnL23unicode_cpt_flags_arrayEv()
          to label %bb.jd unwind label %.loopexit594.i.i, !noalias !788

bb.jd:                                            ; preds = %bb.jc
  %i.ano = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN2cv3dnn17unicode_cpt_flagsESaIS2_EED2Ev, ptr nonnull @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, ptr nonnull @__dso_handle) #28, !noalias !788 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i"

.loopexit594.i.i:                                 ; preds = %bb.jc
  %lpad.loopexit595.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

.loopexit.split-lp.i44.i:                         ; preds = %bb.ie
  %lpad.loopexit.split-lp596.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.je:                                            ; preds = %.loopexit.split-lp.i44.i, %.loopexit594.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit595.i.i, %.loopexit594.i.i ], [ %lpad.loopexit.split-lp596.i.i, %.loopexit.split-lp.i44.i ]
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags) #28, !noalias !788
  br label %.body.i24.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i": ; preds = %bb.jd, %bb.jb, %bb.ja
  %i.anp = zext i32 %i.ang to i64                 ; 2 uses
  %i.anq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, i64 8), align 8, !tbaa !87, !noalias !788
  %i.anr = load ptr, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE9cpt_flags, align 8, !tbaa !88, !noalias !788 ; 2 uses
  %i.ans = ptrtoint ptr %i.anq to i64
  %i.ant = ptrtoint ptr %i.anr to i64
  %i.anu = sub i64 %i.ans, %i.ant
  %i.anv = ashr exact i64 %i.anu, 1
  %i.anw = icmp ugt i64 %i.anv, %i.anp
  %i.anx = getelementptr inbounds nuw [2 x i8], ptr %i.anr, i64 %i.anp
  %spec.select.i353.i.i = select i1 %i.anw, ptr %i.anx, ptr @_ZZN2cv3dnn26unicode_cpt_flags_from_cptEjE5undef
  %.sroa.0.0.copyload.i354.i.i = load i16, ptr %spec.select.i353.i.i, align 2, !tbaa !72, !noalias !788
  %i.any = and i16 %.sroa.0.0.copyload.i354.i.i, 256
  %.not138.i.i = icmp eq i16 %i.any, 0
  br i1 %.not138.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.i", label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i"
  %i.anz = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.anz, i64 %i.ane
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !80, !noalias !788
  switch i32 %i.aob, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i" [
    i32 13, label %bb.jf
    i32 10, label %bb.jf
  ]

bb.jf:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.i.i"
  %i.aoc = add nuw i64 %i.ane, 1
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i": ; preds = %bb.jf, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.i.i"
  %.1.i.i = phi i64 [ %i.aoc, %bb.jf ], [ %.0570.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.i.i" ] ; 2 uses
  %i.aod = add i64 %.0103569.i.i, 1               ; 3 uses
  %30 = add i64 %i.aod, %.0107582.i.i
  %31 = icmp ult i64 %30, %i.aab
  br i1 %31, label %.lr.ph572.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.i", !llvm.loop !756

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i"
  %.0103.lcssa.i.i = phi i64 [ %i.aod, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i" ], [ %.0103569.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i" ] ; 3 uses
  %.0.lcssa.i.i = phi i64 [ %.1.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i" ], [ %.0570.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i" ] ; 2 uses
  %.lcssa.i.i = phi i64 [ %umax294.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.i.i" ], [ %i.ane, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.i.i" ] ; 5 uses
  %.not139.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not139.i.i, label %32, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i": ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.i", %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.i.a"
  %.0.lcssa.i71.i = phi i64 [ %.0.lcssa.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.i" ], [ %i.ajw, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.i.a" ] ; 6 uses
  %i.aoe = sub i64 %.0.lcssa.i71.i, %.0454581.i.i ; 2 uses
  %.not.i281.i.i = icmp eq i64 %.0.lcssa.i71.i, %.0454581.i.i
  br i1 %.not.i281.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.jg

bb.jg:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i"
  %.not.i.i282.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i282.i.i, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  store i64 %i.aoe, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.ji:                                            ; preds = %bb.jg
  %i.aog = ptrtoint ptr %.sroa.29.4.i to i64
  %i.aoh = ptrtoint ptr %.sroa.0.4.i to i64
  %i.aoi = sub i64 %i.aog, %i.aoh                 ; 6 uses
  %i.aoj = icmp eq i64 %i.aoi, 9223372036854775800
  br i1 %i.aoj, label %.invoke691.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i283.i.i

.invoke691.i.i:                                   ; preds = %bb.jz, %bb.ju, %bb.jp, %bb.ji
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
          to label %.cont692.i.i unwind label %.loopexit.split-lp538.i.i, !noalias !788

.cont692.i.i:                                     ; preds = %.invoke691.i.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i283.i.i: ; preds = %bb.ji
  %i.aok = ashr exact i64 %i.aoi, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i284.i.i = call i64 @llvm.umax.i64(i64 %i.aok, i64 1)
  %i.aol = add nsw i64 %.sroa.speculated.i.i.i.i284.i.i, %i.aok ; 2 uses
  %i.aom = icmp ult i64 %i.aol, %i.aok
  %i.aon = call i64 @llvm.umin.i64(i64 %i.aol, i64 1152921504606846975)
  %i.aoo = select i1 %i.aom, i64 1152921504606846975, i64 %i.aon ; 3 uses
  %.not.i.i.i.i285.i.i = icmp ne i64 %i.aoo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i285.i.i)
  %i.aop = shl nuw nsw i64 %i.aoo, 3
  %i.aoq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aop) #31
          to label %.noexc290.i.i unwind label %.loopexit537.i.i, !noalias !788 ; 4 uses

.noexc290.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i283.i.i
  %i.aor = getelementptr inbounds i8, ptr %i.aoq, i64 %i.aoi ; 2 uses
  store i64 %i.aoe, ptr %i.aor, align 8, !tbaa !66, !noalias !788
  %i.aos = icmp sgt i64 %i.aoi, 0
  br i1 %i.aos, label %bb.jj, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i286.i.i

bb.jj:                                            ; preds = %.noexc290.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aoq, ptr align 8 %.sroa.0.4.i, i64 %i.aoi, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i286.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i286.i.i: ; preds = %bb.jj, %.noexc290.i.i
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  %.not.i17.i.i.i287.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i287.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i, label %bb.jk

bb.jk:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i286.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.aoi) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i: ; preds = %bb.jk, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i286.i.i
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %i.aoq, i64 %i.aoo
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

.loopexit537.i.i:                                 ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i318.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i307.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i296.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i283.i.i
  %lpad.loopexit539.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

.loopexit.split-lp538.i.i:                        ; preds = %.invoke691.i.i
  %lpad.loopexit.split-lp540.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i24.i

32:                                               ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.i"
  %33 = icmp ugt i64 %.0103.lcssa.i.i, 1
  br i1 %33, label %bb.jl, label %34

bb.jl:                                            ; preds = %32
  %i.aov = icmp ult i64 %.lcssa.i.i, %i.aab
  br i1 %i.aov, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit293.i.i", label %.thread491.i.i

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit293.i.i": ; preds = %bb.jl
  %i.aow = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.aow, i64 %.lcssa.i.i
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !80, !noalias !788
  %.not140.i.i = icmp eq i32 %i.aoy, -1
  br i1 %.not140.i.i, label %.thread491.i.i, label %bb.jm

bb.jm:                                            ; preds = %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit293.i.i"
  %i.aoz = add i64 %.0107582.i.i, -1
  %i.apa = add i64 %i.aoz, %.0103.lcssa.i.i       ; 6 uses
  %i.apb = sub i64 %i.apa, %.0454581.i.i          ; 2 uses
  %.not.i294.i.i = icmp eq i64 %i.apa, %.0454581.i.i
  br i1 %.not.i294.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %.not.i.i295.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i295.i.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  store i64 %i.apb, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.apc = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.jp:                                            ; preds = %bb.jn
  %i.apd = ptrtoint ptr %.sroa.29.4.i to i64
  %i.ape = ptrtoint ptr %.sroa.0.4.i to i64
  %i.apf = sub i64 %i.apd, %i.ape                 ; 6 uses
  %i.apg = icmp eq i64 %i.apf, 9223372036854775800
  br i1 %i.apg, label %.invoke691.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i296.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i296.i.i: ; preds = %bb.jp
  %i.aph = ashr exact i64 %i.apf, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i297.i.i = call i64 @llvm.umax.i64(i64 %i.aph, i64 1)
  %i.api = add nsw i64 %.sroa.speculated.i.i.i.i297.i.i, %i.aph ; 2 uses
  %i.apj = icmp ult i64 %i.api, %i.aph
  %i.apk = call i64 @llvm.umin.i64(i64 %i.api, i64 1152921504606846975)
  %i.apl = select i1 %i.apj, i64 1152921504606846975, i64 %i.apk ; 3 uses
  %.not.i.i.i.i298.i.i = icmp ne i64 %i.apl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i298.i.i)
  %i.apm = shl nuw nsw i64 %i.apl, 3
  %i.apn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apm) #31
          to label %.noexc303.i.i unwind label %.loopexit537.i.i, !noalias !788 ; 4 uses

.noexc303.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i296.i.i
  %i.apo = getelementptr inbounds i8, ptr %i.apn, i64 %i.apf ; 2 uses
  store i64 %i.apb, ptr %i.apo, align 8, !tbaa !66, !noalias !788
  %i.app = icmp sgt i64 %i.apf, 0
  br i1 %i.app, label %bb.jq, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i299.i.i

bb.jq:                                            ; preds = %.noexc303.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.apn, ptr align 8 %.sroa.0.4.i, i64 %i.apf, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i299.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i299.i.i: ; preds = %bb.jq, %.noexc303.i.i
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %.not.i17.i.i.i300.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i300.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i, label %bb.jr

bb.jr:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i299.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.apf) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i: ; preds = %bb.jr, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i299.i.i
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apl
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

34:                                               ; preds = %32
  %.not141.i.i = icmp eq i64 %.0103.lcssa.i.i, 0
  br i1 %.not141.i.i, label %.thread680.i.i, label %.thread491.i.i

.thread491.i.i:                                   ; preds = %34, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit293.i.i", %bb.jl, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.thread.i"
  %.lcssa.i7277.i = phi i64 [ %.lcssa.i.i, %34 ], [ %.lcssa.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit293.i.i" ], [ %.lcssa.i.i, %bb.jl ], [ %i.ajw, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_0clEm.exit280.thread.peel.i.thread.i" ] ; 6 uses
  %i.aps = sub i64 %.lcssa.i7277.i, %.0454581.i.i ; 2 uses
  %.not.i305.i.i = icmp eq i64 %.lcssa.i7277.i, %.0454581.i.i
  br i1 %.not.i305.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.js

bb.js:                                            ; preds = %.thread491.i.i
  %.not.i.i306.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i306.i.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  store i64 %i.aps, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.apt = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.ju:                                            ; preds = %bb.js
  %i.apu = ptrtoint ptr %.sroa.29.4.i to i64
  %i.apv = ptrtoint ptr %.sroa.0.4.i to i64
  %i.apw = sub i64 %i.apu, %i.apv                 ; 6 uses
  %i.apx = icmp eq i64 %i.apw, 9223372036854775800
  br i1 %i.apx, label %.invoke691.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i307.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i307.i.i: ; preds = %bb.ju
  %i.apy = ashr exact i64 %i.apw, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i308.i.i = call i64 @llvm.umax.i64(i64 %i.apy, i64 1)
  %i.apz = add nsw i64 %.sroa.speculated.i.i.i.i308.i.i, %i.apy ; 2 uses
  %i.aqa = icmp ult i64 %i.apz, %i.apy
  %i.aqb = call i64 @llvm.umin.i64(i64 %i.apz, i64 1152921504606846975)
  %i.aqc = select i1 %i.aqa, i64 1152921504606846975, i64 %i.aqb ; 3 uses
  %.not.i.i.i.i309.i.i = icmp ne i64 %i.aqc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i309.i.i)
  %i.aqd = shl nuw nsw i64 %i.aqc, 3
  %i.aqe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqd) #31
          to label %.noexc314.i.i unwind label %.loopexit537.i.i, !noalias !788 ; 4 uses

.noexc314.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i307.i.i
  %i.aqf = getelementptr inbounds i8, ptr %i.aqe, i64 %i.apw ; 2 uses
  store i64 %i.aps, ptr %i.aqf, align 8, !tbaa !66, !noalias !788
  %i.aqg = icmp sgt i64 %i.apw, 0
  br i1 %i.aqg, label %bb.jv, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i310.i.i

bb.jv:                                            ; preds = %.noexc314.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aqe, ptr align 8 %.sroa.0.4.i, i64 %i.apw, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i310.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i310.i.i: ; preds = %bb.jv, %.noexc314.i.i
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %.not.i17.i.i.i311.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i311.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i, label %bb.jw

bb.jw:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i310.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.apw) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i: ; preds = %bb.jw, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i310.i.i
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %i.aqc
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

.thread680.i.i:                                   ; preds = %34, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.peel.i.i", %.preheader.i.i
  %i.aqj = sub i64 %i.ajw, %.0454581.i.i          ; 2 uses
  %.not.i316.i.i = icmp eq i64 %i.ajw, %.0454581.i.i
  br i1 %.not.i316.i.i, label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i", label %bb.jx

bb.jx:                                            ; preds = %.thread680.i.i
  %.not.i.i317.i.i = icmp eq ptr %.sroa.29.4.i, %.sroa.61.4.i
  br i1 %.not.i.i317.i.i, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  store i64 %i.aqj, ptr %.sroa.29.4.i, align 8, !tbaa !66, !noalias !788
  %i.aqk = getelementptr inbounds nuw i8, ptr %.sroa.29.4.i, i64 8
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

bb.jz:                                            ; preds = %bb.jx
  %i.aql = ptrtoint ptr %.sroa.29.4.i to i64
  %i.aqm = ptrtoint ptr %.sroa.0.4.i to i64
  %i.aqn = sub i64 %i.aql, %i.aqm                 ; 6 uses
  %i.aqo = icmp eq i64 %i.aqn, 9223372036854775800
  br i1 %i.aqo, label %.invoke691.i.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i318.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i318.i.i: ; preds = %bb.jz
  %i.aqp = ashr exact i64 %i.aqn, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i319.i.i = call i64 @llvm.umax.i64(i64 %i.aqp, i64 1)
  %i.aqq = add nsw i64 %.sroa.speculated.i.i.i.i319.i.i, %i.aqp ; 2 uses
  %i.aqr = icmp ult i64 %i.aqq, %i.aqp
  %i.aqs = call i64 @llvm.umin.i64(i64 %i.aqq, i64 1152921504606846975)
  %i.aqt = select i1 %i.aqr, i64 1152921504606846975, i64 %i.aqs ; 3 uses
  %.not.i.i.i.i320.i.i = icmp ne i64 %i.aqt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i320.i.i)
  %i.aqu = shl nuw nsw i64 %i.aqt, 3
  %i.aqv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqu) #31
          to label %.noexc325.i.i unwind label %.loopexit537.i.i, !noalias !788 ; 4 uses

.noexc325.i.i:                                    ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i318.i.i
  %i.aqw = getelementptr inbounds i8, ptr %i.aqv, i64 %i.aqn ; 2 uses
  store i64 %i.aqj, ptr %i.aqw, align 8, !tbaa !66, !noalias !788
  %i.aqx = icmp sgt i64 %i.aqn, 0
  br i1 %i.aqx, label %bb.ka, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i321.i.i

bb.ka:                                            ; preds = %.noexc325.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aqv, ptr align 8 %.sroa.0.4.i, i64 %i.aqn, i1 false), !noalias !788
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i321.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i321.i.i: ; preds = %bb.ka, %.noexc325.i.i
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  %.not.i17.i.i.i322.i.i = icmp eq ptr %.sroa.0.4.i, null
  br i1 %.not.i17.i.i.i322.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i321.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i, i64 noundef %i.aqn) #30, !noalias !788
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i: ; preds = %bb.kb, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i321.i.i
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.aqv, i64 %i.aqt
  br label %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i"

"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit225.i.i": ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i, %bb.jy, %.thread680.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i, %bb.jt, %.thread491.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i, %bb.jo, %bb.jm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i, %bb.jh, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i", %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i, %bb.it, %bb.ir, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i, %bb.hm, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i", %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i, %bb.gs, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i", %bb.ga, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i"
  %.sroa.0.11.i = phi ptr [ %.sroa.0.4.i, %.thread680.i.i ], [ %i.aqv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i ], [ %.sroa.0.4.i, %bb.jy ], [ %.sroa.0.4.i, %.thread491.i.i ], [ %i.aqe, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i ], [ %.sroa.0.4.i, %bb.jt ], [ %.sroa.0.4.i, %bb.jm ], [ %i.apn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i ], [ %.sroa.0.4.i, %bb.jo ], [ %.sroa.0.4.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i" ], [ %i.aoq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i ], [ %.sroa.0.4.i, %bb.jh ], [ %.sroa.0.4.i, %bb.ir ], [ %i.amy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i ], [ %.sroa.0.4.i, %bb.it ], [ %.sroa.0.9.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i" ], [ %i.aiq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i ], [ %.sroa.0.9.i, %bb.hm ], [ %.sroa.0.4.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i" ], [ %i.agg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i ], [ %.sroa.0.4.i, %bb.gs ], [ %.sroa.0.6.i, %bb.ga ], [ %.sroa.0.5.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.29.10.i = phi ptr [ %.sroa.29.4.i, %.thread680.i.i ], [ %i.aqy, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i ], [ %i.aqk, %bb.jy ], [ %.sroa.29.4.i, %.thread491.i.i ], [ %i.aqh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i ], [ %i.apt, %bb.jt ], [ %.sroa.29.4.i, %bb.jm ], [ %i.apq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i ], [ %i.apc, %bb.jo ], [ %.sroa.29.4.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i" ], [ %i.aot, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i ], [ %i.aof, %bb.jh ], [ %.sroa.29.4.i, %bb.ir ], [ %i.anb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i ], [ %i.amn, %bb.it ], [ %.sroa.29.9.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i" ], [ %i.ait, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i ], [ %i.aif, %bb.hm ], [ %.sroa.29.4.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i" ], [ %i.agj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i ], [ %i.afv, %bb.gs ], [ %.sroa.29.6.i, %bb.ga ], [ %.sroa.29.5.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.sroa.61.11.i = phi ptr [ %.sroa.61.4.i, %.thread680.i.i ], [ %i.aqz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i ], [ %.sroa.61.4.i, %bb.jy ], [ %.sroa.61.4.i, %.thread491.i.i ], [ %i.aqi, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i ], [ %.sroa.61.4.i, %bb.jt ], [ %.sroa.61.4.i, %bb.jm ], [ %i.apr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i ], [ %.sroa.61.4.i, %bb.jo ], [ %.sroa.61.4.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i" ], [ %i.aou, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i ], [ %.sroa.61.4.i, %bb.jh ], [ %.sroa.61.4.i, %bb.ir ], [ %i.anc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i ], [ %.sroa.61.4.i, %bb.it ], [ %.sroa.61.9.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i" ], [ %i.aiu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i ], [ %.sroa.61.9.i, %bb.hm ], [ %.sroa.61.4.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i" ], [ %i.agk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i ], [ %.sroa.61.4.i, %bb.gs ], [ %.sroa.61.6.i, %bb.ga ], [ %.sroa.61.5.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %.7460.i.i = phi i64 [ %.0454581.i.i, %.thread680.i.i ], [ %i.ajw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i ], [ %i.ajw, %bb.jy ], [ %.0454581.i.i, %.thread491.i.i ], [ %.lcssa.i7277.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i ], [ %.lcssa.i7277.i, %bb.jt ], [ %.0454581.i.i, %bb.jm ], [ %i.apa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i ], [ %i.apa, %bb.jo ], [ %.0454581.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i" ], [ %.0.lcssa.i71.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i ], [ %.0.lcssa.i71.i, %bb.jh ], [ %.0454581.i.i, %bb.ir ], [ %.8.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i ], [ %.8.i.i, %bb.it ], [ %.4457.lcssa.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i" ], [ %.6.lcssa.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i ], [ %.6.lcssa.i.i, %bb.hm ], [ %.0454581.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i" ], [ %.us-phi.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i ], [ %.us-phi.i, %bb.gs ], [ %i.adc, %bb.ga ], [ %i.abs, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ]
  %.11.i.i = phi i64 [ %.0454581.i.i, %.thread680.i.i ], [ %i.ajw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i323.i.i ], [ %i.ajw, %bb.jy ], [ %.0454581.i.i, %.thread491.i.i ], [ %.lcssa.i7277.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i312.i.i ], [ %.lcssa.i7277.i, %bb.jt ], [ %.0454581.i.i, %bb.jm ], [ %i.apa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i301.i.i ], [ %i.apa, %bb.jo ], [ %.0454581.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit278.thread.i.thread.i" ], [ %.0.lcssa.i71.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i288.i.i ], [ %.0.lcssa.i71.i, %bb.jh ], [ %.0454581.i.i, %bb.ir ], [ %.8.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i271.i.i ], [ %.8.i.i, %bb.it ], [ %.4457.lcssa.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit229.thread.i.i" ], [ %.6.lcssa.i.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i248.i.i ], [ %.6.lcssa.i.i, %bb.hm ], [ %.0454581.i.i, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_1clEm.exit214.thread.i.i" ], [ %.us-phi.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i222.i.i ], [ %.us-phi.i, %bb.gs ], [ %i.adu, %bb.ga ], [ %i.ack, %"_ZZN2cv3dnnL33unicode_regex_split_custom_llama3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorImSaImEEENK3$_2clEm.exit.i.i" ] ; 2 uses
  %i.ara = icmp ult i64 %.11.i.i, %i.aab
  br i1 %i.ara, label %.lr.ph583.i.i, label %._crit_edge.i21.i

.body.i24.i:                                      ; preds = %bb.hz, %bb.gj, %.loopexit.split-lp538.i.i, %.loopexit537.i.i, %bb.je, %.loopexit.split-lp534.i.i, %.loopexit533.i.i, %bb.in, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i34.i, %bb.hd, %bb.gq, %.loopexit.split-lp521.i.i, %.loopexit520.i.i, %.loopexit.split-lp516.i.i, %.loopexit515.i.i, %.loopexit.split-lp526.i.i, %.loopexit525.i.i, %bb.fg
  %.sroa.0.12.i = phi ptr [ %.sroa.0.4.i, %.loopexit.split-lp538.i.i ], [ %.sroa.0.4.i, %.loopexit537.i.i ], [ %.sroa.0.4.i, %bb.je ], [ %.sroa.0.4.i, %.loopexit.split-lp534.i.i ], [ %.sroa.0.4.i, %.loopexit533.i.i ], [ %.sroa.0.4.i, %bb.in ], [ %.sroa.0.4.i, %bb.hz ], [ %.sroa.0.10.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.0.9.i, %.loopexit.split-lp.loopexit.i.i ], [ %.sroa.0.7.i, %.loopexit.i34.i ], [ %.sroa.0.7.i, %bb.hd ], [ %.sroa.0.4.i, %.loopexit.split-lp526.i.i ], [ %.sroa.0.4.i, %.loopexit525.i.i ], [ %.sroa.0.4.i, %bb.gq ], [ %.sroa.0.4.i, %bb.fg ], [ %.sroa.0.4.i, %.loopexit.split-lp521.i.i ], [ %.sroa.0.4.i, %.loopexit520.i.i ], [ %.sroa.0.4.i, %.loopexit.split-lp516.i.i ], [ %.sroa.0.4.i, %.loopexit515.i.i ], [ %.sroa.0.4.i, %bb.gj ] ; 2 uses
  %.sroa.61.12.i = phi ptr [ %.sroa.29.4.i, %.loopexit.split-lp538.i.i ], [ %.sroa.29.4.i, %.loopexit537.i.i ], [ %.sroa.61.4.i, %bb.je ], [ %.sroa.29.4.i, %.loopexit.split-lp534.i.i ], [ %.sroa.29.4.i, %.loopexit533.i.i ], [ %.sroa.61.4.i, %bb.in ], [ %.sroa.61.4.i, %bb.hz ], [ %.sroa.61.10.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.29.9.i, %.loopexit.split-lp.loopexit.i.i ], [ %.sroa.29.7.i, %.loopexit.i34.i ], [ %.sroa.61.7.i, %bb.hd ], [ %.sroa.29.4.i, %.loopexit.split-lp526.i.i ], [ %.sroa.29.4.i, %.loopexit525.i.i ], [ %.sroa.61.4.i, %bb.gq ], [ %.sroa.61.4.i, %bb.fg ], [ %.sroa.29.4.i, %.loopexit.split-lp521.i.i ], [ %.sroa.29.4.i, %.loopexit520.i.i ], [ %.sroa.29.4.i, %.loopexit.split-lp516.i.i ], [ %.sroa.29.4.i, %.loopexit515.i.i ], [ %.sroa.61.4.i, %bb.gj ] ; 2 uses
  %.pn146.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp540.i.i, %.loopexit.split-lp538.i.i ], [ %lpad.loopexit539.i.i, %.loopexit537.i.i ], [ %lpad.phi.i.i, %bb.je ], [ %lpad.loopexit.split-lp.i43.i, %.loopexit.split-lp534.i.i ], [ %lpad.loopexit535.i.i, %.loopexit533.i.i ], [ %i.als, %bb.in ], [ %i.ajj, %bb.hz ], [ %lpad.loopexit.split-lp531.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit530.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.i35.i, %.loopexit.i34.i ], [ %i.agz, %bb.hd ], [ %lpad.loopexit.split-lp528.i.i, %.loopexit.split-lp526.i.i ], [ %lpad.loopexit527.i.i, %.loopexit525.i.i ], [ %i.afj, %bb.gq ], [ %i.aap, %bb.fg ], [ %lpad.loopexit.split-lp523.i.i, %.loopexit.split-lp521.i.i ], [ %lpad.loopexit522.i.i, %.loopexit520.i.i ], [ %lpad.loopexit.split-lp518.i.i, %.loopexit.split-lp516.i.i ], [ %lpad.loopexit517.i.i, %.loopexit515.i.i ], [ %i.ael, %bb.gj ] ; 2 uses
  %i.arb = load ptr, ptr %8, align 8, !tbaa !77, !noalias !788 ; 3 uses
  %.not.i.i.i327.i.i = icmp eq ptr %i.arb, null
  br i1 %.not.i.i.i327.i.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %.body.i24.i
  %i.arc = load ptr, ptr %i.iv, align 8, !tbaa !79, !noalias !788
  %i.ard = ptrtoint ptr %i.arc to i64
  %i.are = ptrtoint ptr %i.arb to i64
  %i.arf = sub i64 %i.ard, %i.are
  call void @_ZdlPvm(ptr noundef nonnull %i.arb, i64 noundef %i.arf) #30, !noalias !788
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %.body.i24.i, %bb.ey
  %.sroa.0.13.i = phi ptr [ %.sroa.0.12.i, %.body.i24.i ], [ %.sroa.0.12.i, %bb.kc ], [ %.sroa.0.0.i, %bb.ey ] ; 3 uses
  %.sroa.61.13.i = phi ptr [ %.sroa.61.12.i, %.body.i24.i ], [ %.sroa.61.12.i, %bb.kc ], [ %.sroa.61.0.i, %bb.ey ]
  %.pn146.pn.pn.i.i = phi { ptr, i32 } [ %.pn146.pn.i.i, %.body.i24.i ], [ %.pn146.pn.i.i, %bb.kc ], [ %i.zz, %bb.ey ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !788
  %.not.i.i.i329.i.i = icmp eq ptr %.sroa.0.13.i, null
  br i1 %.not.i.i.i329.i.i, label %.body246, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.arg = ptrtoint ptr %.sroa.61.13.i to i64
  %i.arh = ptrtoint ptr %.sroa.0.13.i to i64
  %i.ari = sub i64 %i.arg, %i.arh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.13.i, i64 noundef %i.ari) #30, !noalias !788
  br label %.body246

bb.kf:                                            ; preds = %bb.ex, %._crit_edge589.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !788
  br label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit

.loopexit742:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i18.i
  %lpad.loopexit744 = landingpad { ptr, i32 }
          cleanup
  br label %.body246

.loopexit.split-lp743:                            ; preds = %.noexc.i59.i
  %lpad.loopexit.split-lp745 = landingpad { ptr, i32 }
          cleanup
  br label %.body246

_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit: ; preds = %bb.eu, %bb.kf
  %.sroa.0580.2 = phi ptr [ %.sroa.0.1.i, %bb.kf ], [ %.sroa.034.1.i, %bb.eu ] ; 4 uses
  %.sroa.14.1 = phi ptr [ %.sroa.29.1.i, %bb.kf ], [ %.sroa.25.1.i, %bb.eu ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.61.1.i, %bb.kf ], [ %.sroa.51.1.i, %bb.eu ] ; 3 uses
  %i.arj = icmp eq ptr %.sroa.0580.2, %.sroa.14.1
  br i1 %i.arj, label %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread, label %bb.kg

bb.kg:                                            ; preds = %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit
  %.not.i.i.i.i.i248 = icmp eq ptr %.sroa.0599.01770, null
  br i1 %.not.i.i.i.i.i248, label %_ZNSt6vectorImSaImEED2Ev.exit463, label %_ZNSt6vectorImSaImEED2Ev.exit463.sink.split

_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %bb.at, %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit
  %.sroa.18.2703 = phi ptr [ %.sroa.18.2, %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit ], [ null, %bb.at ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i ] ; 2 uses
  %.sroa.0580.2684 = phi ptr [ %.sroa.0580.2, %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit ], [ null, %bb.at ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i ] ; 5 uses
  %i.ark = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEE11k_ucat_enumB5cxx11, i64 24), align 8, !tbaa !130 ; 2 uses
  %.not728.not1752 = icmp eq ptr %i.ark, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEE11k_ucat_enumB5cxx11, i64 8)
  br i1 %.not728.not1752, label %.critedge733, label %.lr.ph1755

.lr.ph1755:                                       ; preds = %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread, %bb.kh
  %.sroa.0577.01753 = phi ptr [ %i.arq, %bb.kh ], [ %i.ark, %_ZN2cv3dnnL26unicode_regex_split_customERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt6vectorImSaImEE.exit.thread ] ; 3 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.0577.01753, i64 32
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !71
  %i.arn = getelementptr inbounds nuw i8, ptr %.sroa.0577.01753, i64 40
  %i.aro = load i64, ptr %i.arn, align 8, !tbaa !73
  %i.arp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0594.01773, ptr noundef %i.arm, i64 noundef 0, i64 noundef %i.aro) #28
  %.not193 = icmp eq i64 %i.arp, -1
  br i1 %.not193, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %.lr.ph1755
  %i.arq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0577.01753) #33 ; 2 uses
  %.not728.not = icmp eq ptr %i.arq, getelementptr inbounds nuw (i8, ptr @_ZZN2cv3dnn19unicode_regex_splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEE11k_ucat_enumB5cxx11, i64 8)
  br i1 %.not728.not, label %.critedge733, label %.lr.ph1755

bb.ki:                                            ; preds = %.lr.ph1755
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZN2cv3dnn22unicode_cpts_from_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0594.01773)
          to label %.preheader unwind label %bb.kk

.preheader:                                       ; preds = %bb.ki
  %i.arr = load ptr, ptr %i.ix, align 8, !tbaa !78 ; 2 uses
  %i.ars = load ptr, ptr %21, align 8, !tbaa !77  ; 3 uses
  %.not1791 = icmp eq ptr %i.arr, %i.ars
  br i1 %.not1791, label %._crit_edge1758, label %.lr.ph1757.preheader

.lr.ph1757.preheader:                             ; preds = %.preheader
  %i.art = ptrtoint ptr %i.arr to i64
  %i.aru = ptrtoint ptr %i.ars to i64
  %i.arv = sub i64 %i.art, %i.aru
  %i.arw = ashr exact i64 %i.arv, 2
  br label %.lr.ph1757

bb.kj:                                            ; preds = %.lr.ph1757
  %i.arx = add nuw i64 %.01151756, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.arx, %i.arw
  br i1 %exitcond.not, label %._crit_edge1758, label %.lr.ph1757, !llvm.loop !757

._crit_edge1758:                                  ; preds = %bb.kj, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store ptr %i.iy, ptr %22, align 8, !tbaa !74
  store i64 0, ptr %i.iz, align 8, !tbaa !73
  store i8 0, ptr %i.iy, align 8, !tbaa !72
  %i.ary = load i64, ptr %i.lj, align 8, !tbaa !73 ; 2 uses
  %.not1792 = icmp eq i64 %i.ary, 0
  br i1 %.not1792, label %._crit_edge1764, label %.lr.ph1763

bb.kk:                                            ; preds = %bb.ki
  %i.arz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit350

.lr.ph1757:                                       ; preds = %.lr.ph1757.preheader, %bb.kj
  %.01151756 = phi i64 [ %i.arx, %bb.kj ], [ 0, %.lr.ph1757.preheader ] ; 2 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %.01151756
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !80
  %i.asc = icmp ugt i32 %i.asb, 127
  br i1 %i.asc, label %bb.kl, label %bb.kj

bb.kl:                                            ; preds = %.lr.ph1757
  %i.asd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.asd, ptr noundef nonnull @.str.13)
          to label %bb.km unwind label %bb.kn

bb.km:                                            ; preds = %bb.kl
  invoke void @__cxa_throw(ptr nonnull %i.asd, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
          to label %bb.qs unwind label %bb.ko

bb.kn:                                            ; preds = %bb.kl
  %i.ase = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  call void @__cxa_free_exception(ptr nonnull %i.asd) #28
  br label %bb.nm

bb.ko:                                            ; preds = %bb.km
  %i.asf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt11regex_error
  br label %bb.nm

._crit_edge1764:                                  ; preds = %bb.nh, %._crit_edge1758
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !790
  invoke void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2ISt11char_traitsIcESaIcEEERKNS_12basic_stringIcT_T0_EENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 16)
          to label %.noexc256 unwind label %bb.nl

.noexc256:                                        ; preds = %._crit_edge1764
  %i.asg = ptrtoint ptr %.sroa.24.01771 to i64
  %i.ash = ptrtoint ptr %.sroa.0599.01770 to i64  ; 2 uses
  %i.asi = sub i64 %i.asg, %i.ash                 ; 3 uses
  %i.asj = icmp ugt i64 %i.asi, 9223372036854775800
  br i1 %i.asj, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %.noexc256
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #29
          to label %.noexc.i255 unwind label %.thread202.i.loopexit.split-lp, !noalias !790

.noexc.i255:                                      ; preds = %bb.kp
  unreachable

bb.kq:                                            ; preds = %.noexc256
  %.not192.i = icmp eq ptr %.sroa.24.01771, %.sroa.0599.01770
  br i1 %.not192.i, label %._crit_edge.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i: ; preds = %bb.kq
  %i.ask = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asi) #31
          to label %.lr.ph144.i unwind label %.thread202.i.loopexit, !noalias !790 ; 5 uses

.lr.ph144.i:                                      ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 %i.asi ; 4 uses
  br label %bb.kx

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i, %bb.kq
  %.sroa.0569.7 = phi ptr [ null, %bb.kq ], [ %.sroa.0569.6, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ]
  %.sroa.11571.5 = phi ptr [ null, %bb.kq ], [ %.sroa.11571.4, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ]
  %.sroa.19572.7 = phi ptr [ null, %bb.kq ], [ %.sroa.19572.6, %_ZNSt7__cxx1114regex_iteratorIPKccNS_12regex_traitsIcEEED2Ev.exit92.i ]
  %i.asm = load ptr, ptr %i.jj, align 8, !tbaa !139, !noalias !790 ; 8 uses
  %.not.i.i.i.i250 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i.i.i250, label %bb.ni, label %bb.kr

bb.kr:                                            ; preds = %._crit_edge.i
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 8 ; 4 uses
  %i.aso = load atomic i64, ptr %i.asn acquire, align 8, !noalias !790 ; 2 uses
  %i.asp = icmp eq i64 %i.aso, 4294967297
  %i.asq = trunc i64 %i.aso to i32                ; 2 uses
  br i1 %i.asp, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  store i32 0, ptr %i.asn, align 8, !tbaa !141, !noalias !790
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asm, i64 12
  store i32 0, ptr %i.asr, align 4, !tbaa !142, !noalias !790
  %i.ass = load ptr, ptr %i.asm, align 8, !tbaa !144, !noalias !790
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 16
end_hunk_1
