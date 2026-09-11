Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/build_script_build.build_script_build.20c4c7c87b1443e2-cgu.0?download=true
inline.NumInlined: 326
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECs2OqsVq5I1sA_18build_script_build:bb.a
  %i.bm = tail call i32 @close(i32 %.val.i.i29.i) #19 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs2OqsVq5I1sA_18build_script_build.exit30.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs2OqsVq5I1sA_18build_script_build.exit27.i: ; preds = %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs2OqsVq5I1sA_18build_script_build.exit21.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load i32, ptr %i.bn, align 8
  %cond.i31.i = icmp eq i32 %i.bo, 3
  br i1 %cond.i31.i, label %bb.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECs2OqsVq5I1sA_18build_script_build.exit

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs2OqsVq5I1sA_18build_script_build.exit27.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val.i.i32.i = load i32, ptr %i.bp, align 4
  %i.bq = tail call i32 @close(i32 %.val.i.i32.i) #19 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECs2OqsVq5I1sA_18build_script_build.exit

bb.ad:                                            ; preds = %.body16.i, %.body.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs2OqsVq5I1sA_18build_script_build.exit30.i: ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs2OqsVq5I1sA_18build_script_build.exit24.i
  resume { ptr, i32 } %.pn8.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs2OqsVq5I1sA_18build_script_build.exit27.i, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2OqsVq5I1sA_18build_script_build.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2OqsVq5I1sA_18build_script_build.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp uge ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %.not3.i.i.i = icmp eq i64 %i.e, 1095216660480
  %.not.i.i.i = or i1 %i.d, %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2OqsVq5I1sA_18build_script_build.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 @4) #21, !noalias !8
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !8
  store i8 3, ptr %i.a, align 8, !alias.scope !8
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2OqsVq5I1sA_18build_script_build.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs2OqsVq5I1sA_18build_script_build.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs2OqsVq5I1sA_18build_script_build.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys7process3env10CommandEnvECs2OqsVq5I1sA_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call fastcc void @_RNvMsz_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB17_EE10dying_nextCs2OqsVq5I1sA_18build_script_build(ptr noalias align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs2OqsVq5I1sA_18build_script_build.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2OqsVq5I1sA_18build_script_build(ptr nonnull %i.e, i64 %.sroa.23.0.copyload.i.i.i.i)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXsy_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.b) #17
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2OqsVq5I1sA_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !9
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0Cs2OqsVq5I1sA_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2OqsVq5I1sA_18build_script_build(ptr %i.a) #22
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCs2OqsVq5I1sA_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs2OqsVq5I1sA_18build_script_build(ptr readonly %i.a) #22
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvCs2OqsVq5I1sA_18build_script_build16do_compile_probe(ptr %0, i64 range(i64 15, 25) %1, i1 zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.0199 = alloca i64, align 8               ; 4 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 3 uses
  %i.ab = alloca [24 x i8], align 8               ; 3 uses
  %i.ac = alloca [200 x i8], align 8              ; 19 uses
  %i.ad = alloca [72 x i8], align 8               ; 10 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 3 uses
  %i.aj = alloca [8 x i8], align 8                ; 3 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 3 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 3 uses
  %i.aq = alloca [16 x i8], align 8               ; 3 uses
  %i.ar = alloca [16 x i8], align 8               ; 4 uses
  store ptr %0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store i64 %1, ptr %i.as, align 8
  store ptr %i.ar, ptr %i.aq, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3TiGK1alE6v_14rustc_demangle, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio6__print(ptr nonnull @8, ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @9, ptr %i.p, align 8, !noalias !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 5, ptr %i.at, align 8, !noalias !68
  call void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull @9, i64 range(i64 5, 24) 5), !noalias !68
  %i.au = load i64, ptr %i.o, align 8, !noalias !69
  %.not.i.i = icmp eq i64 %i.au, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvCs2OqsVq5I1sA_18build_script_build13cargo_env_var.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !69
  store ptr %i.p, ptr %i.n, align 8, !noalias !69
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3TiGK1alE6v_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !69
  call void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.n), !noalias !69
  call void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #23, !noalias !69
  unreachable

_RNvCs2OqsVq5I1sA_18build_script_build13cargo_env_var.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @10, ptr %i.m, align 8, !noalias !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 7, ptr %i.av, align 8, !noalias !70
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull @10, i64 range(i64 5, 24) 7)
          to label %.noexc64 unwind label %.body191.thread230

.noexc64:                                         ; preds = %_RNvCs2OqsVq5I1sA_18build_script_build13cargo_env_var.exit
  %i.aw = load i64, ptr %i.l, align 8, !noalias !71
  %.not.i.i62 = icmp eq i64 %i.aw, -1
  br i1 %.not.i.i62, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.noexc64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !71
  store ptr %i.m, ptr %i.k, align 8, !noalias !71
  %.sroa.2.0..sroa_idx.i.i.i63 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3TiGK1alE6v_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i63, align 8, !noalias !71
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.k)
          to label %.noexc65 unwind label %.body191.thread230

.noexc65:                                         ; preds = %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #23
          to label %.noexc66 unwind label %.body191.thread230

.noexc66:                                         ; preds = %.noexc65
  unreachable

bb.d:                                             ; preds = %.body187
  br i1 %.sroa.014.2, label %bb.dt, label %.body191.thread

.body191.thread230:                               ; preds = %.noexc65, %_RNvCs2OqsVq5I1sA_18build_script_build13cargo_env_var.exit, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.body187:                                         ; preds = %bb.dp, %bb.e, %bb.g
  %.sroa.014.2 = phi i1 [ %.sroa.014.4, %bb.g ], [ %.sroa.014.3, %bb.e ], [ false, %bb.dp ]
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.g ], [ %i.ax, %bb.e ], [ %i.gj, %bb.dp ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.ao) #17
          to label %bb.d unwind label %bb.ak

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i186, %bb.f
  %.sroa.014.3 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i186 ], [ true, %bb.f ]
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.f:                                             ; preds = %.noexc64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val36 = load ptr, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.val37 = load i64, ptr %i.az, align 8
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.an, ptr %.val36, i64 %.val37, ptr nonnull @11, i64 5)
          to label %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.e

bb.g:                                             ; preds = %.thread286, %.thread, %bb.s, %bb.i, %bb.h
  %.sroa.014.4 = phi i1 [ %.sroa.014.5236, %.thread ], [ false, %bb.s ], [ true, %bb.i ], [ true, %bb.h ], [ false, %.thread286 ]
  %.pn28.pn = phi { ptr, i32 } [ %.pn28237, %.thread ], [ %.pn22, %bb.s ], [ %.pn, %bb.i ], [ %i.ba, %bb.h ], [ %lpad.thr_comm.split-lp255, %.thread286 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.an) #17
          to label %.body187 unwind label %bb.ak

bb.h:                                             ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs2OqsVq5I1sA_18build_script_build.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.f
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ak, ptr nonnull @12, i64 3, ptr nonnull @11, i64 5)
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.l ], [ %i.bb, %bb.j ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.ak) #17
          to label %bb.g unwind label %bb.ak

bb.j:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs2OqsVq5I1sA_18build_script_build.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val44 = load ptr, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val45 = load i64, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.ar, align 8
  %i.bf = load i64, ptr %i.as, align 8
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.al, ptr %.val44, i64 %.val45, ptr %i.be, i64 %i.bf)
          to label %bb.m unwind label %bb.j

bb.l:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.al) #17
          to label %bb.i unwind label %bb.ak

bb.m:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val42 = load ptr, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val43 = load i64, ptr %i.bi, align 8
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path15__with_extension(ptr nonnull sret([24 x i8]) align 8 %i.am, ptr %.val42, i64 %.val43, ptr nonnull @13, i64 2)
          to label %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path14with_extensionReECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.l

_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path14with_extensionReECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.m
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path14with_extensionReECs2OqsVq5I1sA_18build_script_build.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.al)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i: ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path14with_extensionReECs2OqsVq5I1sA_18build_script_build.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.al)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.p ], [ %i.bj, %bb.n ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.ak) #17
          to label %.thread unwind label %bb.ak

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ak)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i76 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ak)
          to label %.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvCs2OqsVq5I1sA_18build_script_build16do_compile_probe:bb.a

.noexc83:                                         ; preds = %bb.y
  %i.by = lshr i64 %i.bt, 32
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke i8 %i.cb(i32 %i.bz)
          to label %bb.ac unwind label %bb.ab, !inline_history !21

bb.z:                                             ; preds = %bb.v
  br label %.sink.split

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build.exit, %bb.u
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr nonnull @15, i64 13)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.t

bb.ab:                                            ; preds = %.noexc83, %bb.y, %bb.ai, %bb.ah
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %.val35 = load ptr, ptr %i.aj, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build(ptr %.val35) #17
          to label %.thread unwind label %bb.ak

.sink.split:                                      ; preds = %bb.v, %bb.z
  %.sink305 = phi i64 [ 31, %bb.z ], [ 16, %bb.v ]
  %i.ce = getelementptr i8, ptr %i.bs, i64 %.sink305
  %i.cf = load i8, ptr %i.ce, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %.noexc83, %bb.w
  %.sroa.0.0.i = phi i8 [ %switch.idx.cast.i.i.i, %bb.w ], [ %i.cc, %.noexc83 ], [ %i.cf, %.sink.split ]
  %.not290 = icmp eq i8 %.sroa.0.0.i, 12
  br i1 %.not290, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  switch i64 %i.bu, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build.exit
    i64 3, label %bb.ae
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build.exit
    i64 1, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cg = icmp uge ptr %i.bs, inttoptr (i64 188978561024 to ptr)
  %i.ch = and i64 %i.bt, 1095216660480
  %.not3.i.i.i.i = icmp eq i64 %i.ch, 1095216660480
  %.not.i.i.i.i = or i1 %i.cg, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build.exit

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 @4) #21, !noalias !73
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.ci = getelementptr i8, ptr %i.bs, i64 -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !73
  store i8 3, ptr %i.i, align 8, !alias.scope !73
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.cj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.ag, %bb.ad, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.ah:                                            ; preds = %bb.ac
  %.val40 = load ptr, ptr %i.bq, align 8
  %.val41 = load i64, ptr %i.br, align 8
  store ptr %.val40, ptr %i.ai, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.val41, ptr %i.ck, align 8
  store ptr %i.ai, ptr %i.ah, align 8
  %.sroa.2196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1b_NtCscAsMj0W7j8b_3std4pathNtB6_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.2196.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.aj, ptr %i.cl, align 8
  %.sroa.2198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXs3_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.2198.0..sroa_idx, align 8
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @14, ptr nonnull %i.ah)
          to label %bb.ai unwind label %bb.ab

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #23
          to label %bb.aj unwind label %bb.ab

bb.aj:                                            ; preds = %bb.dn, %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ab, %bb.dd, %bb.dt, %.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i101, %.thread248, %bb.cp, %bb.ch, %bb.cg, %.body113, %.body, %bb.l, %bb.i, %bb.g, %.body187
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cn = load i64, ptr %i.af, align 8, !noalias !74
  %.not.i90 = icmp eq i64 %i.cn, -1
  br i1 %.not.i90, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit
  store i64 -1, ptr %i.ag, align 8, !alias.scope !74
  br label %bb.ar

bb.am:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !74
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i = load i64, ptr %i.co, align 8, !noalias !74
  %.not2.i = icmp eq i64 %.val1.i, 0
  br i1 %.not2.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i92 unwind label %bb.ao, !noalias !74

bb.ao:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %.thread unwind label %bb.ap, !noalias !74

bb.ap:                                            ; preds = %bb.ao
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !74
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i92: ; preds = %bb.an
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %.noexc95 unwind label %bb.t

.noexc95:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i92
  store i64 -1, ptr %i.ag, align 8, !alias.scope !74
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.noexc95, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr nonnull @16, i64 23)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit97 unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i102, %bb.ar
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i101

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit97: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cs = load i64, ptr %i.ae, align 8, !noalias !75 ; 2 uses
  %.not.i98 = icmp eq i64 %i.cs, -1
  br i1 %.not.i98, label %.noexc105, label %bb.at

bb.at:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !75
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i99 = load i64, ptr %i.ct, align 8, !noalias !75
  %.not2.i100 = icmp eq i64 %.val1.i99, 0
  br i1 %.not2.i100, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i102 unwind label %bb.av, !noalias !75

bb.av:                                            ; preds = %bb.au
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i101 unwind label %bb.aw, !noalias !75

bb.aw:                                            ; preds = %bb.av
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !75
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i102: ; preds = %bb.au
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.g)
          to label %.noexc105 unwind label %bb.as

bb.ax:                                            ; preds = %bb.at
  %.sroa.4.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx292, i64 16, i1 false)
  br label %.noexc105

.noexc105:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i102, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit97, %bb.ax
  %i.cw = phi i64 [ %i.cs, %bb.ax ], [ -1, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit97 ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i102 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  %.sroa.2296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.cw, ptr %.sroa.2296.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !76
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !77 ; 3 uses
  switch i64 %i.cy, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i
    i64 -2, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i
  ]

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i: ; preds = %.noexc105
  %.not6.i.i.i.i.i = icmp eq i64 %i.cy, -1        ; 2 uses
  %spec.store.select.i.i.i.i.i = select i1 %.not6.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i, ptr %i.cx, align 8, !noalias !78
  br i1 %.not6.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false)
  br label %.thread259

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i: ; preds = %.noexc105, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cw, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false), !noalias !77
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i: ; preds = %bb.ay, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.da, %bb.ay ], [ %i.f, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i, align 8, !noalias !77
  %.pr.i.i = load i64, ptr %i.f, align 8, !noalias !77 ; 2 uses
  %.not6.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not6.i.i, label %bb.az, label %.thread259

bb.az:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1d_EECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.cx)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i unwind label %bb.ba, !noalias !77

bb.ba:                                            ; preds = %bb.az
  %i.db = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.cx, align 8, !noalias !77
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.f) #17
          to label %.thread248 unwind label %bb.bb, !noalias !77

bb.bb:                                            ; preds = %bb.ba
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !77
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i: ; preds = %bb.az
  store i64 -3, ptr %i.cx, align 8, !noalias !77
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i

.thread259:                                       ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i
  %.sroa.0.0.copyload.ph.i = phi i64 [ %.pr.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i ], [ %i.cy, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx8.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76
  store i64 %.sroa.0.0.copyload.ph.i, ptr %.sroa.0199, align 8, !alias.scope !76
  br label %bb.be

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i: ; preds = %.noexc105, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !76
  %i.dd = load i64, ptr %i.ad, align 8, !noalias !79 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dd, -2
  br i1 %.not.i.i.i, label %bb.bc, label %3

3:                                                ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i
  store i64 %i.dd, ptr %.sroa.0199, align 8
  %.sroa.5.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx201, i64 16, i1 false)
  br label %bb.bc

.thread256:                                       ; preds = %bb.be, %bb.bd
  %lpad.thr_comm254 = landingpad { ptr, i32 }
          cleanup
  br label %.thread248

.thread286:                                       ; preds = %bb.dc
  %lpad.thr_comm.split-lp255 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.bc:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i, %3
  %.sink.i.i.i = phi ptr [ %i.ad, %3 ], [ %.sroa.0199, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i ]
  store i64 -1, ptr %.sink.i.i.i, align 8
  %.sroa.0199.0..sroa.0199.0..sroa.0199.0..sroa.0199.0..pr = load i64, ptr %.sroa.0199, align 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0199.0..sroa.0199.0..sroa.0199.0..sroa.0199.0..pr, -1
  br i1 %.not.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @17) #24
          to label %.noexc unwind label %.thread256

.noexc:                                           ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc, %.thread259
  %.sroa.0199.0..sroa.0199.0.262 = phi i64 [ %.sroa.0.0.copyload.ph.i, %.thread259 ], [ %.sroa.0199.0..sroa.0199.0..sroa.0199.0..sroa.0199.0..pr, %bb.bc ]
  store i64 %.sroa.0199.0..sroa.0199.0.262, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  invoke fastcc void @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build(ptr noalias align 8 %i.ac, ptr align 8 %i.ab)
          to label %bb.bf unwind label %.thread256

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 5 uses
  %.sroa.3.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i109

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i109: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs2OqsVq5I1sA_18build_script_build.exit.i.i, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80
  %i.dh = load i64, ptr %i.de, align 8, !noalias !81 ; 3 uses
  switch i64 %i.dh, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i
    i64 -2, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i109
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.dh, -1      ; 2 uses
  %spec.store.select.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i.i, ptr %i.de, align 8, !noalias !82
  br i1 %.not6.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx8.i.i.i.i.i.i, i64 16, i1 false), !noalias !81
  br label %.thread.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i109
  %i.di = load i64, ptr %i.df, align 8, !noalias !83
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.di, -2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !81
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i.i: ; preds = %bb.bg, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.df, %bb.bg ], [ %i.c, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i.i, align 8, !noalias !81
  %.pr.i.i.i = load i64, ptr %i.c, align 8, !noalias !81 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1d_EECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.de)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i unwind label %bb.bi, !noalias !81

bb.bi:                                            ; preds = %bb.bh
  %i.dj = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.de, align 8, !noalias !81
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.c) #17
          to label %.body.i unwind label %bb.bj, !noalias !81

bb.bj:                                            ; preds = %bb.bi
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !81
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i: ; preds = %bb.bh
  store i64 -3, ptr %i.de, align 8, !noalias !81
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i

.thread.i:                                        ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %.pr.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.i.i.i ], [ %i.dh, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs2OqsVq5I1sA_18build_script_build.exit.thread.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  store i64 %.sroa.0.0.copyload.ph.i.i, ptr %.sroa.0.i, align 8, !alias.scope !80
  br label %bb.bo

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  %i.dl = load i64, ptr %i.e, align 8, !noalias !84 ; 2 uses
  %.not.i.i.i.i110 = icmp eq i64 %i.dl, -2
  br i1 %.not.i.i.i.i110, label %bb.bl, label %4

4:                                                ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i
  store i64 %i.dl, ptr %.sroa.0.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false)
  br label %bb.bl

.body.i:                                          ; preds = %bb.bp, %bb.bn, %bb.bk, %bb.bi
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bn ], [ %i.dj, %bb.bi ], [ %i.dm, %bb.bk ], [ %i.do, %bb.bp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.e) #17
          to label %.body113 unwind label %bb.br

bb.bk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs2OqsVq5I1sA_18build_script_build.exit.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bl:                                            ; preds = %4, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i
  %.sink.i.i.i.i = phi ptr [ %i.e, %4 ], [ %.sroa.0.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs2OqsVq5I1sA_18build_script_build.exit.thread.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i = load i64, ptr %.sroa.0.i, align 8 ; 2 uses
  %.not.i111 = icmp eq i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, -1
  br i1 %.not.i111, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.e)
          to label %bb.bt unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bo
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.d) #17
          to label %.body.i unwind label %bb.br

bb.bo:                                            ; preds = %bb.bl, %.thread.i
  %.sroa.0.0..sroa.0.0.9.i = phi i64 [ %.sroa.0.0.copyload.ph.i.i, %.thread.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, %bb.bl ]
  store i64 %.sroa.0.0..sroa.0.0.9.i, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %.val.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.val2.i = load i64, ptr %i.dg, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i, i64 %.val2.i)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs2OqsVq5I1sA_18build_script_build.exit.i unwind label %bb.bn

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs2OqsVq5I1sA_18build_script_build.exit.i: ; preds = %bb.bo
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs2OqsVq5I1sA_18build_script_build.exit.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs2OqsVq5I1sA_18build_script_build.exit.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %.body.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs2OqsVq5I1sA_18build_script_build.exit.i.i: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs2OqsVq5I1sA_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i109 unwind label %bb.bk

bb.br:                                            ; preds = %bb.bn, %.body.i
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

.body113:                                         ; preds = %bb.cd, %bb.cb, %.body149, %bb.bv, %bb.bx, %.body.i, %bb.bs, %bb.dd, %bb.cp, %.body152, %bb.cg
  %.sroa.013.5 = phi i1 [ false, %.body149 ], [ false, %bb.dd ], [ false, %bb.cd ], [ false, %.body152 ], [ false, %bb.cp ], [ false, %bb.cg ], [ true, %.body.i ], [ %.sroa.013.6, %bb.bs ], [ false, %bb.bx ], [ false, %bb.bv ], [ false, %bb.cb ]
  %.pn22 = phi { ptr, i32 } [ %i.ea, %.body149 ], [ %i.fw, %bb.dd ], [ %i.ee, %bb.cd ], [ %.pn19, %.body152 ], [ %.pn19, %bb.cp ], [ %i.eh, %bb.cg ], [ %.pn.i, %.body.i ], [ %i.dr, %bb.bs ], [ %i.dw, %bb.bx ], [ %i.dv, %bb.bv ], [ %i.ed, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.ac) #17
          to label %bb.s unwind label %bb.ak

bb.bs:                                            ; preds = %bb.dl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorEECs2OqsVq5I1sA_18build_script_build.exit, %bb.cw, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit.i, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit129, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit127, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit125, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit123, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit121, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit119, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs2OqsVq5I1sA_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs2OqsVq5I1sA_18build_script_build.exit, %bb.bu, %bb.bm, %bb.cq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2OqsVq5I1sA_18build_script_build.exit.thread
  %.sroa.013.6 = phi i1 [ false, %bb.dl ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorEECs2OqsVq5I1sA_18build_script_build.exit ], [ false, %bb.cw ], [ false, %bb.cq ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2OqsVq5I1sA_18build_script_build.exit.thread ], [ false, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit ], [ false, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit.i ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit129 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit127 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit125 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit123 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit121 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit119 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs2OqsVq5I1sA_18build_script_build.exit ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs2OqsVq5I1sA_18build_script_build.exit ], [ true, %bb.bm ], [ true, %bb.bu ]
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body113

bb.bt:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %2, label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs2OqsVq5I1sA_18build_script_build.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  invoke void @_RNvMs_NtNtNtCscAsMj0W7j8b_3std3sys7process3envNtB4_10CommandEnv6remove(ptr nonnull align 8 %i.ds, ptr nonnull @18, i64 15)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %bb.bt, %bb.bu
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command6stderr(ptr nonnull align 8 %i.ac, i32 1, i32 undef)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs2OqsVq5I1sA_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @19, i64 28)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs2OqsVq5I1sA_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @20, i64 14)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit119 unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit119: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @21, i64 24)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit121 unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit121: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit119
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @22, i64 16)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit123 unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit123: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit121
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @23, i64 17)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit125 unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit125: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit123
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @24, i64 24)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit127 unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit127: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit125
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @25, i64 9)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit129 unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit129: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit127
  %.val.val.i130 = load ptr, ptr %i.bq, align 8
  %.val.val1.i131 = load i64, ptr %i.br, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.val.i130, i64 %.val.val1.i131)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.bs

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val.i133 = load ptr, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val1.i134 = load i64, ptr %i.du, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i133, i64 %.val1.i134)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.aa) #17
          to label %.body113 unwind label %bb.bz

bb.bw:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %.body113 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit.i: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.bs

bb.bz:                                            ; preds = %bb.bv
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit.i
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.z, ptr nonnull @26, i64 6)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit140 unwind label %bb.bs

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit140: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs2OqsVq5I1sA_18build_script_build.exit
  %i.dz = load i64, ptr %i.z, align 8
  %.not17 = icmp eq i64 %i.dz, -1
  br i1 %.not17, label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @27, i64 8)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit142 unwind label %bb.cg

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i148, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs2OqsVq5I1sA_18build_script_build.exit140
  invoke void @_RNvNvNtCscAsMj0W7j8b_3std3env3var5inner(ptr nonnull sret([32 x i8]) align 8 %i.w, ptr nonnull @28, i64 23)
          to label %_RINvNtCscAsMj0W7j8b_3std3env3varReECs2OqsVq5I1sA_18build_script_build.exit unwind label %bb.bs

.body149:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i148
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body113

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit142: ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i144 = load ptr, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i145 = load i64, ptr %i.ec, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i144, i64 %.val1.i145)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit142
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.x) #17
          to label %.body113 unwind label %bb.cf

bb.cc:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit142
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i148 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %.body113 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit.i148: ; preds = %bb.cc
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit unwind label %.body149

bb.cf:                                            ; preds = %bb.cb
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.cg:                                            ; preds = %bb.ca
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build(ptr nonnull align 8 %i.y) #17
          to label %.body113 unwind label %bb.ak

_RINvNtCscAsMj0W7j8b_3std3env3varReECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs2OqsVq5I1sA_18build_script_build.exit
  %i.ei = load i64, ptr %i.w, align 8
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2OqsVq5I1sA_18build_script_build.exit.thread, label %bb.ci

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2OqsVq5I1sA_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs2OqsVq5I1sA_18build_script_build.exit.i
  %.pre = load i64, ptr %i.w, align 8
  %i.ek = trunc nuw i64 %.pre to i1
  br i1 %i.ek, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2OqsVq5I1sA_18build_script_build.exit.thread, label %bb.cq

bb.ch:                                            ; preds = %bb.cn, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs2OqsVq5I1sA_18build_script_build.exit158
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs2OqsVq5I1sA_18build_script_build(ptr align 8 %i.v) #17
          to label %.body152 unwind label %bb.ak

bb.ci:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env3varReECs2OqsVq5I1sA_18build_script_build.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val51 = load i64, ptr %i.en, align 8          ; 4 uses
  %i.eo = icmp eq i64 %.val51, 0
  br i1 %i.eo, label %.loopexit, label %bb.cl

.loopexit:                                        ; preds = %bb.cm, %bb.ci
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs2OqsVq5I1sA_18build_script_build.exit.i unwind label %bb.cj

bb.cj:                                            ; preds = %.loopexit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
          to label %.body152 unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs2OqsVq5I1sA_18build_script_build.exit.i: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
end_hunk_1
