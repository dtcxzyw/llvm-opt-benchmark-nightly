Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_operators?download=true
inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_:bb.a
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !356
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !271
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.ac), !inline_history !2388
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !371
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !355
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.am = icmp ugt i64 %1, 99
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.02326.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %i.al, %bb.f ] ; 2 uses
  %.02425.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %1, %bb.f ] ; 3 uses
  %i.an = urem i64 %.02425.i.i.i.i.i, 100
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = udiv i64 %.02425.i.i.i.i.i, 100         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !201
  %i.at = getelementptr inbounds i8, ptr %.02326.i.i.i.i.i, i64 -1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !201
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !201
  %i.av = getelementptr inbounds i8, ptr %.02326.i.i.i.i.i, i64 -2 ; 3 uses
  store i8 %i.au, ptr %i.av, align 1, !tbaa !201
  %i.aw = icmp ugt i64 %.02425.i.i.i.i.i, 9999
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !52

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.024.lcssa.i.i.i.i.i = phi i64 [ %1, %bb.f ], [ %i.ap, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.023.lcssa.i.i.i.i.i = phi ptr [ %i.al, %bb.f ], [ %i.av, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ax = icmp samesign ult i64 %.024.lcssa.i.i.i.i.i, 10
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ay = trunc nuw nsw i64 %.024.lcssa.i.i.i.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  br label %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ba = shl nuw nsw i64 %.024.lcssa.i.i.i.i.i, 1
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !201
  %i.be = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 -1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !201
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !201
  br label %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i

_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sink31.i.i.i.i.i = phi i64 [ -2, %bb.h ], [ -1, %bb.g ]
  %.sink.i.i.i.i.i = phi i8 [ %i.bf, %bb.h ], [ %i.az, %bb.g ]
  %i.bg = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 %.sink31.i.i.i.i.i
  store i8 %.sink.i.i.i.i.i, ptr %i.bg, align 1, !tbaa !201
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 16 %i.a, i64 %i.z, i1 false), !tbaa !201
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIyNS0_18basic_format_specsIcEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 !guid !2391 {
bb.a:
  %i.a = alloca [78 x i8], align 16               ; 6 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::int_writer.215", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384  ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !415
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !401
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.e, align 8, !tbaa !192
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !429
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.h = load i8, ptr %i.g, align 1
  %i.i = lshr i8 %i.h, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.j, 2
  br i1 %switch.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.j, 2
  %i.l = select i1 %i.k, i8 43, i8 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %i.l, ptr %i.m, align 8, !tbaa !201
  store i32 1, ptr %i.f, align 4, !tbaa !429
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %1, i64 %2) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !371  ; 2 uses
  %i.r = add i64 %i.q, %i.o                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !356
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !271
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.r), !inline_history !2390
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.r, ptr %i.p, align 8, !tbaa !371
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.z = call noundef ptr @_ZN10duckdb_fmt2v68internal14format_decimalIN6duckdb10uhugeint_tEcZNS1_14format_decimalIcPcS4_EET0_S7_T1_iEUlS6_E_EEPS7_SA_T_iS8_(ptr noundef nonnull %i.a, i64 %1, i64 %2, i32 noundef %i.n) ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.a, %i.z
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.ab = ptrtoaddr ptr %i.z to i64
  %i.ac = ptrtoaddr ptr %i.a to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 16 %i.a, i64 %i.ad, i1 false), !tbaa !201
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit: ; preds = %bb.f, %.lr.ph.i.i.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !guid !2393 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !399
  %.not2 = icmp eq i8 %i.d, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i1 %1 to i32
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.e)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = select i1 %1, ptr @.str.9, ptr @.str.10
  %i.h = select i1 %1, i64 4, i64 5               ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !398  ; 7 uses
  %i.k = icmp sgt i32 %i.j, -1
  %i.l = zext nneg i32 %i.j to i64
  %i.m = icmp samesign ugt i64 %i.h, %i.l
  %or.cond = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond, label %.lr.ph.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.n = icmp eq i32 %i.j, 0
  br i1 %i.n, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %3 = icmp ult i32 %i.j, 2
  br i1 %3, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %4 = icmp ult i32 %i.j, 3
  br i1 %4, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %5 = icmp ult i32 %i.j, 4                       ; 2 uses
  %brmerge = or i1 %5, %1
  %.mux = select i1 %5, i64 3, i64 %i.h
  br i1 %brmerge, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %6 = icmp ult i32 %i.j, 5
  %spec.select = select i1 %6, i64 4, i64 %i.h
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i: ; preds = %.lr.ph.i.i.i.4, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %bb.d
  %.0.i.i = phi i64 [ %i.h, %bb.d ], [ %.mux, %.lr.ph.i.i.i.3 ], [ 0, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.1 ], [ %spec.select, %.lr.ph.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.g, ptr %2, align 8, !tbaa !431
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i, ptr %i.o, align 8, !tbaa !432
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

bb.e:                                             ; preds = %bb.a
  %i.p = select i1 %1, i64 4, i64 5
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !371  ; 2 uses
  %i.s = add i64 %i.r, %i.p                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !356
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !271
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.s), !inline_history !2392
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  store i64 %i.s, ptr %i.q, align 8, !tbaa !371
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !355
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r ; 5 uses
  %i.ab = select i1 %1, i8 116, i8 102
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !201
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ad = select i1 %1, i8 114, i8 97
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !201
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.af = select i1 %1, i8 117, i8 108
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.ah = select i1 %1, i8 101, i8 115
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !201
  br i1 %1, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i8 101, ptr %i.ai, align 1, !tbaa !201
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit: ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i, %.lr.ph.i.i.i.i.4, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, %bb.c
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %.sroa.0.0.copyload.i.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 !guid !2398 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN10duckdb_fmt2v68internal22check_string_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %i.e, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !384  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !398  ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.0918.i.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.01017.i.i = phi i64 [ %.1.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !201
  %.not14.i.i = icmp slt i8 %i.m, -64
  br i1 %.not14.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = add i64 %.01017.i.i, 1                   ; 2 uses
  %5 = icmp ugt i64 %i.n, %i.j
  br i1 %5, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.n, %bb.d ], [ %.01017.i.i, %.lr.ph.i.i ]
  %i.o = add nuw i64 %.0918.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, %2
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i, !llvm.loop !53

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0.i = phi i64 [ %2, %bb.b ], [ %2, %bb.c ], [ %.0918.i.i, %bb.d ], [ %2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %1, ptr %3, align 8, !tbaa !431
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i, ptr %i.p, align 8, !tbaa !432
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !371  ; 3 uses
  %i.s = add i64 %i.r, %2                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !356
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !271
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i, i64 noundef %i.s), !inline_history !54
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i: ; preds = %bb.g, %bb.f
  store i64 %i.s, ptr %i.q, align 8, !tbaa !371
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not9.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not9.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !355 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r ; 6 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = ptrtoaddr ptr %i.aa to i64
  %i.ad = add i64 %i.r, %i.ac
  %i.ae = sub i64 %i.a, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %2, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec
  %i.ah = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !201
  %wide.load14 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !201
  %i.aj = getelementptr i8, ptr %next.gep13, i64 16
  store <16 x i8> %wide.load, ptr %next.gep13, align 1, !tbaa !201
  store <16 x i8> %wide.load14, ptr %i.aj, align 1, !tbaa !201
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !2394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %2, -8                       ; 4 uses
  %i.al = getelementptr i8, ptr %1, i64 %n.vec15
  %i.am = getelementptr i8, ptr %i.ab, i64 %n.vec15
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %next.gep17.a = getelementptr i8, ptr %1, i64 %index16
  %next.gep18 = getelementptr i8, ptr %i.ab, i64 %index16
  %wide.load19 = load <8 x i8>, ptr %next.gep17.a, align 1, !tbaa !201
  store <8 x i8> %wide.load19, ptr %next.gep18, align 1, !tbaa !201
  %index.next20 = add nuw i64 %index16, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2395

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %2, %n.vec15
  br i1 %cmp.n21, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 2 uses
  %i.ao = add i64 %2, %i.a                        ; 2 uses
  %.011.i.i.i.ph23 = ptrtoaddr ptr %.011.i.i.i.ph to i64 ; 2 uses
  %i.ap = sub i64 %i.ao, %.011.i.i.i.ph23
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.prol ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.aq = load i8, ptr %.011.i.i.i.prol, align 1, !tbaa !201
  store i8 %i.aq, ptr %.0810.i.i.i.prol, align 1, !tbaa !201
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2396

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.prol ]
  %.0810.i.i.i.unr = phi ptr [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.prol ]
  %i.at = sub i64 %.011.i.i.i.ph23, %i.ao
  %i.au = icmp ugt i64 %i.at, -8
  br i1 %i.au, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.0810.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.av = load i8, ptr %.011.i.i.i, align 1, !tbaa !201
  store i8 %i.av, ptr %.0810.i.i.i, align 1, !tbaa !201
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 1
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !201
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !201
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 2
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !201
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !201
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 3
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !201
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !201
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !201
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !201
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 5
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 5
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !201
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !201
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 6
  %i.bm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 6
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !201
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !201
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 7
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 7
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !201
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !201
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.br, %i.y
  br i1 %.not.i.i.i.7, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i, !llvm.loop !2397

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !guid !2400 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::pointer_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 4 ; 5 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN10duckdb_fmt2v68internal23check_pointer_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %i.d, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !384
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE:bb.a
  %.sroa.014.0.insert.insert17 = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext15
  %i.bu = invoke noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef %.0, i32 noundef %spec.select82, i64 %.sroa.014.0.insert.insert17, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.u       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bv = and i32 %.sroa.8.2, 33554432
  %.not76 = icmp eq i32 %i.bv, 0
  br i1 %.not76, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.bw, align 8, !tbaa !366
  %i.bx = invoke noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr %.sroa.03.0.copyload)
          to label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.v:                                             ; preds = %bb.s
  %i.bz = and i32 %.sroa.8.2, 16711680
  %i.ca = icmp eq i32 %i.bz, 3014656
  %. = select i1 %i.ca, i8 44, i8 46
  br label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit

_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit: ; preds = %bb.t, %bb.v
  %.056 = phi i8 [ %., %bb.v ], [ %i.bx, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cb = load ptr, ptr %i.as, align 8, !tbaa !355
  %i.cc = load i64, ptr %i.au, align 8, !tbaa !371
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %.sroa.014.0.insert.ext = zext i32 %spec.select82 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext
  store ptr %i.cb, ptr %7, align 8, !tbaa !632
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !633
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.bu, ptr %i.cf, align 4, !tbaa !634
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.014.0.insert.insert, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %.056, ptr %i.ch, align 8, !tbaa !635
  %i.ci = and i32 %.sroa.8.2, 255
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.ck = icmp sgt i32 %spec.select82, 0
  %i.cl = select i1 %i.ck, i32 %spec.select82, i32 16
  %i.cm = add nsw i32 %i.bu, %i.cd                ; 2 uses
  %i.cn = icmp slt i32 %i.cm, -3
  %.not.i = icmp sgt i32 %i.cm, %i.cl
  %or.cond.i = or i1 %i.cn, %.not.i
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.co = or disjoint i32 %i.bt, 1
  store i32 %i.co, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.cp = invoke i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %7, i64 0)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = and i32 %.sroa.8.2, 65280
  %.not10.i = icmp ne i32 %i.cr, 0
  %i.cs = zext i1 %.not10.i to i64
  %i.ct = add i64 %i.cp, %i.cs
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !636
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !271
  %i.cu = load ptr, ptr %i.as, align 8, !tbaa !355 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cu, %i.av
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.cu) #29, !inline_history !372
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %bb.e
  ret void

bb.ae:                                            ; preds = %bb.y, %bb.z
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.u, %bb.q
  %.pn80 = phi { ptr, i32 } [ %i.bj, %bb.q ], [ %i.by, %bb.u ], [ %i.cv, %bb.ae ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !271
  %i.cw = load ptr, ptr %i.as, align 8, !tbaa !355 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.cw, %i.av
  br i1 %.not.i.i92, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.cw) #29, !inline_history !372
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn80
}

declare noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !3243 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.o unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !199    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.010, label %bb.f, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.010, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !384  ; 3 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !398  ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.i:                                             ; preds = %bb.h
  %i.n = zext nneg i32 %i.l to i64                ; 2 uses
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.k
  %.0918.i.i = phi i64 [ %i.s, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %.01017.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !201
  %.not14.i.i = icmp slt i8 %i.q, -64
  br i1 %.not14.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.r = add i64 %.01017.i.i, 1                   ; 2 uses
  %5 = icmp ugt i64 %i.r, %i.n
  br i1 %5, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.r, %bb.j ], [ %.01017.i.i, %.lr.ph.i.i ]
  %i.s = add nuw i64 %.0918.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.s, %i.h
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i, !llvm.loop !53

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.h, %bb.h ], [ %i.h, %bb.i ], [ %.0918.i.i, %bb.j ], [ %i.h, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8, !tbaa !431
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i, ptr %i.t, align 8, !tbaa !432
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit

bb.l:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !371  ; 3 uses
  %i.w = add i64 %i.v, %i.h                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !356
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.m, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !271
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i, i64 noundef %i.w), !inline_history !54
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i: ; preds = %bb.m, %bb.l
  store i64 %i.w, ptr %i.u, align 8, !tbaa !371
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %.not9.i.i.i = icmp samesign eq i64 %i.h, 0
  br i1 %.not9.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !355 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v ; 6 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = ptrtoaddr ptr %i.ae to i64
  %i.ah = add i64 %i.v, %i.ag
  %i.ai = sub i64 %i.a, %i.ah
  %diff.check = icmp ugt i64 %i.ai, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.h, 24
  %n.vec = and i64 %i.h, -32                      ; 5 uses
  %i.ak = getelementptr i8, ptr %1, i64 %n.vec
  %i.al = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !201
  %wide.load30 = load <16 x i8>, ptr %i.am, align 1, !tbaa !201
  %i.an = getelementptr i8, ptr %next.gep29, i64 16
  store <16 x i8> %wide.load, ptr %next.gep29, align 1, !tbaa !201
  store <16 x i8> %wide.load30, ptr %i.an, align 1, !tbaa !201
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !3239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.h, -8                     ; 4 uses
  %i.ap = getelementptr i8, ptr %1, i64 %n.vec31
  %i.aq = getelementptr i8, ptr %i.af, i64 %n.vec31
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %next.gep33.a = getelementptr i8, ptr %1, i64 %index32
  %next.gep34 = getelementptr i8, ptr %i.af, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %next.gep33.a, align 1, !tbaa !201
  store <8 x i8> %wide.load35, ptr %next.gep34, align 1, !tbaa !201
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.h, %n.vec31
  br i1 %cmp.n37, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 2 uses
  %i.as = add i64 %i.h, %i.a                      ; 2 uses
  %.011.i.i.i.ph39 = ptrtoaddr ptr %.011.i.i.i.ph to i64 ; 2 uses
  %i.at = sub i64 %i.as, %.011.i.i.i.ph39
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.prol ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.au = load i8, ptr %.011.i.i.i.prol, align 1, !tbaa !201
  store i8 %i.au, ptr %.0810.i.i.i.prol, align 1, !tbaa !201
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3241

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.prol ]
  %.0810.i.i.i.unr = phi ptr [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.prol ]
  %i.ax = sub i64 %.011.i.i.i.ph39, %i.as
  %i.ay = icmp ugt i64 %i.ax, -8
  br i1 %i.ay, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.0810.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.az = load i8, ptr %.011.i.i.i, align 1, !tbaa !201
  store i8 %i.az, ptr %.0810.i.i.i, align 1, !tbaa !201
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 1
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !201
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !201
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 2
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !201
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !201
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 3
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !201
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !201
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !201
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !201
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 5
  %i.bn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 5
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !201
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !201
  %i.bp = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 6
  %i.bq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 6
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !201
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !201
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 7
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 7
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !201
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !201
  %i.bv = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.bv, %i.ac
  br i1 %.not.i.i.i.7, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i, !llvm.loop !3242

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  ret void

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn18 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn19, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn18

bb.o:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal24handle_cstring_type_specIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE20cstring_spec_handlerEEEvT_OT0_(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 !guid !3245 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::pointer_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 4 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i8 %0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 115, label %bb.b
    i8 0, label %bb.b
    i8 112, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
end_hunk_1
