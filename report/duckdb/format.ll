Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/format?download=true
inline.NumInlined: 5789
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_:bb.a
  %i.r = mul nuw nsw i32 %i.q, 1233
  %i.s = lshr i32 %i.r, 12                        ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE23zero_or_powers_of_10_64E, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !71
  %i.w = icmp ult i64 %1, %i.v
  %.neg.i.i.i = sext i1 %i.w to i32
  %i.x = add nuw nsw i32 %i.s, 1
  %i.y = add nsw i32 %i.x, %.neg.i.i.i            ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ac = add i64 %i.ab, %i.z                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !62
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.ac), !inline_history !771
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !64
  %i.at = getelementptr inbounds i8, ptr %.02326.i.i.i.i.i, i64 -1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !64
  %i.au = load i8, ptr %i.aq, align 2, !tbaa !64
  %i.av = getelementptr inbounds i8, ptr %.02326.i.i.i.i.i, i64 -2 ; 3 uses
  store i8 %i.au, ptr %i.av, align 1, !tbaa !64
  %i.aw = icmp ugt i64 %.02425.i.i.i.i.i, 9999
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !8

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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 -1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !64
  %i.bf = load i8, ptr %i.bb, align 2, !tbaa !64
  br label %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i

_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sink31.i.i.i.i.i = phi i64 [ -2, %bb.h ], [ -1, %bb.g ]
  %.sink.i.i.i.i.i = phi i8 [ %i.bf, %bb.h ], [ %i.az, %bb.g ]
  %i.bg = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 %.sink31.i.i.i.i.i
  store i8 %.sink.i.i.i.i.i, ptr %i.bg, align 1, !tbaa !64
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 16 %i.a, i64 %i.z, i1 false), !tbaa !64
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit: ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImcZNS1_14format_decimalIcPcmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEy.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIyNS0_18basic_format_specsIcEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, i64 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca [78 x i8], align 16               ; 6 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::int_writer.63", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136  ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.e, align 8, !tbaa !71
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !182
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
  store i8 %i.l, ptr %i.m, align 8, !tbaa !64
  store i32 1, ptr %i.f, align 4, !tbaa !182
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %1, i64 %2) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59   ; 2 uses
  %i.r = add i64 %i.q, %i.o                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !60
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !62
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.r), !inline_history !772
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.r, ptr %i.p, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.z = call noundef ptr @_ZN10duckdb_fmt2v68internal14format_decimalIN6duckdb10uhugeint_tEcZNS1_14format_decimalIcPcS4_EET0_S7_T1_iEUlS6_E_EEPS7_SA_T_iS8_(ptr noundef nonnull %i.a, i64 %1, i64 %2, i32 noundef %i.n) ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.a, %i.z
  br i1 %.not9.i.i.i.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit, label %.lr.ph.i.i.preheader.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.ab = ptrtoaddr ptr %i.z to i64
  %i.ac = ptrtoaddr ptr %i.a to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 16 %i.a, i64 %i.ad, i1 false), !tbaa !64
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit: ; preds = %bb.f, %.lr.ph.i.i.preheader.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeEN6duckdb10uhugeint_tE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !151
  %.not2 = icmp eq i8 %i.d, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i1 %1 to i32
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.e)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = select i1 %1, ptr @.str.17, ptr @.str.18 ; 6 uses
  %i.h = select i1 %1, i64 4, i64 5               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !150  ; 3 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64                ; 5 uses
  %i.m = icmp samesign ugt i64 %i.h, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.n = load i8, ptr %i.g, align 1, !tbaa !64
  %.not14.i.i.i = icmp slt i8 %i.n, -64
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq i32 %i.j, 0
  br i1 %i.o, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i, %bb.f
  %.1.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !64
  %.not14.i.i.i.1 = icmp slt i8 %4, -64
  br i1 %.not14.i.i.i.1, label %.lr.ph.i.i.i.2, label %.lr.ph.i.i.i.2.a

.lr.ph.i.i.i.2.a:                                 ; preds = %.lr.ph.i.i.i.1
  %i.p = add nuw nsw i64 %.1.i.i.i, 1
  %.not11 = icmp samesign ult i64 %.1.i.i.i, %i.l
  br i1 %.not11, label %.lr.ph.i.i.i.2, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2.a
  %.1.i.i.i.1 = phi i64 [ %i.p, %.lr.ph.i.i.i.2.a ], [ %.1.i.i.i, %.lr.ph.i.i.i.1 ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !64
  %.not14.i.i.i.2 = icmp slt i8 %6, -64
  br i1 %.not14.i.i.i.2, label %.lr.ph.i.i.i.3, label %7

7:                                                ; preds = %.lr.ph.i.i.i.2
  %8 = add nsw i64 %.1.i.i.i.1, 1                 ; 2 uses
  %9 = icmp ugt i64 %8, %i.l
  br i1 %9, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2, %7
  %.1.i.i.i.2 = phi i64 [ %8, %7 ], [ %.1.i.i.i.1, %.lr.ph.i.i.i.2 ] ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !64
  %.not14.i.i.i.3 = icmp slt i8 %11, -64
  br i1 %.not14.i.i.i.3, label %15, label %12

12:                                               ; preds = %.lr.ph.i.i.i.3
  %13 = add nsw i64 %.1.i.i.i.2, 1                ; 2 uses
  %14 = icmp ugt i64 %13, %i.l
  br i1 %14, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %15

15:                                               ; preds = %12, %.lr.ph.i.i.i.3
  %.1.i.i.i.3 = phi i64 [ %13, %12 ], [ %.1.i.i.i.2, %.lr.ph.i.i.i.3 ]
  br i1 %1, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %15
  %16 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %17 = load i8, ptr %16, align 1, !tbaa !64
  %.not14.i.i.i.4 = icmp sge i8 %17, -64
  %i.q = add i64 %.1.i.i.i.3, 1
  %i.r = icmp ugt i64 %i.q, %i.l
  %or.cond = select i1 %.not14.i.i.i.4, i1 %i.r, i1 false
  %spec.select = select i1 %or.cond, i64 4, i64 %i.h
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i: ; preds = %.lr.ph.i.i.i.4, %bb.f, %.lr.ph.i.i.i.2.a, %7, %12, %15, %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ 3, %12 ], [ 0, %bb.f ], [ 1, %.lr.ph.i.i.i.2.a ], [ %spec.select, %.lr.ph.i.i.i.4 ], [ 2, %7 ], [ %i.h, %15 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.g, ptr %2, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i, ptr %i.s, align 8, !tbaa !185
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

bb.g:                                             ; preds = %bb.a
  %i.t = select i1 %1, ptr @.str.17, ptr @.str.18 ; 5 uses
  %i.u = select i1 %1, i64 4, i64 5
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !59   ; 2 uses
  %i.x = add i64 %i.w, %i.u                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !60
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !62
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.x), !inline_history !773
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i: ; preds = %bb.h, %bb.g
  store i64 %i.x, ptr %i.v, align 8, !tbaa !59
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %i.w ; 5 uses
  %21 = load i8, ptr %i.t, align 1, !tbaa !64
  store i8 %21, ptr %20, align 1, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 1
  %22 = load i8, ptr %i.ad, align 1, !tbaa !64
  store i8 %22, ptr %i.ae, align 1, !tbaa !64
  %23 = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 2
  %i.ag = load i8, ptr %23, align 1, !tbaa !64
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !64
  %24 = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %25 = getelementptr inbounds nuw i8, ptr %20, i64 3
  %26 = load i8, ptr %24, align 1, !tbaa !64
  store i8 %26, ptr %25, align 1, !tbaa !64
  br i1 %1, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i
  %27 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.ai = load i8, ptr %27, align 1, !tbaa !64
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !64
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit: ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i, %.lr.ph.i.i.i.i.4, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, %bb.c
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %.sroa.0.0.copyload.i.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN10duckdb_fmt2v68internal22check_string_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %i.e, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !136  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.0918.i.i = phi i64 [ %i.p, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.01017.i.i = phi i64 [ %.1.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !64
  %.not14.i.i = icmp slt i8 %i.m, -64
  br i1 %.not14.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = add i64 %.01017.i.i, 1                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.j
  br i1 %i.o, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.n, %bb.d ], [ %.01017.i.i, %.lr.ph.i.i ]
  %i.p = add nuw i64 %.0918.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, %2
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0.i = phi i64 [ %2, %bb.b ], [ %2, %bb.c ], [ %.0918.i.i, %bb.d ], [ %2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %1, ptr %3, align 8, !tbaa !184
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i, ptr %i.q, align 8, !tbaa !185
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59   ; 3 uses
  %i.t = add i64 %i.s, %2                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !62
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i, i64 noundef %i.t), !inline_history !10
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i: ; preds = %bb.g, %bb.f
  store i64 %i.t, ptr %i.r, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not9.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not9.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s ; 6 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %i.ae = add i64 %i.s, %i.ad
  %i.af = sub i64 %i.a, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %2, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.ah = getelementptr i8, ptr %1, i64 %n.vec
  %i.ai = getelementptr i8, ptr %i.ac, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.ac, i64 %index ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !64
  %wide.load14 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !64
  %i.ak = getelementptr i8, ptr %next.gep13, i64 16
  store <16 x i8> %wide.load, ptr %next.gep13, align 1, !tbaa !64
  store <16 x i8> %wide.load14, ptr %i.ak, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !774

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %2, -8                       ; 4 uses
  %i.am = getelementptr i8, ptr %1, i64 %n.vec16
  %i.an = getelementptr i8, ptr %i.ac, i64 %n.vec16
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %next.gep18 = getelementptr i8, ptr %1, i64 %index17
  %next.gep19 = getelementptr i8, ptr %i.ac, i64 %index17
  %wide.load20 = load <8 x i8>, ptr %next.gep18, align 1, !tbaa !64
  store <8 x i8> %wide.load20, ptr %next.gep19, align 1, !tbaa !64
  %index.next21 = add nuw i64 %index17, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !775

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %2, %n.vec16
  br i1 %cmp.n22, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ] ; 2 uses
  %i.ap = add i64 %2, %i.a                        ; 2 uses
  %.011.i.i.i.ph25 = ptrtoaddr ptr %.011.i.i.i.ph to i64 ; 2 uses
  %i.aq = sub i64 %i.ap, %.011.i.i.i.ph25
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.prol ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ar = load i8, ptr %.011.i.i.i.prol, align 1, !tbaa !64
  store i8 %i.ar, ptr %.0810.i.i.i.prol, align 1, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !776

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.prol ]
  %.0810.i.i.i.unr = phi ptr [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.at, %.lr.ph.i.i.i.prol ]
  %i.au = sub i64 %.011.i.i.i.ph25, %i.ap
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %.0810.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.aw = load i8, ptr %.011.i.i.i, align 1, !tbaa !64
  store i8 %i.aw, ptr %.0810.i.i.i, align 1, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 1
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !64
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 2
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !64
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 3
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 3
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !64
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIwEEES9_:bb.a
  %i.at = sext <2 x i8> %i.as to <2 x i32>
  store <2 x i32> %i.at, ptr %i.ar, align 4, !tbaa !112
  %i.au = icmp ugt i64 %.02425.i.i.i.i.i, 9999
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !35

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.024.lcssa.i.i.i.i.i = phi i64 [ %1, %bb.f ], [ %i.ap, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.023.lcssa.i.i.i.i.i = phi ptr [ %i.al, %bb.f ], [ %i.ar, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.av = icmp samesign ult i64 %.024.lcssa.i.i.i.i.i, 10
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aw = trunc nuw nsw i64 %.024.lcssa.i.i.i.i.i to i32
  %i.ax = or disjoint i32 %i.aw, 48
  br label %_ZN10duckdb_fmt2v68internal14format_decimalImwZNS1_14format_decimalIwPwmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ay = shl nuw nsw i64 %.024.lcssa.i.i.i.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.bc = sext i8 %i.bb to i32
  %i.bd = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 -4
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !112
  %i.be = load i8, ptr %i.az, align 2, !tbaa !64
  %i.bf = sext i8 %i.be to i32
  br label %_ZN10duckdb_fmt2v68internal14format_decimalImwZNS1_14format_decimalIwPwmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i

_ZN10duckdb_fmt2v68internal14format_decimalImwZNS1_14format_decimalIwPwmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sink31.i.i.i.i.i = phi i64 [ -8, %bb.h ], [ -4, %bb.g ]
  %.sink.i.i.i.i.i = phi i32 [ %i.bf, %bb.h ], [ %i.ax, %bb.g ]
  %i.bg = getelementptr inbounds i8, ptr %.023.lcssa.i.i.i.i.i, i64 %.sink31.i.i.i.i.i
  store i32 %.sink.i.i.i.i.i, ptr %i.bg, align 4, !tbaa !112
  %i.bh = icmp samesign ugt i32 %i.y, 1
  br i1 %i.bh, label %bb.i, label %bb.j, !prof !78

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImwZNS1_14format_decimalIwPwmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i
  %.idx.i.i.i.i = shl nuw nsw i64 %i.z, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ak, ptr nonnull align 16 %i.a, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEy.exit

bb.j:                                             ; preds = %_ZN10duckdb_fmt2v68internal14format_decimalImwZNS1_14format_decimalIwPwmEET0_S5_T1_iEUlS4_E_EEPS5_S8_T_iS6_.exit.i.i.i.i
  %i.bi = icmp eq i32 %i.y, 1
  br i1 %i.bi, label %bb.k, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEy.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = load i32, ptr %i.a, align 16, !tbaa !112
  store i32 %i.bj, ptr %i.ak, align 4, !tbaa !112
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEy.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEy.exit: ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.l

bb.l:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEy.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE9write_intIyNS0_18basic_format_specsIwEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIwEEESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, i64 %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca [78 x i32], align 16              ; 6 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<wchar_t>>::int_writer.163", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !414  ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !433
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !426
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %i.e, align 8, !tbaa !71
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !456
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.h = load i8, ptr %i.g, align 1
  %i.i = lshr i8 %i.h, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.j, 2
  br i1 %switch.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEEEvT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.j, 2
  %i.l = select i1 %i.k, i8 43, i8 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %i.l, ptr %i.m, align 8, !tbaa !64
  store i32 1, ptr %i.f, align 4, !tbaa !456
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEEEvT_RKT0_.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEEEvT_RKT0_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIwEENS1_12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(37) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN10duckdb_fmt2v68internal12count_digitsEN6duckdb10uhugeint_tE(i64 %1, i64 %2) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %i.r = add i64 %i.q, %i.o                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !62
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.r), !inline_history !1659
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.r, ptr %i.p, align 8, !tbaa !108
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !110
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.q ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.aa = call noundef ptr @_ZN10duckdb_fmt2v68internal14format_decimalIN6duckdb10uhugeint_tEwZNS1_14format_decimalIwPwS4_EET0_S7_T1_iEUlS6_E_EEPS7_SA_T_iS8_(ptr noundef nonnull %i.a, i64 %1, i64 %2, i32 noundef %i.n)
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.a to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 4
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !78

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 16 %i.a, i64 %i.ad, i1 false)
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEN6duckdb10uhugeint_tE.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i64 %i.ad, 4
  br i1 %i.af, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEN6duckdb10uhugeint_tE.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.a, align 16, !tbaa !112
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !112
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEN6duckdb10uhugeint_tE.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEN6duckdb10uhugeint_tE.exit: ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeEN6duckdb10uhugeint_tE.exit, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE9write_intIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEEEvT_RKT0_.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<wchar_t>>::str_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<wchar_t>>::int_writer", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !414  ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !424
  %.not2 = icmp eq i8 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i1 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !433
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.f, align 8, !tbaa !426
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.e, ptr %i.g, align 8, !tbaa !435
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !436
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.j = load i8, ptr %i.i, align 1
  %i.k = lshr i8 %i.j, 4
  %i.l = and i8 %i.k, 7                           ; 2 uses
  %switch.i.i.i = icmp samesign ult i8 %i.l, 2
  br i1 %switch.i.i.i, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIwEEES9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i8 %i.l, 2
  %i.n = select i1 %i.m, i8 43, i8 32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 %i.n, ptr %i.o, align 4, !tbaa !64
  store i32 1, ptr %i.h, align 8, !tbaa !436
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIwEEES9_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIwEEES9_.exit: ; preds = %bb.c, %bb.d
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIwEENS1_12basic_writerINS0_12buffer_rangeIwEEE10int_writerIiS4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(37) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE5writeEb.exit

bb.e:                                             ; preds = %bb.b
  %i.p = select i1 %1, ptr @.str.17, ptr @.str.18 ; 6 uses
  %i.q = select i1 %1, i64 4, i64 5               ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !423  ; 3 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.s to i64                ; 5 uses
  %i.v = icmp samesign ugt i64 %i.q, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.w = load i8, ptr %i.p, align 1, !tbaa !64
  %.not14.i.i.i = icmp slt i8 %i.w, -64
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq i32 %i.s, 0
  br i1 %i.x, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i, %bb.g
  %.1.i.i.i = phi i64 [ 1, %bb.g ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !64
  %.not14.i.i.i.1 = icmp slt i8 %5, -64
  br i1 %.not14.i.i.i.1, label %.lr.ph.i.i.i.2, label %.lr.ph.i.i.i.2.a

.lr.ph.i.i.i.2.a:                                 ; preds = %.lr.ph.i.i.i.1
  %i.y = add nuw nsw i64 %.1.i.i.i, 1
  %.not13 = icmp samesign ult i64 %.1.i.i.i, %i.u
  br i1 %.not13, label %.lr.ph.i.i.i.2, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2.a
  %.1.i.i.i.1 = phi i64 [ %i.y, %.lr.ph.i.i.i.2.a ], [ %.1.i.i.i, %.lr.ph.i.i.i.1 ] ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %7 = load i8, ptr %6, align 1, !tbaa !64
  %.not14.i.i.i.2 = icmp slt i8 %7, -64
  br i1 %.not14.i.i.i.2, label %.lr.ph.i.i.i.3, label %8

8:                                                ; preds = %.lr.ph.i.i.i.2
  %9 = add nsw i64 %.1.i.i.i.1, 1                 ; 2 uses
  %10 = icmp ugt i64 %9, %i.u
  br i1 %10, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2, %8
  %.1.i.i.i.2 = phi i64 [ %9, %8 ], [ %.1.i.i.i.1, %.lr.ph.i.i.i.2 ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %12 = load i8, ptr %11, align 1, !tbaa !64
  %.not14.i.i.i.3 = icmp slt i8 %12, -64
  br i1 %.not14.i.i.i.3, label %16, label %13

13:                                               ; preds = %.lr.ph.i.i.i.3
  %14 = add nsw i64 %.1.i.i.i.2, 1                ; 2 uses
  %15 = icmp ugt i64 %14, %i.u
  br i1 %15, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i, label %16

16:                                               ; preds = %13, %.lr.ph.i.i.i.3
  %.1.i.i.i.3 = phi i64 [ %14, %13 ], [ %.1.i.i.i.2, %.lr.ph.i.i.i.3 ]
  br i1 %1, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %16
  %17 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %18 = load i8, ptr %17, align 1, !tbaa !64
  %.not14.i.i.i.4 = icmp sge i8 %18, -64
  %i.z = add i64 %.1.i.i.i.3, 1
  %i.aa = icmp ugt i64 %i.z, %i.u
  %or.cond = select i1 %.not14.i.i.i.4, i1 %i.aa, i1 false
  %spec.select = select i1 %or.cond, i64 4, i64 %i.q
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i: ; preds = %.lr.ph.i.i.i.4, %bb.g, %.lr.ph.i.i.i.2.a, %8, %13, %16, %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ 3, %13 ], [ 0, %bb.g ], [ 1, %.lr.ph.i.i.i.2.a ], [ %spec.select, %.lr.ph.i.i.i.4 ], [ 2, %8 ], [ %i.q, %16 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.p, ptr %2, align 8, !tbaa !458
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i, ptr %i.ab, align 8, !tbaa !459
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIwEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(37) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE5writeEb.exit

bb.h:                                             ; preds = %bb.a
  %19 = select i1 %1, ptr @.str.17, ptr @.str.18  ; 5 uses
  %i.ac = select i1 %1, i64 4, i64 5
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !108 ; 2 uses
  %i.af = add i64 %i.ae, %i.ac                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !109
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !62
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.af), !inline_history !1660
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i: ; preds = %bb.i, %bb.h
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae ; 5 uses
  %20 = load i8, ptr %19, align 1, !tbaa !64
  %21 = sext i8 %20 to i32
  store i32 %21, ptr %i.an, align 4, !tbaa !112
  %22 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 1
  %23 = load i8, ptr %i.ao, align 1, !tbaa !64
  %24 = sext i8 %23 to i32
  store i32 %24, ptr %22, align 4, !tbaa !112
  %25 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 2
  %26 = load i8, ptr %i.ap, align 1, !tbaa !64
  %27 = sext i8 %26 to i32
  store i32 %27, ptr %25, align 4, !tbaa !112
  %28 = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %19, i64 3
  %29 = load i8, ptr %i.aq, align 1, !tbaa !64
  %30 = sext i8 %29 to i32
  store i32 %30, ptr %28, align 4, !tbaa !112
  br i1 %1, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.i.4:                         ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %32 = load i8, ptr %31, align 1, !tbaa !64
  %33 = sext i8 %32 to i32
  store i32 %33, ptr %i.ar, align 4, !tbaa !112
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE5writeEb.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE5writeEb.exit: ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i.4, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIwEE.exit.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIwEEES9_.exit
  %.sroa.0.0 = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<wchar_t>>::pointer_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs.113", align 4 ; 5 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !414  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN10duckdb_fmt2v68internal23check_pointer_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %i.d, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !414
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pr, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.03.i.i.i = phi i64 [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  %.0.i.i.i = phi i32 [ 0, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.g = add nuw nsw i32 %.0.i.i.i, 1             ; 3 uses
  %i.h = lshr i64 %.03.i.i.i, 4                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i, label %bb.d, !llvm.loop !11

_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 %i.f, ptr %2, align 8, !tbaa !461
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !462
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i
  %i.j = add nuw i32 %.0.i.i.i, 3
  %i.k = zext i32 %i.j to i64
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !108  ; 2 uses
  %i.n = add i64 %i.m, %i.k                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !109
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !62
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.n), !inline_history !1661
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  store i64 %i.n, ptr %i.l, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.m ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 48, ptr %i.v, align 4, !tbaa !112
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 120, ptr %i.w, align 4, !tbaa !112
  %i.y = zext nneg i32 %i.g to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i
  %.09.i.i.i.i = phi i64 [ %i.f, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.z, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE7reserveEm.exit.i.i ], [ %i.ae, %bb.g ]
  %i.aa = and i64 %.09.i.i.i.i, 15
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE10hex_digitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !64
  %i.ad = sext i8 %i.ac to i32
  %i.ae = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -4 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !112
  %i.af = lshr i64 %.09.i.i.i.i, 4                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE13write_pointerEPKv.exit, label %bb.g, !llvm.loop !36

bb.h:                                             ; preds = %_ZN10duckdb_fmt2v68internal12count_digitsILj4EmEEiT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !443
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = and i8 %i.ah, 15
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = or disjoint i8 %i.ah, 2
  store i8 %i.ak, ptr %i.ag, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedIRNS5_14pointer_writerImEEEEvRKNS0_18basic_format_specsIwEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE13write_pointerEPKv.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIwEENS1_13error_handlerEE13write_pointerEPKv.exit: ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIwEENS1_12basic_writerINS0_12buffer_rangeIwEEE10int_writerIiS4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(37) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<wchar_t>>::padded_int_writer.118", align 8 ; 9 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs.113", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !425
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIiNS0_18basic_format_specsIwEEE6on_numEv(ptr noundef nonnull align 8 dereferenceable(28) %1)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !424   ; 2 uses
  switch i8 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 0, label %bb.d
    i8 100, label %bb.d
    i8 120, label %bb.g
    i8 88, label %bb.g
    i8 98, label %bb.h
    i8 66, label %bb.h
    i8 111, label %bb.i
    i8 110, label %bb.j
    i8 108, label %bb.j
    i8 76, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !435  ; 3 uses
  %i.g = or i32 %i.f, 1
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.i = sub nuw nsw i32 32, %i.h
  %i.j = mul nuw nsw i32 %i.i, 1233
  %i.k = lshr i32 %i.j, 12                        ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE23zero_or_powers_of_10_32E, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !53
  %i.o = icmp uge i32 %i.f, %i.n
  %i.p = zext i1 %i.o to i32
  %i.q = add nuw nsw i32 %i.k, %i.p               ; 3 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !463, !nonnull !142, !align !165
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !436
  %i.u = zext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !464, !nonnull !142, !align !191
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %i.w, i64 40, i1 false)
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.q to i64 ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.2.0.insert.ext.i, %i.u ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !112  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = and i8 %i.ab, 15                        ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 4
  br i1 %i.ad, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %bb.d
  %i.ae = load i32, ptr %3, align 8, !tbaa !422
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.af)
  %spec.select18.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 %i.x)
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIiNS0_18basic_format_specsIwEEE6on_decEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !423 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, %i.q                ; 3 uses
  %i.aj = zext i32 %i.ah to i64
  %i.ak = add nuw nsw i64 %i.aj, %i.u
  %i.al = sub nsw i32 %i.ah, %i.q
  %.113.i.i = select i1 %i.ai, i64 %i.ak, i64 %i.x ; 2 uses
  %.011.i.i = select i1 %i.ai, i32 48, i32 %i.z   ; 2 uses
  %narrow.i.i = select i1 %i.ai, i32 %i.al, i32 0
  %.1.i.i = zext i32 %narrow.i.i to i64           ; 2 uses
end_hunk_1
