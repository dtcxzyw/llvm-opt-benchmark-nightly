Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/build_script_build.build_script_build.816536d34e3e7ec7-cgu.0?download=true
inline.NumInlined: 357
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECsb6LE8Ek1IVf_18build_script_build:bb.a
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECsb6LE8Ek1IVf_18build_script_build.exit30.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECsb6LE8Ek1IVf_18build_script_build.exit27.i: ; preds = %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECsb6LE8Ek1IVf_18build_script_build.exit21.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load i32, ptr %i.bn, align 8
  %cond.i31.i = icmp eq i32 %i.bo, 3
  br i1 %cond.i31.i, label %bb.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECsb6LE8Ek1IVf_18build_script_build.exit

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECsb6LE8Ek1IVf_18build_script_build.exit27.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val.i.i32.i = load i32, ptr %i.bp, align 4
  %i.bq = tail call i32 @close(i32 %.val.i.i32.i) #21 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECsb6LE8Ek1IVf_18build_script_build.exit

bb.ad:                                            ; preds = %.body16.i, %.body.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECsb6LE8Ek1IVf_18build_script_build.exit30.i: ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECsb6LE8Ek1IVf_18build_script_build.exit24.i
  resume { ptr, i32 } %.pn8.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECsb6LE8Ek1IVf_18build_script_build.exit27.i, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsb6LE8Ek1IVf_18build_script_build.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsb6LE8Ek1IVf_18build_script_build.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp uge ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %.not3.i.i.i = icmp eq i64 %i.e, 1095216660480
  %.not.i.i.i = or i1 %i.d, %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsb6LE8Ek1IVf_18build_script_build.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 @10) #23, !noalias !8
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !8
  store i8 3, ptr %i.a, align 8, !alias.scope !8
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsb6LE8Ek1IVf_18build_script_build.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsb6LE8Ek1IVf_18build_script_build.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsb6LE8Ek1IVf_18build_script_build.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys7process3env10CommandEnvECsb6LE8Ek1IVf_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call fastcc void @_RNvMsz_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB17_EE10dying_nextCsb6LE8Ek1IVf_18build_script_build(ptr noalias align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECsb6LE8Ek1IVf_18build_script_build.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsb6LE8Ek1IVf_18build_script_build(ptr nonnull %i.e, i64 %.sroa.23.0.copyload.i.i.i.i)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXsy_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.b) #19
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsb6LE8Ek1IVf_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !9
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !10
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0Csb6LE8Ek1IVf_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsb6LE8Ek1IVf_18build_script_build(ptr %i.a) #24
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCsb6LE8Ek1IVf_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsb6LE8Ek1IVf_18build_script_build(ptr readonly %i.a) #24
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvCsb6LE8Ek1IVf_18build_script_build13compile_probe(i1 zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.i = alloca i64, align 8                ; 6 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 3 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [72 x i8], align 8                ; 12 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 3 uses
  %i.z = alloca [24 x i8], align 8                ; 3 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0179 = alloca i64, align 8               ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 3 uses
  %i.ab = alloca [24 x i8], align 8               ; 3 uses
  %i.ac = alloca [200 x i8], align 8              ; 18 uses
  %i.ad = alloca [72 x i8], align 8               ; 10 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 3 uses
  %i.aj = alloca [8 x i8], align 8                ; 3 uses
  %i.ak = alloca [24 x i8], align 8               ; 3 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 3 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  call void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.ao, ptr nonnull @14, i64 11)
  %.val38 = load i64, ptr %i.ao, align 8
  %.not269 = icmp eq i64 %.val38, -1
  br i1 %.not269, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsb6LE8Ek1IVf_18build_script_build.exit, label %bb.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @15, ptr %i.p, align 8, !noalias !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 5, ptr %i.ap, align 8, !noalias !68
  call void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull @15, i64 range(i64 5, 24) 5), !noalias !68
  %i.aq = load i64, ptr %i.o, align 8, !noalias !69
  %.not.i.i = icmp eq i64 %i.aq, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvCsb6LE8Ek1IVf_18build_script_build13cargo_env_var.exit

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsb6LE8Ek1IVf_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !69
  store ptr %i.p, ptr %i.n, align 8, !noalias !69
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3TiGK1alE6v_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !69
  call void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @12, ptr nonnull %i.n), !noalias !69
  call void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #25, !noalias !69
  unreachable

_RNvCsb6LE8Ek1IVf_18build_script_build13cargo_env_var.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsb6LE8Ek1IVf_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @16, ptr %i.m, align 8, !noalias !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 7, ptr %i.ar, align 8, !noalias !70
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull @16, i64 range(i64 5, 24) 7)
          to label %.noexc57 unwind label %.body173.thread209

.noexc57:                                         ; preds = %_RNvCsb6LE8Ek1IVf_18build_script_build13cargo_env_var.exit
  %i.as = load i64, ptr %i.l, align 8, !noalias !71
  %.not.i.i55 = icmp eq i64 %i.as, -1
  br i1 %.not.i.i55, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.noexc57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !71
  store ptr %i.m, ptr %i.k, align 8, !noalias !71
  %.sroa.2.0..sroa_idx.i.i.i56 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3TiGK1alE6v_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i56, align 8, !noalias !71
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @12, ptr nonnull %i.k)
          to label %.noexc58 unwind label %.body173.thread209

.noexc58:                                         ; preds = %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #25
          to label %.noexc59 unwind label %.body173.thread209

.noexc59:                                         ; preds = %.noexc58
  unreachable

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ao)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ao)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.dm, %bb.dk, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.e ], [ %.pn27.pn.pn.pn206, %bb.dm ], [ %.pn27.pn.pn, %bb.g ], [ %i.fw, %bb.dk ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.body170
  br i1 %.sroa.015.2, label %bb.dm, label %common.resume

.body173.thread209:                               ; preds = %.noexc58, %_RNvCsb6LE8Ek1IVf_18build_script_build13cargo_env_var.exit, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.body170:                                         ; preds = %bb.di, %bb.h, %bb.j
  %.sroa.015.2 = phi i1 [ %.sroa.015.4, %bb.j ], [ %.sroa.015.3, %bb.h ], [ false, %bb.di ]
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.j ], [ %i.av, %bb.h ], [ %i.fu, %bb.di ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.am) #19
          to label %bb.g unwind label %bb.ad

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i169, %bb.i
  %.sroa.015.3 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i169 ], [ true, %bb.i ]
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body170

bb.i:                                             ; preds = %.noexc57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val39 = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val40 = load i64, ptr %i.ax, align 8
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.al, ptr %.val39, i64 %.val40, ptr nonnull @17, i64 5)
          to label %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.h

bb.j:                                             ; preds = %.thread265, %.thread, %bb.l, %bb.k
  %.sroa.015.4 = phi i1 [ %.sroa.015.5215, %.thread ], [ false, %bb.l ], [ true, %bb.k ], [ false, %.thread265 ]
  %.pn27.pn = phi { ptr, i32 } [ %.pn27216, %.thread ], [ %.pn21, %bb.l ], [ %i.ay, %bb.k ], [ %lpad.thr_comm.split-lp234, %.thread265 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsb6LE8Ek1IVf_18build_script_build(ptr align 8 %i.al) #19
          to label %.body170 unwind label %bb.ad

bb.k:                                             ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.i
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ak, ptr nonnull @18, i64 5, ptr nonnull @19, i64 8)
          to label %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit66 unwind label %bb.k

_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit66: ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 511, ptr %i.j, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i8 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  %.val.val.i = load ptr, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  %.val.val1.i = load i64, ptr %i.bb, align 8
  %i.bc = invoke ptr @_RNvMsD_NtCscAsMj0W7j8b_3std2fsNtB5_10DirBuilder7__create(ptr nonnull align 4 %i.j, ptr %.val.val.i, i64 %.val.val1.i)
          to label %bb.n unwind label %bb.m       ; 7 uses

bb.l:                                             ; preds = %.body97
  br i1 %.sroa.014.5, label %.thread, label %bb.j

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i77, %bb.z, %bb.t, %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit66
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECsb6LE8Ek1IVf_18build_script_build.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bc, ptr %i.aj, align 8
  %i.be = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.bf = and i64 %i.be, 3                        ; 2 uses
  switch i64 %i.bf, label %default.unreachable [
    i64 2, label %bb.r
    i64 3, label %bb.p
    i64 0, label %.sink.split
    i64 1, label %bb.s
  ]

default.unreachable:                              ; preds = %bb.db, %bb.cy, %bb.cq, %bb.cm, %bb.w, %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bg = lshr i64 %i.be, 32
  %i.bh = icmp uge ptr %i.bc, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bg to i8  ; 2 uses
  %.not3.i.i = icmp eq i8 %switch.idx.cast.i.i.i, -1
  %.not.i.i68 = or i1 %i.bh, %.not3.i.i
  br i1 %.not.i.i68, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 @10) #23, !noalias !72
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bi = invoke align 8 ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions16get_os_functions()
          to label %.noexc69 unwind label %bb.u

.noexc69:                                         ; preds = %bb.r
  %i.bj = lshr i64 %i.be, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke i8 %i.bm(i32 %i.bk)
          to label %bb.v unwind label %bb.u, !inline_history !21

bb.s:                                             ; preds = %bb.o
  br label %.sink.split

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build.exit, %bb.n
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr nonnull @21, i64 13)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.m

bb.u:                                             ; preds = %.noexc69, %bb.r, %bb.ab, %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.aj) #19
          to label %.thread unwind label %bb.ad

.sink.split:                                      ; preds = %bb.o, %bb.s
  %.sink286 = phi i64 [ 31, %bb.s ], [ 16, %bb.o ]
  %i.bp = getelementptr i8, ptr %i.bc, i64 %.sink286
  %i.bq = load i8, ptr %i.bp, align 8
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %.noexc69, %bb.p
  %.sroa.0.0.i = phi i8 [ %switch.idx.cast.i.i.i, %bb.p ], [ %i.bn, %.noexc69 ], [ %i.bq, %.sink.split ]
  %.not270 = icmp eq i8 %.sroa.0.0.i, 12
  br i1 %.not270, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  switch i64 %i.bf, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build.exit
    i64 3, label %bb.x
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build.exit
    i64 1, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.br = icmp uge ptr %i.bc, inttoptr (i64 188978561024 to ptr)
  %i.bs = and i64 %i.be, 1095216660480
  %.not3.i.i.i.i = icmp eq i64 %i.bs, 1095216660480
  %.not.i.i.i.i = or i1 %i.br, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build.exit

bb.y:                                             ; preds = %bb.x
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 @10) #23, !noalias !73
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bt = getelementptr i8, ptr %i.bc, i64 -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !alias.scope !73
  store i8 3, ptr %i.i, align 8, !alias.scope !73
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.bu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.z, %bb.w, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.t

bb.aa:                                            ; preds = %bb.v
  %.val36 = load ptr, ptr %i.ba, align 8
  %.val37 = load i64, ptr %i.bb, align 8
  store ptr %.val36, ptr %i.ai, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.val37, ptr %i.bv, align 8
  store ptr %i.ai, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1b_NtCscAsMj0W7j8b_3std4pathNtB6_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.aj, ptr %i.bw, align 8
  %.sroa.2178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXs3_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.2178.0..sroa_idx, align 8
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @20, ptr nonnull %i.ah)
          to label %bb.ab unwind label %bb.u

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #25
          to label %bb.ac unwind label %bb.u

bb.ac:                                            ; preds = %bb.dg, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.dm, %.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i84, %.thread227, %bb.cw, %bb.ci, %bb.ca, %bb.bz, %.body97, %bb.u, %bb.j, %.body170
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.by = load i64, ptr %i.af, align 8, !noalias !74
  %.not.i75 = icmp eq i64 %i.by, -1
  br i1 %.not.i75, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit
  store i64 -1, ptr %i.ag, align 8, !alias.scope !74
  br label %bb.ak

bb.af:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i = load i64, ptr %i.bz, align 8, !noalias !74
  %.not2.i = icmp eq i64 %.val1.i, 0
  br i1 %.not2.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i77 unwind label %bb.ah, !noalias !74

bb.ah:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %.thread unwind label %bb.ai, !noalias !74

bb.ai:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !74
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i77: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %.noexc78 unwind label %bb.m

.noexc78:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i77
  store i64 -1, ptr %i.ag, align 8, !alias.scope !74
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc78, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr nonnull @22, i64 23)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit80 unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i85, %bb.ak
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i84

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit80: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cd = load i64, ptr %i.ae, align 8, !noalias !75 ; 2 uses
  %.not.i81 = icmp eq i64 %i.cd, -1
  br i1 %.not.i81, label %.noexc88, label %bb.am

bb.am:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !75
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i82 = load i64, ptr %i.ce, align 8, !noalias !75
  %.not2.i83 = icmp eq i64 %.val1.i82, 0
  br i1 %.not2.i83, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i85 unwind label %bb.ao, !noalias !75

bb.ao:                                            ; preds = %bb.an
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i84 unwind label %bb.ap, !noalias !75

bb.ap:                                            ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !75
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i85: ; preds = %bb.an
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.g)
          to label %.noexc88 unwind label %bb.al

bb.aq:                                            ; preds = %bb.am
  %.sroa.4.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx272, i64 16, i1 false)
  br label %.noexc88

.noexc88:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i85, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit80, %bb.aq
  %i.ch = phi i64 [ %i.cd, %bb.aq ], [ -1, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit80 ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i85 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %.sroa.2276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.ch, ptr %.sroa.2276.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !76
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !77 ; 3 uses
  switch i64 %i.cj, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i
    i64 -2, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i
  ]

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i: ; preds = %.noexc88
  %.not6.i.i.i.i.i = icmp eq i64 %i.cj, -1        ; 2 uses
  %spec.store.select.i.i.i.i.i = select i1 %.not6.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i, ptr %i.ci, align 8, !noalias !78
  br i1 %.not6.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false)
  br label %.thread238

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i: ; preds = %.noexc88, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ch, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !77
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i: ; preds = %bb.ar, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.ar ], [ %i.f, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i, align 8, !noalias !77
  %.pr.i.i = load i64, ptr %i.f, align 8, !noalias !77 ; 2 uses
  %.not6.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not6.i.i, label %bb.as, label %.thread238

bb.as:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1d_EECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.ci)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i unwind label %bb.at, !noalias !77

bb.at:                                            ; preds = %bb.as
  %i.cm = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.ci, align 8, !noalias !77
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.f) #19
          to label %.thread227 unwind label %bb.au, !noalias !77

bb.au:                                            ; preds = %bb.at
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !77
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i: ; preds = %bb.as
  store i64 -3, ptr %i.ci, align 8, !noalias !77
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i

.thread238:                                       ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i
  %.sroa.0.0.copyload.ph.i = phi i64 [ %.pr.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i ], [ %i.cj, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx8.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76
  store i64 %.sroa.0.0.copyload.ph.i, ptr %.sroa.0179, align 8, !alias.scope !76
  br label %bb.ax

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i: ; preds = %.noexc88, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76
  %i.co = load i64, ptr %i.ad, align 8, !noalias !79 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.co, -2
  br i1 %.not.i.i.i, label %bb.av, label %1

1:                                                ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i
  store i64 %i.co, ptr %.sroa.0179, align 8
  %.sroa.5.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx181, i64 16, i1 false)
  br label %bb.av

.thread235:                                       ; preds = %bb.ax, %bb.aw
  %lpad.thr_comm233 = landingpad { ptr, i32 }
          cleanup
  br label %.thread227

.thread265:                                       ; preds = %bb.cv
  %lpad.thr_comm.split-lp234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.av:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i, %1
  %.sink.i.i.i = phi ptr [ %i.ad, %1 ], [ %.sroa.0179, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i ]
  store i64 -1, ptr %.sink.i.i.i, align 8
  %.sroa.0179.0..sroa.0179.0..sroa.0179.0..sroa.0179.0..pr = load i64, ptr %.sroa.0179, align 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0179.0..sroa.0179.0..sroa.0179.0..sroa.0179.0..pr, -1
  br i1 %.not.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @23) #26
          to label %.noexc unwind label %.thread235

.noexc:                                           ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.av, %.thread238
  %.sroa.0179.0..sroa.0179.0.241 = phi i64 [ %.sroa.0.0.copyload.ph.i, %.thread238 ], [ %.sroa.0179.0..sroa.0179.0..sroa.0179.0..sroa.0179.0..pr, %bb.av ]
  store i64 %.sroa.0179.0..sroa.0179.0.241, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  invoke fastcc void @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build(ptr noalias align 8 %i.ac, ptr align 8 %i.ab)
          to label %bb.ay unwind label %.thread235

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 5 uses
  %.sroa.3.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i92

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i92: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsb6LE8Ek1IVf_18build_script_build.exit.i.i, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80
  %i.cs = load i64, ptr %i.cp, align 8, !noalias !81 ; 3 uses
  switch i64 %i.cs, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i
    i64 -2, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i92
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.cs, -1      ; 2 uses
  %spec.store.select.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i.i, ptr %i.cp, align 8, !noalias !82
  br i1 %.not6.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx8.i.i.i.i.i.i, i64 16, i1 false), !noalias !81
  br label %.thread.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i92
  %i.ct = load i64, ptr %i.cq, align 8, !noalias !83
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ct, -2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !81
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i.i: ; preds = %bb.az, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.az ], [ %i.c, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i.i, align 8, !noalias !81
  %.pr.i.i.i = load i64, ptr %i.c, align 8, !noalias !81 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.ba, label %.thread.i

bb.ba:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1d_EECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.cp)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i unwind label %bb.bb, !noalias !81

bb.bb:                                            ; preds = %bb.ba
  %i.cu = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.cp, align 8, !noalias !81
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.c) #19
          to label %.body.i unwind label %bb.bc, !noalias !81

bb.bc:                                            ; preds = %bb.bb
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !81
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i: ; preds = %bb.ba
  store i64 -3, ptr %i.cp, align 8, !noalias !81
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i

.thread.i:                                        ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %.pr.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.i.i.i ], [ %i.cs, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %.sroa.0.i, align 8, !alias.scope !80
  br label %bb.bh

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  %i.cw = load i64, ptr %i.e, align 8, !noalias !84 ; 2 uses
  %.not.i.i.i.i94 = icmp eq i64 %i.cw, -2
  br i1 %.not.i.i.i.i94, label %bb.be, label %2

2:                                                ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i
  store i64 %i.cw, ptr %.sroa.0.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false)
  br label %bb.be

.body.i:                                          ; preds = %bb.bi, %bb.bg, %bb.bd, %bb.bb
  %.pn.i = phi { ptr, i32 } [ %i.cy, %bb.bg ], [ %i.cu, %bb.bb ], [ %i.cx, %bb.bd ], [ %i.cz, %bb.bi ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECsb6LE8Ek1IVf_18build_script_build(ptr align 8 %i.e) #19
          to label %.body97 unwind label %bb.bk

bb.bd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsb6LE8Ek1IVf_18build_script_build.exit.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.be:                                            ; preds = %2, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i
  %.sink.i.i.i.i = phi ptr [ %i.e, %2 ], [ %.sroa.0.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsb6LE8Ek1IVf_18build_script_build.exit.thread.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i = load i64, ptr %.sroa.0.i, align 8 ; 2 uses
  %.not.i95 = icmp eq i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, -1
  br i1 %.not.i95, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECsb6LE8Ek1IVf_18build_script_build(ptr align 8 %i.e)
          to label %bb.bm unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bh
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.d) #19
          to label %.body.i unwind label %bb.bk

bb.bh:                                            ; preds = %bb.be, %.thread.i
  %.sroa.0.0..sroa.0.0.9.i = phi i64 [ %.sroa.0.0.copyload.ph.i.i, %.thread.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, %bb.be ]
  store i64 %.sroa.0.0..sroa.0.0.9.i, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %.val.i93 = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.val2.i = load i64, ptr %i.cr, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i93, i64 %.val2.i)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsb6LE8Ek1IVf_18build_script_build.exit.i unwind label %bb.bg

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsb6LE8Ek1IVf_18build_script_build.exit.i: ; preds = %bb.bh
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsb6LE8Ek1IVf_18build_script_build.exit.i.i unwind label %bb.bi

bb.bi:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsb6LE8Ek1IVf_18build_script_build.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %.body.i unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECsb6LE8Ek1IVf_18build_script_build.exit.i.i: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECsb6LE8Ek1IVf_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i92 unwind label %bb.bd

bb.bk:                                            ; preds = %bb.bg, %.body.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

.body97:                                          ; preds = %bb.bw, %bb.bu, %.body131, %bb.bo, %bb.bq, %.body.i, %bb.bl, %bb.cw, %bb.ci, %.body134, %bb.bz
  %.sroa.014.5 = phi i1 [ false, %.body131 ], [ false, %bb.cw ], [ false, %bb.bw ], [ false, %.body134 ], [ false, %bb.ci ], [ false, %bb.bz ], [ true, %.body.i ], [ %.sroa.014.6, %bb.bl ], [ false, %bb.bq ], [ false, %bb.bo ], [ false, %bb.bu ]
  %.pn21 = phi { ptr, i32 } [ %i.dl, %.body131 ], [ %i.fh, %bb.cw ], [ %i.dp, %bb.bw ], [ %.pn, %.body134 ], [ %.pn, %bb.ci ], [ %i.ds, %bb.bz ], [ %.pn.i, %.body.i ], [ %i.dc, %bb.bl ], [ %i.dh, %bb.bq ], [ %i.dg, %bb.bo ], [ %i.do, %bb.bu ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECsb6LE8Ek1IVf_18build_script_build(ptr align 8 %i.ac) #19
          to label %bb.l unwind label %bb.ad

bb.bl:                                            ; preds = %bb.de, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorEECsb6LE8Ek1IVf_18build_script_build.exit, %bb.cp, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit.i, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit111, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit109, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit107, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit105, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit103, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECsb6LE8Ek1IVf_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECsb6LE8Ek1IVf_18build_script_build.exit, %bb.bn, %bb.bf, %bb.cj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsb6LE8Ek1IVf_18build_script_build.exit.thread
  %.sroa.014.6 = phi i1 [ false, %bb.de ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorEECsb6LE8Ek1IVf_18build_script_build.exit ], [ false, %bb.cp ], [ false, %bb.cj ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsb6LE8Ek1IVf_18build_script_build.exit.thread ], [ false, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit ], [ false, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit.i ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit111 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit109 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit107 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit105 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit103 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECsb6LE8Ek1IVf_18build_script_build.exit ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECsb6LE8Ek1IVf_18build_script_build.exit ], [ true, %bb.bf ], [ true, %bb.bn ]
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body97

bb.bm:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %0, label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECsb6LE8Ek1IVf_18build_script_build.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  invoke void @_RNvMs_NtNtNtCscAsMj0W7j8b_3std3sys7process3envNtB4_10CommandEnv6remove(ptr nonnull align 8 %i.dd, ptr nonnull @24, i64 15)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %bb.bm, %bb.bn
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command6stderr(ptr nonnull align 8 %i.ac, i32 1, i32 undef)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECsb6LE8Ek1IVf_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @25, i64 14)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECsb6LE8Ek1IVf_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @26, i64 22)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit103 unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit103: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @27, i64 16)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit105 unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit105: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit103
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @28, i64 17)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit107 unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit107: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit105
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @29, i64 24)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit109 unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit109: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit107
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @30, i64 9)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit111 unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit111: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit109
  %.val.val.i112 = load ptr, ptr %i.ba, align 8
  %.val.val1.i113 = load i64, ptr %i.bb, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.val.i112, i64 %.val.val1.i113)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val.i115 = load ptr, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val1.i116 = load i64, ptr %i.df, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i115, i64 %.val1.i116)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.aa) #19
          to label %.body97 unwind label %bb.bs

bb.bp:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %.body97 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.bl

bb.bs:                                            ; preds = %bb.bo
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit.i
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.z, ptr nonnull @31, i64 6)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit122 unwind label %bb.bl

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit122: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECsb6LE8Ek1IVf_18build_script_build.exit
  %i.dk = load i64, ptr %i.z, align 8
  %.not17 = icmp eq i64 %i.dk, -1
  br i1 %.not17, label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @32, i64 8)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit124 unwind label %bb.bz

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i130, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsb6LE8Ek1IVf_18build_script_build.exit122
  invoke void @_RNvNvNtCscAsMj0W7j8b_3std3env3var5inner(ptr nonnull sret([32 x i8]) align 8 %i.w, ptr nonnull @33, i64 23)
          to label %_RINvNtCscAsMj0W7j8b_3std3env3varReECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.bl

.body131:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i130
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body97

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit124: ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i126 = load ptr, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i127 = load i64, ptr %i.dn, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i126, i64 %.val1.i127)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit124
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.x) #19
          to label %.body97 unwind label %bb.by

bb.bv:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit124
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i130 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %.body97 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit.i130: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit unwind label %.body131

bb.by:                                            ; preds = %bb.bu
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.bz:                                            ; preds = %bb.bt
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build(ptr nonnull align 8 %i.y) #19
          to label %.body97 unwind label %bb.ad

_RINvNtCscAsMj0W7j8b_3std3env3varReECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECsb6LE8Ek1IVf_18build_script_build.exit
  %i.dt = load i64, ptr %i.w, align 8
  %i.du = trunc nuw i64 %i.dt to i1
  br i1 %i.du, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsb6LE8Ek1IVf_18build_script_build.exit.thread, label %bb.cb

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsb6LE8Ek1IVf_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsb6LE8Ek1IVf_18build_script_build.exit.i
  %.pre = load i64, ptr %i.w, align 8
  %i.dv = trunc nuw i64 %.pre to i1
  br i1 %i.dv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsb6LE8Ek1IVf_18build_script_build.exit.thread, label %bb.cj

bb.ca:                                            ; preds = %bb.cg, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECsb6LE8Ek1IVf_18build_script_build.exit140
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsb6LE8Ek1IVf_18build_script_build(ptr align 8 %i.v) #19
          to label %.body134 unwind label %bb.ad

bb.cb:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env3varReECsb6LE8Ek1IVf_18build_script_build.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val46 = load i64, ptr %i.dy, align 8          ; 4 uses
  %i.dz = icmp eq i64 %.val46, 0
  br i1 %i.dz, label %.loopexit, label %bb.ce

.loopexit:                                        ; preds = %bb.cf, %bb.cb
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsb6LE8Ek1IVf_18build_script_build.exit.i unwind label %bb.cc

bb.cc:                                            ; preds = %.loopexit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
          to label %.body134 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsb6LE8Ek1IVf_18build_script_build.exit.i: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsb6LE8Ek1IVf_18build_script_build.exit unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cb
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 8
end_hunk_0
