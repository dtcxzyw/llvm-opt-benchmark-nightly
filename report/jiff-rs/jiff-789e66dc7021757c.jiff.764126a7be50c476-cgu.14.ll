Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.14?download=true
inline.NumInlined: 340
inline.NumDeleted: 162
begin_hunk_0_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArceEENCINvNtNtB1p_8adapters3map12map_try_foldBX_B2X_B2n_INtNtB1r_6result6ResultB2n_zENvYB2X_INtNtB1r_7convert4FromBX_E4fromNCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0E0B46_ECsa9sSWSfjDbm_4jiff:bb.a

bb.h:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !57
  unreachable

_RNvXs1a_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_6string6StringE4from.exit.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit unwind label %bb.i, !noalias !55

bb.i:                                             ; preds = %_RNvXs1a_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_6string6StringE4from.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %bb.i, %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.s, %bb.f ], [ %i.n, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropINtNtBI_4sync3ArceEEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #26
          to label %bb.j unwind label %bb.k, !noalias !55

bb.k:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !55
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit: ; preds = %_RNvXs1a_NtCs1xwejQucwHj_5alloc4syncINtB6_3ArceEINtNtCs3oUPovFnLWP_4core7convert4FromNtNtB8_6string6StringE4from.exit.i.i
  %i.x = sub nsw i64 0, %i.r
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  store ptr %i.y, ptr %.sroa.4.015, align 8, !noalias !55
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 8
  store i64 %i.p, ptr %i.z, align 8, !noalias !55
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !55
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.aa, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB13_4sync3ArceEINtNtNtB13_3vec13in_place_drop11InPlaceDropB1B_EINtNtBa_6result6ResultB1V_zENvYB1B_INtNtBa_7convert4FromBZ_E4fromNCINvNtB20_16in_place_collect24write_in_place_with_dropB1B_E0E0Csa9sSWSfjDbm_4jiff.exit ]
  %i.ab = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.ac = insertvalue { ptr, ptr } %i.ab, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameENCINvNtNtB1p_8adapters3map12map_try_foldBX_B2X_B2n_INtNtB1r_6result6ResultB2n_zENCINvMs0_B2Z_NtB2Z_16TimeZoneNameIter9from_iterBX_BI_E0NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0E0B4w_EB33_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.b
  br i1 %.not11, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.012 = phi ptr [ %i.f, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.e, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.012, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.012, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.f, %._crit_edge ], [ %2, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment10for_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = add nsw i8 %1, -3
  %or.cond = icmp ult i8 %i.b, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.010.1.insert.ext = zext nneg i8 %1 to i24
  %.sroa.010.1.insert.shift = shl nuw nsw i24 %.sroa.010.1.insert.ext, 8
  %.sroa.010.1.insert.insert = or disjoint i24 %.sroa.010.1.insert.shift, 10
  %i.c = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.010.1.insert.insert) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %2, -1000000001
  %or.cond18 = icmp ult i64 %i.e, -1000000000
  br i1 %or.cond18, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit, %bb.b
  %.sink = phi i32 [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52) 10) ; 4 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 1)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !67
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.m = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.f, ptr noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.d

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.c
  %.sroa.615.0.extract.trunc = trunc nuw nsw i64 %2 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.615.0.extract.trunc, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.p, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment12for_datetime(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call fastcc void @_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment10for_limits(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i8 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 7)
  %i.b = load i32, ptr %0, align 8, !range !5, !noundef !4
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 0)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !76
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.g

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %bb.b
  %i.l = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.e, ptr noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.d, align 8
  store i32 1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment13for_timestamp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.b = icmp samesign ult i8 %1, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.014.1.insert.ext.i = zext nneg i8 %1 to i24
  %.sroa.014.1.insert.shift.i = shl nuw nsw i24 %.sroa.014.1.insert.ext.i, 8
  %.sroa.014.1.insert.insert.i = or disjoint i24 %.sroa.014.1.insert.shift.i, 8
  %i.c = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.014.1.insert.insert.i) #24, !noalias !87
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @32, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !range !6, !noalias !87, !noundef !4 ; 2 uses
  %i.g = add i64 %2, -1000000001
  %or.cond.i = icmp ult i64 %i.g, -1000000000
  br i1 %or.cond.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %bb.c
  %.sroa.619.0.extract.trunc.i = trunc nuw nsw i64 %2 to i32
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %.thread.i
    i8 1, label %bb.d
    i8 2, label %bb.k
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.h
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 11, label %bb.j
  ]

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %bb.c
  %i.h = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10), !noalias !87
  br label %bb.m

default.unreachable:                              ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  unreachable

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %.thread.i

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.g:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.h:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.i:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.j:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.0.i = phi i64 [ 2, %bb.j ], [ 60, %bb.i ], [ 1000, %bb.h ], [ 86400, %bb.e ], [ 1440, %bb.f ], [ 24, %bb.g ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ] ; 2 uses
  %.not.i = icmp samesign ugt i64 %2, %.sroa.08.0.i
  br i1 %.not.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %.thread.i, %bb.k
  %.sroa.020.1.insert.ext.i = zext nneg i8 %i.f to i24
  %.sroa.020.1.insert.shift.i = shl nuw nsw i24 %.sroa.020.1.insert.ext.i, 8
  %.sroa.020.2.insert.ext.i = zext nneg i8 %1 to i24
  %.sroa.020.2.insert.shift.i = shl nuw nsw i24 %.sroa.020.2.insert.ext.i, 16
  %.sroa.020.1.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.shift.i, %.sroa.020.2.insert.shift.i
  %.sroa.020.2.insert.insert.i = or disjoint i24 %.sroa.020.1.insert.insert.i, 3
  %i.i = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert.i) #24, !noalias !87
  br label %bb.m

.thread.i:                                        ; preds = %bb.k, %bb.d, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %.sroa.08.07.i = phi i64 [ %.sroa.08.0.i, %bb.k ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i ], [ 86400000000, %bb.d ]
  %i.j = urem i64 %.sroa.08.07.i, %2
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit, label %bb.l

_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit: ; preds = %.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.619.0.extract.trunc.i, ptr %i.l, align 4, !alias.scope !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.m, align 8, !alias.scope !87
  br label %bb.r

bb.m:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, %bb.l, %bb.b
  %.sink = phi ptr [ %i.h, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i ], [ %i.i, %bb.l ], [ %i.c, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.n, align 8, !alias.scope !87
  store i32 1, ptr %0, align 8, !alias.scope !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink, ptr %i.a, align 8
  %i.o = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 5)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq ptr %.sink, null
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = atomicrmw add ptr %.sink, i64 -1 release, align 8, !noalias !88
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  resume { ptr, i32 } %i.p

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %.sink, ptr noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.u, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit
  %storemerge = phi i32 [ 0, %_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment12for_maximums.exit ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 9) %2, i64 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i8, ptr %i.b, align 4, !range !7, !noundef !4
  %i.d = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.c) ; 2 uses
  %i.e = extractvalue { i64, i32 } %i.d, 0
  %i.f = extractvalue { i64, i32 } %i.d, 1
  %i.g = sext i32 %i.a to i64                     ; 2 uses
  %i.h = sext i32 %i.f to i64
  %i.i = mul nsw i64 %i.h, %i.g                   ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.e, i64 %i.g) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = sdiv i64 %i.i, 1000000000
  %i.n = srem i64 %i.i, 1000000000
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.q = trunc nsw i64 %i.n to i32
  %i.r = extractvalue { i64, i1 } %i.o, 0
  tail call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %i.r, i32 noundef %i.q)
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment8for_span(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = icmp samesign ult i8 %1, 6
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, -1000000001
  %or.cond = icmp ult i64 %i.d, -1000000000
  br i1 %or.cond, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment10for_limits(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i8 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 6)
  %i.e = load i32, ptr %0, align 8, !range !5, !noundef !4
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.i, label %bb.h

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52) 10) ; 4 uses
  store ptr %i.g, ptr %i.b, align 8
  %i.h = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 3)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !105
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.l, %bb.d, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.i, %bb.f ], [ %i.i, %bb.e ], [ %i.u, %bb.l ], [ %i.u, %bb.k ], [ %i.u, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread
  %i.n = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.g, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  br label %.sink.split

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.b
  %.sroa.69.0.extract.trunc = trunc nuw nsw i64 %2 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.69.0.extract.trunc, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.q, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit
  %.sink = phi i32 [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ], [ 0, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit ], [ 1, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit ]
  store i32 %.sink, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c
  ret void

bb.i:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8
  %i.t = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 3)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !106
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtBa_4util5round9IncrementNtB8_5ErrorEINtB8_12ErrorContextB1b_B1F_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit: ; preds = %bb.i
  %i.z = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.s, ptr noundef %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.z, ptr %i.r, align 8
  br label %.sink.split
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB2_4Time32overflowing_add_duration_general(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 %1, i64 noundef %2, i32 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = shl i64 %1, 24
  %i.c = ashr i64 %i.b, 56
  %i.d = mul nsw i64 %i.c, 3600000000000
  %i.e = shl i64 %1, 16
  %i.f = ashr i64 %i.e, 56
  %i.g = mul nsw i64 %i.f, 60000000000
  %i.h = shl i64 %1, 8
  %i.i = ashr i64 %i.h, 56
  %i.j = mul nsw i64 %i.i, 1000000000
  %i.k = shl i64 %1, 32
  %i.l = ashr exact i64 %i.k, 32
  %i.m = add nsw i64 %i.g, %i.l
  %i.n = add nsw i64 %i.m, %i.d
  %i.o = add nsw i64 %i.n, %i.j
  %i.p = sext i64 %i.o to i128
  %i.q = sext i64 %2 to i128
  %i.r = mul nsw i128 %i.q, 1000000000
  %i.s = sext i32 %3 to i128
  %i.t = add nsw i128 %i.r, %i.s
  %i.u = add nsw i128 %i.t, %i.p
  %.frozen = freeze i128 %i.u                     ; 2 uses
  %i.v = sdiv i128 %.frozen, 86400000000000       ; 2 uses
  %i.w = mul i128 %i.v, 86400000000000
  %.decomposed = sub i128 %.frozen, %i.w          ; 3 uses
  %.lobit.i = ashr i128 %.decomposed, 127
  %.sroa.0.0.i = add nsw i128 %.lobit.i, %i.v
  %i.x = trunc nsw i128 %.sroa.0.0.i to i64       ; 2 uses
  %i.y = add nsw i64 %i.x, -7304485
  %or.cond = icmp ult i64 %i.y, -14608969
  br i1 %or.cond, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.a
  %i.z = icmp slt i128 %.decomposed, 0
  %i.aa = select i1 %i.z, i128 86400000000000, i128 0
  %spec.select.i = add nsw i128 %i.aa, %.decomposed
  %i.ab = trunc nsw i128 %spec.select.i to i64    ; 4 uses
  %or.cond.i = icmp ult i64 %i.ab, 86400000000000
  br i1 %or.cond.i, label %bb.b, label %bb.f, !prof !9

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread: ; preds = %bb.a
  %i.ac = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 27)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  br label %bb.l

bb.b:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = udiv i64 %i.ab, 3600000000000           ; 3 uses
  %i.ag = urem i64 %i.ab, 3600000000000           ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = udiv i64 %i.ag, 60000000000             ; 2 uses
  %i.aj = urem i64 %i.ag, 60000000000             ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = udiv i64 %i.aj, 1000000000
  %i.am = urem i64 %i.aj, 1000000000
  %i.an = shl nuw nsw i64 %i.al, 48
  %i.ao = trunc nuw nsw i64 %i.am to i32
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  %i.ap = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 255) #24, !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  store ptr %i.ap, ptr %i.a, align 8, !noalias !121
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28
          to label %bb.j unwind label %bb.g, !noalias !122

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124), !noalias !122
  %i.ar = load ptr, ptr %i.a, align 8, !alias.scope !125, !noalias !122, !noundef !4 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !126
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire, !noalias !122
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !122
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit: ; preds = %bb.h, %bb.g, %bb.i
  resume { ptr, i32 } %i.aq

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.5.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.an, %bb.e ]
  %.sroa.4.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.ai, %bb.d ], [ %i.ai, %bb.e ]
  %.sroa.3.0.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.c ], [ %i.af, %bb.d ], [ %i.af, %bb.e ]
  %.sroa.0.0.i39 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ao, %bb.e ]
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.i, 40
  %.sroa.4.0.insert.insert.i = or i64 %.sroa.4.0.insert.shift.i, %.sroa.5.0.i
  %.sroa.3.0.insert.ext.i = shl nuw nsw i64 %.sroa.3.0.i, 32
  %.sroa.3.0.insert.shift.i = and i64 %.sroa.3.0.insert.ext.i, 1095216660480
  %i.aw = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %i.ax = lshr exact i64 %i.aw, 32
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = mul nsw i64 %i.x, 86400
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i39, ptr %i.ba, align 8
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ay, ptr %.sroa_idx43, align 4
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.az, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.532.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %storemerge = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit ], [ 1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime24checked_add_span_general(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 9 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.020.0.copyload = load i32, ptr %i.l, align 4
  %.sroa.022.0.copyload = load i64, ptr %1, align 4 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8 ; 2 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4 ; 2 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8 ; 4 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 58
  %.sroa.43.0.copyload = load i16, ptr %.sroa.43.0..sroa_idx, align 2 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..sroa_idx, align 4 ; 2 uses
  %.sroa.53.sroa.16.0.extract.shift582 = lshr i64 %.sroa.33.0.copyload, 32
  %i.m = icmp eq i16 %.sroa.43.0.copyload, 0
  %i.n = icmp eq i32 %.sroa.27.0.copyload, 0
  %or.cond.i.i = select i1 %i.m, i1 %i.n, i1 false
  %i.o = icmp eq i32 %.sroa.30.0.copyload, 0
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.o, i1 false ; 3 uses
  %i.p = and i64 %.sroa.33.0.copyload, 4294967295 ; 3 uses
  %i.q = or i64 %i.p, %.sroa.53.sroa.16.0.extract.shift582
  %i.r = icmp eq i64 %i.q, 0                      ; 2 uses
  %or.cond11.i.i = select i1 %or.cond5.i.i, i1 %i.r, i1 false
  %i.s = icmp eq i64 %.sroa.0.0.copyload, 0       ; 3 uses
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 %i.s, i1 false
  %i.t = icmp eq i64 %.sroa.11.0.copyload, 0      ; 3 uses
  %or.cond16.i.i = select i1 %or.cond13.i.i, i1 %i.t, i1 false
  %i.u = icmp eq i64 %.sroa.15.0.copyload, 0      ; 3 uses
  %or.cond19.i.i = select i1 %or.cond16.i.i, i1 %i.u, i1 false
  %i.v = icmp eq i64 %.sroa.19.0.copyload, 0      ; 3 uses
  %or.cond22.i.i = select i1 %or.cond19.i.i, i1 %i.v, i1 false
  %i.w = and i32 %.sroa.46.0.copyload, 255        ; 2 uses
  %.sroa.24660.60.insert.ext = select i1 %or.cond22.i.i, i32 0, i32 %i.w ; 2 uses
  %i.x = icmp eq i32 %.sroa.24660.60.insert.ext, 254
  br i1 %i.x, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit122, !prof !8

end_hunk_0
begin_hunk_1_@_RNvMsD_NtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB5_9TimeRound5round:bb.a
  br i1 %i.ci, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %bb.af
  fence acquire, !noalias !370
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !370
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit: ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bn, ptr %i.ck, align 4
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.629.0.i, ptr %.sroa_idx25, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.r, %bb.x, %bb.v, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit
  %.sink = phi i32 [ 1, %bb.r ], [ 0, %bb.x ], [ 1, %bb.v ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCsa9sSWSfjDbm_4jiff5civil4time4TimeNtNtBN_5error5ErrorE6unwrapBN_.exit ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB4_9Increment10for_limits(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef range(i64 6, 8) %4) unnamed_addr #1 {
bb.a:
  %i.a = zext nneg i8 %1 to i64                   ; 2 uses
  %i.b = icmp samesign ugt i64 %4, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.014.1.insert.ext = zext nneg i8 %1 to i24
  %.sroa.014.1.insert.shift = shl nuw nsw i24 %.sroa.014.1.insert.ext, 8
  %.sroa.014.1.insert.insert = or disjoint i24 %.sroa.014.1.insert.shift, 8
  %i.c = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.014.1.insert.insert) #24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !range !6, !noundef !4 ; 2 uses
  %i.g = add i64 %2, -1000000001
  %or.cond = icmp ult i64 %i.g, -1000000000
  br i1 %or.cond, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit: ; preds = %bb.c
  %.sroa.619.0.extract.trunc = trunc nuw nsw i64 %2 to i32
  switch i8 %i.f, label %default.unreachable29 [
    i8 0, label %.thread
    i8 1, label %bb.e
    i8 2, label %bb.l
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.i
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 11, label %bb.k
  ]

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread, %bb.n, %bb.m, %bb.b
  %.sink = phi i32 [ 1, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread ], [ 0, %bb.n ], [ 1, %bb.m ], [ 1, %bb.b ]
  store i32 %.sink, ptr %0, align 8
  ret void

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread: ; preds = %bb.c
  %i.h = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 10)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.d

default.unreachable29:                            ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  unreachable

bb.e:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  br label %.thread

bb.f:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  br label %bb.l

bb.g:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  br label %bb.l

bb.h:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  br label %bb.l

bb.i:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  br label %bb.l

bb.j:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  br label %bb.l

bb.k:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit
  br label %bb.l

bb.l:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.08.0 = phi i64 [ 2, %bb.k ], [ 60, %bb.j ], [ 1000, %bb.i ], [ 86400, %bb.f ], [ 1440, %bb.g ], [ 24, %bb.h ], [ 86400000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit ] ; 2 uses
  %i.j = icmp samesign ult i64 %2, %.sroa.08.0
  br i1 %i.j, label %.thread, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.020.1.insert.ext = zext nneg i8 %i.f to i24
  %.sroa.020.1.insert.shift = shl nuw nsw i24 %.sroa.020.1.insert.ext, 8
  %.sroa.020.2.insert.ext = zext nneg i8 %1 to i24
  %.sroa.020.2.insert.shift = shl nuw nsw i24 %.sroa.020.2.insert.ext, 16
  %.sroa.020.1.insert.insert = or disjoint i24 %.sroa.020.1.insert.shift, %.sroa.020.2.insert.shift
  %.sroa.020.2.insert.insert = or disjoint i24 %.sroa.020.1.insert.insert, 3
  %i.k = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.020.2.insert.insert) #24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  br label %bb.d

.thread:                                          ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit, %bb.e, %bb.l
  %.sroa.08.028 = phi i64 [ %.sroa.08.0, %bb.l ], [ 86400000000000, %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit ], [ 86400000000, %bb.e ]
  %i.m = urem i64 %.sroa.08.028, %2
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.n, label %bb.m

bb.n:                                             ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.619.0.extract.trunc, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.p, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsl_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_19SignedDurationRound5round(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !4 ; 4 uses
  %i.e = load i64, ptr %1, align 8, !noundef !4   ; 3 uses
  %i.f = icmp samesign ugt i8 %i.d, 5
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1000000001
  %or.cond.i = icmp ult i64 %i.g, -1000000000
  br i1 %or.cond.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.013.1.insert.ext.i = zext nneg i8 %i.d to i24
  %.sroa.013.1.insert.shift.i = shl nuw nsw i24 %.sroa.013.1.insert.ext.i, 8
  %.sroa.013.1.insert.insert.i = or disjoint i24 %.sroa.013.1.insert.shift.i, 9
  %i.h = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %.sroa.013.1.insert.insert.i) #24, !noalias !396
  br label %bb.h

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  %i.i = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52) 10), !noalias !396 ; 4 uses
  store ptr %i.i, ptr %i.b, align 8, !noalias !396
  %i.j = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef 2)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit.i unwind label %bb.d, !noalias !396

bb.d:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = icmp eq ptr %i.i, null
  br i1 %i.l, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !397
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.g, !noalias !396

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !396
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.n, %bb.o, %bb.d, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.am, %bb.o ], [ %i.am, %bb.n ], [ %i.am, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit.i: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b11Increment32NtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i
  %i.p = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.i, ptr noundef %i.j), !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  br label %bb.h

bb.h:                                             ; preds = %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit.i, %bb.c
  %.sroa.73.0.ph = phi ptr [ %i.p, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_4util22RoundingIncrementErrorE0Ba_.exit.i ], [ %i.h, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.73.0.ph, ptr %i.q, align 8
  br label %.sink.split

bb.i:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.s = load i8, ptr %i.r, align 1, !range !12, !noundef !4
  %i.t = tail call { i64, i32 } @_RNvMsp_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Unit8duration(i8 noundef %i.d), !noalias !398 ; 2 uses
  %i.u = extractvalue { i64, i32 } %i.t, 0
  %i.v = extractvalue { i64, i32 } %i.t, 1
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.e, %i.w                   ; 2 uses
  %i.y = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.u, i64 %i.e) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  %i.ab = sdiv i64 %i.x, 1000000000
  %i.ac = srem i64 %i.x, 1000000000
  %i.ad = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.k, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit, !prof !8

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #27, !noalias !398
  unreachable

_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit: ; preds = %bb.j
  %i.af = trunc nsw i64 %i.ac to i32
  %i.ag = extractvalue { i64, i1 } %i.ad, 0
  tail call void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 9) %i.s, i64 noundef %2, i32 noundef %3, i64 noundef %i.ag, i32 noundef %i.af), !noalias !399
  %i.ah = load i64, ptr %0, align 8, !range !13, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef %i.d)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E12with_contextNtNtB8_15signed_duration5ErrorNCNvMsl_B1d_NtB1d_19SignedDurationRound5round0E0Ba_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.an = icmp eq ptr %i.ak, null
  br i1 %i.an, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !400
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %common.resume

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E12with_contextNtNtB8_15signed_duration5ErrorNCNvMsl_B1d_NtB1d_19SignedDurationRound5round0E0Ba_.exit: ; preds = %bb.l
  %i.ar = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ak, ptr noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ar, ptr %i.aj, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E12with_contextNtNtB8_15signed_duration5ErrorNCNvMsl_B1d_NtB1d_19SignedDurationRound5round0E0Ba_.exit
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMso_NtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB5_14DateArithmetic11checked_add(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i32 noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i8, ptr %i.c, align 4, !range !430, !alias.scope !429, !noundef !4 ; 5 uses
  %i.e = tail call i8 @llvm.smax.i8(i8 %i.d, i8 1)
  switch i8 %i.e, label %default.unreachable [
    i8 1, label %bb.p
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !alias.scope !429, !noundef !4
  br label %_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !alias.scope !429, !noundef !4 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef 23), !noalias !431 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !432
  store ptr %i.i, ptr %i.b, align 8, !noalias !432
  %i.j = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error8durationNtB4_5ErrorNtB6_9IntoError10into_error(i1 noundef zeroext true)
          to label %bb.i unwind label %bb.e, !noalias !432

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = icmp eq ptr %i.i, null
  br i1 %i.l, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !433
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire, !noalias !432
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %common.resume unwind label %bb.h, !noalias !432

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !432
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.l, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.k, %bb.g ], [ %i.k, %bb.f ], [ %i.u, %bb.l ], [ %i.u, %bb.k ], [ %i.u, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.d
  %i.p = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.i, ptr noundef %i.j), !noalias !432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !432
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from.exit: ; preds = %bb.c, %bb.b
  %.sroa.8.0.ph.ph = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.r = add i64 %.sroa.8.0.ph.ph, -253402300800
  %or.cond.i = icmp ult i64 %i.r, -631107503999
  br i1 %or.cond.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i, label %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i: ; preds = %_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !434
  %i.s = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52) 37), !noalias !434 ; 4 uses
  store ptr %i.s, ptr %i.a, align 8, !noalias !434
  %i.t = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 8)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_5civil5ErrorE0Ba_.exit.i unwind label %bb.j, !noalias !434

bb.j:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !435
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %common.resume unwind label %bb.m, !noalias !434

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !434
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultlNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextlB1c_E7contextNtNtB8_5civil5ErrorE0Ba_.exit.i: ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.thread.i
  %i.z = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.s, ptr noundef %i.t), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !434
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !434
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i: ; preds = %_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from.exit
  %i.ab = sdiv i64 %.sroa.8.0.ph.ph, 86400
  %.sroa.626.0.extract.trunc.i = trunc nsw i64 %i.ab to i32
  %i.ac = tail call fastcc i48 @_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11checked_add(i32 noundef %2, i32 noundef %.sroa.626.0.extract.trunc.i) #29 ; 2 uses
  %.sroa.028.2.extract.shift.i = lshr i48 %i.ac, 16
  %.sroa.028.2.extract.trunc.i = trunc nuw i48 %.sroa.028.2.extract.shift.i to i32 ; 2 uses
  %i.ad = trunc i48 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !8

bb.n:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.ae = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.028.2.extract.trunc.i) #24, !noalias !434
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !434
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.o:                                             ; preds = %_RINvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5checkxEB9_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.028.2.extract.trunc.i, ptr %i.ag, align 2, !alias.scope !434
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %.sroa.012.0.extract.trunc.i = trunc i32 %2 to i16
  %.sroa.413.0.extract.shift.i = lshr i32 %2, 16
  %.sroa.413.0.extract.trunc.i = trunc i32 %.sroa.413.0.extract.shift.i to i8
  %.sroa.514.0.extract.shift.i = lshr i32 %2, 24  ; 2 uses
  %.sroa.514.0.extract.trunc.i = trunc nuw i32 %.sroa.514.0.extract.shift.i to i8 ; 2 uses
  %i.ah = icmp eq i8 %i.d, 0
  br i1 %i.ah, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %2, ptr %i.ai, align 2, !alias.scope !436
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.r:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load i16, ptr %i.aj, align 8, !alias.scope !437, !noundef !4 ; 2 uses
  %i.al = icmp eq i16 %i.ak, 64
  %i.am = sext i8 %i.d to i32                     ; 5 uses
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load i32, ptr %i.an, align 8, !alias.scope !437, !noundef !4
  %i.ap = mul i32 %i.ao, %i.am
  %i.aq = tail call fastcc i48 @_RNvMNtNtCsb09rMIQFAXO_9jiff_core5civil4dateNtB2_4Date11checked_add(i32 noundef %2, i32 noundef %i.ap) #29 ; 2 uses
  %.sroa.0130.2.extract.shift.i = lshr i48 %i.aq, 16
  %.sroa.0130.2.extract.trunc.i = trunc nuw i48 %.sroa.0130.2.extract.shift.i to i32 ; 2 uses
  %i.ar = trunc i48 %i.aq to i1
  br i1 %i.ar, label %bb.u, label %bb.v, !prof !8

bb.t:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load i32, ptr %i.as, align 8, !alias.scope !437, !noundef !4
  %i.au = mul i32 %i.at, %i.am
  %i.av = tail call { i8, i16 } @_RNvNtNtCsa9sSWSfjDbm_4jiff5civil4date21month_add_overflowing(i8 noundef %.sroa.413.0.extract.trunc.i, i32 noundef %i.au), !noalias !438 ; 2 uses
  %i.aw = extractvalue { i8, i16 } %i.av, 0       ; 6 uses
  %i.ax = extractvalue { i8, i16 } %i.av, 1
  %i.ay = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.012.0.extract.trunc.i, i16 %i.ax) ; 2 uses
  %i.az = extractvalue { i16, i1 } %i.ay, 1
  %i.ba = extractvalue { i16, i1 } %i.ay, 0       ; 3 uses
  br i1 %i.az, label %.thread.i, label %_RNvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds11checked_addB8_.exit167.i

_RNvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds11checked_addB8_.exit167.i: ; preds = %bb.t
  %i.bb = add i16 %i.ba, -10000
  %narrow.i = icmp ult i16 %i.bb, -19999          ; 2 uses
  %.sroa.0.0.i.i162.i = zext i1 %narrow.i to i32
  %.sroa.0.0.insert.insert.i.i166.i = or disjoint i32 %.sroa.0.0.i.i162.i, 11776
  br i1 %narrow.i, label %bb.x, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.0130.2.extract.trunc.i) #24, !noalias !438
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !alias.scope !436
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.v:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0130.2.extract.trunc.i, ptr %i.be, align 2, !alias.scope !436
  br label %_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4dateNtB2_4Date20checked_add_duration.exit

bb.w:                                             ; preds = %_RNvYNtNtNtCsa9sSWSfjDbm_4jiff4util1b4YearNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds11checked_addB8_.exit167.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bg = load i16, ptr %i.bf, align 2, !alias.scope !437, !noundef !4
  %i.bh = sext i8 %i.d to i16
end_hunk_1
