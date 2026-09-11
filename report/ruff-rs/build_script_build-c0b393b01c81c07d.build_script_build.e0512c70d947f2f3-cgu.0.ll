Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-c0b393b01c81c07d.build_script_build.e0512c70d947f2f3-cgu.0?download=true
inline.NumInlined: 329
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjg28Uxqqog1_18build_script_build:bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %.not5.i.i.i = icmp eq i64 %i.d, 1095216660480
  %.not.i.i.i = or i1 %i.c, %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsjg28Uxqqog1_18build_script_build.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 @4) #20, !noalias !7
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
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsjg28Uxqqog1_18build_script_build.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load i64, ptr %i.n, align 8, !invariant.load !4
  %i.p = load ptr, ptr %i.e, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.p, i64 range(i64 1, 0) %i.l, i64 %i.o) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsjg28Uxqqog1_18build_script_build.exit.i.i.i

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
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.x, i64 range(i64 1, 0) %i.t, i64 %i.w) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.e, i64 24, i64 8) #20
  resume { ptr, i32 } %i.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsjg28Uxqqog1_18build_script_build.exit.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.e, i64 24, i64 8) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsjg28Uxqqog1_18build_script_build.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECsjg28Uxqqog1_18build_script_build.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsjg28Uxqqog1_18build_script_build.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsjg28Uxqqog1_18build_script_build.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsjg28Uxqqog1_18build_script_build.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsjg28Uxqqog1_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys7process3env10CommandEnvECsjg28Uxqqog1_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCsjg28Uxqqog1_18build_script_build(ptr noalias align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECsjg28Uxqqog1_18build_script_build.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCsjg28Uxqqog1_18build_script_build(ptr nonnull %i.e, i64 %.sroa.23.0.copyload.i.i.i.i)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2r_ENtNtBQ_5alloc6GlobalEECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.b) #18
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECsjg28Uxqqog1_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsjg28Uxqqog1_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !9
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0Csjg28Uxqqog1_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsjg28Uxqqog1_18build_script_build(ptr %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCsjg28Uxqqog1_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsjg28Uxqqog1_18build_script_build(ptr readonly %i.a)
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvCsjg28Uxqqog1_18build_script_build16do_compile_probe(ptr %0, i64 range(i64 15, 25) %1, i1 zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.i = alloca i64, align 8                ; 6 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 4                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  %i.p = alloca [8 x i8], align 8                 ; 3 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [72 x i8], align 8                ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 3 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0177 = alloca i64, align 8               ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 3 uses
  %i.z = alloca [200 x i8], align 8               ; 19 uses
  %i.aa = alloca [72 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 3 uses
  %i.ag = alloca [8 x i8], align 8                ; 3 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 3 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 3 uses
  %i.an = alloca [16 x i8], align 8               ; 3 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  store ptr %0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i64 %1, ptr %i.ap, align 8
  store ptr %i.ao, ptr %i.an, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6__print(ptr nonnull @8, ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @9, ptr %i.m, align 8, !noalias !56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 5, ptr %i.aq, align 8, !noalias !56
  call void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull @9, i64 range(i64 5, 24) 5), !noalias !56
  %i.ar = load i64, ptr %i.l, align 8, !noalias !57
  %.not.i.i = icmp eq i64 %i.ar, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvCsjg28Uxqqog1_18build_script_build13cargo_env_var.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !57
  store ptr %i.m, ptr %i.k, align 8, !noalias !57
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !57
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.k), !noalias !57
  call void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #21, !noalias !57
  unreachable

_RNvCsjg28Uxqqog1_18build_script_build13cargo_env_var.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @10, ptr %i.j, align 8, !noalias !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 7, ptr %i.as, align 8, !noalias !58
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull @10, i64 range(i64 5, 24) 7)
          to label %.noexc64 unwind label %.body169.thread208

.noexc64:                                         ; preds = %_RNvCsjg28Uxqqog1_18build_script_build13cargo_env_var.exit
  %i.at = load i64, ptr %i.i, align 8, !noalias !59
  %.not.i.i62 = icmp eq i64 %i.at, -1
  br i1 %.not.i.i62, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.noexc64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !59
  store ptr %i.j, ptr %i.h, align 8, !noalias !59
  %.sroa.2.0..sroa_idx.i.i.i63 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i63, align 8, !noalias !59
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.h)
          to label %.noexc65 unwind label %.body169.thread208

.noexc65:                                         ; preds = %bb.c
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #21
          to label %.noexc66 unwind label %.body169.thread208

.noexc66:                                         ; preds = %.noexc65
  unreachable

bb.d:                                             ; preds = %.body165
  br i1 %.sroa.014.2, label %bb.da, label %.body169.thread

.body169.thread208:                               ; preds = %.noexc65, %_RNvCsjg28Uxqqog1_18build_script_build13cargo_env_var.exit, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.body165:                                         ; preds = %bb.cw, %bb.e, %bb.g
  %.sroa.014.2 = phi i1 [ %.sroa.014.4, %bb.g ], [ %.sroa.014.3, %bb.e ], [ false, %bb.cw ]
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.g ], [ %i.au, %bb.e ], [ %i.ey, %bb.cw ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.al) #18
          to label %bb.d unwind label %bb.ac

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i164, %bb.f
  %.sroa.014.3 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i164 ], [ true, %bb.f ]
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.f:                                             ; preds = %.noexc64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val36 = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val37 = load i64, ptr %i.aw, align 8
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ak, ptr %.val36, i64 %.val37, ptr nonnull @11, i64 5)
          to label %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.e

bb.g:                                             ; preds = %.thread264, %.thread, %bb.s, %bb.i, %bb.h
  %.sroa.014.4 = phi i1 [ %.sroa.014.5214, %.thread ], [ false, %bb.s ], [ true, %bb.i ], [ true, %bb.h ], [ false, %.thread264 ]
  %.pn28.pn = phi { ptr, i32 } [ %.pn28215, %.thread ], [ %.pn22, %bb.s ], [ %.pn, %bb.i ], [ %i.ax, %bb.h ], [ %lpad.thr_comm.split-lp233, %.thread264 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.ak) #18
          to label %.body165 unwind label %bb.ac

bb.h:                                             ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECsjg28Uxqqog1_18build_script_build.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECsjg28Uxqqog1_18build_script_build.exit: ; preds = %bb.f
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ah, ptr nonnull @12, i64 3, ptr nonnull @11, i64 5)
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.ay, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.ah) #18
          to label %bb.g unwind label %bb.ac

bb.j:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECsjg28Uxqqog1_18build_script_build.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val44 = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val45 = load i64, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.ao, align 8
  %i.bc = load i64, ptr %i.ap, align 8
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ai, ptr %.val44, i64 %.val45, ptr %i.bb, i64 %i.bc)
          to label %bb.m unwind label %bb.j

bb.l:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.ai) #18
          to label %bb.i unwind label %bb.ac

bb.m:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val42 = load ptr, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val43 = load i64, ptr %i.bf, align 8
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path15__with_extension(ptr nonnull sret([24 x i8]) align 8 %i.aj, ptr %.val42, i64 %.val43, ptr nonnull @13, i64 2)
          to label %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path14with_extensionReECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.l

_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path14with_extensionReECsjg28Uxqqog1_18build_script_build.exit: ; preds = %bb.m
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path14with_extensionReECsjg28Uxqqog1_18build_script_build.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.ai)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i: ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path14with_extensionReECsjg28Uxqqog1_18build_script_build.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %i.bg, %bb.n ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.ah) #18
          to label %.thread unwind label %bb.ac

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i76 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.ah)
          to label %.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i76: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit80 unwind label %bb.t

bb.s:                                             ; preds = %.body107
  br i1 %.sroa.013.5, label %.thread, label %bb.g

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i87, %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit80, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i76, %bb.y
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit80: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 511, ptr %i.g, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 0, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  %.val.val.i = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %.val.val1.i = load i64, ptr %i.bo, align 8
  %i.bp = invoke ptr @_RNvMsD_NtCs2AWtUsOyxgP_3std2fsNtB5_10DirBuilder7__create(ptr nonnull align 4 %i.g, ptr %.val.val.i, i64 %.val.val1.i)
          to label %bb.u unwind label %bb.t       ; 4 uses

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bp, ptr %i.ag, align 8
  %i.bq = call fastcc i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kindCsjg28Uxqqog1_18build_script_build(ptr nonnull %i.bp)
  %.not268 = icmp eq i8 %i.bq, 12
  br i1 %.not268, label %bb.y, label %bb.z

bb.w:                                             ; preds = %bb.y, %bb.u
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr nonnull @15, i64 13)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.t

bb.x:                                             ; preds = %bb.aa, %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  %.val35 = load ptr, ptr %i.ag, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjg28Uxqqog1_18build_script_build(ptr %.val35) #18
          to label %.thread unwind label %bb.ac

bb.y:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsjg28Uxqqog1_18build_script_build(ptr nonnull %i.bp)
          to label %bb.w unwind label %bb.t

bb.z:                                             ; preds = %bb.v
  %.val40 = load ptr, ptr %i.bn, align 8
  %.val41 = load i64, ptr %i.bo, align 8
  store ptr %.val40, ptr %i.af, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val41, ptr %i.bs, align 8
  store ptr %i.af, ptr %i.ae, align 8
  %.sroa.2174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2174.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.bt, align 8
  %.sroa.2176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2176.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @14, ptr nonnull %i.ae)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #21
          to label %bb.ab unwind label %bb.x

bb.ab:                                            ; preds = %bb.cu, %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.x, %bb.co, %bb.da, %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i96, %.thread226, %bb.ch, %bb.bz, %bb.by, %.body107, %.body, %bb.l, %bb.i, %bb.g, %.body165
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit: ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bv = load i64, ptr %i.ac, align 8, !noalias !60
  %.not.i85 = icmp eq i64 %i.bv, -1
  br i1 %.not.i85, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit
  store i64 -1, ptr %i.ad, align 8, !alias.scope !60
  br label %bb.aj

bb.ae:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !60
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i = load i64, ptr %i.bw, align 8, !noalias !60
  %.not2.i = icmp eq i64 %.val1.i, 0
  br i1 %.not2.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i87 unwind label %bb.ag, !noalias !60

bb.ag:                                            ; preds = %bb.af
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %.thread unwind label %bb.ah, !noalias !60

bb.ah:                                            ; preds = %bb.ag
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !60
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i87: ; preds = %bb.af
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %.noexc90 unwind label %bb.t

.noexc90:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i87
  store i64 -1, ptr %i.ad, align 8, !alias.scope !60
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.noexc90, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr nonnull @16, i64 23)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit92 unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i97, %bb.aj
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i96

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit92: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ca = load i64, ptr %i.ab, align 8, !noalias !61 ; 2 uses
  %.not.i93 = icmp eq i64 %i.ca, -1
  br i1 %.not.i93, label %.noexc100, label %bb.al

bb.al:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !61
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i94 = load i64, ptr %i.cb, align 8, !noalias !61
  %.not2.i95 = icmp eq i64 %.val1.i94, 0
  br i1 %.not2.i95, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i97 unwind label %bb.an, !noalias !61

bb.an:                                            ; preds = %bb.am
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i96 unwind label %bb.ao, !noalias !61

bb.ao:                                            ; preds = %bb.an
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !61
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i97: ; preds = %bb.am
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.e)
          to label %.noexc100 unwind label %bb.ak

bb.ap:                                            ; preds = %bb.al
  %.sroa.4.0..sroa_idx270 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx270, i64 16, i1 false)
  br label %.noexc100

.noexc100:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i97, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit92, %bb.ap
  %i.ce = phi i64 [ %i.ca, %bb.ap ], [ -1, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit92 ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i97 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %.sroa.2274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.ce, ptr %.sroa.2274.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !62
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !63 ; 3 uses
  switch i64 %i.cg, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i
    i64 -2, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i
  ]

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i: ; preds = %.noexc100
  %.not6.i.i.i.i.i = icmp eq i64 %i.cg, -1        ; 2 uses
  %spec.store.select.i.i.i.i.i = select i1 %.not6.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i, ptr %i.cf, align 8, !noalias !64
  br i1 %.not6.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  br label %.thread237

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i: ; preds = %.noexc100, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ce, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !63
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i: ; preds = %bb.aq, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.ci, %bb.aq ], [ %i.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i, align 8, !noalias !63
  %.pr.i.i = load i64, ptr %i.d, align 8, !noalias !63 ; 2 uses
  %.not6.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not6.i.i, label %bb.ar, label %.thread237

bb.ar:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1d_EECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.cf)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i unwind label %bb.as, !noalias !63

bb.as:                                            ; preds = %bb.ar
  %i.cj = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.cf, align 8, !noalias !63
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.d) #18
          to label %.thread226 unwind label %bb.at, !noalias !63

bb.at:                                            ; preds = %bb.as
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !63
  unreachable

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i: ; preds = %bb.ar
  store i64 -3, ptr %i.cf, align 8, !noalias !63
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i

.thread237:                                       ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i
  %.sroa.0.0.copyload.ph.i = phi i64 [ %.pr.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i ], [ %i.cg, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx8.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !62
  store i64 %.sroa.0.0.copyload.ph.i, ptr %.sroa.0177, align 8, !alias.scope !62
  br label %bb.aw

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i: ; preds = %.noexc100, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !62
  %i.cl = load i64, ptr %i.aa, align 8, !noalias !65 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cl, -2
  br i1 %.not.i.i.i, label %bb.au, label %3

3:                                                ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i
  store i64 %i.cl, ptr %.sroa.0177, align 8
  %.sroa.5.0..sroa_idx179 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx179, i64 16, i1 false)
  br label %bb.au

.thread234:                                       ; preds = %bb.aw, %bb.av
  %lpad.thr_comm232 = landingpad { ptr, i32 }
          cleanup
  br label %.thread226

.thread264:                                       ; preds = %bb.cn
  %lpad.thr_comm.split-lp233 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.au:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i, %3
  %.sink.i.i.i = phi ptr [ %i.aa, %3 ], [ %.sroa.0177, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i ]
  store i64 -1, ptr %.sink.i.i.i, align 8
  %.sroa.0177.0..sroa.0177.0..sroa.0177.0..sroa.0177.0..pr = load i64, ptr %.sroa.0177, align 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0177.0..sroa.0177.0..sroa.0177.0..sroa.0177.0..pr, -1
  br i1 %.not.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @17) #21
          to label %.noexc unwind label %.thread234

.noexc:                                           ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.au, %.thread237
  %.sroa.0177.0..sroa.0177.0.240 = phi i64 [ %.sroa.0.0.copyload.ph.i, %.thread237 ], [ %.sroa.0177.0..sroa.0177.0..sroa.0177.0..sroa.0177.0..pr, %bb.au ]
  store i64 %.sroa.0177.0..sroa.0177.0.240, ptr %i.y, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  invoke fastcc void @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build(ptr noalias align 8 %i.z, ptr align 8 %i.y)
          to label %bb.ax unwind label %.thread234

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %.sroa.3.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i104

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i104: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsjg28Uxqqog1_18build_script_build.exit.i.i, %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.cp = load i64, ptr %i.cm, align 8, !noalias !67 ; 3 uses
  switch i64 %i.cp, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i
    i64 -2, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i104
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.cp, -1      ; 2 uses
  %spec.store.select.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i.i, ptr %i.cm, align 8, !noalias !68
  br i1 %.not6.i.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx8.i.i.i.i.i.i, i64 16, i1 false), !noalias !67
  br label %.thread.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i104
  %i.cq = load i64, ptr %i.cn, align 8, !noalias !69
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, -2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !67
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i.i: ; preds = %bb.ay, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.ay ], [ %i.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i.i, align 8, !noalias !67
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !67 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.az, label %.thread.i

bb.az:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1d_EECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.cm)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i unwind label %bb.ba, !noalias !67

bb.ba:                                            ; preds = %bb.az
  %i.cr = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.cm, align 8, !noalias !67
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.a) #18
          to label %.body.i unwind label %bb.bb, !noalias !67

bb.bb:                                            ; preds = %bb.ba
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !67
  unreachable

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i: ; preds = %bb.az
  store i64 -3, ptr %i.cm, align 8, !noalias !67
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i

.thread.i:                                        ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %.pr.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.i.i.i ], [ %i.cp, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsjg28Uxqqog1_18build_script_build.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %.sroa.0.i, align 8, !alias.scope !66
  br label %bb.bg

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  %i.ct = load i64, ptr %i.c, align 8, !noalias !70 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ct, -2
  br i1 %.not.i.i.i.i, label %bb.bd, label %4

4:                                                ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i
  store i64 %i.ct, ptr %.sroa.0.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false)
  br label %bb.bd

.body.i:                                          ; preds = %bb.bh, %bb.bf, %bb.bc, %bb.ba
  %.pn.i = phi { ptr, i32 } [ %i.cv, %bb.bf ], [ %i.cr, %bb.ba ], [ %i.cu, %bb.bc ], [ %i.cw, %bb.bh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.c) #18
          to label %.body107 unwind label %bb.bj

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsjg28Uxqqog1_18build_script_build.exit.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bd:                                            ; preds = %4, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i
  %.sink.i.i.i.i = phi ptr [ %i.c, %4 ], [ %.sroa.0.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsjg28Uxqqog1_18build_script_build.exit.thread.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i = load i64, ptr %.sroa.0.i, align 8 ; 2 uses
  %.not.i105 = icmp eq i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, -1
  br i1 %.not.i105, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.c)
          to label %bb.bl unwind label %bb.bk

bb.bf:                                            ; preds = %bb.bg
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.b) #18
          to label %.body.i unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bd, %.thread.i
  %.sroa.0.0..sroa.0.0.9.i = phi i64 [ %.sroa.0.0.copyload.ph.i.i, %.thread.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, %bb.bd ]
  store i64 %.sroa.0.0..sroa.0.0.9.i, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %.val.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.val2.i = load i64, ptr %i.co, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i, i64 %.val2.i)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsjg28Uxqqog1_18build_script_build.exit.i unwind label %bb.bf

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsjg28Uxqqog1_18build_script_build.exit.i: ; preds = %bb.bg
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsjg28Uxqqog1_18build_script_build.exit.i.i unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsjg28Uxqqog1_18build_script_build.exit.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %.body.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsjg28Uxqqog1_18build_script_build.exit.i.i: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsjg28Uxqqog1_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i104 unwind label %bb.bc

bb.bj:                                            ; preds = %bb.bf, %.body.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

.body107:                                         ; preds = %bb.bv, %bb.bt, %.body143, %bb.bn, %bb.bp, %.body.i, %bb.bk, %bb.co, %bb.ch, %.body146, %bb.by
  %.sroa.013.5 = phi i1 [ false, %.body143 ], [ false, %bb.co ], [ false, %bb.bv ], [ false, %.body146 ], [ false, %bb.ch ], [ false, %bb.by ], [ true, %.body.i ], [ %.sroa.013.6, %bb.bk ], [ false, %bb.bp ], [ false, %bb.bn ], [ false, %bb.bt ]
  %.pn22 = phi { ptr, i32 } [ %i.di, %.body143 ], [ %i.eq, %bb.co ], [ %i.dm, %bb.bv ], [ %.pn19, %.body146 ], [ %.pn19, %bb.ch ], [ %i.dp, %bb.by ], [ %.pn.i, %.body.i ], [ %i.cz, %bb.bk ], [ %i.de, %bb.bp ], [ %i.dd, %bb.bn ], [ %i.dl, %bb.bt ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.z) #18
          to label %bb.s unwind label %bb.ac

bb.bk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std7process10ExitStatusNtNtNtB11_2io5error5ErrorEECsjg28Uxqqog1_18build_script_build.exit156, %bb.cl, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit.i, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit123, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit121, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit119, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit117, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit115, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit113, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECsjg28Uxqqog1_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECsjg28Uxqqog1_18build_script_build.exit, %bb.bm, %bb.be, %bb.cs, %bb.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjg28Uxqqog1_18build_script_build.exit.thread
  %.sroa.013.6 = phi i1 [ false, %bb.cs ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std7process10ExitStatusNtNtNtB11_2io5error5ErrorEECsjg28Uxqqog1_18build_script_build.exit156 ], [ false, %bb.cl ], [ false, %bb.ci ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjg28Uxqqog1_18build_script_build.exit.thread ], [ false, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit ], [ false, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit.i ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit123 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit121 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit119 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit117 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit115 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit113 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECsjg28Uxqqog1_18build_script_build.exit ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECsjg28Uxqqog1_18build_script_build.exit ], [ true, %bb.be ], [ true, %bb.bm ]
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body107

bb.bl:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %2, label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECsjg28Uxqqog1_18build_script_build.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.da = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  invoke void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std3sys7process3envNtB4_10CommandEnv6remove(ptr nonnull align 8 %i.da, ptr nonnull @18, i64 15)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECsjg28Uxqqog1_18build_script_build.exit: ; preds = %bb.bl, %bb.bm
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command6stderr(ptr nonnull align 8 %i.z, i32 1, i32 undef)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECsjg28Uxqqog1_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @19, i64 28)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECsjg28Uxqqog1_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @20, i64 14)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit113 unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit113: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @21, i64 24)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit115 unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit115: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit113
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @22, i64 16)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit117 unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit117: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit115
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @23, i64 17)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit119 unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit119: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit117
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @24, i64 24)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit121 unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit121: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit119
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @25, i64 9)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit123 unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit123: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit121
  %.val.val.i124 = load ptr, ptr %i.bn, align 8
  %.val.val1.i125 = load i64, ptr %i.bo, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.val.i124, i64 %.val.val1.i125)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.bk

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i127 = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i128 = load i64, ptr %i.dc, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i127, i64 %.val1.i128)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.x) #18
          to label %.body107 unwind label %bb.br

bb.bo:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %.body107 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.bk

bb.br:                                            ; preds = %bb.bn
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjg28Uxqqog1_18build_script_build.exit.i
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull @26, i64 6)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit134 unwind label %bb.bk

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit134: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsjg28Uxqqog1_18build_script_build.exit
  %i.dh = load i64, ptr %i.w, align 8
  %.not17 = icmp eq i64 %i.dh, -1
  br i1 %.not17, label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @27, i64 8)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit136 unwind label %bb.by

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i142, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECsjg28Uxqqog1_18build_script_build.exit134
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull @28, i64 23)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env3varReECsjg28Uxqqog1_18build_script_build.exit unwind label %bb.bk

.body143:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i142
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body107

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit136: ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i138 = load ptr, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val1.i139 = load i64, ptr %i.dk, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i138, i64 %.val1.i139)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit136
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.u) #18
          to label %.body107 unwind label %bb.bx

bb.bu:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit136
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i142 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %.body107 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit.i142: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit unwind label %.body143

bb.bx:                                            ; preds = %bb.bt
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.by:                                            ; preds = %bb.bs
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build(ptr nonnull align 8 %i.v) #18
          to label %.body107 unwind label %bb.ac

_RINvNtCs2AWtUsOyxgP_3std3env3varReECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsjg28Uxqqog1_18build_script_build.exit
  %i.dq = load i64, ptr %i.t, align 8
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjg28Uxqqog1_18build_script_build.exit.thread, label %bb.ca

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjg28Uxqqog1_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjg28Uxqqog1_18build_script_build.exit.i
  %.pre = load i64, ptr %i.t, align 8
  %i.ds = trunc nuw i64 %.pre to i1
  br i1 %i.ds, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjg28Uxqqog1_18build_script_build.exit.thread, label %bb.ci

bb.bz:                                            ; preds = %bb.cf, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsjg28Uxqqog1_18build_script_build.exit152
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjg28Uxqqog1_18build_script_build(ptr align 8 %i.s) #18
          to label %.body146 unwind label %bb.ac

bb.ca:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env3varReECsjg28Uxqqog1_18build_script_build.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val51 = load i64, ptr %i.dv, align 8          ; 4 uses
  %i.dw = icmp eq i64 %.val51, 0
  br i1 %i.dw, label %.loopexit, label %bb.cd

.loopexit:                                        ; preds = %bb.ce, %bb.ca
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjg28Uxqqog1_18build_script_build.exit.i unwind label %bb.cb

bb.cb:                                            ; preds = %.loopexit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
          to label %.body146 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjg28Uxqqog1_18build_script_build.exit.i: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
end_hunk_0
