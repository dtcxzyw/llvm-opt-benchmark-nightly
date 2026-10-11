Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.04?download=true
inline.NumInlined: 683
inline.NumDeleted: 302
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEEB2v_:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB22_.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorENtNtB4_6marker4SendEL_EEB2f_.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEEEB2Q_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2s_5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB1Z_5error5ErrorENtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropB21_.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_3pin3PinIBY_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB3w_5error5ErrorENtNtB4_6marker4SendEL_EEEL_EEEB3y_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEL_EEB3c_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEL_EEB3c_.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEL_EEB3c_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB3a_5error5ErrorENtNtB4_6marker4SendEL_EEEL_EEB3c_.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDINtNtNtCsgxBkk5gSRhY_4core3ops8function5FnMutuEp6OutputINtNtBO_3pin3PinIBx_DNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2X_5error5ErrorENtNtBO_6marker4SendEL_EEEL_ENtNtBM_4drop4Drop4dropB2Z_.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDINtNtNtCsgxBkk5gSRhY_4core3ops8function5FnMutuEp6OutputINtNtBO_3pin3PinIBx_DNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2X_5error5ErrorENtNtBO_6marker4SendEL_EEEL_ENtNtBM_4drop4Drop4dropB2Z_.exit4.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDINtNtNtCsgxBkk5gSRhY_4core3ops8function5FnMutuEp6OutputINtNtBO_3pin3PinIBx_DNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataNtNtB2X_5error5ErrorENtNtBO_6marker4SendEL_EEEL_ENtNtBM_4drop4Drop4dropB2Z_.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.0.val, align 8, !range !7, !alias.scope !30, !noundef !4
  %switch.i.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #21
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #21
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !47, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !48
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !63, !noundef !4
  %1 = icmp eq i64 %i.d, 0
  br i1 %1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !68, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !69
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %0)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtBG_5boxed3BoxDNtNtNtB1y_4list3api7ListDynEL_EEEEB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1l_4list3api7ListDynEL_EEENtNtNtBK_3ops4drop4Drop4dropB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1s_4list3api7ListDynEL_EEENtNtNtBR_3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtBG_5boxed3BoxDNtNtNtB1F_4list3api7ListDynEL_EEEEB1J_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1s_4list3api7ListDynEL_EEENtNtNtBR_3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtBG_5boxed3BoxDNtNtNtB1F_4list3api7ListDynEL_EEEEB1J_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3api7CopyDynEL_EEB1k_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  invoke void %i.c(ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3api7CopyDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val2 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3api7CopyDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3api7CopyDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3api7CopyDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3api7CopyDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4copy3api7CopyDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #21
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api7ReadDynEL_EEB1k_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api7ReadDynEL_ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #21
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate15SimulateDeleterEBH_:bb.a
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !728
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit7

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit7 unwind label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit: ; preds = %.body, %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.y, %bb.j ], [ %eh.lpad-body, %bb.h ], [ %eh.lpad-body, %.body ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EEB1k_(ptr %.val3, ptr nonnull %.val4) #24
          to label %common.resume unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit7: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ab = load ptr, ptr %.val2, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ab(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EEB1k_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EEB1k_.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #21
  br label %common.resume

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit, %bb.n, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.ah, %bb.o ], [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete3api9DeleteDynEL_EEB1k_.exit: ; preds = %bb.l, %bb.m
  ret void

bb.p:                                             ; preds = %bb.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate15SimulateServiceEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !735, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !735
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate18ServicerFlatListerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !782, !nonnull !4, !noundef !4
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !782
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport16HttpTransportDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !786, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !787
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #23
          to label %.body unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !791, !nonnull !4, !noundef !4
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !792
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !795, !nonnull !4, !noundef !4
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !795
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

bb.h:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit unwind label %bb.r

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit.i, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !798, !nonnull !4, !noundef !4
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !798
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit6

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit6 unwind label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit: ; preds = %.body, %bb.h, %bb.j
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %eh.lpad-body, %bb.h ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #24
          to label %bb.n unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit6: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_.exit, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.y = load i64, ptr %0, align 8, !range !9, !alias.scope !799, !noundef !4
  %1 = icmp eq i64 %i.y, 0
  br i1 %1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !804, !noundef !4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !805
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit
  %.pn2 = phi { ptr, i32 } [ %i.af, %bb.o ], [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtBG_5boxed3BoxDNtNtNtB1y_4list3api7ListDynEL_EEEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #24
          to label %common.resume unwind label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.l, %bb.k, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit6, %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1l_4list3api7ListDynEL_EEENtNtNtBK_3ops4drop4Drop4dropB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtBG_5boxed3BoxDNtNtNtB1y_4list3api7ListDynEL_EEEEB1C_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1s_4list3api7ListDynEL_EEENtNtNtBR_3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %.pn2, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtBG_5boxed3BoxDNtNtNtB1y_4list3api7ListDynEL_EEEEB1C_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1s_4list3api7ListDynEL_EEENtNtNtBR_3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  ret void

bb.r:                                             ; preds = %bb.h, %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_EEB1f_.exit
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operation16OperationContextEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !827, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !827
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport16HttpTransportDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !831, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !831
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !835, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !835
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit2

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api7ExecuteEL_E9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit2

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit2: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executor8ExecutorEBJ_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !850, !noundef !4
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !855, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !856
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_(ptr %.val2, ptr nonnull %.val3) #24
          to label %common.resume unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1 = load ptr, ptr %i.k, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.l = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.l(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.r, %bb.j ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit: ; preds = %bb.g, %bb.h
  ret void

bb.k:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCs9k1U6oT1TZJ_5tokio4task5spawn5spawnINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtBM_6future6future6Futurep6OutputuNtNtBM_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.c = atomicrmw add ptr @_RNvNvMs_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !865 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !16, !noalias !866, !noundef !4
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.thread.i.i, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_RNvMNtNtNtNtCs9k3SxhrAWiO_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7ContextE16get_or_init_slowCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.d)
          to label %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.w, !noalias !866 ; 2 uses

_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.d
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.thread.i.i

bb.e:                                             ; preds = %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.j = load ptr, ptr %1, align 8, !invariant.load !4, !alias.scope !864, !noalias !867 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.j(ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.i, !noalias !866

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !5, !invariant.load !4, !alias.scope !864, !noalias !867 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvMs2_NtNtCs9k3SxhrAWiO_3std6thread5localINtB6_8LocalKeyNtNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB34_6future6future6Futurep6OutputuNtNtB34_6marker4SendEL_EEE0INtNtNtBY_4task4join10JoinHandleuEE0INtNtB34_6option6OptionB59_EECs5XgW7KoffLW_12opendal_core.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !6, !invariant.load !4, !alias.scope !864, !noalias !867
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #21, !noalias !866
  br label %_RINvMs2_NtNtCs9k3SxhrAWiO_3std6thread5localINtB6_8LocalKeyNtNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7current12with_currentNCINvNtNtB10_4task5spawn11spawn_innerINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB34_6future6future6Futurep6OutputuNtNtB34_6marker4SendEL_EEE0INtNtNtBY_4task4join10JoinHandleuEE0INtNtB34_6option6OptionB59_EECs5XgW7KoffLW_12opendal_core.exit.thread.i

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !5, !invariant.load !4, !alias.scope !864, !noalias !867 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !6, !invariant.load !4, !alias.scope !864, !noalias !867
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #21, !noalias !866
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.w, %bb.v, %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputuNtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i.i.i9.i.i, %bb.j, %bb.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %i.at, %bb.w ], [ %i.as, %bb.v ], [ %eh.lpad-body.i.i.i, %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputuNtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i.i.i9.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.c
  %.sroa.0.0.i.i6.i.i = phi ptr [ %i.h, %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6.i.i, i64 8 ; 8 uses
  %i.w = load i64, ptr %i.v, align 8, !noalias !868, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.w, 9223372036854775807
  br i1 %i.x, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.thread.i.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %.noexc.i.i.i unwind label %bb.v, !noalias !868

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtNtCsgxBkk5gSRhY_4core6future6future6Futurep6OutputuNtNtBN_6marker4SendEL_ENtNtNtBN_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i.i.i9.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %i.ak, %bb.s ], [ %i.ak, %bb.r ]
  %i.y = load i64, ptr %i.v, align 8, !noalias !869, !noundef !4
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.v, align 8, !noalias !869
  br label %common.resume.i.i

bb.l:                                             ; preds = %_RNvYNCNKNvNtNtCs9k1U6oT1TZJ_5tokio7runtime7context7CONTEXT00INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs5XgW7KoffLW_12opendal_core.exit.thread.i.i
  %i.aa = add nuw nsw i64 %i.w, 1
  store i64 %i.aa, ptr %i.v, align 8, !noalias !868
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6.i.i, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !868, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = invoke noundef nonnull ptr @_RINvMs2_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_threadNtB6_6Handle5spawnINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB1r_6future6future6Futurep6OutputuNtNtB1r_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab, ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %_RINvNtNtCs9k1U6oT1TZJ_5tokio4task5spawn11spawn_innerINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtBT_6future6future6Futurep6OutputuNtNtBT_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.t, !noalias !869

bb.n:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %1, align 8, !invariant.load !4, !alias.scope !864, !noalias !869 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i10.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.ae(ptr noundef nonnull %0)
          to label %bb.p unwind label %bb.r, !noalias !868

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !5, !invariant.load !4, !alias.scope !864, !noalias !869 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.thread.i, label %bb.q
end_hunk_1
begin_hunk_2_@_RNCNvXs4_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_15SimulateServiceNtNtNtBb_3raw8accessor7Service4stat0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.de)
          to label %bb.ao unwind label %bb.an, !noalias !1067

bb.an:                                            ; preds = %bb.am
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i

bb.ao:                                            ; preds = %bb.am
  %.not.i51.i = icmp eq i64 %i.dg, -1
  br i1 %.not.i51.i, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %.sroa.3.0..sroa_idx186.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx186.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, i64 24, i1 false), !noalias !1066
  store ptr %.sroa.3.sroa.0.0.copyload.i, ptr %i.l, align 8, !alias.scope !1079, !noalias !1066
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.3.sroa.3.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1079, !noalias !1066
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %.val48.i = load i16, ptr %i.dj, align 4, !noalias !1066, !noundef !4
  %i.dk = and i16 %.val48.i, 3
  %switch.selectcmp1.i.i = icmp eq i16 %i.dk, 1
  br i1 %switch.selectcmp1.i.i, label %bb.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1066
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j, i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43)
          to label %bb.as unwind label %bb.ar, !noalias !1067

bb.ar:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1066
  %i.dm = icmp eq ptr %.sroa.3.sroa.0.0.copyload.i, null
  br i1 %i.dm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i, label %bb.aw

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split: ; preds = %bb.ap, %bb.az
  %.sroa.0146.2.i.ph = phi i64 [ %i.dg, %bb.az ], [ -1, %bb.ap ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.i, i64 24, i1 false), !noalias !1066
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split, %bb.au, %bb.at, %bb.as
  %.sroa.16161.2.i = phi ptr [ %.sroa.16161.0.copyload.i, %bb.as ], [ %.sroa.16161.0.copyload.i, %bb.at ], [ %.sroa.16161.0.copyload.i, %bb.au ], [ %.sroa.3.sroa.3.0.copyload.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split ]
  %.sroa.10150.2.i = phi ptr [ %.sroa.10150.0.copyload.i, %bb.as ], [ %.sroa.10150.0.copyload.i, %bb.at ], [ %.sroa.10150.0.copyload.i, %bb.au ], [ %.sroa.3.sroa.0.0.copyload.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split ]
  %.sroa.0146.2.i = phi i64 [ %.sroa.0146.0.copyload.i, %bb.as ], [ %.sroa.0146.0.copyload.i, %bb.at ], [ %.sroa.0146.0.copyload.i, %bb.au ], [ %.sroa.0146.2.i.ph, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1066
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit.i

bb.as:                                            ; preds = %bb.aq
  %.sroa.0146.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !1066 ; 3 uses
  %.sroa.10150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.10150.0.copyload.i = load ptr, ptr %.sroa.10150.0..sroa_idx.i, align 8, !noalias !1066 ; 3 uses
  %.sroa.16161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.16161.0.copyload.i = load ptr, ptr %.sroa.16161.0..sroa_idx.i, align 8, !noalias !1066 ; 3 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.0..sroa_idx.i, i64 64, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1066
  %i.dn = icmp eq ptr %.sroa.3.sroa.0.0.copyload.i, null
  br i1 %i.dn, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.do = atomicrmw sub ptr %.sroa.3.sroa.0.0.copyload.i, i64 1 release, align 8, !noalias !1080
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i unwind label %bb.av, !noalias !1067

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i: ; preds = %bb.aj, %bb.an, %bb.ax, %bb.aw, %bb.av, %bb.ar
  %.pn33.pn.i = phi { ptr, i32 } [ %i.dl, %bb.ar ], [ %i.dq, %bb.av ], [ %i.dl, %bb.aw ], [ %i.dl, %bb.ax ], [ %i.df, %bb.aj ], [ %i.di, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1066
  br label %.body62.i

bb.av:                                            ; preds = %bb.au
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i

bb.aw:                                            ; preds = %bb.ar
  %i.dr = atomicrmw sub ptr %.sroa.3.sroa.0.0.copyload.i, i64 1 release, align 8, !noalias !1081
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ax, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit54.i unwind label %bb.ay, !noalias !1067

bb.ay:                                            ; preds = %bb.cn, %bb.cf, %bb.bt, %bb.bb, %bb.ax, %bb.aj
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1067
  unreachable

bb.az:                                            ; preds = %bb.ao
  %.sroa.17.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.17.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.580.i, i64 40, i1 false), !noalias !1066
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i.sink.split

bb.ba:                                            ; preds = %bb.z, %bb.h
  %i.du = phi ptr [ %i.ag, %bb.z ], [ %i.af, %bb.h ] ; 6 uses
  %i.dv = phi ptr [ %i.ah, %bb.z ], [ %i.ae, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1066
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  invoke fastcc void @_RNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ListDynEL_ENtB7_4List4next0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull align 8 %i.dw, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bc unwind label %bb.bb, !noalias !1067

bb.bb:                                            ; preds = %bb.ba
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_(ptr noundef nonnull align 8 %i.dw) #24
          to label %.body.i unwind label %bb.ay, !noalias !1067

bb.bc:                                            ; preds = %bb.ba
  %i.dy = load i64, ptr %i.e, align 8, !range !22, !noalias !1066, !noundef !4 ; 3 uses
  %i.dz = icmp eq i64 %i.dy, -2
  br i1 %i.dz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1066
  store i64 -2, ptr %0, align 8, !alias.scope !1067, !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  br label %.thread26

bb.be:                                            ; preds = %bb.bc
  %.sroa.3121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3121.sroa.0.0.copyload.i = load ptr, ptr %.sroa.3121.0..sroa_idx.i, align 8, !noalias !1066 ; 3 uses
  %.sroa.3121.sroa.3.0..sroa.3121.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3121.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3121.sroa.3.0..sroa.3121.0..sroa_idx.sroa_idx.i, align 8, !noalias !1066 ; 4 uses
  %.sroa.3121.sroa.5.0..sroa.3121.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.0..sroa.3121.0..sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !1066
  %.sroa.5122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5122.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5122.0..sroa_idx.i, i64 32, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1066
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.eb = load i8, ptr %i.ea, align 8, !range !13, !noalias !1066, !noundef !4
  %cond.i.i = icmp eq i8 %i.eb, 3
  br i1 %cond.i.i, label %bb.bf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val.i.i = load ptr, ptr %i.ec, align 8, !noalias !1066 ; 5 uses
  %i.ed = getelementptr i8, ptr %1, i64 168
  %.val1.i.i = load ptr, ptr %i.ed, align 8, !noalias !1066, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.ee = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !1067 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.ee(ptr noundef nonnull %.val.i.i)
          to label %bb.bh unwind label %bb.bj, !noalias !1067

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.eg, i64 noundef range(i64 1, 536870913) %i.ej) #21, !noalias !1067
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i

bb.bj:                                            ; preds = %bb.bg
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.em = load i64, ptr %i.el, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %.body.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.em, i64 noundef range(i64 1, 536870913) %i.ep) #21, !noalias !1067
  br label %.body.i

bb.bl:                                            ; preds = %bb.bp
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i: ; preds = %bb.bi, %bb.bh, %bb.be
  %.not.i55.i = icmp eq i64 %i.dy, -1
  br i1 %.not.i55.i, label %bb.bm, label %bb.cc

bb.bm:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i
  %.sroa.5206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5206.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.i, i64 32, i1 false), !noalias !1066
  store ptr %.sroa.3121.sroa.0.0.copyload.i, ptr %i.f, align 8, !noalias !1066
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.3121.sroa.3.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1066
  %.not.i = icmp eq ptr %.sroa.3121.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.er = icmp eq ptr %.sroa.3121.sroa.3.0.copyload.i, null
  br i1 %i.er, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.es = atomicrmw sub ptr %.sroa.3121.sroa.3.0.copyload.i, i64 1 release, align 8, !noalias !1082
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.bp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i unwind label %bb.bl, !noalias !1067

bb.bq:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1066
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 26)
          to label %bb.bs unwind label %bb.br, !noalias !1067

bb.br:                                            ; preds = %bb.bq
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1066
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %.sroa.0146.0.copyload147.i = load i64, ptr %i.b, align 8, !noalias !1066
  %.sroa.10150.0..sroa_idx151.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.10150.0.copyload152.i = load ptr, ptr %.sroa.10150.0..sroa_idx151.i, align 8, !noalias !1066
  %.sroa.16161.0..sroa_idx162.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.16161.0.copyload163.i = load ptr, ptr %.sroa.16161.0..sroa_idx162.i, align 8, !noalias !1066
  %.sroa.17.0..sroa_idx174.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.0..sroa_idx174.i, i64 64, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1066
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bu, %bb.br, %.body.i
  %.pn21.pn.i = phi { ptr, i32 } [ %.pn21.i, %.body.i ], [ %i.ex, %bb.bu ], [ %i.eu, %bb.br ]
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val42.i = load ptr, ptr %i.ev, align 8, !noalias !1066
  %i.ew = getelementptr i8, ptr %1, i64 144
  %.val43.i = load ptr, ptr %i.ew, align 8, !noalias !1066, !nonnull !4, !align !10, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_(ptr %.val42.i, ptr nonnull %.val43.i) #24
          to label %.body62.i unwind label %bb.ay, !noalias !1067

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1066
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5fresh(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.c, i8 noundef 1)
          to label %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i unwind label %bb.bu, !noalias !1067

bb.bu:                                            ; preds = %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1066
  br label %bb.bt

_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit58.i
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5build(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.c)
          to label %bb.bv unwind label %bb.bu, !noalias !1067

bb.bv:                                            ; preds = %_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder3dir.exit60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1066
  %.sroa.0187.0.copyload.i = load ptr, ptr %i.d, align 8, !alias.scope !1083, !noalias !1066
  %.sroa.5188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5188.0.copyload.i = load ptr, ptr %.sroa.5188.0..sroa_idx.i, align 8, !alias.scope !1083, !noalias !1066
  %.sroa.6189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6189.0..sroa_idx.i, i64 24, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1066
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cc, %bb.bv, %bb.bs
  %.sroa.16161.3.i = phi ptr [ %.sroa.5188.0.copyload.i, %bb.bv ], [ %.sroa.16161.0.copyload163.i, %bb.bs ], [ %.sroa.3121.sroa.3.0.copyload.i, %bb.cc ] ; 2 uses
  %.sroa.10150.3.i = phi ptr [ %.sroa.0187.0.copyload.i, %bb.bv ], [ %.sroa.10150.0.copyload152.i, %bb.bs ], [ %.sroa.3121.sroa.0.0.copyload.i, %bb.cc ] ; 2 uses
  %.sroa.0146.3.i = phi i64 [ -1, %bb.bv ], [ %.sroa.0146.0.copyload147.i, %bb.bs ], [ %i.dy, %bb.cc ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i = load ptr, ptr %i.ey, align 8, !noalias !1066 ; 5 uses
  %i.ez = getelementptr i8, ptr %1, i64 144
  %.val41.i = load ptr, ptr %i.ez, align 8, !noalias !1066, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.fa = load ptr, ptr %.val41.i, align 8, !invariant.load !4, !noalias !1067 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.fa, null
  br i1 %.not.i61.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.fa(ptr noundef nonnull %.val.i)
          to label %bb.by unwind label %bb.ca, !noalias !1067

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.fb = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fe = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.fc, i64 noundef range(i64 1, 536870913) %i.ff) #21, !noalias !1067
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit.i

bb.ca:                                            ; preds = %bb.bx
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !range !5, !invariant.load !4, !noalias !1067 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %.body62.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fk = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !range !6, !invariant.load !4, !noalias !1067
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.fi, i64 noundef range(i64 1, 536870913) %i.fl) #21, !noalias !1067
  br label %.body62.i

bb.cc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i
  %.sroa.17.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.17.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.56..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5122.i, i64 32, i1 false), !noalias !1066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3121.sroa.5.i, i64 32, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1066
  br label %bb.bw

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit65.i: ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.cd, %.body62.i
  %i.fm = phi ptr [ %i.cq, %bb.cd ], [ %i.cx, %.body62.i ], [ %i.cx, %bb.cn ], [ %i.cx, %bb.cl ], [ %i.cx, %bb.cm ]
  %i.fn = phi ptr [ %i.cr, %bb.cd ], [ %i.cy, %.body62.i ], [ %i.cy, %bb.cn ], [ %i.cy, %bb.cl ], [ %i.cy, %bb.cm ]
  %.pn39.i = phi { ptr, i32 } [ %i.fp, %bb.cd ], [ %.pn36.pn.i, %.body62.i ], [ %.pn36.pn.i, %bb.cn ], [ %.pn36.pn.i, %bb.cl ], [ %.pn36.pn.i, %bb.cm ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 0, ptr %i.fo, align 8, !noalias !1066
  store i8 2, ptr %i.fm, align 1, !noalias !1066
  br label %.body

bb.cd:                                            ; preds = %bb.af
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit65.i

bb.ce:                                            ; preds = %bb.t, %bb.i
  %i.fq = phi ptr [ %i.ag, %bb.t ], [ %i.af, %bb.i ] ; 4 uses
  %i.fr = phi ptr [ %i.ah, %bb.t ], [ %i.ae, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1066
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  invoke fastcc void @_RNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtB7_10ServiceDynEL_ENtB7_7Service4stat0Bb_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull align 8 %i.fs, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cg unwind label %bb.cf, !noalias !1067

bb.cf:                                            ; preds = %bb.ce
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.fs) #24
          to label %.body62.i unwind label %bb.ay, !noalias !1067

bb.cg:                                            ; preds = %bb.ce
  %i.fu = load i64, ptr %i.a, align 8, !range !22, !noalias !1066, !noundef !4 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, -2
  br i1 %i.fv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  store i64 -2, ptr %0, align 8, !alias.scope !1067, !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1066
  br label %.thread26

bb.ci:                                            ; preds = %bb.cg
  %.sroa.10150.0..sroa_idx155.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.10150.0.copyload156.i = load ptr, ptr %.sroa.10150.0..sroa_idx155.i, align 8, !noalias !1066
  %.sroa.16161.0..sroa_idx166.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.16161.0.copyload167.i = load ptr, ptr %.sroa.16161.0..sroa_idx166.i, align 8, !noalias !1066
  %.sroa.17.0..sroa_idx176.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.17.0..sroa_idx176.i, i64 64, i1 false), !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1066
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.fs)
          to label %bb.ck unwind label %bb.cj, !noalias !1067

bb.cj:                                            ; preds = %bb.ci
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1066
  br label %bb.cp

bb.cl:                                            ; preds = %.body62.i
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !1087, !noalias !1066, !noundef !4 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit65.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ga = atomicrmw sub ptr %i.fy, i64 1 release, align 8, !noalias !1088
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.cn, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit65.i

end_hunk_2
begin_hunk_3_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a
  %i.ap = load i64, ptr %i.ao, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit

bb.p:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #21
  br label %.body

.body:                                            ; preds = %.thread301, %bb.ft, %bb.fs, %bb.fu, %bb.q, %bb.p, %bb.fv, %bb.fr, %bb.h
  %.pn90.pn.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %.pn90.pn307, %bb.fr ], [ %.pn90.pn, %bb.fv ], [ %.pn90.pn307, %bb.ft ], [ %.pn90.pn307, %bb.fs ], [ %i.ag, %bb.h ], [ %.pn90, %.thread301 ], [ %i.at, %bb.q ], [ %.pn90.pn307, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit: ; preds = %bb.o, %bb.n, %bb.k
  %i.az = load i64, ptr %i.h, align 8, !range !8, !noundef !4 ; 2 uses
  %.not76 = icmp eq i64 %i.az, -1
  br i1 %.not76, label %bb.r, label %bb.as

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !9, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1               ; 2 uses
  br i1 %i.bc, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %.sroa.0280.0.copyload = load i64, ptr %i.be, align 8, !alias.scope !1318
  store i64 0, ptr %i.be, align 8, !alias.scope !1319, !noalias !1317
  %i.bf = trunc nuw i64 %.sroa.0280.0.copyload to i1
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i64 40, i1 false)
  br label %bb.au

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !1320, !noalias !1321, !noundef !4 ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit: ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bl = add nsw i64 %i.bi, -1                   ; 3 uses
  store i64 %i.bl, ptr %i.bh, align 8, !alias.scope !1320, !noalias !1321
  %i.bm = load i64, ptr %i.bk, align 8, !range !5, !alias.scope !1320, !noalias !1321, !noundef !4
  %i.bn = icmp samesign ult i64 %i.bl, %i.bm
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1320, !noalias !1321, !nonnull !4, !noundef !4
  %i.bq = icmp ult i64 %i.bi, 144115188075855873
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.bp, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 64, i1 false), !noalias !1320
  %.pr = load i64, ptr %i.a, align 8, !alias.scope !1322
  %i.bs = icmp eq i64 %.pr, 2
  br i1 %i.bs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit, label %bb.v

bb.v:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit: ; preds = %bb.u, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bf

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180, %bb.w
  %.pn90.pn = phi { ptr, i32 } [ %i.bt, %bb.w ], [ %.pn83.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180 ] ; 2 uses
  %.sroa.025.0 = xor i1 %i.bc, true
  %i.bu = load i64, ptr %i.h, align 8, !range !8, !noundef !4
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %bb.fr, label %bb.fv

.thread301:                                       ; preds = %bb.bd, %bb.fq
  %.pn90 = phi { ptr, i32 } [ %i.ee, %bb.bd ], [ %.pn86.pn.pn, %bb.fq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bw = load i64, ptr %i.h, align 8, !range !8, !noundef !4
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.fr, label %.body

bb.y:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.val139 = load i16, ptr %i.bz, align 4, !noundef !4
  %i.ca = and i16 %.val139, 3
  %switch.selectcmp.i = icmp eq i16 %i.ca, 2
  br i1 %switch.selectcmp.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false)
  br label %bb.au

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.by, i64 40, i1 false)
  %i.cb = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ac:                                            ; preds = %bb.aa
  %i.cd = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !9, !alias.scope !1323, !noundef !4
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit, label %bb.ad, !prof !19

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #25
          to label %.noexc176 unwind label %bb.ae

.noexc176:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit: ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ck)
          to label %bb.ag unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ag:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  %i.co = icmp eq i64 %i.ce, %i.cn
  br i1 %i.co, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ag
  %i.cp = extractvalue { ptr, i64 } %i.cl, 0
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.cd, ptr nonnull readonly %i.cp, i64 %i.ce), !alias.scope !1324
  %.not314 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not314, label %bb.ah, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

bb.ah:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.cq = load ptr, ptr %i.b, align 8, !alias.scope !1329, !noundef !4 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !1330
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit unwind label %bb.an

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.ag, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.cu = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.cv = load i64, ptr %i.cu, align 8, !range !9, !alias.scope !1331, !noundef !4
  %3 = icmp eq i64 %i.cv, 0
  br i1 %3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !1336, !noundef !4 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !1337
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.am, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cw) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit unwind label %bb.ao

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180: ; preds = %bb.ap, %.thread, %bb.aq, %bb.ao, %bb.an
  %.pn83.pn = phi { ptr, i32 } [ %i.db, %bb.an ], [ %i.dd, %bb.ao ], [ %.pn80.pn, %bb.aq ], [ %.pn80.pn, %.thread ], [ %.pn80.pn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.an:                                            ; preds = %bb.aj
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit: ; preds = %bb.ai, %bb.ah, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.al, %bb.ak, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread, %bb.am
  %i.dc = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.dc, align 8
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bf

bb.ao:                                            ; preds = %bb.am
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.de, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

.thread:                                          ; preds = %bb.ae, %bb.af, %bb.ab
  %.pn80.pn = phi { ptr, i32 } [ %i.cc, %bb.ab ], [ %i.cm, %bb.af ], [ %i.cj, %bb.ae ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.df = load ptr, ptr %i.b, align 8, !alias.scope !1342, !noundef !4 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180, label %bb.ap

bb.ap:                                            ; preds = %.thread
  %i.dh = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !1343
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.aq, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.fu, %bb.do, %bb.dd, %bb.aq, %bb.ek, %bb.fv, %bb.fq, %bb.fj, %bb.ey, %bb.ej, %bb.bo, %bb.h
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.as:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 81
  %.val137 = load i8, ptr %i.dk, align 1, !range !1344, !noundef !4 ; 2 uses
  %i.dl = icmp eq i8 %.val137, 3
  br i1 %i.dl, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.455.0.copyload = load i64, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.556.0..sroa_idx, i64 40, i1 false)
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.sroa.0, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.657.0..sroa_idx, i64 25, i1 false)
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx, i64 6, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.t, %bb.z, %bb.at
  %.sroa.15.sroa.4.0 = phi i8 [ undef, %bb.z ], [ undef, %bb.t ], [ %.val137, %bb.at ]
  %.sroa.8.0 = phi i64 [ 1, %bb.z ], [ 1, %bb.t ], [ %.sroa.455.0.copyload, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219: ; preds = %bb.fk, %bb.ds, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224, %bb.dt, %bb.au
  %.sroa.15.sroa.4.1 = phi i8 [ undef, %bb.fk ], [ %.sroa.15.sroa.4.0, %bb.au ], [ %.sroa.15.sroa.4.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.15.sroa.4.3, %bb.dt ], [ %.sroa.15.sroa.4.3, %bb.ds ]
  %.sroa.030.1 = phi i64 [ -1, %bb.fk ], [ %i.az, %bb.au ], [ %.sroa.030.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.030.3, %bb.dt ], [ %.sroa.030.3, %bb.ds ]
  %.sroa.8.1 = phi i64 [ 0, %bb.fk ], [ %.sroa.8.0, %bb.au ], [ %.sroa.8.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.8.3, %bb.dt ], [ %.sroa.8.3, %bb.ds ]
  store i64 %.sroa.030.1, ptr %0, align 8
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx34, align 8
  %.sroa.12.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, i64 40, i1 false)
  %.sroa.15.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.0..sroa_idx43, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.sroa.0, i64 25, i1 false)
  %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx43.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %.sroa.15.sroa.4.1, ptr %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx43.sroa_idx, align 1
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx43.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx43.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5, i64 6, i1 false)
  br label %common.ret

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !range !9, !alias.scope !1345, !noundef !4
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.dq)
          to label %.noexc183 unwind label %bb.ax ; 2 uses

.noexc183:                                        ; preds = %bb.aw
  %i.ds = extractvalue { ptr, i64 } %i.dr, 0
  %i.dt = extractvalue { ptr, i64 } %i.dr, 1
  br label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.ay:                                            ; preds = %bb.az, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f)
          to label %bb.be unwind label %bb.bd

bb.az:                                            ; preds = %.noexc183, %bb.av
  %.sroa.02.0.i = phi ptr [ %i.ds, %.noexc183 ], [ null, %bb.av ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.dt, %.noexc183 ], [ undef, %bb.av ]
  %.not.i184 = icmp eq ptr %.sroa.02.0.i, null    ; 2 uses
  %..i = select i1 %.not.i184, ptr @54, ptr %.sroa.02.0.i
  %.5.i = select i1 %.not.i184, i64 9, i64 %.sroa.3.0.i
  store ptr %..i, ptr %i.e, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.5.i, ptr %i.dv, align 8
  %i.dw = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, 6
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp samesign ugt i64 %i.dw, 1
  br i1 %i.dy, label %bb.bb, label %bb.ay

bb.ba:                                            ; preds = %bb.bb
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.fq

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.5275.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @57, ptr %i.c, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 30, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @57, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 30, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @56, ptr %i.ed, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @55, ptr noundef nonnull %i.d, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.bc unwind label %bb.ba

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ay

bb.bd:                                            ; preds = %bb.ay
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.thread301
end_hunk_3
begin_hunk_4_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a

bb.bv:                                            ; preds = %bb.bu
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i186) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i186, i64 noundef range(i64 1, -9223372036854775808) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192

bb.bw:                                            ; preds = %bb.bt
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %.body190, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fu = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i186, i64 noundef range(i64 1, -9223372036854775808) %i.fs, i64 noundef range(i64 1, 536870913) %i.fv) #21
  br label %.body190

.body190:                                         ; preds = %.thread290, %bb.bx, %bb.bw, %bb.bo
  %.pn104.pn.pn = phi { ptr, i32 } [ %i.fq, %bb.bw ], [ %i.fq, %bb.bx ], [ %.pn104, %.thread290 ], [ %i.fd, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12320)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.de

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192: ; preds = %bb.bv, %bb.bu, %bb.br
  %.not62 = icmp eq i64 %i.fe, -1
  br i1 %.not62, label %bb.by, label %bb.dq

bb.by:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12320, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12320)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %i.fw = trunc nuw i64 %.sroa.4328.0.copyload to i1
  br i1 %i.fw, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2, i64 40, i1 false)
  %i.fx = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !1352, !noalias !1353, !noundef !4 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gb = atomicrmw add ptr %i.fz, i64 1 monotonic, align 8, !noalias !1354
  %i.gc = icmp slt i64 %i.gb, 0
  br i1 %i.gc, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gd = load i64, ptr %i.ga, align 8, !alias.scope !1352, !noalias !1353, !noundef !4
  br label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.trap()
  unreachable

bb.cd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204, %bb.by
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 8, !range !14, !noundef !4
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.dh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit

bb.ce:                                            ; preds = %bb.cb, %bb.bz
  %.sroa.5.0.i.i = phi i64 [ %i.gd, %bb.cb ], [ undef, %bb.bz ]
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 24, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 48 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 1, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fz, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.gm = load <2 x ptr>, ptr %i.gk, align 8
  store <2 x ptr> %i.gm, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !1355, !noalias !1356, !noundef !4 ; 3 uses
  %i.gp = load i64, ptr %i.gi, align 8, !range !5, !alias.scope !1355, !noalias !1356, !noundef !4
  %i.gq = icmp eq i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1s_4list3api7ListDynEL_EEE8grow_oneB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %bb.ci unwind label %bb.cg, !noalias !1356

bb.cg:                                            ; preds = %bb.cf
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #24
          to label %.body194 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

.body194:                                         ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.db

bb.ci:                                            ; preds = %bb.cf, %bb.ce
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !1355, !noalias !1356, !nonnull !4, !noundef !4
  %i.gv = getelementptr inbounds nuw [64 x i8], ptr %i.gu, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.gw = add i64 %i.go, 1
  store i64 %i.gw, ptr %i.gn, align 8, !alias.scope !1355, !noalias !1356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %.val138 = load i16, ptr %i.gx, align 4, !noundef !4
  %i.gy = and i16 %.val138, 3
  %switch.selectcmp.i196 = icmp eq i16 %i.gy, 2
  br i1 %switch.selectcmp.i196, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.gz = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k)
          to label %bb.cn unwind label %bb.cm     ; 2 uses

bb.cl:                                            ; preds = %bb.dr, %bb.cj
  %.sroa.15.sroa.4.2 = phi i8 [ undef, %bb.cj ], [ %.sroa.7331.0.copyload, %bb.dr ] ; 3 uses
  %.sroa.8.2 = phi i64 [ 1, %bb.cj ], [ %.sroa.4328.0.copyload, %bb.dr ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hb = load i8, ptr %i.ha, align 8, !range !14, !noundef !4
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.du, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224

bb.cm:                                            ; preds = %bb.ck
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cn:                                            ; preds = %bb.ck
  %i.he = extractvalue { ptr, i64 } %i.gz, 0      ; 2 uses
  %i.hf = extractvalue { ptr, i64 } %i.gz, 1      ; 2 uses
  %i.hg = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fy)
          to label %bb.cp unwind label %bb.co     ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cp:                                            ; preds = %bb.cn
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.he) ]
  %i.hj = icmp eq i64 %i.hf, %i.hi
  br i1 %i.hj, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202: ; preds = %bb.cp
  %i.hk = extractvalue { ptr, i64 } %i.hg, 0
  %bcmp.i.i.i201 = call i32 @bcmp(ptr nonnull readonly %i.he, ptr nonnull readonly %i.hk, i64 %i.hf), !alias.scope !1357
  %.not312 = icmp eq i32 %bcmp.i.i.i201, 0
  br i1 %.not312, label %bb.cq, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread

bb.cq:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.hl = load ptr, ptr %i.k, align 8, !alias.scope !1362, !noundef !4 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hn = atomicrmw sub ptr %i.hl, i64 1 release, align 8, !noalias !1363
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.cs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204 unwind label %bb.cw

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread: ; preds = %bb.cp, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  %i.hp = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.hq = load i64, ptr %i.hp, align 8, !range !9, !alias.scope !1364, !noundef !4
  %4 = icmp eq i64 %i.hq, 0
  br i1 %4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206, label %bb.ct

bb.ct:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !1369, !noundef !4 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hu = atomicrmw sub ptr %i.hs, i64 1 release, align 8, !noalias !1370
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.cv, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hr) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206 unwind label %bb.da

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210: ; preds = %bb.dc, %bb.db, %bb.dd, %bb.da, %bb.cw
  %.pn97.pn = phi { ptr, i32 } [ %i.hw, %bb.cw ], [ %i.ie, %bb.da ], [ %.pn97.ph, %bb.dd ], [ %.pn97.ph, %bb.db ], [ %.pn97.ph, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.de

bb.cw:                                            ; preds = %bb.cs
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit204: ; preds = %bb.cr, %bb.cq, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cd

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206: ; preds = %bb.cu, %bb.ct, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit202.thread, %bb.cv
  %i.hx = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.hx, align 8
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.ex, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit206
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !1375, !noundef !4 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ic = atomicrmw sub ptr %i.ia, i64 1 release, align 8, !noalias !1376
  %i.id = icmp eq i64 %i.ic, 1
  br i1 %i.id, label %bb.cz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

bb.cz:                                            ; preds = %bb.cy
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.hz) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208 unwind label %bb.dp

bb.da:                                            ; preds = %bb.cv
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  store i64 1, ptr %i.if, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210

bb.db:                                            ; preds = %.body194, %bb.co, %bb.cm
  %.pn97.ph = phi { ptr, i32 } [ %i.hh, %bb.co ], [ %i.gr, %.body194 ], [ %i.hd, %bb.cm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %i.ig = load ptr, ptr %i.k, align 8, !alias.scope !1381, !noundef !4 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ii = atomicrmw sub ptr %i.ig, i64 1 release, align 8, !noalias !1382
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.dd, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210 unwind label %bb.ar

bb.de:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210, %.body190
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %.body190 ], [ %.pn97.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit210 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.il = load i8, ptr %i.ik, align 8, !range !14, !noundef !4
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ek, label %.body214

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit: ; preds = %bb.dk, %bb.dj, %bb.cd
  store i8 0, ptr %i.ge, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !1387, !noundef !4 ; 2 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.fk, label %bb.df

bb.df:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit
  %i.iq = atomicrmw sub ptr %i.io, i64 1 release, align 8, !noalias !1388
  %i.ir = icmp eq i64 %i.iq, 1
  br i1 %i.ir, label %bb.dg, label %bb.fk

bb.dg:                                            ; preds = %bb.df
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.in) #23
          to label %bb.fk unwind label %bb.dp

bb.dh:                                            ; preds = %bb.cd
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val132 = load ptr, ptr %i.is, align 8         ; 5 uses
  %i.it = getelementptr i8, ptr %1, i64 120
  %.val133 = load ptr, ptr %i.it, align 8, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.iu = load ptr, ptr %.val133, align 8, !invariant.load !4 ; 2 uses
  %.not.i213 = icmp eq ptr %i.iu, null
  br i1 %.not.i213, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val132) ]
  invoke void %i.iu(ptr noundef nonnull %.val132)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.iv = getelementptr inbounds nuw i8, ptr %.val133, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.iy = getelementptr inbounds nuw i8, ptr %.val133, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val132) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val132, i64 noundef range(i64 1, -9223372036854775808) %i.iw, i64 noundef range(i64 1, 536870913) %i.iz) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit

bb.dl:                                            ; preds = %bb.di
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val133, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %.body214, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.je = getelementptr inbounds nuw i8, ptr %.val133, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val132, i64 noundef range(i64 1, -9223372036854775808) %i.jc, i64 noundef range(i64 1, 536870913) %i.jf) #21
  br label %.body214

.body214:                                         ; preds = %bb.dy, %bb.dz, %bb.dm, %bb.dl, %bb.ek, %.thread295, %bb.de
  %.pn119.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn, %.thread295 ], [ %.pn104.pn.pn.pn, %bb.ek ], [ %.pn104.pn.pn.pn, %bb.de ], [ %i.ja, %bb.dl ], [ %i.ja, %bb.dm ], [ %i.kc, %bb.dy ], [ %i.kc, %bb.dz ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.ji = load ptr, ptr %i.jh, align 8, !alias.scope !1393, !noundef !4 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217, label %bb.dn

bb.dn:                                            ; preds = %.body214
  %i.jk = atomicrmw sub ptr %i.ji, i64 1 release, align 8, !noalias !1394
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %bb.do, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

bb.do:                                            ; preds = %bb.dn
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.jh) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217 unwind label %bb.ar

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217: ; preds = %bb.dn, %.body214, %bb.do, %bb.fp, %bb.dp, %.body
  %.pn124 = phi { ptr, i32 } [ %i.jm, %bb.dp ], [ %.pn119.pn.pn.pn, %.body214 ], [ %.pn119.pn.pn.pn, %bb.do ], [ %.pn90.pn.pn, %.body ], [ %.pn119.pn.pn.pn, %bb.dn ], [ %i.mw, %bb.fp ]
  store i8 2, ptr %i.aa, align 1
  resume { ptr, i32 } %.pn124

bb.dp:                                            ; preds = %bb.dt, %bb.dg, %bb.cz
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

bb.dq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192
  %i.jn = icmp eq i8 %.sroa.7331.0.copyload, 3
end_hunk_4
begin_hunk_5_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr @57, ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 30, ptr %i.ll, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr @61, ptr %i.lm, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @60, ptr noundef nonnull %i.r, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %bb.et unwind label %bb.er

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.en

bb.eu:                                            ; preds = %bb.ey, %bb.ev
  %.pn113 = phi { ptr, i32 } [ %i.ln, %bb.ev ], [ %.pn109.pn, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.thread295

bb.ev:                                            ; preds = %bb.en
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ew:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.fi, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cx

bb.ey:                                            ; preds = %bb.er, %bb.eq
  %.pn109.pn = phi { ptr, i32 } [ %i.lf, %bb.er ], [ %i.le, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.t) #24
          to label %bb.eu unwind label %bb.ar

bb.ez:                                            ; preds = %bb.fa, %bb.ff
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.x)
          to label %bb.fi unwind label %bb.fh

bb.fa:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  %i.lo = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.lp = icmp ult i64 %i.lo, 6
  call void @llvm.assume(i1 %i.lp)
  %i.lq = icmp samesign ugt i64 %i.lo, 1
  br i1 %i.lq, label %bb.fb, label %bb.ez

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.lr = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ej)
          to label %bb.fe unwind label %bb.fc     ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fd:                                            ; preds = %bb.fe
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.fj

bb.fe:                                            ; preds = %bb.fb
  %i.lu = extractvalue { ptr, i64 } %i.lr, 0
  %i.lv = extractvalue { ptr, i64 } %i.lr, 1
  store ptr %i.lu, ptr %i.w, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.lv, ptr %i.lw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.5240.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @57, ptr %i.u, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 30, ptr %i.lx, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @57, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 30, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr @63, ptr %i.ma, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @62, ptr noundef nonnull %i.v, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.ff unwind label %bb.fd

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ez

bb.fg:                                            ; preds = %bb.fj, %bb.fh
  %.pn119 = phi { ptr, i32 } [ %i.mb, %bb.fh ], [ %.pn115.pn, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.thread295

bb.fh:                                            ; preds = %bb.ez
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fi:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ex

bb.fj:                                            ; preds = %bb.fd, %bb.fc
  %.pn115.pn = phi { ptr, i32 } [ %i.lt, %bb.fd ], [ %i.ls, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.x) #24
          to label %bb.fg unwind label %bb.ar

.thread295:                                       ; preds = %bb.eu, %bb.fg, %bb.bh, %bb.bi
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn113, %bb.eu ], [ %.pn119, %bb.fg ], [ %i.eo, %bb.bi ], [ %i.en, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.body214

bb.fk:                                            ; preds = %bb.df, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit, %bb.dg, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208
  %i.mc = load ptr, ptr %1, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.me = getelementptr i8, ptr %i.mc, i64 56     ; 2 uses
  %.val172 = load ptr, ptr %i.me, align 8, !nonnull !4, !noundef !4
  %i.mf = getelementptr i8, ptr %i.mc, i64 64     ; 3 uses
  %.val173 = load i64, ptr %i.mf, align 8, !noundef !4 ; 2 uses
  %.not.i228 = icmp eq i64 %.val173, 0
  %i.mg = getelementptr [64 x i8], ptr %.val172, i64 %.val173 ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 -64    ; 3 uses
  %.not70313 = icmp eq ptr %i.mh, null
  %.not70 = or i1 %.not.i228, %.not70313
  br i1 %.not70, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.mi = load i64, ptr %i.mh, align 8, !range !9, !noundef !4
  %i.mj = trunc nuw i64 %i.mi to i1
  br i1 %i.mj, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.mk = load i64, ptr %i.mf, align 8, !alias.scope !1401, !noalias !1402, !noundef !4 ; 3 uses
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230

bb.fn:                                            ; preds = %bb.fl
  %i.mm = getelementptr i8, ptr %i.mg, i64 -16
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.mh, ptr %i.mn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.mm, ptr %i.mo, align 8
  %.sroa.10269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %.sroa.10269.0..sroa_idx, align 8
  br label %bb.g

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230: ; preds = %bb.fm
  %i.mp = add nsw i64 %i.mk, -1                   ; 3 uses
  store i64 %i.mp, ptr %i.mf, align 8, !alias.scope !1401, !noalias !1402
  %i.mq = load i64, ptr %i.md, align 8, !range !5, !alias.scope !1401, !noalias !1402, !noundef !4
  %i.mr = icmp samesign ult i64 %i.mp, %i.mq
  call void @llvm.assume(i1 %i.mr)
  %i.ms = load ptr, ptr %i.me, align 8, !alias.scope !1401, !noalias !1402, !nonnull !4, !noundef !4
  %i.mt = icmp ult i64 %i.mk, 144115188075855873
  call void @llvm.assume(i1 %i.mt)
  %i.mu = getelementptr inbounds nuw [64 x i8], ptr %i.ms, i64 %i.mp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.mu, i64 64, i1 false), !noalias !1401
  %.pr300 = load i64, ptr %i.i, align 8, !alias.scope !1403
  %i.mv = icmp eq i64 %.pr300, 2
  br i1 %i.mv, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234, label %bb.fo

bb.fo:                                            ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB12_4list3api7ListDynEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit217

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234: ; preds = %bb.fm, %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB6_5boxed3BoxDNtNtNtB1k_4list3api7ListDynEL_EEE3popB1o_.exit230, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

bb.fq:                                            ; preds = %bb.ba, %bb.ax
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ba ], [ %i.du, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #24
          to label %.thread301 unwind label %bb.ar

bb.fr:                                            ; preds = %.thread301, %bb.x
  %.pn90.pn307 = phi { ptr, i32 } [ %.pn90, %.thread301 ], [ %.pn90.pn, %bb.x ] ; 4 uses
  %.sroa.025.0306 = phi i1 [ true, %.thread301 ], [ %.sroa.025.0, %bb.x ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !range !9, !noundef !4
  %5 = icmp ne i64 %i.my, 0
  %or.cond5 = and i1 %.sroa.025.0306, %5
  br i1 %or.cond5, label %bb.fs, label %.body

bb.fs:                                            ; preds = %bb.fr
  %i.mz = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.na = load ptr, ptr %i.mz, align 8, !alias.scope !1408, !noundef !4 ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %.body, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.nc = atomicrmw sub ptr %i.na, i64 1 release, align 8, !noalias !1409
  %i.nd = icmp eq i64 %i.nc, 1
  br i1 %i.nd, label %bb.fu, label %.body

bb.fu:                                            ; preds = %bb.ft
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.mz) #23
          to label %.body unwind label %bb.ar

bb.fv:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.h) #24
          to label %.body unwind label %bb.ar
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete15one_shot_deleteINtB6_14OneShotDeleterNtNtNtNtBe_8services6memory7deleter13MemoryDeleterENtNtB8_3api6Delete5close0Be_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !4
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio6delete15one_shot_deleteINtB6_14OneShotDeleterNtNtNtNtBe_8services6memory7deleter13MemoryDeleterENtNtB8_3api6Delete6delete0Be_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.i = alloca [80 x i8], align 8          ; 5 uses
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 113 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !range !13, !noundef !4
  switch i8 %i.h, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ]

default.unreachable22:                            ; preds = %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !10, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1464
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, -9223372036854775808) %i.o, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.q = load i64, ptr %i.e, align 8, !range !9, !noalias !1464, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !20, !noalias !1464, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.r, label %bb.c, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i, !prof !21

bb.c:                                             ; preds = %.noexc
  %i.v = load i64, ptr %i.u, align 8, !noalias !1464
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #27
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %bb.c
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i: ; preds = %.noexc
  %i.w = load ptr, ptr %i.u, align 8, !noalias !1464, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = icmp samesign ule i64 %i.o, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1464
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.m, i64 range(i64 0, -9223372036854775808) %i.o, i1 false), !noalias !1465
  br label %.thread

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.thread:                                          ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i, %bb.d
  store i8 0, ptr %i.i, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.814.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 %i.t, ptr %1, align 8
  %.sroa.012.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.w, ptr %.sroa.012.sroa.7.0..sroa_idx, align 8
  %.sroa.012.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.o, ptr %.sroa.012.sroa.8.0..sroa_idx, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.k, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  br label %bb.k

bb.f:                                             ; preds = %bb.am, %.body, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.br, %bb.am ], [ %.pn4, %.body ], [ %i.y, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !14, !noundef !4
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #25
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #25
  unreachable

.body:                                            ; preds = %bb.ak, %.body18.i
  %.pn4 = phi { ptr, i32 } [ %.pn6.i, %.body18.i ], [ %i.bp, %bb.ak ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core8services6memory7deleterNtBI_13MemoryDeleterNtNtNtNtNtBO_3raw3oio6delete15one_shot_delete13OneShotDelete11delete_once0EBO_(ptr noundef nonnull align 8 %1) #24
          to label %bb.f unwind label %bb.an

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !16, !noalias !1466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  switch i8 %.pre, label %default.unreachable22 [
    i8 0, label %bb.k
    i8 1, label %bb.ai
    i8 2, label %bb.aj
  ]

bb.j:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %.thread, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1466, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1466
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1466
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.val11.i = load ptr, ptr %i.ah, align 8, !noalias !1466, !nonnull !4, !noundef !4
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %.val12.i = load i64, ptr %i.ai, align 8, !noalias !1466, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val9.i = load ptr, ptr %i.aj, align 8, !noalias !1466, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val10.i = load i64, ptr %i.ak, align 8, !noalias !1466, !noundef !4
  invoke void @_RNvNtNtCs5XgW7KoffLW_12opendal_core3raw4path14build_abs_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i)
          to label %bb.m unwind label %bb.j, !noalias !1466

bb.l:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1466
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body.i unwind label %bb.ah, !noalias !1466

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1466
end_hunk_5
begin_hunk_6_@_RNCNvXsa_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_15SimulateDeleterNtNtNtNtNtBb_3raw3oio6delete3api6Delete6delete0Bb_:bb.a
  unreachable

bb.cs:                                            ; preds = %bb.dn, %bb.cp
  %i.jl = phi ptr [ %i.lf, %bb.dn ], [ %i.cp, %bb.cp ] ; 4 uses
  %i.jm = phi ptr [ %i.lg, %bb.dn ], [ %i.co, %bb.cp ] ; 3 uses
  %i.jn = phi ptr [ %i.lh, %bb.dn ], [ %.phi.trans.insert108.i, %bb.cp ] ; 4 uses
  %i.jo = phi ptr [ %i.li, %bb.dn ], [ %i.gv, %bb.cp ] ; 3 uses
  %i.jp = phi ptr [ %i.lj, %bb.dn ], [ %.phi.trans.insert97.i.i, %bb.cp ] ; 5 uses
  %i.jq = phi ptr [ %i.lk, %bb.dn ], [ %i.jc, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1721
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  invoke fastcc void @_RNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ListDynEL_ENtB7_4List4next0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull align 8 %i.jr, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cu unwind label %bb.ct, !noalias !1722

bb.ct:                                            ; preds = %bb.cs
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1721
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_(ptr noundef nonnull align 8 %i.jr) #24
          to label %.body.i.i.i unwind label %bb.du, !noalias !1722

bb.cu:                                            ; preds = %bb.cs
  %i.jt = load i64, ptr %i.e, align 8, !range !22, !noalias !1721, !noundef !4
  %i.ju = icmp eq i64 %i.jt, -2
  br i1 %i.ju, label %.thread.i.i, label %bb.cv

.thread.i.i:                                      ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1721
  store i8 3, ptr %i.jp, align 8, !noalias !1721
  br label %bb.dx

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1721
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.jw = load i8, ptr %i.jv, align 8, !range !13, !noalias !1721, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.jw, 3
  br i1 %cond.i.i.i.i, label %bb.cw, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val.i.i.i.i = load ptr, ptr %i.jx, align 8, !noalias !1721 ; 5 uses
  %i.jy = getelementptr i8, ptr %1, i64 400
  %.val1.i.i.i.i = load ptr, ptr %i.jy, align 8, !noalias !1721, !nonnull !4, !align !10, !noundef !4 ; 5 uses
  %i.jz = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !1722 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.jz(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.cy unwind label %bb.da, !noalias !1722

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !range !5, !invariant.load !4, !noalias !1722 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !range !6, !invariant.load !4, !noalias !1722
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.kb, i64 noundef range(i64 1, 536870913) %i.ke) #21, !noalias !1722
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i

bb.da:                                            ; preds = %bb.cx
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !range !5, !invariant.load !4, !noalias !1722 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %.body.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !range !6, !invariant.load !4, !noalias !1722
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.kh, i64 noundef range(i64 1, 536870913) %i.kk) #21, !noalias !1722
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.dc, %bb.db, %bb.da, %bb.ct
  %.pn12.i.i.i = phi { ptr, i32 } [ %.pn10.i.i.i, %bb.ds ], [ %i.kf, %bb.da ], [ %.pn10.i.i.i, %bb.dp ], [ %.pn10.i.i.i, %bb.dq ], [ %i.js, %bb.ct ], [ %i.kl, %bb.dc ], [ %i.kf, %bb.db ], [ %.pn10.i.i.i, %bb.dt ], [ %.pn10.i.i.i, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1721
  store i8 2, ptr %i.jp, align 8, !noalias !1721
  br label %.body18.i.i

bb.dc:                                            ; preds = %bb.dm
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i: ; preds = %bb.cz, %bb.cy, %bb.cv
  %i.km = load i64, ptr %i.f, align 8, !range !8, !noalias !1721, !noundef !4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %i.km, -1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ko = load i64, ptr %i.kn, align 8, !range !9, !noalias !1721
  %i.kp = trunc nuw i64 %i.ko to i1
  %or.cond.i.i.i = select i1 %.not9.i.i.i, i1 %i.kp, i1 false
  br i1 %or.cond.i.i.i, label %bb.dd, label %.thread114.i.i

.thread114.i.i:                                   ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.kn, i64 80, i1 false), !noalias !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1721
  store i8 1, ptr %i.jp, align 8, !noalias !1721
  br label %bb.dy

bb.dd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.kr = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.kq)
          to label %bb.df unwind label %bb.de, !noalias !1722 ; 2 uses

bb.de:                                            ; preds = %bb.dd
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.df:                                            ; preds = %bb.dd
  %i.kt = extractvalue { ptr, i64 } %i.kr, 0
  %i.ku = extractvalue { ptr, i64 } %i.kr, 1
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !1721, !nonnull !4, !align !10, !noundef !4
  %i.kx = invoke noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre11starts_withRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kt, i64 noundef %i.ku, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kw)
          to label %bb.dh unwind label %bb.dg, !noalias !1722

bb.dg:                                            ; preds = %bb.df
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dh:                                            ; preds = %bb.df
  br i1 %i.kx, label %bb.dw, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.kq, i64 40, i1 false), !noalias !1721
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.kz = load ptr, ptr %i.d, align 8, !alias.scope !1728, !noalias !1721, !noundef !4 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.lb = atomicrmw sub ptr %i.kz, i64 1 release, align 8, !noalias !1729
  %i.lc = icmp eq i64 %i.lb, 1
  br i1 %i.lc, label %bb.dk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i

bb.dk:                                            ; preds = %bb.dj
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i unwind label %bb.dl, !noalias !1722

bb.dl:                                            ; preds = %bb.dk
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1721
  br label %bb.do

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i: ; preds = %bb.dk, %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1721
  %i.le = load i64, ptr %i.f, align 8, !range !8, !noalias !1721, !noundef !4
  %.not.i.i42.i = icmp eq i64 %i.le, -1
  br i1 %.not.i.i42.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i unwind label %bb.dc, !noalias !1722

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i: ; preds = %bb.dm, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1721
  %.pre.i.i.i = load ptr, ptr %i.kv, align 8, !noalias !1721
  br label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i, %bb.co
  %i.lf = phi ptr [ %i.jl, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.jd, %bb.co ]
  %i.lg = phi ptr [ %i.jm, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.je, %bb.co ]
  %i.lh = phi ptr [ %i.jn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.jf, %bb.co ]
  %i.li = phi ptr [ %i.jo, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.jg, %bb.co ]
  %i.lj = phi ptr [ %i.jp, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.ji, %bb.co ]
  %i.lk = phi ptr [ %i.jq, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.jj, %bb.co ]
  %i.ll = phi ptr [ %.pre.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i.i.i ], [ %i.jh, %bb.co ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1721
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %i.lm, ptr %i.ln, align 8, !noalias !1721
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !1721
  br label %bb.cs

bb.do:                                            ; preds = %bb.dl, %bb.dg, %bb.de
  %.pn10.i.i.i = phi { ptr, i32 } [ %i.ld, %bb.dl ], [ %i.ky, %bb.dg ], [ %i.ks, %bb.de ] ; 5 uses
  %.sroa.0.0.i.i.i = phi i1 [ false, %bb.dl ], [ true, %bb.dg ], [ true, %bb.de ]
  %i.lo = load i64, ptr %i.f, align 8, !range !8, !noalias !1721, !noundef !4
  %i.lp = icmp eq i64 %i.lo, -1
  br i1 %i.lp, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.lq = load i64, ptr %i.kn, align 8, !range !9, !noalias !1721, !noundef !4
  %3 = icmp ne i64 %i.lq, 0
  %or.cond4.i.i.i = and i1 %.sroa.0.0.i.i.i, %3
  br i1 %or.cond4.i.i.i, label %bb.dr, label %.body.i.i.i

bb.dq:                                            ; preds = %bb.do
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #24
          to label %.body.i.i.i unwind label %bb.du, !noalias !1722

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.lr = load ptr, ptr %i.kq, align 8, !alias.scope !1734, !noalias !1721, !noundef !4 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %.body.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lt = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !noalias !1735
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.dt, label %.body.i.i.i

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.kq) #23
          to label %.body.i.i.i unwind label %bb.du, !noalias !1722

bb.du:                                            ; preds = %bb.dt, %bb.dq, %bb.ct
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1722
  unreachable

bb.dv:                                            ; preds = %bb.cr, %bb.cq
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i

bb.dw:                                            ; preds = %bb.dh
  %.sroa.065.0.copyload66.pre.i.i = load i64, ptr %i.f, align 8, !noalias !1723 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.kn, i64 80, i1 false), !noalias !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1721
  store i8 1, ptr %i.jp, align 8, !noalias !1721
  %i.lx = icmp eq i64 %.sroa.065.0.copyload66.pre.i.i, -2
  br i1 %i.lx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i)
  br label %bb.fh

bb.dy:                                            ; preds = %bb.dw, %.thread114.i.i
  %.sroa.065.0.copyload66116.i.i = phi i64 [ %i.km, %.thread114.i.i ], [ %.sroa.065.0.copyload66.pre.i.i, %bb.dw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867.i.i, i64 80, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i)
  br label %bb.fi

bb.dz:                                            ; preds = %.body42.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.ly)
          to label %.body.i.i unwind label %bb.cg, !noalias !1720

bb.ea:                                            ; preds = %bb.bo
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 4 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !13, !noalias !1736
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.879.i.i)
  switch i8 %.pre.i.i, label %default.unreachable100 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.ed
    i8 2, label %bb.ee
    i8 3, label %bb.ec
  ]

._crit_edge.i:                                    ; preds = %bb.ea
  %.phi.trans.insert110.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.pre111.i = load ptr, ptr %.phi.trans.insert110.i, align 8, !noalias !1736
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i, %.thread117.i.i
  %i.lz = phi ptr [ %i.gw, %.thread117.i.i ], [ %i.cp, %._crit_edge.i ]
  %i.ma = phi ptr [ %i.gx, %.thread117.i.i ], [ %i.co, %._crit_edge.i ]
  %i.mb = phi ptr [ %i.gz, %.thread117.i.i ], [ %.phi.trans.insert108.i, %._crit_edge.i ]
  %i.mc = phi ptr [ %i.ha, %.thread117.i.i ], [ %i.gv, %._crit_edge.i ]
  %i.md = phi ptr [ %i.gy, %.thread117.i.i ], [ %.pre111.i, %._crit_edge.i ] ; 2 uses
  %i.me = phi ptr [ %.sroa.875.0..sroa_idx.i.i, %.thread117.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ]
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %i.md, ptr %i.mf, align 8, !noalias !1736
  br label %bb.ev

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1736
  br label %bb.ef

bb.ed:                                            ; preds = %bb.ea
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc40.i.i unwind label %.body42.i.i, !noalias !1720

.noexc40.i.i:                                     ; preds = %bb.ed
  unreachable

bb.ee:                                            ; preds = %bb.ea
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25
          to label %.noexc41.i.i unwind label %.body42.i.i, !noalias !1720

.noexc41.i.i:                                     ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ev, %bb.ec
  %i.mg = phi ptr [ %i.nk, %bb.ev ], [ %i.cp, %bb.ec ] ; 4 uses
  %i.mh = phi ptr [ %i.nl, %bb.ev ], [ %i.co, %bb.ec ] ; 3 uses
  %i.mi = phi ptr [ %i.nm, %bb.ev ], [ %.phi.trans.insert108.i, %bb.ec ] ; 4 uses
  %i.mj = phi ptr [ %i.nn, %bb.ev ], [ %i.gv, %bb.ec ] ; 3 uses
  %i.mk = phi ptr [ %i.no, %bb.ev ], [ %.phi.trans.insert.i.i, %bb.ec ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1736
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  invoke fastcc void @_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.b, ptr noundef nonnull align 8 %i.ml, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eh unwind label %bb.eg, !noalias !1737

bb.eg:                                            ; preds = %bb.ef
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1736
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.ml) #24
          to label %.body42.thread.i.i unwind label %bb.fc, !noalias !1737

bb.eh:                                            ; preds = %bb.ef
  %i.mn = load i64, ptr %i.b, align 8, !range !22, !noalias !1736, !noundef !4
  %i.mo = icmp eq i64 %i.mn, -2
  br i1 %i.mo, label %.thread89.i.i, label %bb.ei

.thread89.i.i:                                    ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1736
  store i8 3, ptr %i.mk, align 8, !noalias !1736
  br label %bb.fe

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !1736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1736
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.ml)
          to label %bb.ek unwind label %bb.ej, !noalias !1737

.body42.thread.i.i:                               ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ej, %bb.eg
  %.pn12.i29.i.i = phi { ptr, i32 } [ %i.mp, %bb.ej ], [ %.pn10.i33.i.i, %bb.fa ], [ %.pn10.i33.i.i, %bb.ex ], [ %.pn10.i33.i.i, %bb.ey ], [ %i.mm, %bb.eg ], [ %.pn10.i33.i.i, %bb.fb ], [ %.pn10.i33.i.i, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1736
  store i8 2, ptr %i.mk, align 8, !noalias !1736
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  br label %.body.i.i

bb.ej:                                            ; preds = %bb.eu, %bb.ei
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %.body42.thread.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.mq = load i64, ptr %i.c, align 8, !range !8, !noalias !1736, !noundef !4 ; 2 uses
  %.not9.i30.i.i = icmp eq i64 %i.mq, -1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.ms = load i64, ptr %i.mr, align 8, !range !9, !noalias !1736
  %i.mt = trunc nuw i64 %i.ms to i1
  %or.cond.i31.i.i = select i1 %.not9.i30.i.i, i1 %i.mt, i1 false
  br i1 %or.cond.i31.i.i, label %bb.el, label %.thread118.i.i

.thread118.i.i:                                   ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.mr, i64 80, i1 false), !noalias !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1736
  store i8 1, ptr %i.mk, align 8, !noalias !1736
  br label %bb.ff

bb.el:                                            ; preds = %bb.ek
  %i.mu = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.mv = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.mu)
          to label %bb.en unwind label %bb.em, !noalias !1737 ; 2 uses

bb.em:                                            ; preds = %bb.el
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.en:                                            ; preds = %bb.el
  %i.mx = extractvalue { ptr, i64 } %i.mv, 0
  %i.my = extractvalue { ptr, i64 } %i.mv, 1
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !1736, !nonnull !4, !align !10, !noundef !4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 120
  %i.nc = invoke noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre11starts_withRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mx, i64 noundef %i.my, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nb)
          to label %bb.ep unwind label %bb.eo, !noalias !1737

bb.eo:                                            ; preds = %bb.en
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ep:                                            ; preds = %bb.en
  br i1 %i.nc, label %bb.fd, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.mu, i64 40, i1 false), !noalias !1736
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %i.ne = load ptr, ptr %i.a, align 8, !alias.scope !1743, !noalias !1736, !noundef !4 ; 2 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i36.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ng = atomicrmw sub ptr %i.ne, i64 1 release, align 8, !noalias !1744
  %i.nh = icmp eq i64 %i.ng, 1
  br i1 %i.nh, label %bb.es, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i36.i.i

bb.es:                                            ; preds = %bb.er
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i36.i.i unwind label %bb.et, !noalias !1737

bb.et:                                            ; preds = %bb.es
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1736
  br label %bb.ew

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i36.i.i: ; preds = %bb.es, %bb.er, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1736
  %i.nj = load i64, ptr %i.c, align 8, !range !8, !noalias !1736, !noundef !4
  %.not.i37.i.i = icmp eq i64 %i.nj, -1
  br i1 %.not.i37.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i, label %bb.eu

bb.eu:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i36.i.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i unwind label %bb.ej, !noalias !1737

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i: ; preds = %bb.eu, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i36.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1736
  %.pre.i39.i.i = load ptr, ptr %i.mz, align 8, !noalias !1736
  br label %bb.ev

bb.ev:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i, %bb.eb
  %i.nk = phi ptr [ %i.mg, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i ], [ %i.lz, %bb.eb ]
  %i.nl = phi ptr [ %i.mh, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i ], [ %i.ma, %bb.eb ]
  %i.nm = phi ptr [ %i.mi, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i ], [ %i.mb, %bb.eb ]
  %i.nn = phi ptr [ %i.mj, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i ], [ %i.mc, %bb.eb ]
  %i.no = phi ptr [ %i.mk, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i ], [ %i.me, %bb.eb ]
  %i.np = phi ptr [ %.pre.i39.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i38.i.i ], [ %i.md, %bb.eb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1736
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.np, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1736
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 401
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !1736
  br label %bb.ef

bb.ew:                                            ; preds = %bb.et, %bb.eo, %bb.em
  %.pn10.i33.i.i = phi { ptr, i32 } [ %i.ni, %bb.et ], [ %i.nd, %bb.eo ], [ %i.mw, %bb.em ] ; 5 uses
  %.sroa.0.0.i34.i.i = phi i1 [ false, %bb.et ], [ true, %bb.eo ], [ true, %bb.em ]
  %i.nq = load i64, ptr %i.c, align 8, !range !8, !noalias !1736, !noundef !4
  %i.nr = icmp eq i64 %i.nq, -1
  br i1 %i.nr, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ns = load i64, ptr %i.mr, align 8, !range !9, !noalias !1736, !noundef !4
  %4 = icmp ne i64 %i.ns, 0
  %or.cond4.i35.i.i = and i1 %.sroa.0.0.i34.i.i, %4
  br i1 %or.cond4.i35.i.i, label %bb.ez, label %.body42.thread.i.i

bb.ey:                                            ; preds = %bb.ew
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c) #24
          to label %.body42.thread.i.i unwind label %bb.fc, !noalias !1737

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %i.nt = load ptr, ptr %i.mu, align 8, !alias.scope !1749, !noalias !1736, !noundef !4 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %.body42.thread.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nv = atomicrmw sub ptr %i.nt, i64 1 release, align 8, !noalias !1750
  %i.nw = icmp eq i64 %i.nv, 1
  br i1 %i.nw, label %bb.fb, label %.body42.thread.i.i

bb.fb:                                            ; preds = %bb.fa
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.mu) #23
          to label %.body42.thread.i.i unwind label %bb.fc, !noalias !1737

bb.fc:                                            ; preds = %bb.fb, %bb.ey, %bb.eg
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !1737
  unreachable

.body42.i.i:                                      ; preds = %bb.ee, %bb.ed
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  %cond.i27.i.i = icmp eq i8 %.pr.i.i, 3
  br i1 %cond.i27.i.i, label %bb.dz, label %.body.i.i

bb.fd:                                            ; preds = %bb.ep
  %.sroa.077.0.copyload78.pre.i.i = load i64, ptr %i.c, align 8, !noalias !1738 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.mr, i64 80, i1 false), !noalias !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1736
  store i8 1, ptr %i.mk, align 8, !noalias !1736
  %i.nz = icmp eq i64 %.sroa.077.0.copyload78.pre.i.i, -2
  br i1 %i.nz, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd, %.thread89.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fd, %.thread118.i.i
  %.sroa.077.0.copyload78120.i.i = phi i64 [ %i.mq, %.thread118.i.i ], [ %.sroa.077.0.copyload78.pre.i.i, %bb.fd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879.i.i, i64 80, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879.i.i)
  br label %bb.fi

bb.fg:                                            ; preds = %bb.bu, %bb.bt
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body45.i

bb.fh:                                            ; preds = %bb.fe, %bb.dx, %bb.ck, %bb.by
  %i.ob = phi ptr [ %i.hl, %bb.by ], [ %i.io, %bb.ck ], [ %i.jl, %bb.dx ], [ %i.mg, %bb.fe ]
  %i.oc = phi ptr [ %i.hn, %bb.by ], [ %i.iq, %bb.ck ], [ %i.jn, %bb.dx ], [ %i.mi, %bb.fe ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.by ], [ 4, %bb.ck ], [ 5, %bb.dx ], [ 6, %bb.fe ]
  store i8 %.sink.i.ph.i, ptr %i.oc, align 8, !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.584.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1176.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1691
  br label %.thread

bb.fi:                                            ; preds = %bb.ff, %bb.dy, %bb.cl, %bb.cd, %bb.cc, %bb.bz
  %i.od = phi ptr [ %i.mg, %bb.ff ], [ %i.hl, %bb.bz ], [ %i.jl, %bb.dy ], [ %i.hl, %bb.cd ], [ %i.hl, %bb.cc ], [ %i.io, %bb.cl ] ; 10 uses
  %i.oe = phi ptr [ %i.mh, %bb.ff ], [ %i.hm, %bb.bz ], [ %i.jm, %bb.dy ], [ %i.hm, %bb.cd ], [ %i.hm, %bb.cc ], [ %i.ip, %bb.cl ] ; 11 uses
  %i.of = phi ptr [ %i.mi, %bb.ff ], [ %i.hn, %bb.bz ], [ %i.jn, %bb.dy ], [ %i.hn, %bb.cd ], [ %i.hn, %bb.cc ], [ %i.iq, %bb.cl ] ; 5 uses
  %i.og = phi ptr [ %i.mj, %bb.ff ], [ %i.ho, %bb.bz ], [ %i.jo, %bb.dy ], [ %i.ho, %bb.cd ], [ %i.ho, %bb.cc ], [ %i.ir, %bb.cl ] ; 3 uses
  %.sroa.081.0.i.i = phi i64 [ %.sroa.077.0.copyload78120.i.i, %bb.ff ], [ %i.hr, %bb.bz ], [ %.sroa.065.0.copyload66116.i.i, %bb.dy ], [ %i.hr, %bb.cd ], [ %i.hr, %bb.cc ], [ %i.iu, %bb.cl ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.1176.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584.i.i, i64 80, i1 false), !noalias !1751
  store i8 1, ptr %i.of, align 8, !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.584.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.1176.i, i64 80, i1 false), !noalias !1691
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1176.i)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utilsINtBJ_8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtBL_3oio4list3api7ListDynEL_ENtNtNtBN_6layers8simulate18ServicerFlatListerINtNtB2n_11prefix_list12PrefixListerB1K_EIB3D_B2T_EENtB2l_4List4next0EBN_(ptr noundef nonnull align 8 %i.og)
          to label %bb.fk unwind label %bb.fj, !noalias !1696

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5entry5EntryEBH_.exit52.i: ; preds = %bb.bn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i, %bb.gc, %bb.gd, %bb.fj, %.body45.i
  %i.oh = phi ptr [ %i.gs, %.body45.i ], [ %i.od, %bb.fj ], [ %i.fo, %bb.bn ], [ %i.ps, %bb.gd ], [ %i.ps, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i ], [ %i.ps, %bb.gc ]
  %i.oi = phi ptr [ %i.gt, %.body45.i ], [ %i.oe, %bb.fj ], [ %i.fp, %bb.bn ], [ %i.pt, %bb.gd ], [ %i.pt, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i ], [ %i.pt, %bb.gc ] ; 2 uses
  %.pn23.i = phi { ptr, i32 } [ %.pn9.i, %.body45.i ], [ %i.oj, %bb.fj ], [ %i.go, %bb.bn ], [ %.pn17.pn.i, %bb.gd ], [ %.pn17.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops8OpDeleteEBH_.exit60.i ], [ %.pn17.pn.i, %bb.gc ]
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtBG_3oio4list3api7ListDynEL_ENtNtNtBI_6layers8simulate18ServicerFlatListerINtNtB2c_11prefix_list12PrefixListerB1z_EIB3s_B2I_EEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.oi) #24
          to label %bb.av unwind label %bb.gk, !noalias !1696

bb.fj:                                            ; preds = %bb.fi
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5entry5EntryEBH_.exit52.i

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %.not.i47.i = icmp eq i64 %.sroa.081.0.i.i, -1
  br i1 %.not.i47.i, label %bb.fl, label %bb.gj

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.of, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i, i64 48, i1 false), !alias.scope !1753, !noalias !1691
  store i64 -1, ptr %i.og, align 8, !alias.scope !1754, !noalias !1755
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ok, ptr noundef nonnull align 8 dereferenceable(48) %i.of, i64 48, i1 false), !noalias !1691
  %i.ol = load i64, ptr %i.ok, align 8, !range !9, !noalias !1691, !noundef !4
  %i.om = trunc nuw i64 %i.ol to i1
  br i1 %i.om, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utils8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtBG_3oio4list3api7ListDynEL_ENtNtNtBI_6layers8simulate18ServicerFlatListerINtNtB2c_11prefix_list12PrefixListerB1z_EIB3s_B2I_EEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.oe)
          to label %bb.gf unwind label %bb.ge, !noalias !1696

bb.fn:                                            ; preds = %bb.fl
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.oo, ptr noundef nonnull align 8 dereferenceable(40) %i.on, i64 40, i1 false), !noalias !1691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1691
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.or = load i8, ptr %i.oq, align 8, !alias.scope !1757, !noalias !1758, !noundef !4
  %i.os = load ptr, ptr %i.op, align 8, !alias.scope !1757, !noalias !1758, !noundef !4 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.not.i48.i = icmp eq ptr %i.os, null
  br i1 %.not.i48.i, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ou = atomicrmw add ptr %i.os, i64 1 monotonic, align 8, !noalias !1759
  %i.ov = icmp slt i64 %i.ou, 0
  br i1 %i.ov, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ow = load i64, ptr %i.ot, align 8, !alias.scope !1757, !noalias !1758, !noundef !4
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.trap()
  unreachable

bb.fr:                                            ; preds = %bb.fp, %bb.fn
  %.sroa.5.0.i.i = phi i64 [ %i.ow, %bb.fp ], [ undef, %bb.fn ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i8 %i.or, ptr %i.ox, align 8, !alias.scope !1756, !noalias !1760
  store ptr %i.os, ptr %i.m, align 8, !alias.scope !1756, !noalias !1760
  %i.oy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.5.0.i.i, ptr %i.oy, align 8, !alias.scope !1756, !noalias !1760
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 345 ; 4 uses
  store i8 1, ptr %i.oz, align 1, !noalias !1691
  %.val35.i = load ptr, ptr %i.oo, align 8, !noalias !1691, !noundef !4
  %i.pa = getelementptr i8, ptr %1, i64 448
  %.val36.i = load i64, ptr %i.pa, align 8, !noalias !1691
  %i.pb = invoke fastcc { ptr, i64 } @_RNvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2_13CompactValues3get(ptr %.val35.i, i64 %.val36.i, i64 noundef 6) #26
          to label %bb.ft unwind label %bb.fs, !noalias !1696 ; 2 uses

bb.fs:                                            ; preds = %bb.fr
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ft:                                            ; preds = %bb.fr
  %i.pd = extractvalue { ptr, i64 } %i.pb, 0      ; 2 uses
  %.not11.i = icmp eq ptr %i.pd, null
  br i1 %.not11.i, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.pe = extractvalue { ptr, i64 } %i.pb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1691
  store i8 0, ptr %i.oz, align 1, !noalias !1691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1691
  invoke void @_RNvMs0_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB5_8OpDelete12into_version(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pd, i64 noundef %i.pe)
          to label %bb.fw unwind label %bb.fv, !noalias !1696

bb.fv:                                            ; preds = %bb.fu
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1691
  br label %.body.i

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1691
  store i8 1, ptr %i.oz, align 1, !noalias !1691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1691
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.ft
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !1691, !nonnull !4, !align !10, !noundef !4
  %i.pi = invoke { ptr, i64 } @_RNvMNtNtCs5XgW7KoffLW_12opendal_core5types5entryNtB2_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.oo)
          to label %bb.fz unwind label %bb.fy, !noalias !1696 ; 2 uses

bb.fy:                                            ; preds = %bb.fx
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtCs5XgW7KoffLW_12opendal_core5types4listNtB5_6ListerNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next:bb.a
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.s(ptr noundef nonnull %.val29.a)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.a, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #21
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.a, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #21
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m
  store ptr %i.l, ptr %i.p, align 8
  store ptr @86, ptr %i.q, align 8
  br label %common.resume

.thread:                                          ; preds = %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNCNvXs0_NtNtCs5XgW7KoffLW_12opendal_core5types4listNtBL_6ListerNtNtCsagCT4lbS8Em_12futures_core6stream6Stream9poll_next0E3newBP_.exit, %bb.j, %bb.k
  store ptr %i.l, ptr %i.p, align 8
  store ptr @86, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.pre, null
  br i1 %.not23, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %i.ae = phi ptr [ %i.l, %.thread ], [ %.pre, %bb.n ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !align !10, !noundef !4 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !4, !nonnull !4
  call void %i.aj(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !22, !noundef !4
  %i.am = icmp eq i64 %i.al, -2
  br i1 %i.am, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  store i64 -2, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.ai, %bb.p, %bb.c
  ret void

bb.r:                                             ; preds = %bb.o
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.s:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !align !10, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.ak, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.an, ptr %1, align 8
  store ptr %i.ap, ptr %i.h, align 8
  %i.aq = load ptr, ptr %i.ah, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i37, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void %i.aq(ptr noundef nonnull %i.ae)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTIB1e_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EINtNtB4_6result6ResultIBC_NtNtB2B_5entry5EntryENtNtNtB2F_5types5error5ErrorEENtNtB4_6marker4SendEL_EEEEB2F_.exit41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTIB1e_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EINtNtB4_6result6ResultIBC_NtNtB2B_5entry5EntryENtNtNtB2F_5types5error5ErrorEENtNtB4_6marker4SendEL_EEEEB2F_.exit41

bb.w:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #21
  br label %bb.ah

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTIB1e_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EINtNtB4_6result6ResultIBC_NtNtB2B_5entry5EntryENtNtNtB2F_5types5error5ErrorEENtNtB4_6marker4SendEL_EEEEB2F_.exit41: ; preds = %bb.v, %bb.u
  store ptr null, ptr %i.af, align 8
  %i.bc = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %.not24 = icmp eq i64 %i.bc, -1
  br i1 %.not24, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTIB1e_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EINtNtB4_6result6ResultIBC_NtNtB2B_5entry5EntryENtNtNtB2F_5types5error5ErrorEENtNtB4_6marker4SendEL_EEEEB2F_.exit41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  store i8 1, ptr %i.d, align 8
  br label %bb.ai

bb.z:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputTIB1e_DNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EINtNtB4_6result6ResultIBC_NtNtB2B_5entry5EntryENtNtNtB2F_5types5error5ErrorEENtNtB4_6marker4SendEL_EEEEB2F_.exit41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !9, !noundef !4
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.bh = load ptr, ptr %i.ap, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void %i.bh(ptr noundef nonnull %i.an)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEEB1G_.exit46, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef range(i64 1, -9223372036854775808) %i.bj, i64 noundef range(i64 1, 536870913) %i.bm) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEEB1G_.exit46

bb.af:                                            ; preds = %bb.ac
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.thread62, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !6, !invariant.load !4
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef range(i64 1, -9223372036854775808) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #21
  br label %.thread62

.thread62:                                        ; preds = %bb.ag, %bb.af
  store ptr null, ptr %1, align 8
  br label %bb.aj

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEEB1G_.exit46: ; preds = %bb.ae, %bb.ad
  store ptr null, ptr %1, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.af, align 8
  %.pre48 = load i64, ptr %i.b, align 8, !range !8
  %i.bt = icmp eq i64 %.pre48, -1
  br i1 %i.bt, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.y, %bb.aa, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEEB1G_.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.aj:                                            ; preds = %.thread62, %bb.ah
  %.pn64 = phi { ptr, i32 } [ %i.bn, %.thread62 ], [ %i.aw, %bb.ah ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !9, !noundef !4
  %.not26 = icmp eq i64 %i.bv, 0
  br i1 %.not26, label %common.resume, label %bb.al

bb.ak:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #24
          to label %common.resume unwind label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !2135, !noundef !4 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bz = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !2136
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.an, label %common.resume

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bw) #23
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB5_13SimulateLayerNtNtNtB9_3raw5layer5Layer13apply_service(ptr noalias nofree noundef readonly captures(none) dereferenceable(5) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(5) %0, i64 5, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !2147
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 16, 553) 40, i64 noundef 8) #21, !noalias !2147 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate15SimulateServiceEE3newB15_.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #27
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !2148
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate15SimulateServiceEEB1j_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw8accessor10ServiceDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate15SimulateServiceEEB1j_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate15SimulateServiceEEB1j_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs5XgW7KoffLW_12opendal_core6layers8simulate15SimulateServiceEE3newB15_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @87, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKj10_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i = icmp ne ptr %i.d, null              ; 2 uses
  %..i.i = zext i1 %.not.i.i to i64
  %.5.i.i = select i1 %.not.i.i, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %..i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.5.i.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKj1_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i = icmp ne ptr %i.d, null              ; 2 uses
  %..i.i = zext i1 %.not.i.i to i64
  %.5.i.i = select i1 %.not.i.i, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %..i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.5.i.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKj5_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i = icmp ne ptr %i.d, null              ; 2 uses
  %..i.i = zext i1 %.not.i.i to i64
  %.5.i.i = select i1 %.not.i.i, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %..i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.5.i.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKja_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i = icmp ne ptr %i.d, null              ; 2 uses
  %..i.i = zext i1 %.not.i.i to i64
  %.5.i.i = select i1 %.not.i.i, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %..i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.5.i.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCINvMNtNtCs5XgW7KoffLW_12opendal_core5types7compactNtB2A_13CompactValues6encodeKjb_E0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i = icmp ne ptr %i.d, null              ; 2 uses
  %..i.i = zext i1 %.not.i.i to i64
  %.5.i.i = select i1 %.not.i.i, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %..i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.5.i.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB2C_15MetadataBuilder5build0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2G_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not.i.i = icmp ne ptr %i.d, null              ; 2 uses
  %..i.i = zext i1 %.not.i.i to i64
  %.5.i.i = select i1 %.not.i.i, i64 %i.f, i64 undef
  %i.g = insertvalue { i64, i64 } poison, i64 %..i.i, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.5.i.i, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs0_NtNtCsgxBkk5gSRhY_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionRShENCINvMNtNtB9_3ops9try_traitINtB1n_17NeverShortCircuitIBS_jEE10wrap_mut_1BR_NCNvMsg_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB2C_7OpWrite12from_options0E0EINtNtB1p_8function5FnMutTjEE8call_mutB2G_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
end_hunk_7
