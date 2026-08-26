Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.7?download=true
begin_hunk_0_@_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE2okCsiHivYpkJ4Hu_2cc:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReRNtCsiHivYpkJ4Hu_2cc5ErrorE17unwrap_or_defaultBM_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i64 } @_RNvXs0_NtCs3oUPovFnLWP_4core3strReNtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.merged = phi { ptr, i64 } [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorE17unwrap_or_defaultBK_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc nuw i8 %i.c to i1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorEEB10_(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sroa.0.04 = phi i1 [ %i.d, %.thread ], [ false, %bb.b ]
  ret i1 %.sroa.0.04
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorE9unwrap_orBK_(ptr align 8 %0, i1 zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc nuw i8 %i.c to i1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultbNtCsiHivYpkJ4Hu_2cc5ErrorEEB10_(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sroa.0.03 = phi i1 [ %i.d, %.thread ], [ %1, %bb.b ]
  ret i1 %.sroa.0.03
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbbE5is_okCsiHivYpkJ4Hu_2cc(ptr nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = and i8 %i.a, 1
  %i.c = icmp eq i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiHivYpkJ4Hu_2cc(i1 zeroext %0, i8 returned %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %2, i64 %3, ptr nonnull %i.a, ptr nonnull align 8 @17, ptr align 8 %4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i8 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE2okCsiHivYpkJ4Hu_2cc(i64 %0) unnamed_addr #5 {
bb.a:
  %i.a = trunc i64 %0 to i32
  %not. = and i32 %i.a, 1
  %. = xor i32 %not., 1
  %.sroa.34.0.extract.shift = lshr i64 %0, 32
  %.sroa.34.0.extract.trunc = trunc nuw i64 %.sroa.34.0.extract.shift to i32
  %i.b = insertvalue { i32, i32 } poison, i32 %., 0
  %i.c = insertvalue { i32, i32 } %i.b, i32 %.sroa.34.0.extract.trunc, 1
  ret { i32, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6expectCsiHivYpkJ4Hu_2cc(i64 %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.23.0.extract.shift = lshr i64 %0, 8
  %.sroa.23.0.extract.trunc = trunc i64 %.sroa.23.0.extract.shift to i8
  store i8 %.sroa.23.0.extract.trunc, ptr %i.a, align 1
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr %1, i64 %2, ptr nonnull %i.a, ptr nonnull align 8 @18, ptr align 8 %3) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %0, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  ret i32 %.sroa.4.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorE5is_okBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -2
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceCsiHivYpkJ4Hu_2cc(i32 %0) unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -9               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 133
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookupCsiHivYpkJ4Hu_2cc(i32 %0) #21
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc8to_digitCsiHivYpkJ4Hu_2cc(i32 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, -2
  %or.cond = icmp ult i32 %i.a, 35
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @19, ptr nonnull inttoptr (i64 143 to ptr), ptr nonnull align 8 @21) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 57
  %i.c = icmp samesign ugt i32 %1, 10
  %or.cond1 = and i1 %i.b, %i.c
  %i.d = add i32 %0, -65
  %i.e = and i32 %i.d, -33
  %i.f = add nuw nsw i32 %i.e, 10
  %i.g = add i32 %0, -48
  %.sroa.02.0 = select i1 %or.cond1, i32 %i.f, i32 %i.g ; 2 uses
  %i.h = icmp ult i32 %.sroa.02.0, %1
  %.sroa.0.0 = zext i1 %i.h to i32
  %i.i = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.j = insertvalue { i32, i32 } %i.i, i32 %.sroa.02.0, 1
  ret { i32, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB2_21TargetInfoParserInner32from_cargo_environment_variables(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %1 = alloca [32 x i8], align 8                  ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [96 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 2 uses
  %i.p = alloca [16 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 2 uses
  %i.t = alloca [32 x i8], align 8                ; 2 uses
  %i.u = alloca [40 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  call void @_RNvNtCsiHivYpkJ4Hu_2cc9utilities13cargo_env_var(ptr nonnull sret([32 x i8]) align 8 %1, ptr nonnull @22, i64 6)
  %i.w = load i64, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq i64 %i.w, -2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.y, align 8
  %.sroa.2147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2147.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store ptr null, ptr %0, align 8
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.z = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.v)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.x, %bb.e
  %.pn40 = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %.pn38, %bb.x ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.v) #23
          to label %bb.bm unwind label %bb.bh

bb.e:                                             ; preds = %bb.r, %bb.t, %bb.bk, %bb.s, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBL_5ErrorE2okBL_.exit, %bb.o, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.ab = extractvalue { ptr, i64 } %i.z, 0
  %i.ac = extractvalue { ptr, i64 } %i.z, 1
  invoke void @_RINvMNtCs3oUPovFnLWP_4core3stre10split_oncecECsiHivYpkJ4Hu_2cc(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr %i.ab, i64 %i.ac, i32 45)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayNtNtCs1xwejQucwHj_5alloc6string6StringECsiHivYpkJ4Hu_2cc(ptr nonnull sret([16 x i8]) align 8 %i.o, ptr nonnull align 8 %i.v)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ad = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj41_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @23, ptr nonnull align 8 %i.p)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = extractvalue { ptr, ptr } %i.ad, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr %i.ae, ptr %i.af)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  invoke void @_RINvMCsiHivYpkJ4Hu_2ccNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringEB3_(ptr nonnull sret([32 x i8]) align 8 %i.s, i8 6, ptr nonnull align 8 %i.r)
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTReBJ_EE5ok_orNtCsiHivYpkJ4Hu_2cc5ErrorEBY_(ptr nonnull sret([40 x i8]) align 8 %i.u, ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.u, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.259.8.copyload60 = load ptr, ptr %i.ah, align 8 ; 2 uses
  %.sroa.5.8..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.8.copyload62 = load i64, ptr %.sroa.5.8..sroa_idx61, align 8 ; 2 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.6.8..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.259.8.copyload60, ptr %i.aj, align 8
  %.sroa.2144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.8.copyload62, ptr %.sroa.2144.0..sroa_idx, align 8
  %.sroa.3145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3145.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.8..sroa_idx63, i64 16, i1 false)
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.ak = invoke { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.v)
          to label %bb.o unwind label %bb.e       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  invoke void @_RNvMs0_NtNtCsiHivYpkJ4Hu_2cc6target6parserNtB7_10TargetInfo17from_rustc_target(ptr nonnull sret([96 x i8]) align 8 %i.m, ptr %i.al, i64 %i.am)
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.m, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false)
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBL_5ErrorE2okBL_.exit

bb.r:                                             ; preds = %bb.p
  store ptr null, ptr %i.n, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtB11_5ErrorEEB11_(ptr nonnull align 8 %i.m)
          to label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBL_5ErrorE2okBL_.exit unwind label %bb.e

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBL_5ErrorE2okBL_.exit: ; preds = %bb.q, %bb.r
  %i.ap = invoke align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoE6as_refBL_(ptr nonnull align 8 %i.n)
          to label %bb.s unwind label %bb.e       ; 5 uses

bb.s:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoNtBL_5ErrorE2okBL_.exit
  %i.aq = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoE3mapReNCNvMNtBL_6parserNtB1z_21TargetInfoParserInner32from_cargo_environment_variabless_0EBN_(ptr align 8 %i.ap)
          to label %bb.t unwind label %bb.e       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  invoke fastcc void @_RNCNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB4_21TargetInfoParserInner32from_cargo_environment_variables0B8_(ptr noalias align 8 %i.k, ptr nonnull %i.v, ptr nonnull @24, i64 21, ptr %i.ar, i64 %i.as)
          to label %bb.u unwind label %bb.e

bb.u:                                             ; preds = %bb.t
  %i.at = load i64, ptr %i.k, align 8             ; 2 uses
  %.not.i46 = icmp eq i64 %i.at, -2
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  br i1 %.not.i46, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.8.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.8.0.copyload77 = load i64, ptr %.sroa.8.0..sroa_idx76, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.ay, align 8
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %.sroa.2140.0..sroa_idx, align 8
  %.sroa.3141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ax, ptr %.sroa.3141.0..sroa_idx, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8.0.copyload77, ptr %.sroa.4142.0..sroa_idx, align 8
  br label %.sink.split

bb.w:                                             ; preds = %bb.u
  store ptr %i.av, ptr %i.l, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8
  %i.ba = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoE3mapReNCNvMNtBL_6parserNtB1z_21TargetInfoParserInner32from_cargo_environment_variabless0_0EBN_(ptr align 8 %i.ap)
          to label %bb.z unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %bb.ad, %bb.y
  %.pn38 = phi { ptr, i32 } [ %i.bb, %bb.y ], [ %.pn36, %bb.ad ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.l) #23
          to label %bb.d unwind label %bb.bh

bb.y:                                             ; preds = %bb.z, %bb.bj, %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  %i.bc = extractvalue { ptr, i64 } %i.ba, 0
  %i.bd = extractvalue { ptr, i64 } %i.ba, 1
  invoke fastcc void @_RNCNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB4_21TargetInfoParserInner32from_cargo_environment_variables0B8_(ptr noalias align 8 %i.i, ptr nonnull %i.v, ptr nonnull @25, i64 23, ptr %i.bc, i64 %i.bd)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.be = load i64, ptr %i.i, align 8             ; 2 uses
  %.not.i47 = icmp eq i64 %i.be, -2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  br i1 %.not.i47, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.890.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.890.0.copyload92 = load i64, ptr %.sroa.890.0..sroa_idx91, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.be, ptr %i.bj, align 8
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bg, ptr %.sroa.2136.0..sroa_idx, align 8
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bi, ptr %.sroa.3137.0..sroa_idx, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.890.0.copyload92, ptr %.sroa.4138.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.bk

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.bg, ptr %i.j, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bk, align 8
  %i.bl = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoE3mapReNCNvMNtBL_6parserNtB1z_21TargetInfoParserInner32from_cargo_environment_variabless1_0EBN_(ptr align 8 %i.ap)
          to label %bb.af unwind label %bb.ae     ; 2 uses

bb.ad:                                            ; preds = %bb.aj, %bb.ae
  %.pn36 = phi { ptr, i32 } [ %i.bm, %bb.ae ], [ %.pn34, %bb.aj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.j) #23
          to label %bb.x unwind label %bb.bh

bb.ae:                                            ; preds = %bb.af, %bb.bi, %bb.ac
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  %i.bn = extractvalue { ptr, i64 } %i.bl, 0
  %i.bo = extractvalue { ptr, i64 } %i.bl, 1
  invoke fastcc void @_RNCNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB4_21TargetInfoParserInner32from_cargo_environment_variables0B8_(ptr noalias align 8 %i.g, ptr nonnull %i.v, ptr nonnull @26, i64 19, ptr %i.bn, i64 %i.bo)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.bp = load i64, ptr %i.g, align 8             ; 2 uses
  %.not.i49 = icmp eq i64 %i.bp, -2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  br i1 %.not.i49, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.8105.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.8105.0.copyload107 = load i64, ptr %.sroa.8105.0..sroa_idx106, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %i.bu, align 8
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.br, ptr %.sroa.2132.0..sroa_idx, align 8
  %.sroa.3133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bt, ptr %.sroa.3133.0..sroa_idx, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8105.0.copyload107, ptr %.sroa.4134.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.bj

bb.ai:                                            ; preds = %bb.ag
  store ptr %i.br, ptr %i.h, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %i.bt, ptr %i.bv, align 8
  %i.bw = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoE3mapReNCNvMNtBL_6parserNtB1z_21TargetInfoParserInner32from_cargo_environment_variabless2_0EBN_(ptr align 8 %i.ap)
          to label %bb.al unwind label %bb.ak     ; 2 uses

bb.aj:                                            ; preds = %bb.ao, %bb.ak
  %.pn34 = phi { ptr, i32 } [ %i.bx, %bb.ak ], [ %.pn.pn, %bb.ao ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h) #23
          to label %bb.ad unwind label %bb.bh

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  %i.by = extractvalue { ptr, i64 } %i.bw, 0
  %i.bz = extractvalue { ptr, i64 } %i.bw, 1
  invoke fastcc void @_RNCNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB4_21TargetInfoParserInner32from_cargo_environment_variables0B8_(ptr noalias align 8 %i.e, ptr nonnull %i.v, ptr nonnull @27, i64 20, ptr %i.by, i64 %i.bz)
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  %i.ca = load i64, ptr %i.e, align 8             ; 2 uses
  %.not.i51 = icmp eq i64 %i.ca, -2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  br i1 %.not.i51, label %bb.an, label %bb.bi

bb.an:                                            ; preds = %bb.am
  store ptr %i.cc, ptr %i.f, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store i64 %i.ce, ptr %i.cf, align 8
  %i.cg = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsiHivYpkJ4Hu_2cc6target10TargetInfoE3mapReNCNvMNtBL_6parserNtB1z_21TargetInfoParserInner32from_cargo_environment_variabless3_0EBN_(ptr align 8 %i.ap)
          to label %bb.aq unwind label %bb.ap     ; 2 uses

bb.ao:                                            ; preds = %bb.at, %bb.ap
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.at ], [ %i.ch, %bb.ap ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.f) #23
          to label %bb.aj unwind label %bb.bh

bb.ap:                                            ; preds = %bb.aq, %bb.ar, %bb.an
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aq:                                            ; preds = %bb.an
  %i.ci = extractvalue { ptr, i64 } %i.cg, 0
  %i.cj = extractvalue { ptr, i64 } %i.cg, 1
  invoke fastcc void @_RNCNvMNtNtCsiHivYpkJ4Hu_2cc6target6parserNtB4_21TargetInfoParserInner32from_cargo_environment_variables0B8_(ptr noalias align 8 %i.c, ptr nonnull %i.v, ptr nonnull @28, i64 20, ptr %i.ci, i64 %i.cj)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.ck = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxeENtCsiHivYpkJ4Hu_2cc5ErrorE14unwrap_or_elseNCNvMNtNtB1l_6target6parserNtB24_21TargetInfoParserInner32from_cargo_environment_variabless4_0EB1l_(ptr nonnull align 8 %i.c, ptr nonnull align 8 poison)
          to label %bb.as unwind label %bb.ap     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.cl = extractvalue { ptr, i64 } %i.ck, 0      ; 3 uses
  %i.cm = extractvalue { ptr, i64 } %i.ck, 1      ; 3 uses
  store ptr %i.cl, ptr %i.d, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.cm, ptr %i.cn, align 8
  %i.co = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.cl, i64 %i.cm, ptr nonnull @29, i64 6)
          to label %bb.av unwind label %bb.au

bb.at:                                            ; preds = %bb.bc, %bb.au
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.au ], [ %i.cx, %bb.bc ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.d) #23
          to label %bb.ao unwind label %bb.bh

bb.au:                                            ; preds = %bb.be, %bb.ba, %bb.az, %.critedge, %bb.ay, %bb.aw, %bb.as
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  br i1 %i.co, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cq = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.cl, i64 %i.cm, ptr nonnull @30, i64 3)
          to label %bb.ax unwind label %bb.au

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.cq, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %bb.bd, %bb.ax
  invoke void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringeNtB5_8ToString9to_stringCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %.sroa.259.8.copyload60, i64 %.sroa.5.8.copyload62)
          to label %bb.be unwind label %bb.au

.critedge:                                        ; preds = %bb.av, %bb.ax
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core7default7Default7defaultCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.b)
          to label %bb.az unwind label %bb.au

bb.az:                                            ; preds = %.critedge
  %i.cr = invoke { ptr, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String14into_boxed_strCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b)
          to label %bb.ba unwind label %bb.au     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1
  %i.cu = invoke { ptr, i64 } @_RINvNtCs3oUPovFnLWP_4core3mem7replaceINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.d, ptr %i.cs, i64 %i.ct)
          to label %bb.bb unwind label %bb.au     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0      ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cu, 1      ; 2 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.f)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cv, ptr %i.f, align 8
  store i64 %i.cw, ptr %i.cf, align 8
  br label %bb.at

bb.bd:                                            ; preds = %bb.bb
  store ptr %i.cv, ptr %i.f, align 8
  store i64 %i.cw, ptr %i.cf, align 8
  br label %bb.ay

bb.be:                                            ; preds = %bb.ay
  %i.cy = invoke { ptr, i64 } @_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String14into_boxed_strCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a)
          to label %bb.bf unwind label %bb.au     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.cz = extractvalue { ptr, i64 } %i.cy, 0
  %i.da = extractvalue { ptr, i64 } %i.cy, 1
  %i.db = load ptr, ptr %i.l, align 8
  %i.dc = load i64, ptr %i.az, align 8
  %i.dd = load ptr, ptr %i.j, align 8
  %i.de = load i64, ptr %i.bk, align 8
  %i.df = load ptr, ptr %i.h, align 8
  %i.dg = load i64, ptr %i.bv, align 8
  %i.dh = load ptr, ptr %i.f, align 8
  %i.di = load i64, ptr %i.cf, align 8
  %i.dj = load ptr, ptr %i.d, align 8
  %i.dk = load i64, ptr %i.cn, align 8
  store ptr %i.cz, ptr %0, align 8
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.da, ptr %.sroa.222.0..sroa_idx, align 8
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.db, ptr %.sroa.323.0..sroa_idx, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dc, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dd, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.de, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.df, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.dg, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dh, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.di, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.dj, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.dk, ptr %.sroa.12.0..sroa_idx, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.v)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bl, %bb.bf, %bb.b
  ret void

bb.bh:                                            ; preds = %bb.at, %bb.ao, %bb.aj, %bb.ad, %bb.x, %bb.d
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bi:                                            ; preds = %bb.am
  %.sroa.8120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8120.0.copyload122 = load i64, ptr %.sroa.8120.0..sroa_idx121, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ca, ptr %i.dm, align 8
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cc, ptr %.sroa.2128.0..sroa_idx, align 8
  %.sroa.3129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ce, ptr %.sroa.3129.0..sroa_idx, align 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.8120.0.copyload122, ptr %.sroa.4130.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.h)
          to label %bb.bj unwind label %bb.ae

bb.bj:                                            ; preds = %bb.ah, %bb.bi
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.j)
          to label %bb.bk unwind label %bb.y

bb.bk:                                            ; preds = %bb.ab, %bb.bj
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.l)
          to label %bb.bl unwind label %bb.e

.sink.split:                                      ; preds = %bb.m, %bb.v
  store ptr null, ptr %0, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %bb.bk
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.v)
  br label %bb.bg

bb.bm:                                            ; preds = %bb.d
  resume { ptr, i32 } %.pn40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvMs1_NtCsiHivYpkJ4Hu_2cc9utilitiesINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB7_6target6parser21TargetInfoParserInnerNtB7_5ErrorEE13get_uncheckedB7_(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsiHivYpkJ4Hu_2cc9utilitiesINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB7_6target6parser21TargetInfoParserInnerNtB7_5ErrorEE3newB7_(ptr nofree writeonly sret([104 x i8]) align 8 captures(none) initializes((96, 100)) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @_RNvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB5_4Once3newCsiHivYpkJ4Hu_2cc() #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.a, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMsF_NtCsaL1QbXo9JQH_3std7processNtB5_10ExitStatus7successCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.not = icmp eq i32 %i.a, 0
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsiHivYpkJ4Hu_2cc6target6parserNtB4_16TargetInfoParser38parse_from_cargo_environment_variables(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvMs1_NtCsiHivYpkJ4Hu_2cc9utilitiesINtB15_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB17_6target6parser21TargetInfoParserInnerNtB17_5ErrorEE11get_or_initNvMB2s_B2q_32from_cargo_environment_variablesE0EB17_(ptr nonnull align 4 %i.c, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3) #21
  %i.d = load ptr, ptr %i.a, align 8              ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXsi_CsiHivYpkJ4Hu_2ccNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB5_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g) #21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.u = load i64, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.x = load i64, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ad = load i64, ptr %i.ac, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.u, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.x, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.y, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aa, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ab, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ad, ptr %.sroa.12.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.e, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvMst_NtCsaL1QbXo9JQH_3std7processNtB5_5Stdio4nullCsiHivYpkJ4Hu_2cc() unnamed_addr #4 {
bb.a:
  ret { i32, i32 } { i32 1, i32 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvMst_NtCsaL1QbXo9JQH_3std7processNtB5_5Stdio5pipedCsiHivYpkJ4Hu_2cc() unnamed_addr #4 {
bb.a:
  ret { i32, i32 } { i32 2, i32 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvMst_NtCsaL1QbXo9JQH_3std7processNtB5_5Stdio7inheritCsiHivYpkJ4Hu_2cc() unnamed_addr #4 {
bb.a:
  ret { i32, i32 } { i32 0, i32 undef }
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvNtCs3oUPovFnLWP_4core10intrinsics9cold_pathCsiHivYpkJ4Hu_2cc() unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsiHivYpkJ4Hu_2cc9utilities13cargo_env_var(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [32 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 3 uses
  %i.o = alloca [24 x i8], align 8                ; 3 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %i.q, align 8
  call void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr %1, i64 %2)
  %i.r = load i64, ptr %i.o, align 8
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @_RNvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB2_8OsString11into_stringCsiHivYpkJ4Hu_2cc(ptr nonnull sret([32 x i8]) align 8 %i.n, ptr nonnull align 8 %i.a) #21
  %i.s = load i64, ptr %i.n, align 8
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.p) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.v = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj25_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @32, ptr nonnull align 8 %i.c) #21 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %i.w, ptr %i.x) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @_RINvMCsiHivYpkJ4Hu_2ccNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringEB3_(ptr nonnull sret([32 x i8]) align 8 %i.f, i8 1, ptr nonnull align 8 %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 8 %i.p)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e, %bb.c
  ret void

bb.g:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.m) #23
          to label %bb.n unwind label %bb.m

bb.h:                                             ; preds = %bb.d
end_hunk_0
