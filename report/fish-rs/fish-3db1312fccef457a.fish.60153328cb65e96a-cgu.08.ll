Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.08?download=true
inline.NumInlined: 2295
inline.NumDeleted: 1070
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB19_EEECs8frGy5WneL6_4fish:bb.a
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBN_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB1g_EEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBN_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB1g_EEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecaEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecaEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecaEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeccEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeccENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeccEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeccEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeciEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeciEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeclEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeclEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVeclEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecyEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !13, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #38
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !13, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #38
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_ENtNtBN_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !9
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8n0tpEuULLm_5pcre24pool4PoolINtNtBG_3ffi9MatchDataNtB1d_15CodeUnitWidth32EINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1a_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3t_10UnwindSafeNtB3a_4SyncEL_EEECs8frGy5WneL6_4fish(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !273 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !273, !nonnull !9, !align !14, !noundef !9 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !invariant.load !9, !noalias !273 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.e, !noalias !273

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !10, !invariant.load !9, !noalias !273 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !13, !invariant.load !9, !noalias !273
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #38, !noalias !273
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !9, !noalias !273 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !13, !invariant.load !9, !noalias !273
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #38, !noalias !273
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val) #36
          to label %.body3.i.i unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d, %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxINtNtBM_3ffi9MatchDataNtB2F_15CodeUnitWidth32EEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxINtNtBT_3ffi9MatchDataNtB2Y_15CodeUnitWidth32EEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val)
          to label %.body3.i.i unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputINtNtCs8n0tpEuULLm_5pcre23ffi9MatchDataNtB1O_15CodeUnitWidth32ENtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB37_10UnwindSafeNtB2O_4SyncEL_EECs8frGy5WneL6_4fish.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxINtNtBT_3ffi9MatchDataNtB2Y_15CodeUnitWidth32EEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

.body3.i.i:                                       ; preds = %bb.k, %bb.g, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %.body.i.i ], [ %i.t, %bb.k ], [ %i.o, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !274, !noundef !9
  %i.s = icmp eq i64 %i.r, 2
  br i1 %i.s, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.body3.i.i
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %bb.o unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !15, !alias.scope !275, !noundef !9
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtCs8n0tpEuULLm_5pcre24pool5inner4PoolINtNtB1h_3ffi9MatchDataNtB1U_15CodeUnitWidth32EIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB1R_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3G_10UnwindSafeNtB3n_4SyncEL_EEEECs8frGy5WneL6_4fish.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish.exit.i.i
  invoke void @_RNvXsd_NtCs8n0tpEuULLm_5pcre23ffiINtB5_9MatchDataNtB5_15CodeUnitWidth32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtCs8n0tpEuULLm_5pcre24pool5inner4PoolINtNtB1h_3ffi9MatchDataNtB1U_15CodeUnitWidth32EIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB1R_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3G_10UnwindSafeNtB3n_4SyncEL_EEEECs8frGy5WneL6_4fish.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.j, %.body.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %.body3.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.y, %bb.n ], [ %.pn.i.i, %bb.j ], [ %.pn.i.i, %.body3.i.i ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #38
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtCs8n0tpEuULLm_5pcre24pool5inner4PoolINtNtB1h_3ffi9MatchDataNtB1U_15CodeUnitWidth32EIBC_DINtNtNtB4_3ops8function2FnuEp6OutputB1R_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3G_10UnwindSafeNtB3n_4SyncEL_EEEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs8n0tpEuULLm_5pcre24pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxINtNtB1f_3ffi9MatchDataNtB38_15CodeUnitWidth32EEEEEEECs8frGy5WneL6_4fish.exit.i.i, %bb.l
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 112, i64 noundef 8) #38
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !278, !noundef !9 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtB6_6string6StringE3lenCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph15
  %i.i = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.g, %bb.b ]
  %i.l = icmp eq i64 %i.f, %i.b
  br i1 %i.l, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.i, %bb.d ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i14
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #36
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.f:                                             ; preds = %.lr.ph15
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !281, !noundef !9 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE3lenCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph15
  %i.i = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtCs8frGy5WneL6_4fish8builtins4abbr8abbr_adds_0EBJ_:bb.a
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !9
  switch i64 %i.a, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !301, !noundef !9 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !302
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !9, !align !14, !noundef !9
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish(ptr %.val2, ptr nonnull %.val3) #36
          to label %common.resume unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !9, !align !14, !noundef !9 ; 5 uses
  %i.k = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.k(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEEB1z_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !13, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish.exit

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !9 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !13, !invariant.load !9
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #38
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.q, %bb.i ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputbEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.g
  ret void

bb.j:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !319, !noundef !9 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.g = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !320
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !321, !noundef !9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.l = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !322
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #35
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit: ; preds = %bb.e, %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io12OutputStreamEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !9 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io20BufferedOutputStreamEBF_.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io20BufferedOutputStreamEBF_.exit
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !335, !nonnull !9, !noundef !9
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !335
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io20BufferedOutputStreamEBF_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish2io15SeparatedBufferEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #35
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io20BufferedOutputStreamEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io20BufferedOutputStreamEBF_.exit: ; preds = %bb.c, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamEBF_.exit, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io18StringOutputStreamEBF_.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io20BufferedOutputStreamEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish2io7IoChainEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1B_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1B_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEEB1u_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5abbrs12AbbreviationEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
end_hunk_1
begin_hunk_2_@_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safejEB6_:bb.a

bb.d:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.e = sub nsw i64 25, %.sroa.06.019.i.i
  br label %_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit

bb.e:                                             ; preds = %bb.e, %bb.c
  %.sroa.0.020.i.i = phi i64 [ %1, %bb.c ], [ %i.g, %bb.e ] ; 3 uses
  %.sroa.06.019.i.i = phi i64 [ 24, %bb.c ], [ %i.j, %bb.e ] ; 3 uses
  %i.f = urem i64 %.sroa.0.020.i.i, 10
  %i.g = udiv i64 %.sroa.0.020.i.i, 10
  %i.h = trunc nuw nsw i64 %i.f to i8
  %i.i = or disjoint i8 %i.h, 48
  %i.j = add nsw i64 %.sroa.06.019.i.i, -1        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  store i8 %i.i, ptr %i.k, align 1, !alias.scope !1067
  %i.l = icmp ugt i64 %.sroa.0.020.i.i, 9
  %i.m = icmp samesign ugt i64 %.sroa.06.019.i.i, 2
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit: ; preds = %bb.b, %bb.d
  %.sroa.3.0.i.i = phi i64 [ %i.e, %bb.d ], [ 1, %bb.b ]
  %.sroa.05.0.i.i = phi ptr [ %i.d, %bb.d ], [ @273, %bb.b ]
  %i.n = call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %.sroa.05.0.i.i, i64 noundef %.sroa.3.0.i.i) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safelEB6_(i32 noundef %0, i32 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 6 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i32 %1, 0
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.e = zext i32 %.sroa.0.0.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !1072
  br label %bb.g

bb.d:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i64 %.sroa.06.019.i.i, -2        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 45, ptr %i.g, align 1, !alias.scope !1072
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.1.i.i = phi i64 [ %i.f, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.h = sub nuw nsw i64 24, %.sroa.06.1.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.06.1.i.i
  br label %_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit

bb.g:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.020.i.i = phi i64 [ %i.e, %bb.c ], [ %i.k, %bb.g ] ; 3 uses
  %.sroa.06.019.i.i = phi i64 [ 24, %bb.c ], [ %i.n, %bb.g ] ; 3 uses
  %i.j = urem i64 %.sroa.0.020.i.i, 10
  %i.k = udiv i64 %.sroa.0.020.i.i, 10
  %i.l = trunc nuw nsw i64 %i.j to i8
  %i.m = or disjoint i8 %i.l, 48
  %i.n = add nsw i64 %.sroa.06.019.i.i, -1        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 %i.m, ptr %i.o, align 1, !alias.scope !1072
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.i, 9
  %i.q = icmp samesign ugt i64 %.sroa.06.019.i.i, 2
  %or.cond.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.g, label %bb.d

_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit: ; preds = %bb.b, %bb.f
  %.sroa.3.0.i.i = phi i64 [ %i.h, %bb.f ], [ 1, %bb.b ]
  %.sroa.05.0.i.i = phi ptr [ %i.i, %bb.f ], [ @273, %bb.b ]
  %i.r = call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %.sroa.05.0.i.i, i64 noundef %.sroa.3.0.i.i) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safexEB6_(i32 noundef %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 6 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i64 %1, 0
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !1077
  br label %bb.g

bb.d:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i64 %.sroa.06.019.i.i, -2        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  store i8 45, ptr %i.f, align 1, !alias.scope !1077
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.1.i.i = phi i64 [ %i.e, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.g = sub nuw nsw i64 24, %.sroa.06.1.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.06.1.i.i
  br label %_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit

bb.g:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.020.i.i = phi i64 [ %.sroa.0.0.i, %bb.c ], [ %i.j, %bb.g ] ; 3 uses
  %.sroa.06.019.i.i = phi i64 [ 24, %bb.c ], [ %i.m, %bb.g ] ; 3 uses
  %i.i = urem i64 %.sroa.0.020.i.i, 10
  %i.j = udiv i64 %.sroa.0.020.i.i, 10
  %i.k = trunc nuw nsw i64 %i.i to i8
  %i.l = or disjoint i8 %i.k, 48
  %i.m = add nsw i64 %.sroa.06.019.i.i, -1        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !alias.scope !1077
  %i.o = icmp ugt i64 %.sroa.0.020.i.i, 9
  %i.p = icmp samesign ugt i64 %.sroa.06.019.i.i, 2
  %or.cond.i.i = and i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.g, label %bb.d

_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit: ; preds = %bb.b, %bb.f
  %.sroa.3.0.i.i = phi i64 [ %i.g, %bb.f ], [ 1, %bb.b ]
  %.sroa.05.0.i.i = phi ptr [ %i.h, %bb.f ], [ @273, %bb.b ]
  %i.q = call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %.sroa.05.0.i.i, i64 noundef %.sroa.3.0.i.i) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_Cse7JGOylGlDZ_3nixNtNtNtCs3oUPovFnLWP_4core3ffi5c_str4CStrNtB6_7NixPath13with_nix_pathlNCINvNtB6_5fcntl4openBo_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #3 {
bb.a:
  %.val = load i32, ptr %2, align 4, !noundef !9
  %.val1 = load i32, ptr %3, align 4, !noundef !9
  %i.a = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull readonly %0, i32 noundef %.val, i32 noundef %.val1) #38
  %i.b = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %i.a, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB6_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB6_22DedupPred2CoalescePredNtB6_7DedupEqENtB6_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3I_8adapters3map8map_foldB1W_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4K_7flattenINtB6N_13FlattenCompatppE9iter_fold7flattenB5g_uNCINvNvXsi_B6N_B71_B3C_4fold7flattenINtNtNtB3K_5array4iter8IntoIterB5h_KB5j_EuNCINvNvB3C_8for_each4callB5h_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9G_11Utf32StringINtNtB3G_7collect6ExtendB5h_E6extendINtB6N_7FlatMapBQ_B5g_B5n_EE0E0E0E0E0EB5v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.017.0.copyload = load ptr, ptr %i.h, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 5 uses
  %i.i = load i64, ptr %0, align 8, !range !20, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.l, null
  br i1 %.not9, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload), "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.m = icmp eq ptr %.sroa.6.0.copyload, %.sroa.10.0.copyload
  br i1 %i.m, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  %i.o = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !1124, !nonnull !9, !align !14, !noundef !9
  br label %bb.e

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.c, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1125
  store i64 %.sroa.8.0.copyload, ptr %i.g, align 8, !noalias !1125
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.017.0.copyload, ptr %i.p, align 8, !noalias !1125
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1125
  br label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ]
  %.not.not15.i = icmp eq ptr %.sroa.6.0, %.sroa.10.0.copyload
  br i1 %.not.not15.i, label %_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldTBX_uENCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB2W_10CoalesceByBI_INtB2W_22DedupPred2CoalescePredNtB2W_7DedupEqENtB2W_7NoCountEB1H_4folduNCINvNtNtB1N_8adapters3map8map_foldBX_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB5i_7flattenINtB7k_13FlattenCompatppE9iter_fold7flattenB5N_uNCINvNvXsi_B7k_B7y_B1H_4fold7flattenINtNtNtB1P_5array4iter8IntoIterB5O_KB5Q_EuNCINvNvB1H_8for_each4callB5O_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtBad_11Utf32StringINtNtB1L_7collect6ExtendB5O_E6extendINtB7k_7FlatMapB3G_B5N_B5U_EE0E0E0E0E0Es_0EB62_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %.sroa.02.0, %.lr.ph.i ], [ %.sroa.5.06.i.i, %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i ] ; 3 uses
  %i.s = phi ptr [ %.sroa.6.0, %.lr.ph.i ], [ %i.u, %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1126, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1131, !noalias !1132, !noundef !9 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1133, !noalias !1126, !noundef !9
  %i.x = icmp eq i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %.val2.pre.i.i = load ptr, ptr %.sroa.0.016.i, align 8, !alias.scope !1127, !noalias !1132 ; 3 uses
  br i1 %i.x, label %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i, label %bb.g

_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.f
  %.val2.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1133, !noalias !1126, !nonnull !9, !noundef !9
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.pre.i.i, ptr nonnull readonly %.val2.i.i.i.i.i, i64 %.val1.i.i.i.i.i), !alias.scope !1134, !noalias !1135
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1136
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1136
  store ptr %.val2.pre.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1137
  store i64 %.val1.i.i.i.i.i, ptr %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1137
  store ptr @53, ptr %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1137
  store i64 1, ptr %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1137
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1140
  store ptr %.sroa.5.0..sroa_idx.i.i.i.i, ptr %i.d, align 8, !noalias !1140
  store i64 2, ptr %i.q, align 8, !noalias !1140
  store ptr %1, ptr %i.r, align 8, !noalias !1140
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  store i64 1, ptr %i.e, align 8, !alias.scope !1143, !noalias !1136
  invoke void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callReNCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB20_11Utf32StringINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB47_22DedupPred2CoalescePredNtB47_7DedupEqENtB47_7NoCountEAB1O_j2_NCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB7Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.pre.i.i, i64 noundef %.val1.i.i.i.i.i)
          to label %.noexc.i unwind label %bb.h, !noalias !1126

.noexc.i:                                         ; preds = %bb.g
  store i64 2, ptr %i.e, align 8, !alias.scope !1143, !noalias !1136
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %i.z = load ptr, ptr %i.d, align 8, !alias.scope !1145, !noalias !1140, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1146, !nonnull !9, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !1146, !noundef !9
  invoke void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callReNCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB20_11Utf32StringINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB47_22DedupPred2CoalescePredNtB47_7DedupEqENtB47_7NoCountEAB1O_j2_NCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB7Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %.noexc8.i unwind label %bb.h, !noalias !1126

.noexc8.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1136
  br label %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i

_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i: ; preds = %.noexc8.i, %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.5.06.i.i = phi ptr [ %i.t, %.noexc8.i ], [ %.sroa.0.016.i, %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i ] ; 2 uses
  %.not.not.i = icmp eq ptr %i.u, %.sroa.10.0.copyload
  br i1 %.not.not.i, label %_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldTBX_uENCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB2W_10CoalesceByBI_INtB2W_22DedupPred2CoalescePredNtB2W_7DedupEqENtB2W_7NoCountEB1H_4folduNCINvNtNtB1N_8adapters3map8map_foldBX_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB5i_7flattenINtB7k_13FlattenCompatppE9iter_fold7flattenB5N_uNCINvNvXsi_B7k_B7y_B1H_4fold7flattenINtNtNtB1P_5array4iter8IntoIterB5O_KB5Q_EuNCINvNvB1H_8for_each4callB5O_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtBad_11Utf32StringINtNtB1L_7collect6ExtendB5O_E6extendINtB7k_7FlatMapB3G_B5N_B5U_EE0E0E0E0E0Es_0EB62_.exit, label %bb.f

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1147
  store i64 %.sroa.8.0.copyload, ptr %i.c, align 8, !noalias !1147
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.017.0.copyload, ptr %i.ae, align 8, !noalias !1147
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i unwind label %bb.i, !noalias !1126

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1147
  resume { ptr, i32 } %lpad.thr_comm.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1126
  unreachable

_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldTBX_uENCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB2W_10CoalesceByBI_INtB2W_22DedupPred2CoalescePredNtB2W_7DedupEqENtB2W_7NoCountEB1H_4folduNCINvNtNtB1N_8adapters3map8map_foldBX_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB5i_7flattenINtB7k_13FlattenCompatppE9iter_fold7flattenB5N_uNCINvNvXsi_B7k_B7y_B1H_4fold7flattenINtNtNtB1P_5array4iter8IntoIterB5O_KB5Q_EuNCINvNvB1H_8for_each4callB5O_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtBad_11Utf32StringINtNtB1L_7collect6ExtendB5O_E6extendINtB7k_7FlatMapB3G_B5N_B5U_EE0E0E0E0E0Es_0EB62_.exit: ; preds = %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i, %bb.e
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.02.0, %bb.e ], [ %.sroa.5.06.i.i, %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1126
  store i64 %.sroa.8.0.copyload, ptr %i.f, align 8, !noalias !1126
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.017.0.copyload, ptr %i.ag, align 8, !noalias !1126
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !1126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1126
  %.val15 = load ptr, ptr %.sroa.0.0.lcssa.i, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.0.lcssa.i, i64 8
  %.val16 = load i64, ptr %i.ah, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1148
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1148
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %.val15, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val16, ptr %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8
  %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @53, ptr %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8
  %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 1, ptr %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1151
  store ptr %.sroa.5.0..sroa_idx.i.i, ptr %i.a, align 8, !noalias !1151
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.ai, align 8, !noalias !1151
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %1, ptr %i.aj, align 8, !noalias !1151
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  store i64 1, ptr %i.b, align 8, !alias.scope !1154, !noalias !1148
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callReNCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB20_11Utf32StringINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB47_22DedupPred2CoalescePredNtB47_7DedupEqENtB47_7NoCountEAB1O_j2_NCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB7Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val15, i64 noundef %.val16), !noalias !1148
  store i64 2, ptr %i.b, align 8, !alias.scope !1154, !noalias !1148
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.ak = load ptr, ptr %i.a, align 8, !alias.scope !1156, !noalias !1151, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1157, !nonnull !9, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1157, !noundef !9
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callReNCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB20_11Utf32StringINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB47_22DedupPred2CoalescePredNtB47_7DedupEqENtB47_7NoCountEAB1O_j2_NCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB7Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.ao), !noalias !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1148
  br label %bb.j

bb.j:                                             ; preds = %_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldTBX_uENCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB2W_10CoalesceByBI_INtB2W_22DedupPred2CoalescePredNtB2W_7DedupEqENtB2W_7NoCountEB1H_4folduNCINvNtNtB1N_8adapters3map8map_foldBX_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB5i_7flattenINtB7k_13FlattenCompatppE9iter_fold7flattenB5N_uNCINvNvXsi_B7k_B7y_B1H_4fold7flattenINtNtNtB1P_5array4iter8IntoIterB5O_KB5Q_EuNCINvNvB1H_8for_each4callB5O_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtBad_11Utf32StringINtNtB1L_7collect6ExtendB5O_E6extendINtB7k_7FlatMapB3G_B5N_B5U_EE0E0E0E0E0Es_0EB62_.exit, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_8Iterator4folduNCINvNvB2E_8for_each4callB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedBQ_E0E0EB1L_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1173 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1173 ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1173 ; 3 uses
  %.sroa.6.0.copyload.i9 = ptrtoaddr ptr %.sroa.6.0.copyload.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1175, !nonnull !9, !noundef !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1175 ; 6 uses
  %.promoted.i.i8 = ptrtoaddr ptr %.promoted.i.i to i64 ; 2 uses
  %.not9.i.i = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %.not9.i.i, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1F_NCINvMsk_BW_INtBW_3VecB1F_E14extend_trustedBQ_E0E0EB1L_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.b to i64
  %i.e = add i64 %i.d, -4
  %i.f = sub i64 %i.e, %.promoted.i.i8            ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.i = shl i64 %.sroa.4.0.copyload.i, 2
  %i.j = add i64 %i.i, %.sroa.6.0.copyload.i9
  %i.k = sub i64 %.promoted.i.i8, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 4 uses
  %i.l = add i64 %.sroa.4.0.copyload.i, %n.vec    ; 2 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %.promoted.i.i, i64 %i.m ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB1a_11get_or_initNCNvB2k_30is_windows_subsystem_for_linux0E0zE0E0B2m_:bb.a
bb.an:                                            ; preds = %bb.am
  %i.eo = load i64, ptr %i.en, align 8, !range !22, !noundef !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eq = load i64, ptr %i.ep, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.eo, i64 %i.eq) #39
          to label %bb.au unwind label %bb.af

bb.ao:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.et = load i64, ptr %i.en, align 8, !range !10, !noundef !9 ; 2 uses
  %i.eu = icmp samesign ugt i64 %i.et, 130
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(131) %i.es, ptr noundef nonnull align 1 dereferenceable(131) @52, i64 131, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 131
  store ptr %i.es, ptr %i.b, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.et, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.es, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ev, ptr %i.ey, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.ap unwind label %bb.af

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ez = load i64, ptr %i.do, align 8, !alias.scope !1442, !noundef !9 ; 3 uses
  %i.fa = load i64, ptr %i.f, align 8, !range !10, !alias.scope !1442, !noundef !9
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #35
          to label %bb.ar unwind label %bb.af

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fc = load ptr, ptr %i.dn, align 8, !alias.scope !1442, !nonnull !9, !noundef !9
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez
  store i8 10, ptr %i.fd, align 1
  %i.fe = add i64 %i.ez, 1                        ; 2 uses
  store i64 %i.fe, ptr %i.do, align 8, !alias.scope !1442
  %i.ff = load ptr, ptr %i.dn, align 8, !nonnull !9, !noundef !9
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ff, i64 noundef %i.fe)
          to label %bb.as unwind label %bb.af

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f)
          to label %bb.at unwind label %bb.e

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

.sink.split.i.i.i:                                ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i, %bb.aa
  %.sroa.0.1.ph.i.i.i = phi i8 [ %.sroa.0.2.i.i.i, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i ], [ 1, %bb.aa ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB4_11get_or_initNCNvB1z_30is_windows_subsystem_for_linux0E0zE0B1B_.exit

bb.au:                                            ; preds = %bb.an
  unreachable

bb.av:                                            ; preds = %bb.af, %.body.i.i.i
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.6, %.lr.ph.i.i.i.i.7, %bb.u, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i, %bb.i, %bb.i, %bb.h
  %.sroa.0.2.i.i.i = phi i8 [ -1, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i.i ], [ 1, %bb.u ], [ -1, %.lr.ph.i.i.i.i ], [ -1, %bb.i ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %.lr.ph.i.i.i.i.7 ], [ -1, %.lr.ph.i.i.i.i.6 ], [ -1, %.lr.ph.i.i.i.i.5 ], [ -1, %.lr.ph.i.i.i.i.4 ], [ -1, %.lr.ph.i.i.i.i.3 ], [ -1, %.lr.ph.i.i.i.i.2 ], [ -1, %.lr.ph.i.i.i.i.1 ], [ -1, %bb.k ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.sink.split.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB4_11get_or_initNCNvB1z_30is_windows_subsystem_for_linux0E0zE0B1B_.exit: ; preds = %bb.b, %bb.c, %.sink.split.i.i.i
  %.sroa.0.1.i.i.i = phi i8 [ -1, %bb.c ], [ 2, %bb.b ], [ %.sroa.0.1.ph.i.i.i, %.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i8 %.sroa.0.1.i.i.i, ptr %i.n, align 1
  ret void

bb.ay:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1a_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss0_0E0zE0E0B3P_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !14, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1a_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB3S_6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0B3U_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1a_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB3U_5input6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0B3U_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.d = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtNtNtBc_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB2m_EE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.48.i = alloca [40 x i8], align 8         ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !alias.scope !1451 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload, align 8, !alias.scope !1451
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtNtNtB9_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB1B_EE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs8frGy5WneL6_4fish.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1452
  unreachable

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtNtNtB9_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB1B_EE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i.i, i64 40, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.5.sroa.0.0.copyload, align 8
  %.sroa.48.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCs8frGy5WneL6_4fish4proc10ProcStatusE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.b = load <2 x i32>, ptr %.sroa.0.0.copyload, align 4, !alias.scope !1459
  %i.c = load i32, ptr %.sroa.0.0.copyload, align 4, !range !25, !alias.scope !1459, !noundef !9
  store i32 2, ptr %.sroa.0.0.copyload, align 4, !alias.scope !1459
  %.not.i.i.i = icmp eq i32 %i.c, 2
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCs8frGy5WneL6_4fish4proc10ProcStatusE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0BZ_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1459
  unreachable

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCs8frGy5WneL6_4fish4proc10ProcStatusE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0BZ_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store <2 x i32> %i.b, ptr %.sroa.5.sroa.0.0.copyload, align 4
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1465)
  %i.b = load i32, ptr %.sroa.0.0.copyload, align 4, !alias.scope !1466, !noundef !9 ; 2 uses
  store i32 0, ptr %.sroa.0.0.copyload, align 4, !alias.scope !1466
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0BZ_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1466
  unreachable

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0BZ_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store i32 %i.b, ptr %.sroa.5.sroa.0.0.copyload, align 4
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1a_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB3f_6decode19InputEventQueuerExt15parse_xtversion0E0zE0E0B3h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 17 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.j, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.af, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %.val1.i = load i64, ptr %i.l, align 8, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1477
  %i.m = icmp sgt i64 %.val1.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.val1.i, 4
  br i1 %i.n, label %bb.c, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #40, !noalias !1477
  unreachable

.body19.i.i.i:                                    ; preds = %bb.z, %.body.i.i.i, %bb.d
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.o, %bb.d ], [ %i.bs, %bb.z ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #36
          to label %bb.ae unwind label %bb.ad, !noalias !1477

bb.d:                                             ; preds = %bb.aa
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.p = add nsw i64 %.val1.i, -4
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  call void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.p), !noalias !1477
  %i.r = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8, !noalias !1477
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB4_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB2t_6decode19InputEventQueuerExt15parse_xtversion0E0zE0B2v_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1477
  store i64 0, ptr %i.h, align 8, !noalias !1477
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !1477
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.t, align 8, !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1477
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24))
          to label %bb.h unwind label %bb.g, !noalias !1477

.body.i.i.i:                                      ; preds = %bb.u, %bb.n, %bb.g
  %.pn.i.i.i = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.u, %bb.g ], [ %i.bj, %bb.u ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #36
          to label %.body19.i.i.i unwind label %bb.ad, !noalias !1477

bb.g:                                             ; preds = %bb.x, %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1477
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1477, !nonnull !9, !noundef !9 ; 3 uses
  %i.x = load i64, ptr %i.g, align 8, !range !10, !noalias !1477, !noundef !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !1477, !noundef !9 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  store ptr %i.w, ptr %i.c, align 8, !noalias !1477
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.x, ptr %i.ac, align 8, !noalias !1477
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %i.ad, align 8, !noalias !1477
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !1477
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.i unwind label %bb.g, !noalias !1477

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1477
  %i.af = load i64, ptr %i.t, align 8, !alias.scope !1478, !noalias !1477, !noundef !9 ; 4 uses
  %i.ag = load i64, ptr %i.h, align 8, !range !10, !alias.scope !1478, !noalias !1477, !noundef !9
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %bb.k unwind label %bb.g, !noalias !1477

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !1478, !noalias !1477, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  store i8 58, ptr %i.aj, align 1, !noalias !1477
  %i.ak = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.t, align 8, !alias.scope !1478, !noalias !1477
  %i.al = load i64, ptr %i.h, align 8, !range !10, !alias.scope !1479, !noalias !1477, !noundef !9
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %bb.m unwind label %bb.g, !noalias !1477

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = load ptr, ptr %i.s, align 8, !alias.scope !1479, !noalias !1477, !nonnull !9, !noundef !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  store i8 32, ptr %i.ao, align 1, !noalias !1477
  %i.ap = add i64 %i.af, 2
  store i64 %i.ap, ptr %i.t, align 8, !alias.scope !1479, !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1477
  store ptr %i.i, ptr %i.d, align 8, !noalias !1477
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1U_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1477
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @85, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.g, !noalias !1477

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1477
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1477, !nonnull !9, !noundef !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !1477, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1477
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.at, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %bb.n, !noalias !1477

bb.n:                                             ; preds = %bb.r, %bb.p, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #36
          to label %.body.i.i.i unwind label %bb.ad, !noalias !1477

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i
  %i.av = load i64, ptr %i.b, align 8, !range !20, !noalias !1477, !noundef !9
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.ax, align 8, !range !22, !noalias !1477, !noundef !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noalias !1477
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #39
          to label %bb.ac unwind label %bb.n, !noalias !1477

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1477, !nonnull !9, !noundef !9 ; 4 uses
  %i.bd = load i64, ptr %i.ax, align 8, !range !10, !noalias !1477, !noundef !9 ; 2 uses
  %i.be = icmp ule i64 %i.at, %i.bd
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1477
  %.not8.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not8.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1477
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  store ptr %i.bc, ptr %i.a, align 8, !noalias !1477
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bd, ptr %i.bg, align 8, !noalias !1477
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !noalias !1477
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bf, ptr %i.bi, align 8, !noalias !1477
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.t unwind label %bb.n, !noalias !1477

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %i.ar, i64 %i.at, i1 false), !noalias !1477
  br label %bb.r

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1477
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.u, !noalias !1477

bb.u:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.v, !noalias !1477

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1477
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.g, !noalias !1477

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1477
  %i.bl = load i64, ptr %i.t, align 8, !alias.scope !1480, !noalias !1477, !noundef !9 ; 3 uses
  %i.bm = load i64, ptr %i.h, align 8, !range !10, !alias.scope !1480, !noalias !1477, !noundef !9
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %bb.x unwind label %bb.g, !noalias !1477

bb.x:                                             ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.bo = load ptr, ptr %i.s, align 8, !alias.scope !1480, !noalias !1477, !nonnull !9, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  store i8 10, ptr %i.bp, align 1, !noalias !1477
  %i.bq = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bq, ptr %i.t, align 8, !alias.scope !1480, !noalias !1477
  %i.br = load ptr, ptr %i.s, align 8, !noalias !1477, !nonnull !9, !noundef !9
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bq)
          to label %bb.y unwind label %bb.g, !noalias !1477

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.z, !noalias !1477

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body19.i.i.i unwind label %bb.ab, !noalias !1477

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.d, !noalias !1477

bb.ab:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1477
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1477
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB4_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB2t_6decode19InputEventQueuerExt15parse_xtversion0E0zE0B2v_.exit

bb.ac:                                            ; preds = %bb.p
  unreachable

bb.ad:                                            ; preds = %bb.n, %.body.i.i.i, %.body19.i.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1477
  unreachable

bb.ae:                                            ; preds = %.body19.i.i.i
  resume { ptr, i32 } %.pn.pn.i.i.i

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB4_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB2t_6decode19InputEventQueuerExt15parse_xtversion0E0zE0B2v_.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1477
  ret void

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1a_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB3h_5input6decode19InputEventQueuerExt15parse_xtversion0E0zE0E0B3h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 17 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.j, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.j, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.af, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %.val1.i = load i64, ptr %i.l, align 8, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1491
  %i.m = icmp sgt i64 %.val1.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.val1.i, 4
  br i1 %i.n, label %bb.c, label %bb.e, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 4, i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #40, !noalias !1491
  unreachable

.body19.i.i.i:                                    ; preds = %bb.z, %.body.i.i.i, %bb.d
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.o, %bb.d ], [ %i.bs, %bb.z ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #36
          to label %bb.ae unwind label %bb.ad, !noalias !1491

bb.d:                                             ; preds = %bb.aa
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.p = add nsw i64 %.val1.i, -4
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  call void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.p), !noalias !1491
  %i.r = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8, !noalias !1491
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB4_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB2v_5input6decode19InputEventQueuerExt15parse_xtversion0E0zE0B2v_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1491
  store i64 0, ptr %i.h, align 8, !noalias !1491
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !1491
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  store i64 0, ptr %i.t, align 8, !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1491
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24))
          to label %bb.h unwind label %bb.g, !noalias !1491

.body.i.i.i:                                      ; preds = %bb.u, %bb.n, %bb.g
  %.pn.i.i.i = phi { ptr, i32 } [ %i.au, %bb.n ], [ %i.u, %bb.g ], [ %i.bj, %bb.u ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #36
          to label %.body19.i.i.i unwind label %bb.ad, !noalias !1491

bb.g:                                             ; preds = %bb.x, %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1491
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1491, !nonnull !9, !noundef !9 ; 3 uses
  %i.x = load i64, ptr %i.g, align 8, !range !10, !noalias !1491, !noundef !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !1491, !noundef !9 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  store ptr %i.w, ptr %i.c, align 8, !noalias !1491
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.x, ptr %i.ac, align 8, !noalias !1491
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %i.ad, align 8, !noalias !1491
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !1491
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.i unwind label %bb.g, !noalias !1491

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1491
  %i.af = load i64, ptr %i.t, align 8, !alias.scope !1492, !noalias !1491, !noundef !9 ; 4 uses
  %i.ag = load i64, ptr %i.h, align 8, !range !10, !alias.scope !1492, !noalias !1491, !noundef !9
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %bb.k unwind label %bb.g, !noalias !1491

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !1492, !noalias !1491, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  store i8 58, ptr %i.aj, align 1, !noalias !1491
  %i.ak = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.t, align 8, !alias.scope !1492, !noalias !1491
  %i.al = load i64, ptr %i.h, align 8, !range !10, !alias.scope !1493, !noalias !1491, !noundef !9
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %bb.m unwind label %bb.g, !noalias !1491

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = load ptr, ptr %i.s, align 8, !alias.scope !1493, !noalias !1491, !nonnull !9, !noundef !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  store i8 32, ptr %i.ao, align 1, !noalias !1491
  %i.ap = add i64 %i.af, 2
  store i64 %i.ap, ptr %i.t, align 8, !alias.scope !1493, !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1491
  store ptr %i.i, ptr %i.d, align 8, !noalias !1491
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1U_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1491
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @85, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.g, !noalias !1491

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1491
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1491, !nonnull !9, !noundef !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !1491, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1491
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.at, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %bb.n, !noalias !1491

bb.n:                                             ; preds = %bb.r, %bb.p, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #36
          to label %.body.i.i.i unwind label %bb.ad, !noalias !1491

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit.i.i.i
  %i.av = load i64, ptr %i.b, align 8, !range !20, !noalias !1491, !noundef !9
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ay = load i64, ptr %i.ax, align 8, !range !22, !noalias !1491, !noundef !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noalias !1491
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #39
          to label %bb.ac unwind label %bb.n, !noalias !1491

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1491, !nonnull !9, !noundef !9 ; 4 uses
  %i.bd = load i64, ptr %i.ax, align 8, !range !10, !noalias !1491, !noundef !9 ; 2 uses
  %i.be = icmp ule i64 %i.at, %i.bd
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1491
  %.not8.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not8.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1491
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  store ptr %i.bc, ptr %i.a, align 8, !noalias !1491
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bd, ptr %i.bg, align 8, !noalias !1491
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !noalias !1491
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bf, ptr %i.bi, align 8, !noalias !1491
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.t unwind label %bb.n, !noalias !1491

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %i.ar, i64 %i.at, i1 false), !noalias !1491
  br label %bb.r

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1491
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.u, !noalias !1491

bb.u:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.v, !noalias !1491

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1491
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.g, !noalias !1491

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1491
  %i.bl = load i64, ptr %i.t, align 8, !alias.scope !1494, !noalias !1491, !noundef !9 ; 3 uses
  %i.bm = load i64, ptr %i.h, align 8, !range !10, !alias.scope !1494, !noalias !1491, !noundef !9
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %bb.x unwind label %bb.g, !noalias !1491

bb.x:                                             ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.bo = load ptr, ptr %i.s, align 8, !alias.scope !1494, !noalias !1491, !nonnull !9, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  store i8 10, ptr %i.bp, align 1, !noalias !1491
  %i.bq = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bq, ptr %i.t, align 8, !alias.scope !1494, !noalias !1491
  %i.br = load ptr, ptr %i.s, align 8, !noalias !1491, !nonnull !9, !noundef !9
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bq)
          to label %bb.y unwind label %bb.g, !noalias !1491

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aa unwind label %bb.z, !noalias !1491

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body19.i.i.i unwind label %bb.ab, !noalias !1491

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.d, !noalias !1491

bb.ab:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1491
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1491
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB4_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB2v_5input6decode19InputEventQueuerExt15parse_xtversion0E0zE0B2v_.exit

bb.ac:                                            ; preds = %bb.p
  unreachable

bb.ad:                                            ; preds = %bb.n, %.body.i.i.i, %.body19.i.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1491
  unreachable

bb.ae:                                            ; preds = %.body19.i.i.i
  resume { ptr, i32 } %.pn.pn.i.i.i

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB4_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB2v_5input6decode19InputEventQueuerExt15parse_xtversion0E0zE0B2v_.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1491
  ret void

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1a_11get_or_initNvMs1G_B1I_B1G_3newE0zE0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !14, !noundef !9 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0B1M_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.b = load i64, ptr %.sroa.0.0.copyload, align 8, !range !20, !alias.scope !1501, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1501
  store i64 0, ptr %.sroa.0.0.copyload, align 8, !alias.scope !1501
  %i.e = trunc nuw i64 %i.b to i1
  br i1 %i.e, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0B11_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1501
  unreachable

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0B11_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store i64 %i.d, ptr %.sroa.5.sroa.0.0.copyload, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu7termiosE10initializeNCINvB1a_11get_or_initNCNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_init0E0zE0E0B3p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noalias !1508, !noundef !9
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu7termiosE10initializeNCINvB4_11get_or_initNCNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_init0E0zE0B2D_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #40, !noalias !1508
  unreachable

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu7termiosE10initializeNCINvB4_11get_or_initNCNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_init0E0zE0B2D_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull readonly align 8 dereferenceable(60) %2, i64 60, i1 false)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0Cs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.b = load ptr, ptr %.sroa.0.0.copyload, align 8, !alias.scope !1515, !align !17, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1515
  store ptr null, ptr %.sroa.0.0.copyload, align 8, !alias.scope !1515
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs8frGy5WneL6_4fish.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1515
  unreachable

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  store i64 %i.d, ptr %i.e, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockbE10initializeNCINvB1a_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocols0E0zE0E0B2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockbE10initializeNCINvB1a_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss_0E0zE0E0B2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockbE10initializeNCINvB1a_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff35maybe_set_kitty_keyboard_capability0E0zE0E0B2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 1
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockbE10initializeNCINvB1a_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff38maybe_set_scroll_content_up_capability0E0zE0E0B2m_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 17 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !9 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.v, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8
  %.not.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockbE10initializeNCINvB4_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff38maybe_set_scroll_content_up_capability0E0zE0B1A_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 6 uses
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24))
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #36
          to label %common.resume.i.i.i unwind label %bb.u

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.n = load i64, ptr %i.d, align 8, !range !10, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !9 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store ptr %i.m, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.n, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = load i64, ptr %i.j, align 8, !alias.scope !1522, !noundef !9 ; 4 uses
  %i.w = load i64, ptr %i.e, align 8, !range !10, !alias.scope !1522, !noundef !9
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #35
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = load ptr, ptr %i.i, align 8, !alias.scope !1522, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  store i8 58, ptr %i.z, align 1
  %i.aa = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.j, align 8, !alias.scope !1522
  %i.ab = load i64, ptr %i.e, align 8, !range !10, !alias.scope !1523, !noundef !9
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #35
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = load ptr, ptr %i.i, align 8, !alias.scope !1523, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  store i8 32, ptr %i.ae, align 1
  %i.af = add i64 %i.v, 2
  store i64 %i.af, ptr %i.j, align 8, !alias.scope !1523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 22, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %i.b, align 8, !range !20, !noundef !9
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.ai, align 8, !range !22, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_3
begin_hunk_4_@_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set5erase0B7_:bb.a
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit57: ; preds = %.thread89
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %.thread90

bb.bl:                                            ; preds = %bb.j, %.body
  %.sroa.10.065 = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %.sroa.022.066 = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  br i1 %.sroa.015.2.lpad-body, label %.thread92, label %bb.ap

bb.bm:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fi = atomicrmw add ptr %i.bo, i64 -1 release, align 8, !noalias !1649
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %bb.bn, label %.thread92

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #35
          to label %.thread92 unwind label %bb.aj

.thread92:                                        ; preds = %bb.bm, %bb.bn, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bl
  %.sroa.10.06997 = phi i32 [ %.sroa.10.065, %bb.bl ], [ %.sroa.10.0, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.10.0, %bb.bn ], [ %.sroa.10.0, %bb.bm ]
  %.sroa.022.07096 = phi ptr [ %.sroa.022.066, %bb.bl ], [ %.sroa.022.0, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.022.0, %bb.bn ], [ %.sroa.022.0, %bb.bm ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #36
          to label %bb.ap unwind label %bb.aj

.loopexit106:                                     ; preds = %.thread90, %bb.a, %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit
  %.sroa.5.2 = phi i32 [ 1, %bb.d ], [ %.sroa.5.0250, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit ], [ undef, %bb.a ], [ undef, %.thread90 ]
  %.sroa.08.2 = phi i32 [ 1, %bb.d ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit ], [ 0, %bb.a ], [ 0, %.thread90 ]
  %i.fk = insertvalue { i32, i32 } poison, i32 %.sroa.08.2, 0
  %i.fl = insertvalue { i32, i32 } %i.fk, i32 %.sroa.5.2, 1
  ret { i32, i32 } %i.fl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtB2s_6marker4SendNtB3e_4SyncEL_EE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtB2o_6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1658, !noalias !1659 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1658, !noalias !1659 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1658, !noalias !1659
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !1662, !noalias !1663, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1662, !noalias !1663 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !1662, !noalias !1663
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtB2q_6marker4SendNtB3c_4SyncEL_EE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtB2m_6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1664
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1663
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtB2q_6marker4SendNtB3c_4SyncEL_EE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtB2m_6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d), "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !1663
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !1663
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB1f_11get_or_initNCNvB2p_30is_windows_subsystem_for_linux0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !1667
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs8frGy5WneL6_4fish6common3WSLEE10initializeNCINvB1a_11get_or_initNCNvB2k_30is_windows_subsystem_for_linux0E0zE0E0B2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1f_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss0_0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3U_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1672, !noalias !1673, !align !14, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1672, !noalias !1673
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss0_0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3S_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1674
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss0_0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3S_.exit: ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8, !noalias !1674
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1f_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB3X_6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3Z_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1679, !noalias !1680 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1679, !noalias !1680 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1679, !noalias !1680
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1d_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB3V_6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3X_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1681
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1d_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB3V_6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3X_.exit: ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !noalias !1681, !nonnull !9, !noundef !9
  %i.d = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !noalias !1681, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1681
  call void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i), !noalias !1681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1681
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1f_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB3Z_5input6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0INtNtNtB1Q_3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3Z_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1686, !noalias !1687 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1686, !noalias !1687 ; 2 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1686, !noalias !1687
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1d_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB3X_5input6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3X_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1688
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB1d_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB3X_5input6decode19InputEventQueuerExt9parse_dcss_0E0zE0E0INtNtNtB1O_3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3X_.exit: ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !noalias !1688, !nonnull !9, !noundef !9
  %i.d = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !noalias !1688, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1688
  call void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i), !noalias !1688
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1688
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockINtNtNtNtBh_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB2r_EE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.48.i.i.i = alloca [40 x i8], align 8     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1699, !noalias !1700 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1699, !noalias !1700 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1699, !noalias !1700
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !1703, !noalias !1704 ; 2 uses
  store ptr null, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !1703, !noalias !1704
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtNtBf_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB2p_EE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1705
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1704
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtNtNtBf_11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB2p_EE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !1704
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !1704
  %.sroa.48.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i, i64 40, i1 false), !noalias !1704
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCs8frGy5WneL6_4fish4proc10ProcStatusE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1P_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1714, !noalias !1715 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1714, !noalias !1715 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1714, !noalias !1715
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.b = load <2 x i32>, ptr %.sroa.0.0.copyload.i.i, align 4, !alias.scope !1718, !noalias !1719
  %i.c = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !range !25, !alias.scope !1718, !noalias !1719, !noundef !9
  store i32 2, ptr %.sroa.0.0.copyload.i.i, align 4, !alias.scope !1718, !noalias !1719
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 2
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs8frGy5WneL6_4fish4proc10ProcStatusE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1720
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1719
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs8frGy5WneL6_4fish4proc10ProcStatusE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store <2 x i32> %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 4, !noalias !1719
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1P_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1729, !noalias !1730 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1729, !noalias !1730 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1729, !noalias !1730
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  %i.b = load i32, ptr %.sroa.0.0.copyload.i.i, align 4, !alias.scope !1733, !noalias !1734, !noundef !9 ; 2 uses
  store i32 0, ptr %.sroa.0.0.copyload.i.i, align 4, !alias.scope !1733, !noalias !1734
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1735
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1734
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCs8frGy5WneL6_4fish4proc3PidE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i32 %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 4, !noalias !1734
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1f_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB3k_6decode19InputEventQueuerExt15parse_xtversion0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3m_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !1738
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1a_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtNtB3f_6decode19InputEventQueuerExt15parse_xtversion0E0zE0E0B3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1f_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB3m_5input6decode19InputEventQueuerExt15parse_xtversion0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3m_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !1741
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1a_11get_or_initNCNvYNtNtNtCs8frGy5WneL6_4fish6reader6reader6ReaderNtNtNtB3h_5input6decode19InputEventQueuerExt15parse_xtversion0E0zE0E0B3h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1f_11get_or_initNvMs1G_B1N_B1L_3newE0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1746, !noalias !1747, !align !14, !noundef !9 ; 4 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1746, !noalias !1747
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1d_11get_or_initNvMs1G_B1L_B1J_3newE0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1748
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB1d_11get_or_initNvMs1G_B1L_B1J_3newE0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !1748
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !1748
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !1748
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1R_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1757, !noalias !1758 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1757, !noalias !1758 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1757, !noalias !1758
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.b = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !range !20, !alias.scope !1761, !noalias !1762, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1761, !noalias !1762
  store i64 0, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !1761, !noalias !1762
  %i.e = trunc nuw i64 %i.b to i1
  br i1 %i.e, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1P_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1763
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1762
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1P_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i64 %i.d, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !1762
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu7termiosE10initializeNCINvB1f_11get_or_initNCNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_init0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB3u_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1774, !noalias !1775 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1774, !noalias !1775 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1774, !noalias !1775
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noalias !1776, !noundef !9
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu7termiosE10initializeNCINvB1d_11get_or_initNCNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_init0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3s_.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #40, !noalias !1776
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1777
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu7termiosE10initializeNCINvB1d_11get_or_initNCNvNtNtCs8frGy5WneL6_4fish6reader6reader11reader_init0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3s_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.sroa.0.0.copyload.i.i, ptr noundef nonnull readonly align 8 dereferenceable(60) %2, i64 60, i1 false), !noalias !1777
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1786, !noalias !1787 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1786, !noalias !1787 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1786, !noalias !1787
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  %i.b = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !1790, !noalias !1791, !align !17, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1790, !noalias !1791
  store ptr null, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !1790, !noalias !1791
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #40, !noalias !1792
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1791
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store ptr %i.b, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !1791
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8
  store i64 %i.d, ptr %i.e, align 8, !noalias !1791
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockbE10initializeNCINvB1f_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocols0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1797, !noalias !1798, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1797, !noalias !1798
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocols0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1799
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocols0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit: ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !noalias !1799
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockbE10initializeNCINvB1f_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss_0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1804, !noalias !1805, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1804, !noalias !1805
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss_0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1806
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss_0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit: ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !noalias !1806
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockbE10initializeNCINvB1f_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff35maybe_set_kitty_keyboard_capability0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1811, !noalias !1812, !noundef !9 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1811, !noalias !1812
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff35maybe_set_kitty_keyboard_capability0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1813
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockbE10initializeNCINvB1d_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff35maybe_set_kitty_keyboard_capability0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2p_.exit: ; preds = %bb.a
  store i8 1, ptr %i.b, align 1, !noalias !1813
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockbE10initializeNCINvB1f_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff38maybe_set_scroll_content_up_capability0E0zE0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !1816
  call void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockbE10initializeNCINvB1a_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff38maybe_set_scroll_content_up_capability0E0zE0E0B2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtBf_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2h_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1822)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1822, !noalias !1823, !align !14, !noundef !9 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1822, !noalias !1823
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !16, !noalias !1824, !noundef !9
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2f_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #40, !noalias !1824
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1824
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2f_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !1824, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1824
  call void %i.f(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a), !noalias !1824, !inline_history !1821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !1824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1824
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1Q_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1830, !noalias !1831, !align !14, !noundef !9 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1830, !noalias !1831
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !16, !noalias !1832, !noundef !9
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #40, !noalias !1832
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40, !noalias !1832
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1O_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !1832, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1832
  call void %i.f(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.a), !noalias !1832, !inline_history !1829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !1832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1832
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockRSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1838, !noalias !1839, !align !14, !noundef !9 ; 4 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !1838, !noalias !1839
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.c, align 4, !range !16, !noalias !1840, !noundef !9
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockRSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #40, !noalias !1840
  unreachable

bb.d:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtCs8frGy5WneL6_4fish8terminal12ColorSupportE3newBT_:bb.a
  store ptr @141, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.val1, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish3env3var11EnvVarFlagsE3newBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i8, ptr %1, align 1, !noundef !9  ; 2 uses
  store ptr @145, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.val1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.val1, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeE3newBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val6 = load i16, ptr %1, align 2, !noundef !9 ; 2 uses
  store ptr @152, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.val6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %.val6, ptr %i.d, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish7history7history11SearchFlagsE3newBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i32, ptr %1, align 4, !noundef !9 ; 2 uses
  store ptr @155, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val1, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish8builtins4path9PermFlagsE3newBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i32, ptr %1, align 4, !noundef !9 ; 2 uses
  store ptr @163, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val1, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish8builtins4path9TypeFlagsE3newBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i32, ptr %1, align 4, !noundef !9 ; 2 uses
  store ptr @171, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.val1, ptr %i.d, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB5_16SetLanguageLints11display_all(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7 = load i64, ptr %i.i, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2048
  store i64 0, ptr %i.d, align 8, !noalias !2048
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2048
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2048
  %i.j = icmp ult i64 %.val7, 576460752303423488
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.val7, 0
  br i1 %i.k, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2048
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @172, ptr %i.l, align 8, !noalias !2048
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 38, ptr %i.m, align 8, !noalias !2048
  store i64 -1, ptr %i.c, align 8, !noalias !2048
  %i.n = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.c, !noalias !2048 ; 2 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body.i unwind label %bb.n, !noalias !2048

bb.d:                                             ; preds = %bb.b
  %i.p = extractvalue { ptr, i64 } %i.n, 0
  %i.q = extractvalue { ptr, i64 } %i.n, 1        ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 4611686018427387904) %i.q)
          to label %.noexc.i unwind label %bb.c, !noalias !2048

.noexc.i:                                         ; preds = %bb.d
  %i.r = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2049, !noalias !2048, !noundef !9 ; 3 uses
  %i.s = icmp ult i64 %i.r, 2305843009213693952
  call void @llvm.assume(i1 %i.s)
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2049, !noalias !2048, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = shl nuw nsw i64 %i.q, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull readonly align 4 %i.p, i64 %i.v, i1 false), !noalias !2048
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2049, !noalias !2048
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i
  %i.w = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.r, %.noexc.i ]
  %i.x = add i64 %i.w, %i.q
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2049, !noalias !2048
  %i.y = load i64, ptr %i.c, align 8, !range !12, !alias.scope !2050, !noalias !2048, !noundef !9
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.h, !noalias !2048

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.i, !noalias !2048

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !2048
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i unwind label %bb.j, !noalias !2048

.body.i:                                          ; preds = %bb.j, %bb.h, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.ac, %bb.j ], [ %i.aa, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #36
          to label %.body unwind label %bb.n, !noalias !2048

bb.j:                                             ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2048
  invoke fastcc void @_RINvNtNtCs8frGy5WneL6_4fish12localization8settings27append_space_separated_listRNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs1xwejQucwHj_5alloc3vec3VecB1g_EEB6_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr nonnull readonly %.val6, i64 %.val7)
          to label %bb.k unwind label %bb.j, !noalias !2048

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i
  %i.ad = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2051, !noalias !2048, !noundef !9 ; 3 uses
  %i.ae = load i64, ptr %i.d, align 8, !range !10, !alias.scope !2051, !noalias !2048, !noundef !9
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #35
          to label %bb.m unwind label %bb.j, !noalias !2048

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2051, !noalias !2048, !nonnull !9, !noundef !9
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ad
  store i32 10, ptr %i.ah, align 4, !noalias !2048
  %i.ai = add i64 %i.ad, 1
  store i64 %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2051, !noalias !2048
  br label %bb.p

bb.n:                                             ; preds = %.body.i, %bb.c
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !2048
  unreachable

.body:                                            ; preds = %bb.am, %.body.i15, %bb.t, %.body.i, %bb.o, %bb.ak, %bb.r
  %.pn = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.ch, %bb.ak ], [ %.pn.i, %.body.i ], [ %.pn.i16, %.body.i15 ], [ %i.av, %bb.t ], [ %i.ak, %bb.o ], [ %i.ck, %bb.am ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #36
          to label %bb.ap unwind label %bb.ao

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i29, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.m, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2048
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val4 = load ptr, ptr %i.al, align 8, !nonnull !9, !noundef !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val5 = load i64, ptr %i.am, align 8, !noundef !9 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef range(i64 0, 4611686018427387904) %.val5)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.p
  %i.an = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2052, !noundef !9 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 2305843009213693952
  call void @llvm.assume(i1 %i.ao)
  %.not.i.i = icmp eq i64 %.val5, 0
  br i1 %.not.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.noexc
  %i.ap = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2052, !nonnull !9, !noundef !9
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  %i.ar = shl nuw nsw i64 %.val5, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull readonly align 4 %.val4, i64 %i.ar, i1 false)
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2052
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #36
          to label %.body unwind label %bb.ao

bb.s:                                             ; preds = %bb.q, %.noexc
  %i.at = phi i64 [ %.pre.i.i, %bb.q ], [ %i.an, %.noexc ]
  %i.au = add i64 %i.at, %.val5
  store i64 %i.au, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2052
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8 = load ptr, ptr %i.ax, align 8           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val9 = load i64, ptr %i.ay, align 8, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2053
  store i64 0, ptr %i.b, align 8, !noalias !2053
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !2053
  %.sroa.5.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i14, align 8, !noalias !2053
  %i.az = icmp ult i64 %.val9, 576460752303423488
  call void @llvm.assume(i1 %i.az)
  %i.ba = icmp eq i64 %.val9, 0
  br i1 %i.ba, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2053
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @173, ptr %i.bb, align 8, !noalias !2053
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 46, ptr %i.bc, align 8, !noalias !2053
  store i64 -1, ptr %i.a, align 8, !noalias !2053
  %i.bd = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.x unwind label %bb.w, !noalias !2053 ; 2 uses

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #36
          to label %.body.i15 unwind label %bb.ah, !noalias !2053

bb.x:                                             ; preds = %bb.v
  %i.bf = extractvalue { ptr, i64 } %i.bd, 0
  %i.bg = extractvalue { ptr, i64 } %i.bd, 1      ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 4611686018427387904) %i.bg)
          to label %.noexc.i17 unwind label %bb.w, !noalias !2053

.noexc.i17:                                       ; preds = %bb.x
  %i.bh = load i64, ptr %.sroa.5.0..sroa_idx.i14, align 8, !alias.scope !2054, !noalias !2053, !noundef !9 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 2305843009213693952
  call void @llvm.assume(i1 %i.bi)
  %.not.i.i.i18 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i18, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc.i17
  %i.bj = load ptr, ptr %.sroa.4.0..sroa_idx.i13, align 8, !alias.scope !2054, !noalias !2053, !nonnull !9, !noundef !9
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = shl nuw nsw i64 %i.bg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull readonly align 4 %i.bf, i64 %i.bl, i1 false), !noalias !2053
  %.pre.i.i.i19 = load i64, ptr %.sroa.5.0..sroa_idx.i14, align 8, !alias.scope !2054, !noalias !2053
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc.i17
  %i.bm = phi i64 [ %.pre.i.i.i19, %bb.y ], [ %i.bh, %.noexc.i17 ]
  %i.bn = add i64 %i.bm, %i.bg
  store i64 %i.bn, ptr %.sroa.5.0..sroa_idx.i14, align 8, !alias.scope !2054, !noalias !2053
  %i.bo = load i64, ptr %i.a, align 8, !range !12, !alias.scope !2055, !noalias !2053, !noundef !9
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i21, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i20 unwind label %bb.ab, !noalias !2053

bb.ab:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i15 unwind label %bb.ac, !noalias !2053

bb.ac:                                            ; preds = %bb.ab
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !2053
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i20: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i21 unwind label %bb.ad, !noalias !2053

.body.i15:                                        ; preds = %bb.ad, %bb.ab, %bb.w
  %.pn.i16 = phi { ptr, i32 } [ %i.be, %bb.w ], [ %i.bs, %bb.ad ], [ %i.bq, %bb.ab ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %.body unwind label %bb.ah, !noalias !2053

bb.ad:                                            ; preds = %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i21, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i20
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i15

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i21: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i20, %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2053
  invoke fastcc void @_RINvNtNtCs8frGy5WneL6_4fish12localization8settings27append_space_separated_listRNtCslSwhfOFuxKz_17fish_localization8LanguageRINtNtCs1xwejQucwHj_5alloc3vec3VecB1g_EEB6_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr nonnull readonly %.val8, i64 %.val9)
          to label %bb.ae unwind label %bb.ad, !noalias !2053

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i21
  %i.bt = load i64, ptr %.sroa.5.0..sroa_idx.i14, align 8, !alias.scope !2056, !noalias !2053, !noundef !9 ; 3 uses
  %i.bu = load i64, ptr %i.b, align 8, !range !10, !alias.scope !2056, !noalias !2053, !noundef !9
  %i.bv = icmp eq i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #35
          to label %bb.ag unwind label %bb.ad, !noalias !2053

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bw = load ptr, ptr %.sroa.4.0..sroa_idx.i13, align 8, !alias.scope !2056, !noalias !2053, !nonnull !9, !noundef !9
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bt
  store i32 10, ptr %i.bx, align 4, !noalias !2053
  %i.by = add i64 %i.bt, 1
  store i64 %i.by, ptr %.sroa.5.0..sroa_idx.i14, align 8, !alias.scope !2056, !noalias !2053
  br label %bb.ai

bb.ah:                                            ; preds = %.body.i15, %bb.w
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !2053
  unreachable

bb.ai:                                            ; preds = %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2053
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val = load ptr, ptr %i.ca, align 8, !nonnull !9, !noundef !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val3 = load i64, ptr %i.cb, align 8, !noundef !9 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef range(i64 0, 4611686018427387904) %.val3)
          to label %.noexc26 unwind label %bb.ak

.noexc26:                                         ; preds = %bb.ai
  %i.cc = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2057, !noundef !9 ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 2305843009213693952
  call void @llvm.assume(i1 %i.cd)
  %.not.i.i24 = icmp eq i64 %.val3, 0
  br i1 %.not.i.i24, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.noexc26
  %i.ce = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2057, !nonnull !9, !noundef !9
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cc
  %i.cg = shl nuw nsw i64 %.val3, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr nonnull readonly align 4 %.val, i64 %i.cg, i1 false)
  %.pre.i.i25 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2057
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #36
          to label %.body unwind label %bb.ao

bb.al:                                            ; preds = %bb.aj, %.noexc26
  %i.ci = phi i64 [ %.pre.i.i25, %bb.aj ], [ %i.cc, %.noexc26 ]
  %i.cj = add i64 %i.ci, %.val3
  store i64 %i.cj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2057
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i29 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i29: ; preds = %bb.al
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33 unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit33: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ao:                                            ; preds = %bb.ak, %bb.r, %.body
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ap:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB5_17LocalizationState15update_from_env(ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [96 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = load i8, ptr %0, align 1, !range !27, !noundef !9 ; 2 uses
  %i.m = icmp ne i8 %i.l, 4
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i8 %i.l, 6
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.q = load i64, ptr %i.p, align 8, !range !12, !noundef !9
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.n, label %bb.l

bb.c:                                             ; preds = %bb.p, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !range !12, !alias.scope !2089, !noundef !9
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEEB14_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEBI_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEBI_.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEEB14_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEBI_.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.u, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB12_6string6StringEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #36
          to label %common.resume unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEEB14_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEBI_.exit.i.i, %bb.c
  %i.x = load i64, ptr %1, align 8, !range !12, !alias.scope !2090, !noundef !9
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization8settings21LocalizationVariablesEBH_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEEB14_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.bj, %bb.bk, %bb.bh, %.body.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.eq, %bb.bh ], [ %eh.lpad-body.i, %.body.i ], [ %i.z, %bb.i ], [ %.pn, %bb.bk ], [ %.pn, %bb.bj ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization8settings21LocalizationVariablesEBH_.exit

bb.k:                                             ; preds = %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2091
  store i32 67, ptr %i.g, align 4, !noalias !2091
  %i.ag = invoke noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2091
  br i1 %i.ag, label %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.ah = invoke noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 5)
          to label %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit unwind label %bb.o

bb.n:                                             ; preds = %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit, %bb.b
  %i.ai = load i64, ptr %1, align 8, !range !12, !noundef !9 ; 2 uses
  %.not10 = icmp eq i64 %i.ai, -1                 ; 5 uses
  br i1 %.not10, label %bb.r, label %bb.q

.body34:                                          ; preds = %bb.bd, %bb.o, %.body, %bb.ae
  %.sroa.05.0 = phi i1 [ true, %bb.ae ], [ %.not10, %.body ], [ %.sroa.05.1, %bb.o ], [ %.not10, %bb.bd ]
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %eh.lpad-body, %.body ], [ %i.aj, %bb.o ], [ %i.em, %bb.bd ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEEB14_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #36
          to label %bb.bj unwind label %bb.af

bb.o:                                             ; preds = %bb.be, %bb.m, %bb.l, %bb.z, %bb.x, %bb.s, %bb.p, %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit.thread
  %.sroa.05.1 = phi i1 [ true, %bb.p ], [ true, %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit.thread ], [ %.not10, %bb.be ], [ %.not10, %bb.s ], [ true, %bb.z ], [ true, %bb.x ], [ true, %bb.m ], [ true, %bb.l ]
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit: ; preds = %bb.m
  br i1 %i.ah, label %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit.thread, label %bb.n

_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit.thread: ; preds = %.noexc, %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit
  %i.ak = load i8, ptr %i.o, align 8, !range !28, !noundef !9
  store i8 %i.ak, ptr %0, align 1
  invoke void @_RNvCs476pBYQK2Ku_11fish_fluent23set_language_precedence(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.p unwind label %bb.o

bb.p:                                             ; preds = %_RNvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB7_17LocalizationState15update_from_env11is_c_locale.exit.thread
  invoke void @_RNvCsaglNHct1YhZ_12fish_gettext23set_language_precedence(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.c unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization8settings21LocalizationVariablesEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEBI_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs8frGy5WneL6_4fish12localization8settings14LocaleVariableNtNtCs1xwejQucwHj_5alloc6string6StringEEEB14_.exit.i
  ret void

bb.q:                                             ; preds = %bb.n
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.al = load i64, ptr %i.p, align 8, !range !12, !noundef !9
  %.not11 = icmp eq i64 %i.al, -1
  br i1 %.not11, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, %bb.q
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.q ], [ 1, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ 0, %bb.r ] ; 2 uses
  %.sroa.4.0 = phi ptr [ %.sroa.4.0.copyload, %bb.q ], [ %i.cx, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ inttoptr (i64 8 to ptr), %bb.r ] ; 4 uses
  %.sroa.02.0 = phi i64 [ %i.ai, %bb.q ], [ 1, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ 0, %bb.r ]
  %.sroa.0.0 = phi i8 [ 5, %bb.q ], [ %i.cw, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ 3, %bb.r ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.am = icmp ult i64 %.sroa.7.0, 384307168202282326
  call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0, i64 %.sroa.7.0
  store ptr %.sroa.4.0, ptr %i.i, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.4.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.02.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.an, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %i.ao, align 8
  invoke void @_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_while9TakeWhileINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB33_17LocalizationState15update_from_envs0_0EB2z_EB37_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.ah unwind label %bb.o

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noundef !9 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i, %bb.t
  %i.au = phi i64 [ %i.ck, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.av = phi ptr [ %i.cg, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i ], [ %i.aq, %bb.t ] ; 7 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = icmp eq ptr %i.av, %i.at
  br i1 %i.ax, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  %i.az = load i8, ptr %i.av, align 1, !alias.scope !2092, !noalias !2093, !noundef !9 ; 5 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %bb.w, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i: ; preds = %bb.v
  %i.bb = and i8 %i.az, 31
  %i.bc = zext nneg i8 %i.bb to i32               ; 3 uses
  %i.bd = icmp ne ptr %i.ay, %i.at
  call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 2 ; 3 uses
  %i.bf = load i8, ptr %i.ay, align 1, !alias.scope !2092, !noalias !2093, !noundef !9
  %i.bg = shl nuw nsw i32 %i.bc, 6
  %i.bh = and i8 %i.bf, 63
  %i.bi = zext nneg i8 %i.bh to i32               ; 2 uses
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = icmp samesign ugt i8 %i.az, -33
  br i1 %i.bk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.bl = zext nneg i8 %i.az to i32
  br label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i
  %i.bm = icmp ne ptr %i.be, %i.at
  call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 3 ; 3 uses
  %i.bo = load i8, ptr %i.be, align 1, !alias.scope !2092, !noalias !2093, !noundef !9
  %i.bp = shl nuw nsw i32 %i.bi, 6
  %i.bq = and i8 %i.bo, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br            ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bc, 12
  %i.bu = or disjoint i32 %i.bs, %i.bt
  %i.bv = icmp samesign ugt i8 %i.az, -17
  br i1 %i.bv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i
  %i.bw = icmp ne ptr %i.bn, %i.at
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.by = load i8, ptr %i.bn, align 1, !alias.scope !2092, !noalias !2093, !noundef !9
  %i.bz = shl nuw nsw i32 %i.bc, 18
  %i.ca = and i32 %i.bz, 1835008
  %i.cb = shl nuw nsw i32 %i.bs, 6
  %i.cc = and i8 %i.by, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = or disjoint i32 %i.ce, %i.ca
  br label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i, %bb.w, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i
  %i.cg = phi ptr [ %i.bn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i ], [ %i.bx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i ], [ %i.be, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i ], [ %i.ay, %bb.w ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.bu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i ], [ %i.bl, %bb.w ] ; 3 uses
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ch)
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.au, %i.aw
  %i.ck = add i64 %i.cj, %i.ci
  %i.cl = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 2097119
  %i.cm = add nsw i32 %i.cl, -91
  %or.cond2.i.i.i.i.i.i = icmp ult i32 %i.cm, -26
  %i.cn = icmp ne i32 %.sroa.4.0.i.ph.i.i.i.i.i, 95
  %.sroa.0.0.i.i.not.i.not.i.i.i = and i1 %i.cn, %or.cond2.i.i.i.i.i.i
  br i1 %.sroa.0.0.i.i.not.i.not.i.i.i, label %bb.x, label %bb.u

bb.x:                                             ; preds = %bb.u, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i
  %.sroa.5.0 = phi i64 [ %i.au, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i ], [ undef, %bb.u ]
  %.sroa.0.036 = phi ptr [ %i.aq, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB1d_17LocalizationState15update_from_env0ENtB5_8Searcher4nextB1h_.exit.i.i.i ], [ null, %bb.u ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.036, null        ; 2 uses
  %.pn4.i = select i1 %.not.i, ptr %i.aq, ptr %.sroa.0.036
  %.sroa.4.0.copyload.pn.i = select i1 %.not.i, i64 %i.as, i64 %.sroa.5.0 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.4.0.copyload.pn.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.y unwind label %bb.o

bb.y:                                             ; preds = %bb.x
  %i.co = load i64, ptr %i.h, align 8, !range !20, !noundef !9
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !22, !noundef !9 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.cp, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.ct = load i64, ptr %i.cs, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.cr, i64 %i.ct) #39
          to label %bb.ag unwind label %bb.o

bb.aa:                                            ; preds = %bb.y
  %i.cu = load ptr, ptr %i.cs, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cv = icmp ule i64 %.sroa.4.0.copyload.pn.i, %i.cr
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not12 = icmp eq i64 %.sroa.4.0.copyload.pn.i, 0
  br i1 %.not12, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  store i64 %i.cr, ptr %i.k, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cu, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.4.0.copyload.pn.i, ptr %.sroa.68.0..sroa_idx, align 8
  %i.cw = load i8, ptr %i.o, align 8, !range !28, !noundef !9
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.cx = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 105) 24, i64 noundef 8) #38 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ac, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc15 unwind label %bb.ae

.noexc15:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull align 1 %.pn4.i, i64 %.sroa.4.0.copyload.pn.i, i1 false)
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #36
          to label %.body34 unwind label %bb.af

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.s

bb.af:                                            ; preds = %bb.bk, %.body, %bb.ae, %.body34
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ag:                                            ; preds = %bb.z
  unreachable

bb.ah:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !9
  %i.df = invoke noundef nonnull align 8 ptr @_RNvCs476pBYQK2Ku_11fish_fluent23get_available_languages()
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEECs8frGy5WneL6_4fish.exit.i, %bb.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEECs8frGy5WneL6_4fish.exit.i, %bb.aj, %bb.as, %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i27, %.body.i17, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i18, %.body.i17 ], [ %i.dg, %bb.ai ], [ %.pn.i28, %.body.i27 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #36
          to label %.body34 unwind label %bb.af

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2094
  %i.dh = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @24)
          to label %.noexc19 unwind label %bb.ai  ; 2 uses

.noexc19:                                         ; preds = %bb.aj
  %i.di = extractvalue { i64, i64 } %i.dh, 0
  %i.dj = extractvalue { i64, i64 } %i.dh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @26, i64 32, i1 false), !noalias !2094
end_hunk_5
begin_hunk_6_@_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack12create_child:bb.a
bb.ab:                                            ; preds = %.body, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.z ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack12export_array(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMse_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentINtB5_8EnvMutexNtB5_12EnvStackImplE4lockBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9
  %i.c = invoke noundef nonnull ptr @_RNvMs9_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl12export_array(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !9, !align !17, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val3 = load i8, ptr %i.f, align 8, !range !16, !noundef !9
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_(ptr nonnull %.val2, i8 %.val3) #36
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !9, !align !17, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1 = load i8, ptr %i.h, align 8, !range !16, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.j = trunc nuw i8 %.val1 to i1
  br i1 %i.j, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.n, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i8 1, ptr %i.i monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.o = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_.exit, !prof !11

bb.g:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c

bb.h:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack13last_statuses(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMse_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentINtB5_8EnvMutexNtB5_12EnvStackImplE4lockBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1)
  %i.c = load ptr, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load <2 x i32>, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !9, !align !17, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val4 = load i8, ptr %i.i, align 8, !range !16, !noundef !9
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_(ptr nonnull %.val3, i8 %.val4) #36
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.f, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !9, !align !17, !noundef !9 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val2 = load i8, ptr %i.l, align 8, !range !16, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.n = trunc nuw i8 %.val2 to i1
  br i1 %i.n, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.r = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.r, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i8 1, ptr %i.m monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.s = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_.exit, !prof !11

bb.g:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_12EnvStackImplEEBK_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack14universal_sync(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = tail call noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment20UVAR_SCOPE_IS_GLOBAL)
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull @_RNvNtNtCs8frGy5WneL6_4fish3env11environment22UVARS_LOCALLY_MODIFIED)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool5store(ptr noundef nonnull @_RNvNtNtCs8frGy5WneL6_4fish3env11environment22UVARS_LOCALLY_MODIFIED, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = tail call { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars() ; 2 uses
  %i.o = extractvalue { ptr, i1 } %i.n, 0         ; 7 uses
  %i.p = extractvalue { ptr, i1 } %i.n, 1         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal4sync(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.q)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.s, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.s, %bb.f, %bb.c
  ret void

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %4 = zext i1 %i.p to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.o, i8 %4) #36
          to label %.thread unwind label %bb.an

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.u = load i8, ptr %i.h, align 8, !range !16, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.y = and i64 %i.x, 9223372036854775807
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  br i1 %i.aa, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.w monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %.noexc, %bb.j, %bb.i
  %i.ab = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit, !prof !11

bb.m:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.q, %bb.k, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load i64, ptr %i.i, align 8, !range !12, !noundef !9
  %.not33 = icmp eq i64 %i.ae, -1
  br i1 %.not33, label %.thread, label %bb.ao

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  %i.af = trunc nuw i8 %i.u to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.ah, align 8
  %i.ai = load i64, ptr %i.i, align 8, !range !12, !noundef !9 ; 2 uses
  %.not = icmp eq i64 %i.ai, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit
  %i.aj = invoke { ptr, ptr } @_RNvNtCs8frGy5WneL6_4fish18universal_notifier16default_notifier()
          to label %bb.q unwind label %bb.n       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0
  %i.al = extractvalue { ptr, ptr } %i.aj, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !9, !nonnull !9
  invoke void %i.an(ptr noundef %i.ak)
          to label %bb.o unwind label %bb.n

bb.r:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !9 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 192153584101141163
  tail call void @llvm.assume(i1 %i.as)
  %.idx = mul nuw nsw i64 %i.ar, 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ap, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ai, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %bb.r
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 5 uses
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.s:                                             ; preds = %bb.x, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit17: ; preds = %bb.ak, %.body.thread, %bb.al, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %eh.lpad-body29, %bb.al ], [ %eh.lpad-body29, %.body.thread ], [ %eh.lpad-body29, %bb.ak ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #36
          to label %bb.v unwind label %bb.an

bb.t:                                             ; preds = %bb.aj
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit17

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit
  %i.az = phi ptr [ %i.ap, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.ba, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 7 uses
  %.sroa.019.0.copyload20 = load i64, ptr %i.az, align 8, !noalias !2171 ; 2 uses
  %.not5 = icmp eq i64 %.sroa.019.0.copyload20, -1
  br i1 %.not5, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.019.0.copyload20, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx21, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bb = load ptr, ptr %i.av, align 8, !nonnull !9, !noundef !9
  %i.bc = load i64, ptr %i.aw, align 8, !noundef !9
  invoke void @_RNvNtCs8frGy5WneL6_4fish12env_dispatch23env_dispatch_var_change(i1 noundef zeroext %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bb, i64 noundef %i.bc, ptr noundef nonnull align 8 %1)
          to label %bb.y unwind label %bb.am

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, %bb.r
  %i.bd = phi ptr [ %i.ap, %bb.r ], [ %i.ba, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit ], [ %i.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit ]
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit17
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit17 ], [ %i.be, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish5event5EventEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #36
          to label %.thread unwind label %bb.an

bb.w:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

.body.thread30:                                   ; preds = %bb.aa, %bb.z
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.body.thread

bb.y:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr %i.ax, align 8, !noundef !9
  %.not6 = icmp eq ptr %i.bf, null
  br i1 %.not6, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish5eventNtB5_5Event12variable_set(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ab unwind label %.body.thread30

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish5eventNtB5_5Event14variable_erase(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ag unwind label %.body.thread30

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ag, %bb.ab
  %i.bg = load i64, ptr %i.ah, align 8, !alias.scope !2172, !noundef !9 ; 3 uses
  %i.bh = load i64, ptr %i.g, align 8, !range !10, !alias.scope !2172, !noundef !9
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish5event5EventE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ah unwind label %bb.ae, !noalias !2173

bb.ae:                                            ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event5EventEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #36
          to label %.body.thread unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

end_hunk_6
begin_hunk_7_@_RNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init:bb.a
bb.ii:                                            ; preds = %bb.ic, %.thread678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  %i.xh = zext i16 %i.wn to i64
  store i64 %i.xh, ptr %i.dk, align 8
  invoke void @_RNvXst_Cskr4qsHYS30i_15fish_widestringjNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dk)
          to label %bb.ij unwind label %bb.hp

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2726
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !2726
  %i.xi = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 105) 24, i64 noundef 8) #38, !noalias !2726 ; 3 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %bb.ik, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i434, !prof !11

bb.ik:                                            ; preds = %bb.ij
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc.i435 unwind label %bb.il, !noalias !2726

.noexc.i435:                                      ; preds = %bb.ik
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i434: ; preds = %bb.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xi, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 24, i1 false), !noalias !2727
  store i64 1, ptr %i.k, align 8, !noalias !2726
  %i.xk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.xi, ptr %i.xk, align 8, !noalias !2726
  %i.xl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1, ptr %i.xl, align 8, !noalias !2726
  %i.xm = invoke noundef range(i8 0, 5) i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack3set(ptr noundef nonnull align 8 @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @284, i64 noundef 7, i32 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.in unwind label %bb.hp     ; 0 uses

bb.il:                                            ; preds = %bb.ik
  %i.xn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dl) #36
          to label %.body409 unwind label %bb.im, !noalias !2727

bb.im:                                            ; preds = %bb.il
  %i.xo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !2727
  unreachable

bb.in:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %bb.if

bb.io:                                            ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar8is_empty.exit.thread.i.i430, %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar8is_empty.exit.thread8.i.i428, %bb.ih
  %.pr681 = load ptr, ptr %i.dj, align 8          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2722
  %.not184 = icmp eq ptr %.pr681, null
  br i1 %.not184, label %bb.is, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.xp = atomicrmw add ptr %.pr681, i64 -1 release, align 8, !noalias !2728
  %i.xq = icmp eq i64 %i.xp, 1
  br i1 %i.xq, label %bb.iq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit442

bb.iq:                                            ; preds = %bb.ip
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit442 unwind label %bb.hp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit442: ; preds = %bb.ip, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ix, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  invoke fastcc void @_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String8from_streECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 7)
          to label %bb.iy unwind label %bb.hp

bb.is:                                            ; preds = %bb.io, %.thread682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  %i.xr = zext i16 %i.wo to i64
  store i64 %i.xr, ptr %i.dh, align 8
  invoke void @_RNvXst_Cskr4qsHYS30i_15fish_widestringjNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.di, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dh)
          to label %bb.it unwind label %bb.hp

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2729
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !2729
  %i.xs = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 105) 24, i64 noundef 8) #38, !noalias !2729 ; 3 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %bb.iu, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i445, !prof !11

bb.iu:                                            ; preds = %bb.it
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc.i446 unwind label %bb.iv, !noalias !2729

.noexc.i446:                                      ; preds = %bb.iu
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i445: ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xs, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !noalias !2730
  store i64 1, ptr %i.j, align 8, !noalias !2729
  %i.xu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.xs, ptr %i.xu, align 8, !noalias !2729
  %i.xv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %i.xv, align 8, !noalias !2729
  %i.xw = invoke noundef range(i8 0, 5) i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack3set(ptr noundef nonnull align 8 @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @285, i64 noundef 5, i32 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ix unwind label %bb.hp     ; 0 uses

bb.iv:                                            ; preds = %bb.iu
  %i.xx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.di) #36
          to label %.body409 unwind label %bb.iw, !noalias !2730

bb.iw:                                            ; preds = %bb.iv
  %i.xy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !2730
  unreachable

bb.ix:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.ir

bb.iy:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2731
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !2731
  %i.xz = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 105) 24, i64 noundef 8) #38, !noalias !2731 ; 3 uses
  %i.ya = icmp eq ptr %i.xz, null
  br i1 %i.ya, label %bb.iz, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i452, !prof !11

bb.iz:                                            ; preds = %bb.iy
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc.i453 unwind label %bb.ja, !noalias !2731

.noexc.i453:                                      ; preds = %bb.iz
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i452: ; preds = %bb.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xz, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !2732
  store i64 1, ptr %i.i, align 8, !noalias !2731
  %i.yb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.xz, ptr %i.yb, align 8, !noalias !2731
  %i.yc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %i.yc, align 8, !noalias !2731
  %i.yd = invoke noundef range(i8 0, 5) i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack3set(ptr noundef nonnull align 8 @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @287, i64 noundef 14, i32 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %bb.jc unwind label %bb.hp     ; 0 uses

bb.ja:                                            ; preds = %bb.iz
  %i.ye = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #36
          to label %.body409 unwind label %bb.jb, !noalias !2732

bb.jb:                                            ; preds = %bb.ja
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !2732
  unreachable

bb.jc:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  invoke void @_RNvNtCs8frGy5WneL6_4fish12env_dispatch17env_dispatch_init(ptr noundef nonnull align 8 @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS)
          to label %bb.jd unwind label %bb.hp

bb.jd:                                            ; preds = %bb.jc
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish5input7binding10init_input()
          to label %bb.je unwind label %bb.hp

bb.je:                                            ; preds = %bb.jd
  br i1 %1, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path35path_emit_config_directory_messages(ptr noundef nonnull align 8 @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS)
          to label %bb.jh unwind label %bb.hp

bb.jg:                                            ; preds = %bb.je
  invoke void @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool5store(ptr noundef nonnull @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment20UVAR_SCOPE_IS_GLOBAL, i1 noundef zeroext true)
          to label %bb.ms unwind label %bb.hp

bb.jh:                                            ; preds = %bb.jf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  %i.yg = invoke { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars()
          to label %bb.ji unwind label %bb.hp     ; 2 uses

bb.ji:                                            ; preds = %bb.jh
  %i.yh = extractvalue { ptr, i1 } %i.yg, 0       ; 7 uses
  %i.yi = extractvalue { ptr, i1 } %i.yg, 1       ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  invoke void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal10initialize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.de, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.yj)
          to label %bb.jk unwind label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.yk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yh) ]
  %2 = zext i1 %i.yi to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.yh, i8 %2) #36
          to label %.body409 unwind label %bb.hj

bb.jk:                                            ; preds = %bb.ji
  %i.yl = load i64, ptr %i.de, align 8, !range !12, !noundef !9
  %.not185 = icmp eq i64 %i.yl, -1
  br i1 %.not185, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  br label %bb.jn

bb.jm:                                            ; preds = %bb.jk
  store i64 0, ptr %i.df, align 8
  %i.ym = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ym, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 0, ptr %i.yn, align 8
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yh) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yh, i64 4
  br i1 %i.yi, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.yp = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.yq = and i64 %i.yp, 9223372036854775807
  %i.yr = icmp eq i64 %i.yq, 0
  br i1 %i.yr, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.jp, !prof !8

bb.jp:                                            ; preds = %bb.jo
  %i.ys = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc459 unwind label %bb.mr

.noexc459:                                        ; preds = %bb.jp
  br i1 %i.ys, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.jq

bb.jq:                                            ; preds = %.noexc459
  store atomic i8 1, ptr %i.yo monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.jq, %.noexc459, %bb.jo, %bb.jn
  %i.yt = atomicrmw xchg ptr %i.yh, i32 0 release, align 4
  %i.yu = icmp eq i32 %i.yt, 2
  br i1 %i.yu, label %bb.jr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit, !prof !11

bb.jr:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.yh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit unwind label %bb.mr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.jr
  %i.yv = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.yx = load i64, ptr %i.df, align 8, !range !10, !noundef !9
  %i.yy = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.yz = load i64, ptr %i.yy, align 8, !noundef !9 ; 3 uses
  %i.za = icmp ult i64 %i.yz, 192153584101141163
  call void @llvm.assume(i1 %i.za)
  %.idx773 = mul nuw nsw i64 %i.yz, 48
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 %.idx773 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  store ptr %i.yw, ptr %i.dd, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %i.yx, ptr %.sroa.551.0..sroa_idx, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %i.zb, ptr %.sroa.652.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7536)
  %i.zc = icmp eq i64 %i.yz, 0
  br i1 %i.zc, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit
  %.sroa.7536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.js:                                            ; preds = %bb.mo, %bb.jt
  %.pn197 = phi { ptr, i32 } [ %i.ze, %bb.jt ], [ %i.aed, %bb.mo ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dd) #36
          to label %.body409 unwind label %bb.hj

bb.jt:                                            ; preds = %bb.mp
  %i.ze = landingpad { ptr, i32 }
          cleanup
  store ptr %i.zg, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.js

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %bb.mq
  %i.zf = phi ptr [ %i.yw, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.zg, %bb.mq ] ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 48 ; 5 uses
  %.sroa.0534.0.copyload535 = load i64, ptr %i.zf, align 8, !noalias !2733 ; 2 uses
  %.sroa.7536.0..sroa_idx537 = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7536, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7536.0..sroa_idx537, i64 40, i1 false), !noalias !2733
  %.not186 = icmp eq i64 %.sroa.0534.0.copyload535, -1
  br i1 %.not186, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %bb.ju

bb.ju:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  store i64 %.sroa.0534.0.copyload535, ptr %i.dc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7536.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7536, i64 40, i1 false)
  %i.zh = load ptr, ptr %.sroa.7536.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.zi = load i64, ptr %i.zd, align 8, !noundef !9
  invoke void @_RNvNtCs8frGy5WneL6_4fish12env_dispatch23env_dispatch_var_change(i1 noundef zeroext false, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.zh, i64 noundef %i.zi, ptr noundef nonnull align 8 @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS)
          to label %bb.mp unwind label %bb.mo

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit, %bb.mq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit
  %i.zj = phi ptr [ %i.yw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit ], [ %i.zg, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit ], [ %i.zb, %bb.mq ]
  store ptr %i.zj, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7536)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dd)
          to label %bb.jv unwind label %.thread709

bb.jv:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store i64 0, ptr %i.da, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.zk, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  store i64 0, ptr %i.zl, align 8
  %i.zm = invoke { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars()
          to label %bb.jx unwind label %bb.jw     ; 2 uses

.thread709:                                       ; preds = %bb.ky, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, %bb.ke, %bb.kc
  %lpad.thr_comm707 = landingpad { ptr, i32 }
          cleanup
  br label %.body409

bb.jw:                                            ; preds = %bb.jv
  %lpad.thr_comm.split-lp708 = landingpad { ptr, i32 }
          cleanup
  br label %.thread701

.loopexit.split-lp742.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mf, %bb.lq, %bb.mh, %bb.lr, %.backedge746, %bb.jx
  %lpad.loopexit.split-lp889 = landingpad { ptr, i32 }
          cleanup
  br label %.body492

.body492:                                         ; preds = %.loopexit.split-lp742.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ml, %.body6.i, %bb.lu
  %eh.lpad-body493 = phi { ptr, i32 } [ %.pn.i487, %.body6.i ], [ %i.ady, %bb.ml ], [ %.pn.i487, %bb.lu ], [ %lpad.loopexit.split-lp889, %.loopexit.split-lp742.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zn) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.zn, i8 %i.zp) #36
          to label %.thread701 unwind label %bb.hj

bb.jx:                                            ; preds = %bb.jv
  %i.zn = extractvalue { ptr, i1 } %i.zm, 0       ; 7 uses
  %i.zo = extractvalue { ptr, i1 } %i.zm, 1       ; 2 uses
  %i.zp = zext i1 %i.zo to i8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zq)
          to label %bb.jy unwind label %.loopexit.split-lp742.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.backedge746

.backedge746:                                     ; preds = %.backedge746.backedge, %bb.jy
  %i.zv = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cz)
          to label %bb.jz unwind label %.loopexit.split-lp742.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.jz:                                            ; preds = %.backedge746
  %i.zw = extractvalue { ptr, ptr } %i.zv, 0      ; 4 uses
  %i.zx = extractvalue { ptr, ptr } %i.zv, 1      ; 3 uses
  %.not187 = icmp eq ptr %i.zw, null
  br i1 %.not187, label %bb.ka, label %bb.lo

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zn) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  br i1 %i.zo, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i461, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.zz = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aaa = and i64 %i.zz, 9223372036854775807
  %i.aab = icmp eq i64 %i.aaa, 0
  br i1 %i.aab, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i461, label %bb.kc, !prof !8

bb.kc:                                            ; preds = %bb.kb
  %i.aac = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc462 unwind label %.thread709

.noexc462:                                        ; preds = %bb.kc
  br i1 %i.aac, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i461, label %bb.kd

bb.kd:                                            ; preds = %.noexc462
  store atomic i8 1, ptr %i.zy monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i461

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i461: ; preds = %bb.kd, %.noexc462, %bb.kb, %bb.ka
  %i.aad = atomicrmw xchg ptr %i.zn, i32 0 release, align 4
  %i.aae = icmp eq i32 %i.aad, 2
  br i1 %i.aae, label %bb.ke, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit464, !prof !11

bb.ke:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i461
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.zn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit464 unwind label %.thread709

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit464: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i461, %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.aai = load i64, ptr %i.aah, align 8, !noundef !9 ; 2 uses
  %.idx883 = mul nuw nsw i64 %i.aai, 24
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 %.idx883
  %i.aak = icmp eq i64 %i.aai, 0
  br i1 %i.aak, label %._crit_edge881, label %.lr.ph880

bb.kf:                                            ; preds = %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals.exit466
  %i.aal = icmp eq ptr %i.aam, %i.aaj
  br i1 %i.aal, label %._crit_edge881, label %.lr.ph880

.lr.ph880:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit464, %bb.kf
  %.sroa.058.0879 = phi ptr [ %i.aam, %bb.kf ], [ %i.aag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit464 ] ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.058.0879, i64 24 ; 2 uses
  %i.aan = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS, i64 136) acquire, align 8
  %i.aao = icmp eq i32 %i.aan, 0
  br i1 %i.aao, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals.exit466, label %bb.kg, !prof !8

bb.kg:                                            ; preds = %.lr.ph880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS, i64 136), i1 noundef zeroext true, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc465 unwind label %.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc465:                                        ; preds = %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals.exit466

._crit_edge881:                                   ; preds = %bb.kf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit464
  %i.aap = invoke { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish5abbrs13abbrs_get_set()
          to label %bb.kh unwind label %.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp737:                            ; preds = %.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ki
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ki ], [ %lpad.loopexit.split-lp886, %.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #36
          to label %.body409 unwind label %bb.hj

.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kg, %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals.exit466, %bb.kw, %bb.ku, %._crit_edge881
  %lpad.loopexit.split-lp886 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp737

_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals.exit466: ; preds = %.noexc465, %.lr.ph880
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.058.0879, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !nonnull !9, !noundef !9
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.058.0879, i64 16
  %i.aat = load i64, ptr %i.aas, align 8, !noundef !9
  %i.aau = invoke noundef i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack6remove(ptr noundef nonnull align 8 @_RNvNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB7_8EnvStack7globals7GLOBALS, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aar, i64 noundef %i.aat, i32 noundef 20)
          to label %bb.kf unwind label %.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.kh:                                            ; preds = %._crit_edge881
  %i.aav = extractvalue { ptr, i1 } %i.aap, 0     ; 8 uses
  %i.aaw = extractvalue { ptr, i1 } %i.aap, 1     ; 2 uses
  %i.aax = zext i1 %i.aaw to i8
  %i.aay = invoke { ptr, i1 } @_RNvNtNtNtCs8frGy5WneL6_4fish3env4impl11environment5uvars()
          to label %bb.kk unwind label %bb.kj     ; 2 uses

bb.ki:                                            ; preds = %.loopexit.split-lp, %bb.kj
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp ], [ %i.aaz, %bb.kj ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aav) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEEB1A_(ptr nonnull %i.aav, i8 %i.aax) #36
          to label %.loopexit.split-lp737 unwind label %bb.hj

bb.kj:                                            ; preds = %bb.ks, %bb.kq, %bb.kh
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ln
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph, %bb.ln ], [ %lpad.loopexit.split-lp884, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aba) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_(ptr nonnull %i.aba, i8 %i.abc) #36
          to label %bb.ki unwind label %bb.hj

bb.kk:                                            ; preds = %bb.kh
  %i.aba = extractvalue { ptr, i1 } %i.aay, 0     ; 7 uses
  %i.abb = extractvalue { ptr, i1 } %i.aay, 1     ; 2 uses
  %i.abc = zext i1 %i.abb to i8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.abd)
          to label %bb.kl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %i.abe = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.abf = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  %i.abg = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %.sroa.4.0..sroa_idx.i484 = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.abh = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.abi = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.abj = getelementptr inbounds nuw i8, ptr %i.cr, i64 129
  %i.abk = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.abl = getelementptr inbounds nuw i8, ptr %i.cr, i64 130
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.kl
  %i.abn = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cw)
          to label %bb.km unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.km:                                            ; preds = %.backedge
  %i.abo = extractvalue { ptr, ptr } %i.abn, 0    ; 3 uses
  %i.abp = extractvalue { ptr, ptr } %i.abn, 1    ; 3 uses
  %.not188 = icmp eq ptr %i.abo, null
  br i1 %.not188, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abp) ]
  %i.abq = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withRNtNtB7_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abo, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @65, i64 noundef 11)
          to label %bb.ld unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ko:                                            ; preds = %bb.km
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aba) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  br i1 %i.abb, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i467, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.abs = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.abt = and i64 %i.abs, 9223372036854775807
  %i.abu = icmp eq i64 %i.abt, 0
  br i1 %i.abu, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i467, label %bb.kq, !prof !8

bb.kq:                                            ; preds = %bb.kp
  %i.abv = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc468 unwind label %bb.kj

.noexc468:                                        ; preds = %bb.kq
  br i1 %i.abv, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i467, label %bb.kr

bb.kr:                                            ; preds = %.noexc468
  store atomic i8 1, ptr %i.abr monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i467

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i467: ; preds = %bb.kr, %.noexc468, %bb.kp, %bb.ko
  %i.abw = atomicrmw xchg ptr %i.aba, i32 0 release, align 4
  %i.abx = icmp eq i32 %i.abw, 2
  br i1 %i.abx, label %bb.ks, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit470, !prof !11

bb.ks:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i467
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit470 unwind label %bb.kj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit470: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i467, %bb.ks
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aav) ]
  %i.aby = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  br i1 %i.aaw, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i471, label %bb.kt

bb.kt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit470
  %i.abz = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aca = and i64 %i.abz, 9223372036854775807
  %i.acb = icmp eq i64 %i.aca, 0
  br i1 %i.acb, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i471, label %bb.ku, !prof !8

bb.ku:                                            ; preds = %bb.kt
  %i.acc = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc472 unwind label %.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc472:                                        ; preds = %bb.ku
  br i1 %i.acc, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i471, label %bb.kv

bb.kv:                                            ; preds = %.noexc472
  store atomic i8 1, ptr %i.aby monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i471

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i471: ; preds = %bb.kv, %.noexc472, %bb.kt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish20env_universal_common12EnvUniversalEEB1A_.exit470
  %i.acd = atomicrmw xchg ptr %i.aav, i32 0 release, align 4
  %i.ace = icmp eq i32 %i.acd, 2
  br i1 %i.ace, label %bb.kw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEEB1A_.exit, !prof !11

bb.kw:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i471
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aav)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEEB1A_.exit unwind label %.loopexit.split-lp737.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEEB1A_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i471, %bb.kw
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %bb.ky unwind label %bb.kx

bb.kx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEEB1A_.exit
  %i.acf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %.body409 unwind label %bb.kz

bb.ky:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish5abbrs15AbbreviationSetEEB1A_.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %.thread709

bb.kz:                                            ; preds = %bb.kx
  %i.acg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.ach = trunc nuw i8 %.sroa.065.2 to i1
  br i1 %i.ach, label %bb.la, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit502

bb.la:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit502.sink.split unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.aci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.thread unwind label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.acj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit502.sink.split: ; preds = %bb.la, %bb.mt
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit502

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit502: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit502.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit, %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  ret void

bb.ld:                                            ; preds = %bb.kn
  br i1 %i.abq, label %bb.le, label %.backedge.backedge

bb.le:                                            ; preds = %bb.ld
  %i.ack = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abo, i64 noundef 11)
          to label %bb.lf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.lf:                                            ; preds = %bb.le
  %i.acl = extractvalue { ptr, i64 } %i.ack, 0
  %i.acm = extractvalue { ptr, i64 } %i.ack, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common15unescape_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.acl, i64 noundef %i.acm, i32 noundef 2, i32 undef)
          to label %bb.lg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lg:                                            ; preds = %bb.lf
  %i.acn = load i64, ptr %i.cv, align 8, !range !12, !noundef !9
  %.not189 = icmp eq i64 %i.acn, -1
  br i1 %.not189, label %.backedge.sink.split, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %bb.lj unwind label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.backedge, %bb.kn, %bb.le, %bb.lf, %bb.lk, %bb.kk
  %lpad.loopexit.split-lp884 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.lj:                                            ; preds = %bb.lh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %.val242 = load ptr, ptr %i.abp, align 8, !nonnull !9, !noundef !9
  %i.acp = getelementptr i8, ptr %i.abp, i64 8
  %.val243 = load i64, ptr %i.acp, align 8, !noundef !9
  %i.acq = getelementptr inbounds nuw i8, ptr %.val242, i64 16
  invoke void @_RINvCskeBJdk8gjxq_17fish_wcstringutil12join_stringsNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.acq, i64 noundef %.val243, i32 noundef 32)
          to label %bb.lk unwind label %bb.lm

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aav) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abe, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  store ptr null, ptr %i.abf, align 8, !alias.scope !2735
  store i64 0, ptr %i.abg, align 8, !alias.scope !2735
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i484, align 8, !alias.scope !2735
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !alias.scope !2736
  store i8 0, ptr %i.abi, align 8, !alias.scope !2735
  store i8 0, ptr %i.abj, align 1, !alias.scope !2735
  store i64 -1, ptr %i.abk, align 8, !alias.scope !2735
  store i8 1, ptr %i.abl, align 2, !alias.scope !2735
  invoke void @_RNvMs0_NtCs8frGy5WneL6_4fish5abbrsNtB5_15AbbreviationSet3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.abm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.cr)
          to label %bb.ll unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %bb.lg, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge.sink.split, %bb.ld
  br label %.backedge

bb.lm:                                            ; preds = %bb.lj
  %i.acr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ct) #36
          to label %bb.ln unwind label %bb.hj
end_hunk_7
begin_hunk_8_@_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader:bb.a
  call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2y_5slice4iter7IterMutRNtNtB17_6utfstr8Utf32StrENCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader15fish_key_reader0EE9from_iterB4f_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %2, ptr noundef nonnull %i.g)
  %i.h = call fastcc i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11parse_flags(ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef dereferenceable(1) %i.f, ptr noalias nofree noundef dereferenceable(1) %i.e) ; 3 uses
  %i.i = and i64 %i.h, 255                        ; 2 uses
  %.not = icmp eq i64 %i.i, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0.extract.shift = and i64 %i.h, 4294967296
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, %bb.b
  %.sroa.43.0 = phi i64 [ %.sroa.5.0.extract.shift, %bb.b ], [ 4294967296, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ]
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.l = and i64 %i.h, 4294967040
  %i.m = or disjoint i64 %.sroa.43.0, %i.l
  %i.n = or disjoint i64 %i.m, %.sroa.0.0
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = call noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  %i.p = call noundef zeroext i1 @_RNvNtCs8frGy5WneL6_4fish3nix6isatty(i32 noundef %i.o)
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.f, align 1, !range !16, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr %i.e, align 1, !range !16, !noundef !9
  %i.t = trunc nuw i8 %i.s to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = call noundef i32 @_RNvMsg_NtCs8frGy5WneL6_4fish2ioNtB5_9IoStreams8stdin_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  store i64 -2, ptr %i.a, align 8, !alias.scope !2942
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0.sroa.8.sroa.4.0..sroa.0.sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2942
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.8.sroa.4.0..sroa.0.sroa.8.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.0.sroa.8.sroa.5.0..sroa.0.sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.sroa.5.0..sroa.0.sroa.8.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !2942
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 0, ptr %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.0.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 -1, ptr %.sroa.0.sroa.10.0..sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 -1, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 %i.u, ptr %.sroa.101.0..sroa_idx.i, align 8, !alias.scope !2942
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !2942
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15 = load ptr, ptr %i.w, align 8
  call fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader22setup_and_process_keys(ptr %.val, ptr %.val15, i1 noundef zeroext %i.r, i1 noundef zeroext %i.t, ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @327, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 32, ptr %i.y, align 8
  store i64 -1, ptr %i.b, align 8
  %i.z = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.0.0.insert.insert = phi i64 [ %i.n, %bb.d ], [ 0, %bb.f ]
  ret i64 %.sroa.0.0.insert.insert

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %common.resume unwind label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.ab = extractvalue { ptr, i64 } %i.z, 0
  %i.ac = extractvalue { ptr, i64 } %i.z, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  store i64 -1, ptr %i.c, align 8, !alias.scope !2944
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2944
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2944
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr null, ptr %i.ad, align 8, !alias.scope !2945
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %i.ae, align 8, !alias.scope !2945
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr null, ptr %i.af, align 8, !alias.scope !2945
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %i.ag, align 8, !alias.scope !2945
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = load i64, ptr %i.b, align 8, !range !12, !alias.scope !2946, !noundef !9
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.aa, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.l
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.o:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader22setup_and_process_keys(ptr %.8.val, ptr %.16.val, i1 noundef zeroext %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(176) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  %i.k = alloca [1 x i8], align 1                 ; 3 uses
  %i.l = alloca [20 x i8], align 4                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 17 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 12 uses
  %i.u = alloca [48 x i8], align 8                ; 20 uses
  %i.v = alloca [24 x i8], align 8                ; 14 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [1 x i8], align 1                 ; 3 uses
  %i.y = alloca [176 x i8], align 8               ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [64 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 11 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader15set_shell_modes(i32 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 15)
          to label %bb.b unwind label %.thread10  ; 0 uses

.thread10:                                        ; preds = %bb.fg, %bb.ee, %bb.ed, %bb.ec, %bb.a, %bb.fe
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %0, label %bb.ec, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit: ; preds = %bb.fg, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.y, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3011
  store i64 0, ptr %i.w, align 8, !noalias !3011
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ag, align 8, !noalias !3011
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  store i64 0, ptr %i.ah, align 8, !noalias !3011
  %i.ai = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnReEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 13)
          to label %bb.g unwind label %bb.f, !noalias !3011 ; 0 uses

.body73.i:                                        ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.f
  %.pn58.i = phi { ptr, i32 } [ %.pn55.pn.i, %bb.m ], [ %i.al, %bb.f ], [ %.pn55.pn.i, %bb.n ], [ %.pn55.pn.i, %bb.l ], [ %i.bk, %bb.r ], [ %i.bk, %bb.q ], [ %i.bk, %bb.p ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.body73.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %.body73.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventEEB1e_.exit.i unwind label %.body.i.critedge

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.f:                                             ; preds = %bb.u, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body73.i

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3011
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoff3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @_RNvYNCNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader13process_input0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBa_)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs1_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoff20enable_tty_protocols(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.preheader48.i unwind label %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader48.i:                                   ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 36 ; 2 uses
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 7 uses
  %.sroa.534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 7 uses
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  br label %.lr.ph.split.us.i

.body90.i:                                        ; preds = %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dx, %.loopexit55.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ck, %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %.pn55.pn.i = phi { ptr, i32 } [ %i.dq, %bb.an ], [ %lpad.loopexit.split-lp114, %bb.dx ], [ %lpad.loopexit.split-lp114, %.loopexit55.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn55.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ %i.he, %bb.ck ], [ %lpad.loopexit.split-lp111, %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  invoke void @_RNvXs2_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoffNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.body90.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3012)
  %i.bb = load ptr, ptr %i.v, align 8, !alias.scope !3013, !noalias !3011, !noundef !9 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !3014
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.k, label %.body.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #35
          to label %.body.i unwind label %bb.o

bb.l:                                             ; preds = %.body90.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  %i.bf = load ptr, ptr %i.v, align 8, !alias.scope !3016, !noalias !3011, !noundef !9 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.body73.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !3017
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.n, label %.body73.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #35
          to label %.body73.i unwind label %.body.i.critedge

bb.o:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ch, %bb.cc, %.lr.ph.split.us.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i89.i, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i109.i
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i

.loopexit49.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit93.i, %bb.cb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit113.i
  invoke void @_RNvXs2_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoffNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.s unwind label %bb.p

bb.p:                                             ; preds = %.loopexit49.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  %i.bl = load ptr, ptr %i.v, align 8, !alias.scope !3019, !noalias !3011, !noundef !9 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.body73.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = atomicrmw add ptr %i.bl, i64 -1 release, align 8, !noalias !3020
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %.body73.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #35
          to label %.body73.i unwind label %bb.v

bb.s:                                             ; preds = %.loopexit49.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  %i.bp = load ptr, ptr %i.v, align 8, !alias.scope !3022, !noalias !3011, !noundef !9 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11tty_handoff10TtyHandoffEBF_.exit75.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !3023
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11tty_handoff10TtyHandoffEBF_.exit75.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish9job_group8JobGroupE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11tty_handoff10TtyHandoffEBF_.exit75.i unwind label %bb.f

bb.v:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

.split164.i:                                      ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !3011
  %i.bu = icmp sgt i64 %i.gu, -1
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.x, %.split164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3011
  br i1 %1, label %bb.ac, label %bb.aa

bb.x:                                             ; preds = %.split164.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t)
          to label %bb.w unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body135.i:                                       ; preds = %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.du, %bb.ds, %bb.dp, %.body58.i.i, %.thread21.i
  %.pn55.i = phi { ptr, i32 } [ %.pn52.i, %.thread21.i ], [ %i.iq, %bb.ds ], [ %.pn.pn.pn.i.i, %.body58.i.i ], [ %i.ir, %bb.du ], [ %lpad.thr_comm.split-lp.i, %bb.dp ], [ %lpad.loopexit.split-lp, %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.y

bb.y:                                             ; preds = %.body135.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.body135.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body90.i unwind label %.body.i.critedge

bb.aa:                                            ; preds = %._crit_edge.i, %bb.w
  %i.bx = load i32, ptr %i.aq, align 8, !range !26, !noalias !3011, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3011
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38
  %i.by = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 105) 24, i64 noundef 8) #38 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.ab, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i, !prof !11
end_hunk_8
begin_hunk_9_@_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader22setup_and_process_keys:bb.a
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  store i16 %i.cp, ptr %.sroa.4.0..sroa_idx2.i, align 4
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 30
  store i8 0, ptr %.sroa.53.0..sroa_idx.i, align 2
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 31
  store i8 %i.cr, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.74.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store ptr @318, ptr %.sroa.74.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store i64 11, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i64 2, ptr %i.as, align 8, !alias.scope !3026, !noalias !3011
  %.pre368.pre.i = load i64, ptr %i.r, align 8, !range !10, !noalias !3011 ; 2 uses
  %i.cu = load i32, ptr %i.at, align 4, !range !26, !noalias !3011, !noundef !9 ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.preheader.i, label %bb.ah

.thread.i:                                        ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i
  %i.cw = trunc nuw i64 %i.co to i32
  %i.cx = load i32, ptr %i.at, align 4, !range !26, !noalias !3011, !noundef !9 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.preheader.i, label %.thread382.i

bb.ag:                                            ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit.i
  %i.cz = load i32, ptr %i.aq, align 8, !range !26, !noalias !3011, !noundef !9
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs8frGy5WneL6_4fish3key3KeyReEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #35
          to label %bb.af unwind label %bb.dn

.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i134.i, %bb.ae, %bb.ca, %.noexc62.i.i, %bb.bf, %.noexc51.1.i.i, %.noexc100.i, %bb.az, %.noexc51.i.i, %.noexc95.i, %bb.as, %bb.ar, %bb.aq, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, %._crit_edge.i, %bb.ac, %bb.x, %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread.i, %.split.i.i.i, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body135.i

bb.ah:                                            ; preds = %bb.af
  %.sroa.323.0.copyload.i = load i32, ptr %.sroa.312.0..sroa_idx.i, align 4, !noalias !3011 ; 2 uses
  %i.da = icmp eq i64 %.pre368.pre.i, 2
  br i1 %i.da, label %.thread382.i, label %bb.ai

.thread382.i:                                     ; preds = %.thread.i, %bb.ah
  %.sroa.323.0.copyload386.i = phi i32 [ %.sroa.323.0.copyload.i, %bb.ah ], [ %i.cw, %.thread.i ]
  %i.db = phi i64 [ 2, %bb.ah ], [ 1, %.thread.i ]
  %i.dc = phi i32 [ %i.cu, %bb.ah ], [ %i.cx, %.thread.i ]
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs8frGy5WneL6_4fish3key3KeyReEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #35
          to label %._crit_edge365.i unwind label %bb.dn

._crit_edge365.i:                                 ; preds = %.thread382.i
  %.pre.i = load ptr, ptr %i.ar, align 8, !alias.scope !3027, !noalias !3011
  br label %bb.ai

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.preheader.i: ; preds = %bb.ai, %.thread.i, %bb.af
  %.idx263.i = phi i64 [ 48, %bb.af ], [ %i.dl, %bb.ai ], [ 24, %.thread.i ]
  %i.dd = phi i64 [ %.pre368.pre.i, %bb.af ], [ %.pre367.i, %bb.ai ], [ 1, %.thread.i ] ; 2 uses
  %i.de = phi ptr [ %i.cs, %bb.af ], [ %.pre366.i, %bb.ai ], [ %i.by, %.thread.i ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx263.i
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

bb.ai:                                            ; preds = %._crit_edge365.i, %bb.ah
  %.sroa.323.0.copyload385.i = phi i32 [ %.sroa.323.0.copyload386.i, %._crit_edge365.i ], [ %.sroa.323.0.copyload.i, %bb.ah ]
  %i.dg = phi i64 [ %i.db, %._crit_edge365.i ], [ 2, %bb.ah ] ; 2 uses
  %i.dh = phi i32 [ %i.dc, %._crit_edge365.i ], [ %i.cu, %bb.ah ]
  %i.di = phi ptr [ %.pre.i, %._crit_edge365.i ], [ %i.cs, %bb.ah ]
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dg ; 4 uses
  store i32 %i.dh, ptr %i.dj, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %.sroa.323.0.copyload385.i, ptr %.sroa.46.0..sroa_idx.i, align 4
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr @319, ptr %.sroa.57.0..sroa_idx.i, align 8
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 12, ptr %.sroa.68.0..sroa_idx.i, align 8
  %i.dk = add nuw nsw i64 %i.dg, 1                ; 2 uses
  store i64 %i.dk, ptr %i.as, align 8, !alias.scope !3027, !noalias !3011
  %.pre366.i = load ptr, ptr %i.ar, align 8, !noalias !3011
  %.pre367.i = load i64, ptr %i.r, align 8, !range !10, !noalias !3011
  %i.dl = mul nuw nsw i64 %i.dk, 24
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.preheader.i

.body126.i:                                       ; preds = %bb.dl, %bb.dj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.aj
  %.pn52.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i ], [ %i.ij, %bb.dj ], [ %i.dn, %bb.aj ], [ %i.ik, %bb.dl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3028
  store i64 %i.dd, ptr %i.i, align 8, !noalias !3028
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.de, ptr %i.dm, align 8, !noalias !3028
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %.thread21.i unwind label %.body.i.critedge

.thread21.i:                                      ; preds = %.body126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3028
  br label %.body135.i

bb.aj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i125.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit129.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.preheader.i
  %.sroa.510.0261.i = phi ptr [ %i.do, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit129.i ], [ %i.de, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.preheader.i ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.510.0261.i, i64 24 ; 2 uses
  %.sroa.013.0.copyload.i = load i64, ptr %.sroa.510.0261.i, align 8, !noalias !3029 ; 2 uses
  %.sroa.714.0..sroa.510.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.510.0261.i, i64 8
  %.sroa.714.0.copyload.i = load ptr, ptr %.sroa.714.0..sroa.510.8..sroa_idx.i, align 8, !noalias !3029 ; 2 uses
  %.sroa.815.0..sroa.510.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.510.0261.i, i64 16
  %.sroa.815.0.copyload.i = load i64, ptr %.sroa.815.0..sroa.510.8..sroa_idx.i, align 8, !noalias !3029 ; 2 uses
  %i.dp = and i64 %.sroa.013.0.copyload.i, 4294967295
  %.not50.i = icmp eq i64 %i.dp, 4294967295
  br i1 %.not50.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.714.0.copyload.i), "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3011
  store i64 0, ptr %i.p, align 8, !noalias !3011
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !3011
  store i64 0, ptr %.sroa.545.0..sroa_idx.i, align 8, !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3011
  invoke void @_RNvXs3_NtCs8frGy5WneL6_4fish3keyNtB5_3KeyNtNtCs1HV6ixfL8cZ_11fish_printf3arg5ToArg6to_arg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, i64 noundef %.sroa.013.0.copyload.i)
          to label %bb.cp unwind label %bb.co

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit129.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3030
  store i64 %i.dd, ptr %i.h, align 8, !noalias !3030
  store ptr %i.de, ptr %i.aw, align 8, !noalias !3030
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.al unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3030
  br i1 %0, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread37.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3011
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i89.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body90.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i89.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit93.i unwind label %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.ap, i64 20, i1 false), !noalias !3011
  call void @llvm.experimental.noalias.scope.decl(metadata !3031)
  %i.ds = load i64, ptr %i.ah, align 8, !alias.scope !3032, !noalias !3011, !noundef !9 ; 3 uses
  %i.dt = load i64, ptr %i.w, align 8, !range !10, !alias.scope !3032, !noalias !3011, !noundef !9
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.aq, label %.noexc95.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #35
          to label %.noexc95.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.1.i.i
  %i.dv = load ptr, ptr %i.ag, align 8, !alias.scope !3031, !noalias !3011, !nonnull !9, !noundef !9
  %i.dw = getelementptr [20 x i8], ptr %i.dv, i64 %i.fg ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 -80    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dx) ]
  %i.dy = invoke noundef zeroext i1 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator5eq_byNtNtNtBc_3str4iter5CharsNCINvYB3_B2W_2eqB3A_E0EB1n_(ptr noundef nonnull %i.dx, ptr noundef %i.dw, ptr noundef nonnull @310, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @310, i64 4))
          to label %.noexc96.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc96.i:                                       ; preds = %bb.ar
  br i1 %i.dy, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread.i, label %bb.as

bb.as:                                            ; preds = %.noexc96.i
  %i.dz = invoke noundef zeroext i1 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENCNvNtNtB1n_8builtins15fish_key_reader11should_exits0_0ENtNtNtBa_6traits8iterator8Iterator5eq_byNtNtNtBc_3str4iter5CharsNCINvYB3_B2W_2eqB3A_E0EB1n_(ptr noundef nonnull %i.dx, ptr noundef %i.dw, ptr noundef nonnull @311, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @311, i64 4))
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95.i:                                       ; preds = %bb.aq, %bb.ap
  %i.ea = load ptr, ptr %i.ag, align 8, !alias.scope !3032, !noalias !3011, !nonnull !9, !noundef !9
  %i.eb = getelementptr inbounds nuw [20 x i8], ptr %i.ea, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.eb, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.ec = add i64 %i.ds, 1
  store i64 %i.ec, ptr %i.ah, align 8, !alias.scope !3032, !noalias !3011
  %i.ed = invoke { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish6common11shell_modes()
          to label %.noexc98.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc98.i:                                       ; preds = %.noexc95.i
  %i.ee = extractvalue { ptr, i1 } %i.ed, 0       ; 8 uses
  %i.ef = extractvalue { ptr, i1 } %i.ed, 1       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3033
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i8, ptr %i.eg, align 1, !noundef !9
  %i.ei = invoke noundef i64 @_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte(i8 noundef %i.eh)
          to label %bb.au unwind label %.loopexit12.i.i

.body58.i.i:                                      ; preds = %bb.bv, %bb.bt, %.body.i.i, %.loopexit.split-lp13.i.i, %.loopexit12.i.i
  %i.ej = phi ptr [ %.lcssa45.i.i, %.body.i.i ], [ %.lcssa45.i.i, %bb.bt ], [ %.lcssa45.i.i, %bb.bv ], [ %.lcssa44.i.i, %.loopexit12.i.i ], [ %.lcssa45.i.i, %.loopexit.split-lp13.i.i ] ; 2 uses
  %.in.i.i = phi i1 [ %.lcssa41.i.i, %.body.i.i ], [ %.lcssa41.i.i, %bb.bt ], [ %.lcssa41.i.i, %bb.bv ], [ %.lcssa40.i.i, %.loopexit12.i.i ], [ %.lcssa41.i.i, %.loopexit.split-lp13.i.i ]
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %.body.i.i ], [ %i.gi, %bb.bt ], [ %i.gj, %bb.bv ], [ %lpad.loopexit14.i.i, %.loopexit12.i.i ], [ %lpad.loopexit.split-lp15.i.i, %.loopexit.split-lp13.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  %3 = zext i1 %.in.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish(ptr nonnull %i.ej, i8 %3) #36
          to label %.body135.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit12.i.i:                                  ; preds = %bb.ba, %.noexc101.i, %bb.au, %.noexc98.i
  %.lcssa44.i.i = phi ptr [ %i.ee, %.noexc98.i ], [ %i.ee, %bb.au ], [ %i.et, %.noexc101.i ], [ %i.et, %bb.ba ]
  %.lcssa40.i.i = phi i1 [ %i.ef, %.noexc98.i ], [ %i.ef, %bb.au ], [ %i.eu, %.noexc101.i ], [ %i.eu, %bb.ba ]
  %lpad.loopexit14.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i.i

.loopexit.split-lp13.i.i:                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i, %bb.bh
  %lpad.loopexit.split-lp15.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i.i

bb.at:                                            ; preds = %bb.bm
  unreachable

bb.au:                                            ; preds = %.noexc98.i
  store i64 %i.ei, ptr %i.g, align 8, !noalias !3033
  %i.ek = invoke noundef i8 @_RNvNtNtCs8frGy5WneL6_4fish5input7binding22match_key_event_to_key(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.av unwind label %.loopexit12.i.i

bb.av:                                            ; preds = %bb.au
  %.not.i.i = icmp eq i8 %i.ek, -1
  br i1 %.not.i.i, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3033
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  br i1 %i.ef, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.em = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3033
  %i.en = and i64 %i.em, 9223372036854775807
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %.noexc51.i.i, !prof !8

.noexc51.i.i:                                     ; preds = %bb.ax
  %i.ep = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc99.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99.i:                                       ; preds = %.noexc51.i.i
  br i1 %i.ep, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.noexc99.i
  store atomic i8 1, ptr %i.el monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ay, %.noexc99.i, %bb.ax, %bb.aw
  %i.eq = atomicrmw xchg ptr %i.ee, i32 0 release, align 4
  %i.er = icmp eq i32 %i.eq, 2
  br i1 %i.er, label %bb.az, label %.noexc100.i, !prof !11

bb.az:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ee)
          to label %.noexc100.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100.i:                                      ; preds = %bb.az, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.es = invoke { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish6common11shell_modes()
          to label %.noexc101.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc101.i:                                      ; preds = %.noexc100.i
  %i.et = extractvalue { ptr, i1 } %i.es, 0       ; 8 uses
  %i.eu = extractvalue { ptr, i1 } %i.es, 1       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3033
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ew = load i8, ptr %i.ev, align 1, !noundef !9
  %i.ex = invoke noundef i64 @_RNvMs1_NtCs8frGy5WneL6_4fish3keyNtB5_3Key16from_single_byte(i8 noundef %i.ew)
          to label %bb.ba unwind label %.loopexit12.i.i

bb.ba:                                            ; preds = %.noexc101.i
  store i64 %i.ex, ptr %i.g, align 8, !noalias !3033
  %i.ey = invoke noundef i8 @_RNvNtNtCs8frGy5WneL6_4fish5input7binding22match_key_event_to_key(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.bb unwind label %.loopexit12.i.i

bb.bb:                                            ; preds = %bb.ba
  %.not.1.i.i = icmp eq i8 %i.ey, -1
  br i1 %.not.1.i.i, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3033
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  br i1 %i.eu, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.1.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3033
  %i.fb = and i64 %i.fa, 9223372036854775807
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.1.i.i, label %.noexc51.1.i.i, !prof !8

.noexc51.1.i.i:                                   ; preds = %bb.bd
  %i.fd = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc102.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102.i:                                      ; preds = %.noexc51.1.i.i
  br i1 %i.fd, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.1.i.i, label %bb.be

bb.be:                                            ; preds = %.noexc102.i
  store atomic i8 1, ptr %i.ez monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.1.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.1.i.i: ; preds = %bb.be, %.noexc102.i, %bb.bd, %bb.bc
  %i.fe = atomicrmw xchg ptr %i.et, i32 0 release, align 4
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %bb.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.1.i.i, !prof !11

bb.bf:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.1.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.et)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.1.i.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.1.i.i: ; preds = %bb.bf, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.1.i.i
  %i.fg = load i64, ptr %i.ah, align 8, !alias.scope !3031, !noalias !3011, !noundef !9 ; 3 uses
  %i.fh = icmp ult i64 %i.fg, 461168601842738791
  call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp samesign ult i64 %i.fg, 4
  br i1 %i.fi, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread37.i, label %bb.ar

bb.bg:                                            ; preds = %bb.bb, %bb.av
  %.lcssa49.i.i = phi i64 [ 0, %bb.av ], [ 4, %bb.bb ]
  %.lcssa45.i.i = phi ptr [ %i.ee, %bb.av ], [ %i.et, %bb.bb ] ; 10 uses
  %.lcssa41.i.i = phi i1 [ %i.ef, %bb.av ], [ %i.eu, %bb.bb ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.lcssa45.i.i, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.lcssa49.i.i
  %i.fl = load i64, ptr %i.ah, align 8, !alias.scope !3031, !noalias !3011, !noundef !9 ; 2 uses
  %i.fm = icmp ult i64 %i.fl, 2
  br i1 %i.fm, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fn = load ptr, ptr %i.ag, align 8, !alias.scope !3031, !noalias !3011, !nonnull !9, !noundef !9
  %i.fo = getelementptr inbounds nuw [20 x i8], ptr %i.fn, i64 %i.fl
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -40
  %i.fq = invoke noundef i8 @_RNvNtNtCs8frGy5WneL6_4fish5input7binding22match_key_event_to_key(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.fp, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.bj unwind label %.loopexit.split-lp13.i.i

bb.bi:                                            ; preds = %bb.bj, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3033
  store i64 0, ptr %i.e, align 8, !noalias !3033
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !3033
  store i64 0, ptr %.sroa.531.0..sroa_idx.i.i, align 8, !noalias !3033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3033
  store ptr @312, ptr %i.ax, align 8, !noalias !3033
  store i64 27, ptr %i.ay, align 8, !noalias !3033
  store i64 -1, ptr %i.c, align 8, !noalias !3033
  %i.fr = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.bk unwind label %.loopexit.split-lp9.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bj:                                            ; preds = %bb.bh
  %.not38.i.i = icmp eq i8 %i.fq, -1
  br i1 %.not38.i.i, label %bb.bi, label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp9.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp119, %.loopexit.split-lp9.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp122, %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #36
          to label %.body.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp9.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bi, %.noexc55.i.i.preheader, %bb.bm
  %lpad.loopexit.split-lp119 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa45.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3033
  %i.fs = load i8, ptr %i.fk, align 1, !noundef !9 ; 2 uses
  %i.ft = icmp ugt i8 %i.fs, -97
  br i1 %i.ft, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fu = extractvalue { ptr, i64 } %i.fr, 1
  %i.fv = extractvalue { ptr, i64 } %i.fr, 0
  %i.fw = add nuw i8 %i.fs, 96
  %i.fx = zext i8 %i.fw to i64
  store i64 4, ptr %i.b, align 8, !noalias !3033
  store i64 %i.fx, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !3033
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fv, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef 1)
          to label %bb.bn unwind label %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bk
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #39
          to label %bb.at unwind label %.loopexit.split-lp9.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bl, %bb.bo
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  %i.fy = load i8, ptr %i.d, align 8, !range !16, !alias.scope !3034, !noalias !3033, !noundef !9
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.bo, label %.noexc55.i.i.preheader, !prof !11

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3035
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !range !21, !alias.scope !3034, !noalias !3033, !noundef !9
  store i8 %i.gb, ptr %i.a, align 1, !noalias !3035
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #40
          to label %.noexc.i.i unwind label %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.bo
  unreachable

.noexc55.i.i.preheader:                           ; preds = %bb.bn
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit56.i.i unwind label %.loopexit.split-lp9.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit56.i.i: ; preds = %.noexc55.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3033
  %i.gc = load i64, ptr %i.c, align 8, !range !12, !alias.scope !3036, !noalias !3033, !noundef !9
  %i.gd = icmp eq i64 %i.gc, -1
  br i1 %i.gd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit56.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i.i unwind label %bb.bs

.body.i.i:                                        ; preds = %bb.bs, %bb.bq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i ], [ %i.gg, %bb.bs ], [ %i.ge, %bb.bq ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #36
          to label %.body58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3033
  %i.gh = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.bu unwind label %bb.bt     ; 0 uses

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #36
          to label %.body58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body58.i.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.bu
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i94.i unwind label %.loopexit.split-lp13.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i94.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3033
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i94.i, %bb.bj
  %.sroa.0.2.i.i = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i94.i ], [ true, %bb.bj ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa45.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3033
  %i.gl = getelementptr inbounds nuw i8, ptr %.lcssa45.i.i, i64 4
  br i1 %.lcssa41.i.i, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gm = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3033
  %i.gn = and i64 %i.gm, 9223372036854775807
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i, label %.noexc62.i.i, !prof !8

.noexc62.i.i:                                     ; preds = %bb.by
  %i.gp = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc104.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104.i:                                      ; preds = %.noexc62.i.i
  br i1 %i.gp, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i, label %bb.bz

bb.bz:                                            ; preds = %.noexc104.i
  store atomic i8 1, ptr %i.gl monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i: ; preds = %bb.bz, %.noexc104.i, %bb.by, %bb.bx
  %i.gq = atomicrmw xchg ptr %.lcssa45.i.i, i32 0 release, align 4
  %i.gr = icmp eq i32 %i.gq, 2
  br i1 %i.gr, label %bb.ca, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.i, !prof !11

bb.ca:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.lcssa45.i.i)
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.split-lp67.i.loopexit.split-lp.loopexit.split-lp, %.body58.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i, %.body.i.i, %bb.bt
  %lpad.loopexit.split-lp1 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.i: ; preds = %bb.ca, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i, %bb.as
  %.sroa.0.1.i.i = phi i1 [ %.sroa.0.2.i.i, %bb.ca ], [ %i.dz, %bb.as ], [ %.sroa.0.2.i.i, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i61.i.i ]
  br i1 %.sroa.0.1.i.i, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread.i, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread37.i

_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread37.i: ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish.exit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3011
  br label %bb.am

_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread.i: ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.i, %.noexc96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3011
  %i.gs = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnReEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 25)
          to label %bb.cj unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit93.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3011
  br i1 %0, label %.lr.ph.split.us.i.backedge, label %.loopexit49.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.backedge, %.preheader48.i
  %i.gt = invoke noundef zeroext i1 @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader29check_exit_loop_maybe_warning(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %bb.cb unwind label %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %.lr.ph.split.us.i
  br i1 %i.gt, label %.loopexit49.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3011
  invoke void @_RNvYNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueNtB4_16InputEventQueuer6readchB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.y)
          to label %bb.cd unwind label %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %bb.cc
  %i.gu = load i64, ptr %i.t, align 8, !range !19, !noalias !3011, !noundef !9 ; 7 uses
  %i.gv = icmp slt i64 %i.gu, 0
  %i.gw = add i64 %i.gu, -9223372036854775807
  %i.gx = select i1 %i.gv, i64 %i.gw, i64 0
  switch i64 %i.gx, label %.split.us.i [
    i64 0, label %.split164.i
    i64 1, label %thread-pre-split.us.i
    i64 2, label %thread-pre-split.us.i
    i64 3, label %bb.cf
    i64 4, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.gy = load i16, ptr %i.am, align 8, !range !3037, !noalias !3011, !noundef !9
  %i.gz = icmp samesign ult i16 %i.gy, 3
  br i1 %i.gz, label %thread-pre-split.us.i, label %.split167.us.i, !prof !3038

bb.cf:                                            ; preds = %bb.cd
  %i.ha = load i64, ptr %i.am, align 8, !range !3039, !noalias !3011, !noundef !9
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.cg, label %thread-pre-split.us.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader34signal_safe_reader_set_exit_signal(i32 noundef 1)
          to label %.thread-pre-split.us_crit_edge.i unwind label %.loopexit55.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread-pre-split.us_crit_edge.i:                 ; preds = %bb.cg
  %.pr.us.pre.i = load i64, ptr %i.t, align 8, !noalias !3011
  br label %thread-pre-split.us.i

thread-pre-split.us.i:                            ; preds = %.thread-pre-split.us_crit_edge.i, %bb.cf, %bb.ce, %bb.cd, %bb.cd
  %i.hc = phi i64 [ %i.gu, %bb.cd ], [ %i.gu, %bb.cd ], [ %.pr.us.pre.i, %.thread-pre-split.us_crit_edge.i ], [ %i.gu, %bb.cf ], [ %i.gu, %bb.ce ]
  %i.hd = icmp sgt i64 %i.hc, -1
  br i1 %i.hd, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %thread-pre-split.us.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t)
          to label %bb.ci unwind label %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch, %thread-pre-split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3011
  br label %.lr.ph.split.us.i.backedge

.lr.ph.split.us.i.backedge:                       ; preds = %bb.ci, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit93.i
  br label %.lr.ph.split.us.i

.split.us.i:                                      ; preds = %bb.cd
  unreachable

bb.cj:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader11should_exit.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3011
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i109.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %.body90.i unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i109.i: ; preds = %bb.cj
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit113.i unwind label %.loopexit50.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input13KeyInputEventEBH_.exit113.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3011
  br label %.loopexit49.i

.body121.i:                                       ; preds = %bb.cr, %bb.dg, %.body145.i, %bb.co
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body146.i, %.body145.i ], [ %i.hi, %bb.co ], [ %eh.lpad-body146.i, %bb.dg ], [ %lpad.loopexit.split-lp106, %bb.cr ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.cm

bb.cm:                                            ; preds = %.body121.i
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.body121.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body126.i unwind label %.body.i.critedge

bb.co:                                            ; preds = %bb.ak
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body121.i

bb.cp:                                            ; preds = %bb.ak
  %i.hj = icmp eq i64 %.sroa.815.0.copyload.i, 0  ; 2 uses
  %..i = select i1 %i.hj, ptr inttoptr (i64 1 to ptr), ptr @321
  %.62.i = select i1 %i.hj, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !3011
  store i64 0, ptr %i.au, align 8, !noalias !3011
  store ptr %..i, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !3011
  store i64 %.62.i, ptr %.sroa.534.0..sroa_idx.i, align 8, !noalias !3011
  store i64 0, ptr %i.av, align 8, !noalias !3011
  store ptr %.sroa.714.0.copyload.i, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !3011
  store i64 %.sroa.815.0.copyload.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !3011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3011
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 27, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef 3)
          to label %bb.cu unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cp, %bb.cv
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.cq unwind label %.critedge.split-lp

bb.cq:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.hk = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.hk)
          to label %bb.cr unwind label %.critedge.split-lp

bb.cr:                                            ; preds = %bb.cq
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.hl)
          to label %.body121.i unwind label %.body.i.critedge

bb.cs:                                            ; preds = %.lr.ph103
  %i.hm = add nuw nsw i64 %.sroa.0.1.i.i.i102, 1  ; 2 uses
end_hunk_9
begin_hunk_10_@_RNvNtNtCs8frGy5WneL6_4fish8builtins15fish_key_reader22setup_and_process_keys:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.dj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.2.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #36
          to label %.body126.i unwind label %.body.i.critedge

bb.dk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit.2.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i125.i unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body126.i unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i125.i: ; preds = %bb.dk
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit129.i unwind label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit129.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3011
  %i.im = icmp eq ptr %i.do, %i.df
  br i1 %i.im, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

.body.i.critedge:                                 ; preds = %bb.d, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %.body126.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.dj, %bb.dp, %bb.ds, %bb.dx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventEEB1e_.exit.i, %bb.cr
  %lpad.critedge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.cs, %.body.i.critedge, %bb.do, %bb.cm, %bb.y, %bb.k, %bb.j, %bb.i, %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.dn:                                            ; preds = %.thread382.i, %bb.ag
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.dp unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i unwind label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCs8frGy5WneL6_4fish3key3KeyReEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body135.i unwind label %.body.i.critedge

bb.dq:                                            ; preds = %bb.do
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.dr:                                            ; preds = %bb.ae
  %i.ip = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.dt unwind label %bb.ds     ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #36
          to label %.body135.i unwind label %.body.i.critedge

bb.dt:                                            ; preds = %bb.dr
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i134.i unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body135.i unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i134.i: ; preds = %bb.dt
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit138.i unwind label %.thread27.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit138.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3011
  %i.it = icmp eq ptr %i.cf, %i.cd
  br i1 %i.it, label %._crit_edge.i, label %.lr.ph259.i

.loopexit55.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cg, %.split167.us.i
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = load i64, ptr %i.t, align 8, !range !19, !noalias !3011, !noundef !9
  %i.iv = icmp sgt i64 %i.iu, -1
  br i1 %i.iv, label %.body90.i, label %bb.dx

.split167.us.i:                                   ; preds = %bb.ce
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @324, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #39
          to label %bb.dw unwind label %.loopexit55.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %.split167.us.i
  unreachable

bb.dx:                                            ; preds = %.loopexit55.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.t) #36
          to label %.body90.i unwind label %.body.i.critedge

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11tty_handoff10TtyHandoffEBF_.exit75.i: ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3011
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11tty_handoff10TtyHandoffEBF_.exit75.i
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventEEB1e_.exit.i unwind label %bb.ea

bb.dz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish11tty_handoff10TtyHandoffEBF_.exit75.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventEEB1e_.exit143.i unwind label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventEEB1e_.exit.i: ; preds = %bb.eb, %bb.dy, %bb.d
  %.pn60.i = phi { ptr, i32 } [ %.pn58.i, %bb.d ], [ %i.iy, %bb.eb ], [ %i.iw, %bb.dy ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.y) #36
          to label %.thread7 unwind label %.body.i.critedge

bb.eb:                                            ; preds = %bb.dz
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventEEB1e_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input8KeyEventEEB1e_.exit143.i: ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3011
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input15InputEventQueueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

bb.ec:                                            ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.iz = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @317, i64 noundef 1)
          to label %bb.ed unwind label %.thread10 ; 0 uses

bb.ed:                                            ; preds = %bb.ec
  %i.ja = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnReEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @332, i64 noundef 63)
          to label %bb.ee unwind label %.thread10 ; 0 uses

bb.ee:                                            ; preds = %bb.ed
  %i.jb = invoke { ptr, i1 } @_RNvNtCs8frGy5WneL6_4fish6common11shell_modes()
          to label %bb.ef unwind label %.thread10 ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  %i.jc = extractvalue { ptr, i1 } %i.jb, 0       ; 8 uses
  %i.jd = extractvalue { ptr, i1 } %i.jb, 1       ; 2 uses
  %i.je = zext i1 %i.jd to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @333, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 43, ptr %i.jg, align 8
  store i64 -1, ptr %i.ab, align 8
  %i.jh = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.eh unwind label %bb.eg     ; 2 uses

.body20:                                          ; preds = %.peel.begin, %bb.er, %bb.eg, %bb.eo, %bb.en
  %.pn = phi { ptr, i32 } [ %i.jy, %bb.eo ], [ %i.jx, %bb.en ], [ %i.ji, %bb.eg ], [ %i.kh, %bb.er ], [ %i.kh, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #36
          to label %.body22 unwind label %bb.fh

bb.eg:                                            ; preds = %bb.ej, %bb.ef
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body20

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jc) ]
  %i.jj = extractvalue { ptr, i64 } %i.jh, 0
  %i.jk = extractvalue { ptr, i64 } %i.jh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jm = load i8, ptr %i.jl, align 8, !noundef !9 ; 2 uses
  %i.jn = icmp ugt i8 %i.jm, -97
  br i1 %i.jn, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.jo = add nuw i8 %i.jm, 96
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.jp, ptr %i.jq, align 8
  store i64 4, ptr %i.z, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.js = load i8, ptr %i.jr, align 4, !noundef !9 ; 2 uses
  %i.jt = icmp ugt i8 %i.js, -97
  br i1 %i.jt, label %bb.em, label %bb.el

bb.ej:                                            ; preds = %bb.eh
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #39
          to label %bb.ek unwind label %bb.eg

bb.ek:                                            ; preds = %bb.em, %bb.ej
  unreachable

bb.el:                                            ; preds = %bb.ei
  %i.ju = add nuw i8 %i.js, 96
  %i.jv = zext i8 %i.ju to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  store i64 4, ptr %i.jw, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.jv, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jj, i64 noundef %i.jk, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.aa, i64 noundef 2)
          to label %bb.ep unwind label %bb.eo

bb.em:                                            ; preds = %bb.ei
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #39
          to label %bb.ek unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #36
          to label %.body20 unwind label %bb.fh

bb.eo:                                            ; preds = %bb.eq, %bb.el
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.aa) #36
          to label %.body20 unwind label %bb.fh

bb.ep:                                            ; preds = %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  %i.jz = load i8, ptr %i.ac, align 8, !range !16, !alias.scope !3043, !noundef !9
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.eq, label %.preheader.preheader, !prof !11

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3044
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !range !21, !alias.scope !3043, !noundef !9
  store i8 %i.kc, ptr %i.x, align 1, !noalias !3044
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #40
          to label %.noexc unwind label %bb.eo

.noexc:                                           ; preds = %bb.eq
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.kd = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.kd)
          to label %.preheader.1 unwind label %.peel.begin

.preheader.1:                                     ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ke = load i64, ptr %i.ab, align 8, !range !12, !alias.scope !3045, !noundef !9
  %i.kf = icmp eq i64 %i.ke, -1
  br i1 %i.kf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.et

.preheader.preheader:                             ; preds = %bb.ep
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa)
          to label %.preheader unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader, %.preheader.preheader
  %i.kg = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.kg, label %.body20, label %bb.er

bb.er:                                            ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.jw) #36
          to label %.body20 unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.et:                                            ; preds = %.preheader.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body22 unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.et
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.ew

.body22:                                          ; preds = %bb.ew, %bb.eu, %.body20
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body20 ], [ %i.kk, %bb.ew ], [ %i.ki, %bb.eu ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #36
          to label %.body25 unwind label %bb.fh

bb.ew:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %.preheader.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.kl = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.ey unwind label %bb.ex     ; 0 uses

bb.ex:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #36
          to label %.body25 unwind label %bb.fh

bb.ey:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body25 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ey
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.fb

.body25:                                          ; preds = %bb.fb, %bb.ez, %bb.ex, %.body22
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body22 ], [ %i.km, %bb.ex ], [ %i.kp, %bb.fb ], [ %i.kn, %bb.ez ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jc) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCse7JGOylGlDZ_3nix3sys7termios7TermiosEECs8frGy5WneL6_4fish(ptr nonnull %i.jc, i8 %i.je) #36
          to label %.thread unwind label %bb.fh

bb.fb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.body25

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.kq = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @317, i64 noundef 1)
          to label %bb.fc unwind label %bb.fb     ; 0 uses

bb.fc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  br i1 %i.jd, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ks = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.kt = and i64 %i.ks, 9223372036854775807
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.fe, !prof !8

bb.fe:                                            ; preds = %bb.fd
  %i.kv = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc28 unwind label %.thread10

.noexc28:                                         ; preds = %bb.fe
  br i1 %i.kv, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ff

bb.ff:                                            ; preds = %.noexc28
  store atomic i8 1, ptr %i.kr monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

end_hunk_10
begin_hunk_11_@_RNvNtNtCs8frGy5WneL6_4fish8builtins3set10show_scope:bb.a
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  switch i16 %2, label %bb.b [
    i16 1, label %bb.e
    i16 4, label %bb.c
    i16 8, label %bb.d
  ], !prof !3091

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @347, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.0 = phi i64 [ 9, %bb.d ], [ 6, %bb.c ], [ 5, %bb.a ]
  %.sroa.03.0 = phi ptr [ @199, %bb.d ], [ @193, %bb.c ], [ @195, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment4getf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i16 noundef %2) #41
  %i.x = load ptr, ptr %i.v, align 8, !noundef !9
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !noundef !9
  %i.aa = and i8 %i.z, 1
  %.not57 = icmp eq i8 %i.aa, 0
  br i1 %.not57, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bs

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @338, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 10, ptr %i.ac, align 8
  store i64 -1, ptr %i.t, align 8
  %i.ad = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @339, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 8, ptr %i.af, align 8
  store i64 -1, ptr %i.u, align 8
  %i.ag = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.t unwind label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #36
          to label %.body unwind label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.t, align 8, !range !12, !alias.scope !3092, !noundef !9
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.p

.body:                                            ; preds = %bb.bo, %bb.v, %bb.m, %bb.p, %.body100, %.body88, %bb.s, %bb.j
  %.pn72 = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %.pn70, %.body100 ], [ %.pn60, %.body88 ], [ %i.at, %bb.s ], [ %i.ak, %bb.m ], [ %i.aw, %bb.v ], [ %i.ap, %bb.p ], [ %i.ey, %bb.bo ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %i.am = load ptr, ptr %i.w, align 8, !alias.scope !3096, !nonnull !9, !noundef !9
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !3096
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit

bb.o:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit unwind label %bb.r

bb.p:                                             ; preds = %.invoke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i110, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.y, %bb.x
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit84, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %.pn = phi { ptr, i64 } [ %i.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit84 ], [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit ] ; 2 uses
  %.sroa.04.0 = extractvalue { ptr, i64 } %.pn, 0 ; 2 uses
  %.sroa.3.0 = extractvalue { ptr, i64 } %.pn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aq = load i8, ptr %i.y, align 8, !noundef !9
  %i.ar = and i8 %i.aq, 4
  %.not59 = icmp eq i8 %i.ar, 0
  br i1 %.not59, label %bb.x, label %bb.y

bb.r:                                             ; preds = %bb.o, %.body122, %bb.cn, %.body118, %.loopexit.split-lp2.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bi, %.body100, %bb.ba, %.body96, %bb.aq, %.body92, %.body88, %bb.ag, %bb.s, %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.s:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #36
          to label %.body unwind label %bb.r

bb.t:                                             ; preds = %bb.i
  %i.au = load i64, ptr %i.u, align 8, !range !12, !alias.scope !3097, !noundef !9
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit84, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit84 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit84: ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.q

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.z unwind label %bb.p

bb.y:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ad unwind label %bb.p

bb.z:                                             ; preds = %bb.x
  %i.ay = load i64, ptr %i.c, align 8, !range !20, !noundef !9
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !22, !noundef !9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.az, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.bd = load i64, ptr %i.bc, align 8
  br label %.invoke

bb.ab:                                            ; preds = %bb.z
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.bb, ptr %i.s, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.be, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.543.0..sroa_idx, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit91, %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.bf = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.346.0..sroa_idx, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.449.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @341, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 44, ptr %i.bj, align 8
  store i64 -1, ptr %i.m, align 8
  %i.bk = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.ap unwind label %bb.ao     ; 2 uses

bb.ad:                                            ; preds = %bb.y
  %i.bl = load i64, ptr %i.d, align 8, !range !20, !noundef !9
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !22, !noundef !9 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.bm, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.bq = load i64, ptr %i.bp, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.aa, %bb.ae
  %i.br = phi i64 [ %i.bo, %bb.ae ], [ %i.bb, %bb.aa ]
  %i.bs = phi i64 [ %i.bq, %bb.ae ], [ %i.bd, %bb.aa ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bs) #39
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bt = load ptr, ptr %i.bp, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bu = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 32, ptr %i.bt, align 4
  store i64 %i.bo, ptr %i.r, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.bt, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.640.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @340, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 15, ptr %i.bw, align 8
  store i64 -1, ptr %i.q, align 8
  %i.bx = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %bb.ah unwind label %bb.ag     ; 2 uses

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #36
          to label %.body88 unwind label %bb.r

bb.ah:                                            ; preds = %bb.af
  %i.bz = extractvalue { ptr, i64 } %i.bx, 0
  %i.ca = extractvalue { ptr, i64 } %i.bx, 1      ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef range(i64 0, 4611686018427387904) %i.ca)
          to label %.noexc85 unwind label %bb.ag

.noexc85:                                         ; preds = %bb.ah
  %i.cb = load i64, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !3098, !noundef !9 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 2305843009213693952
  call void @llvm.assume(i1 %i.cc)
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc85
  %i.cd = load ptr, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !3098, !nonnull !9, !noundef !9
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cb
  %i.cf = shl nuw nsw i64 %i.ca, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ce, ptr nonnull readonly align 4 %i.bz, i64 %i.cf, i1 false)
  %.pre.i.i = load i64, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !3098
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.noexc85
  %i.cg = phi i64 [ %.pre.i.i, %bb.ai ], [ %i.cb, %.noexc85 ]
  %i.ch = add i64 %i.cg, %i.ca
  store i64 %i.ch, ptr %.sroa.640.0..sroa_idx, align 8, !alias.scope !3098
  %i.ci = load i64, ptr %i.q, align 8, !range !12, !alias.scope !3099, !noundef !9
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit91, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i87 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body88 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i87: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit91 unwind label %bb.an

.body88:                                          ; preds = %bb.an, %bb.al, %bb.ag
  %.pn60 = phi { ptr, i32 } [ %i.by, %bb.ag ], [ %i.cm, %bb.an ], [ %i.ck, %bb.al ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #36
          to label %.body unwind label %bb.r

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i87
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body88

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit91: ; preds = %bb.aj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ac

.body92:                                          ; preds = %bb.at, %bb.au, %bb.ao, %bb.aq
  %.pn62 = phi { ptr, i32 } [ %i.cy, %bb.aq ], [ %i.cn, %bb.ao ], [ %i.dm, %bb.au ], [ %i.dm, %bb.at ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #36
          to label %.body96 unwind label %bb.r

bb.ao:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body92

bb.ap:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0) ]
  %i.co = extractvalue { ptr, i64 } %i.bk, 0
  %i.cp = extractvalue { ptr, i64 } %i.bk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !9, !noundef !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !9
  store i64 1, ptr %i.l, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %0, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %1, ptr %.sroa.410.0..sroa_idx, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 1, ptr %i.cu, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %.sroa.03.0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.4.0, ptr %.sroa.517.0..sroa_idx, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 1, ptr %i.cv, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %.sroa.04.0, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 %.sroa.3.0, ptr %.sroa.520.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i64 1, ptr %i.cw, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store ptr %i.cr, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %i.ct, ptr %.sroa.524.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i64 4, ptr %i.cx, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i64 %i.bh, ptr %.sroa.427.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.co, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.l, i64 noundef 5)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj5_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(160) %i.l) #36
          to label %.body92 unwind label %bb.r

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  %i.cz = load i8, ptr %i.n, align 8, !range !16, !alias.scope !3100, !noundef !9
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.as, label %.preheader6.preheader, !prof !11

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3101
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !range !21, !alias.scope !3100, !noundef !9
  store i8 %i.dc, ptr %i.a, align 1, !noalias !3101
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @342) #40
          to label %.noexc75 unwind label %bb.aq

.noexc75:                                         ; preds = %bb.as
  unreachable

.preheader6:                                      ; preds = %.preheader6.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dd)
          to label %.preheader6.1 unwind label %bb.au

.preheader6.1:                                    ; preds = %.preheader6
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.de)
          to label %.preheader6.2 unwind label %bb.au

.preheader6.2:                                    ; preds = %.preheader6.1
  %i.df = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.df)
          to label %.preheader6.3 unwind label %bb.au

.preheader6.3:                                    ; preds = %.preheader6.2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dg)
          to label %.preheader6.4 unwind label %bb.au

.preheader6.4:                                    ; preds = %.preheader6.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dh = load i64, ptr %i.m, align 8, !range !12, !alias.scope !3102, !noundef !9
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit99, label %bb.aw

.preheader6.preheader:                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %.preheader6 unwind label %bb.au

bb.at:                                            ; preds = %.lr.ph35
  %i.dj = add nuw nsw i64 %.sroa.0.1.i.i33, 1     ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 5
  br i1 %i.dk, label %.body92, label %.lr.ph35

bb.au:                                            ; preds = %.preheader6.3, %.preheader6.2, %.preheader6.1, %.preheader6, %.preheader6.preheader
  %i.dl = phi i1 [ false, %.preheader6.preheader ], [ false, %.preheader6 ], [ false, %.preheader6.1 ], [ false, %.preheader6.2 ], [ true, %.preheader6.3 ]
  %.lcssa41 = phi i64 [ 1, %.preheader6.preheader ], [ 2, %.preheader6 ], [ 3, %.preheader6.1 ], [ 4, %.preheader6.2 ], [ 5, %.preheader6.3 ]
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dl, label %.body92, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.au, %bb.at
  %.sroa.0.1.i.i33 = phi i64 [ %i.dj, %bb.at ], [ %.lcssa41, %bb.au ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sroa.0.1.i.i33
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dn) #36
          to label %bb.at unwind label %bb.av

bb.av:                                            ; preds = %.lr.ph35
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.aw:                                            ; preds = %.preheader6.4
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i95 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body96 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i95: ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit99 unwind label %bb.az

.body96:                                          ; preds = %bb.az, %bb.ax, %.body92
  %.pn64 = phi { ptr, i32 } [ %.pn62, %.body92 ], [ %i.dr, %bb.az ], [ %i.dp, %bb.ax ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #36
          to label %.body100 unwind label %bb.r

bb.az:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i95
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body96

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit99: ; preds = %.preheader6.4, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ds = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.bb unwind label %bb.ba     ; 0 uses

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit99
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #36
          to label %.body100 unwind label %bb.r

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit99
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body100 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body100:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cs, %bb.bm, %bb.bc, %.body122, %bb.bi, %bb.ba, %.body96
  %.pn70 = phi { ptr, i32 } [ %.pn64, %.body96 ], [ %.pn67.pn, %.body122 ], [ %i.en, %bb.bi ], [ %i.dt, %bb.ba ], [ %i.du, %bb.bc ], [ %i.ew, %bb.bm ], [ %i.gm, %bb.cs ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #36
          to label %.body unwind label %bb.r

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i127, %bb.bw, %bb.bu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i104, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body100

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dw = invoke noundef i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar9flags_for(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.dx = and i8 %i.dw, 2
  %.not66 = icmp eq i8 %i.dx, 0
  br i1 %.not66, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dy = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendcEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, i32 noundef 10)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @343, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 11, ptr %i.ea, align 8
  store i64 -1, ptr %i.j, align 8
  %i.eb = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.bj unwind label %bb.bi     ; 2 uses

bb.bh:                                            ; preds = %bb.bf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit108
  %.not14 = icmp eq i64 %i.bh, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bh
  %i.ec = icmp ugt i64 %i.bh, 100
  %i.ed = add i64 %i.bh, -50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.346.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.449.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  br label %bb.bq

bb.bi:                                            ; preds = %bb.bj, %bb.bg
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #36
          to label %.body100 unwind label %bb.r

bb.bj:                                            ; preds = %bb.bg
  %i.eo = extractvalue { ptr, i64 } %i.eb, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  %4 = extractvalue { ptr, i64 } %i.eb, 1
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %4
  store ptr @38, ptr %i.k, align 8, !alias.scope !3103
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @38, i64 1), ptr %i.eq, align 8, !alias.scope !3103
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.eo, ptr %i.er, align 8, !alias.scope !3103
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.ep, ptr %i.es, align 8, !alias.scope !3103
  %i.et = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtB15_3str4iter5CharsNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.bk unwind label %bb.bi     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.eu = load i64, ptr %i.j, align 8, !range !12, !alias.scope !3104, !noundef !9
  %i.ev = icmp eq i64 %i.eu, -1
  br i1 %i.ev, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit108, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i104 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body100 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i104: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit108: ; preds = %bb.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bh

._crit_edge:                                      ; preds = %.backedge, %bb.bh
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i110 unwind label %bb.bo

bb.bo:                                            ; preds = %._crit_edge
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i110: ; preds = %._crit_edge
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit114 unwind label %bb.p

bb.bq:                                            ; preds = %.lr.ph, %.backedge
  %.sroa.052.013 = phi i64 [ 0, %.lr.ph ], [ %i.fa, %.backedge ] ; 5 uses
  %i.fa = add nuw i64 %.sroa.052.013, 1           ; 3 uses
  br i1 %i.ec, label %bb.bt, label %bb.bw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit114: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  %i.fb = load ptr, ptr %i.w, align 8, !alias.scope !3108, !nonnull !9, !noundef !9
  %i.fc = atomicrmw add ptr %i.fb, i64 -1 release, align 8, !noalias !3108
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit115

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit114
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #35
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit115

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit115: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit114, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit115, %bb.g
  ret void

bb.bt:                                            ; preds = %bb.bq
  %i.fe = icmp eq i64 %.sroa.052.013, 50
  br i1 %i.fe, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ff = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream8appendlnRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @344, i64 noundef 1)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.fg = icmp ugt i64 %.sroa.052.013, 49
  %i.fh = icmp ult i64 %.sroa.052.013, %i.ed
  %or.cond = and i1 %i.fg, %i.fh
  br i1 %or.cond, label %.backedge, label %bb.bw

bb.bw:                                            ; preds = %bb.bq, %bb.bv
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %.sroa.052.013 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !9, !noundef !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !9
  invoke void @_RNvCs5UXtnEuoeIl_11fish_common13escape_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fk, i64 noundef %i.fm, i32 noundef 0, i32 3)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.346.0..sroa_idx47, align 8
  store i64 0, ptr %.sroa.449.0..sroa_idx50, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fn = load ptr, ptr %i.ef, align 8, !nonnull !9, !noundef !9
  %i.fo = load i64, ptr %i.eg, align 8, !noundef !9
  store i64 1, ptr %i.e, align 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 4, ptr %i.eh, align 8
  store i64 %i.fa, ptr %.sroa.432.0..sroa_idx, align 8
  store i64 1, ptr %i.ei, align 8
  store ptr %i.fn, ptr %.sroa.435.0..sroa_idx, align 8
  store i64 %i.fo, ptr %.sroa.536.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 14, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef 3)
          to label %bb.by unwind label %.loopexit.split-lp2.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bx, %bb.bz
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #36
          to label %.body118 unwind label %bb.r

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  %i.fp = load i8, ptr %i.f, align 8, !range !16, !alias.scope !3109, !noundef !9
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %bb.bz, label %.preheader.preheader, !prof !11

.preheader.preheader:                             ; preds = %bb.by
  %i.fr = load i64, ptr %i.e, align 8, !range !18, !alias.scope !3110, !noundef !9
  switch i64 %i.fr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit [
    i64 2, label %bb.ca
    i64 3, label %bb.cd
  ]

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3111
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !range !21, !alias.scope !3109, !noundef !9
  store i8 %i.ft, ptr %i.b, align 1, !noalias !3111
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #40
          to label %.noexc unwind label %.loopexit.split-lp2.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %.preheader.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.cj, %bb.ch, %bb.ca
  %.lcssa21 = phi i64 [ 1, %bb.ca ], [ 2, %bb.ch ], [ 3, %bb.cj ]
  %.lcssa18 = phi ptr [ %.sroa.4.0..sroa_idx, %bb.ca ], [ %i.ek, %bb.ch ], [ %i.em, %bb.cj ]
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa18)
          to label %.body133 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ca
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit unwind label %bb.cl

bb.cd:                                            ; preds = %.preheader.preheader
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i132 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.ci, %bb.cg, %bb.cd
  %.lcssa19 = phi i64 [ 1, %bb.cd ], [ 2, %bb.cg ], [ 3, %bb.ci ]
  %.lcssa = phi ptr [ %.sroa.4.0..sroa_idx, %bb.cd ], [ %i.ej, %bb.cg ], [ %i.el, %bb.ci ]
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa)
          to label %.body133 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_11
begin_hunk_12_@_RNvNtNtCs8frGy5WneL6_4fish8builtins3set21split_var_and_indexes:bb.a
  br i1 %i.bl, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %.noexc132.i
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !3348
  br label %.invoke.i

bb.ab:                                            ; preds = %.noexc132.i
  %i.bq = load ptr, ptr %i.bo, align 8, !noalias !3348, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = icmp ule i64 %i.bj, %i.bn
  call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3348
  %.not.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i, label %bb.co, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = shl nuw nsw i64 %i.bj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr align 4 %i.bi, i64 %i.bs, i1 false), !noalias !3349
  br label %bb.co

.invoke138.i.peel.begin:                          ; preds = %bb.y
  %i.bt = load i64, ptr %i.al, align 8, !noalias !3343, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3343
  %i.bu = load i64, ptr %i.k, align 8, !noalias !3343, !noundef !9
  %i.bv = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.0.i, i64 noundef %.sroa.25.0.i, i64 noundef %i.bu)
          to label %.preheader29.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 2 uses

.preheader29.i.peel:                              ; preds = %.invoke138.i.peel.begin
  %.sroa.25.2.i.peel = extractvalue { ptr, i64 } %i.bv, 1 ; 6 uses
  %.sroa.048.2.i.peel = extractvalue { ptr, i64 } %i.bv, 0 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.048.2.i.peel) ]
  %i.bw = icmp eq i64 %.sroa.25.2.i.peel, 0
  br i1 %i.bw, label %.thread16.i, label %bb.ad

bb.ad:                                            ; preds = %.preheader29.i.peel
  %i.bx = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.2.i.peel, i64 noundef %.sroa.25.2.i.peel, i64 noundef 0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 7 uses

bb.ae:                                            ; preds = %bb.ad
  switch i32 %i.bx, label %bb.af [
    i32 32, label %.invoke138.i.preheader
    i32 13, label %.invoke138.i.preheader
    i32 12, label %.invoke138.i.preheader
    i32 11, label %.invoke138.i.preheader
    i32 10, label %.invoke138.i.preheader
    i32 9, label %.invoke138.i.preheader
  ]

bb.af:                                            ; preds = %bb.ae
  %i.by = icmp samesign ult i32 %i.bx, 133
  br i1 %i.by, label %.thread16.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = lshr i32 %i.bx, 8
  switch i32 %i.bz, label %.thread16.i [
    i32 0, label %bb.ak
    i32 22, label %bb.aj
    i32 32, label %bb.ai
    i32 48, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ca = icmp eq i32 %i.bx, 12288
  %i.cb = zext i1 %i.ca to i8
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.cc = and i32 %i.bx, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !3343, !noundef !9
  %i.cg = lshr i8 %i.cf, 1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ag
  %i.ch = icmp eq i32 %i.bx, 5760
  %i.ci = zext i1 %i.ch to i8
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.cj = and i32 %i.bx, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !3343, !noundef !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.sroa.0.0.i134.i.peel = phi i8 [ %i.cb, %bb.ah ], [ %i.cm, %bb.ak ], [ %i.ci, %bb.aj ], [ %i.cg, %bb.ai ]
  %i.cn = trunc i8 %.sroa.0.0.i134.i.peel to i1
  br i1 %i.cn, label %.invoke138.i.preheader, label %.thread16.i

.invoke138.i.preheader:                           ; preds = %bb.al, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  br label %.invoke138.i

.invoke138.i:                                     ; preds = %.invoke138.i.backedge, %.invoke138.i.preheader
  %i.co = phi ptr [ %.sroa.048.2.i.peel, %.invoke138.i.preheader ], [ %.sroa.048.2.i, %.invoke138.i.backedge ]
  %i.cp = phi i64 [ %.sroa.25.2.i.peel, %.invoke138.i.preheader ], [ %.sroa.25.2.i, %.invoke138.i.backedge ]
  %i.cq = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.co, i64 noundef %i.cp, i64 noundef 1)
          to label %.preheader29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 2 uses

.preheader29.i:                                   ; preds = %.invoke138.i
  %.sroa.25.2.i = extractvalue { ptr, i64 } %i.cq, 1 ; 6 uses
  %.sroa.048.2.i = extractvalue { ptr, i64 } %i.cq, 0 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.048.2.i) ]
  %i.cr = icmp eq i64 %.sroa.25.2.i, 0
  br i1 %i.cr, label %.thread16.i, label %bb.am

bb.am:                                            ; preds = %.preheader29.i
  %i.cs = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.2.i, i64 noundef %.sroa.25.2.i, i64 noundef 0)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 7 uses

bb.an:                                            ; preds = %bb.am
  switch i32 %i.cs, label %bb.ao [
    i32 32, label %.invoke138.i.backedge
    i32 13, label %.invoke138.i.backedge
    i32 12, label %.invoke138.i.backedge
    i32 11, label %.invoke138.i.backedge
    i32 10, label %.invoke138.i.backedge
    i32 9, label %.invoke138.i.backedge
  ]

.invoke138.i.backedge:                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.au
  br label %.invoke138.i, !llvm.loop !3326

bb.ao:                                            ; preds = %bb.an
  %i.ct = icmp samesign ult i32 %i.cs, 133
  br i1 %i.ct, label %.thread16.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cu = lshr i32 %i.cs, 8
  switch i32 %i.cu, label %.thread16.i [
    i32 0, label %bb.as
    i32 22, label %bb.aq
    i32 32, label %bb.at
    i32 48, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.cv = icmp eq i32 %i.cs, 5760
  %i.cw = zext i1 %i.cv to i8
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.cx = icmp eq i32 %i.cs, 12288
  %i.cy = zext i1 %i.cx to i8
  br label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.cz = and i32 %i.cs, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !3343, !noundef !9
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.dd = and i32 %i.cs, 255
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !3343, !noundef !9
  %i.dh = lshr i8 %i.dg, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.sroa.0.0.i134.i = phi i8 [ %i.cy, %bb.ar ], [ %i.dc, %bb.as ], [ %i.cw, %bb.aq ], [ %i.dh, %bb.at ]
  %i.di = trunc i8 %.sroa.0.0.i134.i to i1
  br i1 %i.di, label %.invoke138.i.backedge, label %.thread16.i

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internals1_0B7_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i, %.thread16.i, %bb.v
  %.sroa.25.115.i = phi i64 [ %.sroa.25.2.i.lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.25.2.i.lcssa, %.thread16.i ], [ %.sroa.25.0.i, %bb.v ] ; 4 uses
  %.sroa.048.114.i = phi ptr [ %.sroa.048.2.i.lcssa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.048.2.i.lcssa, %.thread16.i ], [ %.sroa.048.0.i, %bb.v ] ; 4 uses
  %.sroa.0.0.i.i = phi i64 [ %i.bd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i ], [ %i.bt, %.thread16.i ], [ 1, %bb.v ] ; 4 uses
  %i.dj = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.114.i, i64 noundef %.sroa.25.115.i, i64 noundef 0)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

bb.av:                                            ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internals1_0B7_.exit.i
  %i.dk = icmp eq i32 %i.dj, 46
  br i1 %i.dk, label %bb.aw, label %bb.cm

bb.aw:                                            ; preds = %bb.av
  %i.dl = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.114.i, i64 noundef %.sroa.25.115.i, i64 noundef 1)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

bb.ax:                                            ; preds = %bb.aw
  %i.dm = icmp eq i32 %i.dl, 46
  br i1 %i.dm, label %bb.ay, label %bb.cm

bb.ay:                                            ; preds = %bb.ax
  %i.dn = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.114.i, i64 noundef %.sroa.25.115.i, i64 noundef 2)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 8 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1      ; 5 uses
  %i.dq = load i64, ptr %i.k, align 8, !noalias !3343, !noundef !9 ; 2 uses
  %i.dr = load i64, ptr %.sroa.593.0..sroa_idx.i, align 8, !noalias !3343, !noundef !9 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 1152921504606846976
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3343
  store i8 0, ptr %i.ao, align 4, !noalias !3343
  store i32 0, ptr %i.g, align 4, !noalias !3343
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dp
  invoke void @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_impliNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noundef nonnull %i.do, ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

bb.bb:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  %i.dv = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.do, i64 noundef %i.dp, i64 noundef 0)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

bb.bc:                                            ; preds = %bb.bb
  %i.dw = icmp eq i32 %i.dv, 93
  br i1 %i.dw, label %.thread18.i, label %bb.ba

.thread27.i:                                      ; preds = %bb.cc, %bb.bx, %bb.bw, %.preheader.i, %bb.bt, %bb.bo, %bb.bn, %.preheader.i.peel
  %.sroa.25.4.i.lcssa = phi i64 [ 0, %.preheader.i.peel ], [ %.sroa.25.4.i.peel, %bb.bn ], [ %.sroa.25.4.i.peel, %bb.bo ], [ %.sroa.25.4.i.peel, %bb.bt ], [ %.sroa.25.4.i, %bb.cc ], [ %.sroa.25.4.i, %bb.bx ], [ %.sroa.25.4.i, %bb.bw ], [ 0, %.preheader.i ] ; 2 uses
  %.sroa.048.4.i.lcssa = phi ptr [ %.sroa.048.4.i.peel, %.preheader.i.peel ], [ %.sroa.048.4.i.peel, %bb.bn ], [ %.sroa.048.4.i.peel, %bb.bo ], [ %.sroa.048.4.i.peel, %bb.bt ], [ %.sroa.048.4.i, %.preheader.i ], [ %.sroa.048.4.i, %bb.bw ], [ %.sroa.048.4.i, %bb.bx ], [ %.sroa.048.4.i, %bb.cc ] ; 2 uses
  %i.dx = icmp sgt i64 %i.es, -1
  br i1 %i.dx, label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internals1_0B7_.exit138.i, label %.thread18.i

.thread18.i:                                      ; preds = %.thread27.i, %bb.bc
  %.sroa.25.325.i = phi i64 [ %.sroa.25.4.i.lcssa, %.thread27.i ], [ %i.dp, %bb.bc ]
  %.sroa.048.323.i = phi ptr [ %.sroa.048.4.i.lcssa, %.thread27.i ], [ %i.do, %bb.bc ]
  %.sroa.047.022.i = phi i64 [ %i.es, %.thread27.i ], [ -1, %bb.bc ]
  br i1 %i.am, label %bb.bd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i135.i

bb.bd:                                            ; preds = %.thread18.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3350
  br label %.invoke131.i

.invoke131.i:                                     ; preds = %bb.bd, %bb.x
  %.sink.i = phi ptr [ %i.d, %bb.x ], [ %i.b, %bb.bd ] ; 2 uses
  store i8 2, ptr %.sink.i, align 1, !noalias !3343
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %.sink.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #40
          to label %.cont132.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

.cont132.i:                                       ; preds = %.invoke131.i
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i135.i: ; preds = %.thread18.i
  %i.dy = add i64 %.sroa.047.022.i, %i.an
  br label %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internals1_0B7_.exit138.i

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3343
  %i.dz = load i8, ptr %i.h, align 8, !range !16, !noalias !3343, !noundef !9
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.bf, label %.invoke137.i.peel.begin

bb.bf:                                            ; preds = %bb.be
  %i.eb = load i64, ptr %i.k, align 8, !noalias !3351, !noundef !9 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.dq
  br i1 %i.ec, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ed = sub nuw i64 %i.eb, %i.dq
  %i.ee = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.do, i64 noundef %i.dp, i64 noundef %i.ed)
          to label %.noexc142.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 2 uses

.noexc142.i:                                      ; preds = %bb.bg
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0
  %i.eg = extractvalue { ptr, i64 } %i.ee, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3351
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.eg, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc143.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

.noexc143.i:                                      ; preds = %.noexc142.i
  %i.eh = load i64, ptr %i.a, align 8, !range !20, !noalias !3351, !noundef !9
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !range !22, !noalias !3351, !noundef !9 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ei, label %bb.bi, label %bb.bj, !prof !11

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #40
          to label %.noexc144.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

.noexc144.i:                                      ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %.noexc143.i
  %i.em = load i64, ptr %i.el, align 8, !noalias !3351
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.bi, %bb.aa
  %i.en = phi i64 [ %i.ek, %bb.bi ], [ %i.bn, %bb.aa ]
  %i.eo = phi i64 [ %i.em, %bb.bi ], [ %i.bp, %bb.aa ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.eo) #39
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bj:                                            ; preds = %.noexc143.i
  %i.ep = load ptr, ptr %i.el, align 8, !noalias !3351, !nonnull !9, !noundef !9 ; 2 uses
  %i.eq = icmp ule i64 %i.eg, %i.ek
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3351
  %.not.i139.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i139.i, label %bb.ci, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.er = shl nuw nsw i64 %i.eg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr align 4 %i.ef, i64 %i.er, i1 false), !noalias !3352
  br label %bb.ci

.invoke137.i.peel.begin:                          ; preds = %bb.be
  %i.es = load i64, ptr %i.ap, align 8, !noalias !3343, !noundef !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3343
  %i.et = load i64, ptr %i.k, align 8, !noalias !3343, !noundef !9
  %i.eu = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.do, i64 noundef %i.dp, i64 noundef %i.et)
          to label %.preheader.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 2 uses

.preheader.i.peel:                                ; preds = %.invoke137.i.peel.begin
  %.sroa.25.4.i.peel = extractvalue { ptr, i64 } %i.eu, 1 ; 6 uses
  %.sroa.048.4.i.peel = extractvalue { ptr, i64 } %i.eu, 0 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.048.4.i.peel) ]
  %i.ev = icmp eq i64 %.sroa.25.4.i.peel, 0
  br i1 %i.ev, label %.thread27.i, label %bb.bl

bb.bl:                                            ; preds = %.preheader.i.peel
  %i.ew = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.4.i.peel, i64 noundef %.sroa.25.4.i.peel, i64 noundef 0)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 7 uses

bb.bm:                                            ; preds = %bb.bl
  switch i32 %i.ew, label %bb.bn [
    i32 32, label %.invoke137.i.preheader
    i32 13, label %.invoke137.i.preheader
    i32 12, label %.invoke137.i.preheader
    i32 11, label %.invoke137.i.preheader
    i32 10, label %.invoke137.i.preheader
    i32 9, label %.invoke137.i.preheader
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.ex = icmp samesign ult i32 %i.ew, 133
  br i1 %i.ex, label %.thread27.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ey = lshr i32 %i.ew, 8
  switch i32 %i.ey, label %.thread27.i [
    i32 0, label %bb.bs
    i32 22, label %bb.br
    i32 32, label %bb.bq
    i32 48, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ez = icmp eq i32 %i.ew, 12288
  %i.fa = zext i1 %i.ez to i8
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  %i.fb = and i32 %i.ew, 255
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !noalias !3343, !noundef !9
  %i.ff = lshr i8 %i.fe, 1
  br label %bb.bt

bb.br:                                            ; preds = %bb.bo
  %i.fg = icmp eq i32 %i.ew, 5760
  %i.fh = zext i1 %i.fg to i8
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.fi = and i32 %i.ew, 255
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !noalias !3343, !noundef !9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.sroa.0.0.i146.i.peel = phi i8 [ %i.fa, %bb.bp ], [ %i.fl, %bb.bs ], [ %i.fh, %bb.br ], [ %i.ff, %bb.bq ]
  %i.fm = trunc i8 %.sroa.0.0.i146.i.peel to i1
  br i1 %i.fm, label %.invoke137.i.preheader, label %.thread27.i

.invoke137.i.preheader:                           ; preds = %bb.bt, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  br label %.invoke137.i

.invoke137.i:                                     ; preds = %.invoke137.i.backedge, %.invoke137.i.preheader
  %i.fn = phi ptr [ %.sroa.048.4.i.peel, %.invoke137.i.preheader ], [ %.sroa.048.4.i, %.invoke137.i.backedge ]
  %i.fo = phi i64 [ %.sroa.25.4.i.peel, %.invoke137.i.preheader ], [ %.sroa.25.4.i, %.invoke137.i.backedge ]
  %i.fp = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fn, i64 noundef %i.fo, i64 noundef 1)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 2 uses

.preheader.i:                                     ; preds = %.invoke137.i
  %.sroa.25.4.i = extractvalue { ptr, i64 } %i.fp, 1 ; 6 uses
  %.sroa.048.4.i = extractvalue { ptr, i64 } %i.fp, 0 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.048.4.i) ]
  %i.fq = icmp eq i64 %.sroa.25.4.i, 0
  br i1 %i.fq, label %.thread27.i, label %bb.bu

bb.bu:                                            ; preds = %.preheader.i
  %i.fr = invoke noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.048.4.i, i64 noundef %.sroa.25.4.i, i64 noundef 0)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344 ; 7 uses

bb.bv:                                            ; preds = %bb.bu
  switch i32 %i.fr, label %bb.bw [
    i32 32, label %.invoke137.i.backedge
    i32 13, label %.invoke137.i.backedge
    i32 12, label %.invoke137.i.backedge
    i32 11, label %.invoke137.i.backedge
    i32 10, label %.invoke137.i.backedge
    i32 9, label %.invoke137.i.backedge
  ]

.invoke137.i.backedge:                            ; preds = %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.cc
  br label %.invoke137.i, !llvm.loop !3332

bb.bw:                                            ; preds = %bb.bv
  %i.fs = icmp samesign ult i32 %i.fr, 133
  br i1 %i.fs, label %.thread27.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ft = lshr i32 %i.fr, 8
  switch i32 %i.ft, label %.thread27.i [
    i32 0, label %bb.ca
    i32 22, label %bb.by
    i32 32, label %bb.cb
    i32 48, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.fu = icmp eq i32 %i.fr, 5760
  %i.fv = zext i1 %i.fu to i8
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  %i.fw = icmp eq i32 %i.fr, 12288
  %i.fx = zext i1 %i.fw to i8
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  %i.fy = and i32 %i.fr, 255
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !3343, !noundef !9
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.gc = and i32 %i.fr, 255
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !3343, !noundef !9
  %i.gg = lshr i8 %i.gf, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.sroa.0.0.i146.i = phi i8 [ %i.fx, %bb.bz ], [ %i.gb, %bb.ca ], [ %i.fv, %bb.by ], [ %i.gg, %bb.cb ]
  %i.gh = trunc i8 %.sroa.0.0.i146.i to i1
  br i1 %i.gh, label %.invoke137.i.backedge, label %.thread27.i

_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internals1_0B7_.exit138.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i135.i, %.thread27.i
  %.sroa.25.326.i = phi i64 [ %.sroa.25.325.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i135.i ], [ %.sroa.25.4.i.lcssa, %.thread27.i ] ; 2 uses
  %.sroa.048.324.i = phi ptr [ %.sroa.048.323.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i135.i ], [ %.sroa.048.4.i.lcssa, %.thread27.i ] ; 2 uses
  %.sroa.0.0.i136.i = phi i64 [ %i.dy, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i135.i ], [ %i.es, %.thread27.i ] ; 3 uses
  %i.gi = icmp slt i64 %.sroa.0.0.i.i, %.sroa.0.0.i136.i
  br i1 %i.gi, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internals1_0B7_.exit138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3343
  store i64 %.sroa.0.0.i136.i, ptr %i.e, align 8, !noalias !3343
  store i64 %.sroa.0.0.i.i, ptr %.sroa.486.0..sroa_idx.i, align 8, !noalias !3343
  store i8 0, ptr %.sroa.587.0..sroa_idx.i, align 8, !noalias !3343
  invoke void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtB17_3ops5range14RangeInclusiveiEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

bb.ce:                                            ; preds = %_RNCNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internals1_0B7_.exit138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3343
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !noalias !3343
  store i64 %.sroa.0.0.i136.i, ptr %i.aq, align 8, !noalias !3343
  store i8 0, ptr %i.ar, align 8, !noalias !3343
  invoke void @_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeciE14extend_trustedINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusiveiEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3343
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3343
  br label %bb.ch

bb.ch:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciE8push_mutCs8frGy5WneL6_4fish.exit.i, %bb.cg, %bb.cf
  %.sroa.048.5.i = phi ptr [ %.sroa.048.114.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciE8push_mutCs8frGy5WneL6_4fish.exit.i ], [ %.sroa.048.324.i, %bb.cg ], [ %.sroa.048.324.i, %bb.cf ]
  %.sroa.25.5.i = phi i64 [ %.sroa.25.115.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciE8push_mutCs8frGy5WneL6_4fish.exit.i ], [ %.sroa.25.326.i, %bb.cg ], [ %.sroa.25.326.i, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3343
  br label %bb.o

bb.ci:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3343
  br label %bb.cj

bb.cj:                                            ; preds = %bb.co, %bb.ci
  %.sink135.i = phi i64 [ %i.bn, %bb.co ], [ %i.ek, %bb.ci ]
  %.sink134.in.i = phi ptr [ %i.bq, %bb.co ], [ %i.ep, %bb.ci ]
  %.sink133.i = phi i64 [ %i.bj, %bb.co ], [ %i.eg, %bb.ci ]
  %.sink134.i = ptrtoint ptr %.sink134.in.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3343
  call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  %i.gj = load ptr, ptr %i.t, align 8, !alias.scope !3353, !noalias !3343, !noundef !9 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit149.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gl = atomicrmw add ptr %i.gj, i64 -1 release, align 8, !noalias !3354
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit149.i

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit149.i unwind label %bb.cp, !noalias !3344

bb.cm:                                            ; preds = %bb.ax, %bb.av
  %i.gn = load i64, ptr %.sroa.593.0..sroa_idx.i, align 8, !alias.scope !3355, !noalias !3343, !noundef !9 ; 3 uses
  %i.go = load i64, ptr %i.m, align 8, !range !10, !alias.scope !3355, !noalias !3343, !noundef !9
  %i.gp = icmp eq i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.cn, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciE8push_mutCs8frGy5WneL6_4fish.exit.i

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #35
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciE8push_mutCs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3344

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciE8push_mutCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.cn, %bb.cm
  %i.gq = load ptr, ptr %.sroa.492.0..sroa_idx.i, align 8, !alias.scope !3355, !noalias !3343, !nonnull !9, !noundef !9
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gn
  store i64 %.sroa.0.0.i.i, ptr %i.gr, align 8, !noalias !3344
  %i.gs = add i64 %i.gn, 1
  store i64 %i.gs, ptr %.sroa.593.0..sroa_idx.i, align 8, !alias.scope !3355, !noalias !3343
  br label %bb.ch

bb.co:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3343
  br label %bb.cj

bb.cp:                                            ; preds = %bb.cl
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #36
          to label %common.resume unwind label %bb.cs, !noalias !3344

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit149.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit.thread unwind label %bb.cq, !noalias !3344

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit149.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.cr, !noalias !3344

bb.cr:                                            ; preds = %bb.cq
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3344
  unreachable

common.resume:                                    ; preds = %.body, %bb.db, %.loopexit.split-lp.i, %bb.cp, %bb.cq
  %common.resume.op = phi { ptr, i32 } [ %i.hd, %bb.db ], [ %i.gt, %bb.cp ], [ %i.gu, %bb.cq ], [ %.pn123.i, %.loopexit.split-lp.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit.thread: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit149.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !3344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3343
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp, %.loopexit.split-lp.i
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3344
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i
  %.sroa.0.0.copyload1 = load i64, ptr %i.m, align 8, !noalias !3356 ; 2 uses
  %.sroa.7.0.copyload4 = load i64, ptr %.sroa.492.0..sroa_idx.i, align 8, !noalias !3356 ; 2 uses
  %.sroa.9.0.copyload8 = load i64, ptr %.sroa.593.0..sroa_idx.i, align 8, !noalias !3356 ; 2 uses
  %.sroa.10.0.copyload12 = load i64, ptr %i.r, align 8, !noalias !3356 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !3356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3343
  %i.gx = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %i.gx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit.thread, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit
  %.sroa.7.026 = phi i64 [ %.sink135.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit.thread ], [ %.sroa.7.0.copyload4, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit ]
  %.sroa.9.025 = phi i64 [ %.sink134.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit.thread ], [ %.sroa.9.0.copyload8, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit ]
  %.sroa.10.024 = phi i64 [ %.sink133.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit.thread ], [ %.sroa.10.0.copyload12, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.7.026, ptr %i.q, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.9.025, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.10.024, ptr %.sroa.10.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.q, ptr %i.n, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs0_NtNtCs8frGy5WneL6_4fish8builtins3setNtB5_18EnvArrayParseErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @369, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit unwind label %bb.cw

bb.cu:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set30split_var_and_indexes_internal.exit
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.718.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.copyload4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.copyload8, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0.copyload12, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins3set18EnvArrayParseErrorEBH_.exit, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void

.body:                                            ; preds = %bb.cz, %bb.cw, %bb.cx
  %.pn = phi { ptr, i32 } [ %i.ha, %bb.cx ], [ %i.gy, %bb.cw ], [ %i.hb, %bb.cz ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins3set18EnvArrayParseErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #36
          to label %common.resume unwind label %bb.dd

bb.cw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, %bb.ct
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.gz = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCs1xwejQucwHj_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.cy unwind label %bb.cx     ; 0 uses

bb.cx:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #36
          to label %.body unwind label %bb.dd

bb.cy:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.cy
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.cw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins3set18EnvArrayParseErrorEBH_.exit unwind label %bb.db

bb.db:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins3set18EnvArrayParseErrorEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.cv

bb.dd:                                            ; preds = %bb.cx, %.body
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins3set3set(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [56 x i8], align 8                ; 11 uses
  %i.g = alloca [8 x i8], align 4                 ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 15 uses
  %i.m = alloca [1 x i8], align 1                 ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [72 x i8], align 8                ; 10 uses
  %i.r = alloca [72 x i8], align 8                ; 12 uses
  %i.s = alloca [72 x i8], align 8                ; 12 uses
  %i.t = alloca [72 x i8], align 8                ; 12 uses
  %i.u = alloca [72 x i8], align 8                ; 12 uses
  %i.v = alloca [72 x i8], align 8                ; 12 uses
  %i.w = alloca [72 x i8], align 8                ; 12 uses
  %i.x = alloca [72 x i8], align 8                ; 12 uses
  %i.y = alloca [1 x i8], align 1                 ; 3 uses
  %i.z = alloca [72 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [136 x i8], align 8              ; 29 uses
  %i.ah = alloca [18 x i8], align 1               ; 17 uses
  %.not = icmp eq i64 %3, 0
  %.sink400.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink400.i.sroa.gep123 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sink400.i.sroa.gep124 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sink400.i.sroa.gep125 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sink400.i.sroa.gep126 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sink400.i.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sink400.i.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sink400.i.sroa.gep129 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sink400.i.sroa.gep131 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sink400.i.sroa.gep132 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sink400.i.sroa.gep133 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sink400.i.sroa.gep134 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sink400.i.sroa.gep135 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sink400.i.sroa.gep136 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sink400.i.sroa.gep137 = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sink400.i.sroa.gep138 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sink400.i.sroa.gep140 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sink400.i.sroa.gep141 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sink400.i.sroa.gep142 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sink400.i.sroa.gep143 = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sink400.i.sroa.gep144 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sink400.i.sroa.gep145 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sink400.i.sroa.gep146 = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sink400.i.sroa.gep147 = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sink400.i.sroa.gep149 = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sink400.i.sroa.gep150 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sink400.i.sroa.gep151 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sink400.i.sroa.gep152 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sink400.i.sroa.gep153 = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sink400.i.sroa.gep154 = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sink400.i.sroa.gep155 = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sink400.i.sroa.gep156 = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sink400.i.sroa.gep158 = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sink400.i.sroa.gep159 = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sink400.i.sroa.gep160 = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sink400.i.sroa.gep161 = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sink400.i.sroa.gep162 = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sink400.i.sroa.gep163 = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sink400.i.sroa.gep164 = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sink400.i.sroa.gep165 = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  br i1 %.not, label %bb.ci, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %2, align 8, !nonnull !9, !align !17, !noundef !9 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !9 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3439
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %2, ptr %i.al, align 8, !noalias !3439
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %3, ptr %i.am, align 8, !noalias !3439
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store ptr null, ptr %i.an, align 8, !noalias !3439
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr @191, ptr %i.ao, align 8, !noalias !3439
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i64 15, ptr %i.ap, align 8, !noalias !3439
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store ptr @209, ptr %i.aq, align 8, !noalias !3439
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store i64 17, ptr %i.ar, align 8, !noalias !3439
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.as, align 8, !noalias !3439
end_hunk_12
begin_hunk_13_@_RNvNtNtCs8frGy5WneL6_4fish8builtins3set3set:bb.a
.noexc.i.i:                                       ; preds = %bb.cc
  unreachable

.noexc88.i.i.preheader:                           ; preds = %bb.cb
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit89.i.i unwind label %.loopexit.split-lp2.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3449

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit89.i.i: ; preds = %.noexc88.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3448
  br label %.sink.split.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ca, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit.i.i
  %lpad.loopexit.split-lp558 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3449
  unreachable

bb.cd:                                            ; preds = %bb.e
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %.sink.split.i unwind label %.loopexit.split-lp98.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3441

bb.ce:                                            ; preds = %.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3439
  br label %.sink.split.i

bb.cf:                                            ; preds = %bb.bx, %bb.bu, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3439
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ag)
          to label %.thread unwind label %bb.cg, !noalias !3440

.thread:                                          ; preds = %bb.cf
  %.sroa.12.7.insert.ext = zext nneg i8 %.sroa.20.0.i to i32
  %.sroa.12.6.insert.ext = zext nneg i8 %.sroa.18.0.i to i32
  %.sroa.12.7.insert.shift = shl nuw nsw i32 %.sroa.12.7.insert.ext, 24
  %.sroa.12.5.insert.ext = zext nneg i8 %.sroa.16.0.i to i32
  %.sroa.12.5.insert.shift = shl nuw nsw i32 %.sroa.12.5.insert.ext, 8
  %.sroa.12.4.insert.ext = zext nneg i8 %.sroa.14.0.i to i32
  %.sroa.12.5.insert.insert = or disjoint i32 %.sroa.12.5.insert.shift, %.sroa.12.4.insert.ext
  %.sroa.12.6.insert.shift = shl nuw nsw i32 %.sroa.12.6.insert.ext, 16
  %i.fo = or disjoint i32 %.sroa.12.6.insert.shift, %.sroa.12.7.insert.shift
  %.sroa.12.7.insert.insert = or disjoint i32 %i.fo, %.sroa.12.5.insert.insert
  %.sroa.19.9.insert.ext = zext nneg i8 %.sroa.25.0.i to i32
  %.sroa.19.9.insert.shift = shl nuw nsw i32 %.sroa.19.9.insert.ext, 8
  %.sroa.19.8.insert.ext = zext nneg i8 %.sroa.23.0.i to i32
  %.sroa.19.9.insert.insert = or disjoint i32 %.sroa.19.9.insert.shift, %.sroa.19.8.insert.ext
  %.sroa.19.10.insert.ext = zext nneg i8 %.sroa.27.0.i to i32
  %.sroa.19.10.insert.shift = shl nuw nsw i32 %.sroa.19.10.insert.ext, 16
  %.sroa.19.11.insert.ext = zext nneg i8 %.sroa.29.0.i to i32
  %.sroa.19.11.insert.shift = shl nuw nsw i32 %.sroa.19.11.insert.ext, 24
  %i.fp = or disjoint i32 %.sroa.19.11.insert.shift, %.sroa.19.9.insert.insert
  %.sroa.19.11.insert.insert = or disjoint i32 %i.fp, %.sroa.19.10.insert.shift
  %.sroa.9.2.insert.ext = zext nneg i8 %.sroa.10.0.i to i16
  %.sroa.9.3.insert.ext = zext nneg i8 %.sroa.12.0.i to i16
  %.sroa.9.3.insert.shift = shl nuw nsw i16 %.sroa.9.3.insert.ext, 8
  %.sroa.9.3.insert.insert = or disjoint i16 %.sroa.9.3.insert.shift, %.sroa.9.2.insert.ext
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ag), !noalias !3441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i8 0, ptr %i.ah, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 %.sroa.9.3.insert.insert, ptr %.sroa.456.0..sroa_idx, align 1
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %.sroa.12.7.insert.insert, ptr %.sroa.457.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %.sroa.19.11.insert.insert, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i8 %.sroa.31.0.i, ptr %.sroa.8.0..sroa_idx58, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 13
  store i8 %.sroa.33.0.i, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  store i8 %.sroa.35.0.i, ptr %.sroa.959.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  store i8 %.sroa.37.0.i, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.1160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i8 %.sroa.39.0.i, ptr %.sroa.1160.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 17
  store i8 %.sroa.44.0.i, ptr %.sroa.12.0..sroa_idx, align 1
  %i.fq = icmp ugt i64 %i.bb, %3
  br i1 %i.fq, label %bb.ck, label %bb.cj, !prof !11

bb.cg:                                            ; preds = %bb.cf
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ag)
          to label %common.resume unwind label %bb.ch, !noalias !3440

bb.ch:                                            ; preds = %bb.cg
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3440
  unreachable

_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins3setNtB4_7Options5parse.exit: ; preds = %.sink.split.i
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ag), !noalias !3441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3439
  br label %.fold.split

bb.ci:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @378) #40
  unreachable

bb.cj:                                            ; preds = %.thread
  %i.ft = sub nuw nsw i64 %3, %i.bb               ; 4 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bb ; 5 uses
  br i1 %i.ds, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %.thread
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bb, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #40
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %.not96 = icmp eq i8 %.sroa.18.0.i, 0
  br i1 %.not96, label %bb.dn, label %bb.do

bb.cm:                                            ; preds = %bb.cj
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.fv, align 8            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3452)
  %i.fw = shl nuw nsw i8 %.sroa.25.0.i, 6
  %i.fx = shl nuw nsw i8 %.sroa.29.0.i, 3
  %i.fy = shl nuw nsw i8 %.sroa.23.0.i, 5
  %i.fz = shl nuw nsw i8 %.sroa.16.0.i, 4
  %i.ga = shl nuw nsw i8 %.sroa.14.0.i, 2
  %i.gb = shl nuw nsw i8 %.sroa.12.0.i, 1
  %i.gc = shl nuw i8 %.sroa.27.0.i, 7
  %spec.select.185.i.i = or disjoint i8 %i.ga, %i.gb
  %spec.select.286.i.i = or disjoint i8 %spec.select.185.i.i, %i.fz
  %spec.select.387.i.i = or disjoint i8 %spec.select.286.i.i, %i.fy
  %spec.select.488.i.i = or disjoint i8 %spec.select.387.i.i, %i.fx
  %spec.select.589.i.i = or i8 %spec.select.488.i.i, %i.fw
  %i.gd = or i8 %spec.select.589.i.i, %i.gc
  %spec.select.791.i.i = or i8 %i.gd, %.sroa.10.0.i
  %spec.select.7.i.i = zext i8 %spec.select.791.i.i to i16
  %i.ge = icmp eq i64 %3, %i.bb
  br i1 %i.ge, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.cm
  %.idx.i = shl nuw nsw i64 %i.ft, 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i, %.lr.ph34.i
  %.sroa.02.032.i = phi i32 [ 0, %.lr.ph34.i ], [ %.sroa.02.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i ] ; 4 uses
  %.sroa.08.031.i = phi ptr [ %i.fu, %.lr.ph34.i ], [ %i.gm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.08.031.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3453
  %i.gn = load ptr, ptr %.sroa.08.031.i, align 8, !alias.scope !3452, !nonnull !9, !align !17, !noundef !9
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.08.031.i, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !3452, !noundef !9
  call fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins3set21split_var_and_indexes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.gn, i64 noundef %i.gp, i16 noundef %spec.select.7.i.i, ptr noundef nonnull %i.gg, ptr %.val), !noalias !3453
  %i.gq = load i64, ptr %i.k, align 8, !range !12, !noalias !3453, !noundef !9
  %.not.i = icmp eq i64 %i.gq, -1
  br i1 %.not.i, label %bb.cp, label %bb.co

._crit_edge35.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i
  %i.gr = icmp ne i32 %.sroa.02.2.i, 0
  %..i = zext i1 %i.gr to i64
  %i.gs = zext i32 %.sroa.02.2.i to i64
  %i.gt = shl nuw i64 %i.gs, 32
  %i.gu = or disjoint i64 %i.gt, %..i
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !3453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3453
  %i.gv = load i64, ptr %i.gh, align 8, !noalias !3453, !noundef !9 ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 1152921504606846976
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp eq i64 %i.gv, 0                    ; 2 uses
  %i.gy = load ptr, ptr %i.gi, align 8, !noalias !3453, !noundef !9 ; 2 uses
  %.not23.i = icmp eq ptr %i.gy, null             ; 2 uses
  br i1 %i.gx, label %bb.cq, label %.lr.ph.preheader.i

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3453
  call void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc27builtin_print_error_trailer(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ai, i64 noundef %i.ak), !noalias !3454
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit

bb.cq:                                            ; preds = %bb.co
  br i1 %.not23.i, label %bb.dh, label %bb.df

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIteriEECs8frGy5WneL6_4fish.exit.i
  %i.gz = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIteriEECs8frGy5WneL6_4fish.exit.i ], [ %i.gx, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %.pn.i100 = phi { ptr, i32 } [ %i.hh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIteriEECs8frGy5WneL6_4fish.exit.i ], [ %lpad.loopexit.split-lp670, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  %i.ha = load ptr, ptr %i.gi, align 8, !alias.scope !3455, !noalias !3453, !noundef !9 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i, label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp.i
  %i.hc = atomicrmw add ptr %i.ha, i64 -1 release, align 8, !noalias !3456
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.cs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i unwind label %bb.de, !noalias !3453

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i, %bb.di
  %lpad.loopexit.split-lp670 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph.preheader.i:                               ; preds = %bb.co
  %.val.i.i.i = load i64, ptr %i.gj, align 8, !alias.scope !3457, !noalias !3453
  %.sroa.02.0.i.i.i = select i1 %.not23.i, i64 0, i64 %.val.i.i.i
  %i.he = load ptr, ptr %i.gk, align 8, !noalias !3453, !nonnull !9, !noundef !9 ; 4 uses
  %i.hf = load i64, ptr %i.l, align 8, !range !10, !noalias !3453, !noundef !9 ; 2 uses
  %.idx37.i = shl nuw nsw i64 %i.gv, 3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %.idx37.i
  br label %.lr.ph.i

bb.ct:                                            ; preds = %bb.dc
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3458
  store i64 %i.hf, ptr %i.j, align 8, !noalias !3458
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.he, ptr %i.hi, align 8, !noalias !3458
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIteriEECs8frGy5WneL6_4fish.exit.i unwind label %bb.de, !noalias !3453

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIteriEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3458
  br label %.loopexit.split-lp.i

.lr.ph.i:                                         ; preds = %bb.da, %.lr.ph.preheader.i
  %.sroa.02.130.i = phi i32 [ %.sroa.02.4.i, %bb.da ], [ %.sroa.02.032.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.5.029.i = phi ptr [ %i.hj, %bb.da ], [ %i.he, %.lr.ph.preheader.i ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.5.029.i, i64 8 ; 2 uses
  %i.hk = load i64, ptr %.sroa.5.029.i, align 8, !noalias !3459, !noundef !9 ; 2 uses
  %i.hl = icmp slt i64 %i.hk, 1
  %i.hm = icmp ugt i64 %i.hk, %.sroa.02.0.i.i.i
  %or.cond.i = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %or.cond.i, label %bb.cz, label %bb.da

._crit_edge.i:                                    ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3460
  store i64 %i.hf, ptr %i.i, align 8, !noalias !3460
  store ptr %i.he, ptr %i.gl, align 8, !noalias !3460
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.cu unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3453

bb.cu:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3460
  call void @llvm.experimental.noalias.scope.decl(metadata !3461)
  %i.hn = load ptr, ptr %i.gi, align 8, !alias.scope !3461, !noalias !3453, !noundef !9 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hp = atomicrmw add ptr %i.hn, i64 -1 release, align 8, !noalias !3462
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.cw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi) #35, !noalias !3453
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit.i, %bb.cw, %bb.cv, %bb.cu
  %.sroa.02.2.i = phi i32 [ %.sroa.02.513.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit.i ], [ %.sroa.02.4.i, %bb.cw ], [ %.sroa.02.4.i, %bb.cu ], [ %.sroa.02.4.i, %bb.cv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3453
  %i.hr = icmp eq ptr %i.gm, %i.gf
  br i1 %i.hr, label %._crit_edge35.i, label %bb.cn

.noexc36.i104:                                    ; preds = %.thread11.i, %bb.dg, %bb.df
  %.sroa.02.513.i = phi i32 [ %i.ie, %.thread11.i ], [ %.sroa.02.032.i, %bb.df ], [ %.sroa.02.032.i, %bb.dg ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit.i unwind label %bb.cx, !noalias !3453

bb.cx:                                            ; preds = %.noexc36.i104
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.cy, !noalias !3453

bb.cy:                                            ; preds = %bb.cx
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3453
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc36.i104
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l), !noalias !3453
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit35.i

bb.cz:                                            ; preds = %.lr.ph.i
  %i.hu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.02.130.i, i32 1) ; 2 uses
  %i.hv = extractvalue { i32, i1 } %i.hu, 1
  br i1 %i.hv, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.db, %.lr.ph.i
  %.sroa.02.4.i = phi i32 [ %i.hx, %bb.db ], [ %.sroa.02.130.i, %.lr.ph.i ] ; 4 uses
  %i.hw = icmp eq ptr %i.hj, %i.hg
  br i1 %i.hw, label %._crit_edge.i, label %.lr.ph.i

bb.db:                                            ; preds = %bb.cz
  %i.hx = extractvalue { i32, i1 } %i.hu, 0
  br label %bb.da

bb.dc:                                            ; preds = %bb.cz
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @393) #39
          to label %bb.dd unwind label %bb.ct, !noalias !3453

bb.dd:                                            ; preds = %bb.di, %bb.dc
  unreachable

bb.de:                                            ; preds = %bb.dl, %.thread10.i, %bb.ct, %bb.cs
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i103

.body.i103:                                       ; preds = %bb.dk, %bb.de
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3453
  unreachable

bb.df:                                            ; preds = %bb.cq
  %i.hz = atomicrmw add ptr %i.gy, i64 -1 release, align 8, !noalias !3463
  %i.ia = icmp eq i64 %i.hz, 1
  br i1 %i.ia, label %bb.dg, label %.noexc36.i104

bb.dg:                                            ; preds = %bb.df
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi) #35
          to label %.noexc36.i104 unwind label %.thread10.i, !noalias !3453

.thread10.i:                                      ; preds = %bb.dg
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeciEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #36
          to label %common.resume unwind label %bb.de, !noalias !3453

bb.dh:                                            ; preds = %bb.cq
  %i.ic = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.02.032.i, i32 1) ; 2 uses
  %i.id = extractvalue { i32, i1 } %i.ic, 1
  br i1 %i.id, label %bb.di, label %.thread11.i

.thread11.i:                                      ; preds = %bb.dh
  %i.ie = extractvalue { i32, i1 } %i.ic, 0
  br label %.noexc36.i104

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394) #39
          to label %bb.dd unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !3453

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i: ; preds = %bb.cs, %bb.cr, %.loopexit.split-lp.i
  br i1 %i.gz, label %bb.dj, label %common.resume

bb.dj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.dl unwind label %bb.dk, !noalias !3453

bb.dk:                                            ; preds = %bb.dj
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i103 unwind label %bb.dm, !noalias !3453

bb.dl:                                            ; preds = %bb.dj
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.de, !noalias !3453

bb.dm:                                            ; preds = %bb.dk
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3453
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit: ; preds = %bb.cm, %._crit_edge35.i, %bb.cp
  %.sroa.61.1.i = phi i64 [ %i.gu, %._crit_edge35.i ], [ 4294967297, %bb.cp ], [ 1095216660481, %bb.cm ] ; 4 uses
  %.sroa.091.0.extract.trunc = trunc i64 %.sroa.61.1.i to i8
  %.sroa.593.0.extract.shift = lshr i64 %.sroa.61.1.i, 16
  %.sroa.593.0.extract.trunc = trunc i64 %.sroa.593.0.extract.shift to i16
end_hunk_13
begin_hunk_14_@_RNvNtNtCs8frGy5WneL6_4fish8builtins3set3set:bb.a
  %i.kd = icmp ne i8 %i.kc, 0
  %or.cond5 = or i1 %i.kb, %i.kd
  br i1 %or.cond5, label %bb.ed, label %bb.ee

bb.ec:                                            ; preds = %bb.dz
  %i.ke = call fastcc i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins3set4show(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ai, i64 noundef %i.ak, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fu, i64 noundef %i.ft) ; 4 uses
  %.sroa.079.0.extract.trunc = trunc i64 %i.ke to i8
  %.sroa.581.0.extract.shift = lshr i64 %i.ke, 16
  %.sroa.581.0.extract.trunc = trunc i64 %.sroa.581.0.extract.shift to i16
  %.sroa.682.0.extract.shift = lshr i64 %i.ke, 32
  %.sroa.682.0.extract.trunc = trunc nuw nsw i64 %.sroa.682.0.extract.shift to i32
  br label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.kf = call fastcc i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins3set12set_internal(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18) %i.ah, ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fu, i64 noundef %i.ft) ; 4 uses
  %.sroa.075.0.extract.trunc = trunc i64 %i.kf to i8
  %.sroa.577.0.extract.shift = lshr i64 %i.kf, 16
  %.sroa.577.0.extract.trunc = trunc i64 %.sroa.577.0.extract.shift to i16
  %.sroa.678.0.extract.shift = lshr i64 %i.kf, 32
  %.sroa.678.0.extract.trunc = trunc nuw nsw i64 %.sroa.678.0.extract.shift to i32
  br label %bb.ef

bb.ee:                                            ; preds = %bb.eb
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val98 = load ptr, ptr %i.kg, align 8
  call fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins3set4list(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(18) %i.ah, ptr noundef nonnull align 8 %0, ptr %.val98)
  br label %bb.ef

bb.ef:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5erase.exit, %bb.ec, %bb.ee, %bb.ed, %bb.ea, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit
  %.sroa.1335.1 = phi i32 [ %.sroa.694.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit ], [ %.sroa.41.1.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5erase.exit ], [ 0, %bb.ea ], [ %.sroa.682.0.extract.trunc, %bb.ec ], [ %.sroa.678.0.extract.trunc, %bb.ed ], [ 0, %bb.ee ] ; 2 uses
  %.sroa.13.0 = phi i16 [ %.sroa.593.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit ], [ %.sroa.589.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5erase.exit ], [ 0, %bb.ea ], [ %.sroa.581.0.extract.trunc, %bb.ec ], [ %.sroa.577.0.extract.trunc, %bb.ed ], [ 0, %bb.ee ] ; 2 uses
  %.sroa.11.1 = phi i64 [ %.sroa.61.1.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit ], [ %.sroa.4.0.insert.insert.i, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5erase.exit ], [ 0, %bb.ea ], [ %i.ke, %bb.ec ], [ %i.kf, %bb.ed ], [ 0, %bb.ee ]
  %.sroa.0.1 = phi i8 [ %.sroa.091.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5query.exit ], [ %.sroa.087.0.extract.trunc, %_RNvNtNtCs8frGy5WneL6_4fish8builtins3set5erase.exit ], [ 0, %bb.ea ], [ %.sroa.079.0.extract.trunc, %bb.ec ], [ %.sroa.075.0.extract.trunc, %bb.ed ], [ 0, %bb.ee ] ; 2 uses
  %i.kh = and i8 %.sroa.0.1, 1
  %i.ki = icmp eq i8 %i.kh, 0
  %i.kj = trunc nuw i8 %.sroa.39.0.i to i1
  %or.cond8 = and i1 %i.ki, %i.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %or.cond8, label %.fold.split, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.kk = and i64 %.sroa.11.1, 65280
  br label %.fold.split

.fold.split:                                      ; preds = %bb.ef, %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins3setNtB4_7Options5parse.exit, %bb.eg
  %.sroa.1335.2 = phi i32 [ %.sroa.1335.1, %bb.eg ], [ 2, %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins3setNtB4_7Options5parse.exit ], [ %.sroa.1335.1, %bb.ef ]
  %.sroa.13.1 = phi i16 [ %.sroa.13.0, %bb.eg ], [ undef, %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins3setNtB4_7Options5parse.exit ], [ %.sroa.13.0, %bb.ef ]
  %.sroa.11.2 = phi i64 [ %i.kk, %bb.eg ], [ 0, %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins3setNtB4_7Options5parse.exit ], [ 256, %bb.ef ]
  %.sroa.0.2 = phi i8 [ %.sroa.0.1, %bb.eg ], [ %spec.select215, %_RNvMs_NtNtCs8frGy5WneL6_4fish8builtins3setNtB4_7Options5parse.exit ], [ 0, %bb.ef ]
  %.sroa.1335.0.insert.ext = zext i32 %.sroa.1335.2 to i64
  %.sroa.1335.0.insert.shift = shl nuw i64 %.sroa.1335.0.insert.ext, 32
  %.sroa.13.0.insert.ext = zext i16 %.sroa.13.1 to i64
  %.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.13.0.insert.ext, 16
  %.sroa.13.0.insert.insert = or disjoint i64 %.sroa.13.0.insert.shift, %.sroa.1335.0.insert.shift
  %.sroa.11.0.insert.insert = or disjoint i64 %.sroa.13.0.insert.insert, %.sroa.11.2
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins3set4list(ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(18) %0, ptr noundef nonnull align 8 %1, ptr %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [88 x i8], align 8                ; 10 uses
  %i.h = alloca [88 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 21 uses
  %i.m = alloca [24 x i8], align 8                ; 27 uses
  %i.n = alloca [24 x i8], align 8                ; 18 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.r = load i8, ptr %i.q, align 1, !range !16, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.v = load i8, ptr %i.u, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i8, ptr %i.w, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.z = load i8, ptr %i.y, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i8, ptr %i.aa, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ad = load i8, ptr %i.ac, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ah = load i8, ptr %i.ag, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.ai = shl nuw nsw i8 %i.af, 6
  %i.aj = shl nuw nsw i8 %i.ad, 3
  %i.ak = shl nuw nsw i8 %i.ab, 5
  %i.al = shl nuw nsw i8 %i.z, 4
  %i.am = shl nuw nsw i8 %i.x, 2
  %i.an = shl nuw nsw i8 %i.v, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !range !16, !alias.scope !3530, !noundef !9
  %i.aq = shl nuw i8 %i.ah, 7
  %spec.select.185.i = or disjoint i8 %i.am, %i.an
  %spec.select.286.i = or disjoint i8 %spec.select.185.i, %i.al
  %spec.select.387.i = or disjoint i8 %spec.select.286.i, %i.ak
  %spec.select.488.i = or disjoint i8 %spec.select.387.i, %i.aj
  %spec.select.589.i = or i8 %spec.select.488.i, %i.ai
  %spec.select.690.i = or i8 %spec.select.589.i, %i.ap
  %spec.select.791.i = or i8 %spec.select.690.i, %i.aq
  %spec.select.7.i = zext i8 %spec.select.791.i to i16 ; 2 uses
  call void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment9get_names(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %i.t, i16 noundef %spec.select.7.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !9, !noundef !9 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !9 ; 7 uses
  %i.av = icmp samesign ult i64 %i.au, 2
  br i1 %i.av, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.aw = icmp samesign ult i64 %i.au, 21
  br i1 %i.aw, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.as, i64 noundef range(i64 0, 384307168202282326) %i.au, ptr noalias nofree noundef nonnull %i.a) #35
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit unwind label %bb.cb

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.as, i64 noundef range(i64 0, 384307168202282326) %i.au, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit unwind label %bb.cb

_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.ax = load i64, ptr %i.p, align 8, !range !10, !noundef !9
  %i.ay = icmp ult i64 %i.au, 384307168202282326
  call void @llvm.assume(i1 %i.ay)
  %.idx = mul nuw nsw i64 %i.au, 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.as, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 18 uses
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.ax, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.az, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ba = icmp eq i64 %i.au, 0
  br i1 %i.ba, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph: ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.bc = load i8, ptr %i.bb, align 1, !range !16
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  br i1 %i.s, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.us, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.us: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117.us
  %i.bm = phi ptr [ %i.bn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117.us ], [ %i.as, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 8 uses
  %.sroa.0.0.copyload1.us = load i64, ptr %i.bm, align 8, !noalias !3531 ; 2 uses
  %.not.us = icmp eq i64 %.sroa.0.0.copyload1.us, -1
  br i1 %.not.us, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.us
  %.sroa.7.0..sroa_idx2.us = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.0.0.copyload1.us, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.us, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bo = load i64, ptr %i.bk, align 8, !alias.scope !3532, !noundef !9 ; 3 uses
  %i.bp = load i64, ptr %i.m, align 8, !range !10, !alias.scope !3532, !noundef !9
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #35
          to label %bb.h unwind label %.split43.us

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.br = load ptr, ptr %i.bl, align 8, !alias.scope !3532, !nonnull !9, !noundef !9
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  store i32 10, ptr %i.bs, align 4
  %i.bt = add i64 %i.bo, 1
  store i64 %i.bt, ptr %i.bk, align 8, !alias.scope !3532
  %i.bu = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.i unwind label %.split43.us ; 0 uses

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107.us unwind label %.split47.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107.us: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111.us unwind label %.split.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111.us: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113.us unwind label %.split51.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113.us: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111.us
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117.us unwind label %.split55.us

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117.us: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bv = icmp eq ptr %i.bn, %i.az
  br i1 %i.bv, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.us

.split.us:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107.us, %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.split43.us:                                      ; preds = %bb.h, %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.split47.us:                                      ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.split51.us:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111.us
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.split55.us:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113.us
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.body114:                                         ; preds = %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.j
  %.pn33 = phi { ptr, i32 } [ %.pn31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i ], [ %.us-phi57, %bb.j ], [ %.us-phi53, %bb.bz ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.o)
          to label %.thread unwind label %bb.ak

.split55:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.split55.us, %.split55
  %.us-phi56 = phi ptr [ %i.cd, %.split55 ], [ %i.bn, %.split55.us ]
  %.us-phi57 = phi { ptr, i32 } [ %i.cb, %.split55 ], [ %i.ca, %.split55.us ]
  store ptr %.us-phi56, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.body114

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117
  %i.cc = phi ptr [ %i.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117 ], [ %i.as, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 19 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.cc, align 8, !noalias !3531 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.0.0.copyload1, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.o unwind label %.split

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.us, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117.us, %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %i.ce = phi ptr [ %i.as, %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ], [ %i.bn, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.us ], [ %i.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117.us ], [ %i.cd, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit ], [ %i.az, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117 ]
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

.body108:                                         ; preds = %bb.bx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i101, %bb.n
  %.pn31 = phi { ptr, i32 } [ %.pn29, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i101 ], [ %.us-phi41, %bb.n ], [ %.us-phi49, %bb.bx ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.l

bb.l:                                             ; preds = %.body108
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %.body108
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body114 unwind label %bb.ak

.split:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107, %bb.k
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.split.us, %.split
  %.us-phi40 = phi ptr [ %i.cd, %.split ], [ %i.bn, %.split.us ]
  %.us-phi41 = phi { ptr, i32 } [ %i.ch, %.split ], [ %i.bw, %.split.us ]
  store ptr %.us-phi40, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.body108

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  br i1 %i.bd, label %bb.q, label %bb.v

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit92
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #35
          to label %bb.bv unwind label %.split43

bb.q:                                             ; preds = %bb.o
  %.val37 = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.val38 = load i64, ptr %i.be, align 8, !noundef !9
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val37, i64 %.val38
  %i.cj = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %.val37, ptr noundef nonnull %i.ci, ptr noundef nonnull @380, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @380, i64 7))
          to label %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit unwind label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit: ; preds = %.loopexit.split-lp, %bb.at, %bb.ab, %bb.ac, %bb.t
  %.pn27 = phi { ptr, i32 } [ %i.cm, %bb.t ], [ %.pn, %bb.ab ], [ %.pn, %bb.ac ], [ %.pn25, %bb.at ], [ %.pn25, %.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i59 unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i59: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit63 unwind label %bb.ak

bb.t:                                             ; preds = %bb.br, %bb.bn, %bb.bl, %bb.au, %bb.ai, %bb.y, %bb.v, %bb.q, %bb.bm, %bb.al, %bb.u
  %i.cm = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit

_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.q
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish7history7history10history_id(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @64)
          to label %bb.al unwind label %bb.t

bb.v:                                             ; preds = %bb.o, %_RNvXs2x_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.cn = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.co = load i64, ptr %i.be, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3533
  invoke void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment4getf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.t, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cn, i64 noundef %i.co, i16 noundef %spec.select.7.i)
          to label %.noexc64 unwind label %bb.t

.noexc64:                                         ; preds = %bb.v
  %i.cp = load ptr, ptr %i.b, align 8, !noalias !3533, !noundef !9
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3533
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !3533, !nonnull !9, !noundef !9 ; 3 uses
  %.val5.i = load i64, ptr %i.bf, align 8, !noalias !3533, !noundef !9
  switch i64 %.val5.i, label %bb.z [
    i64 0, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar8is_empty.exit.thread.i
    i64 1, label %_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar8is_empty.exit.i
end_hunk_14
begin_hunk_15_@_RNvNtNtCs8frGy5WneL6_4fish8builtins3set4list:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.body83

.loopexit.split-lp92.loopexit.split-lp:           ; preds = %bb.bb, %bb.ap
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #36
          to label %.body83 unwind label %bb.ak

bb.bb:                                            ; preds = %bb.az
  %.val41 = load ptr, ptr %i.bi, align 8, !nonnull !9, !noundef !9
  %.val42 = load i64, ptr %i.bj, align 8, !noundef !9 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef range(i64 0, 4611686018427387904) %.val42)
          to label %.noexc80 unwind label %.loopexit.split-lp92.loopexit.split-lp

.noexc80:                                         ; preds = %bb.bb
  %i.ew = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !3544, !noundef !9 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 2305843009213693952
  call void @llvm.assume(i1 %i.ex)
  %.not.i.i = icmp eq i64 %.val42, 0
  br i1 %.not.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.noexc80
  %i.ey = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !3544, !nonnull !9, !noundef !9
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ew
  %i.fa = shl nuw nsw i64 %.val42, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ez, ptr nonnull readonly align 4 %.val41, i64 %i.fa, i1 false)
  %.pre.i.i = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !3544
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.noexc80
  %i.fb = phi i64 [ %.pre.i.i, %bb.bc ], [ %i.ew, %.noexc80 ]
  %i.fc = add i64 %i.fb, %.val42
  store i64 %i.fc, ptr %.sroa.512.0..sroa_idx, align 8, !alias.scope !3544
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i82 unwind label %.loopexit.split-lp98.loopexit.split-lp

.loopexit.split-lp98.loopexit.split-lp:           ; preds = %bb.bd, %bb.ar
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body83 unwind label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp98.loopexit.split-lp
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i82: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit86 unwind label %.loopexit.split-lp87.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit86: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i82
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.h)
          to label %bb.bf unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %exitcond.not = icmp eq i64 %i.ef, %i.dm
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3521

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit77: ; preds = %._crit_edge, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aj

bb.bg:                                            ; preds = %bb.aj
  %i.fe = icmp samesign ugt i64 %i.dg, 64
  %or.cond = select i1 %i.bd, i1 %i.fe, i1 false  ; 2 uses
  br i1 %or.cond, label %bb.bm, label %bb.bk

bb.bh:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit99, %bb.bp, %bb.aj
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i88 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ff = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit63 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i88: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit92 unwind label %.split43

bb.bk:                                            ; preds = %bb.bm, %bb.bg
  %i.fh = load i64, ptr %i.bk, align 8, !alias.scope !3552, !noundef !9 ; 3 uses
  %i.fi = load i64, ptr %i.m, align 8, !range !10, !alias.scope !3552, !noundef !9
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #35
          to label %bb.bn unwind label %bb.t

bb.bm:                                            ; preds = %bb.bg
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE8truncateCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 60)
          to label %bb.bk unwind label %bb.t

bb.bn:                                            ; preds = %bb.bk, %bb.bl
  %i.fk = load ptr, ptr %i.bl, align 8, !alias.scope !3552, !nonnull !9, !noundef !9
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fh
  store i32 32, ptr %i.fl, align 4
  %i.fm = add i64 %i.fh, 1
  store i64 %i.fm, ptr %i.bk, align 8, !alias.scope !3552
  %.val = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %.val36 = load i64, ptr %.sroa.512.0..sroa_idx, align 8, !noundef !9 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef range(i64 0, 4611686018427387904) %.val36)
          to label %.noexc97 unwind label %bb.t

.noexc97:                                         ; preds = %bb.bn
  %i.fn = load i64, ptr %i.bk, align 8, !alias.scope !3553, !noundef !9 ; 3 uses
  %i.fo = icmp ult i64 %i.fn, 2305843009213693952
  call void @llvm.assume(i1 %i.fo)
  %.not.i.i95 = icmp eq i64 %.val36, 0
  br i1 %.not.i.i95, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.noexc97
  %i.fp = load ptr, ptr %i.bl, align 8, !alias.scope !3553, !nonnull !9, !noundef !9
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fn
  %i.fr = shl nuw nsw i64 %.val36, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fq, ptr nonnull readonly align 4 %.val, i64 %i.fr, i1 false)
  %.pre.i.i96 = load i64, ptr %i.bk, align 8, !alias.scope !3553
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.noexc97
  %i.fs = phi i64 [ %.pre.i.i96, %bb.bo ], [ %i.fn, %.noexc97 ]
  %i.ft = add i64 %i.fs, %.val36                  ; 4 uses
  store i64 %i.ft, ptr %i.bk, align 8, !alias.scope !3553
  br i1 %or.cond, label %bb.bq, label %bb.bh

bb.bq:                                            ; preds = %bb.bp
  %i.fu = load i64, ptr %i.m, align 8, !range !10, !alias.scope !3554, !noundef !9
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.br, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit99

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #35
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit99 unwind label %bb.t

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit99: ; preds = %bb.br, %bb.bq
  %i.fw = load ptr, ptr %i.bl, align 8, !alias.scope !3554, !nonnull !9, !noundef !9
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.ft
  store i32 8230, ptr %i.fx, align 4
  %i.fy = add i64 %i.ft, 1
  store i64 %i.fy, ptr %i.bk, align 8, !alias.scope !3554
  br label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit63: ; preds = %bb.bu, %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i59
  %.pn29 = phi { ptr, i32 } [ %.pn27, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i59 ], [ %.us-phi45, %bb.bu ], [ %i.ff, %bb.bi ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i101 unwind label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit63
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i101: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit63
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body108 unwind label %bb.ak

.split43:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i88, %bb.p, %bb.bv
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.split43.us, %.split43
  %.us-phi44 = phi ptr [ %i.cd, %.split43 ], [ %i.bn, %.split43.us ]
  %.us-phi45 = phi { ptr, i32 } [ %i.gb, %.split43 ], [ %i.bx, %.split43.us ]
  store ptr %.us-phi44, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit63

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit92: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gc = load i64, ptr %i.bk, align 8, !alias.scope !3532, !noundef !9 ; 3 uses
  %i.gd = load i64, ptr %i.m, align 8, !range !10, !alias.scope !3532, !noundef !9
  %i.ge = icmp eq i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.p, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit92, %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.gf = load ptr, ptr %i.bl, align 8, !alias.scope !3532, !nonnull !9, !noundef !9
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gc
  store i32 10, ptr %i.gg, align 4
  %i.gh = add i64 %i.gc, 1
  store i64 %i.gh, ptr %i.bk, align 8, !alias.scope !3532
  %i.gi = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.bw unwind label %.split43  ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107 unwind label %.split47

.split47:                                         ; preds = %bb.bw
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.split47.us, %.split47
  %.us-phi48 = phi ptr [ %i.cd, %.split47 ], [ %i.bn, %.split47.us ]
  %.us-phi49 = phi { ptr, i32 } [ %i.gj, %.split47 ], [ %i.by, %.split47.us ]
  store ptr %.us-phi48, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body108 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111 unwind label %.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113 unwind label %.split51

.split51:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %.split51.us, %.split51
  %.us-phi52 = phi ptr [ %i.cd, %.split51 ], [ %i.bn, %.split51.us ]
  %.us-phi53 = phi { ptr, i32 } [ %i.gl, %.split51 ], [ %i.bz, %.split51.us ]
  store ptr %.us-phi52, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body114 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit111
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117 unwind label %.split55

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit117: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.gn = icmp eq ptr %i.cd, %i.az
  br i1 %i.gn, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

.thread:                                          ; preds = %.body114, %bb.cb
  %.pn33.pn8 = phi { ptr, i32 } [ %.pn33, %.body114 ], [ %lpad.thr_comm, %bb.cb ]
  resume { ptr, i32 } %.pn33.pn8

bb.cb:                                            ; preds = %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #36
          to label %.thread unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc range(i64 0, 8589934594) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins3set4show(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [64 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 9 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 13 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 7 uses
  %i.u = icmp eq i64 %5, 0
  br i1 %i.u, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs7_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStackNtB5_11Environment9get_names(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull align 8 %i.t, i16 noundef 0)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !9 ; 7 uses
  %i.z = icmp samesign ult i64 %i.y, 2
  br i1 %i.z, label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp samesign ult i64 %i.y, 21
  br i1 %i.aa, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.w, i64 noundef range(i64 0, 384307168202282326) %i.y, ptr noalias nofree noundef nonnull %i.a) #35
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit unwind label %bb.aw

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.w, i64 noundef range(i64 0, 384307168202282326) %i.y, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit unwind label %bb.aw

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %5, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  br label %bb.ax

_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ai = load i64, ptr %i.s, align 8, !range !10, !noundef !9
  %i.aj = icmp ult i64 %i.y, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %.idx302 = mul nuw nsw i64 %i.y, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx302 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.w, ptr %i.r, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 17 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ai, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ak, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.al = icmp eq i64 %i.y, 0
  br i1 %i.al, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph: ; preds = %_RINvNtCs1xwejQucwHj_5alloc5slice11stable_sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBH_NtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 7 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

.body:                                            ; preds = %bb.at, %bb.j, %bb.f, %.body128
  %.pn94 = phi { ptr, i32 } [ %.pn92, %.body128 ], [ %i.bb, %bb.j ], [ %i.at, %bb.f ], [ %i.du, %bb.at ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.r)
          to label %common.resume unwind label %bb.av

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i133.invoke
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.av, ptr %.sroa.44.0..sroa_idx, align 8
  br label %.body

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph, %.backedge
  %i.au = phi ptr [ %i.w, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.lr.ph ], [ %i.av, %.backedge ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 19 uses
  %.sroa.0.0.copyload179 = load i64, ptr %i.au, align 8, !noalias !3591 ; 2 uses
  %.sroa.8.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx180, i64 16, i1 false), !noalias !3591
  %.not86 = icmp eq i64 %.sroa.0.0.copyload179, -1
  br i1 %.not86, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %.sroa.0.0.copyload179, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.val = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.val100 = load i64, ptr %i.am, align 8, !noundef !9
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.val100
  %i.ax = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %.val, ptr noundef nonnull %i.aw, ptr noundef nonnull @380, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @380, i64 7))
end_hunk_15
begin_hunk_16_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4type4type:bb.a
bb.bj:                                            ; preds = %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr @417, ptr %i.ff, align 8
  store i64 20, ptr %i.fg, align 8
  store i64 -1, ptr %i.bv, align 8
  %i.jb = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %bb.cb unwind label %bb.ca     ; 2 uses

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i64 0, ptr %i.bt, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx207, align 8
  store i64 0, ptr %.sroa.11.0..sroa_idx223, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  store ptr @415, ptr %i.fa, align 8
  store i64 23, ptr %i.fb, align 8
  store i64 -1, ptr %i.br, align 8
  %i.jc = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.bm unwind label %bb.bl     ; 2 uses

.body:                                            ; preds = %.peel.begin, %bb.bp, %bb.bl, %.loopexit.split-lp704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1874, %.loopexit.split-lp704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.jd, %bb.bl ], [ %i.jo, %bb.bp ], [ %i.jo, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.br) #36
          to label %.body372 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bm:                                            ; preds = %bb.bk
  %i.je = extractvalue { ptr, i64 } %i.jc, 0
  %i.jf = extractvalue { ptr, i64 } %i.jc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.jg = sext i32 %i.ja to i64
  store i64 1, ptr %i.bq, align 8
  store ptr %.sroa.091.0, ptr %.sroa.4100.0..sroa_idx, align 8
  store i64 %.sroa.695.0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 5, ptr %i.fc, align 8
  store i64 %i.jg, ptr %.sroa.4104.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bs, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.je, i64 noundef %i.jf, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef 2)
          to label %bb.bn unwind label %.loopexit.split-lp704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %bb.bo
  %lpad.loopexit.split-lp1874 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bq) #36
          to label %.body unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  %i.jh = load i8, ptr %i.bs, align 8, !range !16, !alias.scope !3723, !noundef !9
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.bo, label %.preheader697.preheader, !prof !11

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3724
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !range !21, !alias.scope !3723, !noundef !9
  store i8 %i.jk, ptr %i.a, align 1, !noalias !3724
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @416) #40
          to label %.noexc345 unwind label %.loopexit.split-lp704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc345:                                        ; preds = %bb.bo
  unreachable

.preheader697:                                    ; preds = %.preheader697.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.hd)
          to label %.preheader697.1 unwind label %.peel.begin

.preheader697.1:                                  ; preds = %.preheader697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.jl = load i64, ptr %i.br, align 8, !range !12, !alias.scope !3725, !noundef !9
  %i.jm = icmp eq i64 %i.jl, -1
  br i1 %i.jm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.br

.preheader697.preheader:                          ; preds = %bb.bn
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bq)
          to label %.preheader697 unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader697, %.preheader697.preheader
  %i.jn = phi i1 [ false, %.preheader697.preheader ], [ true, %.preheader697 ]
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.jn, label %.body, label %bb.bp

bb.bp:                                            ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fc) #36
          to label %.body unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %lpad.loopexit.split-lp1316 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.br:                                            ; preds = %.preheader697.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.body372 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.br
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.bu

.body372:                                         ; preds = %bb.bu, %bb.bs, %.body
  %.pn268 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.jr, %bb.bu ], [ %i.jp, %bb.bs ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bt) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body372

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %.preheader697.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  %.val350 = load ptr, ptr %i.fd, align 8, !nonnull !9, !noundef !9
  %.val351 = load i64, ptr %i.fe, align 8, !noundef !9 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef range(i64 0, 4611686018427387904) %.val351)
          to label %.noexc375 unwind label %bb.bw

.noexc375:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %i.js = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3726, !noundef !9 ; 3 uses
  %i.jt = icmp ult i64 %i.js, 2305843009213693952
  call void @llvm.assume(i1 %i.jt)
  %.not.i.i = icmp eq i64 %.val351, 0
  br i1 %.not.i.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.noexc375
  %i.ju = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3726, !nonnull !9, !noundef !9
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.js
  %i.jw = shl nuw nsw i64 %.val351, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jv, ptr nonnull readonly align 4 %.val350, i64 %i.jw, i1 false)
  %.pre.i.i = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3726
  br label %bb.bx

bb.bw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bu) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bv, %.noexc375
  %i.jy = phi i64 [ %.pre.i.i, %bb.bv ], [ %i.js, %.noexc375 ]
  %i.jz = add i64 %i.jy, %.val351
  store i64 %i.jz, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3726
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %.body376 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.co

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.split-lp734.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp748.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp714.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body574, %.body376, %.body, %.loopexit.split-lp704.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body372, %bb.bw, %bb.ca, %bb.ch, %.body405, %.loopexit.split-lp709.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body410, %bb.dh, %bb.dl, %bb.ds, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body453, %bb.ek, %.loopexit.split-lp719.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body459, %.body464, %.body470, %bb.ex, %bb.fb, %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body482, %.body487, %bb.fl, %.body497, %bb.ft, %.body518, %.body513, %bb.gk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit521, %.body526, %bb.gz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit537, %.body542, %bb.hl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit563, %.body568, %bb.il, %bb.ix, %.body595, %.body584, %.loopexit.split-lp665.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body589, %bb.kd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit605, %.body610, %bb.ax
  %lpad.loopexit.split-lp1599 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ca:                                            ; preds = %bb.cb, %bb.bj
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bv) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bj
  %i.kd = extractvalue { ptr, i64 } %i.jb, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kd) ]
  %4 = extractvalue { ptr, i64 } %i.jb, 1         ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef range(i64 0, 4611686018427387904) %4)
          to label %.noexc381 unwind label %bb.ca

.noexc381:                                        ; preds = %bb.cb
  %i.ke = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3727, !noundef !9 ; 3 uses
  %i.kf = icmp ult i64 %i.ke, 2305843009213693952
  call void @llvm.assume(i1 %i.kf)
  %.not.i.i379 = icmp eq i64 %4, 0
  br i1 %.not.i.i379, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.noexc381
  %i.kg = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3727, !nonnull !9, !noundef !9
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.ke
  %i.ki = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kh, ptr nonnull readonly align 4 %i.kd, i64 %i.ki, i1 false)
  %.pre.i.i380 = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3727
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.noexc381
  %i.kj = phi i64 [ %.pre.i.i380, %bb.cc ], [ %i.ke, %.noexc381 ]
  %i.kk = add i64 %i.kj, %4
  store i64 %i.kk, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3727
  %i.kl = load i64, ptr %i.bv, align 8, !range !12, !alias.scope !3728, !noundef !9
  %i.km = icmp eq i64 %i.kl, -1
  br i1 %i.km, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit387, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i383 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %.body376 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i383: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit387 unwind label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit387: ; preds = %bb.cd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.co

bb.ch:                                            ; preds = %bb.ci, %bb.bg
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bw) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.bg
  %i.kq = extractvalue { ptr, i64 } %i.iw, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kq) ]
  %5 = extractvalue { ptr, i64 } %i.iw, 1         ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef range(i64 0, 4611686018427387904) %5)
          to label %.noexc390 unwind label %bb.ch

.noexc390:                                        ; preds = %bb.ci
  %i.kr = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3729, !noundef !9 ; 3 uses
  %i.ks = icmp ult i64 %i.kr, 2305843009213693952
  call void @llvm.assume(i1 %i.ks)
  %.not.i.i388 = icmp eq i64 %5, 0
  br i1 %.not.i.i388, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.noexc390
  %i.kt = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3729, !nonnull !9, !noundef !9
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kr
  %i.kv = shl nuw nsw i64 %5, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ku, ptr nonnull readonly align 4 %i.kq, i64 %i.kv, i1 false)
  %.pre.i.i389 = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3729
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.noexc390
  %i.kw = phi i64 [ %.pre.i.i389, %bb.cj ], [ %i.kr, %.noexc390 ]
  %i.kx = add i64 %i.kw, %5
  store i64 %i.kx, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3729
  %i.ky = load i64, ptr %i.bw, align 8, !range !12, !alias.scope !3730, !noundef !9
  %i.kz = icmp eq i64 %i.ky, -1
  br i1 %i.kz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit397, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i393 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.body376 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i393: ; preds = %bb.cl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit397 unwind label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit397: ; preds = %bb.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.co

bb.co:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit397, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit387, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.lc = load ptr, ptr %i.by, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 117
  %.val362 = load i8, ptr %i.ld, align 1, !range !16, !noundef !9
  %i.le = trunc nuw i8 %.val362 to i1
  br i1 %i.le, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.lf = getelementptr i8, ptr %i.lc, i64 104
  %.val364 = load ptr, ptr %i.lf, align 8, !noundef !9 ; 3 uses
  %.not.i398 = icmp eq ptr %.val364, null
  br i1 %.not.i398, label %.thread, label %bb.cr

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit443, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit433, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit423, %bb.co
  %i.lg = load i8, ptr %i.dj, align 4, !range !16, !noundef !9
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.ea, label %bb.dz

bb.cr:                                            ; preds = %bb.cp
  %i.li = getelementptr inbounds nuw i8, ptr %.val364, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val364, i64 32
  %i.ll = load i64, ptr %i.lk, align 8, !noundef !9 ; 3 uses
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.ll
  %i.lo = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %i.lj, ptr noundef nonnull readonly %i.ln, ptr noundef nonnull @414, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @414, i64 1))
          to label %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit402 unwind label %bb.bh

.thread:                                          ; preds = %bb.cp, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr @422, ptr %i.fq, align 8
  store i64 22, ptr %i.fr, align 8
  store i64 -1, ptr %i.bp, align 8
  %i.lp = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp)
          to label %bb.dt unwind label %bb.ds     ; 2 uses

_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit402: ; preds = %bb.cs
  br i1 %i.lo, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit402
  %i.lq = load ptr, ptr %i.by, align 8, !nonnull !9, !noundef !9
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = invoke noundef i32 @_RNvMs_NtCs8frGy5WneL6_4fish8functionNtB4_18FunctionProperties22copy_definition_lineno(ptr noundef nonnull align 8 %i.lr)
          to label %bb.cv unwind label %bb.bh

bb.cu:                                            ; preds = %_RNvXs1i_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrINtNtCs3oUPovFnLWP_4core3cmp9PartialEqeE2eq.exit402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr @421, ptr %i.fo, align 8
  store i64 21, ptr %i.fp, align 8
  store i64 -1, ptr %i.bo, align 8
  %i.lt = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %bb.dm unwind label %bb.dl     ; 2 uses

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store i64 0, ptr %i.bm, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx209, align 8
  store i64 0, ptr %.sroa.11.0..sroa_idx225, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store ptr @419, ptr %i.fj, align 8
  store i64 24, ptr %i.fk, align 8
  store i64 -1, ptr %i.bk, align 8
  %i.lu = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %bb.cx unwind label %bb.cw     ; 2 uses

.body405:                                         ; preds = %.peel.begin1317, %bb.da, %bb.cw, %.loopexit.split-lp709.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn271 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1877, %.loopexit.split-lp709.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lv, %bb.cw ], [ %i.mg, %bb.da ], [ %i.mg, %.peel.begin1317 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #36
          to label %.body410 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.body405

bb.cx:                                            ; preds = %bb.cv
  %i.lw = extractvalue { ptr, i64 } %i.lu, 0
  %i.lx = extractvalue { ptr, i64 } %i.lu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.ly = zext i32 %i.ls to i64
  store i64 1, ptr %i.bj, align 8
  store ptr %i.lj, ptr %.sroa.4117.0..sroa_idx, align 8
  store i64 %i.ll, ptr %.sroa.5118.0..sroa_idx, align 8
  store i64 4, ptr %i.fl, align 8
  store i64 %i.ly, ptr %.sroa.4121.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.lw, i64 noundef %i.lx, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef 2)
          to label %bb.cy unwind label %.loopexit.split-lp709.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp709.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cx, %bb.cz
  %lpad.loopexit.split-lp1877 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bj) #36
          to label %.body405 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !3731)
  %i.lz = load i8, ptr %i.bl, align 8, !range !16, !alias.scope !3731, !noundef !9
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.cz, label %.preheader696.preheader, !prof !11

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3732
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.mc = load i8, ptr %i.mb, align 1, !range !21, !alias.scope !3731, !noundef !9
  store i8 %i.mc, ptr %i.b, align 1, !noalias !3732
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @420) #40
          to label %.noexc343 unwind label %.loopexit.split-lp709.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc343:                                        ; preds = %bb.cz
  unreachable

.preheader696:                                    ; preds = %.preheader696.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.he)
          to label %.preheader696.1 unwind label %.peel.begin1317

.preheader696.1:                                  ; preds = %.preheader696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.md = load i64, ptr %i.bk, align 8, !range !12, !alias.scope !3733, !noundef !9
  %i.me = icmp eq i64 %i.md, -1
  br i1 %i.me, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit413, label %bb.dc

.preheader696.preheader:                          ; preds = %bb.cy
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bj)
          to label %.preheader696 unwind label %.peel.begin1317

.peel.begin1317:                                  ; preds = %.preheader696, %.preheader696.preheader
  %i.mf = phi i1 [ false, %.preheader696.preheader ], [ true, %.preheader696 ]
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.mf, label %.body405, label %bb.da

bb.da:                                            ; preds = %.peel.begin1317
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fl) #36
          to label %.body405 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %lpad.loopexit.split-lp1324 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.dc:                                            ; preds = %.preheader696.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i409 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body410 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i409: ; preds = %bb.dc
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit413 unwind label %bb.df

.body410:                                         ; preds = %bb.df, %bb.dd, %.body405
  %.pn273 = phi { ptr, i32 } [ %.pn271, %.body405 ], [ %i.mj, %bb.df ], [ %i.mh, %bb.dd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bm) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i409
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %.body410

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit413: ; preds = %.preheader696.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.val348 = load ptr, ptr %i.fm, align 8, !nonnull !9, !noundef !9
  %.val349 = load i64, ptr %i.fn, align 8, !noundef !9 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef range(i64 0, 4611686018427387904) %.val349)
          to label %.noexc416 unwind label %bb.dh

.noexc416:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit413
  %i.mk = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3734, !noundef !9 ; 3 uses
  %i.ml = icmp ult i64 %i.mk, 2305843009213693952
  call void @llvm.assume(i1 %i.ml)
  %.not.i.i414 = icmp eq i64 %.val349, 0
  br i1 %.not.i.i414, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %.noexc416
  %i.mm = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3734, !nonnull !9, !noundef !9
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mk
  %i.mo = shl nuw nsw i64 %.val349, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mn, ptr nonnull readonly align 4 %.val348, i64 %i.mo, i1 false)
  %.pre.i.i415 = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3734
  br label %bb.di

bb.dh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit413
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.di:                                            ; preds = %bb.dg, %.noexc416
  %i.mq = phi i64 [ %.pre.i.i415, %bb.dg ], [ %i.mk, %.noexc416 ]
  %i.mr = add i64 %i.mq, %.val349
  store i64 %i.mr, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3734
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i419 unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ms = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body376 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i419: ; preds = %bb.di
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit423 unwind label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit423: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.cq

bb.dl:                                            ; preds = %bb.dm, %bb.cu
  %i.mu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.cu
  %i.mv = extractvalue { ptr, i64 } %i.lt, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mv) ]
  %6 = extractvalue { ptr, i64 } %i.lt, 1         ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef range(i64 0, 4611686018427387904) %6)
          to label %.noexc426 unwind label %bb.dl

.noexc426:                                        ; preds = %bb.dm
  %i.mw = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3735, !noundef !9 ; 3 uses
  %i.mx = icmp ult i64 %i.mw, 2305843009213693952
  call void @llvm.assume(i1 %i.mx)
  %.not.i.i424 = icmp eq i64 %6, 0
  br i1 %.not.i.i424, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.noexc426
  %i.my = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3735, !nonnull !9, !noundef !9
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mw
  %i.na = shl nuw nsw i64 %6, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mz, ptr nonnull readonly align 4 %i.mv, i64 %i.na, i1 false)
  %.pre.i.i425 = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3735
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.noexc426
  %i.nb = phi i64 [ %.pre.i.i425, %bb.dn ], [ %i.mw, %.noexc426 ]
  %i.nc = add i64 %i.nb, %6
  store i64 %i.nc, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3735
  %i.nd = load i64, ptr %i.bo, align 8, !range !12, !alias.scope !3736, !noundef !9
  %i.ne = icmp eq i64 %i.nd, -1
  br i1 %i.ne, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit433, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i429 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body376 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i429: ; preds = %bb.dp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit433 unwind label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit433: ; preds = %bb.do, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.cq

bb.ds:                                            ; preds = %bb.dt, %.thread
  %i.nh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp) #36
          to label %.body376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %.thread
  %i.ni = extractvalue { ptr, i64 } %i.lp, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ni) ]
  %7 = extractvalue { ptr, i64 } %i.lp, 1         ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef range(i64 0, 4611686018427387904) %7)
          to label %.noexc436 unwind label %bb.ds

.noexc436:                                        ; preds = %bb.dt
  %i.nj = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3737, !noundef !9 ; 3 uses
  %i.nk = icmp ult i64 %i.nj, 2305843009213693952
  call void @llvm.assume(i1 %i.nk)
  %.not.i.i434 = icmp eq i64 %7, 0
  br i1 %.not.i.i434, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %.noexc436
  %i.nl = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !3737, !nonnull !9, !noundef !9
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.nj
  %i.nn = shl nuw nsw i64 %7, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nm, ptr nonnull readonly align 4 %i.ni, i64 %i.nn, i1 false)
  %.pre.i.i435 = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3737
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.noexc436
  %i.no = phi i64 [ %.pre.i.i435, %bb.du ], [ %i.nj, %.noexc436 ]
  %i.np = add i64 %i.no, %7
  store i64 %i.np, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !3737
  %i.nq = load i64, ptr %i.bp, align 8, !range !12, !alias.scope !3738, !noundef !9
  %i.nr = icmp eq i64 %i.nq, -1
  br i1 %i.nr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit443, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i439 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.body376 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i439: ; preds = %bb.dw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit443 unwind label %bb.bh

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit443: ; preds = %bb.dv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.cq

bb.dz:                                            ; preds = %bb.cq
  %i.nu = load i8, ptr %i.dm, align 1, !range !16, !noundef !9
  %i.nv = trunc nuw i8 %i.nu to i1
  %i.nw = load ptr, ptr %i.fs, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  br i1 %i.nv, label %bb.ec, label %bb.eb

bb.ea:                                            ; preds = %bb.cq
  %i.nx = load ptr, ptr %i.by, align 8, !nonnull !9, !noundef !9
  %i.ny = getelementptr i8, ptr %i.nx, i64 104
  %.val363 = load ptr, ptr %i.ny, align 8, !noundef !9 ; 3 uses
  %.not.i444 = icmp eq ptr %.val363, null
  br i1 %.not.i444, label %.invoke1590, label %bb.hs

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 0, ptr %i.bh, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx211, align 8
  store i64 0, ptr %.sroa.11.0..sroa_idx227, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store i64 0, ptr %i.bc, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx213, align 8
  store i64 0, ptr %.sroa.11.0..sroa_idx229, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr @423, ptr %i.ft, align 8
  store i64 16, ptr %i.fu, align 8
  store i64 -1, ptr %i.ba, align 8
  %i.nz = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba)
          to label %bb.ed unwind label %.loopexit.split-lp692.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ec:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.10.0..sroa_idx215, align 8
  store i64 0, ptr %.sroa.11.0..sroa_idx231, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr @423, ptr %i.gn, align 8
  store i64 16, ptr %i.go, align 8
  store i64 -1, ptr %i.ai, align 8
  %i.oa = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.gs unwind label %.loopexit.split-lp685.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit: ; preds = %.loopexit.split-lp714.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp692.loopexit.split-lp.loopexit.split-lp
  %.pn275 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1617, %.loopexit.split-lp692.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1880, %.loopexit.split-lp714.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #36
          to label %.body453 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp692.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc449.preheader, %bb.eb
  %lpad.loopexit.split-lp1617 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit

bb.ed:                                            ; preds = %bb.eb
  %i.ob = extractvalue { ptr, i64 } %i.nz, 0
  %i.oc = extractvalue { ptr, i64 } %i.nz, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.od = load ptr, ptr %.sroa.079.0, align 8, !nonnull !9, !align !17, !noundef !9
  %i.oe = load i64, ptr %i.ib, align 8, !noundef !9
  store i64 1, ptr %i.az, align 8
  store ptr %i.od, ptr %.sroa.4128.0..sroa_idx, align 8
  store i64 %i.oe, ptr %.sroa.5129.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ob, i64 noundef %i.oc, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.az, i64 noundef 1)
          to label %bb.ee unwind label %.loopexit.split-lp714.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp714.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ed, %bb.ef
  %lpad.loopexit.split-lp1880 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !3739)
  %i.of = load i8, ptr %i.bb, align 8, !range !16, !alias.scope !3739, !noundef !9
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %bb.ef, label %.noexc449.preheader, !prof !11

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3740
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !range !21, !alias.scope !3739, !noundef !9
  store i8 %i.oi, ptr %i.c, align 1, !noalias !3740
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #40
          to label %.noexc341 unwind label %.loopexit.split-lp714.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc341:                                        ; preds = %bb.ef
  unreachable

.noexc449.preheader:                              ; preds = %bb.ee
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit450 unwind label %.loopexit.split-lp692.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit450: ; preds = %.noexc449.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.oj = load i64, ptr %i.ba, align 8, !range !12, !alias.scope !3741, !noundef !9
  %i.ok = icmp eq i64 %i.oj, -1
  br i1 %i.ok, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit456, label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit450
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i452 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ol = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body453 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i452: ; preds = %bb.eg
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit456 unwind label %bb.ej

.body453:                                         ; preds = %bb.ej, %bb.eh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn277 = phi { ptr, i32 } [ %.pn275, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.on, %bb.ej ], [ %i.ol, %bb.eh ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #36
          to label %.body470 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ej:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i452
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %.body453

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit456: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit450, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.oo = load ptr, ptr %i.fv, align 8, !nonnull !9, !noundef !9
  %i.op = load i64, ptr %i.fw, align 8, !noundef !9
  store ptr %i.oo, ptr %i.fx, align 8
  store i64 %i.op, ptr %i.fy, align 8
  store i64 1, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr @425, ptr %i.fz, align 8
  store i64 15, ptr %i.ga, align 8
  store i64 -1, ptr %i.ay, align 8
  %i.oq = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.el unwind label %bb.ek     ; 2 uses
end_hunk_16
