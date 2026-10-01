Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/symbol_encoding?download=true
inline.NumInlined: 4453
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !252

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !253

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !254

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !255

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !256

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !255

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !256

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi5EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_0
begin_hunk_1_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !351

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !352

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !353

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !354

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !355

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !354

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !355

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi1EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_1
begin_hunk_2_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !374

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !375

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !376

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !377

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !378

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !377

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !378

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi2EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_2
begin_hunk_3_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !397

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !398

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !399

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !400

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !401

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !400

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !401

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi3EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_3
begin_hunk_4_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !420

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !421

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !422

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !423

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !424

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !423

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !424

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi4EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_4
begin_hunk_5_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !443

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !444

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !445

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !446

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !447

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !446

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !447

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi6EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_5
begin_hunk_6_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !466

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !467

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !468

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !469

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !470

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !469

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !470

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi7EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_6
begin_hunk_7_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !489

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !490

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !491

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !492

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !493

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !492

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !493

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi8EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_7
begin_hunk_8_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !512

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !513

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !514

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !515

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !516

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !515

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !516

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi9EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_8
begin_hunk_9_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !535

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !536

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !537

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !538

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !539

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !538

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !539

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi10EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_9
begin_hunk_10_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !558

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !559

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !560

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !561

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !562

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !561

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !562

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi11EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_10
begin_hunk_11_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !581

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !582

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !583

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !584

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !585

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !584

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !585

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi12EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_11
begin_hunk_12_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !604

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !605

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !606

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !607

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !608

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !607

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !608

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi13EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_12
begin_hunk_13_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !627

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !628

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !629

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !630

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !631

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !630

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !631

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi14EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_13
begin_hunk_14_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !650

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !651

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !652

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !653

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !654

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !653

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !654

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi15EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_14
begin_hunk_15_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !673

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !674

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !675

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !676

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !677

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !676

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !677

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi16EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_15
begin_hunk_16_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !696

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !697

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !698

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !699

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !700

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !699

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !700

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi17EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_16
begin_hunk_17_@_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_:bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2, ptr %4)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 %i.l)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not12.i = icmp slt i64 %i.d, 7
  br i1 %.not12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %0, ptr %1, ptr %3)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 28 ; 4 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr %.sroa.09.013.i, ptr nonnull %i.f, ptr %3)
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.a, %i.g
  %.not.i = icmp slt i64 %i.h, 28
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !719

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 28
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.020 = phi i64 [ %i.j, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.020, ptr %3)
  %i.i = shl nuw nsw i64 %.020, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.i, ptr %3)
  %i.j = shl nsw i64 %.020, 2                     ; 2 uses
  %i.k = icmp slt i64 %i.j, %i.d
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !720

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 3 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d, !prof !112

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !62
  store i32 %i.g, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %.not31.i = icmp eq ptr %1, %0
  br i1 %.not31.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %.lr.ph.i
  %.034.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 5 uses
  %.sroa.017.033.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 3 uses
  %.sroa.013.032.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i ] ; 4 uses
  %.not20.i = icmp eq ptr %.sroa.017.033.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %.sroa.017.033.i, align 4, !tbaa !62 ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.q, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.k, i64 noundef %i.q) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.g
  %i.r = load i32, ptr %.034.i, align 4, !tbaa !62 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.s, i64 noundef %i.q) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = icmp ult i32 %i.u, %i.w                  ; 3 uses
  %.sink.i = select i1 %i.x, i32 %i.j, i32 %i.r
  %.sroa.017.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.sroa.013.032.i, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.032.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.f, !llvm.loop !721

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %.034.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !112

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.032.i, ptr align 4 %.034.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.l, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %.034.i, align 4, !tbaa !62
  store i32 %i.ae, ptr %.sroa.013.032.i, align 4, !tbaa !62
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.p:                                             ; preds = %bb.o
  %i.ak = load i32, ptr %1, align 4, !tbaa !62
  store i32 %i.ak, ptr %5, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_S6_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %i.al, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EEbT_T0_.exit.i, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx51 = shl i64 %3, 3                         ; 2 uses
  %.not52 = icmp eq i64 %.idx, %.idx51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %.not52, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 4
  %i.h = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us
  %.079.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.043.078.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.043.078.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !112

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.sroa.043.078.us, align 4, !tbaa !62
  store i32 %i.j, ptr %.079.us, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  store i32 %i.l, ptr %i.k, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.079.us, ptr align 4 %.sroa.043.078.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.079.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.079.us, i64 %5 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !722

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit
  %.079 = phi ptr [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.043.078 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.043.078, i64 %.idx51 ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.u = load ptr, ptr %4, align 8, !tbaa !104    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, %.lr.ph.i
  %.031.i = phi ptr [ %.079, %.lr.ph.i ], [ %i.ai, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.015.030.i = phi ptr [ %.sroa.043.078, %.lr.ph.i ], [ %.sroa.015.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %.sroa.011.029.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.sroa.011.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i ] ; 2 uses
  %i.z = load i32, ptr %.sroa.011.029.i, align 4, !tbaa !62 ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.aa, i64 noundef %i.y) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i: ; preds = %bb.e
  %i.ab = load i32, ptr %.sroa.015.030.i, align 4, !tbaa !62 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %.not.i.i2.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i2.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.ac, i64 noundef %i.y) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !106
  %i.ah = icmp ult i32 %i.ae, %i.ag               ; 3 uses
  %.sink.i = select i1 %i.ah, i32 %i.z, i32 %i.ab
  %.sroa.011.1.idx.i = select i1 %i.ah, i64 4, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.ah, i64 0, i64 4
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i, i64 %.sroa.015.1.idx.i ; 5 uses
  store i32 %.sink.i, ptr %.031.i, align 4, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 4 uses
  %i.aj = icmp ne ptr %.sroa.015.1.i, %i.r
  %i.ak = icmp ne ptr %.sroa.011.1.i, %i.s
  %or.cond.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !723

.critedge.i.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = ptrtoint ptr %.sroa.015.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull align 4 %.sroa.015.1.i, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %.sroa.015.1.i, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.as = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.at = ptrtoint ptr %.sroa.011.1.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  %i.av = icmp sgt i64 %i.au, 4
  br i1 %i.av, label %bb.k, label %bb.l, !prof !112

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %.sroa.011.1.i, i64 %i.au, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !62
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !62
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.az = sub i64 %i.b, %i.as
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !722

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us, %bb.a
  %.sroa.043.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ay, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa65 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit.us ], [ %i.ba, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa65) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 2
  %i.bb = getelementptr inbounds i8, ptr %.sroa.043.0.lcssa, i64 %.idx53 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %or.cond28.i15 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond28.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %.lr.ph.i21
  %.031.i22 = phi ptr [ %.0.lcssa, %.lr.ph.i21 ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.015.030.i23 = phi ptr [ %.sroa.043.0.lcssa, %.lr.ph.i21 ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %.sroa.011.029.i24 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.011.029.i24, align 4, !tbaa !62 ; 2 uses
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %.not.i.i.i.i.i25 = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i25, label %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bm, i64 noundef %i.bk) #18
  unreachable

_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26: ; preds = %bb.n
  %i.bn = load i32, ptr %.sroa.015.030.i23, align 4, !tbaa !62 ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  %.not.i.i2.i.i.i27 = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i.i2.i.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.bo, i64 noundef %i.bk) #18
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28: ; preds = %_ZNKSt6vectorIN5draco8rans_symESaIS1_EE2atEm.exit.i.i.i26
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !106
  %i.bt = icmp ult i32 %i.bq, %i.bs               ; 3 uses
  %.sink.i29 = select i1 %i.bt, i32 %i.bl, i32 %i.bn
  %.sroa.011.1.idx.i30 = select i1 %i.bt, i64 4, i64 0
  %.sroa.011.1.i31 = getelementptr inbounds nuw i8, ptr %.sroa.011.029.i24, i64 %.sroa.011.1.idx.i30 ; 3 uses
  %.sroa.015.1.idx.i32 = select i1 %i.bt, i64 0, i64 4
  %.sroa.015.1.i33 = getelementptr inbounds nuw i8, ptr %.sroa.015.030.i23, i64 %.sroa.015.1.idx.i32 ; 3 uses
  store i32 %.sink.i29, ptr %.031.i22, align 4, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i22, i64 4 ; 2 uses
  %i.bv = icmp ne ptr %.sroa.015.1.i33, %i.bb
  %i.bw = icmp ne ptr %.sroa.011.1.i31, %1
  %or.cond.i34 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond.i34, label %bb.n, label %.critedge.i16, !llvm.loop !723

.critedge.i16:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.bb, %._crit_edge ], [ %.sroa.011.1.i31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.043.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5draco17RAnsSymbolEncoderILi18EE15ProbabilityLessEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESD_EEbT_T0_.exit.i28 ] ; 3 uses
  %i.bx = ptrtoint ptr %i.bb to i64
  %i.by = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %i.ca = icmp sgt i64 %i.bz, 4
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !112

bb.q:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.lcssa.i19, ptr align 4 %.sroa.015.0.lcssa.i18, i64 %i.bz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.r:                                             ; preds = %.critedge.i16
  %i.cb = icmp eq i64 %i.bz, 4
  br i1 %i.cb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

bb.s:                                             ; preds = %bb.r
  %i.cc = load i32, ptr %.sroa.015.0.lcssa.i18, align 4, !tbaa !62
  store i32 %i.cc, ptr %.0.lcssa.i19, align 4, !tbaa !62
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit.i20: ; preds = %bb.s, %bb.r, %bb.q
  %i.cd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.bz ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 3 uses
  %i.cg = icmp sgt i64 %i.cf, 4
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !112
end_hunk_17
