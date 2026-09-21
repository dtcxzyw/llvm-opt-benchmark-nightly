Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/build_script_build.build_script_build.11b2e199ef9078b8-cgu.0?download=true
inline.NumInlined: 257
inline.NumDeleted: 152
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECs1wd1stuKehg_18build_script_build:bb.a
  %i.bm = tail call i32 @close(i32 %.val.i.i29.i) #16 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs1wd1stuKehg_18build_script_build.exit30.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs1wd1stuKehg_18build_script_build.exit27.i: ; preds = %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs1wd1stuKehg_18build_script_build.exit21.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load i32, ptr %i.bn, align 8
  %cond.i31.i = icmp eq i32 %i.bo, 3
  br i1 %cond.i31.i, label %bb.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECs1wd1stuKehg_18build_script_build.exit

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs1wd1stuKehg_18build_script_build.exit27.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val.i.i32.i = load i32, ptr %i.bp, align 4
  %i.bq = tail call i32 @close(i32 %.val.i.i32.i) #16 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECs1wd1stuKehg_18build_script_build.exit

bb.ad:                                            ; preds = %.body16.i, %.body.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs1wd1stuKehg_18build_script_build.exit30.i: ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs1wd1stuKehg_18build_script_build.exit24.i
  resume { ptr, i32 } %.pn8.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common7CommandECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6common5StdioEECs1wd1stuKehg_18build_script_build.exit27.i, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1wd1stuKehg_18build_script_build.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1wd1stuKehg_18build_script_build.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp uge ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %.not3.i.i.i = icmp eq i64 %i.e, 1095216660480
  %.not.i.i.i = or i1 %i.d, %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1wd1stuKehg_18build_script_build.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs1wd1stuKehg_18build_script_build(ptr nonnull align 8 @4) #19, !noalias !8
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !8
  store i8 3, ptr %i.a, align 8, !alias.scope !8
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1wd1stuKehg_18build_script_build.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs1wd1stuKehg_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs1wd1stuKehg_18build_script_build.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs1wd1stuKehg_18build_script_build.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys7process3env10CommandEnvECs1wd1stuKehg_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call fastcc void @_RNvMsz_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB17_EE10dying_nextCs1wd1stuKehg_18build_script_build(ptr noalias align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs1wd1stuKehg_18build_script_build.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_RNvMsT_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtCshzWfHUSfYae_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs1wd1stuKehg_18build_script_build(ptr nonnull %i.e, i64 %.sroa.23.0.copyload.i.i.i.i)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXsy_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.b) #17
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc11collections5btree3map8BTreeMapNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1wd1stuKehg_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !10
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0Cs1wd1stuKehg_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1wd1stuKehg_18build_script_build(ptr %i.a) #20
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCs1wd1stuKehg_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs1wd1stuKehg_18build_script_build(ptr readonly %i.a) #20
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc zeroext i1 @_RNvCs1wd1stuKehg_18build_script_build13compile_probe(i1 zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [200 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 4                 ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 3 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 3 uses
  %i.z = alloca [24 x i8], align 8                ; 3 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 3 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
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
  call void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.ao, ptr nonnull @8, i64 11)
  %.val = load i64, ptr %i.ao, align 8
  %.not278 = icmp eq i64 %.val, -1
  br i1 %.not278, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs1wd1stuKehg_18build_script_build.exit, label %bb.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @9, ptr %i.q, align 8, !noalias !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 5, ptr %i.ap, align 8, !noalias !70
  call void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull @9, i64 range(i64 5, 24) 5), !noalias !70
  %i.aq = load i64, ptr %i.p, align 8, !noalias !71
  %.not.i.i = icmp eq i64 %i.aq, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvCs1wd1stuKehg_18build_script_build13cargo_env_var.exit

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs1wd1stuKehg_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !71
  store ptr %i.q, ptr %i.o, align 8, !noalias !71
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3TiGK1alE6v_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !71
  call void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.o), !noalias !71
  call void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #21, !noalias !71
  unreachable

_RNvCs1wd1stuKehg_18build_script_build13cargo_env_var.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs1wd1stuKehg_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @10, ptr %i.n, align 8, !noalias !72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 7, ptr %i.ar, align 8, !noalias !72
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull @10, i64 range(i64 5, 24) 7)
          to label %.noexc58 unwind label %.body181.thread215

.noexc58:                                         ; preds = %_RNvCs1wd1stuKehg_18build_script_build13cargo_env_var.exit
  %i.as = load i64, ptr %i.m, align 8, !noalias !73
  %.not.i.i56 = icmp eq i64 %i.as, -1
  br i1 %.not.i.i56, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.noexc58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !73
  store ptr %i.n, ptr %i.l, align 8, !noalias !73
  %.sroa.2.0..sroa_idx.i.i.i57 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs3TiGK1alE6v_14rustc_demangle, ptr %.sroa.2.0..sroa_idx.i.i.i57, align 8, !noalias !73
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @6, ptr nonnull %i.l)
          to label %.noexc59 unwind label %.body181.thread215

.noexc59:                                         ; preds = %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #21
          to label %.noexc60 unwind label %.body181.thread215

.noexc60:                                         ; preds = %.noexc59
  unreachable

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ao)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ao)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.ds, %bb.dq, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.e ], [ %.pn26.pn.pn.pn212, %bb.ds ], [ %.pn26.pn.pn, %bb.g ], [ %i.hd, %bb.dq ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.body178
  br i1 %.sroa.015.2, label %bb.ds, label %common.resume

.body181.thread215:                               ; preds = %.noexc59, %_RNvCs1wd1stuKehg_18build_script_build13cargo_env_var.exit, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.body178:                                         ; preds = %bb.do, %bb.h, %bb.j
  %.sroa.015.2 = phi i1 [ %.sroa.015.4, %bb.j ], [ %.sroa.015.3, %bb.h ], [ false, %bb.do ]
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.j ], [ %i.av, %bb.h ], [ %i.hb, %bb.do ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.am) #17
          to label %bb.g unwind label %bb.ad

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i177, %bb.i
  %.sroa.015.3 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i177 ], [ true, %bb.i ]
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body178

bb.i:                                             ; preds = %.noexc58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val32 = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val33 = load i64, ptr %i.ax, align 8
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.al, ptr %.val32, i64 %.val33, ptr nonnull @11, i64 5)
          to label %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit unwind label %bb.h

bb.j:                                             ; preds = %.thread274, %.thread, %bb.l, %bb.k
  %.sroa.015.4 = phi i1 [ %.sroa.015.5221, %.thread ], [ false, %bb.l ], [ true, %bb.k ], [ false, %.thread274 ]
  %.pn26.pn = phi { ptr, i32 } [ %.pn26222, %.thread ], [ %.pn21, %bb.l ], [ %i.ay, %bb.k ], [ %lpad.thr_comm.split-lp243, %.thread274 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs1wd1stuKehg_18build_script_build(ptr align 8 %i.al) #17
          to label %.body178 unwind label %bb.ad

bb.k:                                             ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.i
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ak, ptr nonnull @12, i64 5, ptr nonnull @13, i64 8)
          to label %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit67 unwind label %bb.k

_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit67: ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 511, ptr %i.k, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i8 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  %.val.val.i = load ptr, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  %.val.val1.i = load i64, ptr %i.bb, align 8
  %i.bc = invoke ptr @_RNvMsD_NtCscAsMj0W7j8b_3std2fsNtB5_10DirBuilder7__create(ptr nonnull align 4 %i.k, ptr %.val.val.i, i64 %.val.val1.i)
          to label %bb.n unwind label %bb.m       ; 7 uses

bb.l:                                             ; preds = %.body104
  br i1 %.sroa.014.5, label %.thread, label %bb.j

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i78, %bb.z, %bb.t, %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit67
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECs1wd1stuKehg_18build_script_build.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
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

default.unreachable:                              ; preds = %bb.dh, %bb.cz, %bb.cv, %bb.w, %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bg = lshr i64 %i.be, 32
  %i.bh = icmp uge ptr %i.bc, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bg to i8  ; 2 uses
  %.not3.i.i = icmp eq i8 %switch.idx.cast.i.i.i, -1
  %.not.i.i69 = or i1 %i.bh, %.not3.i.i
  br i1 %.not.i.i69, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs1wd1stuKehg_18build_script_build(ptr nonnull align 8 @4) #19, !noalias !74
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bi = invoke align 8 ptr @_RNvNtNtNtCshzWfHUSfYae_4core2io5error12os_functions16get_os_functions()
          to label %.noexc70 unwind label %bb.u

.noexc70:                                         ; preds = %bb.r
  %i.bj = lshr i64 %i.be, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke i8 %i.bm(i32 %i.bk)
          to label %bb.v unwind label %bb.u, !inline_history !21

bb.s:                                             ; preds = %bb.o
  br label %.sink.split

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build.exit, %bb.n
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.af, ptr nonnull @15, i64 13)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit unwind label %bb.m

bb.u:                                             ; preds = %.noexc70, %bb.r, %bb.ab, %bb.aa
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.val39 = load ptr, ptr %i.aj, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build(ptr %.val39) #17
          to label %.thread unwind label %bb.ad

.sink.split:                                      ; preds = %bb.o, %bb.s
  %.sink357 = phi i64 [ 31, %bb.s ], [ 16, %bb.o ]
  %i.bp = getelementptr i8, ptr %i.bc, i64 %.sink357
  %i.bq = load i8, ptr %i.bp, align 8
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %.noexc70, %bb.p
  %.sroa.0.0.i = phi i8 [ %switch.idx.cast.i.i.i, %bb.p ], [ %i.bn, %.noexc70 ], [ %i.bq, %.sink.split ]
  %.not279 = icmp eq i8 %.sroa.0.0.i, 12
  br i1 %.not279, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  switch i64 %i.bf, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build.exit
    i64 3, label %bb.x
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build.exit
    i64 1, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.br = icmp uge ptr %i.bc, inttoptr (i64 188978561024 to ptr)
  %i.bs = and i64 %i.be, 1095216660480
  %.not3.i.i.i.i = icmp eq i64 %i.bs, 1095216660480
  %.not.i.i.i.i = or i1 %i.br, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build.exit

bb.y:                                             ; preds = %bb.x
  call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs1wd1stuKehg_18build_script_build(ptr nonnull align 8 @4) #19, !noalias !75
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.bt = getelementptr i8, ptr %i.bc, i64 -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !alias.scope !75
  store i8 3, ptr %i.j, align 8, !alias.scope !75
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.bu)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build.exit unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.z, %bb.w, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t

bb.aa:                                            ; preds = %bb.v
  %.val46 = load ptr, ptr %i.ba, align 8
  %.val47 = load i64, ptr %i.bb, align 8
  store ptr %.val46, ptr %i.ai, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %.val47, ptr %i.bv, align 8
  store ptr %i.ai, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1b_NtCscAsMj0W7j8b_3std4pathNtB6_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.aj, ptr %i.bw, align 8
  %.sroa.2186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXs3_NtNtCshzWfHUSfYae_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.2186.0..sroa_idx, align 8
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr nonnull @14, ptr nonnull %i.ah)
          to label %bb.ab unwind label %bb.u

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process4exit(i32 1) #21
          to label %bb.ac unwind label %bb.u

bb.ac:                                            ; preds = %bb.dm, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.u, %bb.df, %bb.ds, %.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs1wd1stuKehg_18build_script_build.exit.i.i.i.i85, %.thread238, %bb.cr, %.loopexit, %bb.ce, %.body104, %bb.j, %.body178
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.by = load i64, ptr %i.af, align 8, !noalias !76
  %.not.i76 = icmp eq i64 %i.by, -1
  br i1 %.not.i76, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit
  store i64 -1, ptr %i.ag, align 8, !alias.scope !76
  br label %bb.ak

bb.af:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !76
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i = load i64, ptr %i.bz, align 8, !noalias !76
  %.not2.i = icmp eq i64 %.val1.i, 0
  br i1 %.not2.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i78 unwind label %bb.ah, !noalias !76

bb.ah:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.i)
          to label %.thread unwind label %bb.ai, !noalias !76

bb.ai:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !76
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i78: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.i)
          to label %.noexc79 unwind label %bb.m

.noexc79:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i78
  store i64 -1, ptr %i.ag, align 8, !alias.scope !76
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc79, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.ae, ptr nonnull @16, i64 23)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit81 unwind label %bb.al

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i86, %bb.ak
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs1wd1stuKehg_18build_script_build.exit.i.i.i.i85

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit81: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cd = load i64, ptr %i.ae, align 8, !noalias !77 ; 2 uses
  %.not.i82 = icmp eq i64 %i.cd, -1
  br i1 %.not.i82, label %.noexc89, label %bb.am

bb.am:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !77
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i83 = load i64, ptr %i.ce, align 8, !noalias !77
  %.not2.i84 = icmp eq i64 %.val1.i83, 0
  br i1 %.not2.i84, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i86 unwind label %bb.ao, !noalias !77

bb.ao:                                            ; preds = %bb.an
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs1wd1stuKehg_18build_script_build.exit.i.i.i.i85 unwind label %bb.ap, !noalias !77

bb.ap:                                            ; preds = %bb.ao
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !77
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i86: ; preds = %bb.an
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.h)
          to label %.noexc89 unwind label %bb.al

bb.aq:                                            ; preds = %bb.am
  %.sroa.4.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx328, i64 16, i1 false)
  br label %.noexc89

.noexc89:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i86, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit81, %bb.aq
  %i.ch = phi i64 [ %i.cd, %bb.aq ], [ -1, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit81 ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i86 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %.sroa.2332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.ch, ptr %.sroa.2332.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !78
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !79 ; 3 uses
  switch i64 %i.cj, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i
    i64 -2, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i
  ]

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i: ; preds = %.noexc89
  %.not6.i.i.i.i.i = icmp eq i64 %i.cj, -1        ; 2 uses
  %spec.store.select.i.i.i.i.i = select i1 %.not6.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i, ptr %i.ci, align 8, !noalias !80
  br i1 %.not6.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false)
  br label %.thread247

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i: ; preds = %.noexc89, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ch, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !noalias !79
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i: ; preds = %bb.ar, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i
  %.sink.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.ar ], [ %i.g, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i, align 8, !noalias !79
  %.pr.i.i = load i64, ptr %i.g, align 8, !noalias !79 ; 2 uses
  %.not6.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not6.i.i, label %bb.as, label %.thread247

bb.as:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1d_EECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.ci)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i unwind label %bb.at, !noalias !79

bb.at:                                            ; preds = %bb.as
  %i.cm = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.ci, align 8, !noalias !79
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.g) #17
          to label %.thread238 unwind label %bb.au, !noalias !79

bb.au:                                            ; preds = %bb.at
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !79
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i: ; preds = %bb.as
  store i64 -3, ptr %i.ci, align 8, !noalias !79
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i

.thread247:                                       ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i
  %.sroa.0.0.copyload.ph.i = phi i64 [ %.pr.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i ], [ %i.cj, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i ]
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx8.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !78
  br label %bb.ax

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i: ; preds = %.noexc89, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !78
  %i.co = load i64, ptr %i.ad, align 8, !noalias !81 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.co, -2
  br i1 %.not.i.i.i, label %bb.aw, label %bb.av

.thread244:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i94, %bb.aw
  %lpad.thr_comm242 = landingpad { ptr, i32 }
          cleanup
  br label %.thread238

.thread274:                                       ; preds = %bb.de
  %lpad.thr_comm.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.av:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i
  %.sroa.5.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx189, i64 16, i1 false)
  store i64 -1, ptr %i.ad, align 8
  %.not.i = icmp eq i64 %i.co, -1
  br i1 %.not.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i, %bb.av
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @17) #22
          to label %.noexc unwind label %.thread244

.noexc:                                           ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.av, %.thread247
  %.sroa.0187.0..sroa.0187.0.250 = phi i64 [ %.sroa.0.0.copyload.ph.i, %.thread247 ], [ %i.co, %bb.av ]
  store i64 %.sroa.0187.0..sroa.0187.0.250, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val.i = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !82
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val1.i93 = load i64, ptr %i.cp, align 8, !noalias !82
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3new(ptr nonnull sret([200 x i8]) align 8 %i.f, ptr %.val.i, i64 %.val1.i93)
          to label %bb.az unwind label %bb.ay, !noalias !82

bb.ay:                                            ; preds = %bb.ax
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.ab) #17
          to label %.thread238 unwind label %bb.bc, !noalias !82

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noundef nonnull align 8 dereferenceable(200) %i.f, i64 200, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i94 unwind label %bb.ba, !noalias !82

bb.ba:                                            ; preds = %bb.az
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ab)
          to label %.thread238 unwind label %bb.bb, !noalias !82

bb.bb:                                            ; preds = %bb.ba
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !82
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i94: ; preds = %bb.az
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ab)
          to label %bb.bd unwind label %.thread244

bb.bc:                                            ; preds = %bb.ay
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !82
  unreachable

bb.bd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 5 uses
  %.sroa.3.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i99

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i99: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs1wd1stuKehg_18build_script_build.exit.i.i, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83
  %i.cx = load i64, ptr %i.cu, align 8, !noalias !84 ; 3 uses
  switch i64 %i.cx, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i.i [
    i64 -3, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i
    i64 -2, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i99
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.cx, -1      ; 2 uses
  %spec.store.select.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, i64 -2, i64 -1
  store i64 %spec.store.select.i.i.i.i.i.i, ptr %i.cu, align 8, !noalias !85
  br i1 %.not6.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx8.i.i.i.i.i.i, i64 16, i1 false), !noalias !84
  br label %.thread.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i99
  %i.cy = load i64, ptr %i.cv, align 8, !noalias !86
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cy, -2
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !noalias !84
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i.i: ; preds = %bb.be, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.cv, %bb.be ], [ %i.c, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i.i.i.i ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i.i, align 8, !noalias !84
  %.pr.i.i.i = load i64, ptr %i.c, align 8, !noalias !84 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.bf, label %.thread.i

bb.bf:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1d_EECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.cu)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i unwind label %bb.bg, !noalias !84

bb.bg:                                            ; preds = %bb.bf
  %i.cz = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.cu, align 8, !noalias !84
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.c) #17
          to label %.body.i unwind label %bb.bh, !noalias !84

bb.bh:                                            ; preds = %bb.bg
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !84
  unreachable

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i: ; preds = %bb.bf
  store i64 -3, ptr %i.cu, align 8, !noalias !84
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i

.thread.i:                                        ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i.i
  %.sroa.0.0.copyload.ph.i.i = phi i64 [ %.pr.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.i.i.i ], [ %i.cx, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs1wd1stuKehg_18build_script_build.exit.thread.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83
  br label %bb.bm

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83
  %i.db = load i64, ptr %i.e, align 8, !noalias !87 ; 3 uses
  %.not.i.i.i.i101 = icmp eq i64 %i.db, -2
  br i1 %.not.i.i.i.i101, label %bb.bk, label %bb.bj

.body.i:                                          ; preds = %bb.bn, %bb.bl, %bb.bi, %bb.bg
  %.pn.i = phi { ptr, i32 } [ %i.dd, %bb.bl ], [ %i.cz, %bb.bg ], [ %i.dc, %bb.bi ], [ %i.de, %bb.bn ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECs1wd1stuKehg_18build_script_build(ptr align 8 %i.e) #17
          to label %.body104 unwind label %bb.bp

bb.bi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs1wd1stuKehg_18build_script_build.exit.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bj:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx6.i, i64 16, i1 false)
  store i64 -1, ptr %i.e, align 8
  %.not.i102 = icmp eq i64 %i.db, -1
  br i1 %.not.i102, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1g_EB1E_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs1wd1stuKehg_18build_script_build.exit.thread.i.i, %bb.bj
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainIBC_INtNtB4_6option8IntoIterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringEB1h_EINtNtNtBI_7sources4once4OnceB1F_EEECs1wd1stuKehg_18build_script_build(ptr align 8 %i.e)
          to label %bb.br unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bm
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.d) #17
          to label %.body.i unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bj, %.thread.i
  %.sroa.0.0..sroa.0.0.9.i = phi i64 [ %.sroa.0.0.copyload.ph.i.i, %.thread.i ], [ %i.db, %bb.bj ]
  store i64 %.sroa.0.0..sroa.0.0.9.i, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %.val.i100 = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.val2.i = load i64, ptr %i.cw, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i100, i64 %.val2.i)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs1wd1stuKehg_18build_script_build.exit.i unwind label %bb.bl

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs1wd1stuKehg_18build_script_build.exit.i: ; preds = %bb.bm
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs1wd1stuKehg_18build_script_build.exit.i.i unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs1wd1stuKehg_18build_script_build.exit.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %.body.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std3sys6os_str5bytes3BufECs1wd1stuKehg_18build_script_build.exit.i.i: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs1wd1stuKehg_18build_script_build.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.d)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i99 unwind label %bb.bi

bb.bp:                                            ; preds = %bb.bl, %.body.i
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

.body104:                                         ; preds = %bb.cb, %bb.bz, %.body140, %bb.bt, %bb.bv, %.body.i, %bb.bq, %bb.df, %bb.cr, %.body143, %bb.ce
  %.sroa.014.5 = phi i1 [ false, %bb.df ], [ false, %.body140 ], [ false, %bb.cb ], [ false, %.body143 ], [ false, %bb.cr ], [ false, %bb.ce ], [ true, %.body.i ], [ %.sroa.014.6, %bb.bq ], [ false, %bb.bv ], [ false, %bb.bt ], [ false, %bb.bz ]
  %.pn21 = phi { ptr, i32 } [ %i.gs, %bb.df ], [ %i.dq, %.body140 ], [ %i.du, %bb.cb ], [ %.pn, %.body143 ], [ %.pn, %bb.cr ], [ %i.dx, %bb.ce ], [ %.pn.i, %.body.i ], [ %i.dh, %bb.bq ], [ %i.dm, %bb.bv ], [ %i.dl, %bb.bt ], [ %i.dt, %bb.bz ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECs1wd1stuKehg_18build_script_build(ptr align 8 %i.ac) #17
          to label %bb.l unwind label %bb.ad

bb.bq:                                            ; preds = %bb.dk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorEECs1wd1stuKehg_18build_script_build.exit, %bb.cy, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs1wd1stuKehg_18build_script_build.exit.i, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit118, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit116, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit114, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit112, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit110, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs1wd1stuKehg_18build_script_build.exit, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs1wd1stuKehg_18build_script_build.exit, %bb.bs, %bb.bk, %bb.cs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1wd1stuKehg_18build_script_build.exit.thread
  %.sroa.014.6 = phi i1 [ false, %bb.dk ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std7process10ExitStatusNtNtNtB4_2io5error5ErrorEECs1wd1stuKehg_18build_script_build.exit ], [ false, %bb.cy ], [ false, %bb.cs ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1wd1stuKehg_18build_script_build.exit.thread ], [ false, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit ], [ false, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs1wd1stuKehg_18build_script_build.exit.i ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit118 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit116 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit114 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit112 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit110 ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs1wd1stuKehg_18build_script_build.exit ], [ true, %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs1wd1stuKehg_18build_script_build.exit ], [ true, %bb.bk ], [ true, %bb.bs ]
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.br:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %0, label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs1wd1stuKehg_18build_script_build.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  invoke void @_RNvMs_NtNtNtCscAsMj0W7j8b_3std3sys7process3envNtB4_10CommandEnv6remove(ptr nonnull align 8 %i.di, ptr nonnull @18, i64 15)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs1wd1stuKehg_18build_script_build.exit unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs1wd1stuKehg_18build_script_build.exit: ; preds = %bb.br, %bb.bs
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command6stderr(ptr nonnull align 8 %i.ac, i32 1, i32 undef)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs1wd1stuKehg_18build_script_build.exit unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command10env_removeReECs1wd1stuKehg_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @19, i64 14)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECs1wd1stuKehg_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @20, i64 22)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit110 unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit110: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @21, i64 16)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit112 unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit112: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit110
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @22, i64 17)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit114 unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit114: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit112
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @23, i64 24)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit116 unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit116: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit114
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @24, i64 9)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit118 unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit118: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit116
  %.val.val.i119 = load ptr, ptr %i.ba, align 8
  %.val.val1.i120 = load i64, ptr %i.bb, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.val.i119, i64 %.val.val1.i120)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit unwind label %bb.bq

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val.i122 = load ptr, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val1.i123 = load i64, ptr %i.dk, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i122, i64 %.val1.i123)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.aa) #17
          to label %.body104 unwind label %bb.bx

bb.bu:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argRNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs1wd1stuKehg_18build_script_build.exit.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %.body104 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs1wd1stuKehg_18build_script_build.exit.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.aa)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit unwind label %bb.bq

bb.bx:                                            ; preds = %bb.bt
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs1wd1stuKehg_18build_script_build.exit.i
  invoke void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.z, ptr nonnull @25, i64 6)
          to label %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit131 unwind label %bb.bq

_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit131: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtB8_4path7PathBufECs1wd1stuKehg_18build_script_build.exit
  %i.dp = load i64, ptr %i.z, align 8
  %.not17 = icmp eq i64 %i.dp, -1
  br i1 %.not17, label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit, label %bb.by

bb.by:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr nonnull @26, i64 8)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit133 unwind label %bb.ce

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i139, %_RINvNtCscAsMj0W7j8b_3std3env6var_osReECs1wd1stuKehg_18build_script_build.exit131
  invoke void @_RNvNvNtCscAsMj0W7j8b_3std3env3var5inner(ptr nonnull sret([32 x i8]) align 8 %i.w, ptr nonnull @27, i64 23)
          to label %_RINvNtCscAsMj0W7j8b_3std3env3varReECs1wd1stuKehg_18build_script_build.exit unwind label %bb.bq

.body140:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i139
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body104

_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit133: ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i135 = load ptr, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i136 = load i64, ptr %i.ds, align 8
  invoke void @_RNvMs_NtNtNtNtCscAsMj0W7j8b_3std3sys7process4unix6commonNtB4_7Command3arg(ptr nonnull align 8 %i.ac, ptr %.val.i135, i64 %.val1.i136)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit133
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.x) #17
          to label %.body104 unwind label %bb.cd

bb.ca:                                            ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit133
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i139 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %.body104 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit.i139: ; preds = %bb.ca
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.x)
          to label %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit unwind label %.body140

bb.cd:                                            ; preds = %bb.bz
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ce:                                            ; preds = %bb.by
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build(ptr nonnull align 8 %i.y) #17
          to label %.body104 unwind label %bb.ad

_RINvNtCscAsMj0W7j8b_3std3env3varReECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtNtB8_3ffi6os_str8OsStringECs1wd1stuKehg_18build_script_build.exit
  %i.dy = load i64, ptr %i.w, align 8
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1wd1stuKehg_18build_script_build.exit.thread, label %bb.cf

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1wd1stuKehg_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs1wd1stuKehg_18build_script_build.exit.i
  %.pre = load i64, ptr %i.w, align 8
  %i.ea = trunc nuw i64 %.pre to i1
  br i1 %i.ea, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1wd1stuKehg_18build_script_build.exit.thread, label %bb.cs

.loopexit.split:                                  ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchrCs1wd1stuKehg_18build_script_build.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCs1wd1stuKehg_18build_script_build.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs1wd1stuKehg_18build_script_build(ptr align 8 %i.v) #17
          to label %.body143 unwind label %bb.ad

bb.cf:                                            ; preds = %_RINvNtCscAsMj0W7j8b_3std3env3varReECs1wd1stuKehg_18build_script_build.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val48 = load i64, ptr %i.ec, align 8          ; 19 uses
  %i.ed = icmp eq i64 %.val48, 0
  br i1 %i.ed, label %.thread255, label %bb.ci

.thread255:                                       ; preds = %_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECs1wd1stuKehg_18build_script_build.exit153, %.preheader.i.i.i.i.us, %.noexc150.us, %bb.cl, %bb.ck, %bb.cj, %bb.cf
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs1wd1stuKehg_18build_script_build.exit.i unwind label %bb.cg

bb.cg:                                            ; preds = %.thread255
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.v)
          to label %.body143 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
