inline.NumInlined: 153
inline.NumDeleted: 73
begin_hunk_0_@_RNvMsz_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB18_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE10dying_nextB2u_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1K_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE10take_frontB36_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !343, !noundef !4
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1L_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE16deallocating_endNtNtBc_5alloc6GlobalEB37_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1T_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB3f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1L_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE16deallocating_endNtNtBc_5alloc6GlobalEB37_.exit

_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1L_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE16deallocating_endNtNtBc_5alloc6GlobalEB37_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1K_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE10init_frontB36_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !346 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !349
  invoke void @_RINvMsj_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1T_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB3f_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !357

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !349, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1L_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB37_.exit, !prof !12

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
          to label %.noexc1.i.i unwind label %bb.g, !noalias !358

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !346
  unreachable

_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1L_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB37_.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1L_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB37_.exit, %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBc_6borrow3CoweEEIB1L_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEE16deallocating_endNtNtBc_5alloc6GlobalEB37_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE10dying_nextB1w_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE10take_frontB28_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !359, !noundef !4
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalEB29_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2h_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalEB29_.exit

_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalEB29_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE10init_frontB28_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !362 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !365
  invoke void @_RINvMsj_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2h_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !373

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !365, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB29_.exit, !prof !12

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
          to label %.noexc1.i.i unwind label %bb.g, !noalias !374

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !362
  unreachable

_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB29_.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB29_.exit, %_RINvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalEB29_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsiS54oC2UhYT_4toml6macros11insert_toml(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.b = invoke fastcc noundef nonnull align 8 ptr @_RNvNtCsiS54oC2UhYT_4toml6macros8traverse(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.b, %bb.f
  %.pn5 = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %.pn5

bb.f:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #20
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvNtCsiS54oC2UhYT_4toml6macros8traverse(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit
  %.sroa.0.093 = phi ptr [ %0, %.lr.ph ], [ %i.az, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit ] ; 4 uses
  %.sroa.012.092 = phi ptr [ %1, %.lr.ph ], [ %i.l, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit ] ; 3 uses
  %.sroa.10.091 = phi i64 [ undef, %.lr.ph ], [ %.sroa.10.1, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.012.092, i64 16 ; 2 uses
  %i.m = load ptr, ptr %.sroa.012.092, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.092, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.093, i64 26
  %i.q = load i8, ptr %i.p, align 2, !range !181, !noundef !4 ; 2 uses
  %i.r = icmp eq i8 %i.q, 7
  br i1 %i.r, label %bb.c, label %bb.f

._crit_edge:                                      ; preds = %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.az, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit ]
  ret ptr %.sroa.0.0.lcssa

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.093, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.093, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr [32 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -32
  %.phi.trans.insert = getelementptr i8, ptr %i.w, i64 -6
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !181
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.y = phi i8 [ %.pre, %bb.e ], [ %i.q, %bb.b ]
  %.sroa.0.1 = phi ptr [ %i.x, %bb.e ], [ %.sroa.0.093, %bb.b ] ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 26 ; 2 uses
  %i.aa = icmp samesign ult i8 %i.y, 2
  br i1 %i.aa, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.0.1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %.sroa.0.1, align 8
  %.sroa.017.sroa.6.0..sroa.0.0.7.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.sroa.017.sroa.6.0..sroa.0.0.7.sroa_idx, i8 0, i64 11, i1 false)
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %.sroa.0.1, align 8
  %.sroa.017.sroa.6.0..sroa.0.0.8.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.sroa.017.sroa.6.0..sroa.0.0.8.sroa_idx, i8 0, i64 11, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load ptr, ptr %.sroa.0.1, align 8, !alias.scope !375, !noalias !378, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !375, !noalias !378, !noundef !4
  call void @_RINvMs_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1Z_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %i.ac, i64 noundef %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o), !noalias !375
  %i.af = load i64, ptr %i.b, align 8, !range !5, !noalias !380, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit.thread, label %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit

_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit.thread: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit: ; preds = %bb.k
  %i.ah = call { ptr, ptr } @_RNvMsP_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB23_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i), !noalias !375
  %i.ai = extractvalue { ptr, ptr } %i.ah, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not50 = icmp eq ptr %i.ai, null
  br i1 %.not50, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit.thread, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.sroa.025.sroa.5.0..sroa_idx, i8 0, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aj = load i8, ptr %i.z, align 2, !range !181, !noundef !4
  %i.ak = icmp samesign ult i8 %i.aj, 2
  br i1 %i.ak, label %bb.n, label %bb.q, !prof !238

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiS54oC2UhYT_4toml5value5ValueEEB11_.exit, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit
  %.sroa.10.1 = phi i64 [ %.sroa.10.274, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiS54oC2UhYT_4toml5value5ValueEEB11_.exit ], [ %.sroa.10.091, %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE3geteEB1x_.exit ]
  %i.al = load i8, ptr %i.z, align 2, !range !181, !noundef !4
  %i.am = icmp samesign ult i8 %i.al, 2
  br i1 %i.am, label %bb.y, label %bb.aa, !prof !238

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i54 = icmp slt i64 %i.o, 0
  br i1 %.not.i54, label %bb.r, label %bb.o, !prof !298

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i64 %i.o, 0
  br i1 %i.an, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml.exit.thread68, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !381
  %i.ao = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !381 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.l
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %bb.u unwind label %bb.w

bb.r:                                             ; preds = %bb.n, %bb.p
  %.sroa.4.0.ph = phi i64 [ 1, %bb.p ], [ 0, %bb.n ]
  %.sroa.10.2.ph = phi i64 [ %i.o, %bb.p ], [ %.sroa.10.091, %bb.n ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.10.2.ph) #19
          to label %bb.u unwind label %bb.w

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml.exit.thread68: ; preds = %bb.o, %bb.s
  %i.aq = phi ptr [ %i.ao, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.o ]
  %.sroa.10.274 = phi i64 [ %3, %bb.s ], [ 1, %bb.o ]
  store i64 %i.o, ptr %i.d, align 8
  store ptr %i.aq, ptr %.sroa.445.0..sroa_idx, align 8
  store i64 %i.o, ptr %.sroa.646.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ar = load i8, ptr %i.j, align 2, !range !384, !alias.scope !385, !noundef !4
  %i.as = icmp eq i8 %i.ar, -1
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiS54oC2UhYT_4toml5value5ValueEEB11_.exit, label %bb.t

bb.s:                                             ; preds = %bb.p
  %3 = ptrtoint ptr %i.ao to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml.exit.thread68

bb.t:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml.exit.thread68
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiS54oC2UhYT_4toml5value5ValueEEB11_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsiS54oC2UhYT_4toml5value5ValueEEB11_.exit: ; preds = %bb.t, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml.exit.thread68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.u:                                             ; preds = %bb.r, %bb.q
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.h
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.w ], [ %i.ab, %bb.h ]
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.r, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #20
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.y:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.au = load ptr, ptr %.sroa.0.1, align 8, !alias.scope !388, !noalias !391, !noundef !4 ; 2 uses
  %.not.i55 = icmp eq ptr %i.au, null
  br i1 %.not.i55, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !388, !noalias !391, !noundef !4
  call void @_RINvMs_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueNtB1i_14LeafOrInternalE11search_treeeEB1X_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.au, i64 noundef %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o), !noalias !388
  %i.ax = load i64, ptr %i.a, align 8, !range !5, !noalias !393, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.ab, label %_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit

_RINvMsi_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueE7get_muteEB1x_.exit: ; preds = %bb.z
  %i.az = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k), !noalias !388 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp eq ptr %i.l, %i.g
  br i1 %i.ba, label %._crit_edge, label %bb.b

bb.aa:                                            ; preds = %bb.m
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
  unreachable

bb.ab:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsiS54oC2UhYT_4toml6macros9push_toml(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = tail call fastcc noundef nonnull align 8 ptr @_RNvNtCsiS54oC2UhYT_4toml6macros8traverse(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 26 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !range !181, !noundef !4
  %i.e = icmp eq i8 %i.d, 7
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %.thread unwind label %bb.c

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.b, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  store i8 7, ptr %i.c, align 2
  br label %common.resume

.thread:                                          ; preds = %bb.b
  store i64 0, ptr %i.b, align 8
  %.sroa.0.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.0..sroa_idx7, align 8
  %.sroa.0.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx9, align 8
  store i8 7, ptr %i.c, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %.sroa.013.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.sroa.013.sroa.5.0..sroa_idx24, i8 0, i64 11, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !394, !noalias !397 ; 3 uses
  %.pre23 = load i64, ptr %i.b, align 8, !range !17, !alias.scope !394, !noalias !397
  %i.g = icmp eq i64 %.pre, %.pre23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %.sroa.013.sroa.5.0..sroa_idx, i8 0, i64 11, i1 false)
  br i1 %i.g, label %bb.e, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsiS54oC2UhYT_4toml5value5ValueE8push_mutBJ_.exit

bb.e:                                             ; preds = %.thread, %bb.d
  %i.h = phi i64 [ 0, %.thread ], [ %.pre, %bb.d ]
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsiS54oC2UhYT_4toml5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsiS54oC2UhYT_4toml5value5ValueE8push_mutBJ_.exit unwind label %bb.f, !noalias !397

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsiS54oC2UhYT_4toml5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #20
          to label %common.resume unwind label %bb.g, !noalias !394

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21, !noalias !394
  unreachable

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsiS54oC2UhYT_4toml5value5ValueE8push_mutBJ_.exit: ; preds = %bb.d, %bb.e
  %i.k = phi i64 [ %.pre, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !394, !noalias !397, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !394
  %i.p = add i64 %i.k, 1
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !394, !noalias !397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtB8_6borrow3CoweEEIB15_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2r_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.c, align 8
  call void @_RNvXsy_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCsbSJeAGZoK6E_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB18_NtNtNtNtCsiS54oC2UhYT_4toml2de6parser7devalue7DeValueEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !inline_history !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsiS54oC2UhYT_4toml5value5ValueENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
