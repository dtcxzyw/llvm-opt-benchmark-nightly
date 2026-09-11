Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-77848796bc9a8315.build_script_build.ef08887b6bae77b3-cgu.0?download=true
inline.NumInlined: 360
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECskwmRKbZUK5j_18build_script_build:bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %.not5.i.i.i = icmp eq i64 %i.d, 1095216660480
  %.not.i.i.i = or i1 %i.c, %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECskwmRKbZUK5j_18build_script_build.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 @12) #22, !noalias !7
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val, i64 -1      ; 5 uses
  %i.f = getelementptr i8, ptr %.val, i64 7       ; 3 uses
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
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECskwmRKbZUK5j_18build_script_build.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load i64, ptr %i.n, align 8, !invariant.load !4
  %i.p = load ptr, ptr %i.e, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.p, i64 range(i64 1, 0) %i.l, i64 %i.o) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECskwmRKbZUK5j_18build_script_build.exit.i.i.i

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
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr %i.x, i64 range(i64 1, 0) %i.t, i64 %i.w) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.e, i64 24, i64 8) #22
  resume { ptr, i32 } %i.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECskwmRKbZUK5j_18build_script_build.exit.i.i.i: ; preds = %bb.g, %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr nonnull %i.e, i64 24, i64 8) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECskwmRKbZUK5j_18build_script_build.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECskwmRKbZUK5j_18build_script_build.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECskwmRKbZUK5j_18build_script_build.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskwmRKbZUK5j_18build_script_build.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskwmRKbZUK5j_18build_script_build.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECskwmRKbZUK5j_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys7process3env10CommandEnvECskwmRKbZUK5j_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB16_EE10dying_nextCskwmRKbZUK5j_18build_script_build(ptr noalias align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECskwmRKbZUK5j_18build_script_build.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtCs4NRVxsYgnAr_4core6option6OptionB1D_ENtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCskwmRKbZUK5j_18build_script_build(ptr nonnull %i.e, i64 %.sroa.23.0.copyload.i.i.i.i)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2r_ENtNtBQ_5alloc6GlobalEECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.b) #20
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1z_EEECskwmRKbZUK5j_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECskwmRKbZUK5j_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !9
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0CskwmRKbZUK5j_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECskwmRKbZUK5j_18build_script_build(ptr %i.a)
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCskwmRKbZUK5j_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCs2AWtUsOyxgP_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECskwmRKbZUK5j_18build_script_build(ptr readonly %i.a)
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvCskwmRKbZUK5j_18build_script_build13compile_probe(i1 zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [72 x i8], align 8                ; 12 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 3 uses
  %i.w = alloca [24 x i8], align 8                ; 3 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0151 = alloca i64, align 8               ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 3 uses
  %i.z = alloca [200 x i8], align 8               ; 18 uses
  %i.aa = alloca [72 x i8], align 8               ; 10 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 3 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 3 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 3 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  call void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.al, ptr nonnull @16, i64 11)
  %.val38 = load i64, ptr %i.al, align 8
  %.not239 = icmp eq i64 %.val38, -1
  br i1 %.not239, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskwmRKbZUK5j_18build_script_build.exit, label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskwmRKbZUK5j_18build_script_build.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @17, ptr %i.m, align 8, !noalias !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 5, ptr %i.am, align 8, !noalias !56
  call void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull @17, i64 range(i64 5, 24) 5), !noalias !56
  %i.an = load i64, ptr %i.l, align 8, !noalias !57
  %.not.i.i = icmp eq i64 %i.an, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvCskwmRKbZUK5j_18build_script_build13cargo_env_var.exit

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskwmRKbZUK5j_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !57
  store ptr %i.m, ptr %i.k, align 8, !noalias !57
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !57
  call void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @14, ptr nonnull %i.k), !noalias !57
  call void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #23, !noalias !57
  unreachable

_RNvCskwmRKbZUK5j_18build_script_build13cargo_env_var.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskwmRKbZUK5j_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @18, ptr %i.j, align 8, !noalias !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 7, ptr %i.ao, align 8, !noalias !58
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull @18, i64 range(i64 5, 24) 7)
          to label %.noexc53 unwind label %.body145.thread181

.noexc53:                                         ; preds = %_RNvCskwmRKbZUK5j_18build_script_build13cargo_env_var.exit
  %i.ap = load i64, ptr %i.i, align 8, !noalias !59
  %.not.i.i51 = icmp eq i64 %i.ap, -1
  br i1 %.not.i.i51, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !59
  store ptr %i.j, ptr %i.h, align 8, !noalias !59
  %.sroa.2.0..sroa_idx.i.i.i52 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCskyMLgGZzWrX_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i52, align 8, !noalias !59
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @14, ptr nonnull %i.h)
          to label %.noexc54 unwind label %.body145.thread181

.noexc54:                                         ; preds = %bb.c
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #23
          to label %.noexc55 unwind label %.body145.thread181

.noexc55:                                         ; preds = %.noexc54
  unreachable

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.al)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.cs, %bb.cq, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %.pn27.pn.pn.pn178, %bb.cs ], [ %.pn27.pn.pn, %bb.g ], [ %i.ek, %bb.cq ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.body142
  br i1 %.sroa.015.2, label %bb.cs, label %common.resume

.body145.thread181:                               ; preds = %.noexc54, %_RNvCskwmRKbZUK5j_18build_script_build13cargo_env_var.exit, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.body142:                                         ; preds = %bb.co, %bb.h, %bb.j
  %.sroa.015.2 = phi i1 [ %.sroa.015.4, %bb.j ], [ %.sroa.015.3, %bb.h ], [ false, %bb.co ]
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.j ], [ %i.as, %bb.h ], [ %i.ei, %bb.co ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.aj) #20
          to label %bb.g unwind label %bb.v

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i141, %bb.i
  %.sroa.015.3 = phi i1 [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i141 ], [ true, %bb.i ]
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.i:                                             ; preds = %.noexc53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val39 = load ptr, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val40 = load i64, ptr %i.au, align 8
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ai, ptr %.val39, i64 %.val40, ptr nonnull @19, i64 5)
          to label %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.h

bb.j:                                             ; preds = %.thread235, %.thread, %bb.l, %bb.k
  %.sroa.015.4 = phi i1 [ %.sroa.015.5187, %.thread ], [ false, %bb.l ], [ true, %bb.k ], [ false, %.thread235 ]
  %.pn27.pn = phi { ptr, i32 } [ %.pn27188, %.thread ], [ %.pn21, %bb.l ], [ %i.av, %bb.k ], [ %lpad.thr_comm.split-lp206, %.thread235 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwmRKbZUK5j_18build_script_build(ptr align 8 %i.ai) #20
          to label %.body142 unwind label %bb.v

bb.k:                                             ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit: ; preds = %bb.i
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ah, ptr nonnull @20, i64 5, ptr nonnull @21, i64 8)
          to label %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit62 unwind label %bb.k

_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit62: ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 511, ptr %i.g, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 5 uses
  %.val.val.i = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %.val.val1.i = load i64, ptr %i.ay, align 8
  %i.az = invoke ptr @_RNvMsD_NtCs2AWtUsOyxgP_3std2fsNtB5_10DirBuilder7__create(ptr nonnull align 4 %i.g, ptr %.val.val.i, i64 %.val.val1.i)
          to label %bb.n unwind label %bb.m       ; 3 uses

bb.l:                                             ; preds = %.body86
  br i1 %.sroa.014.5, label %.thread, label %bb.j

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i68, %bb.p, %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit62, %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECskwmRKbZUK5j_18build_script_build.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.az, ptr %i.ag, align 8
  %i.bb = call fastcc i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kindCskwmRKbZUK5j_18build_script_build(ptr nonnull %i.az)
  %.not240 = icmp eq i8 %i.bb, 12
  br i1 %.not240, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.r, %bb.n
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr nonnull @23, i64 13)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.m

bb.q:                                             ; preds = %bb.t, %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.ag) #20
          to label %.thread unwind label %bb.v

bb.r:                                             ; preds = %bb.o
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.ag)
          to label %bb.p unwind label %bb.m

bb.s:                                             ; preds = %bb.o
  %.val36 = load ptr, ptr %i.ax, align 8
  %.val37 = load i64, ptr %i.ay, align 8
  store ptr %.val36, ptr %i.af, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.val37, ptr %i.bd, align 8
  store ptr %i.af, ptr %i.ae, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1b_NtCs2AWtUsOyxgP_3std4pathNtB6_7DisplayNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.be, align 8
  %.sroa.2150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.2150.0..sroa_idx, align 8
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr nonnull @22, ptr nonnull %i.ae)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs2AWtUsOyxgP_3std7process4exit(i32 1) #23
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.cm, %bb.t
  unreachable

bb.v:                                             ; preds = %bb.cs, %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i75, %.thread199, %bb.cg, %bb.ca, %bb.bs, %bb.br, %.body86, %bb.q, %bb.j, %.body142
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit: ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bg = load i64, ptr %i.ac, align 8, !noalias !60
  %.not.i66 = icmp eq i64 %i.bg, -1
  br i1 %.not.i66, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit
  store i64 -1, ptr %i.ad, align 8, !alias.scope !60
  br label %bb.ac

bb.x:                                             ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val1.i = load i64, ptr %i.bh, align 8, !noalias !60
  %.not2.i = icmp eq i64 %.val1.i, 0
  br i1 %.not2.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i68 unwind label %bb.z, !noalias !60

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %.thread unwind label %bb.aa, !noalias !60

bb.aa:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !60
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i68: ; preds = %bb.y
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.f)
          to label %.noexc69 unwind label %bb.m

.noexc69:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i68
  store i64 -1, ptr %i.ad, align 8, !alias.scope !60
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc69, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.ab, ptr nonnull @24, i64 23)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit71 unwind label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i76, %bb.ac
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i75

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit71: ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bl = load i64, ptr %i.ab, align 8, !noalias !61 ; 2 uses
  %.not.i72 = icmp eq i64 %i.bl, -1
  br i1 %.not.i72, label %.noexc79, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !61
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val1.i73 = load i64, ptr %i.bm, align 8, !noalias !61
  %.not2.i74 = icmp eq i64 %.val1.i73, 0
  br i1 %.not2.i74, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i76 unwind label %bb.ag, !noalias !61

bb.ag:                                            ; preds = %bb.af
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i75 unwind label %bb.ah, !noalias !61

bb.ah:                                            ; preds = %bb.ag
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !61
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i76: ; preds = %bb.af
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.e)
          to label %.noexc79 unwind label %bb.ad

bb.ai:                                            ; preds = %bb.ae
  %.sroa.4.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx242, i64 16, i1 false)
  br label %.noexc79

.noexc79:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i76, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit71, %bb.ai
  %i.bp = phi i64 [ %i.bl, %bb.ai ], [ -1, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit71 ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i76 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %.sroa.2246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.bp, ptr %.sroa.2246.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !62
  %i.br = load i64, ptr %i.bq, align 8, !noalias !63 ; 3 uses
  switch i64 %i.br, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i
    i64 -2, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i
  ]

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i: ; preds = %.noexc79
  %.not6.i.i.i.i.i = icmp eq i64 %i.br, -1        ; 2 uses
  %spec.store.select.i.i.i.i.i = select i1 %.not6.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i, ptr %i.bq, align 8, !noalias !64
  br i1 %.not6.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false)
  br label %.thread210

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i: ; preds = %.noexc79, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bp, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !63
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i: ; preds = %bb.aj, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.aj ], [ %i.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i, align 8, !noalias !63
  %.pr.i.i = load i64, ptr %i.d, align 8, !noalias !63 ; 2 uses
  %.not6.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not6.i.i, label %bb.ak, label %.thread210

bb.ak:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1d_EECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.bq)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i unwind label %bb.al, !noalias !63

bb.al:                                            ; preds = %bb.ak
  %i.bu = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.bq, align 8, !noalias !63
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.d) #20
          to label %.thread199 unwind label %bb.am, !noalias !63

bb.am:                                            ; preds = %bb.al
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !63
  unreachable

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i: ; preds = %bb.ak
  store i64 -3, ptr %i.bq, align 8, !noalias !63
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i

.thread210:                                       ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i
  %.sroa.0.0.copyload.ph.i = phi i64 [ %.pr.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i ], [ %i.br, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx8.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !62
  store i64 %.sroa.0.0.copyload.ph.i, ptr %.sroa.0151, align 8, !alias.scope !62
  br label %bb.ap

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i: ; preds = %.noexc79, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !62
  %i.bw = load i64, ptr %i.aa, align 8, !noalias !65 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bw, -2
  br i1 %.not.i.i.i, label %bb.an, label %1

1:                                                ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i
  store i64 %i.bw, ptr %.sroa.0151, align 8
  %.sroa.5.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx153, i64 16, i1 false)
  br label %bb.an

.thread207:                                       ; preds = %bb.ap, %bb.ao
  %lpad.thr_comm205 = landingpad { ptr, i32 }
          cleanup
  br label %.thread199

.thread235:                                       ; preds = %bb.cf
  %lpad.thr_comm.split-lp206 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.an:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i, %1
  %.sink.i.i.i = phi ptr [ %i.aa, %1 ], [ %.sroa.0151, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i ]
  store i64 -1, ptr %.sink.i.i.i, align 8
  %.sroa.0151.0..sroa.0151.0..sroa.0151.0..sroa.0151.0..pr = load i64, ptr %.sroa.0151, align 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0151.0..sroa.0151.0..sroa.0151.0..sroa.0151.0..pr, -1
  br i1 %.not.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @25) #23
          to label %.noexc unwind label %.thread207

.noexc:                                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an, %.thread210
  %.sroa.0151.0..sroa.0151.0.213 = phi i64 [ %.sroa.0.0.copyload.ph.i, %.thread210 ], [ %.sroa.0151.0..sroa.0151.0..sroa.0151.0..sroa.0151.0..pr, %bb.an ]
  store i64 %.sroa.0151.0..sroa.0151.0.213, ptr %i.y, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  invoke fastcc void @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build(ptr noalias align 8 %i.z, ptr align 8 %i.y)
          to label %bb.aq unwind label %.thread207

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %.sroa.3.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i83

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i83: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECskwmRKbZUK5j_18build_script_build.exit.i.i, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  %i.ca = load i64, ptr %i.bx, align 8, !noalias !67 ; 3 uses
  switch i64 %i.ca, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i
    i64 -2, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i83
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.ca, -1      ; 2 uses
  %spec.store.select.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i.i, ptr %i.bx, align 8, !noalias !68
  br i1 %.not6.i.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx8.i.i.i.i.i.i, i64 16, i1 false), !noalias !67
  br label %.thread.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i83
  %i.cb = load i64, ptr %i.by, align 8, !noalias !69
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cb, -2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !67
  br label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i.i: ; preds = %bb.ar, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.by, %bb.ar ], [ %i.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i.i, align 8, !noalias !67
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !67 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1d_EECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.bx)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i unwind label %bb.at, !noalias !67

bb.at:                                            ; preds = %bb.as
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.bx, align 8, !noalias !67
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.a) #20
          to label %.body.i unwind label %bb.au, !noalias !67

bb.au:                                            ; preds = %bb.at
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !67
  unreachable

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i: ; preds = %bb.as
  store i64 -3, ptr %i.bx, align 8, !noalias !67
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i

.thread.i:                                        ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %.pr.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.i.i.i ], [ %i.ca, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCskwmRKbZUK5j_18build_script_build.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %.sroa.0.i, align 8, !alias.scope !66
  br label %bb.az

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  %i.ce = load i64, ptr %i.c, align 8, !noalias !70 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ce, -2
  br i1 %.not.i.i.i.i, label %bb.aw, label %2

2:                                                ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i
  store i64 %i.ce, ptr %.sroa.0.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false)
  br label %bb.aw

.body.i:                                          ; preds = %bb.ba, %bb.ay, %bb.av, %bb.at
  %.pn.i = phi { ptr, i32 } [ %i.cg, %bb.ay ], [ %i.cc, %bb.at ], [ %i.cf, %bb.av ], [ %i.ch, %bb.ba ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECskwmRKbZUK5j_18build_script_build(ptr align 8 %i.c) #20
          to label %.body86 unwind label %bb.bc

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECskwmRKbZUK5j_18build_script_build.exit.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.aw:                                            ; preds = %2, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i
  %.sink.i.i.i.i = phi ptr [ %i.c, %2 ], [ %.sroa.0.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECskwmRKbZUK5j_18build_script_build.exit.thread.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i = load i64, ptr %.sroa.0.i, align 8 ; 2 uses
  %.not.i84 = icmp eq i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, -1
  br i1 %.not.i84, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECskwmRKbZUK5j_18build_script_build(ptr align 8 %i.c)
          to label %bb.be unwind label %bb.bd

bb.ay:                                            ; preds = %bb.az
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.b) #20
          to label %.body.i unwind label %bb.bc

bb.az:                                            ; preds = %bb.aw, %.thread.i
  %.sroa.0.0..sroa.0.0.9.i = phi i64 [ %.sroa.0.0.copyload.ph.i.i, %.thread.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, %bb.aw ]
  store i64 %.sroa.0.0..sroa.0.0.9.i, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %.val.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.val2.i = load i64, ptr %i.bz, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i, i64 %.val2.i)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECskwmRKbZUK5j_18build_script_build.exit.i unwind label %bb.ay

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECskwmRKbZUK5j_18build_script_build.exit.i: ; preds = %bb.az
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECskwmRKbZUK5j_18build_script_build.exit.i.i unwind label %bb.ba

bb.ba:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECskwmRKbZUK5j_18build_script_build.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %.body.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECskwmRKbZUK5j_18build_script_build.exit.i.i: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECskwmRKbZUK5j_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i83 unwind label %bb.av

bb.bc:                                            ; preds = %bb.ay, %.body.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

.body86:                                          ; preds = %bb.bo, %bb.bm, %.body120, %bb.bg, %bb.bi, %.body.i, %bb.bd, %bb.cg, %bb.ca, %.body123, %bb.br
  %.sroa.014.5 = phi i1 [ false, %.body120 ], [ false, %bb.cg ], [ false, %bb.bo ], [ false, %.body123 ], [ false, %bb.ca ], [ false, %bb.br ], [ true, %.body.i ], [ %.sroa.014.6, %bb.bd ], [ false, %bb.bi ], [ false, %bb.bg ], [ false, %bb.bm ]
  %.pn21 = phi { ptr, i32 } [ %i.ct, %.body120 ], [ %i.ea, %bb.cg ], [ %i.cx, %bb.bo ], [ %.pn, %.body123 ], [ %.pn, %bb.ca ], [ %i.da, %bb.br ], [ %.pn.i, %.body.i ], [ %i.ck, %bb.bd ], [ %i.cp, %bb.bi ], [ %i.co, %bb.bg ], [ %i.cw, %bb.bm ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECskwmRKbZUK5j_18build_script_build(ptr align 8 %i.z) #20
          to label %bb.l unwind label %bb.v

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std7process10ExitStatusNtNtNtB11_2io5error5ErrorEECskwmRKbZUK5j_18build_script_build.exit133, %.thread218, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwmRKbZUK5j_18build_script_build.exit.i, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit100, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit98, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit96, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit94, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit92, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECskwmRKbZUK5j_18build_script_build.exit, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECskwmRKbZUK5j_18build_script_build.exit, %bb.bf, %bb.ax, %bb.ck, %bb.cb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwmRKbZUK5j_18build_script_build.exit.thread
  %.sroa.014.6 = phi i1 [ false, %bb.ck ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std7process10ExitStatusNtNtNtB11_2io5error5ErrorEECskwmRKbZUK5j_18build_script_build.exit133 ], [ false, %.thread218 ], [ false, %bb.cb ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwmRKbZUK5j_18build_script_build.exit.thread ], [ false, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit ], [ false, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwmRKbZUK5j_18build_script_build.exit.i ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit100 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit98 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit96 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit94 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit92 ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECskwmRKbZUK5j_18build_script_build.exit ], [ true, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECskwmRKbZUK5j_18build_script_build.exit ], [ true, %bb.ax ], [ true, %bb.bf ]
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body86

bb.be:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %0, label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECskwmRKbZUK5j_18build_script_build.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  invoke void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std3sys7process3envNtB4_10CommandEnv6remove(ptr nonnull align 8 %i.cl, ptr nonnull @26, i64 15)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECskwmRKbZUK5j_18build_script_build.exit: ; preds = %bb.be, %bb.bf
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command6stderr(ptr nonnull align 8 %i.z, i32 1, i32 undef)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECskwmRKbZUK5j_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command10env_removeReECskwmRKbZUK5j_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @27, i64 14)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECskwmRKbZUK5j_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @28, i64 22)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit92 unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit92: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @29, i64 16)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit94 unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit94: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit92
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @30, i64 17)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit96 unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit96: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit94
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @31, i64 24)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit98 unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit98: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit96
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @32, i64 9)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit100 unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit100: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit98
  %.val.val.i101 = load ptr, ptr %i.ax, align 8
  %.val.val1.i102 = load i64, ptr %i.ay, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.val.i101, i64 %.val.val1.i102)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.bd

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i104 = load ptr, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i105 = load i64, ptr %i.cn, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i104, i64 %.val1.i105)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.x) #20
          to label %.body86 unwind label %bb.bk

bb.bh:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwmRKbZUK5j_18build_script_build.exit.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %.body86 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwmRKbZUK5j_18build_script_build.exit.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.bd

bb.bk:                                            ; preds = %bb.bg
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECskwmRKbZUK5j_18build_script_build.exit.i
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env7__var_os(ptr nonnull sret([24 x i8]) align 8 %i.w, ptr nonnull @33, i64 6)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit111 unwind label %bb.bd

_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit111: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECskwmRKbZUK5j_18build_script_build.exit
  %i.cs = load i64, ptr %i.w, align 8
  %.not17 = icmp eq i64 %i.cs, -1
  br i1 %.not17, label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr nonnull @34, i64 8)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit113 unwind label %bb.br

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i119, %_RINvNtCs2AWtUsOyxgP_3std3env6var_osReECskwmRKbZUK5j_18build_script_build.exit111
  invoke void @_RNvNtCs2AWtUsOyxgP_3std3env4__var(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr nonnull @35, i64 23)
          to label %_RINvNtCs2AWtUsOyxgP_3std3env3varReECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.bd

.body120:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i119
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body86

_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit113: ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i115 = load ptr, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val1.i116 = load i64, ptr %i.cv, align 8
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.z, ptr %.val.i115, i64 %.val1.i116)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit113
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.u) #20
          to label %.body86 unwind label %bb.bq

bb.bn:                                            ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit113
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i119 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %.body86 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit.i119: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.u)
          to label %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit unwind label %.body120

bb.bq:                                            ; preds = %bb.bm
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.br:                                            ; preds = %bb.bl
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build(ptr nonnull align 8 %i.v) #20
          to label %.body86 unwind label %bb.v

_RINvNtCs2AWtUsOyxgP_3std3env3varReECskwmRKbZUK5j_18build_script_build.exit: ; preds = %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECskwmRKbZUK5j_18build_script_build.exit
  %i.db = load i64, ptr %i.t, align 8
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwmRKbZUK5j_18build_script_build.exit.thread, label %bb.bt

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwmRKbZUK5j_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskwmRKbZUK5j_18build_script_build.exit.i
  %.pre = load i64, ptr %i.t, align 8
  %i.dd = trunc nuw i64 %.pre to i1
  br i1 %i.dd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwmRKbZUK5j_18build_script_build.exit.thread, label %bb.cb

bb.bs:                                            ; preds = %bb.by, %_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECskwmRKbZUK5j_18build_script_build.exit129
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwmRKbZUK5j_18build_script_build(ptr align 8 %i.s) #20
          to label %.body123 unwind label %bb.v

bb.bt:                                            ; preds = %_RINvNtCs2AWtUsOyxgP_3std3env3varReECskwmRKbZUK5j_18build_script_build.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val46 = load i64, ptr %i.dg, align 8          ; 4 uses
  %i.dh = icmp eq i64 %.val46, 0
  br i1 %i.dh, label %.loopexit, label %bb.bw

.loopexit:                                        ; preds = %bb.bx, %bb.bt
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskwmRKbZUK5j_18build_script_build.exit.i unwind label %bb.bu

bb.bu:                                            ; preds = %.loopexit
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
          to label %.body123 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskwmRKbZUK5j_18build_script_build.exit.i: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjd0ZH04R2Z3_5gimli(ptr nonnull align 8 %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskwmRKbZUK5j_18build_script_build.exit unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bt
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
end_hunk_0
