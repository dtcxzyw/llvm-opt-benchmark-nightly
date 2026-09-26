Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.04?download=true
inline.NumInlined: 306
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvMs0_NtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2h_16TimeZoneNameIter9from_iterB1L_BX_E0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB2h_12TimeZoneNameENCINvNtB12_16in_place_collect24write_in_place_with_dropB4K_E0INtNtBc_6result6ResultB49_zEEB2l_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12TimeZoneNameENCINvNtNtB1p_8adapters3map12map_try_foldBX_B2X_B2n_INtNtB1r_6result6ResultB2n_zENCINvMs0_B2Z_NtB2Z_16TimeZoneNameIter9from_iterBX_BI_E0NCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0E0B4w_EB33_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENvYINtNtB14_4sync3ArceEINtNtBc_7convert4FromB1L_E4fromENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2b_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2b_E0INtNtBc_6result6ResultB3I_zEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArceEENCINvNtNtB1p_8adapters3map12map_try_foldBX_B2X_B2n_INtNtB1r_6result6ResultB2n_zENvYB2X_INtNtB1r_7convert4FromBX_E4fromNCINvNtB8_16in_place_collect24write_in_place_with_dropB2X_E0E0B46_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VechENtB8_5ErrorEINtB8_12ErrorContextB1b_B1K_E7contextNtNtNtNtB8_2tz6system7enabled5ErrorE0Ba_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noundef ptr @_RNvXs_NtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB4_5ErrorNtBa_9IntoError10into_error(i8 noundef 5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef nonnull %0, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw sub ptr %0, i64 1 release, align 8, !noalias !269
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtCsa9sSWSfjDbm_4jiff5errorNtB2_5Error16is_crate_feature(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !287, !noalias !288, !noundef !5 ; 3 uses
  %.not.i.i5.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i5.i.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noalias !289, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %.lr.ph.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.val.i.i, %.lr.ph.i.preheader.i.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noalias !289, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !7, !noalias !289, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %.lr.ph.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit

_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i, %bb.a, %.lr.ph.i.preheader.i.i.i
  ret i1 false
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtCsa9sSWSfjDbm_4jiff5errorNtB2_5Error20is_invalid_parameter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !307, !noalias !308, !noundef !5 ; 3 uses
  %.not.i.i5.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i5.i.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noalias !309, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %.lr.ph.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.val.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noalias !309, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !7, !noalias !309, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %.lr.ph.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit

_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit

_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit: ; preds = %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit, %bb.a, %.lr.ph.i.preheader.i.i.i
  %.sroa.03.0.i.i = phi ptr [ null, %.lr.ph.i.preheader.i.i.i ], [ null, %bb.a ], [ %i.j, %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.i.i, null
  %..i.i.i = select i1 %.not.i.i.i, ptr %0, ptr %.sroa.03.0.i.i
  %i.k = load ptr, ptr %..i.i.i, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.01.0 = select i1 %.not, ptr @8, ptr %i.l ; 2 uses
  %i.m = load i8, ptr %.sroa.01.0, align 8, !range !10, !noundef !5 ; 3 uses
  %i.n = icmp ne i8 %i.m, 10
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i8 %i.m, -4
  %i.p = icmp samesign ugt i8 %i.m, 3
  %narrow = select i1 %i.p, i8 %i.o, i8 6
  switch i8 %narrow, label %bb.d [
    i8 2, label %bb.b
    i8 26, label %bb.c
  ]

bb.b:                                             ; preds = %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !12, !noundef !5
  %.off = add nsw i8 %i.r, -5
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit, %bb.c
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtCsa9sSWSfjDbm_4jiff5errorNtB2_5Error8is_range(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !327, !noalias !328, !noundef !5 ; 3 uses
  %.not.i.i5.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i5.i.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noalias !329, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %.lr.ph.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %.val.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noalias !329, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !7, !noalias !329, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %.lr.ph.i.i.i, label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit

_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit

_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit: ; preds = %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit, %bb.a, %.lr.ph.i.preheader.i.i.i
  %.sroa.03.0.i.i = phi ptr [ null, %.lr.ph.i.preheader.i.i.i ], [ null, %bb.a ], [ %i.j, %_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error4root.exit.loopexit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.03.0.i.i, null
  %..i.i.i = select i1 %.not.i.i.i, ptr %0, ptr %.sroa.03.0.i.i
  %i.k = load ptr, ptr %..i.i.i, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.01.0 = select i1 %.not, ptr @8, ptr %i.l
  %i.m = load i8, ptr %.sroa.01.0, align 8, !range !10, !noundef !5 ; 3 uses
  %i.n = icmp ne i8 %i.m, 10
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i8 %i.m, -4
  %i.p = icmp samesign ugt i8 %i.m, 3
  %narrow = select i1 %i.p, i8 %i.o, i8 6         ; 2 uses
  %i.q = icmp ult i8 %narrow, 28
  %switch.cast = zext nneg i8 %narrow to i28
  %switch.downshift = lshr i28 -133693438, %switch.cast
  %switch.masked = trunc i28 %switch.downshift to i1
  %.sroa.0.0 = select i1 %i.q, i1 %switch.masked, i1 false
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtCsa9sSWSfjDbm_4jiff5errorNtB2_5Error9from_args(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = lshr i64 %i.e, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !349
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !349
  %i.h = load i64, ptr %i.b, align 8, !range !7, !noalias !349, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !8, !noalias !349, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8, !noalias !349
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !noalias !349
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.l, align 8, !noalias !349, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !349
  %.not.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.g, i1 false), !noalias !350
  br label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i

_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.d, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !351, !noalias !352
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !351, !noalias !352
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !351, !noalias !352
  br label %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !353
  br label %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit

_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit: ; preds = %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCsa9sSWSfjDbm_4jiff.exit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.p = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  store i64 1, ptr %i.a, align 8, !noalias !354
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.s, align 8, !noalias !354
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.t, align 8, !noalias !354
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 4, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.q, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.r, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !355
  %i.u = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !355 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.f:                                             ; preds = %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.g, !noalias !354

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.i unwind label %bb.h, !noalias !354

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !354
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.w

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %_RNvMs5_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocError9from_args.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  ret ptr %i.u
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !360
  store i64 1, ptr %i.a, align 8, !noalias !360
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !360
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !360
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 23, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i32 %0, ptr %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !361
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !361 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !360

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !360

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !360
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !360
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !392
  store i64 1, ptr %i.a, align 8, !noalias !392
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !392
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8, !noalias !392
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 40, ptr %.sroa.5.0..sroa_idx.i, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !393
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !393 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.d, !noalias !392

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %.body unwind label %bb.e, !noalias !392

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !392
  unreachable

.body:                                            ; preds = %bb.m, %bb.h, %bb.d, %bb.r
  %.pn.pn.ph = phi { ptr, i32 } [ %i.an, %bb.r ], [ %i.v, %bb.m ], [ %i.n, %bb.h ], [ %i.i, %bb.d ]
  %.sroa.03.0.ph = phi i1 [ false, %bb.r ], [ false, %bb.m ], [ true, %bb.h ], [ true, %bb.d ]
  %.pr = load ptr, ptr %i.c, align 8, !alias.scope !394 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.l = atomicrmw sub ptr %.pr, i64 1 release, align 8, !noalias !397
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit unwind label %bb.s

bb.h:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !392
  store ptr %i.g, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10
  %i.o = phi ptr [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit10 ], [ %1, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !7, !noundef !5
  %.not6 = icmp eq i64 %i.q, 0
  br i1 %.not6, label %bb.l, label %bb.k, !prof !13

bb.j:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread, %bb.k
  unreachable

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21
          to label %bb.j unwind label %bb.h

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %0, ptr %i.r, align 8
  store i64 1, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = cmpxchg ptr %i.s, i64 1, i64 -1 acquire monotonic, align 8
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread, !prof !398

bb.m:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.x = load ptr, ptr %i.r, align 8
  store i64 %i.w, ptr %i.ab, align 8
  store ptr %i.x, ptr %i.ae, align 8
  br label %.body

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit: ; preds = %bb.l
  %i.y = load atomic i64, ptr %i.o acquire, align 8
  %i.z = icmp eq i64 %i.y, 1
  store atomic i64 1, ptr %i.s release, align 8
  br i1 %i.z, label %bb.n, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread, !prof !399

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread: ; preds = %bb.l, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %bb.j unwind label %bb.r

bb.n:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit
  %i.aa = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ac = load i64, ptr %i.ab, align 8, !range !7, !alias.scope !400, !noundef !5
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !403, !noundef !5 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !404
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.q
  %i.aj = load i64, ptr %i.b, align 8, !range !7, !noundef !5
  %i.ak = load ptr, ptr %i.r, align 8
  store i64 %i.aj, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ak, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = load ptr, ptr %i.c, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.am

bb.r:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9is_uniqueBK_.exit.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.g, %bb.r
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit: ; preds = %bb.f, %.body, %bb.g
  br i1 %.sroa.03.0.ph, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13: ; preds = %bb.u, %bb.t, %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit
  resume { ptr, i32 } %.pn.pn.ph

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.ap = load ptr, ptr %i.d, align 8, !alias.scope !407, !noundef !5 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !408
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit13 unwind label %bb.s
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error14special_bounds(i8 noundef range(i8 0, 3) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  store i64 1, ptr %i.a, align 8, !noalias !413
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !413
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !413
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 31, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !414
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !414 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !413

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !413

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !413
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error16jcore_tzif_parse(i64 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !419
  store i64 1, ptr %i.a, align 8, !noalias !419
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !419
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !419
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 22, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i64 %0, ptr %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !420
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !420 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !419

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !419

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !419
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !419
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error17jcore_posix_parse(i32 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !425
  store i64 1, ptr %i.a, align 8, !noalias !425
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !425
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !425
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 21, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i32 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !426
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !426 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !425

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !425

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !425
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !425
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error2io(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !431
  store i64 1, ptr %i.a, align 8, !noalias !431
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !431
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !431
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 20, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !432
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !432 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !431

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !431

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !431
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !431
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error6bounds(i8 noundef range(i8 0, 52) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !437
  store i64 1, ptr %i.a, align 8, !noalias !437
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !437
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !437
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 5, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !438
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !438 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !437

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !437

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !437
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !437
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [80 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 14 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 23 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  %i.ac = alloca [8 x i8], align 8                ; 11 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [40 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 16              ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ao = load atomic i32, ptr @_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system5CACHE monotonic, align 8 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.ao, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c, !prof !518

bb.b:                                             ; preds = %bb.a
  %i.ap = add nuw nsw i32 %i.ao, 1
  %i.aq = cmpxchg weak ptr @_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system5CACHE, i32 %i.ao, i32 %i.ap acquire monotonic, align 4
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 @_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system5CACHE)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.b, %bb.c
  call void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheE3newB1f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noundef nonnull align 8 @_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system5CACHE)
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.as = load i64, ptr %i.am, align 8, !range !7, !alias.scope !519, !noundef !5
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheEINtBM_11PoisonErrorBH_EE6unwrapB1O_.exit, !prof !9

bb.d:                                             ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !519
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !519
  store <2 x ptr> %i.av, ptr %i.aj, align 16, !noalias !519
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #21
          to label %bb.f unwind label %bb.e, !noalias !519

bb.e:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !519
  unreachable

common.resume:                                    ; preds = %.body, %bb.di, %.body100.i.i, %bb.bt, %bb.co, %bb.cu, %bb.cv, %bb.cw, %bb.dc, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.il, %bb.cu ], [ %i.aw, %bb.e ], [ %i.il, %bb.cv ], [ %.pn91.i.i, %.body100.i.i ], [ %i.hz, %bb.co ], [ %i.gh, %bb.bt ], [ %i.iz, %bb.dc ], [ %i.il, %bb.cw ], [ %.pn9, %.body ], [ %i.jj, %bb.di ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheEINtBM_11PoisonErrorBH_EE6unwrapB1O_.exit: ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !519
  %i.ba = load ptr, ptr %i.ay, align 8, !alias.scope !519, !nonnull !5, !noundef !5 ; 4 uses
  store <2 x ptr> %i.az, ptr %i.an, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.bb = load i64, ptr %i.ba, align 8, !range !7, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = trunc nuw i64 %i.bb to i1
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheEINtBM_11PoisonErrorBH_EE6unwrapB1O_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !range !520, !noundef !5
  %i.bi = invoke noundef zeroext i1 @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5cacheNtB2_10Expiration10is_expired(i64 %i.bf, i32 noundef %i.bh)
          to label %bb.dj unwind label %bb.di

bb.i:                                             ; preds = %bb.dj, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheEINtBM_11PoisonErrorBH_EE6unwrapB1O_.exit
  call void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !521
  store ptr %0, ptr %i.ac, align 8, !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !522
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 2), !noalias !523
  %i.bj = load i64, ptr %i.aa, align 8, !range !14, !noalias !522, !noundef !5
  %.not.i.i = icmp eq i64 %i.bj, -1
  br i1 %.not.i.i, label %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !522
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !522, !noundef !5
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.cq, label %bb.k

_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.thread.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !521
  %i.bo = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !521 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 6
  call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp samesign ugt i64 %i.bo, 3
  br i1 %i.bq, label %bb.cy, label %bb.cz

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !522
  invoke void @_RINvMNtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB3_5TzEnv12parse_os_strRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.m unwind label %bb.l, !noalias !523

.body100.i.i:                                     ; preds = %bb.bq, %bb.bd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i, %bb.x, %bb.w, %.body.i.i, %bb.l
  %.pn91.i.i = phi { ptr, i32 } [ %i.fd, %bb.bd ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i ], [ %i.ck, %bb.x ], [ %i.br, %bb.l ], [ %i.ck, %.body.i.i ], [ %i.ck, %bb.w ], [ %i.ge, %bb.bq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #23
          to label %common.resume unwind label %bb.ac, !noalias !523

bb.l:                                             ; preds = %bb.cr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i106.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %bb.al, %bb.aj, %bb.ai, %bb.af, %bb.ae, %bb.v, %bb.k
end_hunk_0
begin_hunk_1_@_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system3get:bb.a
  br i1 %i.ed, label %bb.ar, label %bb.bv

bb.ar:                                            ; preds = %bb.aq
  %i.ee = extractvalue { i64, i64 } %i.cy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !522
  %i.ef = add i64 %i.ee, 9                        ; 7 uses
  %i.eg = load ptr, ptr %i.cw, align 8, !noalias !522, !nonnull !5, !noundef !5 ; 3 uses
  %i.eh = load i64, ptr %i.cx, align 8, !noalias !522, !noundef !5 ; 5 uses
  %i.ei = icmp eq i64 %i.ef, 0
  br i1 %i.ei, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i = icmp ult i64 %i.ef, %i.eh
  br i1 %.not.i.i.i, label %bb.at, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.as
  %i.ej = icmp eq i64 %i.ef, %i.eh
  br i1 %i.ej, label %bb.aw, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !539, !noalias !523, !noundef !5
  %i.em = icmp sgt i8 %i.el, -65
  br i1 %i.em, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at, %.split.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef %i.eh, i64 noundef %i.ef, i64 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21
          to label %bb.av unwind label %bb.ap, !noalias !523

bb.av:                                            ; preds = %bb.au, %bb.al
  unreachable

bb.aw:                                            ; preds = %bb.at, %.split.i.i.i, %bb.ar
  %i.en = sub nuw i64 %i.eh, %i.ef                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef ; 2 uses
  store ptr %i.eo, ptr %i.m, align 8, !noalias !522, !captures !16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.en, ptr %i.ep, align 8, !noalias !522
  %i.eq = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !522 ; 2 uses
  %i.er = icmp ult i64 %i.eq, 6
  call void @llvm.assume(i1 %i.er)
  %i.es = icmp samesign ugt i64 %i.eq, 3
  br i1 %i.es, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !522
  store ptr %i.m, ptr %i.l, align 8, !noalias !522
  %.sroa.470.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.470.0..sroa_idx.i.i, align 8, !noalias !522
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.y, ptr %i.et, align 8, !noalias !522
  %.sroa.474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.474.0..sroa_idx.i.i, align 8, !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !522
  store ptr @16, ptr %i.k, align 8, !noalias !522
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 16, ptr %i.eu, align 8, !noalias !522
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr @16, ptr %i.ev, align 8, !noalias !522
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 16, ptr %i.ew, align 8, !noalias !522
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr @20, ptr %i.ex, align 8, !noalias !522
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @19, ptr noundef nonnull %i.l, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
          to label %bb.az unwind label %bb.ap, !noalias !523

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %i.ey = load ptr, ptr %i.ac, align 8, !noalias !522, !nonnull !5, !align !17, !noundef !5
  %i.ez = invoke { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2_16TimeZoneDatabase3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.en)
          to label %bb.ba unwind label %bb.ap, !noalias !523 ; 2 uses

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !522
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ay
  %i.fa = extractvalue { i64, ptr } %i.ez, 0
  %i.fb = extractvalue { i64, ptr } %i.ez, 1      ; 3 uses
  %i.fc = trunc nuw i64 %i.fa to i1
  br i1 %i.fc, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !522
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit116.i.i, %bb.bz, %bb.bb
  %.sroa.14.0.i = phi ptr [ %i.fb, %bb.bb ], [ %.sroa.14.3.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit116.i.i ], [ %i.gx, %bb.bz ]
  %.sroa.0.012.i = phi i64 [ 1, %bb.bb ], [ %.sroa.0.3.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit116.i.i ], [ 1, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !522
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i.i unwind label %bb.bd, !noalias !523

bb.bd:                                            ; preds = %bb.bc
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body100.i.i unwind label %bb.be, !noalias !523

bb.be:                                            ; preds = %bb.bd
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !523
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.bc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.l, !noalias !523

bb.bf:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.fg = load ptr, ptr %i.j, align 8, !alias.scope !542, !noalias !522, !noundef !5 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fi = atomicrmw sub ptr %i.fg, i64 1 release, align 8, !noalias !543
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i unwind label %bb.ac, !noalias !523

bb.bi:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !522
  store ptr %i.fb, ptr %i.j, align 8, !noalias !522
  %i.fk = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !522 ; 2 uses
  %i.fl = icmp ult i64 %i.fk, 6
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp samesign ugt i64 %i.fk, 3
  br i1 %i.fm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !522
  store ptr %i.m, ptr %i.i, align 8, !noalias !522
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !noalias !522
  %i.fn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.y, ptr %i.fn, align 8, !noalias !522
  %.sroa.482.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.482.0..sroa_idx.i.i, align 8, !noalias !522
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.ac, ptr %i.fo, align 8, !noalias !522
  %.sroa.486.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz2db16TimeZoneDatabaseNtB6_5Debug3fmtBC_, ptr %.sroa.486.0..sroa_idx.i.i, align 8, !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !522
  store ptr @16, ptr %i.h, align 8, !noalias !522
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 16, ptr %i.fp, align 8, !noalias !522
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @16, ptr %i.fq, align 8, !noalias !522
  %i.fr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 16, ptr %i.fr, align 8, !noalias !522
  %i.fs = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @22, ptr %i.fs, align 8, !noalias !522
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @21, ptr noundef nonnull %i.i, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h)
          to label %bb.bn unwind label %bb.bf, !noalias !523

bb.bk:                                            ; preds = %bb.bn, %bb.bi
  %i.ft = phi ptr [ %i.fb, %bb.bi ], [ %.pr.i.i, %bb.bn ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit103.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fv = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !noalias !546
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.bm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit103.i.i

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit103.i.i unwind label %bb.ap, !noalias !523

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !522
  %.pr.i.i = load ptr, ptr %i.j, align 8, !alias.scope !547, !noalias !522
  br label %bb.bk

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit103.i.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !522
  %i.fx = load ptr, ptr %i.cw, align 8, !noalias !522, !nonnull !5, !noundef !5
  %i.fy = load i64, ptr %i.cx, align 8, !noalias !522, !noundef !5
  %i.fz = load ptr, ptr %i.ac, align 8, !noalias !522, !nonnull !5, !align !17, !noundef !5
  %i.ga = invoke fastcc { i64, ptr } @_RNvNtNtNtCsa9sSWSfjDbm_4jiff2tz6system3sys4read(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fx, i64 noundef %i.fy)
          to label %bb.bo unwind label %bb.ap, !noalias !523 ; 2 uses

bb.bo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit103.i.i
  %i.gb = extractvalue { i64, ptr } %i.ga, 0
  %i.gc = trunc nuw i64 %i.gb to i1
  br i1 %i.gc, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = invoke noundef nonnull ptr @_RNvXNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef 1) #25
          to label %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tzs_0B7_.exit.i.i unwind label %bb.ap, !noalias !523

_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tzs_0B7_.exit.i.i: ; preds = %bb.bs, %bb.bp
  %.sroa.14.4.i = phi ptr [ %i.gg, %bb.bs ], [ %i.gd, %bb.bp ]
  %.sroa.0.4.i = phi i64 [ 1, %bb.bs ], [ 2, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !522
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i106.i.i unwind label %bb.bq, !noalias !523

bb.bq:                                            ; preds = %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tzs_0B7_.exit.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body100.i.i unwind label %bb.br, !noalias !523

bb.br:                                            ; preds = %bb.bq
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !523
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i106.i.i: ; preds = %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tzs_0B7_.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit110.i.i unwind label %bb.l, !noalias !523

bb.bs:                                            ; preds = %bb.bo
  %i.gg = extractvalue { i64, ptr } %i.ga, 1
  br label %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tzs_0B7_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit110.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i106.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !522
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.i unwind label %bb.bt, !noalias !523

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit110.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.bu, !noalias !523

bb.bu:                                            ; preds = %bb.bt
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !523
  unreachable

bb.bv:                                            ; preds = %bb.aq
  %i.gj = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !522 ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 6
  call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i64 %i.gj, 3
  br i1 %i.gl, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !522
  store ptr %i.s, ptr %i.r, align 8, !noalias !522
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.442.0..sroa_idx.i.i, align 8, !noalias !522
  %i.gm = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.y, ptr %i.gm, align 8, !noalias !522
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !noalias !522
  %i.gn = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ac, ptr %i.gn, align 8, !noalias !522
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz2db16TimeZoneDatabaseNtB6_5Debug3fmtBC_, ptr %.sroa.450.0..sroa_idx.i.i, align 8, !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !522
  store ptr @16, ptr %i.q, align 8, !noalias !522
  %i.go = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 16, ptr %i.go, align 8, !noalias !522
  %i.gp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr @16, ptr %i.gp, align 8, !noalias !522
  %i.gq = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 16, ptr %i.gq, align 8, !noalias !522
  %i.gr = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr @24, ptr %i.gr, align 8, !noalias !522
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @23, ptr noundef nonnull %i.r, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %bb.by unwind label %bb.ap, !noalias !523

bb.bx:                                            ; preds = %bb.by, %bb.bv
  %i.gs = load ptr, ptr %i.cw, align 8, !noalias !522, !nonnull !5, !noundef !5
  %i.gt = load i64, ptr %i.cx, align 8, !noalias !522, !noundef !5
  %i.gu = load ptr, ptr %i.ac, align 8, !noalias !522, !nonnull !5, !align !17, !noundef !5
  %i.gv = invoke { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz2dbNtB2_16TimeZoneDatabase3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gs, i64 noundef %i.gt)
          to label %bb.bz unwind label %bb.ap, !noalias !523 ; 2 uses

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !522
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bx
  %i.gw = extractvalue { i64, ptr } %i.gv, 0
  %i.gx = extractvalue { i64, ptr } %i.gv, 1      ; 2 uses
  %i.gy = trunc nuw i64 %i.gw to i1
  br i1 %i.gy, label %bb.cd, label %bb.bc

bb.ca:                                            ; preds = %bb.ci, %bb.cf, %bb.ce
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.ha = load ptr, ptr %i.p, align 8, !alias.scope !550, !noalias !522, !noundef !5 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !551
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit.i.i unwind label %bb.ac, !noalias !523

bb.cd:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !522
  store ptr %i.gx, ptr %i.p, align 8, !noalias !522
  %i.he = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !522 ; 2 uses
  %i.hf = icmp ult i64 %i.he, 6
  call void @llvm.assume(i1 %i.hf)
  %i.hg = icmp samesign ugt i64 %i.he, 3
  br i1 %i.hg, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !522
  store ptr %i.y, ptr %i.o, align 8, !noalias !522
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx.i.i, align 8, !noalias !522
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ac, ptr %i.hh, align 8, !noalias !522
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff2tz2db16TimeZoneDatabaseNtB6_5Debug3fmtBC_, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !522
  %i.hi = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.y, ptr %i.hi, align 8, !noalias !522
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !522
  store ptr @16, ptr %i.n, align 8, !noalias !522
  %i.hj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 16, ptr %i.hj, align 8, !noalias !522
  %i.hk = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr @16, ptr %i.hk, align 8, !noalias !522
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 16, ptr %i.hl, align 8, !noalias !522
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @26, ptr %i.hm, align 8, !noalias !522
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @25, ptr noundef nonnull %i.o, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %bb.cg unwind label %bb.ca, !noalias !523

bb.cf:                                            ; preds = %bb.cg, %bb.cd
  %i.hn = load ptr, ptr %i.cw, align 8, !noalias !522, !nonnull !5, !noundef !5
  %i.ho = load i64, ptr %i.cx, align 8, !noalias !522, !noundef !5
  %i.hp = load ptr, ptr %i.ac, align 8, !noalias !522, !nonnull !5, !align !17, !noundef !5
  %i.hq = invoke fastcc { i64, ptr } @_RNvNtNtNtCsa9sSWSfjDbm_4jiff2tz6system3sys4read(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef %i.ho)
          to label %bb.ch unwind label %bb.ca, !noalias !523 ; 2 uses

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !522
  br label %bb.cf

bb.ch:                                            ; preds = %bb.cf
  %i.hr = extractvalue { i64, ptr } %i.hq, 0
  %i.hs = trunc nuw i64 %i.hr to i1
  br i1 %i.hs, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ht = invoke noundef nonnull ptr @_RNvXNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef 1) #25
          to label %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz0B7_.exit.i.i unwind label %bb.ca, !noalias !523

_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz0B7_.exit.i.i: ; preds = %bb.cl, %bb.ci
  %.sroa.14.3.i = phi ptr [ %i.hy, %bb.cl ], [ %i.ht, %bb.ci ]
  %.sroa.0.3.i = phi i64 [ 1, %bb.cl ], [ 2, %bb.ci ]
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.hu = load ptr, ptr %i.p, align 8, !alias.scope !554, !noalias !522, !noundef !5 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit116.i.i, label %bb.cj

bb.cj:                                            ; preds = %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz0B7_.exit.i.i
  %i.hw = atomicrmw sub ptr %i.hu, i64 1 release, align 8, !noalias !555
  %i.hx = icmp eq i64 %i.hw, 1
  br i1 %i.hx, label %bb.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit116.i.i

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit116.i.i unwind label %bb.ap, !noalias !523

bb.cl:                                            ; preds = %bb.ch
  %i.hy = extractvalue { i64, ptr } %i.hq, 1
  br label %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz0B7_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit116.i.i: ; preds = %bb.ck, %bb.cj, %_RNCNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz0B7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !522
  br label %bb.bc

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.cm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %bb.v
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ %i.do, %bb.cm ], [ %i.cm, %bb.v ]
  %.sroa.0.113.i = phi i64 [ %.sroa.0.012.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ 2, %bb.cm ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !522
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !522
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i

bb.cn:                                            ; preds = %bb.cs, %bb.cq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i
  %.sroa.14.2.i = phi ptr [ %.sroa.14.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.cs ], [ inttoptr (i64 1 to ptr), %bb.cq ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.113.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i.i ], [ 1, %bb.cs ], [ 1, %bb.cq ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.i unwind label %bb.co, !noalias !523

bb.co:                                            ; preds = %bb.cn
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.cp, !noalias !523

bb.cp:                                            ; preds = %bb.co
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !523
  unreachable

bb.cq:                                            ; preds = %bb.j
  %i.ib = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !522 ; 2 uses
  %i.ic = icmp ult i64 %i.ib, 6
  call void @llvm.assume(i1 %i.ic)
  %i.id = icmp samesign ugt i64 %i.ib, 3
  br i1 %i.id, label %bb.cr, label %bb.cn

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !522
  store ptr @16, ptr %i.z, align 8, !noalias !522
  %i.ie = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 16, ptr %i.ie, align 8, !noalias !522
  %i.if = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr @16, ptr %i.if, align 8, !noalias !522
  %i.ig = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 16, ptr %i.ig, align 8, !noalias !522
  %i.ih = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr @28, ptr %i.ih, align 8, !noalias !522
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 255 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.z)
          to label %bb.cs unwind label %bb.l, !noalias !523

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !522
  br label %bb.cn

_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.i: ; preds = %bb.cn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit110.i.i
  %i.ii = phi ptr [ %.sroa.14.4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit110.i.i ], [ %.sroa.14.2.i, %bb.cn ] ; 6 uses
  %.sroa.0.5.i = phi i64 [ %.sroa.0.4.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit110.i.i ], [ %.sroa.0.2.i, %bb.cn ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !521
  %cond.i = icmp eq i64 %.sroa.0.5.i, 2
  br i1 %cond.i, label %bb.ct, label %bb.dd

bb.ct:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !521
  store ptr %i.ii, ptr %i.ad, align 8, !noalias !521
  %i.ij = invoke noundef ptr @_RNvXs_NtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB4_5ErrorNtBa_9IntoError10into_error(i8 noundef 0)
          to label %_RINvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5Error7contextNtNtNtNtB5_2tz6system7enabled5ErrorEB7_.exit.i unwind label %bb.cu

_RINvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5Error7contextNtNtNtNtB5_2tz6system7enabled5ErrorEB7_.exit.i: ; preds = %bb.ct
  %i.ik = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ii, ptr noundef %i.ij)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !521
  br label %bb.dq

bb.cu:                                            ; preds = %bb.ct
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.im = icmp eq ptr %i.ii, null
  br i1 %i.im, label %common.resume, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.in = atomicrmw sub ptr %i.ii, i64 1 release, align 8, !noalias !556
  %i.io = icmp eq i64 %i.in, 1
  br i1 %i.io, label %bb.cw, label %common.resume

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %common.resume unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.cy:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !521
  store ptr @16, ptr %i.ae, align 8, !noalias !521
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 16, ptr %i.iq, align 8, !noalias !521
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr @16, ptr %i.ir, align 8, !noalias !521
  %i.is = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 16, ptr %i.is, align 8, !noalias !521
  %i.it = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr @32, ptr %i.it, align 8, !noalias !521
  call void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 73 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !521
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.thread.i
  %i.iu = call fastcc { i64, ptr } @_RNvNtNtNtCsa9sSWSfjDbm_4jiff2tz6system3sys4read(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 14) ; 2 uses
  %i.iv = extractvalue { i64, ptr } %i.iu, 0
  %i.iw = trunc nuw i64 %i.iv to i1
  br i1 %i.iw, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ix = extractvalue { i64, ptr } %i.iu, 1
  br label %bb.ds

bb.db:                                            ; preds = %bb.cz
  %i.iy = call noundef ptr @_RNvXNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef 3) #25
  br label %bb.dq

bb.dc:                                            ; preds = %bb.de
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !557, !noalias !521, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_(ptr %.val.i) #23
          to label %common.resume unwind label %bb.dh

bb.dd:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system10get_env_tz.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !521
  store ptr %i.ii, ptr %i.ah, align 8, !noalias !521
  %i.ja = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !521 ; 2 uses
  %i.jb = icmp ult i64 %i.ja, 6
  call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp samesign ugt i64 %i.ja, 3
  br i1 %i.jc, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !521
  store ptr %i.ah, ptr %i.ag, align 8, !noalias !521
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB5_8TimeZoneNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !521
  store ptr @16, ptr %i.af, align 8, !noalias !521
  %i.jd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 16, ptr %i.jd, align 8, !noalias !521
  %i.je = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr @16, ptr %i.je, align 8, !noalias !521
  %i.jf = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 16, ptr %i.jf, align 8, !noalias !521
  %i.jg = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr @34, ptr %i.jg, align 8, !noalias !521
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @33, ptr noundef nonnull %i.ag, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af)
          to label %bb.dg unwind label %bb.dc

bb.df:                                            ; preds = %bb.dg, %bb.dd
  %i.jh = phi ptr [ %i.ii, %bb.dd ], [ %.pre.i, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !521
  br label %bb.ds

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !521
  %.pre.i = load ptr, ptr %i.ah, align 8, !noalias !521
  br label %bb.df

bb.dh:                                            ; preds = %bb.dc
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCsa9sSWSfjDbm_4jiff2tz6system3sys4read:bb.a
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.537.0.copyload.i = load i64, ptr %.sroa.537.0..sroa_idx.i, align 8, !noalias !627 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !627
  store i64 %i.en, ptr %i.c, align 8, !noalias !627
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.eq, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !627
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.537.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !627
  %i.et = invoke { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone11tzif_system(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %.sroa.537.0.copyload.i)
          to label %bb.bb unwind label %bb.ba     ; 2 uses

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bg, %bb.bf, %bb.be, %bb.ba
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eu, %bb.ba ], [ %i.fa, %bb.bg ], [ %i.fa, %bb.bf ], [ %i.fa, %bb.be ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %common.resume unwind label %bb.bo

bb.bb:                                            ; preds = %bb.az
  %i.ev = extractvalue { i64, ptr } %i.et, 0
  %i.ew = extractvalue { i64, ptr } %i.et, 1      ; 5 uses
  %i.ex = trunc nuw i64 %i.ev to i1
  br i1 %i.ex, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !627
  store ptr %i.ew, ptr %i.a, align 8, !noalias !627
  %i.ey = invoke noundef ptr @_RNvXs_NtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB4_5ErrorNtBa_9IntoError10into_error(i8 noundef 4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ez = invoke noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ew, ptr noundef %i.ey)
          to label %bb.bl unwind label %bb.ba

bb.be:                                            ; preds = %bb.bc
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fb = icmp eq ptr %i.ew, null
  br i1 %i.fb, label %.body.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fc = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !noalias !628
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.bg, label %.body.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #25
          to label %.body.i unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bi:                                            ; preds = %bb.bb
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system22read_unnamed_tzif_file.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bl:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !627
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit48.i unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit48.i: ; preds = %bb.bl
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.bt

bb.bo:                                            ; preds = %.body.i
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system22read_unnamed_tzif_file.exit: ; preds = %bb.bi
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !627
  br label %bb.bp

bb.bp:                                            ; preds = %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system22read_unnamed_tzif_file.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit26
  %.sroa.5.1 = phi ptr [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit26 ], [ %i.ew, %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system22read_unnamed_tzif_file.exit ]
  %.sroa.0.1 = phi i64 [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit26 ], [ 1, %_RNvNtNtCsa9sSWSfjDbm_4jiff2tz6system22read_unnamed_tzif_file.exit ]
  %i.fk = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  br label %bb.av

bb.bq:                                            ; preds = %bb.bu
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.fm = load ptr, ptr %i.aa, align 8, !alias.scope !631, !noundef !5 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %common.resume, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fo = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !632
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.bs, label %common.resume

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #25
          to label %common.resume unwind label %bb.bz

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit48.i, %bb.ay
  %.sroa.4.0.i.ph = phi ptr [ %i.ez, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit48.i ], [ %i.es, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.4.0.i.ph, ptr %i.aa, align 8
  %i.fq = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, 6
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp samesign ugt i64 %i.fq, 4
  br i1 %i.fs, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ad, ptr %i.z, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.414.0..sroa_idx, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.ft, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @40, ptr %i.y, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 21, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @40, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 21, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr @52, ptr %i.fx, align 8
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @51, ptr noundef nonnull %i.z, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y)
          to label %bb.by unwind label %bb.bq

bb.bv:                                            ; preds = %bb.bt, %bb.by
  %i.fy = phi ptr [ %.sroa.4.0.i.ph, %bb.bt ], [ %.pr, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit26, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ga = atomicrmw sub ptr %i.fy, i64 1 release, align 8, !noalias !635
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.bx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit26

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit26

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit26: ; preds = %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bp

bb.by:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.pr = load ptr, ptr %i.aa, align 8, !alias.scope !636
  br label %bb.bv

bb.bz:                                            ; preds = %bb.bs
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error6bounds(i8 noundef %0) #25
  ret ptr %i.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 12) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !641
  store i64 1, ptr %i.a, align 8, !noalias !641
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !641
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !641
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 28, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !642
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !642 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !641

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !641

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !641
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !641
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4spanNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 12) %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !647
  store i64 1, ptr %i.a, align 8, !noalias !647
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !647
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !647
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 29, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !648
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !648 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !647

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !647

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !647
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !647
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !653
  store i64 1, ptr %i.a, align 8, !noalias !653
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !653
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !653
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 30, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i24 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !654
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !654 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !653

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !653

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !653
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !653
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_22RoundingIncrementErrorE4from(i8 noundef range(i8 0, 6) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !659
  store i64 1, ptr %i.a, align 8, !noalias !659
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !659
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !659
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 27, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !660
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !660 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !659

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !659

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !659
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 10) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !665
  store i64 1, ptr %i.a, align 8, !noalias !665
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !665
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !665
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 6, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !666
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !666 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !665

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !665

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !665
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !665
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 18) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !671
  store i64 1, ptr %i.a, align 8, !noalias !671
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !671
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !671
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 41, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !672
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !672 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !671

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !671

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !671
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !671
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error8durationNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i1 noundef zeroext %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = zext i1 %0 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !677
  store i64 1, ptr %i.a, align 8, !noalias !677
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8, !noalias !677
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !noalias !677
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 8, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %i.b, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !678
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !678 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !677

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !677

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !677
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !677
  ret ptr %i.e
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error9timestampNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i1 noundef zeroext %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = zext i1 %0 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !683
  store i64 1, ptr %i.a, align 8, !noalias !683
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8, !noalias !683
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !noalias !683
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %i.b, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !684
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !684 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !683

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !683

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !683
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !683
  ret ptr %i.e
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz12concatenatedNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 12) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !689
  store i64 1, ptr %i.a, align 8, !noalias !689
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !689
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !689
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 35, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !690
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !690 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !689

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !689

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !689
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !695
  store i64 1, ptr %i.a, align 8, !noalias !695
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !695
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !695
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 36, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !696
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !696 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !695

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !695

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !695
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz8timezoneNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !701
  store i64 1, ptr %i.a, align 8, !noalias !701
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !701
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !701
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 38, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !702
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !702 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !701

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !701

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !701
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !701
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error2tz9ambiguousNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !707
  store i64 1, ptr %i.a, align 8, !noalias !707
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !707
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !707
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 33, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !708
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !708 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !707

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !707

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !707
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB2_5ErrorNtB6_9IntoError10into_error(i16 %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %0) #25
  ret ptr %i.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXNtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 6) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !713
  store i64 1, ptr %i.a, align 8, !noalias !713
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !713
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !713
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 37, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !714
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !714 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !713

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !713

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !713
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !713
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB5_8TimeZoneNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 8)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  %i.c = call noundef zeroext i1 @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !719
  store i64 1, ptr %i.a, align 8, !noalias !719
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !719
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !719
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !720
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !720 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !719

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !719

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !719
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_22RoundingIncrementErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !18, !noundef !5
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 24)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 32)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 31)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 20)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 20)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 25)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %i.f, %bb.f ], [ %i.g, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = load i8, ptr %0, align 1, !range !19, !noundef !5 ; 5 uses
  %i.u = icmp ne i8 %i.t, 20
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nsw i8 %i.t, -10
  %.inv = icmp samesign ult i8 %i.t, 10
  %narrow = select i1 %.inv, i8 10, i8 %i.v
  switch i8 %narrow, label %bb.b [
    i8 0, label %switch.lookup
    i8 1, label %bb.c
    i8 2, label %switch.lookup170
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %switch.lookup176
    i8 7, label %switch.lookup182
    i8 8, label %bb.g
    i8 9, label %switch.lookup188
    i8 10, label %switch.lookup194
    i8 11, label %switch.lookup200
    i8 12, label %switch.lookup206
    i8 13, label %switch.lookup212
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = load i8, ptr %i.w, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = zext nneg i8 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.68, i64 %i.z
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.aa = zext nneg i8 %i.x to i64
  %switch.gep168 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.69, i64 %i.aa
  %switch.load169 = load i8, ptr %switch.gep168, align 1
  %switch.ext = zext i8 %switch.load169 to i64
  store ptr %switch.load, ptr %i.s, align 8, !captures !16
  store i64 %switch.ext, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.43.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ae = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad, ptr noundef nonnull @71, ptr noundef nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 29)
  br label %bb.h

switch.lookup170:                                 ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = zext nneg i8 %i.ah to i64
  %switch.gep171 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.70, i64 %i.aj
  %switch.load172 = load ptr, ptr %switch.gep171, align 8
  %i.ak = zext nneg i8 %i.ah to i64
  %switch.gep173 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.ak
  %switch.load174 = load i8, ptr %switch.gep173, align 1
  %switch.ext175 = zext i8 %switch.load174 to i64
  store ptr %switch.load172, ptr %i.q, align 8, !captures !16
  store i64 %switch.ext175, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.q, ptr %i.p, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.418.0..sroa_idx, align 8
  %i.al = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ao = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an, ptr noundef nonnull @83, ptr noundef nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 86)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 56)
  br label %bb.h

end_hunk_2
begin_hunk_3_@_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
  %i.aw = zext nneg i8 %i.at to i64
  %switch.gep179 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.69, i64 %i.aw
  %switch.load180 = load i8, ptr %switch.gep179, align 1
  %switch.ext181 = zext i8 %switch.load180 to i64
  store ptr %switch.load178, ptr %i.o, align 8, !captures !16
  store i64 %switch.ext181, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.434.0..sroa_idx, align 8
  %i.ax = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !align !17, !noundef !5
  %i.ba = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, ptr noundef nonnull @87, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.h

switch.lookup182:                                 ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.be = zext nneg i8 %i.bc to i64
  %switch.gep183 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.68, i64 %i.be
  %switch.load184 = load ptr, ptr %switch.gep183, align 8
  %i.bf = zext nneg i8 %i.bc to i64
  %switch.gep185 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.69, i64 %i.bf
  %switch.load186 = load i8, ptr %switch.gep185, align 1
  %switch.ext187 = zext i8 %switch.load186 to i64
  store ptr %switch.load184, ptr %i.m, align 8, !captures !16
  store i64 %switch.ext187, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.450.0..sroa_idx, align 8
  %i.bg = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !5, !align !17, !noundef !5
  %i.bj = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi, ptr noundef nonnull @88, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 66)
  br label %bb.h

switch.lookup188:                                 ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bo = zext nneg i8 %i.bm to i64
  %switch.gep189 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.70, i64 %i.bo
  %switch.load190 = load ptr, ptr %switch.gep189, align 8
  %i.bp = zext nneg i8 %i.bm to i64
  %switch.gep191 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.bp
  %switch.load192 = load i8, ptr %switch.gep191, align 1
  %switch.ext193 = zext i8 %switch.load192 to i64
  store ptr %switch.load190, ptr %i.k, align 8, !captures !16
  store i64 %switch.ext193, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.466.0..sroa_idx, align 8
  %i.bq = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !5, !align !17, !noundef !5
  %i.bt = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bs, ptr noundef nonnull @90, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

switch.lookup194:                                 ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bx = zext nneg i8 %i.t to i64
  %switch.gep195 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.70, i64 %i.bx
  %switch.load196 = load ptr, ptr %switch.gep195, align 8
  %i.by = zext nneg i8 %i.t to i64
  %switch.gep197 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.by
  %switch.load198 = load i8, ptr %switch.gep197, align 1
  %switch.ext199 = zext i8 %switch.load198 to i64
  store ptr %switch.load196, ptr %i.i, align 8, !captures !16
  store i64 %switch.ext199, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bz = zext nneg i8 %i.bv to i64
  %switch.gep219 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.70, i64 %i.bz
  %switch.load220 = load ptr, ptr %switch.gep219, align 8
  %i.ca = zext nneg i8 %i.bv to i64
  %switch.gep221 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.ca
  %switch.load222 = load i8, ptr %switch.gep221, align 1
  %switch.ext223 = zext i8 %switch.load222 to i64
  store ptr %switch.load220, ptr %i.h, align 8, !captures !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %switch.ext223, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.482.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.cc, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.486.0..sroa_idx, align 8
  %i.cd = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !5, !align !17, !noundef !5
  %i.cg = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cf, ptr noundef nonnull @91, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

switch.lookup200:                                 ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ck = zext nneg i8 %i.ci to i64
  %switch.gep201 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.70, i64 %i.ck
  %switch.load202 = load ptr, ptr %switch.gep201, align 8
  %i.cl = zext nneg i8 %i.ci to i64
  %switch.gep203 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.cl
  %switch.load204 = load i8, ptr %switch.gep203, align 1
  %switch.ext205 = zext i8 %switch.load204 to i64
  store ptr %switch.load202, ptr %i.f, align 8, !captures !16
  store i64 %switch.ext205, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.4102.0..sroa_idx, align 8
  %i.cm = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !5, !align !17, !noundef !5
  %i.cp = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co, ptr noundef nonnull @92, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

switch.lookup206:                                 ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ct = zext nneg i8 %i.cr to i64
  %switch.gep207 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.70, i64 %i.ct
  %switch.load208 = load ptr, ptr %switch.gep207, align 8
  %i.cu = zext nneg i8 %i.cr to i64
  %switch.gep209 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.cu
  %switch.load210 = load i8, ptr %switch.gep209, align 1
  %switch.ext211 = zext i8 %switch.load210 to i64
  store ptr %switch.load208, ptr %i.d, align 8, !captures !16
  store i64 %switch.ext211, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.4118.0..sroa_idx, align 8
  %i.cv = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !5, !align !17, !noundef !5
  %i.cy = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cx, ptr noundef nonnull @93, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

switch.lookup212:                                 ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !range !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dc = zext nneg i8 %i.da to i64
  %switch.gep213 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.68, i64 %i.dc
  %switch.load214 = load ptr, ptr %switch.gep213, align 8
  %i.dd = zext nneg i8 %i.da to i64
  %switch.gep215 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.69, i64 %i.dd
  %switch.load216 = load i8, ptr %switch.gep215, align 1
  %switch.ext217 = zext i8 %switch.load216 to i64
  store ptr %switch.load214, ptr %i.b, align 8, !captures !16
  store i64 %switch.ext217, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.4134.0..sroa_idx, align 8
  %i.de = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !align !17, !noundef !5
  %i.dh = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dg, ptr noundef nonnull @94, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup212, %switch.lookup206, %switch.lookup200, %switch.lookup194, %switch.lookup188, %switch.lookup182, %switch.lookup176, %switch.lookup170, %switch.lookup, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.ae, %switch.lookup ], [ %i.af, %bb.c ], [ %i.ao, %switch.lookup170 ], [ %i.ap, %bb.d ], [ %i.aq, %bb.e ], [ %i.ar, %bb.f ], [ %i.ba, %switch.lookup176 ], [ %i.bj, %switch.lookup182 ], [ %i.bk, %bb.g ], [ %i.bt, %switch.lookup188 ], [ %i.cg, %switch.lookup194 ], [ %i.cp, %switch.lookup200 ], [ %i.cy, %switch.lookup206 ], [ %i.dh, %switch.lookup212 ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !725
  store i64 1, ptr %i.a, align 8, !noalias !725
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !725
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !725
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 17, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !726
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !726 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !725

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !725

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !725
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.peel:
  %.sroa.01.0.val.peel = load ptr, ptr %0, align 8, !noundef !5 ; 4 uses
  %.not.i8.peel = icmp eq ptr %.sroa.01.0.val.peel, null ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val.peel, i64 32
  %.sroa.0.0.i9.peel = select i1 %.not.i8.peel, ptr @8, ptr %i.a
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCsa9sSWSfjDbm_4jiff5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.i9.peel, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread, label %bb.a

bb.a:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.peel
  br i1 %.not.i8.peel, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val.peel, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noalias !743, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val.peel, i64 24 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 2)
  br i1 %i.g, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel, %bb.b, %bb.a
  %.sroa.0.0.i2.i.i.i52.peel = phi ptr [ %i.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.sroa.12.349.peel = phi ptr [ %i.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel ], [ %0, %bb.a ], [ %0, %bb.b ]
  %.not.not.not61 = icmp eq ptr %.sroa.0.0.i2.i.i.i52.peel, null
  br i1 %.not.not.not61, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread
  %.sroa.12.063 = phi ptr [ %.sroa.12.349, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread ], [ %.sroa.12.349.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel ] ; 3 uses
  %.sroa.21.062 = phi ptr [ %.sroa.0.0.i2.i.i.i52, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread ], [ %.sroa.0.0.i2.i.i.i52.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel ]
  %.sroa.01.0.val = load ptr, ptr %.sroa.21.062, align 8, !noundef !5 ; 2 uses
  %.not.i8 = icmp eq ptr %.sroa.01.0.val, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val, i64 32
  %.sroa.0.0.i9 = select i1 %.not.i8, ptr @8, ptr %i.h
  %i.i = tail call noundef zeroext i1 @_RNvXs3_NtCsa9sSWSfjDbm_4jiff5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.i9, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33
  %i.j = load ptr, ptr %.sroa.12.063, align 8, !noalias !743, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noalias !743, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 2)
  br i1 %i.o, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit
  %.sroa.0.0.i2.i.i.i52 = phi ptr [ %i.n, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit ], [ null, %bb.c ], [ null, %bb.d ] ; 2 uses
  %.sroa.12.349 = phi ptr [ %i.n, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit ], [ %.sroa.12.063, %bb.c ], [ %.sroa.12.063, %bb.d ]
  %.not.not.not = icmp eq ptr %.sroa.0.0.i2.i.i.i52, null
  br i1 %.not.not.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33, !llvm.loop !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.peel
  %.not30 = phi i1 [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.peel ], [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel ], [ false, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread.peel ], [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33 ], [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit ], [ false, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.thread ]
  ret i1 %.not30
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB9_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_18SpecialBoundsErrorE4from(i8 noundef range(i8 0, 3) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error14special_bounds(i8 noundef %0) #25
  ret ptr %i.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef range(i8 0, 3) %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !748
  store i64 1, ptr %i.a, align 8, !noalias !748
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !748
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !748
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 25, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !749
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !749 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !748

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !748

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !748
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !748
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff5error10AdhocErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !753, !noalias !754, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !753, !noalias !754, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !753
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff5error13FilePathErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !758
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 13), !noalias !759
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !758
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff5error7IOErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !763
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 7), !noalias !764
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !763
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff5error4util13ParseIntErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.c = load i8, ptr %i.b, align 1, !range !15, !alias.scope !768, !noalias !769, !noundef !5
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 13), !noalias !768
  br label %_RNvXsf_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !770
  store ptr %i.e, ptr %i.a, align 8, !noalias !770
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !770
  br label %_RNvXsf_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 6), !noalias !768
  br label %_RNvXsf_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXsf_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff5error4util14OsStrUtf8ErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !774
  store ptr %i.b, ptr %i.a, align 8, !noalias !774
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !774
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff5error4util18ParseFractionErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.c = load i8, ptr %i.b, align 1, !range !21, !alias.scope !778, !noalias !779, !noundef !5
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 13), !noalias !778
  br label %_RNvXsh_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_18ParseFractionErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 13), !noalias !778
  br label %_RNvXsh_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_18ParseFractionErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !780
  store ptr %i.f, ptr %i.a, align 8, !noalias !780
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @160)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !780
  br label %_RNvXsh_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_18ParseFractionErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 6), !noalias !778
  br label %_RNvXsh_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_18ParseFractionErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXsh_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_18ParseFractionErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff5error4util22RoundingIncrementErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff5error4util22RoundingIncrementErrorNtB6_5Debug3fmtBC_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsa9sSWSfjDbm_4jiff5error4util22RoundingIncrementErrorNtB6_5Debug3fmtBC_.72, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

end_hunk_3
begin_hunk_4_@_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4util5ErrorNtB6_5Debug3fmtBE_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !786
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.n, ptr %i.i, align 8, !noalias !786
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 13), !noalias !784
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !786
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.q, ptr %i.h, align 8, !noalias !786
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 15), !noalias !784
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 20), !noalias !784
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 23), !noalias !784
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !786
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.v, ptr %i.g, align 8, !noalias !786
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !786
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.x, ptr %i.f, align 8, !noalias !786
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 18), !noalias !784
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !786
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.aa, ptr %i.e, align 8, !noalias !786
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !786
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.ac, ptr %i.d, align 8, !noalias !786
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 5, ptr noundef nonnull readonly dereferenceable(2) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !786
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.ae, ptr %i.c, align 8, !noalias !786
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !786
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.ag, ptr %i.b, align 8, !noalias !786
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !786
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.ai, ptr %i.a, align 8, !noalias !786
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  br label %_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit

_RNvXs2_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.0.0.in.i = phi i1 [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.i ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.ab, %bb.l ], [ %i.ad, %bb.m ], [ %i.af, %bb.n ], [ %i.ah, %bb.o ], [ %i.aj, %bb.p ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !12, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.73, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !noundef !5
  %i.e = and i32 %i.d, 8388608
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %.sroa.01.0.val.peel.i = load ptr, ptr %0, align 8, !alias.scope !806, !noalias !807, !noundef !5 ; 4 uses
  %.not.i8.peel.i = icmp eq ptr %.sroa.01.0.val.peel.i, null ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val.peel.i, i64 32
  %.sroa.0.0.i9.peel.i = select i1 %.not.i8.peel.i, ptr @8, ptr %i.f
  %i.g = tail call noundef zeroext i1 @_RNvXs3_NtCsa9sSWSfjDbm_4jiff5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.i9.peel.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !806 ; 2 uses
  %brmerge = or i1 %i.g, %.not.i8.peel.i
  br i1 %brmerge, label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val.peel.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !7, !noalias !808, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel.i, label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel.i: ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 2), !noalias !806
  br i1 %i.k, label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.i
  %.sroa.01.0.val.peel.i.pn = phi ptr [ %i.n, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.i ], [ %.sroa.01.0.val.peel.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel.i ]
  %.sroa.12.0.i4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val.peel.i.pn, i64 24 ; 2 uses
  %.sroa.01.0.val.i = load ptr, ptr %.sroa.12.0.i4, align 8, !noalias !806, !noundef !5 ; 2 uses
  %.not.i8.i = icmp eq ptr %.sroa.01.0.val.i, null
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.val.i, i64 32
  %.sroa.0.0.i9.i = select i1 %.not.i8.i, ptr @8, ptr %i.l
  %i.m = tail call noundef zeroext i1 @_RNvXs3_NtCsa9sSWSfjDbm_4jiff5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.i9.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !806
  br i1 %i.m, label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.i
  %i.n = load ptr, ptr %.sroa.12.0.i4, align 8, !noalias !809, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !7, !noalias !808, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.i, label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.i: ; preds = %bb.e
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 2), !noalias !806
  br i1 %i.r, label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !noundef !5   ; 3 uses
  %.not1 = icmp eq ptr %i.s, null
  br i1 %.not1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 5)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 4, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 5, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109)
  %i.x = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 5)
  %i.y = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 4, ptr noundef nonnull @112, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @113)
  %i.z = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.e, %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.i, %bb.b, %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel.i, %bb.g, %bb.h
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.g ], [ %i.z, %bb.h ], [ %i.g, %bb.b ], [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.peel.i ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1Q_8PeekableINtNtB1S_5chain5ChainINtNtNtB1U_7sources4once4OnceBM_EINtNtB32_7from_fn6FromFnNCNvMs_BP_BN_5chain0EEE4peek0EBR_.exit.i ], [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsa9sSWSfjDbm_4jiff5error5ErrorE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1y_5ChainINtNtNtB1C_7sources4once4OnceBI_EINtNtB2j_7from_fn6FromFnNCNvMs_BL_BJ_5chain0EENtNtNtB1C_6traits8iterator8Iterator4next0EBN_.exit.thread33.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvXs2_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtB7_9IntoError10into_error(i8 noundef range(i8 0, 3) %0, i8 %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef %0, i8 %1) #25
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCsa9sSWSfjDbm_4jiff5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i8, ptr %0, align 8, !range !10, !noundef !5 ; 3 uses
  %i.i = icmp ne i8 %i.h, 10
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i8 %i.h, -4
  %i.k = icmp samesign ugt i8 %i.h, 3
  %narrow = select i1 %i.k, i8 %i.j, i8 6
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.aa
    i8 23, label %bb.af
    i8 24, label %bb.ag
    i8 25, label %bb.ah
    i8 26, label %bb.ai
    i8 27, label %bb.aj
    i8 28, label %bb.ak
    i8 29, label %bb.al
    i8 30, label %bb.am
    i8 31, label %bb.an
    i8 32, label %bb.ao
    i8 33, label %bb.ap
    i8 34, label %bb.aq
    i8 36, label %bb.ar
    i8 37, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !825, !noalias !826, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !825, !noalias !826, !noundef !5
  %i.p = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !825
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = tail call noundef zeroext i1 @_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_11BoundsErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error8durationNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !828
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !827, !noalias !829, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !827, !noalias !829, !noundef !5
  store ptr %i.x, ptr %i.g, align 8, !noalias !828
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !828
  %i.ab = call noundef zeroext i1 @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !828
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ae = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8friendlyNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ag = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc2822NtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ak = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.m:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.n:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.o:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = tail call noundef zeroext i1 @_RNvXs1_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.p:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = tail call noundef zeroext i1 @_RNvXs7_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_11FormatErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.q:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB5_10ParseErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.r:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = tail call noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.s:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ay = tail call noundef zeroext i1 @_RNvXs7_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_10ParseErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.t:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ba = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif6parserNtB5_10ParseErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.u:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = tail call noundef zeroext i1 @_RNvXs7_NtCsb09rMIQFAXO_9jiff_core6boundsNtB5_10RangeErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.v:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !831
  store ptr %i.bd, ptr %i.f, align 8, !noalias !831
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !831
  %i.be = load ptr, ptr %1, align 8, !alias.scope !830, !noalias !832, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !830, !noalias !832, !nonnull !5, !align !17, !noundef !5
  %i.bh = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bg, ptr noundef nonnull @149, ptr noundef nonnull %i.f), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !831
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.w:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.bj = load i8, ptr %i.bi, align 1, !range !15, !alias.scope !833, !noalias !834, !noundef !5
  switch i8 %i.bj, label %default.unreachable [
    i8 0, label %bb.y
    i8 1, label %bb.x
    i8 2, label %bb.z
  ]

default.unreachable:                              ; preds = %bb.aa, %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2
end_hunk_4
begin_hunk_5_@_RNvXs3_NtCsa9sSWSfjDbm_4jiff5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.z:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %1, align 8, !alias.scope !834, !noalias !833, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !834, !noalias !833, !nonnull !5, !align !17, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !5, !noalias !835, !nonnull !5
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 43) #26, !noalias !835, !inline_history !836
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.aa:                                            ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.cd = load i8, ptr %i.cc, align 1, !range !21, !alias.scope !837, !noalias !838, !noundef !5
  switch i8 %i.cd, label %default.unreachable [
    i8 0, label %bb.ad
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !839
  store ptr @138, ptr %i.c, align 8, !noalias !839
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !839
  %i.ce = load ptr, ptr %1, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !align !17, !noundef !5
  %i.ch = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noundef nonnull @139, ptr noundef nonnull %i.c), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !839
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cj = load i8, ptr %i.ci, align 2, !alias.scope !837, !noalias !838, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !839
  store i8 %i.cj, ptr %i.b, align 1, !noalias !839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !839
  store ptr %i.b, ptr %i.a, align 8, !noalias !839
  %.sroa.43.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i3, align 8, !noalias !839
  %i.ck = load ptr, ptr %1, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !align !17, !noundef !5
  %i.cn = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm, ptr noundef nonnull @140, ptr noundef nonnull %i.a), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ad:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %1, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !align !17, !noundef !5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !invariant.load !5, !noalias !839, !nonnull !5
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 33) #26, !noalias !839, !inline_history !840
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ae:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %1, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !noundef !5
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !838, !noalias !837, !nonnull !5, !align !17, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !5, !noalias !839, !nonnull !5
  %i.cz = tail call noundef zeroext i1 %i.cy(ptr noundef nonnull %i.cu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 54) #26, !noalias !839, !inline_history !840
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.af:                                            ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.db = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_22RoundingIncrementErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.da, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ag:                                            ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dd = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ah:                                            ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.df = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error4spanNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.de, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ai:                                            ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dh = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error4unitNtB5_15UnitConfigErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.dg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.aj:                                            ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dj = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_18SpecialBoundsErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.di, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ak:                                            ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dl = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error9timestampNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.al:                                            ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz9ambiguousNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.am:                                            ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = tail call noundef zeroext i1 @_RNvXs1_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz2dbNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.an:                                            ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dr = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz12concatenatedNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ao:                                            ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ap:                                            ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dv = tail call noundef zeroext i1 @_RNvXs0_NtNtNtNtCsa9sSWSfjDbm_4jiff5error2tz6system7enabledNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.aq:                                            ; preds = %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz8timezoneNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dw, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.ar:                                            ; preds = %bb.a
  %i.dy = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 18)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

bb.as:                                            ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ea = tail call noundef zeroext i1 @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dz, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit

_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.t, %bb.e ], [ %i.v, %bb.f ], [ %i.ab, %bb.g ], [ %i.ac, %bb.h ], [ %i.ae, %bb.i ], [ %i.ag, %bb.j ], [ %i.ai, %bb.k ], [ %i.ak, %bb.l ], [ %i.am, %bb.m ], [ %i.ao, %bb.n ], [ %i.aq, %bb.o ], [ %i.as, %bb.p ], [ %i.au, %bb.q ], [ %i.aw, %bb.r ], [ %i.ay, %bb.s ], [ %i.ba, %bb.t ], [ %i.bc, %bb.u ], [ %i.bh, %bb.v ], [ %i.ea, %bb.as ], [ %i.bp, %bb.x ], [ %i.db, %bb.af ], [ %i.dd, %bb.ag ], [ %i.df, %bb.ah ], [ %i.dh, %bb.ai ], [ %i.dj, %bb.aj ], [ %i.dl, %bb.ak ], [ %i.dn, %bb.al ], [ %i.dp, %bb.am ], [ %i.dr, %bb.an ], [ %i.dt, %bb.ao ], [ %i.dv, %bb.ap ], [ %i.dx, %bb.aq ], [ %i.dy, %bb.ar ], [ %i.bv, %bb.y ], [ %i.cb, %bb.z ], [ %i.ct, %bb.ad ], [ %i.cz, %bb.ae ], [ %i.ch, %bb.ab ], [ %i.cn, %bb.ac ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_13ParseIntErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !15, !noundef !5
  switch i8 %i.c, label %default.unreachable39 [
    i8 0, label %bb.c
    i8 1, label %bb.b
    i8 2, label %bb.e
  ]

default.unreachable39:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.e, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !17, !noundef !5
  %i.i = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @135, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !17, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !5, !nonnull !5
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 31) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.o, %bb.c ], [ %i.u, %bb.e ], [ %i.i, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.e:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !17, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !nonnull !5
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 43) #26
  br label %bb.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs3_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_10ParseErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !845
  store i64 1, ptr %i.a, align 8, !noalias !845
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !845
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !845
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 19, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !846
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !846 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !845

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !845

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !845
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !849
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !849 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEE3newB14_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEE3newB14_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs5_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_18ParseFractionErrorE4from(i8 noundef range(i8 0, 4) %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !854
  store i64 1, ptr %i.a, align 8, !noalias !854
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !854
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !854
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 26, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !855
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !855 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !854

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !854

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !854
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !854
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvXs6_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_18ParseFractionErrorNtB7_9IntoError10into_error(i8 noundef range(i8 0, 4) %0, i8 %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs5_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_18ParseFractionErrorE4from(i8 noundef %0, i8 %1) #25
  ret ptr %i.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs6_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7strtimeNtB9_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_11FormatErrorE4from(i8 noundef range(i8 0, 9) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !860
  store i64 1, ptr %i.a, align 8, !noalias !860
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !860
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !860
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 18, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !861
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !861 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !860

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !860

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !860
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !860
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_18ParseFractionErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load i8, ptr %0, align 1, !range !21, !noundef !5
  switch i8 %i.d, label %default.unreachable55 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.f
  ]

default.unreachable55:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @138, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !17, !noundef !5
  %i.h = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @139, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.j, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util6escapeNtB2_4ByteNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !17, !noundef !5
  %i.n = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @140, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !17, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !5, !nonnull !5
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 33) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.t, %bb.d ], [ %i.z, %bb.f ], [ %i.h, %bb.b ], [ %i.n, %bb.c ]
  ret i1 %.sroa.0.0.in

bb.f:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !17, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !5, !nonnull !5
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 54) #26
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCsa9sSWSfjDbm_4jiff5errorNtB5_10AdhocErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define { ptr, i64 } @_RNvXs8_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_14OsStrUtf8ErrorINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE4from(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !864
  %i.b = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %1, i64 noundef 1) #22, !noalias !864 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %1) #21
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false)
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %1, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: cold noinline noreturn nounwind nonlazybind memory(inaccessiblemem: write) uwtable
define noalias noundef nonnull ptr @_RNvXs9_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_17CrateFeatureErrorE4from() unnamed_addr #6 {
bb.a:
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs9_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14OsStrUtf8ErrorE4from(ptr noalias noundef nonnull %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !869
  store i64 1, ptr %i.a, align 8, !noalias !869
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !869
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !869
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 24, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !870
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !870 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !869

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !869

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !869
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !869
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsa9sSWSfjDbm_4jiff5error5ErrorENtNtB7_3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !873, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !873, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !873, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !873
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !879
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !880, !noalias !879, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !880, !noalias !879, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !880, !noalias !879
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !880, !noalias !879
  ret i1 false
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_22RoundingIncrementErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 6) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4utilNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_22RoundingIncrementErrorE4from(i8 noundef %0) #25
  ret ptr %i.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz2dbNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !885
  store i64 1, ptr %i.a, align 8, !noalias !885
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !885
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !885
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 34, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !886
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !886 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !885

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !885

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !885
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt4utilNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i16 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !891
  store i64 1, ptr %i.a, align 8, !noalias !891
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !891
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !891
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 16, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i16 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !892
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !892 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !891

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !891

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !891
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !891
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt6offsetNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef range(i8 0, 24) %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !897
  store i64 1, ptr %i.a, align 8, !noalias !897
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !897
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !897
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 12, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !898
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !898 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !897

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !897

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !897
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !897
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i24 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !903
  store i64 1, ptr %i.a, align 8, !noalias !903
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !903
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !903
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 13, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i24 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !904
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !904 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !903

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !903

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !903
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !903
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef range(i8 0, 14) %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !909
  store i64 1, ptr %i.a, align 8, !noalias !909
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !909
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !909
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 14, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !910
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !910 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !909

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !909

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !909
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !909
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8friendlyNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef range(i8 0, 11) %0, i8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !915
  store i64 1, ptr %i.a, align 8, !noalias !915
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !915
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !915
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 11, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %0, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1
  %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 %1, ptr %.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !916
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !916 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !915

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !915

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !915
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !915
  ret ptr %i.d
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef nonnull ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8temporalNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i64 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !921
  store i64 1, ptr %i.a, align 8, !noalias !921
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !921
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !noalias !921
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 15, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i64 %0, ptr %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !922
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #22, !noalias !922 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #21
          to label %.noexc.i unwind label %bb.c, !noalias !921

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #23
          to label %bb.e unwind label %bb.d, !noalias !921

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !921
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvXs4_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9ErrorKindE4from.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !921
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NtCsa9sSWSfjDbm_4jiff5errorNtB5_17CrateFeatureErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 45) ; 0 uses
  ret i1 true
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvXsa_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_14OsStrUtf8ErrorNtB7_9IntoError10into_error(ptr noalias noundef nonnull %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs9_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14OsStrUtf8ErrorE4from(ptr noalias noundef nonnull %0, i64 noundef %1) #25
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB5_14OsStrUtf8ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsn_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !17, !noundef !5
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @149, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NtCsa9sSWSfjDbm_4jiff5errorNtB5_7IOErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsd_NtCsa9sSWSfjDbm_4jiff5errorNtB5_7IOErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 7)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151)
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_NtCsa9sSWSfjDbm_4jiff5errorNtB5_13FilePathErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  store ptr %i.c, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = call noundef zeroext i1 @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsh_NtCsa9sSWSfjDbm_4jiff5errorNtB5_13FilePathErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 13)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164)
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCsa9sSWSfjDbm_4jiff5errorNtB5_9ErrorKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = load i8, ptr %0, align 8, !range !10, !noundef !5 ; 3 uses
  %i.ak = icmp ne i8 %i.aj, 10
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i8 %i.aj, -4
  %i.am = icmp samesign ugt i8 %i.aj, 3
  %narrow = select i1 %i.am, i8 %i.al, i8 6
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ag
    i8 32, label %bb.ah
    i8 33, label %bb.ai
    i8 34, label %bb.aj
    i8 36, label %bb.ak
    i8 37, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ai, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 5, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ap, ptr %i.ah, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 6, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ar, ptr %i.ag, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 5, ptr noundef nonnull %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.at, ptr %i.af, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 8, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ae, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 8, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @178)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.am

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %0, ptr %i.ad, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 3, ptr noundef nonnull %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
end_hunk_5
