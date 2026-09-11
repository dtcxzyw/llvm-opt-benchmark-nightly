Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-42a9dd9ad77bb8f9.build_script_build.474e8b681e4afd81-cgu.0?download=true
inline.NumInlined: 261
inline.NumDeleted: 157
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs67yZWt5urGD_18build_script_build:bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %.not5.i.i.i = icmp eq i64 %i.d, 1095216660480
  %.not.i.i.i = or i1 %i.c, %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs67yZWt5urGD_18build_script_build.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCs67yZWt5urGD_18build_script_build(ptr nonnull align 8 @4) #17, !noalias !7
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.0.val, i64 -1    ; 5 uses
  %i.f = getelementptr i8, ptr %.0.val, i64 7     ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.e, align 8
  invoke void %i.h(ptr %i.i)
          to label %._crit_edge.i.i.i.i.i.i unwind label %bb.h

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.e
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d
  %i.j = phi ptr [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs67yZWt5urGD_18build_script_build.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load i64, ptr %i.n, align 8, !invariant.load !4
  %i.p = load ptr, ptr %i.e, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.p, i64 range(i64 1, 0) %i.l, i64 %i.o) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs67yZWt5urGD_18build_script_build.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !invariant.load !4 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load i64, ptr %i.v, align 8, !invariant.load !4
  %i.x = load ptr, ptr %i.e, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.x, i64 range(i64 1, 0) %i.t, i64 %i.w) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.e, i64 24, i64 8) #17
  resume { ptr, i32 } %i.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs67yZWt5urGD_18build_script_build.exit.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.e, i64 24, i64 8) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs67yZWt5urGD_18build_script_build.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs67yZWt5urGD_18build_script_build.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs67yZWt5urGD_18build_script_build.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs67yZWt5urGD_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs67yZWt5urGD_18build_script_build.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs67yZWt5urGD_18build_script_build.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs67yZWt5urGD_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys7process3env10CommandEnvECs67yZWt5urGD_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.07.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.07.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.39.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.39.0.copyload.i.i = load i64, ptr %.sroa.39.0..sroa_idx.i.i, align 8
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.0.copyload.i.i = load i64, ptr %.sroa.28.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.215.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.215.0..sroa_idx.i.i, align 8
  %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.07.0.copyload.i.i, ptr %.sroa.215.sroa.2.0..sroa.215.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.28.0.copyload.i.i, ptr %.sroa.215.sroa.3.0..sroa.215.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.07.0.copyload.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.28.0.copyload.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.39.0.copyload.sink.i.i = phi i64 [ %.sroa.39.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31.i.i, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.39.0.copyload.sink.i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCs67yZWt5urGD_18build_script_build(ptr noalias align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECs67yZWt5urGD_18build_script_build.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs67yZWt5urGD_18build_script_build(ptr nonnull %i.e, i64 %.sroa.23.0.copyload.i.i.i.i)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2r_ENtNtBQ_5alloc6GlobalEECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.b) #18
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECs67yZWt5urGD_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs67yZWt5urGD_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0Cs67yZWt5urGD_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs67yZWt5urGD_18build_script_build(ptr %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCs67yZWt5urGD_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs67yZWt5urGD_18build_script_build(ptr readonly %i.a)
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvCs67yZWt5urGD_18build_script_build13compile_probe(i1 zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.i = alloca i64, align 8                ; 6 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [200 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 4                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 3 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 3 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0168 = alloca i64, align 8               ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [200 x i8], align 8               ; 18 uses
  %i.aa = alloca [72 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 3 uses
  %i.ag = alloca [8 x i8], align 8                ; 3 uses
  %i.ah = alloca [24 x i8], align 8               ; 3 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 3 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  call void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.al, ptr nonnull @8, i64 11)
  %.val = load i64, ptr %i.al, align 8
  %.not259 = icmp eq i64 %.val, -1
  br i1 %.not259, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs67yZWt5urGD_18build_script_build.exit, label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs67yZWt5urGD_18build_script_build.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @9, ptr %i.n, align 8, !noalias !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 5, ptr %i.am, align 8, !noalias !58
  call void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull @9, i64 range(i64 5, 24) 5), !noalias !58
  %i.an = load i64, ptr %i.m, align 8, !noalias !59
  %.not.i.i = icmp eq i64 %i.an, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvCs67yZWt5urGD_18build_script_build13cargo_env_var.exit

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs67yZWt5urGD_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !59
  store ptr %i.n, ptr %i.l, align 8, !noalias !59
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !59
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.l), !noalias !59
  call void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #19, !noalias !59
  unreachable

_RNvCs67yZWt5urGD_18build_script_build13cargo_env_var.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs67yZWt5urGD_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @10, ptr %i.k, align 8, !noalias !60
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 7, ptr %i.ao, align 8, !noalias !60
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull @10, i64 range(i64 5, 24) 7)
          to label %.noexc58 unwind label %.body162.thread196

.noexc58:                                         ; preds = %_RNvCs67yZWt5urGD_18build_script_build13cargo_env_var.exit
  %i.ap = load i64, ptr %i.j, align 8, !noalias !61
  %.not.i.i56 = icmp eq i64 %i.ap, -1
  br i1 %.not.i.i56, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.noexc58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !61
  store ptr %i.k, ptr %i.i, align 8, !noalias !61
  %.sroa.2.0..sroa_idx.i.i.i57 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i57, align 8, !noalias !61
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.i)
          to label %.noexc59 unwind label %.body162.thread196

.noexc59:                                         ; preds = %bb.c
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #19
          to label %.noexc60 unwind label %.body162.thread196

.noexc60:                                         ; preds = %.noexc59
  unreachable

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.al)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.cz, %bb.cx, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %.pn26.pn.pn.pn193, %bb.cz ], [ %.pn26.pn.pn, %bb.g ], [ %i.fq, %bb.cx ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.body159
  br i1 %.sroa.015.2, label %bb.cz, label %common.resume

.body162.thread196:                               ; preds = %.noexc59, %_RNvCs67yZWt5urGD_18build_script_build13cargo_env_var.exit, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.body159:                                         ; preds = %bb.cv, %bb.h, %bb.j
  %.sroa.015.2 = phi i1 [ %.sroa.015.4, %bb.j ], [ %.sroa.015.3, %bb.h ], [ false, %bb.cv ]
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.j ], [ %i.as, %bb.h ], [ %i.fo, %bb.cv ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.aj) #18
          to label %bb.g unwind label %bb.v

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i158, %bb.i
  %.sroa.015.3 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i158 ], [ true, %bb.i ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.i:                                             ; preds = %.noexc58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val32 = load ptr, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val33 = load i64, ptr %i.au, align 8
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ai, ptr %.val32, i64 %.val33, ptr nonnull @11, i64 5)
          to label %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit unwind label %bb.h

bb.j:                                             ; preds = %.thread255, %.thread, %bb.l, %bb.k
  %.sroa.015.4 = phi i1 [ %.sroa.015.5202, %.thread ], [ false, %bb.l ], [ true, %bb.k ], [ false, %.thread255 ]
  %.pn26.pn = phi { ptr, i32 } [ %.pn26203, %.thread ], [ %.pn21, %bb.l ], [ %i.av, %bb.k ], [ %lpad.thr_comm.split-lp224, %.thread255 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs67yZWt5urGD_18build_script_build(ptr align 8 %i.ai) #18
          to label %.body159 unwind label %bb.v

bb.k:                                             ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit: ; preds = %bb.i
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ah, ptr nonnull @12, i64 5, ptr nonnull @13, i64 8)
          to label %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit67 unwind label %bb.k

_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit67: ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 511, ptr %i.h, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i8 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 5 uses
  %.val.val.i = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %.val.val1.i = load i64, ptr %i.ay, align 8
  %i.az = invoke ptr @_RNvMsD_NtCs2AWtUsOyxgP_3std2fsNtB5_10DirBuilder7__create(ptr nonnull align 4 %i.h, ptr %.val.val.i, i64 %.val.val1.i)
          to label %bb.n unwind label %bb.m       ; 4 uses

bb.l:                                             ; preds = %.body98
  br i1 %.sroa.014.5, label %.thread, label %bb.j

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i73, %bb.p, %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit67, %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs67yZWt5urGD_18build_script_build.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.az, ptr %i.ag, align 8
  %i.bb = call fastcc i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kindCs67yZWt5urGD_18build_script_build(ptr nonnull %i.az)
  %.not260 = icmp eq i8 %i.bb, 12
  br i1 %.not260, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.r, %bb.n
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr nonnull @15, i64 13)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit unwind label %bb.m

bb.q:                                             ; preds = %bb.t, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %.val39 = load ptr, ptr %i.ag, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs67yZWt5urGD_18build_script_build(ptr %.val39) #18
          to label %.thread unwind label %bb.v

bb.r:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs67yZWt5urGD_18build_script_build(ptr nonnull %i.az)
          to label %bb.p unwind label %bb.m

bb.s:                                             ; preds = %bb.o
  %.val46 = load ptr, ptr %i.ax, align 8
  %.val47 = load i64, ptr %i.ay, align 8
  store ptr %.val46, ptr %i.af, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val47, ptr %i.bd, align 8
  store ptr %i.af, ptr %i.ae, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.be, align 8
  %.sroa.2167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2167.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @14, ptr nonnull %i.ae)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #19
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.ct, %bb.t
  unreachable

bb.v:                                             ; preds = %bb.q, %bb.cq, %bb.cz, %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs67yZWt5urGD_18build_script_build.exit.i.i.i.i80, %.thread219, %bb.cj, %.loopexit, %bb.bw, %.body98, %bb.j, %.body159
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bg = load i64, ptr %i.ac, align 8, !noalias !62
  %.not.i71 = icmp eq i64 %i.bg, -1
  br i1 %.not.i71, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit
  store i64 -1, ptr %i.ad, align 8, !alias.scope !62
  br label %bb.ac

bb.x:                                             ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i = load i64, ptr %i.bh, align 8, !noalias !62
  %.not2.i = icmp eq i64 %.val1.i, 0
  br i1 %.not2.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i73 unwind label %bb.z, !noalias !62

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.g)
          to label %.thread unwind label %bb.aa, !noalias !62

bb.aa:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !62
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i73: ; preds = %bb.y
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.g)
          to label %.noexc74 unwind label %bb.m

.noexc74:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i73
  store i64 -1, ptr %i.ad, align 8, !alias.scope !62
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc74, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr nonnull @16, i64 23)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit76 unwind label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i81, %bb.ac
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs67yZWt5urGD_18build_script_build.exit.i.i.i.i80

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit76: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bl = load i64, ptr %i.ab, align 8, !noalias !63 ; 2 uses
  %.not.i77 = icmp eq i64 %i.bl, -1
  br i1 %.not.i77, label %.noexc84, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !63
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i78 = load i64, ptr %i.bm, align 8, !noalias !63
  %.not2.i79 = icmp eq i64 %.val1.i78, 0
  br i1 %.not2.i79, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i81 unwind label %bb.ag, !noalias !63

bb.ag:                                            ; preds = %bb.af
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs67yZWt5urGD_18build_script_build.exit.i.i.i.i80 unwind label %bb.ah, !noalias !63

bb.ah:                                            ; preds = %bb.ag
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !63
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i81: ; preds = %bb.af
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %.noexc84 unwind label %bb.ad

bb.ai:                                            ; preds = %bb.ae
  %.sroa.4.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx309, i64 16, i1 false)
  br label %.noexc84

.noexc84:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i81, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit76, %bb.ai
  %i.bp = phi i64 [ %i.bl, %bb.ai ], [ -1, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit76 ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i81 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %.sroa.2313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.bp, ptr %.sroa.2313.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !64
  %i.br = load i64, ptr %i.bq, align 8, !noalias !65 ; 3 uses
  switch i64 %i.br, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i
    i64 -2, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i
  ]

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i: ; preds = %.noexc84
  %.not6.i.i.i.i.i = icmp eq i64 %i.br, -1        ; 2 uses
  %spec.store.select.i.i.i.i.i = select i1 %.not6.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i, ptr %i.bq, align 8, !noalias !66
  br i1 %.not6.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false)
  br label %.thread228

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i: ; preds = %.noexc84, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bp, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !65
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i: ; preds = %bb.aj, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.aj ], [ %i.e, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i, align 8, !noalias !65
  %.pr.i.i = load i64, ptr %i.e, align 8, !noalias !65 ; 2 uses
  %.not6.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not6.i.i, label %bb.ak, label %.thread228

bb.ak:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1d_EECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.bq)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i unwind label %bb.al, !noalias !65

bb.al:                                            ; preds = %bb.ak
  %i.bu = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.bq, align 8, !noalias !65
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.e) #18
          to label %.thread219 unwind label %bb.am, !noalias !65

bb.am:                                            ; preds = %bb.al
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !65
  unreachable

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i: ; preds = %bb.ak
  store i64 -3, ptr %i.bq, align 8, !noalias !65
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i

.thread228:                                       ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i
  %.sroa.0.0.copyload.ph.i = phi i64 [ %.pr.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i ], [ %i.br, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx8.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !64
  store i64 %.sroa.0.0.copyload.ph.i, ptr %.sroa.0168, align 8, !alias.scope !64
  br label %bb.ap

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i: ; preds = %.noexc84, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !64
  %i.bw = load i64, ptr %i.aa, align 8, !noalias !67 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bw, -2
  br i1 %.not.i.i.i, label %bb.an, label %1

1:                                                ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i
  store i64 %i.bw, ptr %.sroa.0168, align 8
  %.sroa.5.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx170, i64 16, i1 false)
  br label %bb.an

.thread225:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i89, %bb.ao
  %lpad.thr_comm223 = landingpad { ptr, i32 }
          cleanup
  br label %.thread219

.thread255:                                       ; preds = %bb.cp
  %lpad.thr_comm.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.an:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i, %1
  %.sink.i.i.i = phi ptr [ %i.aa, %1 ], [ %.sroa.0168, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i ]
  store i64 -1, ptr %.sink.i.i.i, align 8
  %.sroa.0168.0..sroa.0168.0..sroa.0168.0..sroa.0168.0..pr = load i64, ptr %.sroa.0168, align 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0168.0..sroa.0168.0..sroa.0168.0..sroa.0168.0..pr, -1
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @17) #19
          to label %.noexc unwind label %.thread225

.noexc:                                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an, %.thread228
  %.sroa.0168.0..sroa.0168.0.231 = phi i64 [ %.sroa.0.0.copyload.ph.i, %.thread228 ], [ %.sroa.0168.0..sroa.0168.0..sroa.0168.0..sroa.0168.0..pr, %bb.an ]
  store i64 %.sroa.0168.0..sroa.0168.0.231, ptr %i.y, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val.i = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !68
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i88 = load i64, ptr %i.bx, align 8, !noalias !68
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3new(ptr nonnull sret([200 x i8]) align 8 %i.d, ptr %.val.i, i64 %.val1.i88)
          to label %bb.ar unwind label %bb.aq, !noalias !68

bb.aq:                                            ; preds = %bb.ap
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.y) #18
          to label %.thread219 unwind label %bb.au, !noalias !68

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.z, ptr noundef nonnull align 8 dereferenceable(200) %i.d, i64 200, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i89 unwind label %bb.as, !noalias !68

bb.as:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.y)
          to label %.thread219 unwind label %bb.at, !noalias !68

bb.at:                                            ; preds = %bb.as
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !68
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i89: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.y)
          to label %bb.av unwind label %.thread225

bb.au:                                            ; preds = %bb.aq
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !68
  unreachable

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %.sroa.3.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i94

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i94: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs67yZWt5urGD_18build_script_build.exit.i.i, %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  %i.cf = load i64, ptr %i.cc, align 8, !noalias !70 ; 3 uses
  switch i64 %i.cf, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i
    i64 -2, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i94
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.cf, -1      ; 2 uses
  %spec.store.select.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i.i, ptr %i.cc, align 8, !noalias !71
  br i1 %.not6.i.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx8.i.i.i.i.i.i, i64 16, i1 false), !noalias !70
  br label %.thread.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i94
  %i.cg = load i64, ptr %i.cd, align 8, !noalias !72
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cg, -2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !70
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i.i: ; preds = %bb.aw, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.cd, %bb.aw ], [ %i.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i.i, align 8, !noalias !70
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !70 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.ax, label %.thread.i

bb.ax:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1d_EECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.cc)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i unwind label %bb.ay, !noalias !70

bb.ay:                                            ; preds = %bb.ax
  %i.ch = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.cc, align 8, !noalias !70
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.a) #18
          to label %.body.i unwind label %bb.az, !noalias !70

bb.az:                                            ; preds = %bb.ay
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !70
  unreachable

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i: ; preds = %bb.ax
  store i64 -3, ptr %i.cc, align 8, !noalias !70
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i

.thread.i:                                        ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i.i
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %.pr.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.i.i.i ], [ %i.cf, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs67yZWt5urGD_18build_script_build.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %.sroa.0.i, align 8, !alias.scope !69
  br label %bb.be

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  %i.cj = load i64, ptr %i.c, align 8, !noalias !73 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.cj, -2
  br i1 %.not.i.i.i.i, label %bb.bb, label %2

2:                                                ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i
  store i64 %i.cj, ptr %.sroa.0.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false)
  br label %bb.bb

.body.i:                                          ; preds = %bb.bf, %bb.bd, %bb.ba, %bb.ay
  %.pn.i = phi { ptr, i32 } [ %i.cl, %bb.bd ], [ %i.ch, %bb.ay ], [ %i.ck, %bb.ba ], [ %i.cm, %bb.bf ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECs67yZWt5urGD_18build_script_build(ptr align 8 %i.c) #18
          to label %.body98 unwind label %bb.bh

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs67yZWt5urGD_18build_script_build.exit.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bb:                                            ; preds = %2, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i
  %.sink.i.i.i.i = phi ptr [ %i.c, %2 ], [ %.sroa.0.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs67yZWt5urGD_18build_script_build.exit.thread.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i = load i64, ptr %.sroa.0.i, align 8 ; 2 uses
  %.not.i96 = icmp eq i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, -1
  br i1 %.not.i96, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECs67yZWt5urGD_18build_script_build(ptr align 8 %i.c)
          to label %bb.bj unwind label %bb.bi

bb.bd:                                            ; preds = %bb.be
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.b) #18
          to label %.body.i unwind label %bb.bh

bb.be:                                            ; preds = %bb.bb, %.thread.i
  %.sroa.0.0..sroa.0.0.9.i = phi i64 [ %.sroa.0.0.copyload.ph.i.i, %.thread.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, %bb.bb ]
  store i64 %.sroa.0.0..sroa.0.0.9.i, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %.val.i95 = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.val2.i = load i64, ptr %i.ce, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i95, i64 %.val2.i)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs67yZWt5urGD_18build_script_build.exit.i unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs67yZWt5urGD_18build_script_build.exit.i: ; preds = %bb.be
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs67yZWt5urGD_18build_script_build.exit.i.i unwind label %bb.bf

bb.bf:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs67yZWt5urGD_18build_script_build.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %.body.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs67yZWt5urGD_18build_script_build.exit.i.i: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs67yZWt5urGD_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i94 unwind label %bb.ba

bb.bh:                                            ; preds = %bb.bd, %.body.i
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

.body98:                                          ; preds = %bb.bt, %bb.br, %.body134, %bb.bl, %bb.bn, %.body.i, %bb.bi, %bb.cq, %bb.cj, %.body137, %bb.bw
  %.sroa.014.5 = phi i1 [ false, %bb.cq ], [ false, %.body134 ], [ false, %bb.bt ], [ false, %.body137 ], [ false, %bb.cj ], [ false, %bb.bw ], [ true, %.body.i ], [ %.sroa.014.6, %bb.bi ], [ false, %bb.bn ], [ false, %bb.bl ], [ false, %bb.br ]
  %.pn21 = phi { ptr, i32 } [ %i.fl, %bb.cq ], [ %i.cy, %.body134 ], [ %i.dc, %bb.bt ], [ %.pn, %.body137 ], [ %.pn, %bb.cj ], [ %i.df, %bb.bw ], [ %.pn.i, %.body.i ], [ %i.cp, %bb.bi ], [ %i.cu, %bb.bn ], [ %i.ct, %bb.bl ], [ %i.db, %bb.br ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECs67yZWt5urGD_18build_script_build(ptr align 8 %i.z) #18
          to label %bb.l unwind label %bb.v

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std7process10ExitStatusNtNtNtB11_2io5error5ErrorEECs67yZWt5urGD_18build_script_build.exit151, %bb.cn, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs67yZWt5urGD_18build_script_build.exit.i, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit112, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit110, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit108, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit106, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit104, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECs67yZWt5urGD_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECs67yZWt5urGD_18build_script_build.exit, %bb.bk, %bb.bc, %bb.cr, %bb.ck, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs67yZWt5urGD_18build_script_build.exit.thread
  %.sroa.014.6 = phi i1 [ false, %bb.cr ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std7process10ExitStatusNtNtNtB11_2io5error5ErrorEECs67yZWt5urGD_18build_script_build.exit151 ], [ false, %bb.cn ], [ false, %bb.ck ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs67yZWt5urGD_18build_script_build.exit.thread ], [ false, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit ], [ false, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs67yZWt5urGD_18build_script_build.exit.i ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit112 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit110 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit108 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit106 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit104 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECs67yZWt5urGD_18build_script_build.exit ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECs67yZWt5urGD_18build_script_build.exit ], [ true, %bb.bc ], [ true, %bb.bk ]
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body98

bb.bj:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %0, label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECs67yZWt5urGD_18build_script_build.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  invoke void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std3sys7process3envNtB4_10CommandEnv6remove(ptr nonnull align 8 %i.cq, ptr nonnull @18, i64 15)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECs67yZWt5urGD_18build_script_build.exit unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECs67yZWt5urGD_18build_script_build.exit: ; preds = %bb.bj, %bb.bk
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command6stderr(ptr nonnull align 8 %i.z, i32 1, i32 undef)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECs67yZWt5urGD_18build_script_build.exit unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECs67yZWt5urGD_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECs67yZWt5urGD_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @19, i64 14)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECs67yZWt5urGD_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @20, i64 22)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit104 unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit104: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @21, i64 16)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit106 unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit106: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit104
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @22, i64 17)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit108 unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit108: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit106
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @23, i64 24)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit110 unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit110: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit108
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @24, i64 9)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit112 unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit112: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit110
  %.val.val.i113 = load ptr, ptr %i.ax, align 8
  %.val.val1.i114 = load i64, ptr %i.ay, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.val.i113, i64 %.val.val1.i114)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit unwind label %bb.bi

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i116 = load ptr, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i117 = load i64, ptr %i.cs, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i116, i64 %.val1.i117)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.x) #18
          to label %.body98 unwind label %bb.bp

bb.bm:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs67yZWt5urGD_18build_script_build.exit.i unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %.body98 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs67yZWt5urGD_18build_script_build.exit.i: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit unwind label %bb.bi

bb.bp:                                            ; preds = %bb.bl
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs67yZWt5urGD_18build_script_build.exit.i
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull @25, i64 6)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit125 unwind label %bb.bi

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit125: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs67yZWt5urGD_18build_script_build.exit
  %i.cx = load i64, ptr %i.w, align 8
  %.not17 = icmp eq i64 %i.cx, -1
  br i1 %.not17, label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @26, i64 8)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit127 unwind label %bb.bw

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i133, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECs67yZWt5urGD_18build_script_build.exit125
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull @27, i64 23)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env3varReECs67yZWt5urGD_18build_script_build.exit unwind label %bb.bi

.body134:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i133
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body98

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit127: ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i129 = load ptr, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val1.i130 = load i64, ptr %i.da, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i129, i64 %.val1.i130)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit127
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.u) #18
          to label %.body98 unwind label %bb.bv

bb.bs:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit127
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i133 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %.body98 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit.i133: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit unwind label %.body134

bb.bv:                                            ; preds = %bb.br
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bw:                                            ; preds = %bb.bq
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build(ptr nonnull align 8 %i.v) #18
          to label %.body98 unwind label %bb.v

_RINvNtCs2AWtUsOyxgP_3std3env3varReECs67yZWt5urGD_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs67yZWt5urGD_18build_script_build.exit
  %i.dg = load i64, ptr %i.t, align 8
  %i.dh = trunc nuw i64 %i.dg to i1
  br i1 %i.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs67yZWt5urGD_18build_script_build.exit.thread, label %bb.bx

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs67yZWt5urGD_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs67yZWt5urGD_18build_script_build.exit.i
  %.pre = load i64, ptr %i.t, align 8
  %i.di = trunc nuw i64 %.pre to i1
  br i1 %i.di, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs67yZWt5urGD_18build_script_build.exit.thread, label %bb.ck

.loopexit.split:                                  ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCs67yZWt5urGD_18build_script_build.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCs67yZWt5urGD_18build_script_build.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs67yZWt5urGD_18build_script_build(ptr align 8 %i.s) #18
          to label %.body137 unwind label %bb.v

bb.bx:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env3varReECs67yZWt5urGD_18build_script_build.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val48 = load i64, ptr %i.dk, align 8          ; 19 uses
  %i.dl = icmp eq i64 %.val48, 0
  br i1 %i.dl, label %.thread236, label %bb.ca

.thread236:                                       ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs67yZWt5urGD_18build_script_build.exit147, %.preheader.i.i.i.i.us, %.noexc144.us, %bb.cd, %bb.cc, %bb.cb, %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs67yZWt5urGD_18build_script_build.exit.i unwind label %bb.by

bb.by:                                            ; preds = %.thread236
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
          to label %.body137 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
