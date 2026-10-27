Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/advanced_blog_cli-7275b01720a11b73.advanced_blog_cli.6af03eca1abeceee-cgu.04?download=true
inline.NumInlined: 297
inline.NumDeleted: 129
begin_hunk_0_@_RINvCscXv0LTY5Aw5_7dotenvy3varReECs9bejAFUsR8E_17advanced_blog_cli:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9bejAFUsR8E_17advanced_blog_cli.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB37_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB15_6marker4SyncNtB2V_4SendEL_EENtNtB13_4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB1c_6marker4SyncNtB32_4SendEL_EENtNtB1a_4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB3e_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB1c_6marker4SyncNtB32_4SendEL_EENtNtB1a_4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB3e_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecPaEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecPaEECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecPaEECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit4

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEEECs9bejAFUsR8E_17advanced_blog_cli(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !6, !alias.scope !20, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RNvXNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
  br label %_RNvXNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit

_RNvXNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs9bejAFUsR8E_17advanced_blog_cli(ptr nonnull %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtCscI6d9CVNmLh_4core6option6OptionB17_EE10dying_nextCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_RNvXNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCs9bejAFUsR8E_17advanced_blog_cli.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.c = phi ptr [ %i.b, %.lr.ph.i ], [ %i.d, %bb.b ]
  %.sroa.41.0.copyload.i = load i64, ptr %.sroa.41.0..sroa_idx.i, align 8
  tail call fastcc void @_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtCscI6d9CVNmLh_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9bejAFUsR8E_17advanced_blog_cli(ptr nonnull %i.c, i64 %.sroa.41.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtCscI6d9CVNmLh_4core6option6OptionB17_EE10dying_nextCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.d = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.b

_RNvXNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std3env8VarErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process5ChildECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4, !noundef !5 ; 2 uses
  %i.b = icmp eq i32 %.val, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix4unix7ProcessECs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @close(i32 noundef %.val) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix4unix7ProcessECs9bejAFUsR8E_17advanced_blog_cli.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix4unix7ProcessECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i32, ptr %i.d, align 4, !noundef !5 ; 2 uses
  %i.e = icmp eq i32 %.val4, -1
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process10ChildStdinEECs9bejAFUsR8E_17advanced_blog_cli.exit10, label %bb.c
end_hunk_0
begin_hunk_1_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process5ChildECs9bejAFUsR8E_17advanced_blog_cli:bb.a
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStdoutEECs9bejAFUsR8E_17advanced_blog_cli.exit11, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process10ChildStdinEECs9bejAFUsR8E_17advanced_blog_cli.exit10
  %i.i = tail call noundef i32 @close(i32 noundef %.val6) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStdoutEECs9bejAFUsR8E_17advanced_blog_cli.exit11

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStdoutEECs9bejAFUsR8E_17advanced_blog_cli.exit11: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process10ChildStdinEECs9bejAFUsR8E_17advanced_blog_cli.exit10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8 = load i32, ptr %i.j, align 4, !noundef !5 ; 2 uses
  %i.k = icmp eq i32 %.val8, -1
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStderrEECs9bejAFUsR8E_17advanced_blog_cli.exit12, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStdoutEECs9bejAFUsR8E_17advanced_blog_cli.exit11
  %i.l = tail call noundef i32 @close(i32 noundef %.val8) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStderrEECs9bejAFUsR8E_17advanced_blog_cli.exit12

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStderrEECs9bejAFUsR8E_17advanced_blog_cli.exit12: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process11ChildStdoutEECs9bejAFUsR8E_17advanced_blog_cli.exit11, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process7CommandECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !23, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val16.i = load i64, ptr %i.b, align 8, !alias.scope !23 ; 2 uses
  store i8 0, ptr %.val.i, align 1, !noalias !23
  %i.c = icmp eq i64 %.val16.i, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val16.i, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXs3_NtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common13cstring_arrayNtB5_12CStringArrayNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecPaEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(200) %0) #26
          to label %.body.i unwind label %bb.g

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecPaEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecPaEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecPaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(200) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common13cstring_array12CStringArrayECs9bejAFUsR8E_17advanced_blog_cli.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.i, %bb.h ], [ %i.e, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys7process3env10CommandEnvECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(32) %i.h) #26
          to label %bb.i unwind label %bb.af

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecPaEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common13cstring_array12CStringArrayECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecPaEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys7process3env10CommandEnvECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(32) %i.j)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %bb.l, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %i.o, %bb.l ], [ %.pn.i, %.body.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val23.i = load ptr, ptr %i.k, align 8, !alias.scope !23, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val24.i = load i64, ptr %i.l, align 8, !alias.scope !23 ; 2 uses
  %i.m = icmp eq ptr %.val23.i, null
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %.val23.i, align 1
  %i.n = icmp eq i64 %.val24.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef range(i64 1, 0) %.val24.i, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit.i

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common13cstring_array12CStringArrayECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.m:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common13cstring_array12CStringArrayECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val21.i = load ptr, ptr %i.p, align 8, !alias.scope !23, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val22.i = load i64, ptr %i.q, align 8, !alias.scope !23 ; 2 uses
  %i.r = icmp eq ptr %.val21.i, null
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit41.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %.val21.i, align 1
  %i.s = icmp eq i64 %.val22.i, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit41.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef range(i64 1, 0) %.val22.i, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit41.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val19.i = load ptr, ptr %i.t, align 8, !alias.scope !23, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val20.i = load i64, ptr %i.u, align 8, !alias.scope !23 ; 2 uses
  %i.v = icmp eq ptr %.val19.i, null
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit42.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  store i8 0, ptr %.val19.i, align 1
  %i.w = icmp eq i64 %.val20.i, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit42.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef range(i64 1, 0) %.val20.i, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit42.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit41.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val17.i = load ptr, ptr %i.x, align 8, !alias.scope !23, !noundef !5 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val18.i = load i64, ptr %i.y, align 8, !alias.scope !23 ; 2 uses
  %i.z = icmp eq ptr %.val17.i, null
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit43.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit41.i
  store i8 0, ptr %.val17.i, align 1
  %i.aa = icmp eq i64 %.val18.i, 0
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit43.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, 0) %.val18.i, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit43.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit42.i: ; preds = %bb.q, %bb.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB37_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #26
          to label %.body44.i unwind label %bb.af

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit43.i: ; preds = %bb.s, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit41.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB15_6marker4SyncNtB2V_4SendEL_EENtNtB13_4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit43.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB1c_6marker4SyncNtB32_4SendEL_EENtNtB1a_4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body44.i unwind label %bb.v

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit43.i
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutuEp6OutputINtNtB1c_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB1c_6marker4SyncNtB32_4SendEL_EENtNtB1a_4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB37_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli.exit.i unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

.body44.i:                                        ; preds = %bb.x, %bb.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit42.i
  %.pn8.i = phi { ptr, i32 } [ %.pn2.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit42.i ], [ %i.aj, %bb.x ], [ %i.ad, %bb.t ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val27.i = load ptr, ptr %i.af, align 8, !alias.scope !23, !align !9, !noundef !5 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val28.i = load i64, ptr %i.ag, align 8, !alias.scope !23 ; 2 uses
  %i.ah = icmp eq ptr %.val27.i, null
  %i.ai = icmp eq i64 %.val28.i, 0
  %or.cond.i.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i, label %bb.w

bb.w:                                             ; preds = %.body44.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  %1 = shl nuw nsw i64 %.val28.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef range(i64 1, 0) %1, i64 noundef 4) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i

bb.x:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body44.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB37_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val25.i = load ptr, ptr %i.ak, align 8, !alias.scope !23, !align !9, !noundef !5 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val26.i = load i64, ptr %i.al, align 8, !alias.scope !23 ; 2 uses
  %i.am = icmp eq ptr %.val25.i, null
  %i.an = icmp eq i64 %.val26.i, 0
  %or.cond.i46.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i46.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit47.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB37_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %2 = shl nuw nsw i64 %.val26.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef range(i64 1, 0) %2, i64 noundef 4) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit47.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.w, %.body44.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val39.i = load i32, ptr %i.ao, align 8, !range !24, !alias.scope !23, !noundef !5
  %cond.i.i = icmp eq i32 %.val39.i, 3
  br i1 %cond.i.i, label %bb.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit.i

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val40.i = load i32, ptr %i.ap, align 4, !alias.scope !23
  %i.aq = tail call noundef i32 @close(i32 noundef %.val40.i) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit47.i: ; preds = %bb.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorENtNtB4_6marker4SyncNtB37_4SendEL_EEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val37.i = load i32, ptr %i.ar, align 8, !range !24, !alias.scope !23, !noundef !5
  %cond.i48.i = icmp eq i32 %.val37.i, 3
  br i1 %cond.i48.i, label %bb.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit49.i

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit47.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val38.i = load i32, ptr %i.as, align 4, !alias.scope !23
  %i.at = tail call noundef i32 @close(i32 noundef %.val38.i) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit49.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val35.i = load i32, ptr %i.au, align 8, !range !24, !alias.scope !23, !noundef !5
  %cond.i50.i = icmp eq i32 %.val35.i, 3
  br i1 %cond.i50.i, label %bb.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit51.i

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.val36.i = load i32, ptr %i.av, align 4, !alias.scope !23
  %i.aw = tail call noundef i32 @close(i32 noundef %.val36.i) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit51.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit49.i: ; preds = %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxSmEEECs9bejAFUsR8E_17advanced_blog_cli.exit47.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val33.i = load i32, ptr %i.ax, align 8, !range !24, !alias.scope !23, !noundef !5
  %cond.i52.i = icmp eq i32 %.val33.i, 3
  br i1 %cond.i52.i, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit53.i

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit49.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.val34.i = load i32, ptr %i.ay, align 4, !alias.scope !23
  %i.az = tail call noundef i32 @close(i32 noundef %.val34.i) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit53.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit51.i: ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val31.i = load i32, ptr %i.ba, align 8, !range !24, !alias.scope !23, !noundef !5
  %cond.i54.i = icmp eq i32 %.val31.i, 3
  br i1 %cond.i54.i, label %bb.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit55.i

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit51.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val32.i = load i32, ptr %i.bb, align 4, !alias.scope !23
  %i.bc = tail call noundef i32 @close(i32 noundef %.val32.i) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit55.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit53.i: ; preds = %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit49.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val29.i = load i32, ptr %i.bd, align 8, !range !24, !alias.scope !23, !noundef !5
  %cond.i56.i = icmp eq i32 %.val29.i, 3
  br i1 %cond.i56.i, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common7CommandECs9bejAFUsR8E_17advanced_blog_cli.exit

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit53.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.val30.i = load i32, ptr %i.be, align 4, !alias.scope !23
  %i.bf = tail call noundef i32 @close(i32 noundef %.val30.i) #25 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common7CommandECs9bejAFUsR8E_17advanced_blog_cli.exit

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringEECs9bejAFUsR8E_17advanced_blog_cli.exit42.i, %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit55.i: ; preds = %bb.ad, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit51.i
  resume { ptr, i32 } %.pn8.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common7CommandECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6common5StdioEECs9bejAFUsR8E_17advanced_blog_cli.exit53.i, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgpSKRLfVQC3_8tempfile4file13NamedTempFileECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs4_NtCsgpSKRLfVQC3_8tempfile4fileNtB5_8TempPathNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load i64, ptr %i.b, align 8, !alias.scope !27, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %.val3.i, 0
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !27, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %.val3.i, i64 noundef 1) #25
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !27, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgpSKRLfVQC3_8tempfile4file8TempPathECs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !27, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgpSKRLfVQC3_8tempfile4file8TempPathECs9bejAFUsR8E_17advanced_blog_cli.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgpSKRLfVQC3_8tempfile4file8TempPathECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.f, align 8, !range !10, !noundef !5
  %i.g = tail call noundef i32 @close(i32 noundef %.val) #25 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i32, ptr %i.h, align 8, !range !10, !noundef !5
  %i.i = tail call noundef i32 @close(i32 noundef %.val1) #25 ; 0 uses
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !30, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !5, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli(ptr %.val2, ptr nonnull %.val3) #26
          to label %common.resume unwind label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  %i.j = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9bejAFUsR8E_17advanced_blog_cli.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.j(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9bejAFUsR8E_17advanced_blog_cli.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli.exit

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #25
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.g, %bb.h
  ret void

bb.k:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs9bejAFUsR8E_17advanced_blog_cli.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs9bejAFUsR8E_17advanced_blog_cli.exit
    i64 1, label %bb.c
  ], !prof !31

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs9bejAFUsR8E_17advanced_blog_cli.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #25
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #25
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs9bejAFUsR8E_17advanced_blog_cli.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys6os_str5bytes3BufECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjRvGck33osM_6diesel2pg7backend23FailedToLookupTypeErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !12, !alias.scope !38, !noundef !5
  %switch.i.i.i = icmp ugt i64 %i.b, -3
  br i1 %switch.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val) #26
          to label %bb.k unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i.i, %bb.a
  %i.f = load i64, ptr %.val, align 8, !range !6, !alias.scope !39, !noundef !5
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyEECs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyEECs9bejAFUsR8E_17advanced_blog_cli.exit unwind label %bb.j

bb.i:                                             ; preds = %.body.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.h, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #25
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup18PgMetadataCacheKeyEECs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc6borrow3CoweEEECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 48, i64 noundef 8) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std3sys7process3env10CommandEnvECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  %.sroa.06.0.copyload.i.i = load ptr, ptr %0, align 8, !alias.scope !50 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !50
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !50 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !50
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !50
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !50
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !50
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !50
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i = phi i64 [ %.sroa.58.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31.i.i, ptr %i.b, align 8, !noalias !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i, ptr %i.c, align 8, !noalias !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i, ptr %i.d, align 8, !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtCscI6d9CVNmLh_4core6option6OptionB17_EE10dying_nextCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !50
  %i.e = load ptr, ptr %i.a, align 8, !noalias !51, !noundef !5 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMapNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB1A_EEECs9bejAFUsR8E_17advanced_blog_cli.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.h, %bb.f ]
  %.sroa.43.0.copyload.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !51
  invoke fastcc void @_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtCscI6d9CVNmLh_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs9bejAFUsR8E_17advanced_blog_cli(ptr nonnull %i.f, i64 %.sroa.43.0.copyload.i.i.i.i)
          to label %bb.f unwind label %bb.e, !noalias !50

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs9bejAFUsR8E_17advanced_blog_cli(ptr nonnull align 8 dereferenceable(72) %i.b) #26
          to label %bb.h unwind label %bb.g, !noalias !50
end_hunk_1
begin_hunk_2_@_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit:bb.a

bb.c:                                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCs40k4W9msRzi_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs9bejAFUsR8E_17advanced_blog_cli6editor11edit_string(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %.sroa.515.i = alloca [16 x i8], align 8        ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [200 x i8], align 8               ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [28 x i8], align 4                ; 14 uses
  %i.m = alloca [16 x i8], align 8                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvMsf_NtCsgpSKRLfVQC3_8tempfile4fileNtB5_13NamedTempFile3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !380, !noundef !5 ; 2 uses
  %i.t = icmp eq i8 %i.s, 2
  %i.u = load ptr, ptr %i.p, align 8              ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.u, ptr %i.n, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.v = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 41) 8, i64 noundef range(i64 1, 9) 8) #25 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCs9bejAFUsR8E_17advanced_blog_cli.exit19, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume.sink.split.sink.split:              ; preds = %bb.bw, %bb.br
  %.val3.i.i31.sink = phi i64 [ %.val3.i.i, %bb.br ], [ %.val3.i.i31, %bb.bw ]
  %common.resume.op.ph.ph = phi { ptr, i32 } [ %i.dq, %bb.br ], [ %i.dx, %bb.bw ]
  %.val2.i.i32 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i32, i64 noundef range(i64 1, 0) %.val3.i.i31.sink, i64 noundef 1) #25
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %common.resume.sink.split.sink.split, %bb.bw, %bb.br
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dq, %bb.br ], [ %i.dx, %bb.bw ], [ %common.resume.op.ph.ph, %common.resume.sink.split.sink.split ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val1.i33 = load i32, ptr %i.z, align 8, !range !10, !noundef !5
  %i.aa = call noundef i32 @close(i32 noundef %.val1.i33) #25 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.d ], [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCs9bejAFUsR8E_17advanced_blog_cli.exit19: ; preds = %bb.b
  store ptr %i.u, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @15, ptr %i.ac, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bu

bb.f:                                             ; preds = %bb.a
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.615.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store ptr %i.u, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  store i64 %.sroa.413.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i8 %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ad = invoke noundef ptr @_RNvXsk_NtCsgpSKRLfVQC3_8tempfile4fileNtB5_13NamedTempFileNtNtCsgczF5crJ4sT_3std2io5Write9write_allCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.h unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process5ChildECs9bejAFUsR8E_17advanced_blog_cli.exit59.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9bejAFUsR8E_17advanced_blog_cli.exit.i, %bb.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process5ChildECs9bejAFUsR8E_17advanced_blog_cli.exit.i, %_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i, %bb.r, %bb.m, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.t, %bb.v, %.body44.i, %.body.i, %bb.bg, %bb.k, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ae, %bb.g ], [ %i.cy, %bb.bg ], [ %i.ak, %bb.p ], [ %i.as, %bb.t ], [ %i.at, %bb.v ], [ %.pn.i, %.body44.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgpSKRLfVQC3_8tempfile4file13NamedTempFileECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(32) %i.q) #26
          to label %common.resume unwind label %bb.bz

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.ad, ptr %i.o, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25
  %i.af = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 41) 8, i64 noundef range(i64 1, 9) 8) #25 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %bb.bv, !prof !16

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o) #26
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !384
  invoke void @_RNvNtCsgczF5crJ4sT_3std3env7__var_os(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 6)
          to label %.noexc22 unwind label %bb.g

.noexc22:                                         ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.aj = load i64, ptr %i.b, align 8, !range !6, !alias.scope !386, !noalias !384, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !alias.scope !387, !noalias !384
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE7or_elseNCNvNtCs9bejAFUsR8E_17advanced_blog_cli6editor14editor_command0EB1F_.exit.i.i

bb.o:                                             ; preds = %.noexc22
  invoke void @_RNvNtCsgczF5crJ4sT_3std3env7__var_os(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE7or_elseNCNvNtCs9bejAFUsR8E_17advanced_blog_cli6editor14editor_command0EB1F_.exit.i.i unwind label %bb.p, !noalias !388

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %.body unwind label %bb.q, !noalias !389

bb.q:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !389
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE7or_elseNCNvNtCs9bejAFUsR8E_17advanced_blog_cli6editor14editor_command0EB1F_.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !384
  %i.am = load i64, ptr %i.c, align 8, !range !6, !noalias !384, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, -1
  br i1 %.not.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE7or_elseNCNvNtCs9bejAFUsR8E_17advanced_blog_cli6editor14editor_command0EB1F_.exit.i.i
  %i.an = invoke { ptr, ptr } @_RNvXsi_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtB7_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorEL_EINtNtBW_7convert4FromReE4from(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 51)
          to label %.noexc25 unwind label %bb.g   ; 2 uses

.noexc25:                                         ; preds = %bb.r
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = extractvalue { ptr, ptr } %i.an, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !384
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.aq, align 8, !alias.scope !381
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ap, ptr %i.ar, align 8, !alias.scope !381
  store i64 -1, ptr %0, align 8, !alias.scope !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !383
  br label %.noexc30

bb.s:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringE7or_elseNCNvNtCs9bejAFUsR8E_17advanced_blog_cli6editor14editor_command0EB1F_.exit.i.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !383 ; 2 uses
  %.sroa.960.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.960.0.copyload.i = load ptr, ptr %.sroa.960.0..sroa_idx.i, align 8, !noalias !383 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !384
  store i64 %i.am, ptr %i.i, align 8, !noalias !383
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !383
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.960.0.copyload.i, ptr %.sroa.8.0..sroa_idx12.i, align 8, !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !390
  %.val1.i.cast.i = ptrtoint ptr %.sroa.960.0.copyload.i to i64
  invoke void @_RNvMs_NtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6commonNtB4_7Command3new(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload.i, i64 noundef %.val1.i.cast.i)
          to label %bb.u unwind label %bb.t, !noalias !390

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #26
          to label %.body unwind label %bb.x, !noalias !391

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.j, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false), !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !390
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i unwind label %bb.v, !noalias !391

bb.v:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.w, !noalias !391

bb.w:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !391
  unreachable

bb.x:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !391
  unreachable

_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc26 unwind label %bb.g

.noexc26:                                         ; preds = %_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3newNtNtNtB8_3ffi6os_str8OsStringECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.aw = load ptr, ptr %i.q, align 8, !alias.scope !382, !nonnull !5, !noundef !5
  %i.ax = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !382, !noundef !5
  invoke void @_RNvMs_NtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix6commonNtB4_7Command3arg(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ax)
          to label %_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs9bejAFUsR8E_17advanced_blog_cli.exit.i unwind label %bb.y, !noalias !383

.body44.i:                                        ; preds = %.body41.i, %bb.ac, %bb.y
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body42.i, %.body41.i ], [ %i.ay, %bb.y ], [ %i.bf, %bb.ac ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process7CommandECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 8 dereferenceable(200) %i.j) #26
          to label %.body unwind label %bb.bj, !noalias !383

bb.y:                                             ; preds = %_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs9bejAFUsR8E_17advanced_blog_cli.exit.i, %.noexc26
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body44.i

_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs9bejAFUsR8E_17advanced_blog_cli.exit.i: ; preds = %.noexc26
  invoke void @_RNvMsk_NtCsgczF5crJ4sT_3std7processNtB5_7Command5spawn(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.j)
          to label %bb.z unwind label %bb.y, !noalias !383

bb.z:                                             ; preds = %_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3argRNtNtNtB8_3ffi6os_str5OsStrECs9bejAFUsR8E_17advanced_blog_cli.exit.i
  %i.az = load i32, ptr %i.k, align 8, !range !14, !noalias !383, !noundef !5
  %i.ba = trunc nuw i32 %i.az to i1
  br i1 %i.ba, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !383, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !383
  store ptr %i.bc, ptr %i.d, align 8, !noalias !383
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !383
  %i.bd = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 41) 8, i64 noundef range(i64 1, 9) 8) #25, !noalias !383 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.ab, label %bb.bp, !prof !16

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc.i unwind label %bb.ac, !noalias !383

.noexc.i:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #26
          to label %.body44.i unwind label %bb.ad, !noalias !383

bb.ad:                                            ; preds = %bb.ac
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !383
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.027.0.copyload.i = load i32, ptr %i.bh, align 4, !noalias !383
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.428.0.copyload.i = load ptr, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !383
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.515.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.529.0..sroa_idx.i, i64 16, i1 false), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !383
  store i32 %.sroa.027.0.copyload.i, ptr %i.l, align 4, !noalias !383
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store ptr %.sroa.428.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !383
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.515.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.i, i64 16, i1 false), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.515.i)
  invoke void @_RNvMsY_NtCsgczF5crJ4sT_3std7processNtB5_5Child4wait(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 4 dereferenceable(28) %i.l)
          to label %bb.ag unwind label %bb.af, !noalias !383

bb.af:                                            ; preds = %bb.ae
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

.body41.i:                                        ; preds = %bb.aj, %bb.af
  %eh.lpad-body42.i = phi { ptr, i32 } [ %i.bi, %bb.af ], [ %i.bp, %bb.aj ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process5ChildECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef align 4 dereferenceable(28) %i.l) #26, !noalias !383
  br label %.body44.i

bb.ag:                                            ; preds = %bb.ae
  %i.bj = load i32, ptr %i.m, align 8, !range !14, !noalias !383, !noundef !5
  %i.bk = trunc nuw i32 %i.bj to i1
  br i1 %i.bk, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !383, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !383
  store ptr %i.bm, ptr %i.e, align 8, !noalias !383
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !383
  %i.bn = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 41) 8, i64 noundef range(i64 1, 9) 8) #25, !noalias !383 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ai, label %bb.bk, !prof !16

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #27
          to label %.noexc47.i unwind label %bb.aj, !noalias !383

.noexc47.i:                                       ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %.body41.i unwind label %bb.ak, !noalias !383

bb.ak:                                            ; preds = %bb.aj
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #24, !noalias !383
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !noalias !383, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !383
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %.val.i49.i = load i32, ptr %.sroa.515.0..sroa_idx.i, align 4, !alias.scope !393, !noalias !383, !noundef !5 ; 2 uses
  %i.bt = icmp eq i32 %.val.i49.i, -1
  br i1 %i.bt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix4unix7ProcessECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bu = call noundef i32 @close(i32 noundef %.val.i49.i) #25, !noalias !394 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix4unix7ProcessECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix4unix7ProcessECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i: ; preds = %bb.am, %bb.al
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val4.i.i = load i32, ptr %i.bv, align 4, !alias.scope !393, !noalias !383, !noundef !5 ; 2 uses
  %i.bw = icmp eq i32 %.val4.i.i, -1
  br i1 %i.bw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process10ChildStdinEECs9bejAFUsR8E_17advanced_blog_cli.exit10.i.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsgczF5crJ4sT_3std3sys7process4unix4unix7ProcessECs9bejAFUsR8E_17advanced_blog_cli.exit.i.i
  %i.bx = call noundef i32 @close(i32 noundef %.val4.i.i) #25, !noalias !394 ; 0 uses
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgczF5crJ4sT_3std7process10ChildStdinEECs9bejAFUsR8E_17advanced_blog_cli.exit10.i.i

end_hunk_2
