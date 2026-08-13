inline.NumInlined: 163
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEECs5I7i6yCjUqE_18build_script_build:bb.a
          to label %bb.m unwind label %bb.j

bb.i:                                             ; preds = %_RNvXs7_NtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs5I7i6yCjUqE_18build_script_build.exit
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs5I7i6yCjUqE_18build_script_build.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs5I7i6yCjUqE_18build_script_build.exit: ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val = load i32, ptr %i.q, align 4
  %i.r = call i32 @close(i32 %.val) #21           ; 0 uses
  ret void

bb.l:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.m:                                             ; preds = %bb.g, %bb.h, %bb.k
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.p, %bb.k ], [ %i.n, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val2 = load i32, ptr %i.t, align 4
  %i.u = call i32 @close(i32 %.val2) #21          ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEEECs5I7i6yCjUqE_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5I7i6yCjUqE_18build_script_build.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build.exit.i
    i64 1, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp uge ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %.not3.i.i.i.i.i = icmp eq i64 %i.g, 1095216660480
  %.not.i.i.i.i.i = or i1 %i.f, %.not3.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build.exit.i

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 @7) #22, !noalias !9
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val, i64 -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !9
  store i8 3, ptr %i.a, align 8, !alias.scope !9
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build.exit.i: ; preds = %bb.e, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5I7i6yCjUqE_18build_script_build.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5I7i6yCjUqE_18build_script_build.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs5I7i6yCjUqE_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs5I7i6yCjUqE_18build_script_build.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs5I7i6yCjUqE_18build_script_build.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringECs5I7i6yCjUqE_18build_script_build.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5I7i6yCjUqE_18build_script_build.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5I7i6yCjUqE_18build_script_build.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp uge ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %.not3.i.i.i = icmp eq i64 %i.e, 1095216660480
  %.not.i.i.i = or i1 %i.d, %.not3.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5I7i6yCjUqE_18build_script_build.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvNtCshzWfHUSfYae_4core4hint21unreachable_unchecked18precondition_checkCs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 @7) #22, !noalias !12
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !12
  store i8 3, ptr %i.a, align 8, !alias.scope !12
  call void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5I7i6yCjUqE_18build_script_build.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5I7i6yCjUqE_18build_script_build.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core9panicking13panic_displayINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsm_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxDNtNtCshzWfHUSfYae_4core5error5ErrorEL_ENtNtBM_3fmt7Display3fmtCs5I7i6yCjUqE_18build_script_build, ptr %.sroa.22.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr nonnull @1, ptr nonnull %i.a, ptr nonnull align 8 @20) #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs5I7i6yCjUqE_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !15
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0Cs5I7i6yCjUqE_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs5I7i6yCjUqE_18build_script_build(ptr %i.a) #24
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCs5I7i6yCjUqE_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs5I7i6yCjUqE_18build_script_build(ptr readonly %i.a) #24
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs5I7i6yCjUqE_18build_script_build4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1024 x i8], align 4              ; 5 uses
  %i.f = alloca [16384 x i8], align 4             ; 24 uses
  %i.g = alloca [1024 x i8], align 4              ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 6 uses
  %i.o = alloca [1024 x i8], align 4              ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 21 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [2 x i8], align 2                 ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 14 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 14 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RNvNtNtNtCscAsMj0W7j8b_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.ad, ptr nonnull @21, i64 7)
  %i.ag = load i64, ptr %i.ad, align 8
  %.not.i = icmp eq i64 %i.ag, -1
  br i1 %.not.i, label %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit, label %bb.c

bb.b:                                             ; preds = %bb.bu, %bb.bt, %.noexc32.i, %bb.ao, %bb.af, %bb.ae, %.noexc.i, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i22.i, %bb.av, %bb.ar, %.body.i.i, %bb.j, %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ah, %bb.b ], [ %i.aq, %bb.f ], [ %i.ba, %bb.j ], [ %i.cs, %bb.ar ], [ %i.dc, %bb.av ], [ %eh.lpad-body.i23.i, %.body.i22.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.ae) #19
          to label %common.resume unwind label %bb.cn

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.val13.i = load i64, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path5__join(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr %.val12.i, i64 %.val13.i, ptr nonnull @18, i64 6)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  invoke fastcc void @_RINvMs2_NtCscAsMj0W7j8b_3std2fsNtB6_4File6createNtNtB8_4path7PathBufECs5I7i6yCjUqE_18build_script_build(ptr noalias align 8 %i.aa, ptr align 8 %i.x)
          to label %.noexc14.i unwind label %bb.b

.noexc14.i:                                       ; preds = %.noexc.i
  %i.ak = load i32, ptr %i.aa, align 8, !noalias !17
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.noexc14.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.an, ptr %i.w, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.ao = call align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 8, i64 8) #21 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.e, label %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 8) #25
          to label %.noexc.i.i.i.i unwind label %bb.f

.noexc.i.i.i.i:                                   ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %i.w) #19
          to label %.body.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit.i.i: ; preds = %bb.d
  store ptr %i.an, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.an

bb.h:                                             ; preds = %.noexc14.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noalias !17 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !26
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs57dEzb6b5A8_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.v, i64 8192, i1 zeroext false, i64 1, i64 1)
          to label %.noexc.i.i18.i.i unwind label %bb.j, !noalias !26

.noexc.i.i18.i.i:                                 ; preds = %bb.h
  %i.au = load i64, ptr %i.v, align 8, !noalias !26
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !26 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.noexc.i.i18.i.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !26
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 %i.ax, i64 %i.az) #25
          to label %.noexc3.i.i.i.i unwind label %bb.j, !noalias !26

.noexc3.i.i.i.i:                                  ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = call i32 @close(i32 %i.at) #21, !noalias !26 ; 0 uses
  br label %.body.i

.loopexit.i.i:                                    ; preds = %bb.ag
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.y, %bb.k
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ak, %bb.ac, %bb.o, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.bi, %bb.o ], [ %i.cj, %bb.ak ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEECs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.ab) #19
          to label %.body.i unwind label %bb.am

bb.k:                                             ; preds = %.noexc.i.i18.i.i
  %i.bc = load ptr, ptr %i.ay, align 8, !noalias !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !26
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !26
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.bc, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !26
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 0, ptr %i.bd, align 8, !alias.scope !26
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  store i32 %i.at, ptr %i.be, align 4, !alias.scope !26
  %i.bf = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.ab, ptr nonnull @19, ptr nonnull inttoptr (i64 87 to ptr))
          to label %bb.l unwind label %.loopexit.split-lp.i.i ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.m

.preheader.i.i:                                   ; preds = %bb.l
  %.sroa.232.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.bf, ptr %i.u, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.bg = call align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 8, i64 8) #21 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.n, label %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit20.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 8) #25
          to label %.noexc.i.i19.i.i unwind label %bb.o

.noexc.i.i19.i.i:                                 ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %i.u) #19
          to label %.body.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit20.i.i: ; preds = %bb.m
  store ptr %i.bf, ptr %i.bg, align 8
end_hunk_0
begin_hunk_1_@_RNvCs5I7i6yCjUqE_18build_script_build4main:bb.a
  %i.in = zext nneg i32 %i.im to i64
  %i.io = lshr i32 %i.il, 8
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.in
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = xor i32 %i.iq, %i.io                    ; 3 uses
  %gep.8.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 9216
  store i32 %i.ir, ptr %gep.8.i.i.i, align 4
  %i.is = and i32 %i.ir, 255
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = lshr i32 %i.ir, 8
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = xor i32 %i.iw, %i.iu                    ; 3 uses
  %gep.9.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 10240
  store i32 %i.ix, ptr %gep.9.i.i.i, align 4
  %i.iy = and i32 %i.ix, 255
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = lshr i32 %i.ix, 8
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iz
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = xor i32 %i.jc, %i.ja                    ; 3 uses
  %gep.10.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 11264
  store i32 %i.jd, ptr %gep.10.i.i.i, align 4
  %i.je = and i32 %i.jd, 255
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = lshr i32 %i.jd, 8
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jf
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = xor i32 %i.ji, %i.jg                    ; 3 uses
  %gep.11.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 12288
  store i32 %i.jj, ptr %gep.11.i.i.i, align 4
  %i.jk = and i32 %i.jj, 255
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = lshr i32 %i.jj, 8
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jl
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = xor i32 %i.jo, %i.jm                    ; 3 uses
  %gep.12.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 13312
  store i32 %i.jp, ptr %gep.12.i.i.i, align 4
  %i.jq = and i32 %i.jp, 255
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = lshr i32 %i.jp, 8
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jr
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = xor i32 %i.ju, %i.js                    ; 3 uses
  %gep.13.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 14336
  store i32 %i.jv, ptr %gep.13.i.i.i, align 4
  %i.jw = and i32 %i.jv, 255
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = lshr i32 %i.jv, 8
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jx
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = xor i32 %i.ka, %i.jy
  %gep.14.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 15360
  store i32 %i.kb, ptr %gep.14.i.i.i, align 4
  %i.kc = add nuw nsw i64 %.sroa.0.025.i.i.i, 1   ; 2 uses
  %exitcond.not.i38.i.i = icmp eq i64 %i.kc, 256
  br i1 %exitcond.not.i38.i.i, label %bb.aw, label %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit13.loopexit.i.i.i

bb.aw:                                            ; preds = %_RNvXs4_NtNtCshzWfHUSfYae_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit13.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.kd = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @10, ptr nonnull inttoptr (i64 65 to ptr))
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  %.not.i24.i = icmp eq ptr %i.kd, null
  br i1 %.not.i24.i, label %.preheader83.i.i, label %bb.ay

.preheader83.i.i:                                 ; preds = %bb.ax
  %.sroa.259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.bz

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.kd, ptr %i.d, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.ke = call align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 8, i64 8) #21 ; 3 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.az, label %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit40.i.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 8) #25
          to label %.noexc.i.i39.i.i unwind label %bb.ba

.noexc.i.i39.i.i:                                 ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %i.d) #19
          to label %.body.i22.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit40.i.i: ; preds = %bb.ay
  store ptr %i.kd, ptr %i.ke, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ki = insertvalue { ptr, ptr } poison, ptr %i.ke, 0
  %i.kj = insertvalue { ptr, ptr } %i.ki, ptr @27, 1
  br label %bb.bu

bb.bc:                                            ; preds = %bb.ca
  %.sroa.057.0.add.i.i = add nuw nsw i64 %.sroa.057.0.idx.i.i46, 4 ; 2 uses
  %i.kk = icmp eq i64 %.sroa.057.0.add.i.i, 1024
  br i1 %i.kk, label %bb.bd, label %bb.bz

bb.bd:                                            ; preds = %bb.bc
  %i.kl = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @11, ptr nonnull inttoptr (i64 9 to ptr))
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 3 uses

bb.be:                                            ; preds = %bb.bd
  %.not27.i.i = icmp eq ptr %i.kl, null
  br i1 %.not27.i.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.kl, ptr %i.c, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.km = call align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 8, i64 8) #21 ; 3 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %bb.bg, label %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit44.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 8) #25
          to label %.noexc.i.i41.i.i unwind label %bb.bh

.noexc.i.i41.i.i:                                 ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %i.c) #19
          to label %.body.i22.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit44.i.i: ; preds = %bb.bf
  store ptr %i.kl, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.kq = insertvalue { ptr, ptr } poison, ptr %i.km, 0
  %i.kr = insertvalue { ptr, ptr } %i.kq, ptr @27, 1
  br label %bb.bu

bb.bj:                                            ; preds = %bb.be
  %i.ks = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @12, ptr nonnull inttoptr (i64 81 to ptr))
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 3 uses

bb.bk:                                            ; preds = %bb.bj
  %.not28.i.i = icmp eq ptr %i.ks, null
  br i1 %.not28.i.i, label %.preheader79.i.i, label %bb.bl

.preheader79.i.i:                                 ; preds = %bb.bk
  %.sroa.265.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.bv

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ks, ptr %i.b, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.kt = call align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 8, i64 8) #21 ; 3 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.bm, label %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit48.i.i

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 8) #25
          to label %.noexc.i.i45.i.i unwind label %bb.bn

.noexc.i.i45.i.i:                                 ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.kv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %i.b) #19
          to label %.body.i22.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit48.i.i: ; preds = %bb.bl
  store ptr %i.ks, ptr %i.kt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.kx = insertvalue { ptr, ptr } poison, ptr %i.kt, 0
  %i.ky = insertvalue { ptr, ptr } %i.kx, ptr @27, 1
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bx
  %0 = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.060.0.idx.i.i48
  %.sroa.060.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.kz = icmp eq i64 %.sroa.060.0.add.i.i, 16384
  br i1 %i.kz, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.la = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @13, ptr nonnull inttoptr (i64 7 to ptr))
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %.not30.i.i = icmp eq ptr %i.la, null
  br i1 %.not30.i.i, label %bb.bs, label %.invoke.i.i

bb.bs:                                            ; preds = %bb.br
  %i.lb = invoke fastcc ptr @_RNvMs_NtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileE9flush_bufCs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %i.q)
          to label %_RNvXs4_NtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write5flushCs5I7i6yCjUqE_18build_script_build.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ; 2 uses

_RNvXs4_NtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write5flushCs5I7i6yCjUqE_18build_script_build.exit.i.i: ; preds = %bb.bs
  %.not31.i.i = icmp eq ptr %i.lb, null
  br i1 %.not31.i.i, label %bb.bt, label %.invoke.i.i

bb.bt:                                            ; preds = %_RNvXs4_NtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write5flushCs5I7i6yCjUqE_18build_script_build.exit.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEECs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q)
          to label %.thread42.i unwind label %bb.b

.thread42.i:                                      ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ch

bb.bu:                                            ; preds = %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit56.i.i, %.invoke.i.i, %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit48.i.i, %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit44.i.i, %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit40.i.i
  %.pn.i.i = phi { ptr, ptr } [ %i.lq, %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit56.i.i ], [ %i.kr, %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit44.i.i ], [ %i.ky, %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit48.i.i ], [ %i.kj, %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit40.i.i ], [ %i.li, %.invoke.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEECs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q)
          to label %bb.cg unwind label %bb.b

bb.bv:                                            ; preds = %.preheader79.i.i, %bb.bp
  %.sroa.060.0.ptr.i.i49 = phi ptr [ %i.f, %.preheader79.i.i ], [ %.sroa.060.0.ptr.i.i, %bb.bp ]
  %.sroa.060.0.idx.i.i48 = phi i64 [ 0, %.preheader79.i.i ], [ %.sroa.060.0.add.i.i, %bb.bp ] ; 2 uses
  %.sroa.060.0.add.i.i = add nuw nsw i64 %.sroa.060.0.idx.i.i48, 1024 ; 2 uses
  %i.lc = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @14, ptr nonnull inttoptr (i64 13 to ptr))
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.i.i ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %.not32.i.i = icmp eq ptr %i.lc, null
  br i1 %.not32.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit51.i.i, label %.invoke.i.i

.preheader.i26.i:                                 ; preds = %bb.by
  %.sroa.062.0.add.i.i = add nuw nsw i64 %.sroa.062.0.idx.i.i47, 4 ; 2 uses
  %i.ld = icmp eq i64 %.sroa.062.0.add.i.i, 1024
  br i1 %i.ld, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit51.thread.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit51.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit51.i.i: ; preds = %bb.bw, %.preheader.i26.i
  %.sroa.062.0.idx.i.i47 = phi i64 [ %.sroa.062.0.add.i.i, %.preheader.i26.i ], [ 0, %bb.bw ] ; 2 uses
  %.sroa.062.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %.sroa.060.0.ptr.i.i49, i64 %.sroa.062.0.idx.i.i47
  %i.le = load i32, ptr %.sroa.062.0.ptr.i.i, align 4
  store i32 %i.le, ptr %i.l, align 4
  store ptr %i.l, ptr %i.k, align 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.265.0..sroa_idx.i.i, align 8
  %i.lf = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @16, ptr nonnull %i.k)
          to label %bb.by unwind label %.loopexit.i27.i ; 2 uses

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit51.thread.i.i: ; preds = %.preheader.i26.i
  %i.lg = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @15, ptr nonnull inttoptr (i64 15 to ptr))
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.i.i ; 2 uses

bb.bx:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit51.thread.i.i
  %.not34.i.i = icmp eq ptr %i.lg, null
  br i1 %.not34.i.i, label %bb.bp, label %.invoke.i.i

bb.by:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5I7i6yCjUqE_18build_script_build.exit51.i.i
  %.not35.i.i = icmp eq ptr %i.lf, null
  br i1 %.not35.i.i, label %.preheader.i26.i, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.bx, %bb.bw, %bb.by, %_RNvXs4_NtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write5flushCs5I7i6yCjUqE_18build_script_build.exit.i.i, %bb.br
  %i.lh = phi ptr [ %i.la, %bb.br ], [ %i.lf, %bb.by ], [ %i.lb, %_RNvXs4_NtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write5flushCs5I7i6yCjUqE_18build_script_build.exit.i.i ], [ %i.lc, %bb.bw ], [ %i.lg, %bb.bx ]
  %i.li = invoke fastcc { ptr, ptr } @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build(ptr nonnull %i.lh)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.bz:                                            ; preds = %.preheader83.i.i, %bb.bc
  %.sroa.057.0.idx.i.i46 = phi i64 [ 0, %.preheader83.i.i ], [ %.sroa.057.0.add.i.i, %bb.bc ] ; 2 uses
  %.sroa.057.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.057.0.idx.i.i46
  %i.lj = load i32, ptr %.sroa.057.0.ptr.i.i, align 4
  store i32 %i.lj, ptr %i.n, align 4
  store ptr %i.n, ptr %i.m, align 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.259.0..sroa_idx.i.i, align 8
  %i.lk = invoke fastcc ptr @_RNvYINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileENtNtNtCshzWfHUSfYae_4core2io5write5Write9write_fmtCs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.q, ptr nonnull @17, ptr nonnull %i.m)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 3 uses

bb.ca:                                            ; preds = %bb.bz
  %.not36.i.i = icmp eq ptr %i.lk, null
  br i1 %.not36.i.i, label %bb.bc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.lk, ptr %i.a, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.ll = call align 8 dereferenceable_or_null(8) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 8, i64 8) #21 ; 3 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.cc, label %_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit56.i.i

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 8, i64 8) #25
          to label %.noexc.i.i53.i.i unwind label %bb.cd

.noexc.i.i53.i.i:                                 ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5I7i6yCjUqE_18build_script_build(ptr nonnull align 8 %i.a) #19
          to label %.body.i22.i unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultuINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB7_5error5ErrorEL_EEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCs5I7i6yCjUqE_18build_script_build.exit56.i.i: ; preds = %bb.cb
  store ptr %i.lk, ptr %i.ll, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lp = insertvalue { ptr, ptr } poison, ptr %i.ll, 0
  %i.lq = insertvalue { ptr, ptr } %i.lp, ptr @27, 1
  br label %bb.bu

bb.cf:                                            ; preds = %.body.i22.i
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.cg:                                            ; preds = %bb.bu
  %.sroa.0.1.i.i = extractvalue { ptr, ptr } %.pn.i.i, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.not10.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not10.i, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg, %.thread42.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ae)
          to label %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ae)
          to label %common.resume unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.cq, %.body.i, %bb.ci, %bb.cl
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.lu, %bb.cl ], [ %i.ls, %bb.ci ], [ %i.mb, %bb.cq ]
  resume { ptr, i32 } %common.resume.op

_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread: ; preds = %bb.ch
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.cp

bb.ck:                                            ; preds = %bb.cg, %.thread45.i, %bb.an
  %.pn48.pn.i = phi ptr [ %.sroa.0.0.i.ph.i, %bb.an ], [ %i.cq, %.thread45.i ], [ %.sroa.0.1.i.i, %bb.cg ]
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ae)
          to label %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread7 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ae)
          to label %common.resume unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread7: ; preds = %bb.ck
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.co

bb.cn:                                            ; preds = %.body.i
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit: ; preds = %bb.a
  %i.lx = call { ptr, ptr } @_RNvXsi_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB7_3BoxDNtNtCshzWfHUSfYae_4core5error5ErrorEL_EINtNtBW_7convert4FromReE4from(ptr nonnull @22, i64 40) ; 2 uses
  %i.ly = extractvalue { ptr, ptr } %i.lx, 0      ; 2 uses
  %i.lz = extractvalue { ptr, ptr } %i.lx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.not = icmp eq ptr %i.ly, null
  br i1 %.not, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread7, %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit
  %.sroa.0.0.i12 = phi ptr [ %.pn48.pn.i, %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread7 ], [ %i.ly, %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit ]
  %.sroa.5.0.i11 = phi ptr [ @27, %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread7 ], [ %i.lz, %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit ]
  store ptr %.sroa.0.0.i12, ptr %i.af, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.5.0.i11, ptr %i.ma, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core9panicking13panic_displayINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.af) #25
          to label %bb.cr unwind label %bb.cq

bb.cp:                                            ; preds = %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit.thread, %_RNvCs5I7i6yCjUqE_18build_script_build8try_main.exit
  ret void

bb.cq:                                            ; preds = %bb.co
  %i.mb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs5I7i6yCjUqE_18build_script_build(ptr align 8 %i.af) #19
          to label %common.resume unwind label %bb.cs

bb.cr:                                            ; preds = %bb.co
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable
}
end_hunk_1
