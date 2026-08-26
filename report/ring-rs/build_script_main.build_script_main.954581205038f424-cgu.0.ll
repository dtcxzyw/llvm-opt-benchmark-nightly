Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/build_script_main.build_script_main.954581205038f424-cgu.0?download=true
begin_hunk_0_@_RNvMNtCs3oUPovFnLWP_4core5sliceSTRSReBx_E4iterCscOzg5arm0FQ_17build_script_main
define hidden { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTRSReBx_E4iterCscOzg5arm0FQ_17build_script_main(ptr align 8 %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTReRSNtNtCsaL1QbXo9JQH_3std4path7PathBufBx_Bx_E4iterCscOzg5arm0FQ_17build_script_main(ptr align 8 %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE6expectCscOzg5arm0FQ_17build_script_main(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6expectCscOzg5arm0FQ_17build_script_main(ptr %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE6expectCscOzg5arm0FQ_17build_script_main(ptr %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCscOzg5arm0FQ_17build_script_main5build5cargoNtNtB4_6target6Target12new_from_env(ptr nofree writeonly sret([104 x i8]) align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env3var(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 @20)
  %i.j = load i64, ptr %i.h, align 8
  %.not.i14 = icmp eq i64 %i.j, -1
  br i1 %.not.i14, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit15

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @22) #22
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit15: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env3var(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 @24)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit15
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit15
  %i.l = load i64, ptr %i.f, align 8
  %.not.i11 = icmp eq i64 %i.l, -1
  br i1 %.not.i11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @25) #22
          to label %.noexc12 unwind label %bb.c

.noexc12:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env3var(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 @27)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.d, align 8
  %.not.i8 = icmp eq i64 %i.n, -1
  br i1 %.not.i8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @28) #22
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env3var(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 @30)
          to label %bb.k unwind label %.thread33

.thread33:                                        ; preds = %bb.l, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread28

bb.k:                                             ; preds = %bb.j
  %i.o = load i64, ptr %i.b, align 8
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @31) #22
          to label %.noexc unwind label %.thread33

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit.thread

bb.n:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit.thread, %bb.o
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.c) #23
          to label %.thread28 unwind label %bb.q

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 1953786220
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i32
  %i.aa = xor i32 %i.z, 25964
  %i.ab = or i32 %i.w, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %bcmp.i.fr = freeze i32 %i.ad
  %i.ae = icmp ne i32 %bcmp.i.fr, 0
  %spec.select = zext i1 %i.ae to i8
  br label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit.thread

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit.thread: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit, %bb.m
  %i.af = phi i8 [ 1, %bb.m ], [ %spec.select, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit ]
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull @32, i64 7)
          to label %_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env6var_os.exit unwind label %bb.n

_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env6var_os.exit: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCscOzg5arm0FQ_17build_script_main.exit.thread
  %i.ag = load i64, ptr %i.a, align 8
  %.not.i16 = icmp eq i64 %i.ag, -1
  br i1 %.not.i16, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env6var_os.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @33) #22
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env6var_os.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.af, ptr %i.aj, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.c)
  ret void

bb.q:                                             ; preds = %bb.t, %bb.r, %.thread28, %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

.thread28:                                        ; preds = %bb.n, %.thread33
  %.pn31 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread33 ], [ %i.s, %bb.n ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e) #23
          to label %bb.r unwind label %bb.q

bb.r:                                             ; preds = %.thread28, %bb.g
  %.pn.pn.ph = phi { ptr, i32 } [ %i.m, %bb.g ], [ %.pn31, %.thread28 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.g) #23
          to label %bb.t unwind label %bb.q

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %.pn.pn.pn.ph

bb.t:                                             ; preds = %bb.r, %bb.c
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn.ph, %bb.r ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.i) #23
          to label %bb.s unwind label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6to_strCscOzg5arm0FQ_17build_script_main(ptr %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %0, i64 %1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.3.0 = select i1 %i.c, i64 undef, i64 %i.g
  %.sroa.0.0 = select i1 %i.c, ptr null, ptr %i.e
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path9as_os_strCscOzg5arm0FQ_17build_script_main(ptr %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEE8grow_oneCscOzg5arm0FQ_17build_script_main(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 16) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_4sync3ArceEINtNtCs3oUPovFnLWP_4core6option6OptionBN_EEE8grow_oneCscOzg5arm0FQ_17build_script_main(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 32) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCsaL1QbXo9JQH_3std4path7PathBufBN_EE8grow_oneCscOzg5arm0FQ_17build_script_main(ptr align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0, i64 %i.a, i64 1, i64 8, i64 48) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.c, i64 %i.d) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtCscOzg5arm0FQ_17build_script_main5build4core9AsmTargetE3newBU_(ptr align 8 %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMsF_NtCsaL1QbXo9JQH_3std7processNtB5_10ExitStatus7successCscOzg5arm0FQ_17build_script_main(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.not = icmp eq i32 %i.a, 0
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define hidden range(i24 0, 65794) i24 @_RNvMs_NtNtCscOzg5arm0FQ_17build_script_main5build5cargoNtNtB6_1c7Profile12new_from_env(ptr %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [176 x i8], align 8               ; 6 uses
  call void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr %0, i64 %1, ptr nonnull @34, i64 4)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = invoke { ptr, i64 } @_RNvXs1_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5indexCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.d, ptr nonnull align 8 @39) #21
          to label %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i unwind label %bb.b, !noalias !20 ; 2 uses

bb.b:                                             ; preds = %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d) #23
          to label %common.resume unwind label %bb.f, !noalias !20

_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i: ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 0
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs8metadata(ptr nonnull sret([176 x i8]) align 8 %i.a, ptr %i.h, i64 %i.i)
          to label %bb.c unwind label %bb.b, !noalias !20

bb.c:                                             ; preds = %_RNvXs1r_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBufINtNtCs3oUPovFnLWP_4core7convert5AsRefNtB6_4PathE6as_refCscOzg5arm0FQ_17build_script_main.exit.i
  %i.j = load i64, ptr %i.a, align 8, !noalias !20
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !20
  store i64 2, ptr %i.e, align 8, !alias.scope !20
  br label %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false)
  br label %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit

bb.f:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !20
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit: ; preds = %bb.d, %bb.e
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d), !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = invoke zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorE5is_okCscOzg5arm0FQ_17build_script_main(ptr nonnull align 8 %i.e)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e) #23
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %_RINvNtCsaL1QbXo9JQH_3std2fs8metadataNtNtB4_4path7PathBufECscOzg5arm0FQ_17build_script_main.exit
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e)
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtNtCscOzg5arm0FQ_17build_script_main5build5cargo3env3var(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 @36)
  %i.r = load i64, ptr %i.b, align 8
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.j, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringE6unwrapCscOzg5arm0FQ_17build_script_main.exit

end_hunk_0
