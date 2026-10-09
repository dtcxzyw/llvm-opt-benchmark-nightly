Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvNtCsjjpCCFGI3ul_14lance_encoding11compression36try_variable_packed_struct_per_value:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding11compression19CompressionStrategyEL_E9drop_slowBL_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.b)
          to label %.thread unwind label %bb.u

bb.p:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %2, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !50924
  %i.ah = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !50924 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.q, label %bb.t, !prof !77

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #66
          to label %.noexc26 unwind label %bb.r

.noexc26:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical6packed35PackedStructVariablePerValueEncoderEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #67
          to label %.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @2344, ptr %i.am, align 8
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding11compression19CompressionStrategyEL_EEB1e_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding11compression19CompressionStrategyEL_EEB1e_.exit: ; preds = %bb.m, %bb.l, %bb.t
  ret void

bb.u:                                             ; preds = %bb.w, %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

.thread:                                          ; preds = %bb.v, %bb.w, %bb.o, %bb.n, %bb.r
  %.pn31 = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.ac, %bb.o ], [ %i.ac, %bb.n ], [ %i.ao, %bb.w ], [ %i.ao, %bb.v ]
  resume { ptr, i32 } %.pn31

bb.v:                                             ; preds = %bb.e, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !50925
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjpCCFGI3ul_14lance_encoding11compression19CompressionStrategyEL_E9drop_slowBL_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f)
          to label %.thread unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsjjpCCFGI3ul_14lance_encoding11compression37estimate_rle_width_and_size_from_data(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !75
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !75 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50943
  call fastcc void @_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle26collect_run_length_entries(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.f, i64 noundef %i.h, i64 noundef range(i64 0, 2) %2, i64 %3), !noalias !50942
  %i.i = load i8, ptr %i.d, align 8, !range !88, !noalias !50943, !noundef !75 ; 2 uses
  %.not.i = icmp eq i8 %i.i, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.413.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i, i64 7, i1 false), !noalias !50944
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.410.sroa.6.0.copyload.i = load i64, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !50943
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx.i, i64 24, i1 false), !noalias !50944
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x i64>, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !noalias !50943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50943
  store i8 %i.i, ptr %i.j, align 8, !alias.scope !50942, !noalias !50944
  store <2 x i64> %i.k, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !50942, !noalias !50944
  %.sroa.413.sroa.6.0..sroa.413.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.410.sroa.6.0.copyload.i, ptr %.sroa.413.sroa.6.0..sroa.413.0..sroa_idx.sroa_idx.i, align 16, !alias.scope !50942, !noalias !50944
  store i64 1, ptr %0, align 16, !alias.scope !50942, !noalias !50944
  br label %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle23select_run_length_width.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.029.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !50943
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !50943
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.530.0.copyload.i = load i64, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !50943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50943
  store i64 %i.h, ptr %i.c, align 8, !noalias !50946
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.h)
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.split.i.i, label %.split36.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.h, i1 true)
  %.off.i.i = add nsw i64 %i.o, -3
  %switch.i.i = icmp ult i64 %.off.i.i, 4
  br i1 %switch.i.i, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle14RunLengthWidthEIBX_yEEINtB5_7ZipImplBW_B2C_E3nthB1u_.exit.i.i, label %.split36.i.i

.split36.i.i:                                     ; preds = %.split.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50946
  store ptr %i.c, ptr %i.a, align 8, !noalias !50946
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !50946
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1443, ptr noundef nonnull %i.a), !noalias !50947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50946
  %.sroa.056.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !50946 ; 3 uses
  %.sroa.558.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.558.0.copyload.i.i = load ptr, ptr %.sroa.558.0..sroa_idx.i.i, align 8, !noalias !50946 ; 3 uses
  %.sroa.661.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.661.0.copyload.i.i = load i64, ptr %.sroa.661.0..sroa_idx.i.i, align 8, !noalias !50946
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !50948
  %i.p = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !50948 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i, !prof !77

bb.d:                                             ; preds = %.split36.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc.i.i unwind label %bb.e, !noalias !50946

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %.sroa.056.0.copyload.i.i, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.558.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.558.0.copyload.i.i, i64 noundef %.sroa.056.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !50949
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.r

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i: ; preds = %.split36.i.i
  store i64 %.sroa.056.0.copyload.i.i, ptr %i.p, align 8, !noalias !50946
  %.sroa.558.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.558.0.copyload.i.i, ptr %.sroa.558.0..sroa_idx59.i.i, align 8, !noalias !50946
  %.sroa.661.0..sroa_idx62.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.661.0.copyload.i.i, ptr %.sroa.661.0..sroa_idx62.i.i, align 8, !noalias !50946
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.t, align 8, !alias.scope !50950, !noalias !50951
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.44.0..sroa_idx.i.i, align 16, !alias.scope !50950, !noalias !50951
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @83, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !50950, !noalias !50951
  %.sroa.66.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @2516, ptr %.sroa.66.0..sroa_idx.i.i, align 16, !alias.scope !50950, !noalias !50951
  br label %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle36select_run_length_width_from_entries.exit.i

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle14RunLengthWidthEIBX_yEEINtB5_7ZipImplBW_B2C_E3nthB1u_.exit.i.i: ; preds = %.split.i.i
  %i.u = lshr i64 %i.h, 3                         ; 3 uses
  %i.v = zext i64 %.sroa.029.0.copyload.i to i128
  %narrow47.i.i = add nuw nsw i64 %i.u, 1
  %i.w = zext nneg i64 %narrow47.i.i to i128
  %i.x = mul nuw nsw i128 %i.v, %i.w              ; 2 uses
  %i.y = zext i64 %.sroa.4.0.copyload.i to i128
  %narrow.peel.i.i = add nuw nsw i64 %i.u, 2
  %i.z = zext nneg i64 %narrow.peel.i.i to i128
  %i.aa = mul nuw nsw i128 %i.y, %i.z             ; 2 uses
  %i.ab = icmp samesign ult i128 %i.aa, %i.x
  %.sroa.09.1.peel.i.i = tail call i128 @llvm.umin.i128(i128 %i.aa, i128 %i.x) ; 2 uses
  %.sroa.08.1.peel.i.i = zext i1 %i.ab to i8
  %narrow.i.i = add nuw nsw i64 %i.u, 4
  %4 = zext nneg i64 %narrow.i.i to i128
  %i.ac = zext i64 %.sroa.530.0.copyload.i to i128
  %i.ad = mul nuw nsw i128 %i.ac, %4              ; 2 uses
  %i.ae = icmp samesign ult i128 %i.ad, %.sroa.09.1.peel.i.i
  %.sroa.09.1.i.i = tail call i128 @llvm.umin.i128(i128 %i.ad, i128 %.sroa.09.1.peel.i.i)
  %.sroa.08.1.i.i = select i1 %i.ae, i8 2, i8 %.sroa.08.1.peel.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.08.1.i.i, ptr %i.af, align 16, !alias.scope !50950, !noalias !50951
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %.sroa.09.1.i.i, ptr %i.ag, align 16, !alias.scope !50950, !noalias !50951
  br label %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle36select_run_length_width_from_entries.exit.i

_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle36select_run_length_width_from_entries.exit.i: ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle14RunLengthWidthEIBX_yEEINtB5_7ZipImplBW_B2C_E3nthB1u_.exit.i.i, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %storemerge.i.i = phi i64 [ 0, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle14RunLengthWidthEIBX_yEEINtB5_7ZipImplBW_B2C_E3nthB1u_.exit.i.i ], [ 1, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsjjpCCFGI3ul_14lance_encoding.exit.i.i ]
  store i64 %storemerge.i.i, ptr %0, align 16, !alias.scope !50950, !noalias !50951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50943
  br label %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle23select_run_length_width.exit

_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle23select_run_length_width.exit: ; preds = %bb.b, %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical3rle36select_run_length_width_from_entries.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { ptr, ptr } @_RNvNtCsjjpCCFGI3ul_14lance_encoding11compression38try_uncompressed_fixed_width_miniblock(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #32 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !149, !noundef !75 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775804
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !range !99, !noundef !75
  %.not = icmp ne i64 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 4
  %or.cond = select i1 %.not, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !75, !noundef !75
  %i.k = load i32, ptr %i.j, align 1
  %i.l = icmp ne i32 %i.k, 1701736302
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  %spec.select = select i1 %i.n, ptr inttoptr (i64 1 to ptr), ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.o = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr @2358, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsjjpCCFGI3ul_14lance_encoding4data18encode_bitmap_data(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !50984
  %i.g = mul i64 %2, 40                           ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %2, 230584300921369395
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !50985
  %i.i = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, 17) 8) #63, !noalias !50985 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #66, !noalias !50984
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %2, %bb.c ] ; 2 uses
  %i.k = icmp samesign ule i64 %2, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.k)
  store i64 %.sroa.4.0.i.i, ptr %i.e, align 8, !noalias !50984
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.10.0.i.i, ptr %i.l, align 8, !noalias !50984
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50987)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %bb.g
  %.val15.i.i.i.i.i.i = phi i64 [ %i.z, %bb.g ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferE7reserveCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val15.i.i.i.i.i.i
  %i.o = invoke noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray14as_boolean_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !50988 ; 5 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray10as_booleanCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, !prof !81

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4571, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4572) #66
          to label %.noexc16.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !50988

.noexc16.i.i.i.i.i.i:                             ; preds = %bb.e
  unreachable

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray10as_booleanCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !noalias !50989, !nonnull !75, !noundef !75 ; 2 uses
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !50989
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray10as_booleanCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray10as_booleanCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !50989, !noundef !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = load i64, ptr %i.v, align 8, !noalias !50989, !noundef !75
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.10.0.i.i, i64 %.val15.i.i.i.i.i.i ; 4 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.y = load <2 x i64>, ptr %i.u, align 8, !noalias !50989
  store ptr %i.p, ptr %i.x, align 8, !noalias !50990
  store ptr %i.t, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !50990
  store <2 x i64> %i.y, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !50990
  %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %i.w, ptr %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !50990
  %i.z = add nuw nsw i64 %.val15.i.i.i.i.i.i, 1   ; 2 uses
  %i.aa = icmp eq i64 %i.z, %2
  br i1 %i.aa, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2J_5slice4iter4IterINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCNvNtCsjjpCCFGI3ul_14lance_encoding4data18encode_bitmap_data0EE9from_iterB4Z_.exit, label %.preheader.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  store i64 %.val15.i.i.i.i.i.i, ptr %i.m, align 8, !alias.scope !50991, !noalias !50992
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef align 8 dereferenceable(24) %i.e) #67
          to label %common.resume unwind label %bb.h, !noalias !50984

bb.h:                                             ; preds = %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !50984
  unreachable

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2J_5slice4iter4IterINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCNvNtCsjjpCCFGI3ul_14lance_encoding4data18encode_bitmap_data0EE9from_iterB4Z_.exit: ; preds = %bb.g
  store i64 %2, ptr %i.m, align 8, !alias.scope !50991, !noalias !50992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !50984
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !75, !noundef !75 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !75 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50993
  %i.ag = lshr i64 %3, 3
  %i.ah = and i64 %3, 7
  %.not.i = icmp ne i64 %i.ah, 0
  %i.ai = zext i1 %.not.i to i64
  %.sroa.02.0.i = add nuw nsw i64 %i.ag, %i.ai    ; 4 uses
  %i.aj = and i64 %.sroa.02.0.i, 63
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.split.thread.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB2J_5slice4iter4IterINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENCNvNtCsjjpCCFGI3ul_14lance_encoding4data18encode_bitmap_data0EE9from_iterB4Z_.exit
  %reass.sub.i.i = and i64 %.sroa.02.0.i, 4611686018427387840
  %i.al = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %.sroa.02.0.i
  br i1 %i.am, label %bb.j, label %.split.thread.i.i, !prof !81

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1314, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1316) #66
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
end_hunk_0
