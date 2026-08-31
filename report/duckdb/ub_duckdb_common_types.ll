Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE14pointer_writerImEclIRS9_EEvOT_:bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 5 uses
  %i.ap = load i64, ptr %0, align 8, !tbaa !3573
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !3575 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.a, i64 %i.as ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit14
  %.09.i.i = phi i64 [ %i.ap, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit14 ], [ %i.ay, %bb.l ] ; 2 uses
  %.0.i.i = phi ptr [ %i.at, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit14 ], [ %i.ax, %bb.l ]
  %i.au = and i64 %.09.i.i, 15
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE10hex_digitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !153
  %i.ax = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !153
  %i.ay = lshr i64 %.09.i.i, 4                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal11format_uintILj4EcmEEPT0_S4_T1_ib.exit.i, label %bb.l, !llvm.loop !3740

_ZN10duckdb_fmt2v68internal11format_uintILj4EcmEEPT0_S4_T1_ib.exit.i: ; preds = %bb.l
  %.not6.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not6.i.i.i, label %_ZN10duckdb_fmt2v68internal11format_uintILj4EcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmEET1_S9_T2_ib.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN10duckdb_fmt2v68internal11format_uintILj4EcmEEPT0_S4_T1_ib.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.az, align 8, !tbaa !2784
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %.lr.ph.i.i.i
  %i.bb = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.bu, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 3 uses
  %.07.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.bv, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.bc = load i8, ptr %.07.i.i.i, align 1, !tbaa !153 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !2789
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !153
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !2784
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2782 ; 4 uses
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 7 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775807
  br i1 %i.bk, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bl = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.bj ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bj
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 9223372036854775807)
  %i.bo = select i1 %i.bm, i64 9223372036854775807, i64 %i.bn ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.bp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #48 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bj ; 2 uses
  store i8 %i.bc, ptr %i.bq, align 1, !tbaa !153
  %i.br = icmp sgt i64 %i.bj, 0
  br i1 %i.br, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.bp, ptr %.sroa.0.0.copyload, align 8, !tbaa !2782
  store ptr %i.bs, ptr %i.az, align 8, !tbaa !2784
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.n
  %i.bu = phi ptr [ %i.bs, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.bf, %bb.n ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.bv, %i.at
  br i1 %.not.i.i.i15, label %_ZN10duckdb_fmt2v68internal11format_uintILj4EcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmEET1_S9_T2_ib.exit, label %bb.m, !llvm.loop !3625

_ZN10duckdb_fmt2v68internal11format_uintILj4EcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmEET1_S9_T2_ib.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %_ZN10duckdb_fmt2v68internal11format_uintILj4EcmEEPT0_S4_T1_ib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  store ptr %.sroa.0.0.copyload, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedIRNSB_14pointer_writerImEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3514   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3575
  %i.d = add i32 %i.c, 2                          ; 2 uses
  %.not46 = icmp ult i32 %i.d, %i.a
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE14pointer_writerImEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load i8, ptr %i.e, align 2, !tbaa !153   ; 8 uses
  %narrow = sub nuw i32 %i.a, %i.d
  %i.g = zext i32 %narrow to i64                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 15
  switch i8 %i.j, label %.lr.ph.i.i.i76 [
    i8 2, label %.lr.ph.i.i.i
    i8 3, label %bb.j
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !2784
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 3 uses
  %.04.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.af, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ]
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !2789
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.f, ptr %i.m, align 1, !tbaa !153
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !2784
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !2782 ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775807
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #48 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t ; 2 uses
  store i8 %i.f, ptr %i.aa, align 1, !tbaa !153
  %i.ab = icmp sgt i64 %i.t, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.z, ptr %.sroa.07.0.copyload, align 8, !tbaa !2782
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !2784
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, %bb.e
  %i.ae = phi ptr [ %i.p, %bb.e ], [ %i.ac, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ]
  %i.af = add nsw i64 %.04.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit, label %bb.d, !llvm.loop !3621

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i
  store ptr %.sroa.07.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE14pointer_writerImEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.ac

bb.j:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.g, 1                        ; 3 uses
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.not3.i.i.i47 = icmp eq i64 %i.ag, 0
  br i1 %.not3.i.i.i47, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit60, label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 16 ; 2 uses
  %.pre.i.i.i49 = load ptr, ptr %i.ah, align 8, !tbaa !2784
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i52, %.lr.ph.i.i.i48
  %i.aj = phi ptr [ %.pre.i.i.i49, %.lr.ph.i.i.i48 ], [ %i.bb, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i52 ] ; 3 uses
  %.04.i.i.i50 = phi i64 [ %i.ag, %.lr.ph.i.i.i48 ], [ %i.bc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i52 ]
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !2789
  %.not.i.i.i.i.i51 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 %i.f, ptr %i.aj, align 1, !tbaa !153
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !2784
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i52

bb.m:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %.sroa.04.0.copyload, align 8, !tbaa !2782 ; 4 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775807
  br i1 %i.ar, label %bb.n, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i54

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i54: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i.i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.as = add i64 %.sroa.speculated.i.i.i.i.i.i.i55, %i.aq ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.aq
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 9223372036854775807)
  %i.av = select i1 %i.at, i64 9223372036854775807, i64 %i.au ; 3 uses
  %.not.i.i.i.i.i.i.i56 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i56)
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #48 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq ; 2 uses
  store i8 %i.f, ptr %i.ax, align 1, !tbaa !153
  %i.ay = icmp sgt i64 %i.aq, 0
  br i1 %i.ay, label %bb.o, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i57

bb.o:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i57

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i57: ; preds = %bb.o, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i58 = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i.i.i.i58, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i59, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i57
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i59

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i59: ; preds = %bb.p, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i57
  store ptr %i.aw, ptr %.sroa.04.0.copyload, align 8, !tbaa !2782
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !2784
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i52

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i52: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i59, %bb.l
  %i.bb = phi ptr [ %i.am, %bb.l ], [ %i.az, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i59 ]
  %i.bc = add nsw i64 %.04.i.i.i50, -1            ; 2 uses
  %.not.i.i.i53 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i53, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit60, label %bb.k, !llvm.loop !3621

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit60: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i52, %bb.j
  store ptr %.sroa.04.0.copyload, ptr %0, align 8
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE14pointer_writerImEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.02.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.bd = sub nuw nsw i64 %i.g, %i.ag             ; 2 uses
  %.not3.i.i.i61 = icmp eq i64 %i.bd, 0
  br i1 %.not3.i.i.i61, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit74, label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit60
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16 ; 2 uses
  %.pre.i.i.i63 = load ptr, ptr %i.be, align 8, !tbaa !2784
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i66, %.lr.ph.i.i.i62
  %i.bg = phi ptr [ %.pre.i.i.i63, %.lr.ph.i.i.i62 ], [ %i.by, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i66 ] ; 3 uses
  %.04.i.i.i64 = phi i64 [ %i.bd, %.lr.ph.i.i.i62 ], [ %i.bz, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i66 ]
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !2789
  %.not.i.i.i.i.i65 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 %i.f, ptr %i.bg, align 1, !tbaa !153
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !2784
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i66

bb.s:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %.sroa.02.0.copyload, align 8, !tbaa !2782 ; 4 uses
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 7 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775807
  br i1 %i.bo, label %bb.t, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i68

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i68: ; preds = %bb.s
  %.sroa.speculated.i.i.i.i.i.i.i69 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bp = add i64 %.sroa.speculated.i.i.i.i.i.i.i69, %i.bn ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bn
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 9223372036854775807)
  %i.bs = select i1 %i.bq, i64 9223372036854775807, i64 %i.br ; 3 uses
  %.not.i.i.i.i.i.i.i70 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i70)
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #48 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn ; 2 uses
  store i8 %i.f, ptr %i.bu, align 1, !tbaa !153
  %i.bv = icmp sgt i64 %i.bn, 0
  br i1 %i.bv, label %bb.u, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i71

bb.u:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i68
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr align 1 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i71

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i71: ; preds = %bb.u, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i72 = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i.i.i.i.i72, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i73, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i71
  tail call void @_ZdlPv(ptr noundef nonnull %i.bk) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i73

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i73: ; preds = %bb.v, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i71
  store ptr %i.bt, ptr %.sroa.02.0.copyload, align 8, !tbaa !2782
  store ptr %i.bw, ptr %i.be, align 8, !tbaa !2784
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store ptr %i.bx, ptr %i.bf, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i66

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i66: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i73, %bb.r
  %i.by = phi ptr [ %i.bj, %bb.r ], [ %i.bw, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i73 ]
  %i.bz = add nsw i64 %.04.i.i.i64, -1            ; 2 uses
  %.not.i.i.i67 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i67, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit74, label %bb.q, !llvm.loop !3621

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit74: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i66, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit60
  store ptr %.sroa.02.0.copyload, ptr %0, align 8
  br label %bb.ac

.lr.ph.i.i.i76:                                   ; preds = %bb.c
  tail call void @_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE14pointer_writerImEclIRS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %.pre.i.i.i77 = load ptr, ptr %i.ca, align 8, !tbaa !2784
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i80, %.lr.ph.i.i.i76
  %i.cc = phi ptr [ %.pre.i.i.i77, %.lr.ph.i.i.i76 ], [ %i.cu, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i80 ] ; 3 uses
  %.04.i.i.i78 = phi i64 [ %i.g, %.lr.ph.i.i.i76 ], [ %i.cv, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i80 ]
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !2789
  %.not.i.i.i.i.i79 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i79, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %i.f, ptr %i.cc, align 1, !tbaa !153
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !2784
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !2784
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i80

bb.y:                                             ; preds = %bb.w
  %i.cg = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2782 ; 4 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 7 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775807
  br i1 %i.ck, label %bb.z, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i82

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i82: ; preds = %bb.y
  %.sroa.speculated.i.i.i.i.i.i.i83 = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.cl = add i64 %.sroa.speculated.i.i.i.i.i.i.i83, %i.cj ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cj
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 9223372036854775807)
  %i.co = select i1 %i.cm, i64 9223372036854775807, i64 %i.cn ; 3 uses
  %.not.i.i.i.i.i.i.i84 = icmp ne i64 %i.co, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i84)
  %i.cp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #48 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cj ; 2 uses
  store i8 %i.f, ptr %i.cq, align 1, !tbaa !153
  %i.cr = icmp sgt i64 %i.cj, 0
  br i1 %i.cr, label %bb.aa, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i85

bb.aa:                                            ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i82
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i85

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i85: ; preds = %bb.aa, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i82
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i86 = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i.i.i.i.i86, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i87, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i85
  tail call void @_ZdlPv(ptr noundef nonnull %i.cg) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i87

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i87: ; preds = %bb.ab, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i85
  store ptr %i.cp, ptr %.sroa.0.0.copyload, align 8, !tbaa !2782
  store ptr %i.cs, ptr %i.ca, align 8, !tbaa !2784
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store ptr %i.ct, ptr %i.cb, align 8, !tbaa !2789
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i80

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i80: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i87, %bb.x
  %i.cu = phi ptr [ %i.cf, %bb.x ], [ %i.cs, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i87 ]
  %i.cv = add nsw i64 %.04.i.i.i78, -1            ; 2 uses
  %.not.i.i.i81 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i81, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit88, label %bb.w, !llvm.loop !3621

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit88: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i80
  store ptr %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit88, %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit74, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal22check_string_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i8 %0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 115, label %bb.h
    i8 0, label %bb.h
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !151
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, i8 noundef signext %0)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.396, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.405)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %2) #49
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.e) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.c, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.g ] ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.h) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.k = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @_ZdlPv(ptr noundef %i.k) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal23check_pointer_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i8 %0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 112, label %bb.h
    i8 0, label %bb.h
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !151
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, i8 noundef signext %0)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.396, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.406)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %2) #49
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.e) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.c, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.g ] ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.h) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.k = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @_ZdlPv(ptr noundef %i.k) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn.pn

bb.h:                                             ; preds = %bb.a, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISC_cEEEEcEEEEiRPKT_SN_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !945    ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !153   ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.f, ptr %0, align 8, !tbaa !945
  br label %bb.j

.preheader:                                       ; preds = %bb.a, %bb.d
  %i.g = phi i8 [ %i.o, %bb.d ], [ %i.d, %bb.a ]
  %i.h = phi ptr [ %i.n, %bb.d ], [ %i.c, %bb.a ]
  %.017 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.i = icmp ugt i32 %.017, 214748364
  br i1 %i.i, label %.critedge.thread, label %bb.c
end_hunk_0
