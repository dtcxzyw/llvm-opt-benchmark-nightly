inline.NumInlined: 211
inline.NumDeleted: 93
begin_hunk_0_@_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal11i8_suffixed:.split
  store ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @15, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal11u8_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCshzWfHUSfYae_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @16, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12f32_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, float noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store float %1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtCshzWfHUSfYae_4core3fmt5floatfNtB7_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @17, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12f64_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store double %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @18, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12i16_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %1, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs4_NtNtNtCshzWfHUSfYae_4core3fmt3num3impsNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @19, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12i32_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12i64_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXse_NtNtNtCshzWfHUSfYae_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @21, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12u16_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %1, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCshzWfHUSfYae_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @22, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12u32_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @23, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal12u64_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsd_NtNtNtCshzWfHUSfYae_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal13i128_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  store i128 %1, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtCshzWfHUSfYae_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal13i8_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [3 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !155
  %i.e = icmp slt i8 %1, 0
  br i1 %i.e, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !155
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !155
  %i.f = load i64, ptr %i.b, align 8, !range !129, !noalias !155, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noalias !155, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15.i, label %bb.b, !prof !95

.noexc15.i:                                       ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !155
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !155
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !155
  %i.l = load i64, ptr %i.a, align 8, !range !129, !noalias !155, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !130, !noalias !155, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17.i, label %bb.d, !prof !95

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !155
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #23, !noalias !155
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !noalias !155, !nonnull !5, !noundef !5
  %i.s = icmp samesign ugt i64 %i.i, 2
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !155
  store i64 %i.i, ptr %i.c, align 8, !noalias !155
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !155
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !155
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i8 [ %i.x, %bb.e ], [ %1, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMs0_NtNtNtCshzWfHUSfYae_4core3fmt3num3imph4__fmt(i8 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.d, i64 noundef 3)
          to label %bb.f unwind label %bb.i, !noalias !155 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.u = load ptr, ptr %i.p, align 8, !noalias !155, !nonnull !5, !noundef !5
  %i.v = icmp samesign ugt i64 %i.o, 3
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  store i64 %i.o, ptr %i.c, align 8, !noalias !155
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !155
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !155
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !155

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !158, !noalias !155, !nonnull !5, !noundef !5
  store i8 45, ptr %i.w, align 1, !noalias !155
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !158, !noalias !155
  %i.x = sub i8 0, %1
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc20.i unwind label %bb.i, !noalias !155

.noexc20.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !161, !noalias !155, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !161, !noalias !155, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !noalias !155
  %.pre.i.i = load i64, ptr %i.aa, align 8, !alias.scope !161, !noalias !155
  br label %_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.h unwind label %bb.j, !noalias !155

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !155
  unreachable

_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.ah = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ab, %.noexc20.i ]
  %i.ai = add i64 %i.ah, %i.z
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !161, !noalias !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !155
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal13u128_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  store i128 %1, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCshzWfHUSfYae_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @26, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal13u8_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [3 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @_RNvMs0_NtNtNtCshzWfHUSfYae_4core3fmt3num3imph4__fmt(i8 noundef %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 3) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14byte_character(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 16 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.e = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !130, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp samesign ugt i64 %i.h, 1
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i16 10082, ptr %i.k, align 1
  store i64 %i.h, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 22 uses
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8
  switch i8 %1, label %bb.d [
    i8 0, label %bb.e
    i8 9, label %bb.f
    i8 10, label %bb.g
    i8 13, label %bb.h
    i8 39, label %bb.i
    i8 92, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = add i8 %1, -32
  %or.cond = icmp ult i8 %i.m, 95
  br i1 %or.cond, label %bb.n, label %bb.m

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit unwind label %bb.k

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit: ; preds = %bb.e
  %i.n = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !164, !noundef !5 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !164, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i16 12380, ptr %i.q, align 1
  %.pre.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !164
  %i.r = add i64 %.pre.i, 2                       ; 2 uses
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !164
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit21 unwind label %bb.k

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit21: ; preds = %bb.f
  %i.s = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !167, !noundef !5 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !167, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i16 29788, ptr %i.v, align 1
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14f32_unsuffixed:bb.a
          to label %common.resume unwind label %bb.i

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.f
  %i.v = extractvalue { i64, i64 } %i.p, 0
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.g, %.preheader.i.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit unwind label %bb.h

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit: ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  %i.x = load i64, ptr %i.m, align 8, !alias.scope !199, !noundef !5 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %i.k, align 8, !alias.scope !199, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i16 12334, ptr %i.aa, align 1
  %.pre.i = load i64, ptr %i.m, align 8, !alias.scope !199
  %i.ab = add i64 %.pre.i, 2
  store i64 %i.ab, ptr %i.m, align 8, !alias.scope !199
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3: ; preds = %.lr.ph.i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14f64_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store double %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !202
  store i64 0, ptr %i.c, align 8, !noalias !202
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !202
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !202
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.f, align 8, !noalias !202
  store ptr %i.c, ptr %i.b, align 8, !noalias !202
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @14, ptr %i.g, align 8, !noalias !202
  %i.h = invoke noundef zeroext i1 @_RNvXs7_NtNtCshzWfHUSfYae_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !206

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %common.resume unwind label %bb.e, !noalias !206

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsluekWoTk8SK_11proc_macro2.exit, !prof !95

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #24
          to label %.noexc.i unwind label %bb.b, !noalias !206

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !206
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.u, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsluekWoTk8SK_11proc_macro2.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !202
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 4 uses
  %i.o = icmp samesign ult i64 %i.n, 16
  br i1 %i.o, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsluekWoTk8SK_11proc_macro2.exit
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

bb.f:                                             ; preds = %_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsluekWoTk8SK_11proc_macro2.exit
  %i.p = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.n)
          to label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit unwind label %bb.h

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.g
  %.sroa.01.05.i.i = phi i64 [ %i.t, %bb.g ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.05.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !208, !noundef !5
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.t = add nuw nsw i64 %.sroa.01.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.n
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

bb.h:                                             ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #22
          to label %common.resume unwind label %bb.i

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.f
  %i.v = extractvalue { i64, i64 } %i.p, 0
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.g, %.preheader.i.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 2)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit unwind label %bb.h

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit: ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  %i.x = load i64, ptr %i.m, align 8, !alias.scope !213, !noundef !5 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %i.k, align 8, !alias.scope !213, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i16 12334, ptr %i.aa, align 1
  %.pre.i = load i64, ptr %i.m, align 8, !alias.scope !213
  %i.ab = add i64 %.pre.i, 2
  store i64 %i.ab, ptr %i.m, align 8, !alias.scope !213
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread3: ; preds = %.lr.ph.i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsluekWoTk8SK_11proc_macro2.exit, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14i16_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [5 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !216
  %i.e = icmp slt i16 %1, 0
  br i1 %i.e, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !216
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !216
  %i.f = load i64, ptr %i.b, align 8, !range !129, !noalias !216, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noalias !216, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15.i, label %bb.b, !prof !95

.noexc15.i:                                       ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !216
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !216
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !216
  %i.l = load i64, ptr %i.a, align 8, !range !129, !noalias !216, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !130, !noalias !216, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17.i, label %bb.d, !prof !95

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !216
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #23, !noalias !216
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !noalias !216, !nonnull !5, !noundef !5
  %i.s = icmp samesign ugt i64 %i.i, 4
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !216
  store i64 %i.i, ptr %i.c, align 8, !noalias !216
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !216
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !216
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i16 [ %i.x, %bb.e ], [ %1, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMs5_NtNtNtCshzWfHUSfYae_4core3fmt3num3impt4__fmt(i16 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.d, i64 noundef 5)
          to label %bb.f unwind label %bb.i, !noalias !216 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.u = load ptr, ptr %i.p, align 8, !noalias !216, !nonnull !5, !noundef !5
  %i.v = icmp samesign ugt i64 %i.o, 5
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !216
  store i64 %i.o, ptr %i.c, align 8, !noalias !216
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !216
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !216
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !216

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !219, !noalias !216, !nonnull !5, !noundef !5
  store i8 45, ptr %i.w, align 1, !noalias !216
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !219, !noalias !216
  %i.x = sub i16 0, %1
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc20.i unwind label %bb.i, !noalias !216

.noexc20.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !222, !noalias !216, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !222, !noalias !216, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !noalias !216
  %.pre.i.i = load i64, ptr %i.aa, align 8, !alias.scope !222, !noalias !216
  br label %_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.h unwind label %bb.j, !noalias !216

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !216
  unreachable

_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.ah = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ab, %.noexc20.i ]
  %i.ai = add i64 %i.ah, %i.z
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !222, !noalias !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !216
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14i32_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [10 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !225
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !225
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !225
  %i.f = load i64, ptr %i.b, align 8, !range !129, !noalias !225, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noalias !225, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15.i, label %bb.b, !prof !95

.noexc15.i:                                       ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !225
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !225
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !225
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !225
  %i.l = load i64, ptr %i.a, align 8, !range !129, !noalias !225, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !130, !noalias !225, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17.i, label %bb.d, !prof !95

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !225
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #23, !noalias !225
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !noalias !225, !nonnull !5, !noundef !5
  %i.s = icmp samesign ugt i64 %i.i, 9
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  store i64 %i.i, ptr %i.c, align 8, !noalias !225
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !225
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !225
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i32 [ %i.x, %bb.e ], [ %1, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMsa_NtNtNtCshzWfHUSfYae_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.d, i64 noundef 10)
          to label %bb.f unwind label %bb.i, !noalias !225 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.u = load ptr, ptr %i.p, align 8, !noalias !225, !nonnull !5, !noundef !5
  %i.v = icmp samesign ugt i64 %i.o, 10
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !225
  store i64 %i.o, ptr %i.c, align 8, !noalias !225
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !225
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !225
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !225

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !228, !noalias !225, !nonnull !5, !noundef !5
  store i8 45, ptr %i.w, align 1, !noalias !225
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !228, !noalias !225
  %i.x = sub i32 0, %1
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc20.i unwind label %bb.i, !noalias !225

.noexc20.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !231, !noalias !225, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !231, !noalias !225, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !noalias !225
  %.pre.i.i = load i64, ptr %i.aa, align 8, !alias.scope !231, !noalias !225
  br label %_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.h unwind label %bb.j, !noalias !225

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !225
  unreachable

_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.ah = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ab, %.noexc20.i ]
  %i.ai = add i64 %i.ah, %i.z
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !231, !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !225
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14i64_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [19 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !234
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !234
  %i.f = load i64, ptr %i.b, align 8, !range !129, !noalias !234, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noalias !234, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15.i, label %bb.b, !prof !95

.noexc15.i:                                       ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !234
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !234
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !234
  %i.l = load i64, ptr %i.a, align 8, !range !129, !noalias !234, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !130, !noalias !234, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17.i, label %bb.d, !prof !95

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !234
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #23, !noalias !234
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !noalias !234, !nonnull !5, !noundef !5
  %i.s = icmp samesign ugt i64 %i.i, 18
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  store i64 %i.i, ptr %i.c, align 8, !noalias !234
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !234
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !234
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i64 [ %i.x, %bb.e ], [ %1, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMsf_NtNtNtCshzWfHUSfYae_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.d, i64 noundef 19)
          to label %bb.f unwind label %bb.i, !noalias !234 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.u = load ptr, ptr %i.p, align 8, !noalias !234, !nonnull !5, !noundef !5
  %i.v = icmp samesign ugt i64 %i.o, 19
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  store i64 %i.o, ptr %i.c, align 8, !noalias !234
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !234
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !234
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !234

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !237, !noalias !234, !nonnull !5, !noundef !5
  store i8 45, ptr %i.w, align 1, !noalias !234
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !237, !noalias !234
  %i.x = sub i64 0, %1
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc20.i unwind label %bb.i, !noalias !234

.noexc20.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !240, !noalias !234, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !240, !noalias !234, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !noalias !234
  %.pre.i.i = load i64, ptr %i.aa, align 8, !alias.scope !240, !noalias !234
  br label %_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.h unwind label %bb.j, !noalias !234

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !234
  unreachable

_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.ah = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ab, %.noexc20.i ]
  %i.ai = add i64 %i.ah, %i.z
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !240, !noalias !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !234
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14isize_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsj_NtNtNtCshzWfHUSfYae_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @27, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14u16_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [5 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @_RNvMs5_NtNtNtCshzWfHUSfYae_4core3fmt3num3impt4__fmt(i16 noundef %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 5) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14u32_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @_RNvMsa_NtNtNtCshzWfHUSfYae_4core3fmt3num3impm4__fmt(i32 noundef %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 10) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14u64_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [20 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @_RNvMsf_NtNtNtCshzWfHUSfYae_4core3fmt3num3impy4__fmt(i64 noundef %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal14usize_suffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @28, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal15i128_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [39 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !243
  %i.e = icmp slt i128 %1, 0
  br i1 %i.e, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !243
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 39, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !243
  %i.f = load i64, ptr %i.b, align 8, !range !129, !noalias !243, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noalias !243, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15.i, label %bb.b, !prof !95

.noexc15.i:                                       ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !243
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !243
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !243
  %i.l = load i64, ptr %i.a, align 8, !range !129, !noalias !243, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !130, !noalias !243, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17.i, label %bb.d, !prof !95

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !243
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #23, !noalias !243
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !noalias !243, !nonnull !5, !noundef !5
  %i.s = icmp samesign ugt i64 %i.i, 38
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !243
  store i64 %i.i, ptr %i.c, align 8, !noalias !243
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !243
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !243
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i128 [ %i.x, %bb.e ], [ %1, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMs0_NtNtCshzWfHUSfYae_4core3fmt3numo4__fmt(i128 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.d, i64 noundef 39)
          to label %bb.f unwind label %bb.i, !noalias !243 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.u = load ptr, ptr %i.p, align 8, !noalias !243, !nonnull !5, !noundef !5
  %i.v = icmp samesign ugt i64 %i.o, 39
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  store i64 %i.o, ptr %i.c, align 8, !noalias !243
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !243
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !243
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !243

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !246, !noalias !243, !nonnull !5, !noundef !5
  store i8 45, ptr %i.w, align 1, !noalias !243
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !246, !noalias !243
  %i.x = sub i128 0, %1
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc20.i unwind label %bb.i, !noalias !243

.noexc20.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !249, !noalias !243, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !249, !noalias !243, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !noalias !243
  %.pre.i.i = load i64, ptr %i.aa, align 8, !alias.scope !249, !noalias !243
  br label %_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.h unwind label %bb.j, !noalias !243

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !243
  unreachable

_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.ah = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ab, %.noexc20.i ]
  %i.ai = add i64 %i.ah, %i.z
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !249, !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !243
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal15u128_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [39 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @_RNvMs0_NtNtCshzWfHUSfYae_4core3fmt3numo4__fmt(i128 noundef %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 39) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal16from_str_checked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %2, ptr %i.d, align 8
  %i.e = call noundef zeroext i1 @_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor16starts_with_char(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i32 noundef 45)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsluekWoTk8SK_11proc_macro25parse7literal(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = call { ptr, i64 } @_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 1) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 6 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 6 uses
  store ptr %i.j, ptr %i.c, align 8
  store i64 %i.k, ptr %i.d, align 8
  %i.l = icmp samesign eq i64 %i.k, 0
  br i1 %i.l, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.j, align 1, !alias.scope !252, !noalias !255, !noundef !5 ; 5 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.e, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = and i8 %i.m, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp samesign ne i64 %i.k, 1
  call void @llvm.assume(i1 %i.r)
  %i.s = load i8, ptr %i.o, align 1, !alias.scope !252, !noalias !255, !noundef !5
  %i.t = shl nuw nsw i32 %i.q, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 2 uses
  %i.w = or disjoint i32 %i.t, %i.v
  %i.x = icmp samesign ugt i8 %i.m, -33
  br i1 %i.x, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = zext nneg i8 %i.m to i32
  br label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.aa = icmp samesign ne i64 %i.k, 2
  call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.z, align 1, !alias.scope !252, !noalias !255, !noundef !5
  %i.ac = shl nuw nsw i32 %i.v, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = shl nuw nsw i32 %i.q, 12
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = icmp samesign ugt i8 %i.m, -17
  br i1 %i.ai, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.ak = icmp samesign ne i64 %i.k, 3
  call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.aj, align 1, !alias.scope !252, !noalias !255, !noundef !5
  %i.am = shl nuw nsw i32 %i.q, 18
  %i.an = and i32 %i.am, 1835008
  %i.ao = shl nuw nsw i32 %i.af, 6
  %i.ap = and i8 %i.al, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = or disjoint i32 %i.ar, %i.an
  br label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit

_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i, %bb.e, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.ah, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i ], [ %i.as, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i ], [ %i.w, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  call void @llvm.assume(i1 %i.at)
  %i.au = add nsw i32 %.sroa.4.0.i.ph.i.i.i, -48
  %.sroa.0.0.i.i.i.i = icmp ult i32 %i.au, 10
  br i1 %.sroa.0.0.i.i.i.i, label %bb.l, label %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit.thread

bb.f:                                             ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback7LiteralEBF_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -1, ptr %0, align 8
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.g
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback7LiteralEBF_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.bo, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback7LiteralEBF_.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.k:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String6insert.exit, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit.thread: ; preds = %bb.c, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.p

bb.l:                                             ; preds = %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsluekWoTk8SK_11proc_macro25parse7literal(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !range !6, !noundef !5
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %bb.f, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.h

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !263, !noundef !5 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String6insert.exit unwind label %bb.o

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String6insert.exit: ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !263, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %i.bk, i64 %i.bh, i1 false)
  %i.bm = load ptr, ptr %i.bj, align 8, !alias.scope !263, !nonnull !5, !noundef !5
  store i8 45, ptr %i.bm, align 1
  %i.bn = add nuw i64 %i.bh, 1
  store i64 %i.bn, ptr %i.bg, align 8, !alias.scope !263
  br label %bb.k

bb.o:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsluekWoTk8SK_11proc_macro28fallback7LiteralEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %common.resume unwind label %bb.q

bb.p:                                             ; preds = %bb.k, %_RNvYINtNtNtCshzWfHUSfYae_4core3str7pattern18MultiCharEqPatternNCNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB16_7Literal16from_str_checked0ENtB5_7Pattern12is_prefix_ofB18_.exit.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.q:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal16isize_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 14 uses
  %i.d = alloca [19 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !266
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !266
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !266
  %i.f = load i64, ptr %i.b, align 8, !range !129, !noalias !266, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noalias !266, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %.noexc15.i, label %bb.b, !prof !95

.noexc15.i:                                       ; preds = %.noexc.i
  %i.k = load i64, ptr %i.j, align 8, !noalias !266
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !266
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !266
  %i.l = load i64, ptr %i.a, align 8, !range !129, !noalias !266, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !130, !noalias !266, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %.noexc17.i, label %bb.d, !prof !95

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !266
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #23, !noalias !266
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.j, align 8, !noalias !266, !nonnull !5, !noundef !5
  %i.s = icmp samesign ugt i64 %i.i, 18
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !266
  store i64 %i.i, ptr %i.c, align 8, !noalias !266
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !266
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !266
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i64 [ %i.x, %bb.e ], [ %1, %bb.b ]
  %i.t = invoke { ptr, i64 } @_RNvMsk_NtNtNtCshzWfHUSfYae_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.d, i64 noundef 19)
          to label %bb.f unwind label %bb.i, !noalias !266 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.u = load ptr, ptr %i.p, align 8, !noalias !266, !nonnull !5, !noundef !5
  %i.v = icmp samesign ugt i64 %i.o, 19
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  store i64 %i.o, ptr %i.c, align 8, !noalias !266
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !266
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !266
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !266

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !266, !nonnull !5, !noundef !5
  store i8 45, ptr %i.w, align 1, !noalias !266
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !266
  %i.x = sub i64 0, %1
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.y = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.t, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.z)
          to label %.noexc20.i unwind label %bb.i, !noalias !266

.noexc20.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !272, !noalias !266, !noundef !5 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_RNvXs1O_NtCsbSS6DM8SDEO_5alloc6stringiNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !272, !noalias !266, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.y, i64 %i.z, i1 false), !noalias !266
  %.pre.i.i = load i64, ptr %i.aa, align 8, !alias.scope !272, !noalias !266
  br label %_RNvXs1O_NtCsbSS6DM8SDEO_5alloc6stringiNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #22
          to label %bb.h unwind label %bb.j, !noalias !266

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !266
  unreachable

_RNvXs1O_NtCsbSS6DM8SDEO_5alloc6stringiNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.ah = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ab, %.noexc20.i ]
  %i.ai = add i64 %i.ah, %i.z
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !272, !noalias !266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !266
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal16usize_unsuffixed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [20 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call { ptr, i64 } @_RNvMsk_NtNtNtCshzWfHUSfYae_4core3fmt3num3impj4__fmt(i64 noundef %1, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !130, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.e, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal18from_str_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !130, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsn_NtCsluekWoTk8SK_11proc_macro28fallbackNtB5_7Literal6string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, 2                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !129, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !130, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.k = icmp ule i64 %i.c, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #22
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !275, !nonnull !5, !noundef !5
  store i8 34, ptr %i.m, align 1
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !275
  invoke fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro28fallback11escape_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !278, !noundef !5 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
end_hunk_1
