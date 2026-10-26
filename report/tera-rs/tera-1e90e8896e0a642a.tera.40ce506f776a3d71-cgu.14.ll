Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.14?download=true
inline.NumInlined: 393
inline.NumDeleted: 225
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtCsf3Ta7LF998c_4core3stre16trim_end_matchescECs5yXxDE1DkoT_4tera:_RNvXs2_NtNtCsf3Ta7LF998c_4core3str7patterncNtB5_7Pattern13into_searcher.exit
    #dbg_value(i32 2, !3135, !DIExpression(), !5828)
    #dbg_value(i32 3, !3135, !DIExpression(), !5830)
    #dbg_value(i32 4, !3135, !DIExpression(), !5832)
    #dbg_value(ptr undef, !3083, !DIExpression(), !5795)
    #dbg_value(ptr undef, !3118, !DIExpression(), !5794)
    #dbg_value(ptr undef, !3110, !DIExpression(), !5793)
    #dbg_value(i64 1, !3111, !DIExpression(), !5793)
    #dbg_value(i64 1, !3122, !DIExpression(), !5834)
    #dbg_value(i64 -1, !3129, !DIExpression(), !5836)
    #dbg_value(ptr %i.b, !3085, !DIExpression(), !5837)
    #dbg_value(ptr undef, !3079, !DIExpression(), !5790)
    #dbg_value(ptr poison, !3080, !DIExpression(), !5838)
  %i.c = icmp samesign eq i64 %.reass7.i, 0, !dbg !5972
  br i1 %i.c, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !5973

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !3106, !DIExpression(), !5839)
    #dbg_value(ptr %i.b, !3120, !DIExpression(), !5834)
    #dbg_value(ptr %i.b, !3124, !DIExpression(), !5836)
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1, !dbg !5974 ; 2 uses
    #dbg_value(ptr %i.d, !3120, !DIExpression(), !5834)
    #dbg_value(ptr %i.d, !3124, !DIExpression(), !5836)
    #dbg_value(ptr %i.d, !5936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
    #dbg_value(ptr %i.d, !3092, !DIExpression(), !5840)
  %i.e = load i8, ptr %i.d, align 1, !dbg !5975, !noalias !5963, !noundef !1191 ; 3 uses
    #dbg_value(i8 %i.e, !3088, !DIExpression(), !5849)
    #dbg_value(i8 %i.e, !3091, !DIExpression(), !5840)
    #dbg_value(i8 %i.e, !3131, !DIExpression(), !5851)
  %i.f = icmp sgt i8 %i.e, -1, !dbg !5975
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i, !dbg !5975

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i: ; preds = %bb.b
    #dbg_value(ptr undef, !3083, !DIExpression(), !5787)
    #dbg_value(ptr undef, !3118, !DIExpression(), !5786)
    #dbg_value(ptr undef, !3110, !DIExpression(), !5785)
    #dbg_value(i64 1, !3111, !DIExpression(), !5785)
    #dbg_value(i64 1, !3122, !DIExpression(), !5853)
    #dbg_value(i64 -1, !3129, !DIExpression(), !5855)
    #dbg_value(ptr %i.d, !3085, !DIExpression(), !5856)
    #dbg_value(ptr undef, !3079, !DIExpression(), !5782)
    #dbg_value(ptr poison, !3080, !DIExpression(), !5857)
  %i.g = icmp ne i64 %.reass7.i, 1, !dbg !5976
  tail call void @llvm.assume(i1 %i.g), !dbg !5977
    #dbg_value(ptr undef, !3106, !DIExpression(), !5858)
    #dbg_value(ptr %i.d, !3120, !DIExpression(), !5853)
    #dbg_value(ptr %i.d, !3124, !DIExpression(), !5855)
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2, !dbg !5978 ; 2 uses
    #dbg_value(ptr %i.h, !3120, !DIExpression(), !5853)
    #dbg_value(ptr %i.h, !3124, !DIExpression(), !5855)
    #dbg_value(ptr %i.h, !5936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
  %i.i = load i8, ptr %i.h, align 1, !dbg !5979, !noalias !5963, !noundef !1191 ; 3 uses
    #dbg_value(i8 %i.i, !3095, !DIExpression(), !5859)
    #dbg_value(i8 %i.i, !3134, !DIExpression(), !5828)
    #dbg_value(i8 %i.i, !3137, !DIExpression(), !5861)
    #dbg_value(i8 %i.i, !3131, !DIExpression(), !5863)
  %i.j = and i8 %i.i, 31, !dbg !5980
  %i.k = zext nneg i8 %i.j to i32, !dbg !5980
    #dbg_value(i32 %i.k, !3094, !DIExpression(), !5864)
    #dbg_value(i32 %i.k, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %i.k, !3132, !DIExpression(), !5863)
    #dbg_value(i32 %i.k, !3132, !DIExpression(), !5851)
  %i.l = icmp slt i8 %i.i, -64, !dbg !5981
  br i1 %i.l, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i, label %bb.d, !dbg !5982

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32, !dbg !5983
  br label %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, !dbg !5984

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i
    #dbg_value(ptr undef, !3083, !DIExpression(), !5779)
    #dbg_value(ptr undef, !3118, !DIExpression(), !5778)
    #dbg_value(ptr undef, !3110, !DIExpression(), !5777)
    #dbg_value(i64 1, !3111, !DIExpression(), !5777)
    #dbg_value(i64 1, !3122, !DIExpression(), !5868)
    #dbg_value(i64 -1, !3129, !DIExpression(), !5870)
    #dbg_value(ptr %i.h, !3085, !DIExpression(), !5871)
    #dbg_value(ptr undef, !3079, !DIExpression(), !5774)
    #dbg_value(ptr poison, !3080, !DIExpression(), !5872)
  %i.n = icmp ne i64 %.reass7.i, 2, !dbg !5985
  tail call void @llvm.assume(i1 %i.n), !dbg !5986
    #dbg_value(ptr undef, !3106, !DIExpression(), !5873)
    #dbg_value(ptr %i.h, !3120, !DIExpression(), !5868)
    #dbg_value(ptr %i.h, !3124, !DIExpression(), !5870)
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3, !dbg !5987 ; 2 uses
    #dbg_value(ptr %i.o, !3120, !DIExpression(), !5868)
    #dbg_value(ptr %i.o, !3124, !DIExpression(), !5870)
    #dbg_value(ptr %i.o, !5936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
  %i.p = load i8, ptr %i.o, align 1, !dbg !5988, !noalias !5963, !noundef !1191 ; 3 uses
    #dbg_value(i8 %i.p, !3096, !DIExpression(), !5874)
    #dbg_value(i8 %i.p, !3134, !DIExpression(), !5830)
    #dbg_value(i8 %i.p, !3137, !DIExpression(), !5876)
    #dbg_value(i8 %i.p, !3131, !DIExpression(), !5866)
  %i.q = and i8 %i.p, 15, !dbg !5989
  %i.r = zext nneg i8 %i.q to i32, !dbg !5989
    #dbg_value(i32 %i.r, !3094, !DIExpression(), !5864)
    #dbg_value(i32 %i.r, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %i.r, !3132, !DIExpression(), !5863)
    #dbg_value(i32 %i.r, !3132, !DIExpression(), !5851)
  %i.s = icmp slt i8 %i.p, -64, !dbg !5990
  br i1 %i.s, label %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i, label %bb.e, !dbg !5991

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i ], !dbg !5992
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit30.i.i.i ], !dbg !5993
    #dbg_value(ptr %.sroa.6.0.i.i, !5936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
    #dbg_value(i32 %.sroa.010.0.i.i.i, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %.sroa.010.0.i.i.i, !3094, !DIExpression(), !5864)
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6, !dbg !5994
  %i.u = and i8 %i.e, 63, !dbg !5995
  %i.v = zext nneg i8 %i.u to i32, !dbg !5995
  %i.w = or disjoint i32 %i.t, %i.v, !dbg !5994
    #dbg_value(i32 %i.w, !3094, !DIExpression(), !5864)
    #dbg_value(i32 %i.w, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %i.w, !3132, !DIExpression(), !5863)
    #dbg_value(i32 %i.w, !3132, !DIExpression(), !5851)
  br label %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, !dbg !5996

_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i: ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i
    #dbg_value(ptr undef, !3083, !DIExpression(), !5771)
    #dbg_value(ptr undef, !3118, !DIExpression(), !5770)
    #dbg_value(ptr undef, !3110, !DIExpression(), !5769)
    #dbg_value(i64 1, !3111, !DIExpression(), !5769)
    #dbg_value(i64 1, !3122, !DIExpression(), !5881)
    #dbg_value(i64 -1, !3129, !DIExpression(), !5883)
    #dbg_value(ptr %i.o, !3085, !DIExpression(), !5884)
    #dbg_value(ptr undef, !3079, !DIExpression(), !5766)
    #dbg_value(ptr poison, !3080, !DIExpression(), !5885)
  %i.x = icmp ne i64 %.reass7.i, 3, !dbg !5997
  tail call void @llvm.assume(i1 %i.x), !dbg !5998
    #dbg_value(ptr undef, !3106, !DIExpression(), !5886)
    #dbg_value(ptr %i.o, !3120, !DIExpression(), !5881)
    #dbg_value(ptr %i.o, !3124, !DIExpression(), !5883)
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4, !dbg !5999 ; 2 uses
    #dbg_value(ptr %i.y, !3120, !DIExpression(), !5881)
    #dbg_value(ptr %i.y, !3124, !DIExpression(), !5883)
    #dbg_value(ptr %i.y, !5936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
  %i.z = load i8, ptr %i.y, align 1, !dbg !6000, !noalias !5963, !noundef !1191
    #dbg_value(i8 %i.z, !3097, !DIExpression(), !5887)
    #dbg_value(i8 %i.z, !3134, !DIExpression(), !5832)
  %i.aa = and i8 %i.z, 7, !dbg !6001
  %i.ab = zext nneg i8 %i.aa to i32, !dbg !6001
    #dbg_value(i32 %i.ab, !3094, !DIExpression(), !5864)
    #dbg_value(i32 %i.ab, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %i.ab, !3132, !DIExpression(), !5863)
    #dbg_value(i32 %i.ab, !3132, !DIExpression(), !5851)
  %i.ac = shl nuw nsw i32 %i.ab, 6, !dbg !6002
  %i.ad = and i8 %i.p, 63, !dbg !6003
  %i.ae = zext nneg i8 %i.ad to i32, !dbg !6003
  %i.af = or disjoint i32 %i.ac, %i.ae, !dbg !6002
    #dbg_value(i32 %i.af, !3094, !DIExpression(), !5864)
    #dbg_value(i32 %i.af, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %i.af, !3132, !DIExpression(), !5863)
    #dbg_value(i32 %i.af, !3132, !DIExpression(), !5851)
  br label %bb.e, !dbg !6004

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i ], !dbg !6005
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit34.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yXxDE1DkoT_4tera.exit32.i.i.i ], !dbg !6006
    #dbg_value(ptr %.sroa.6.1.i.i, !5936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
    #dbg_value(i32 %.sroa.010.1.i.i.i, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %.sroa.010.1.i.i.i, !3094, !DIExpression(), !5864)
  %i.ag = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6, !dbg !6007
  %i.ah = and i8 %i.i, 63, !dbg !6008
  %i.ai = zext nneg i8 %i.ah to i32, !dbg !6008
  %i.aj = or disjoint i32 %i.ag, %i.ai, !dbg !6007
    #dbg_value(i32 %i.aj, !3094, !DIExpression(), !5864)
    #dbg_value(i32 %i.aj, !3132, !DIExpression(), !5866)
    #dbg_value(i32 %i.aj, !3132, !DIExpression(), !5863)
    #dbg_value(i32 %i.aj, !3132, !DIExpression(), !5851)
  br label %bb.d, !dbg !6009

_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
    #dbg_value(ptr %.sroa.6.2.ph.i.i, !5936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5817)
    #dbg_value(i32 1, !5958, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5891)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i, !5958, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5891)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i, !5959, !DIExpression(), !5892)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i, !5964, !DIExpression(), !5895)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i, !5966, !DIExpression(), !5898)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i, !5968, !DIExpression(), !5901)
  %i.ak = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112, !dbg !6010
  tail call void @llvm.assume(i1 %i.ak), !dbg !6010
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i, !5938, !DIExpression(), !5902)
    #dbg_value(ptr undef, !2998, !DIExpression(), !5800)
    #dbg_value(i64 1, !2981, !DIExpression(), !5906)
    #dbg_value(ptr %.sroa.6.2.ph.i.i, !3000, !DIExpression(), !5907)
    #dbg_value(ptr %.sroa.6.2.ph.i.i, !2991, !DIExpression(), !5908)
    #dbg_value(ptr %0, !2992, !DIExpression(), !5908)
    #dbg_value(ptr %.sroa.6.2.ph.i.i, !2985, !DIExpression(), !5909)
    #dbg_value(ptr %0, !2986, !DIExpression(), !5909)
    #dbg_value(ptr %0, !2980, !DIExpression(), !5910)
    #dbg_value(ptr %.sroa.6.2.ph.i.i, !2979, !DIExpression(), !5910)
  %i.al = ptrtoint ptr %.sroa.6.2.ph.i.i to i64, !dbg !6011
  %.reass.i = sub i64 %i.al, %i.a
    #dbg_value(i64 %.reass.i, !5916, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5951)
  %.not.i = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2, !dbg !6012
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs5yXxDE1DkoT_4tera.exit, !dbg !6013

_RNvYNtNtNtCsf3Ta7LF998c_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %_RNvXs0_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
    #dbg_value(i64 %.reass7.i, !5917, !DIExpression(), !5950)
    #dbg_value(i64 %.reass7.i, !5915, !DIExpression(), !5949)
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0, !dbg !6014
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass7.i, 1, !dbg !6014
  ret { ptr, i64 } %i.an, !dbg !6014
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6018 {
bb.a:
    #dbg_value(ptr poison, !2791, !DIExpression(), !6022)
    #dbg_value(ptr poison, !2801, !DIExpression(), !6023)
    #dbg_value(ptr poison, !2806, !DIExpression(), !6024)
    #dbg_value(ptr %0, !6180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6186)
    #dbg_value(ptr %0, !6187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6191)
    #dbg_value(ptr %0, !6192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6198)
    #dbg_value(i64 %1, !6180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6186)
    #dbg_value(i64 %1, !6187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6191)
    #dbg_value(i64 %1, !6192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6198)
    #dbg_declare(ptr poison, !6181, !DIExpression(), !6199)
    #dbg_value(i64 %1, !6182, !DIExpression(), !6200)
    #dbg_value(i64 %1, !6184, !DIExpression(), !6201)
    #dbg_value(i64 %1, !6188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6191)
    #dbg_value(i64 %1, !6193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6198)
    #dbg_value(i64 %1, !6202, !DIExpression(), !6206)
    #dbg_declare(ptr poison, !2840, !DIExpression(), !6031)
    #dbg_value(ptr %0, !2844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6032)
    #dbg_value(i64 %1, !2844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6032)
    #dbg_declare(ptr poison, !2846, !DIExpression(), !6034)
    #dbg_value(ptr %0, !2852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6035)
    #dbg_value(ptr %0, !2854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6037)
    #dbg_value(i64 %1, !2852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6035)
    #dbg_value(i64 %1, !2854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6037)
    #dbg_value(ptr %0, !2858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6039)
    #dbg_value(i64 %1, !2858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6039)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !6213 ; 4 uses
    #dbg_value(ptr %0, !6183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6207)
    #dbg_value(i64 %1, !6183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6207)
    #dbg_value(ptr %0, !6183, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6207)
    #dbg_value(ptr %i.a, !6183, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !6207)
    #dbg_value(i64 0, !6183, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !6207)
    #dbg_value(ptr undef, !2806, !DIExpression(), !6024)
    #dbg_value(ptr undef, !2801, !DIExpression(), !6023)
  %i.b = icmp samesign eq i64 %1, 0, !dbg !6214
  br i1 %i.b, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yXxDE1DkoT_4tera.exit, label %.lr.ph.i.i, !dbg !6215

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64, !dbg !6216
    #dbg_value(ptr %i.d, !2992, !DIExpression(), !6052)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !6217 ; 3 uses
    #dbg_value(ptr %i.f, !6183, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6207)
  %i.g = load i8, ptr %i.d, align 1, !dbg !6218, !noalias !6208, !noundef !1191 ; 5 uses
    #dbg_value(i8 %i.g, !2919, !DIExpression(), !6067)
    #dbg_value(i8 %i.g, !3008, !DIExpression(), !6069)
  %i.h = icmp sgt i8 %i.g, -1, !dbg !6219
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i.i.i, !dbg !6219

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31, !dbg !6220
  %i.j = zext nneg i8 %i.i to i32, !dbg !6220     ; 3 uses
    #dbg_value(i32 %i.j, !2922, !DIExpression(), !6070)
    #dbg_value(i32 %i.j, !3013, !DIExpression(), !6072)
    #dbg_value(ptr undef, !2900, !DIExpression(), !6074)
    #dbg_value(i64 1, !3006, !DIExpression(), !6076)
    #dbg_value(ptr %i.f, !2901, !DIExpression(), !6077)
    #dbg_value(ptr %i.f, !3005, !DIExpression(), !6076)
    #dbg_value(ptr %i.a, !2902, !DIExpression(), !6078)
    #dbg_value(ptr poison, !2885, !DIExpression(), !6080)
    #dbg_value(ptr poison, !2886, !DIExpression(), !6081)
  %i.k = icmp ne ptr %i.f, %i.a, !dbg !6221
  tail call void @llvm.assume(i1 %i.k), !dbg !6222
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !6223 ; 3 uses
    #dbg_value(ptr %i.l, !6183, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6207)
  %i.m = load i8, ptr %i.f, align 1, !dbg !6224, !noalias !6208, !noundef !1191
    #dbg_value(i8 %i.m, !2923, !DIExpression(), !6082)
    #dbg_value(i8 %i.m, !3016, !DIExpression(), !6072)
  %i.n = shl nuw nsw i32 %i.j, 6, !dbg !6225
  %i.o = and i8 %i.m, 63, !dbg !6226
  %i.p = zext nneg i8 %i.o to i32, !dbg !6226     ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p, !dbg !6225
    #dbg_value(i32 %i.q, !2924, !DIExpression(), !6083)
  %i.r = icmp samesign ugt i8 %i.g, -33, !dbg !6227
  br i1 %i.r, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i.i.i, label %bb.c, !dbg !6227

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32, !dbg !6228
  br label %bb.c, !dbg !6229

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i.i.i
    #dbg_value(ptr undef, !2900, !DIExpression(), !6085)
    #dbg_value(i64 1, !3006, !DIExpression(), !6087)
    #dbg_value(ptr %i.l, !2901, !DIExpression(), !6088)
    #dbg_value(ptr %i.l, !3005, !DIExpression(), !6087)
    #dbg_value(ptr %i.a, !2902, !DIExpression(), !6089)
    #dbg_value(ptr poison, !2885, !DIExpression(), !6091)
    #dbg_value(ptr poison, !2886, !DIExpression(), !6092)
  %i.t = icmp ne ptr %i.l, %i.a, !dbg !6230
  tail call void @llvm.assume(i1 %i.t), !dbg !6231
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3, !dbg !6232 ; 3 uses
    #dbg_value(ptr %i.u, !6183, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6207)
  %i.v = load i8, ptr %i.l, align 1, !dbg !6233, !noalias !6208, !noundef !1191
    #dbg_value(i8 %i.v, !2925, !DIExpression(), !6093)
    #dbg_value(i8 %i.v, !3016, !DIExpression(), !6095)
    #dbg_value(i32 %i.p, !3013, !DIExpression(), !6095)
  %i.w = shl nuw nsw i32 %i.p, 6, !dbg !6234
  %i.x = and i8 %i.v, 63, !dbg !6235
  %i.y = zext nneg i8 %i.x to i32, !dbg !6235
  %i.z = or disjoint i32 %i.w, %i.y, !dbg !6234   ; 2 uses
    #dbg_value(i32 %i.z, !2926, !DIExpression(), !6096)
    #dbg_value(i32 %i.z, !3013, !DIExpression(), !6098)
  %i.aa = shl nuw nsw i32 %i.j, 12, !dbg !6236
  %i.ab = or disjoint i32 %i.z, %i.aa, !dbg !6237
    #dbg_value(i32 %i.ab, !2924, !DIExpression(), !6083)
  %i.ac = icmp samesign ugt i8 %i.g, -17, !dbg !6238
  br i1 %i.ac, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i.i.i, label %bb.c, !dbg !6238

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i.i.i
    #dbg_value(ptr undef, !2900, !DIExpression(), !6100)
    #dbg_value(i64 1, !3006, !DIExpression(), !6102)
    #dbg_value(ptr %i.u, !2901, !DIExpression(), !6103)
    #dbg_value(ptr %i.u, !3005, !DIExpression(), !6102)
    #dbg_value(ptr %i.a, !2902, !DIExpression(), !6104)
    #dbg_value(ptr poison, !2885, !DIExpression(), !6106)
    #dbg_value(ptr poison, !2886, !DIExpression(), !6107)
  %i.ad = icmp ne ptr %i.u, %i.a, !dbg !6239
  tail call void @llvm.assume(i1 %i.ad), !dbg !6240
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !6241
    #dbg_value(ptr %i.ae, !6183, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6207)
  %i.af = load i8, ptr %i.u, align 1, !dbg !6242, !noalias !6208, !noundef !1191
    #dbg_value(i8 %i.af, !2927, !DIExpression(), !6108)
    #dbg_value(i8 %i.af, !3016, !DIExpression(), !6098)
  %i.ag = shl nuw nsw i32 %i.j, 18, !dbg !6243
  %i.ah = and i32 %i.ag, 1835008, !dbg !6243
  %i.ai = shl nuw nsw i32 %i.z, 6, !dbg !6244
  %i.aj = and i8 %i.af, 63, !dbg !6245
  %i.ak = zext nneg i8 %i.aj to i32, !dbg !6245
  %i.al = or disjoint i32 %i.ai, %i.ak, !dbg !6244
  %i.am = or disjoint i32 %i.al, %i.ah, !dbg !6246
    #dbg_value(i32 %i.am, !2924, !DIExpression(), !6083)
  br label %bb.c, !dbg !6247

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i.i.i ], [ %i.f, %bb.b ], !dbg !6248 ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
    #dbg_value(i32 1, !3022, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6111)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3022, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6111)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3031, !DIExpression(), !6112)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3034, !DIExpression(), !6114)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3039, !DIExpression(), !6116)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3047, !DIExpression(), !6118)
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112, !dbg !6249
  tail call void @llvm.assume(i1 %i.ao), !dbg !6249
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !2973, !DIExpression(), !6119)
    #dbg_value(i64 %i.c, !2974, !DIExpression(), !6120)
    #dbg_value(ptr undef, !2998, !DIExpression(), !6122)
    #dbg_value(i64 1, !2981, !DIExpression(), !6126)
    #dbg_value(ptr %i.a, !3000, !DIExpression(), !6127)
    #dbg_value(ptr %i.a, !2991, !DIExpression(), !6128)
    #dbg_value(ptr %i.an, !2992, !DIExpression(), !6128)
    #dbg_value(ptr %i.a, !2985, !DIExpression(), !6129)
    #dbg_value(ptr %i.an, !2986, !DIExpression(), !6129)
    #dbg_value(ptr %i.an, !2980, !DIExpression(), !6130)
    #dbg_value(ptr %i.a, !2979, !DIExpression(), !6130)
  %i.ap = ptrtoint ptr %i.an to i64, !dbg !6250
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.ap), !2975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6131)
  %i.aq = sub i64 %i.c, %i.e, !dbg !6251
  %i.ar = add i64 %i.aq, %i.ap, !dbg !6252
    #dbg_value(i64 %i.c, !2795, !DIExpression(), !6132)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !2796, !DIExpression(), !6132)
    #dbg_value(ptr undef, !2998, !DIExpression(), !6133)
    #dbg_value(i64 1, !2981, !DIExpression(), !6137)
    #dbg_value(ptr %i.a, !3000, !DIExpression(), !6138)
    #dbg_value(ptr %i.a, !2991, !DIExpression(), !6139)
    #dbg_value(ptr %i.an, !2992, !DIExpression(), !6139)
    #dbg_value(ptr %i.a, !2985, !DIExpression(), !6140)
    #dbg_value(ptr %i.an, !2986, !DIExpression(), !6140)
    #dbg_value(ptr %i.an, !2980, !DIExpression(), !6141)
    #dbg_value(ptr %i.a, !2979, !DIExpression(), !6141)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.ap), !2797, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6142)
    #dbg_value(!DIArgList(i64 %i.ap, i64 0, i64 %i.e), !2798, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value), !6143)
    #dbg_value(ptr poison, !3054, !DIExpression(), !6145)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3058, !DIExpression(), !6145)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3061, !DIExpression(), !6147)
    #dbg_value(ptr poison, !3066, !DIExpression(), !6147)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3071, !DIExpression(), !6149)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i
    i32 13, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i
    i32 12, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i
    i32 11, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i
    i32 10, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i
    i32 9, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs5yXxDE1DkoT_4tera.exit.i.i
  ], !dbg !6253

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133, !dbg !6254
  br i1 %i.as, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yXxDE1DkoT_4tera.exit, label %bb.e, !dbg !6254

bb.e:                                             ; preds = %bb.d
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !3074, !DIExpression(), !6151)
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8, !dbg !6255
  switch i32 %i.at, label %_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs5yXxDE1DkoT_4tera.exit [
end_hunk_0
