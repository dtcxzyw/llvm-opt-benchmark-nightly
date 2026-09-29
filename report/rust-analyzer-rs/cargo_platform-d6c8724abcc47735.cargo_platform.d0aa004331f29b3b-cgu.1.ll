Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cargo_platform-d6c8724abcc47735.cargo_platform.d0aa004331f29b3b-cgu.1?download=true
inline.NumInlined: 94
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEBF_:bb.a
  %i.az = icmp eq i64 %.val.i8, 0
  br i1 %i.az, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEEB1j_.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform3cfg5IdentEBF_.exit.sink.split.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !7, !noundef !5
  switch i32 %i.a, label %bb.b [
    i32 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit
    i32 1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit
    i32 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit
    i32 3, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.b, align 8            ; 2 uses
  %i.c = icmp eq i64 %.val2, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split: ; preds = %bb.b, %bb.c
  %.val.sink = phi i64 [ %.val, %bb.c ], [ %.val2, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !5
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCshUIglraHnMl_14cargo_platformNtB2_8Platform18check_cfg_keywords(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvNvMCshUIglraHnMl_14cargo_platformNtB4_8Platform18check_cfg_keywords14check_cfg_expr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCshUIglraHnMl_14cargo_platformNtB2_8Platform20check_cfg_attributes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvNvMCshUIglraHnMl_14cargo_platformNtB4_8Platform20check_cfg_attributes14check_cfg_expr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMCshUIglraHnMl_14cargo_platformNtB2_8Platform7matches(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 164703072086692426) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMs6_NtCshUIglraHnMl_14cargo_platform3cfgNtB5_7CfgExpr7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %i.d, %2
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %1, i64 %2)
  %i.h = icmp eq i32 %bcmp, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.b, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform.exit.thread12, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !52
  %i.b = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !52 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %3) #20
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #22
          to label %bb.g unwind label %bb.d

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform.exit.thread12: ; preds = %bb.b, %bb.f
  %i.e = phi ptr [ %i.b, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 %2, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform.exit.thread12

bb.g:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshUIglraHnMl_14cargo_platform(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #4 {
bb.a:
  %i.a = mul nuw nsw i64 %1, 56                   ; 4 uses
  %or.cond = icmp ult i64 %1, 164703072086692426
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 56
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #19
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  %i.g = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.b, i64 range(i64 0, -1) %i.d)
  %..i14 = tail call noundef range(i64 0, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %..i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.e, align 8
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %..i14)
  %i.f = load i64, ptr %i.a, align 8, !range !55, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.m, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.k, %bb.c ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.j

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !56, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.n, ptr %i.e, align 8
  %i.o = icmp sgt i64 %..i14, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !9
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #19
  br label %bb.h

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.j = icmp eq i64 %.val, 0
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !59
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvMCshUIglraHnMl_14cargo_platformNtB4_8Platform18check_cfg_keywords14check_cfg_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.l, %bb.c ]   ; 6 uses
  %i.f = load i64, ptr %.tr, align 8, !range !4, !noundef !5 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775805
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808       ; 2 uses
  %i.i = icmp ult i64 %i.h, 6
  %i.j = select i1 %i.i, i64 %i.h, i64 3
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 3, label %bb.d
    i64 4, label %.loopexit
    i64 5, label %.loopexit
  ]

bb.b:                                             ; preds = %tailrecurse
  unreachable

bb.c:                                             ; preds = %tailrecurse
  %i.k = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.tr, ptr %i.e, align 8
  %.not = icmp eq i64 %i.f, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %storemerge.idx = select i1 %.not, i64 8, i64 0
  %storemerge = getelementptr inbounds nuw i8, ptr %.tr, i64 %storemerge.idx ; 4 uses
  store ptr %storemerge, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !65, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCshUIglraHnMl_14cargo_platform.exit, label %bb.f

.loopexit:                                        ; preds = %tailrecurse, %tailrecurse, %.lr.ph, %bb.e, %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCshUIglraHnMl_14cargo_platform.exit
  ret void

bb.e:                                             ; preds = %tailrecurse, %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.s, 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.02.033 = phi ptr [ %i.v, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.033, i64 56 ; 2 uses
  tail call fastcc void @_RNvNvMCshUIglraHnMl_14cargo_platformNtB4_8Platform18check_cfg_keywords14check_cfg_expr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.02.033, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  switch i64 %i.aa, label %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCshUIglraHnMl_14cargo_platform.exit [
    i64 4, label %.split.i.i
    i64 5, label %.split.i.1.i
  ]

.split.i.i:                                       ; preds = %bb.f
  %i.ab = load i32, ptr %i.y, align 1
  %i.ac = icmp ne i32 1702195828, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.split, label %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCshUIglraHnMl_14cargo_platform.exit

.split.i.1.i:                                     ; preds = %bb.f
  %i.af = load i32, ptr %i.y, align 1
  %i.ag = xor i32 1936482662, %i.af
  %i.ah = getelementptr i8, ptr %i.y, i64 4
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = xor i32 101, %i.aj
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.split, label %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCshUIglraHnMl_14cargo_platform.exit

_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCshUIglraHnMl_14cargo_platform.exit: ; preds = %bb.f, %.split.i.i, %.split.i.1.i, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

.split:                                           ; preds = %.split.i.i, %.split.i.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCscAsMj0W7j8b_3std4pathNtB6_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.aq, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCshUIglraHnMl_14cargo_platform3cfg3CfgNtB6_7Display3fmtBA_, ptr %.sroa.410.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.ar, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCshUIglraHnMl_14cargo_platform3cfg5IdentNtB6_7Display3fmtBA_, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !66, !noalias !67, !noundef !5 ; 3 uses
  %i.au = load i64, ptr %1, align 8, !range !6, !alias.scope !66, !noalias !67, !noundef !5
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.g, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform.exit

bb.g:                                             ; preds = %.split
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform.exit unwind label %bb.h, !noalias !67

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !67, !noalias !66 ; 2 uses
  %i.ax = icmp eq i64 %.val.i, 0
  br i1 %i.ax, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val2.i = load ptr, ptr %i.ay, align 8, !alias.scope !67, !noalias !66, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !68
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.aw

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform.exit: ; preds = %.split, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !66, !noalias !67, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bc = add i64 %i.at, 1
  store i64 %i.bc, ptr %i.as, align 8, !alias.scope !66, !noalias !67
  br label %_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCshUIglraHnMl_14cargo_platform.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNvMCshUIglraHnMl_14cargo_platformNtB4_8Platform20check_cfg_attributes14check_cfg_expr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.k, %bb.c ]   ; 9 uses
  %i.e = load i64, ptr %.tr, align 8, !range !4, !noundef !5 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775805
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %i.e, -9223372036854775808       ; 2 uses
  %i.h = icmp ult i64 %i.g, 6
  %i.i = select i1 %i.h, i64 %i.g, i64 3
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.e
    i64 3, label %bb.d
    i64 4, label %.loopexit
    i64 5, label %.loopexit
  ]

bb.b:                                             ; preds = %tailrecurse
  unreachable

bb.c:                                             ; preds = %tailrecurse
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.g, label %bb.f

.loopexit:                                        ; preds = %tailrecurse, %tailrecurse, %.lr.ph, %bb.e, %bb.o, %bb.f, %bb.l, %bb.k
  ret void

bb.e:                                             ; preds = %tailrecurse, %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.o, 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.02.033 = phi ptr [ %i.r, %.lr.ph ], [ %i.m, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.033, i64 56 ; 2 uses
  tail call fastcc void @_RNvNvMCshUIglraHnMl_14cargo_platformNtB4_8Platform20check_cfg_attributes14check_cfg_expr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.02.033, ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  %i.v = icmp eq i64 %i.u, 7
  br i1 %i.v, label %bb.l, label %.loopexit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  store ptr %i.w, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !5
  switch i64 %i.aa, label %bb.k [
    i64 4, label %bb.h
    i64 16, label %bb.i
    i64 10, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.y, align 1
  %i.ac = icmp ne i32 %i.ab, 1953719668
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.split, label %bb.k

.split:                                           ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCshUIglraHnMl_14cargo_platform3cfg5IdentNtB6_7Display3fmtBA_, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @3, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #23
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = load i128, ptr %i.y, align 1
  %i.ag = icmp ne i128 %i.af, 153434631872165783527665137289275794788
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.split, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %i.y, align 1
  %i.ak = xor i64 %i.aj, 7161125138953368176
  %i.al = getelementptr i8, ptr %i.y, i64 8
  %i.am = load i16, ptr %i.al, align 1
  %i.an = zext i16 %i.am to i64
  %i.ao = xor i64 %i.an, 28530
  %i.ap = or i64 %i.ak, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.split, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %.split, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = xor i32 %i.av, 1952540006
  %i.ax = getelementptr i8, ptr %i.au, i64 3
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = xor i32 %i.ay, 1701999988
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !71
  %i.be = tail call noundef dereferenceable_or_null(234) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 234, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !71 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 1, i64 234) #22
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(234) %i.be, ptr noundef nonnull align 1 dereferenceable(234) @4, i64 234, i1 false)
  store i64 234, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.be, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 234, ptr %.sroa.6.0..sroa_idx, align 8
  call fastcc void @_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCshUIglraHnMl_14cargo_platform5errorNtB2_10ParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs_NtCshUIglraHnMl_14cargo_platform5errorNtB4_14ParseErrorKindNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !10, !noundef !5
  %i.g = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_CshUIglraHnMl_14cargo_platformNtB5_8PlatformNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %.not.i = icmp samesign ult i64 %2, 4
  br i1 %.not.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit: ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = icmp ne i32 677865059, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread.thread

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.i.i = icmp eq i64 %2, 4
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread.thread, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCshUIglraHnMl_14cargo_platform.exit.i

_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCshUIglraHnMl_14cargo_platform.exit.i: ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 %2
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %rhsc.i = load i8, ptr %i.k, align 1, !alias.scope !109
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.l = icmp eq i8 %rhsc.fr.i, 41
  br i1 %i.l, label %bb.v, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread.thread

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread.thread: ; preds = %bb.b, %_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCshUIglraHnMl_14cargo_platform.exit.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.lr.ph.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i11.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i11.i.i, label %.thread74, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread.thread, %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 8 uses
  br label %.lr.ph.i.i

.thread74:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCshUIglraHnMl_14cargo_platform.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i
  %i.n = phi ptr [ %i.aw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i ], [ %1, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !alias.scope !110, !noalias !111, !noundef !5 ; 5 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.r = and i8 %i.p, 31
  %i.s = zext nneg i8 %i.r to i32                 ; 3 uses
  %i.t = icmp ne ptr %i.o, %i.m
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !110, !noalias !111, !noundef !5
  %i.w = shl nuw nsw i32 %i.s, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = icmp samesign ugt i8 %i.p, -33
  br i1 %i.aa, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ab = zext nneg i8 %i.p to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i.i
  %i.ac = icmp ne ptr %i.u, %i.m
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 3 uses
  %i.ae = load i8, ptr %i.u, align 1, !alias.scope !110, !noalias !111, !noundef !5
  %i.af = shl nuw nsw i32 %i.y, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = shl nuw nsw i32 %i.s, 12
  %i.ak = or disjoint i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i8 %i.p, -17
  br i1 %i.al, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i.i
  %i.am = icmp ne ptr %i.ad, %i.m
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ao = load i8, ptr %i.ad, align 1, !alias.scope !110, !noalias !111, !noundef !5
  %i.ap = shl nuw nsw i32 %i.s, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = shl nuw nsw i32 %i.ai, 6
  %i.as = and i8 %i.ao, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = or disjoint i32 %i.au, %i.aq
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i.i
  %i.aw = phi ptr [ %i.ad, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i.i ], [ %i.an, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %spec.select.i.ph.i.i = phi i32 [ %i.ak, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i.i ], [ %i.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i.i ], [ %i.z, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i.i ], [ %i.ab, %bb.c ] ; 8 uses
  %i.ax = and i32 %spec.select.i.ph.i.i, 2097119
  %i.ay = add nsw i32 %i.ax, -65
  %or.cond4.i.i.i.i.i = icmp ult i32 %i.ay, 26
  %i.az = add nsw i32 %spec.select.i.ph.i.i, -48
  %or.cond2.i.i.i.i.i = icmp ult i32 %i.az, 10
  %or.cond5.i.i.i.i.i = select i1 %or.cond4.i.i.i.i.i, i1 true, i1 %or.cond2.i.i.i.i.i
  br i1 %or.cond5.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = icmp samesign ult i32 %spec.select.i.ph.i.i, 170
  br i1 %i.ba, label %switch.early.test.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i) #24, !noalias !112
  br i1 %i.bb, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp samesign ugt i32 %spec.select.i.ph.i.i, 177
  br i1 %i.bc, label %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i, label %switch.early.test.i.i.i.i

_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i: ; preds = %bb.g
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i) #24, !noalias !112
  br i1 %i.bd, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i, label %switch.early.test.i.i.i.i

switch.early.test.i.i.i.i:                        ; preds = %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i, %bb.g, %bb.e
  switch i32 %spec.select.i.ph.i.i, label %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1X_8Platform23validate_named_platform0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB1X_.exit.i [
    i32 95, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i
    i32 45, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i
    i32 46, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i
  ]

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i: ; preds = %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %_RNvMNtNtCshzWfHUSfYae_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i, %bb.f, %bb.d
  %.not.i.i.i = icmp eq ptr %i.aw, %i.m
  br i1 %.not.i.i.i, label %bb.ab, label %.lr.ph.i.i

_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1X_8Platform23validate_named_platform0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB1X_.exit.i: ; preds = %switch.early.test.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  store i32 %spec.select.i.ph.i.i, ptr %i.c, align 4, !noalias !113
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1X_8Platform23validate_named_platform0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB1X_.exit.i
  %i.be = phi ptr [ %i.cn, %bb.k ], [ %1, %_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1X_8Platform23validate_named_platform0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB1X_.exit.i ] ; 6 uses
  %.not.i.not.not.not.i.not.i = icmp eq ptr %i.be, %i.m
  br i1 %.not.i.not.not.not.i.not.i, label %.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !110, !noalias !114, !noundef !5 ; 5 uses
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.j, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i17.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i17.i: ; preds = %bb.i
  %i.bi = and i8 %i.bg, 31
  %i.bj = zext nneg i8 %i.bi to i32               ; 3 uses
  %i.bk = icmp ne ptr %i.bf, %i.m
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 2 ; 3 uses
  %i.bm = load i8, ptr %i.bf, align 1, !alias.scope !110, !noalias !114, !noundef !5
  %i.bn = shl nuw nsw i32 %i.bj, 6
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i32               ; 2 uses
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = icmp samesign ugt i8 %i.bg, -33
  br i1 %i.br, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i19.i, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = zext nneg i8 %i.bg to i32
  br label %bb.k

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i19.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i17.i
  %i.bt = icmp ne ptr %i.bl, %i.m
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 3 ; 3 uses
  %i.bv = load i8, ptr %i.bl, align 1, !alias.scope !110, !noalias !114, !noundef !5
  %i.bw = shl nuw nsw i32 %i.bp, 6
  %i.bx = and i8 %i.bv, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bw, %i.by            ; 2 uses
  %i.ca = shl nuw nsw i32 %i.bj, 12
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = icmp samesign ugt i8 %i.bg, -17
  br i1 %i.cc, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i20.i, label %bb.k

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i20.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i19.i
  %i.cd = icmp ne ptr %i.bu, %i.m
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.cf = load i8, ptr %i.bu, align 1, !alias.scope !110, !noalias !114, !noundef !5
  %i.cg = shl nuw nsw i32 %i.bj, 18
  %i.ch = and i32 %i.cg, 1835008
  %i.ci = shl nuw nsw i32 %i.bz, 6
  %i.cj = and i8 %i.cf, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = or disjoint i32 %i.cl, %i.ch
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i20.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i19.i, %bb.j, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i17.i
  %i.cn = phi ptr [ %i.bu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i19.i ], [ %i.ce, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i20.i ], [ %i.bl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i17.i ], [ %i.bf, %bb.j ]
  %spec.select.i.ph.i18.i = phi i32 [ %i.cb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit14.i.i.i19.i ], [ %i.cm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit16.i.i.i20.i ], [ %i.bq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUIglraHnMl_14cargo_platform.exit12.i.i.i17.i ], [ %i.bs, %bb.j ]
  %i.co = icmp eq i32 %spec.select.i.ph.i18.i, 40
  br i1 %i.co, label %bb.p, label %bb.h

.split.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  store ptr %i.c, ptr %i.a, align 8, !noalias !113
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !113
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  %.sroa.546.8.copyload.i = load i64, ptr %i.b, align 8, !noalias !113 ; 3 uses
  %.sroa.847.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.847.8.copyload.i = load ptr, ptr %.sroa.847.8..sroa_idx.i, align 8, !noalias !113 ; 3 uses
  %.sroa.948.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cp = load i64, ptr %.sroa.948.8..sroa_idx.i, align 8, !noalias !113
  %.not.i.i21.i = icmp slt i64 %2, 0
  br i1 %.not.i.i21.i, label %bb.n, label %bb.l, !prof !9

bb.l:                                             ; preds = %.split.i
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !115
  %i.cq = call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !115 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.n, label %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit.i

bb.m:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = icmp eq i64 %.sroa.546.8.copyload.i, 0
  br i1 %i.ct, label %common.resume.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split.i.i: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.847.8.copyload.i) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.847.8.copyload.i, i64 noundef %.sroa.546.8.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !116
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_.exit32.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split.i.i, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.cy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_.exit32.i ], [ %i.cs, %bb.m ], [ %i.cs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECshUIglraHnMl_14cargo_platform.exit.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %bb.l, %.split.i
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.l ], [ 0, %.split.i ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %2) #22
          to label %bb.o unwind label %bb.m, !noalias !117

_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !118
  br label %bb.aa

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !119
  %i.cu = tail call noundef dereferenceable_or_null(64) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !119 ; 4 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 1, i64 64) #22, !noalias !113
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cu, ptr noundef nonnull align 1 dereferenceable(64) @1, i64 64, i1 false), !noalias !113
  %.not.i.i22.i = icmp slt i64 %2, 0
  br i1 %.not.i.i22.i, label %bb.t, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !120
  %i.cw = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !120 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.t, label %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit26.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_.exit32.i: ; preds = %bb.t
  %i.cy = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !121
  br label %common.resume.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.4.0.ph.i25.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i25.i, i64 %2) #22
          to label %bb.u unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_.exit32.i, !noalias !122

_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit26.i: ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !123
  br label %bb.aa

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCshUIglraHnMl_14cargo_platform.exit.i
  %i.cz = add nsw i64 %2, -5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs7_NtCshUIglraHnMl_14cargo_platform3cfgNtB5_7CfgExprNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.cz)
  %i.da = load i64, ptr %i.d, align 8, !range !124, !noundef !5
  %.not14 = icmp eq i64 %i.da, -1
  br i1 %.not14, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dc, ptr noundef nonnull align 8 dereferenceable(56) %i.db, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %bb.aa, %bb.y
  ret void

bb.aa:                                            ; preds = %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit26.i, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit.i
  %.sink81.i = phi ptr [ %i.cw, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit26.i ], [ %i.cq, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit.i ]
  %.sink80.i = phi i64 [ 64, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit26.i ], [ %.sroa.546.8.copyload.i, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit.i ]
  %.sink79.i = phi ptr [ %i.cu, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit26.i ], [ %.sroa.847.8.copyload.i, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit.i ]
  %.sink.i = phi i64 [ 64, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit26.i ], [ %i.cp, %_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %2, ptr %0, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 5, ptr %.sroa.659.0..sroa_idx, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink80.i, ptr %.sroa.861.0..sroa_idx, align 8
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink79.i, ptr %.sroa.962.0..sroa_idx, align 8
  %.sroa.1063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink.i, ptr %.sroa.1063.0..sroa_idx, align 8
  br label %bb.z

bb.ab:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1i_8Platform23validate_named_platform0E0B1i_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i15 = icmp slt i64 %2, 0
  br i1 %.not.i15, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform.exit, label %bb.ac, !prof !125

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !126
  %i.dd = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !126 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform.exit, label %bb.ae

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform.exit: ; preds = %bb.ab, %bb.ac
  %.sroa.453.0 = phi i64 [ 1, %bb.ac ], [ 0, %bb.ab ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.453.0, i64 %2) #22
  unreachable

bb.ad:                                            ; preds = %.thread74, %bb.ae
  %i.df = phi ptr [ %i.dd, %bb.ae ], [ inttoptr (i64 1 to ptr), %.thread74 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.dg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.df, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.z

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.ad
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUIglraHnMl_14cargo_platform.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 56
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUIglraHnMl_14cargo_platform.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUIglraHnMl_14cargo_platform.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUIglraHnMl_14cargo_platform.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #19
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUIglraHnMl_14cargo_platform.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUIglraHnMl_14cargo_platform.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtB6_7Display3fmtB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs8_NtCshUIglraHnMl_14cargo_platform3cfgNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !130, !noalias !131, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !130, !noalias !131, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !130
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRReNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRcNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !132, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_CshUIglraHnMl_14cargo_platformNtB5_8PlatformNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !10, !noundef !5
  %i.g = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @6, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCshUIglraHnMl_14cargo_platform5errorNtB4_14ParseErrorKindNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load i32, ptr %0, align 8, !range !7, !noundef !5
  switch i32 %i.l, label %default.unreachable95 [
    i32 0, label %bb.g
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

default.unreachable95:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.m, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRcNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform, ptr %.sroa.419.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !align !10, !noundef !5
  %i.q = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @8, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRReNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform, ptr %.sroa.415.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.t, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRReNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform, ptr %.sroa.446.0..sroa_idx, align 8
  %i.u = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !10, !noundef !5
  %i.x = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @9, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRReNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform, ptr %.sroa.411.0..sroa_idx, align 8
  %i.z = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !10, !noundef !5
  %i.ac = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noundef nonnull @10, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform, ptr %.sroa.47.0..sroa_idx, align 8
  %i.ae = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !align !10, !noundef !5
  %i.ah = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, ptr noundef nonnull @11, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCshUIglraHnMl_14cargo_platform, ptr %.sroa.43.0..sroa_idx, align 8
  %i.aj = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !10, !noundef !5
  %i.am = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !align !10, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !invariant.load !5, !nonnull !5
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 26) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.as, %bb.g ], [ %i.am, %bb.f ], [ %i.q, %bb.b ], [ %i.x, %bb.c ], [ %i.ac, %bb.d ], [ %i.ah, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEBG_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !133

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #20
          to label %bb.c unwind label %bb.e, !inline_history !133

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21, !inline_history !133
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEBG_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtCshUIglraHnMl_14cargo_platform3cfgNtB5_7CfgExpr7matches(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 164703072086692426)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCscAsMj0W7j8b_3std4pathNtB6_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCshUIglraHnMl_14cargo_platform3cfg3CfgNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCshUIglraHnMl_14cargo_platform3cfg5IdentNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCshUIglraHnMl_14cargo_platform3cfgNtB5_7CfgExprNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtCshUIglraHnMl_14cargo_platform3cfgNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { inlinehint }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i64 -1, i64 -9223372036854775802}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i32 0, i32 6}
!8 = !{i64 -2, i64 -9223372036854775802}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{i64 8}
!11 = distinct !{!11, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEEB1e_"}
!12 = distinct !{!12, !11, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEEB1e_: argument 0"}
!13 = distinct !{null}
!14 = distinct !{!14, !"_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_"}
!15 = distinct !{!15, !14, !"_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_: argument 0"}
!16 = distinct !{ptr @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_, null, null}
!17 = distinct !{!17, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEEB1c_"}
!18 = distinct !{!18, !17, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEEB1c_: argument 0"}
!19 = distinct !{!19, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!20 = distinct !{!20, !19, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!21 = distinct !{!21, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!22 = distinct !{!22, !21, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!23 = distinct !{!23, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!24 = distinct !{!24, !23, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!25 = distinct !{!25, !"_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_"}
!26 = distinct !{!26, !25, !"_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_: argument 0"}
!27 = distinct !{!27, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEEB1c_"}
!28 = distinct !{!28, !27, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprEEB1c_: argument 0"}
!29 = distinct !{!29, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!30 = distinct !{!30, !29, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!31 = distinct !{!31, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!32 = distinct !{!32, !31, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!33 = distinct !{!33, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_"}
!34 = distinct !{!34, !33, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCshUIglraHnMl_14cargo_platform3cfg7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_: argument 0"}
!35 = distinct !{!35, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform3cfg3CfgEBF_"}
!36 = distinct !{!36, !35, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform3cfg3CfgEBF_: argument 0"}
!37 = distinct !{!37, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform"}
!38 = distinct !{!38, !37, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform: argument 0"}
!39 = !{!12}
!40 = !{!15}
!41 = !{!20, !18}
!42 = !{!22}
!43 = !{!24}
!44 = !{!26}
!45 = !{!30, !28}
!46 = !{!32}
!47 = !{!34}
!48 = !{!36}
!49 = !{!38, !36}
!50 = distinct !{!50, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform"}
!51 = distinct !{!51, !50, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform: argument 0"}
!52 = !{!51}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!"branch_weights", i32 2000, i32 2002}
!55 = !{i64 0, i64 2}
!56 = !{i64 0, i64 -9223372036854775807}
!57 = distinct !{!57, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform"}
!58 = distinct !{!58, !57, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform: argument 0"}
!59 = !{!58}
!60 = distinct !{!60, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform"}
!61 = distinct !{!61, !60, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform: argument 0"}
!62 = distinct !{!62, !60, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCshUIglraHnMl_14cargo_platform: argument 1"}
!63 = distinct !{!63, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform"}
!64 = distinct !{!64, !63, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUIglraHnMl_14cargo_platform: argument 0"}
!65 = !{i8 0, i8 2}
!66 = !{!61}
!67 = !{!62}
!68 = !{!64, !62}
!69 = distinct !{!69, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform"}
!70 = distinct !{!70, !69, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform: argument 0"}
!71 = !{!70}
!72 = distinct !{!72, !"_RNCNvXs1_CshUIglraHnMl_14cargo_platformNtB7_8PlatformNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str0B7_"}
!73 = distinct !{!73, !72, !"_RNCNvXs1_CshUIglraHnMl_14cargo_platformNtB7_8PlatformNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str0B7_: argument 0"}
!74 = distinct !{!74, !"_RNvMCshUIglraHnMl_14cargo_platformNtB2_8Platform23validate_named_platform"}
!75 = distinct !{!75, !74, !"_RNvMCshUIglraHnMl_14cargo_platformNtB2_8Platform23validate_named_platform: argument 1"}
!76 = distinct !{!76, !74, !"_RNvMCshUIglraHnMl_14cargo_platformNtB2_8Platform23validate_named_platform: argument 0"}
!77 = distinct !{!77, !"_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1X_8Platform23validate_named_platform0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB1X_"}
!78 = distinct !{!78, !77, !"_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1X_8Platform23validate_named_platform0E0INtNtNtB9_3ops12control_flow11ControlFlowcEEB1X_: argument 0"}
!79 = distinct !{!79, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!80 = distinct !{!80, !79, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!81 = distinct !{!81, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECshUIglraHnMl_14cargo_platform"}
!82 = distinct !{!82, !81, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECshUIglraHnMl_14cargo_platform: argument 0"}
!83 = distinct !{!83, !"_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1W_8Platform23validate_named_platforms_0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1W_"}
!84 = distinct !{!84, !83, !"_RINvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvMCshUIglraHnMl_14cargo_platformNtB1W_8Platform23validate_named_platforms_0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1W_: argument 0"}
!85 = distinct !{!85, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!86 = distinct !{!86, !85, !"_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!87 = distinct !{!87, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECshUIglraHnMl_14cargo_platform"}
!88 = distinct !{!88, !87, !"_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECshUIglraHnMl_14cargo_platform: argument 0"}
!89 = distinct !{!89, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new"}
!90 = distinct !{!90, !89, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new: argument 2"}
!91 = distinct !{!91, !89, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new: argument 1"}
!92 = distinct !{!92, !89, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new: argument 0"}
!93 = distinct !{!93, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform"}
!94 = distinct !{!94, !93, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform: argument 0"}
!95 = distinct !{!95, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_"}
!96 = distinct !{!96, !95, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_: argument 0"}
!97 = distinct !{!97, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform"}
!98 = distinct !{!98, !97, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform: argument 0"}
!99 = distinct !{!99, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new"}
!100 = distinct !{!100, !99, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new: argument 2"}
!101 = distinct !{!101, !99, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new: argument 1"}
!102 = distinct !{!102, !99, !"_RNvMs1_NtCshUIglraHnMl_14cargo_platform5errorNtB5_10ParseError3new: argument 0"}
!103 = distinct !{!103, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform"}
!104 = distinct !{!104, !103, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform: argument 0"}
!105 = distinct !{!105, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_"}
!106 = distinct !{!106, !105, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCshUIglraHnMl_14cargo_platform5error14ParseErrorKindEBF_: argument 0"}
!107 = distinct !{!107, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform"}
!108 = distinct !{!108, !107, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUIglraHnMl_14cargo_platform: argument 0"}
!109 = !{!73}
!110 = !{!75}
!111 = !{!82, !80, !78, !76}
!112 = !{!78, !76, !75}
!113 = !{!76, !75}
!114 = !{!88, !86, !84, !76}
!115 = !{!94, !92, !91, !90, !76, !75}
!116 = !{!96, !92, !91, !76, !75}
!117 = !{!92, !91, !90, !76, !75}
!118 = !{!92, !90, !76}
!119 = !{!98, !76, !75}
!120 = !{!104, !102, !101, !100, !76, !75}
!121 = !{!106, !102, !101, !76, !75}
!122 = !{!102, !101, !100, !76, !75}
!123 = !{!102, !100, !76}
!124 = !{i64 -1, i64 -9223372036854775808}
!125 = !{!"branch_weights", i32 1794550390, i32 352933258}
!126 = !{!108}
!127 = distinct !{!127, !"_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt"}
!128 = distinct !{!128, !127, !"_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt: argument 0"}
!129 = distinct !{!129, !127, !"_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt: argument 1"}
!130 = !{!128}
!131 = !{!129}
!132 = !{i64 4}
!133 = distinct !{null}
end_hunk_0
