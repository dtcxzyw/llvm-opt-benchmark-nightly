Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestMultiProcessHandler?download=true
inline.NumInlined: 5003
inline.NumDeleted: 2132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_SB_T0_SC_T1_T2_:bb.a
bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.027.i = phi ptr [ %5, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 6 uses
  %.sroa.018.026.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.018.1.i, %bb.g ] ; 4 uses
  %.sroa.014.025.i = phi ptr [ %0, %.lr.ph.i ], [ %i.y, %bb.g ] ; 4 uses
  %.not21.i = icmp eq ptr %.sroa.018.026.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %.sroa.018.026.i, align 4, !tbaa !179
  %i.o = load i32, ptr %.027.i, align 4, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.n, ptr %i.c, align 4, !tbaa !179
  store i32 %i.o, ptr %i.d, align 4, !tbaa !179
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !221
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 452
  %i.s = load float, ptr %i.r, align 4, !tbaa !263
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !221
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 452
  %i.w = load float, ptr %i.v, align 4, !tbaa !263
  %i.x = fcmp ogt float %i.s, %i.w                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sink.in.i = select i1 %i.x, ptr %.sroa.018.026.i, ptr %.027.i
  %.sroa.018.1.idx.i = select i1 %i.x, i64 4, i64 0
  %.sroa.018.1.i = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 %.sroa.018.1.idx.i
  %.1.idx.i = select i1 %i.x, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.027.i, i64 %.1.idx.i ; 2 uses
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !179
  store i32 %.sink.i, ptr %.sroa.014.025.i, align 4, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.025.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.l
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.f, !llvm.loop !1010

.critedge.i:                                      ; preds = %bb.f
  %i.z = ptrtoint ptr %i.l to i64
  %i.aa = ptrtoint ptr %.027.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !299

bb.h:                                             ; preds = %.critedge.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.014.025.i, ptr align 4 %.027.i, i64 %i.ab, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.i:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.j, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %.027.i, align 4, !tbaa !179
  store i32 %i.ae, ptr %.sroa.014.025.i, align 4, !tbaa !179
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.k:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 7 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !299

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.ah, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr %1, align 4, !tbaa !179
  store i32 %i.ak, ptr %5, align 4, !tbaa !179
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.l, %bb.m, %bb.n
  %i.al = getelementptr inbounds i8, ptr %5, i64 %i.ah
  %i.am = icmp eq ptr %0, %1
  br i1 %i.am, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.an = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %bb.q, !prof !299

bb.p:                                             ; preds = %bb.o
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %5, i64 %i.ah, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.q:                                             ; preds = %bb.o
  %i.ar = icmp eq i64 %i.ah, 4
  br i1 %i.ar, label %bb.r, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds i8, ptr %2, i64 -4
  %i.at = load i32, ptr %5, align 4, !tbaa !179
  store i32 %i.at, ptr %i.as, align 4, !tbaa !179
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.au = icmp eq ptr %2, %1
  br i1 %i.au, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.v, %bb.t
  %.sroa.020.0.i.ph = phi ptr [ %2, %bb.t ], [ %i.bi, %bb.v ]
  %.sroa.024.0.i.ph.pn = phi ptr [ %1, %bb.t ], [ %.sroa.024.0.i.ph, %bb.v ]
  %.0.i.ph = phi ptr [ %i.av, %bb.t ], [ %.0.i, %bb.v ]
  %.sroa.024.0.i.ph = getelementptr inbounds i8, ptr %.sroa.024.0.i.ph.pn, i64 -4 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %.outer, %bb.ab
  %.sroa.020.0.i = phi ptr [ %i.bi, %bb.ab ], [ %.sroa.020.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.by, %bb.ab ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ax = load i32, ptr %.0.i, align 4, !tbaa !179
  %i.ay = load i32, ptr %.sroa.024.0.i.ph, align 4, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !179
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !179
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !221
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 452
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !263
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !221
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 452
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !263
  %i.bh = fcmp ogt float %i.bc, %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds i8, ptr %.sroa.020.0.i, i64 -4 ; 5 uses
  br i1 %i.bh, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bj = load i32, ptr %.sroa.024.0.i.ph, align 4, !tbaa !179
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !179
  %i.bk = icmp eq ptr %0, %.sroa.024.0.i.ph
  br i1 %i.bk, label %bb.w, label %.outer, !llvm.loop !1011

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %5 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 1
  br i1 %i.bq, label %bb.x, label %bb.y, !prof !299

bb.x:                                             ; preds = %bb.w
  %i.br = sub nsw i64 0, %i.bp
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.br
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %5, i64 %i.bo, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.y:                                             ; preds = %bb.w
  %i.bt = icmp eq i64 %i.bo, 4
  br i1 %i.bt, label %bb.z, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds i8, ptr %.sroa.020.0.i, i64 -8
  %i.bv = load i32, ptr %5, align 4, !tbaa !179
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !179
  br label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit

bb.aa:                                            ; preds = %bb.u
  %i.bw = load i32, ptr %.0.i, align 4, !tbaa !179
  store i32 %i.bw, ptr %i.bi, align 4, !tbaa !179
  %i.bx = icmp eq ptr %5, %.0.i
  br i1 %i.bx, label %_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = getelementptr inbounds i8, ptr %.0.i, i64 -4
  br label %bb.u, !llvm.loop !1011

_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_SC_T1_T2_.exit: ; preds = %bb.g, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.s, %bb.r, %bb.q, %bb.p, %bb.j, %bb.i, %bb.h, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterI14TestComparatorEEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = shl nsw i64 %3, 1                        ; 3 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not88 = icmp slt i64 %i.g, %i.c
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 2                           ; 9 uses
  %.idx72 = shl i64 %3, 3                         ; 2 uses
  %.not73 = icmp eq i64 %.idx, %.idx72
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 448 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 464 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 456 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 488 ; 4 uses
  br i1 %.not73, label %.critedge.i.us.preheader, label %.lr.ph.i

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.l = icmp sgt i64 %.idx, 4
  %i.m = icmp eq i64 %.idx, 4
  %5 = shl i64 %3, 3
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us
  %.090.us = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.060.089.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.060.089.us, i64 %.idx ; 5 uses
  br i1 %i.l, label %bb.d, label %bb.b, !prof !299

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.m, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %.sroa.060.089.us, align 4, !tbaa !179
  store i32 %i.o, ptr %.090.us, align 4, !tbaa !179
  %i.p = getelementptr inbounds nuw i8, ptr %.090.us, i64 %.idx
  %i.q = load i32, ptr %i.n, align 4, !tbaa !179
  store i32 %i.q, ptr %i.p, align 4, !tbaa !179
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.090.us, ptr align 4 %.sroa.060.089.us, i64 %.idx, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.090.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.n, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.s = getelementptr inbounds i8, ptr %.090.us, i64 %5 ; 2 uses
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = sub i64 %i.d, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 2 uses
  %.not.us = icmp slt i64 %i.v, %i.c
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !1012

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit
  %.090 = phi ptr [ %i.ct, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.060.089 = phi ptr [ %i.x, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterI14TestComparatorEEET0_T_SC_SC_SC_SB_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.060.089, i64 %.idx ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.060.089, i64 %.idx72 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit, %.lr.ph.i
  %.022.i = phi ptr [ %.090, %.lr.ph.i ], [ %i.cd, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 2 uses
  %.sroa.016.021.i = phi ptr [ %.sroa.060.089, %.lr.ph.i ], [ %.sroa.016.1.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 3 uses
  %.sroa.012.020.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.sroa.012.1.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit ] ; 3 uses
  %i.y = load i32, ptr %.sroa.012.020.i, align 4, !tbaa !179 ; 3 uses
  %i.z = load i32, ptr %.sroa.016.021.i, align 4, !tbaa !179 ; 3 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !151 ; 2 uses
  %.not10.i.i.i.i34 = icmp eq ptr %i.aa, null
  br i1 %.not10.i.i.i.i34, label %.critedge.i45, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i35
  %.012.i.i.i.i36 = phi ptr [ %.1.i.i.i.i41, %.lr.ph.i.i.i.i35 ], [ %i.aa, %bb.e ] ; 3 uses
  %.0811.i.i.i.i37 = phi ptr [ %.19.i.i.i.i38, %.lr.ph.i.i.i.i35 ], [ %i.j, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i36, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !179
  %i.ad = icmp slt i32 %i.ac, %i.y                ; 2 uses
  %.19.i.i.i.i38 = select i1 %i.ad, ptr %.0811.i.i.i.i37, ptr %.012.i.i.i.i36 ; 6 uses
  %.1.in.v.i.i.i.i39 = select i1 %i.ad, i64 24, i64 16
  %.1.in.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i36, i64 %.1.in.v.i.i.i.i39
  %.1.i.i.i.i41 = load ptr, ptr %.1.in.i.i.i.i40, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %.1.i.i.i.i41, null
  br i1 %.not.i.i.i.i42, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i43, label %.lr.ph.i.i.i.i35, !llvm.loop !6

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i43: ; preds = %.lr.ph.i.i.i.i35
  %i.ae = icmp eq ptr %.19.i.i.i.i38, %i.j
  br i1 %i.ae, label %.critedge.i45, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i43
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i38, i64 32
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !179
  %i.ah = icmp slt i32 %i.y, %i.ag
  br i1 %i.ah, label %.critedge.i45, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52

.critedge.i45:                                    ; preds = %bb.f, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i43, %bb.e
  %.08.lcssa.i.i.i14.i46 = phi ptr [ %.19.i.i.i.i38, %bb.f ], [ %.19.i.i.i.i38, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i43 ], [ %i.j, %bb.e ]
  %i.ai = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  store i32 %i.y, ptr %i.aj, align 8, !tbaa !216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr null, ptr %i.ak, align 8, !tbaa !215
  %i.al = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i14.i46, ptr noundef nonnull align 4 dereferenceable(4) %i.aj)
          to label %bb.g unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i47 ; 2 uses

bb.g:                                             ; preds = %.critedge.i45
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1      ; 4 uses
  %.not.i.i48 = icmp eq ptr %i.an, null
  br i1 %.not.i.i48, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i4.i49 = icmp ne ptr %i.am, null
  %i.ao = icmp eq ptr %i.an, %i.j
  %or.cond.i.i.i.i50 = select i1 %.not.i.i.i4.i49, i1 true, i1 %i.ao
  br i1 %or.cond.i.i.i.i50, label %.thread.i.i51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !179
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !179
  %i.as = icmp slt i32 %i.aq, %i.ar
  br label %.thread.i.i51

.thread.i.i51:                                    ; preds = %bb.i, %bb.h
  %i.at = phi i1 [ %i.as, %bb.i ], [ true, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.at, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.au = load i64, ptr %i.k, align 8, !tbaa !159
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.k, align 8, !tbaa !159
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i47
  %.lcssa130.sink = phi ptr [ %i.bj, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ai, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i47 ]
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.aw, %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i47 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa130.sink, i64 noundef 48) #27
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i47: ; preds = %.critedge.i45
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52: ; preds = %bb.f, %.thread.i.i51, %bb.j
  %.sroa.09.0.i44 = phi ptr [ %.19.i.i.i.i38, %bb.f ], [ %i.ai, %.thread.i.i51 ], [ %i.am, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i44, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !221
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 452
  %i.ba = load float, ptr %i.az, align 4, !tbaa !263
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !151 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not10.i.i.i.i, label %.critedge.i33, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bb, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !179
  %i.be = icmp slt i32 %i.bd, %i.z                ; 2 uses
  %.19.i.i.i.i = select i1 %i.be, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.be, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bf = icmp eq ptr %.19.i.i.i.i, %i.j
  br i1 %i.bf, label %.critedge.i33, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !179
  %i.bi = icmp slt i32 %i.z, %i.bh
  br i1 %i.bi, label %.critedge.i33, label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

.critedge.i33:                                    ; preds = %bb.k, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %.19.i.i.i.i, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i ], [ %i.j, %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit52 ]
  %i.bj = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  store i32 %i.z, ptr %i.bk, align 8, !tbaa !216
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr null, ptr %i.bl, align 8, !tbaa !215
  %i.bm = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bk)
          to label %bb.l unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.l:                                             ; preds = %.critedge.i33
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0      ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bm, 1      ; 4 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i4.i = icmp ne ptr %i.bn, null
  %i.bp = icmp eq ptr %i.bo, %i.j
  %or.cond.i.i.i.i = select i1 %.not.i.i.i4.i, i1 true, i1 %i.bp
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !179
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !179
  %i.bt = icmp slt i32 %i.br, %i.bs
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m
  %i.bu = phi i1 [ %i.bt, %bb.n ], [ true, %bb.m ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bu, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !159
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !159
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge.i33
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 48) #27
  br label %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit

_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit: ; preds = %bb.k, %.thread.i.i, %bb.o
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %i.bj, %.thread.i.i ], [ %i.bn, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !221
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 452
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !263
  %i.cc = fcmp ogt float %i.ba, %i.cb             ; 3 uses
  %.sink.in.i = select i1 %i.cc, ptr %.sroa.012.020.i, ptr %.sroa.016.021.i
  %.sroa.012.1.idx.i = select i1 %i.cc, i64 4, i64 0
  %.sroa.012.1.i = getelementptr inbounds nuw i8, ptr %.sroa.012.020.i, i64 %.sroa.012.1.idx.i ; 5 uses
  %.sroa.016.1.idx.i = select i1 %i.cc, i64 0, i64 4
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i, i64 %.sroa.016.1.idx.i ; 5 uses
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !179
  store i32 %.sink.i, ptr %.022.i, align 4, !tbaa !179
  %i.cd = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 4 uses
  %i.ce = icmp ne ptr %.sroa.016.1.i, %i.w
  %i.cf = icmp ne ptr %.sroa.012.1.i, %i.x
  %or.cond.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond.i, label %bb.e, label %.critedge.i.loopexit, !llvm.loop !1013

.critedge.i.loopexit:                             ; preds = %_ZNSt3mapIiPN18cmCTestTestHandler21cmCTestTestPropertiesESt4lessIiESaISt4pairIKiS2_EEEixERS6_.exit
  %i.cg = ptrtoint ptr %i.w to i64
  %i.ch = ptrtoint ptr %.sroa.016.1.i to i64
end_hunk_0
