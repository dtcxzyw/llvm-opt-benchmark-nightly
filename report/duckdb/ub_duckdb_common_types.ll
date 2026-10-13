Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41207
inline.NumDeleted: 6299
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEclIRS9_EEvOT_:bb.a
  %.not.i.i = icmp eq ptr %i.ac, %i.e
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit, label %bb.b, !llvm.loop !134

_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i
  store ptr %.sroa.0.0.copyload.pre, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEETnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_SC_SC_SG_.exit, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1141 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !273 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not3.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre, i64 16 ; 3 uses
  %.pre.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !834
  %.pre6.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !835
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %.pre6.i.i.i, %.lr.ph.i.i.i ], [ %i.bb, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.bc, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ] ; 2 uses
  %.04.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.bd, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i ]
  %.not.i.i.i.i.i9 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 %i.ag, ptr %i.ak, align 1, !tbaa !273
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !834
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !834
  %.pre5.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %.sroa.0.0.copyload.pre, align 8, !tbaa !833 ; 4 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775807
  br i1 %i.ar, label %bb.l, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.as = add i64 %.sroa.speculated.i.i.i.i.i.i.i11, %i.aq ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.aq
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 9223372036854775807)
  %i.av = select i1 %i.at, i64 9223372036854775807, i64 %i.au ; 3 uses
  %.not.i.i.i.i.i.i.i12 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i12)
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #48 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq ; 2 uses
  store i8 %i.ag, ptr %i.ax, align 1, !tbaa !273
  %i.ay = icmp sgt i64 %i.aq, 0
  br i1 %i.ay, label %bb.m, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13

bb.m:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr align 1 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13: ; preds = %bb.m, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i.i.i.i14, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.n, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i13
  store ptr %i.aw, ptr %.sroa.0.0.copyload.pre, align 8, !tbaa !833
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !834
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 2 uses
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i, %bb.j
  %i.bb = phi ptr [ %.pre5.i.i.i, %bb.j ], [ %i.ba, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.am, %bb.j ], [ %i.az, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i ]
  %i.bd = add i64 %.04.i.i.i, -1                  ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit, label %bb.i, !llvm.loop !138

_ZSt6fill_nISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEmcET_S6_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i, %bb.h
  store ptr %.sroa.0.0.copyload.pre, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.be, align 8, !tbaa !245
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !245
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !3963
  %i.bh = tail call ptr @_ZN10duckdb_fmt2v68internal11format_uintILj3EcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET1_SA_T2_ib(ptr %.sroa.0.0.copyload.pre, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %i.bg, i1 noundef zeroext false)
  store ptr %i.bh, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE13write_decimalINS5_10uhugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [78 x i8], align 16               ; 5 uses
  %i.b = tail call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %1, i64 %2)
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.c = call noundef ptr @_ZN10duckdb_fmt2v68internal14format_decimalIN6duckdb10uhugeint_tEcZNS1_14format_decimalIcSt20back_insert_iteratorINS3_6vectorIcLb1ESaIcEEEES4_EET0_SB_T1_iEUlPcE_EEPSB_SF_T_iSC_(ptr noundef nonnull %i.a, i64 %1, i64 %2, i32 noundef %i.b) ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i.i, label %_ZN10duckdb_fmt2v68internal14format_decimalIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET0_SA_T1_i.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 3 uses
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !834
  %.pre5.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !835
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.f = phi ptr [ %.pre5.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i ] ; 2 uses
  %i.g = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %i.aa, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i ] ; 2 uses
  %i.h = load i8, ptr %.07.i.i.i.i, align 1, !tbaa !273 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.h, ptr %i.g, align 1, !tbaa !273
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !834
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !834
  %.pre4.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.sroa.01.0.copyload, align 8, !tbaa !833 ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775807
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.n ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 9223372036854775807)
  %i.s = select i1 %i.q, i64 9223372036854775807, i64 %i.r ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #48 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store i8 %i.h, ptr %i.u, align 1, !tbaa !273
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.t, ptr %.sroa.01.0.copyload, align 8, !tbaa !833
  store ptr %i.w, ptr %i.d, align 8, !tbaa !834
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %i.e, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.c
  %i.y = phi ptr [ %i.x, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %.pre4.i.i.i, %bb.c ]
  %i.z = phi ptr [ %i.w, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ], [ %i.j, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_fmt2v68internal14format_decimalIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET0_SA_T1_i.exit, label %bb.b, !llvm.loop !139

_ZN10duckdb_fmt2v68internal14format_decimalIcSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEENS4_10uhugeint_tEEET0_SA_T1_i.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  store ptr %.sroa.01.0.copyload, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEENS1_13error_handlerEE5writeEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::internal::output_range<std::back_insert_iterator<duckdb::vector<char>>, char>>::str_writer", align 8 ; 5 uses
  %i.a = select i1 %1, ptr @.str.398, ptr @.str.399 ; 4 uses
  %i.b = select i1 %1, i64 4, i64 5               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !935  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.lr.ph.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !949  ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 5 uses
  %i.i = icmp samesign ugt i64 %i.b, %i.h
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = load i8, ptr %i.a, align 1, !tbaa !273
  %.not14.i.i = icmp slt i8 %i.j, -64
  br i1 %.not14.i.i, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.k = icmp eq i32 %i.f, 0
  br i1 %i.k, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i64 [ 2, %bb.d ], [ 1, %.lr.ph.i.i ] ; 3 uses
  %3 = icmp samesign ugt i64 %.1.i.i, %i.h
  br i1 %3, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i.2.a

.lr.ph.i.i.2.a:                                   ; preds = %.lr.ph.i.i.1
  %i.l = add nuw nsw i64 %.1.i.i, 1
  %.not16 = icmp samesign ult i64 %.1.i.i, %i.h
  br i1 %.not16, label %.lr.ph.i.i.3, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2.a
  %4 = add i64 %i.l, 1                            ; 2 uses
  %5 = icmp ugt i64 %4, %i.h                      ; 2 uses
  %brmerge = or i1 %5, %1
  %.mux = select i1 %5, i64 3, i64 %i.b
  br i1 %brmerge, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %i.m = add i64 %4, 1
  %i.n = icmp ugt i64 %i.m, %i.h
  %spec.select = select i1 %i.n, i64 4, i64 %i.b
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %.lr.ph.i.i.4, %bb.d, %.lr.ph.i.i.1, %.lr.ph.i.i.2.a, %.lr.ph.i.i.3, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ 0, %bb.d ], [ %.mux, %.lr.ph.i.i.3 ], [ 1, %.lr.ph.i.i.1 ], [ %spec.select, %.lr.ph.i.i.4 ], [ 2, %.lr.ph.i.i.2.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr %i.a, ptr %2, align 8, !tbaa !987
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i, ptr %i.o, align 8, !tbaa !988
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !834
  %.pre5.i.i = load ptr, ptr %i.r, align 8, !tbaa !835
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %.lr.ph.i.i.i
  %i.s = phi ptr [ %.pre5.i.i, %.lr.ph.i.i.i ], [ %i.al, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.am, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %.07.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.an, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.u = load i8, ptr %.07.i.i.i, align 1, !tbaa !273 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.u, ptr %i.t, align 1, !tbaa !273
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !834
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !834
  %.pre4.i.i = load ptr, ptr %i.r, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !833 ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #48 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  store i8 %i.u, ptr %i.ah, align 1, !tbaa !273
  %i.ai = icmp sgt i64 %i.aa, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ag, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !833
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !834
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af ; 2 uses
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.f
  %i.al = phi ptr [ %i.ak, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %.pre4.i.i, %bb.f ]
  %i.am = phi ptr [ %i.aj, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i ], [ %i.w, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.p
  br i1 %.not.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, label %bb.e, !llvm.loop !134

_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeENS0_17basic_string_viewIcEE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !948    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !988  ; 10 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !987    ; 2 uses
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %wide.load = load <2 x i8>, ptr %i.e, align 1, !tbaa !273
  %wide.load205 = load <2 x i8>, ptr %i.f, align 1, !tbaa !273
  %i.g = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.h = icmp sgt <2 x i8> %wide.load205, splat (i8 -65)
  %i.i = zext <2 x i1> %i.g to <2 x i64>
  %i.j = zext <2 x i1> %i.h to <2 x i64>
  %i.k = add <2 x i64> %vec.phi, %i.i             ; 2 uses
  %i.l = add <2 x i64> %vec.phi204, %i.j          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !3964

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit, label %.lr.ph.i.i.preheader209

.lr.ph.i.i.preheader209:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.069.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader209, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader209 ] ; 2 uses
  %.069.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.069.i.i.ph, %.lr.ph.i.i.preheader209 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %.010.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !273
  %.not7.i.i = icmp sgt i8 %i.p, -65
  %i.q = zext i1 %.not7.i.i to i64
  %spec.select.i.i = add i64 %.069.i.i, %i.q      ; 2 uses
  %i.r = add nuw i64 %.010.i.i, 1                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, %i.c
  br i1 %.not.i.i, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit, label %.lr.ph.i.i, !llvm.loop !3965

_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  %i.s = phi i64 [ %i.c, %bb.a ], [ %i.n, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.t = zext i32 %i.a to i64                     ; 2 uses
  %.not46 = icmp ult i64 %i.s, %i.t
  br i1 %.not46, label %bb.j, label %bb.c

_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit.thread: ; preds = %bb.b
  %i.u = zext i32 %i.a to i64
  br label %bb.j

bb.c:                                             ; preds = %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcE5widthEv.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !987    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 6 uses
  %.not6.i.i.i = icmp samesign eq i64 %i.c, 0
  br i1 %.not6.i.i.i, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE10str_writerIcEclIRS9_EEvOT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !834
  %.pre5.i.i = load ptr, ptr %i.y, align 8, !tbaa !835
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i, %.lr.ph.i.i.i
  %i.z = phi ptr [ %.pre5.i.i, %.lr.ph.i.i.i ], [ %i.as, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.at, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %.07.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.au, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i ] ; 2 uses
  %i.ab = load i8, ptr %.07.i.i.i, align 1, !tbaa !273 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !273
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !834
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !834
  %.pre4.i.i = load ptr, ptr %i.y, align 8, !tbaa !835
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSEOc.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !833 ; 4 uses
  %i.af = ptrtoint ptr %i.z to i64
end_hunk_0
