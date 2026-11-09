Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/printf-test?download=true
inline.NumInlined: 26200
inline.NumDeleted: 1767
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE:bb.a
  %.032 = select i1 %i.av, i32 6, i32 %i.ar       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.ay, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ax, align 8, !tbaa !117
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  store ptr %i.az, ptr %10, align 8, !tbaa !118
  store i64 500, ptr %i.aw, align 8, !tbaa !119
  %i.ba = trunc i32 %i.at to i8
  %i.bb = and i8 %i.ba, 7
  switch i8 %i.bb, label %bb.v [
    i8 4, label %bb.k
    i8 1, label %bb.o
    i8 2, label %bb.t
  ]

bb.k:                                             ; preds = %bb.j
  %.not45 = icmp eq i32 %.0, 0
  br i1 %.not45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = shl nuw nsw i32 %.0, 3
  %i.bd = lshr i32 539700480, %i.bc
  %i.be = trunc i32 %i.bd to i8
  store i64 1, ptr %i.ay, align 8, !tbaa !120
  store i8 %i.be, ptr %i.az, align 8, !tbaa !90
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.04.0.copyload = load i64, ptr %8, align 16
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8
  invoke void @_ZN3fmt3v126detail15format_hexfloatIeTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(x86_fp80 noundef %1, i64 %.sroa.04.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %10, align 8, !tbaa !118
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.bf, ptr %5, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bg, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !107
  %i.bh = invoke ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEERZNS1_11write_bytesIwLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %i.bg, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN3fmt3v126detail11write_bytesIwLNS0_5alignE2ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.y

_ZN3fmt3v126detail11write_bytesIwLNS0_5alignE2ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aa

bb.o:                                             ; preds = %bb.j
  %i.bi = icmp eq i32 %.032, 2147483647
  br i1 %i.bi, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.97) #31
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %.032, 1                    ; 2 uses
  %.not43 = icmp eq i32 %i.ar, 0
  br i1 %.not43, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = or i32 %i.at, 8192
  store i32 %i.bk, ptr %8, align 16, !tbaa !155
  br label %bb.w

bb.t:                                             ; preds = %bb.j
  %.not42 = icmp eq i32 %i.ar, 0
  br i1 %.not42, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = or i32 %i.at, 8192
  store i32 %i.bl, ptr %8, align 16, !tbaa !155
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.032, i32 1)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.s
  %.1 = phi i32 [ %i.bj, %bb.s ], [ %i.bj, %bb.r ], [ %.032, %bb.u ], [ %.032, %bb.t ], [ %spec.store.select, %bb.v ] ; 2 uses
  %i.bm = invoke noundef i32 @_ZN3fmt3v126detail12format_floatIeEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(x86_fp80 noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %8, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %.1, ptr %i.aq, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bn = load ptr, ptr %10, align 8, !tbaa !118
  store ptr %i.bn, ptr %11, align 8, !tbaa !198
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bp = load i64, ptr %i.ay, align 8, !tbaa !120
  %i.bq = trunc i64 %i.bp to i32
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !199
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %i.bm, ptr %i.br, align 4, !tbaa !200
  %i.bs = invoke ptr @_ZN3fmt3v126detail14do_write_floatIwNS1_14digit_groupingIwEENS0_14basic_appenderIwEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0, i32 noundef 16, ptr %4)
          to label %_ZN3fmt3v126detail11write_floatIwNS0_14basic_appenderIwEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit unwind label %bb.z

_ZN3fmt3v126detail11write_floatIwNS0_14basic_appenderIwEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.aa

bb.y:                                             ; preds = %bb.m, %bb.p, %bb.n, %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN3fmt3v126detail11write_bytesIwLNS0_5alignE2ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v126detail11write_floatIwNS0_14basic_appenderIwEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit
  %.sroa.031.0 = phi ptr [ %i.bs, %_ZN3fmt3v126detail11write_floatIwNS0_14basic_appenderIwEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit ], [ %i.bh, %_ZN3fmt3v126detail11write_bytesIwLNS0_5alignE2ENS0_14basic_appenderIwEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bv = load ptr, ptr %10, align 8, !tbaa !118  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.az
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.bv) #28
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ae

bb.ac:                                            ; preds = %bb.y, %bb.z
  %.pn46 = phi { ptr, i32 } [ %i.bu, %bb.z ], [ %i.bt, %bb.y ]
  %i.bw = load ptr, ptr %10, align 8, !tbaa !118  ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.bw, %i.az
  br i1 %.not.i.i50, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit51, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef %i.bw) #28
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit51

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit51: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  resume { ptr, i32 } %.pn46

bb.ae:                                            ; preds = %bb.b, %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
  %.sroa.031.2 = phi ptr [ %i.w, %_ZN3fmt3v126detail15write_nonfiniteIwNS0_14basic_appenderIwEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.031.0, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %0, %bb.b ]
  ret ptr %.sroa.031.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_PKT_RKNS0_12format_specsENS0_10locale_refE(ptr %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::counting_buffer.264", align 8 ; 9 uses
  %5 = alloca %class.anon.265, align 8            ; 8 uses
  %6 = alloca %class.anon.262, align 8            ; 5 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !155
  %i.b = and i32 %i.a, 7                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.03.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %.0.i.i.i = phi i32 [ 0, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.e = add nuw nsw i32 %.0.i.i.i, 1             ; 2 uses
  %i.f = lshr i64 %.03.i.i.i, 4                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit, label %bb.c, !llvm.loop !13

_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit: ; preds = %bb.c
  %narrow.i = add nuw i32 %.0.i.i.i, 3
  %i.g = zext i32 %narrow.i to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 %i.d, ptr %6, align 8, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.e, ptr %i.h, align 8, !tbaa !280
  %i.i = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEERZNS1_9write_ptrIwS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.g, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.842) #31
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %1, align 4, !tbaa !134
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %scevgep.i = getelementptr i8, ptr %1, i64 4
  %wcslen.i = tail call i64 @wcslen(ptr %scevgep.i)
  %i.k = add i64 %wcslen.i, 1
  br label %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit

_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit:     ; preds = %bb.f, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.k, %.lr.ph.preheader.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !154  ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.0.lcssa.i, i64 %i.n)
  %i.o = icmp slt i32 %i.m, 0
  %.0.i.i = select i1 %i.o, i64 %.0.lcssa.i, i64 %spec.select.i.i
  %i.p = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.p, label %bb.g, label %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit

bb.g:                                             ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.q, ptr %4, align 8, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 256, ptr %i.s, align 8, !tbaa !130
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN3fmt3v126detail15counting_bufferIwE4growERNS1_6bufferIwEEm, ptr %i.t, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 1056 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !273
  %i.v = call ptr @_ZN3fmt3v126detail20write_escaped_stringIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr nonnull %4, ptr nonnull %1, i64 %.0.lcssa.i) ; 0 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !273
  %i.x = load i64, ptr %i.r, align 8, !tbaa !131
  %i.y = add i64 %i.x, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit

_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit: ; preds = %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit, %bb.g
  %.1.i.i = phi i64 [ %i.y, %bb.g ], [ %.0.i.i, %_ZN3fmt3v1217basic_string_viewIwEC2EPKw.exit ] ; 3 uses
  %i.z = zext i1 %i.p to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i8 %i.z, ptr %5, align 8, !tbaa !275
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.aa, align 8, !tbaa !263
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.ab, align 8, !tbaa !276
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.1.i.i, ptr %i.ac, align 8, !tbaa !277
  %i.ad = call ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE1ENS0_14basic_appenderIwEERZNS1_5writeIwS5_TnNSt9enable_ifIXntsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SG_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %.1.i.i, i64 noundef %.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit, %_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit
  %.sroa.06.0 = phi ptr [ %i.i, %_ZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsE.exit ], [ %i.ad, %_ZN3fmt3v126detail5writeIwNS0_14basic_appenderIwEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsENS0_10locale_refE.exit ]
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIwLNS0_5alignE2ENS0_14basic_appenderIwEERZNS1_9write_ptrIwS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(12) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !173
  %i.d = zext i32 %i.c to i64
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %3) ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !155    ; 2 uses
  %i.g = lshr i32 %i.f, 3
  %i.h = and i32 %i.g, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.830, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !90
  %i.l = sext i8 %i.k to i64
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.e, %i.m                      ; 4 uses
  %i.o = sub nsw i64 %i.e, %i.n
  %i.p = lshr i32 %i.f, 15
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nuw nsw i64 %i.e, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131
  %i.v = add i64 %i.u, %2
  %i.w = add i64 %i.v, %i.s                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !130
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.b, label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w), !inline_history !46
  br label %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %i.ac = tail call ptr @_ZN3fmt3v126detail4fillIwNS0_14basic_appenderIwEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ac, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIwEENS0_14basic_appenderIT_EES5_m.exit ] ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 8 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !131 ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !130 ; 2 uses
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.af), !inline_history !18570
  %.pre.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !131 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load i64, ptr %i.ag, align 8, !tbaa !130
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i:        ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %i.af, %bb.d ], [ %.pre2.i.i.i, %bb.e ] ; 3 uses
  %i.am = phi i64 [ %i.ae, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.an = load ptr, ptr %.sroa.09.0, align 8, !tbaa !129 ; 2 uses
  store i64 %.pre-phi.i.i.i, ptr %i.ad, align 8, !tbaa !131
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  store i32 48, ptr %i.ao, align 4, !tbaa !134
  %i.ap = add i64 %.pre-phi.i.i.i, 1              ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, %i.al
  br i1 %i.aq, label %bb.f, label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit6.i

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !128
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ap), !inline_history !18570
  %.pre.i.i4.i = load i64, ptr %i.ad, align 8, !tbaa !131 ; 2 uses
  %.pre2.i.i5.i = add i64 %.pre.i.i4.i, 1
  %.pre10.i = load ptr, ptr %.sroa.09.0, align 8, !tbaa !129
  %.pre11.i = load i64, ptr %i.ag, align 8, !tbaa !130
  br label %_ZN3fmt3v1214basic_appenderIwEaSEw.exit6.i

_ZN3fmt3v1214basic_appenderIwEaSEw.exit6.i:       ; preds = %bb.f, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i
  %i.at = phi i64 [ %i.al, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ], [ %.pre11.i, %bb.f ]
  %i.au = phi ptr [ %i.an, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ], [ %.pre10.i, %bb.f ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ %i.ap, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ], [ %.pre2.i.i5.i, %bb.f ] ; 3 uses
  %i.av = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v1214basic_appenderIwEaSEw.exit.i ], [ %.pre.i.i4.i, %bb.f ]
  store i64 %.pre-phi.i.i3.i, ptr %i.ad, align 8, !tbaa !131
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  store i32 120, ptr %i.aw, align 4, !tbaa !134
  %i.ax = load i64, ptr %4, align 8, !tbaa !279   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !280 ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = add i64 %.pre-phi.i.i3.i, %i.ba         ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.at
  br i1 %i.bc, label %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread.i

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread.i: ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit6.i
  store i64 %i.bb, ptr %i.ad, align 8, !tbaa !131
  br label %bb.g

_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i.i.i: ; preds = %_ZN3fmt3v1214basic_appenderIwEaSEw.exit6.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !128
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bb), !inline_history !18571
  %.pre.i.i7.i = load i64, ptr %i.ad, align 8, !tbaa !131 ; 2 uses
  %.pre14.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !130
  %.pre15.i.i.i = add i64 %.pre.i.i7.i, %i.ba     ; 2 uses
  %i.bf = icmp ult i64 %.pre14.i.i.i, %.pre15.i.i.i
  br i1 %i.bf, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i.i.i
  %.pre12.i = load ptr, ptr %.sroa.09.0, align 8, !tbaa !129 ; 2 uses
  store i64 %.pre15.i.i.i, ptr %i.ad, align 8, !tbaa !131
  %.not.not.i.i = icmp eq ptr %.pre12.i, null
  br i1 %.not.not.i.i, label %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread.i
  %i.bg = phi i64 [ %.pre-phi.i.i3.i, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread.i ], [ %.pre.i.i7.i, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ]
  %i.bh = phi ptr [ %i.au, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread.i ], [ %.pre12.i, %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = sext i32 %i.az to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i, %bb.g
  %.012.i.i.i.i = phi i64 [ %i.bq, %.split.i.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.bp, %.split.i.i.i.i ], [ %i.bk, %bb.g ]
  %i.bl = and i64 %.012.i.i.i.i, 15
  %i.bm = getelementptr inbounds nuw i8, ptr @.str.828, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !90
  %i.bo = sext i8 %i.bn to i32
  %i.bp = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -4 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !134
  %i.bq = lshr i64 %.012.i.i.i.i, 4               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i, label %_ZZN3fmt3v126detail9write_ptrIwNS0_14basic_appenderIwEEmEET0_S5_T1_PKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.split.i.i.i.i, !llvm.loop !18572

_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i: ; preds = %_ZN3fmt3v126detail10to_pointerIwEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i, %_ZN3fmt3v126detail6bufferIwE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
end_hunk_0
begin_hunk_1_@_ZN7testing8internal18CmpHelperEQFailureIA24_wNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a
bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !90
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.g = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !90
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEA24_wEENS3_IcS4_IcESaIcEEERKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !90
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.s = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !90
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringIPKwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !263
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %i.a, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18597)
  call void @llvm.experimental.noalias.scope.decl(metadata !18598)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !106, !alias.scope !18599
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !88, !alias.scope !18599
  store i8 0, ptr %i.c, align 8, !tbaa !90, !alias.scope !18599
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136, !noalias !18599 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !18599 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137, !noalias !18599 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !89, !alias.scope !18599 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !90, !alias.scope !18599
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !73
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !73
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !73
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !90
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #28
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !73
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !139
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal21UniversalTersePrinterIPKwE5PrintES3_PSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string.65", align 8 ; 12 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.799, i64 noundef 4) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !132
  %i.e = call noundef i64 @wcslen(ptr noundef nonnull %0) #32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.e, ptr %i.a, align 8, !tbaa !107
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !126
  %i.h = load i64, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  store i64 %i.h, ptr %i.d, align 8, !tbaa !90
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.i = phi i64 [ %i.h, %.noexc.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.g, %.noexc.i ], [ %i.d, %bb.c ] ; 4 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i32, ptr %0, align 4, !tbaa !134
  store i32 %i.k, ptr %i.j, align 4, !tbaa !134
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = call ptr @wmemcpy(ptr noundef %i.j, ptr noundef nonnull %0, i64 noundef %i.e) #28 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.a, align 8, !tbaa !107
  %.pre7.i.i = load ptr, ptr %2, align 8, !tbaa !126
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = phi ptr [ %i.j, %._crit_edge.i.i ], [ %i.j, %bb.d ], [ %.pre7.i.i, %bb.e ]
  %i.n = phi i64 [ %i.i, %._crit_edge.i.i ], [ %i.i, %bb.d ], [ %.pre6.i.i, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  store i32 0, ptr %i.p, align 4, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN7testing8internal17PrintWideStringToERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1)
          to label %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit unwind label %bb.g

_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit: ; preds = %bb.f
  %i.q = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit
  %i.s = load i64, ptr %i.d, align 8, !tbaa !90
  %i.t = shl i64 %i.s, 2
  %i.u = add i64 %i.t, 4
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN7testing8internal14UniversalPrintINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEvRKT_PSo.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !126    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.y = load i64, ptr %i.d, align 8, !tbaa !90
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 4
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.b
  ret void
}

declare void @_ZN7testing8internal17PrintWideStringToERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS2_IcS3_IcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal17PrintWideStringToERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEPSo(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE5PrintERKS7_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE5PrintERKS7_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18604)
  call void @llvm.experimental.noalias.scope.decl(metadata !18605)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !106, !alias.scope !18606
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !88, !alias.scope !18606
  store i8 0, ptr %i.b, align 8, !tbaa !90, !alias.scope !18606
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136, !noalias !18606 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !18606 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE5PrintERKS7_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137, !noalias !18606 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !89, !alias.scope !18606 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !90, !alias.scope !18606
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEE5PrintERKS7_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !73
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !73
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !90
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !73
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_printf_test.cc() #25 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
end_hunk_1
